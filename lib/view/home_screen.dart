import 'package:flutter/material.dart';
import 'package:sqfe_ntity_exemple/data/db_model.dart';
import 'package:sqfe_ntity_exemple/view/home_controller.dart';


class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = HomeController();

  @override
  void initState() async {
    await controller.fetchTodos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sqf Entity exemple'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Todo List', style: TextStyle(fontSize: 25, color: Color(0xff434343)),),
          TextField(
            controller: controller.textEditingController,
          ),
          TextButton(
            onPressed: (){
              setState(() {
                controller.addTodo();
              });
            },
            child: const Text('Add Todo'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: controller.todos != null ? controller.todos!.length : 0,
              itemBuilder: (context, index){
                Todo todo = controller.todos![index];
                return ListTile(
                  title: Text(todo.title!),
                );
              }
            )
          )
        ],
      ),
    );
  }
}