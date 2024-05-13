import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key, required this.title});

  final String title;

  @override
    State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  
  final tasks = [
    {
      'finished' : 'false',
      'description' : "tâche 1"
    },
    {
      'finished' : 'false',
      'description' : "tâche 2"
    },
    {
      'finished' : 'true',
      'description' : "tâche 3"
    }
    ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: Text(widget.title)
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Center(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              final taskCompletion = bool.parse(task['finished'] as String);
              final taskDescription = task['description'] as String;
              
              return Card(
                child: ListTile(
                  leading: taskCompletion ? const Icon(Icons.check_box) : const Icon(Icons.check_box_outline_blank),
                  title: Text(taskDescription),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
