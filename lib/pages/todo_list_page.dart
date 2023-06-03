import 'package:flutter/material.dart';

class TodoListPage extends StatelessWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                    ),
                    labelText: 'Adicione uma tarefa',
                    hintText: 'EX. Estudar Flutter',
                  ),
                ),
              ),
              const SizedBox (width: 8),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffDC143C),
                  padding: const EdgeInsets.all(8)
                  
                ),
                child: const Icon (
                  Icons.add,
                  size: 45,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
