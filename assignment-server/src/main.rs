use std::sync::Arc;

use tokio::sync::{mpsc, RwLock};
use tonic::{transport::Server, Request, Response, Status};

use pokerlab::todo_service_server::{TodoService, TodoServiceServer};
use pokerlab::{
    CreateTodoRequest, CreateTodoResponse, DeleteTodoRequest, DeleteTodoResponse, GetTodoRequest,
    GetTodoResponse, Todo, UpdateTodoRequest, UpdateTodoResponse,
};

pub mod pokerlab {
    tonic::include_proto!("pokerlab");
}

use tokio_stream::wrappers::ReceiverStream;

#[derive(Debug, Default)]
pub struct PokerLabService {
    items: Arc<RwLock<Vec<Todo>>>,
    latest_index: Arc<RwLock<u32>>,
}

#[tonic::async_trait]
impl TodoService for PokerLabService {
    type GetTodosStream = ReceiverStream<Result<GetTodoResponse, Status>>;

    async fn get_todos(
        &self,
        _request: Request<GetTodoRequest>,
    ) -> Result<Response<Self::GetTodosStream>, Status> {
        let (tx, rx) = mpsc::channel(1024);

        let items = self.items.read().await.clone();
        tokio::spawn(async move {
            let response = GetTodoResponse { items: items };
            tx.send(Ok(response)).await.unwrap();
        });

        Ok(Response::new(ReceiverStream::new(rx)))
    }

    async fn create_todo(
        &self,
        request: Request<CreateTodoRequest>,
    ) -> Result<Response<CreateTodoResponse>, Status> {
        let req = request.into_inner();

        let todo = Todo {
            id: self.latest_index.read().await.clone() + 1,
            title: req.title,
            completed: false,
        };

        self.items.write().await.push(todo);

        let reply = CreateTodoResponse { success: true };

        Ok(Response::new(reply))
    }

    async fn update_todo(
        &self,
        request: Request<UpdateTodoRequest>,
    ) -> Result<Response<UpdateTodoResponse>, Status> {
        let req = request.into_inner();

        let updated_todo = Todo {
            id: req.id,
            title: req.title,
            completed: req.completed,
        };

        let index = self
            .items
            .read()
            .await
            .iter()
            .position(|item| item.id == updated_todo.id);
        if index != None {
            let mut mut_borrow_items = self.items.write().await;
            let _ = std::mem::replace(&mut mut_borrow_items[index.unwrap()], updated_todo);
            let reply = UpdateTodoResponse { success: true };
            return Ok(Response::new(reply));
        }

        let reply = UpdateTodoResponse { success: false };
        Ok(Response::new(reply))
    }

    async fn delete_todo(
        &self,
        request: Request<DeleteTodoRequest>,
    ) -> Result<Response<DeleteTodoResponse>, Status> {
        let req = request.into_inner();

        let index = self
            .items
            .read()
            .await
            .iter()
            .position(|item| item.id == req.id);
        if index != None {
            let mut mut_borrow_items = self.items.write().await;
            mut_borrow_items.remove(index.unwrap());
            let reply = DeleteTodoResponse { success: true };
            return Ok(Response::new(reply));
        }

        let reply = DeleteTodoResponse { success: false };
        Ok(Response::new(reply))
    }
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let addr = "127.0.0.1:58486".parse()?;
    let service = PokerLabService::default();

    Server::builder()
        .add_service(TodoServiceServer::new(service))
        .serve(addr)
        .await?;

    Ok(())
}
