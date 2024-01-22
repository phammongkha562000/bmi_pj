// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_pj/utils/task_categories.dart';
import 'package:equatable/equatable.dart';

class Task extends Equatable {
  final int? id;
  final String title;
  final String note;
  final String time;
  final String date;
  final TaskCategories category;
  final bool isCompleted;

  const Task(
      {this.id,
      required this.title,
      required this.note,
      required this.date,
      required this.time,
      required this.isCompleted,
      required this.category});

  @override
  List<Object> get props {
    return [id!, title, note, time, date, isCompleted, category];
  }
}
