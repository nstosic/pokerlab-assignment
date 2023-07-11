use pokerlab::todo_service_client::TodoServiceClient;
use pokerlab::CreateTodoRequest;
use tonic::Request;

pub mod pokerlab {
    tonic::include_proto!("pokerlab");
}

#[tokio::main]
async fn main() -> Result<(), Box<dyn std::error::Error>> {
    let mut client = TodoServiceClient::connect("http://localhost:58486").await?;

    let request = Request::new(CreateTodoRequest {
        title: "Test todo #1".to_owned(),
    });

    let response = client.create_todo(request).await?;

    println!("Response = {:?}", response);

    Ok(())
}
