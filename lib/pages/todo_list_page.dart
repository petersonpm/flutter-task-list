import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  TodoListPage({Key? key}) : super(key: key);

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: const InputDecoration(

                  
                  labelText: 'E-mail',
                ),
              ),
              const ElevatedButton(
                onPressed: null,
                child: Text('Entrar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
