// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'package:bmi_pj/data/models/todo_list/task.dart';
import 'package:bmi_pj/utils/extensions.dart';

class TaskTile extends StatelessWidget {
  const TaskTile({
    Key? key,
    required this.task,
    this.onChanged,
  }) : super(key: key);
  final Task task;
  final Function(bool?)? onChanged;
  @override
  Widget build(BuildContext context) {
    final style = context.textTheme;

    final double opacityIcon = task.isCompleted ? 0.3 : 0.5;
    final double opacityBackground = task.isCompleted ? 0.1 : 0.3;
    final textDecoration =
        task.isCompleted ? TextDecoration.lineThrough : TextDecoration.none;
    final fontWeight = task.isCompleted ? FontWeight.normal : FontWeight.bold;
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: task.category.color.withOpacity(opacityBackground),
                border: Border.all(
                  width: 2,
                  color: task.category.color.withOpacity(opacityIcon),
                )),
            child: Center(
                child: Icon(
              task.category.icon,
              color: task.category.color.withOpacity(opacityIcon),
            )),
          ),
          const Gap(16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(task.title,
                    style: style.titleMedium?.copyWith(
                        decoration: textDecoration,
                        fontSize: 16,
                        fontWeight: fontWeight)),
                Text(task.time,
                    style:
                        style.titleMedium?.copyWith(decoration: textDecoration))
              ],
            ),
          ),
          Checkbox(
            value: task.isCompleted,
            onChanged: onChanged,
          )
        ],
      ),
    );
  }
}
