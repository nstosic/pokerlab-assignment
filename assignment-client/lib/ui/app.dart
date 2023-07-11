import 'package:assignment_client/generated/services.pbgrpc.dart';
import 'package:assignment_client/ui/home_view.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:provider/provider.dart';

class AssignmentApp extends StatelessWidget {
  const AssignmentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<TodoServiceClient>(
          create: (context) => TodoServiceClient(
            ClientChannel(
              '192.168.1.42',
              port: 58486,
              options: const ChannelOptions(
                credentials: ChannelCredentials.insecure(),
                idleTimeout: Duration(seconds: 10),
              ),
            ),
          ),
        ),
      ],
      child: const MaterialApp(
        title: 'Assignment Client',
        home: HomeView(),
      ),
    );
  }
}
