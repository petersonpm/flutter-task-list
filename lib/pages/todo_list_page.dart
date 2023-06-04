import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
   TodoListPage({Key? key}) : super(key: key);

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
   final TextEditingController todoController = TextEditingController();

  List<String> todos = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                   Expanded(
                    child: TextField(
                      controller: todoController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Adicione uma Tarefa',
                        hintText: 'EX. Estudar para a prova',
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {
                      String text =  todoController.text;
                      setState(() {
                        todos.add(text);
                      });
                      todoController.clear();
                    },
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffDC143C),
                        padding: const EdgeInsets.all(8)),
                    child: const Icon(
                      Icons.add,
                      size: 45,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16),
              Flexible(
                child: ListView(
                  shrinkWrap: true,
                  children:  [
                    for(String todo in todos)
                    ListTile(
                      title: Text(todo),
                      subtitle: Text('03/06/2023'),
                      leading: Icon(Icons.add_circle, size: 30,),
                      onTap: () {
                        print('Tarefa $todo');
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Expanded(
                    child: Text('Você Possui 0 Tarefas Pendentes'),
                  ),
                  SizedBox(width: 8),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xffDC143C),
                        padding: const EdgeInsets.all(16)),
                    child: Text('Limpar tudo'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
