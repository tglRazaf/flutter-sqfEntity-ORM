import 'package:flutter/material.dart';
import 'package:sqfe_ntity_exemple/data/db_model.dart';

class HomeController {
  List<Todo>?  todos;
  TextEditingController textEditingController = TextEditingController();

  Future<List<Todo>?> fetchTodos() async {
    todos = await Todo().select().toList();
    return todos;
  }

  Future<int?> addTodo() async { 
    return await Todo(title: textEditingController.text).save();
  }
}