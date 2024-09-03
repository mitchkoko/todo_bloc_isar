/*

DATABASE REPO

This implements the todo repo and handles storing, retrieving, updating,
deleting in the isar database.

*/

import 'package:isar/isar.dart';
import 'package:todo_bloc_tutorial/data/models/isar_todo.dart';
import 'package:todo_bloc_tutorial/domain/models/todo.dart';
import 'package:todo_bloc_tutorial/domain/repository/todo_repo.dart';

class IsarTodoRepo implements TodoRepo {
  // database
  final Isar db;

  IsarTodoRepo(this.db);

  // get todos
  @override
  Future<List<Todo>> getTodos() async {
    // fetch from db
    final todos = await db.todoIsars.where().findAll();

    // return as a list of todos and give to domain layer
    return todos.map((todoIsar) => todoIsar.toDomain()).toList();
  }

  // add todo
  @override
  Future<void> addTodo(Todo newTodo) async {
    // convert todo into isar todo
    final todoIsar = TodoIsar.fromDomain(newTodo);

    // so that we can store it in our isar db
    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  // update todo
  @override
  Future<void> updateTodo(Todo todo) {
    // convert todo into isar todo
    final todoIsar = TodoIsar.fromDomain(todo);

    // so that we can store it in our isar db
    return db.writeTxn(() => db.todoIsars.put(todoIsar));
  }

  // delete todo
  @override
  Future<void> deleteTodo(Todo todo) async {
    await db.writeTxn(() => db.todoIsars.delete(todo.id));
  }
}
