// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bmi_pj/widgets/task_tile.dart';
import 'package:flutter/material.dart';

import 'package:bmi_pj/data/models/todo_list/task.dart';
import 'package:bmi_pj/utils/extensions.dart';
import 'package:bmi_pj/widgets/common_container.dart';
import 'package:gap/gap.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    Key? key,
    required this.tasks,
    this.isCompletedTask = false,
  }) : super(key: key);
  final List<Task> tasks;
  final bool isCompletedTask;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;
    final height =
        isCompletedTask ? deviceSize.height * 0.25 : deviceSize.height * 0.3;
    final emptyTasksMessage = isCompletedTask
        ? 'This is no completed task yet'
        : 'There is no task todo';
    return CommonContainer(
      height: height,
      child: tasks.isEmpty
          ? Center(
              child: Text(
                emptyTasksMessage,
                style: context.textTheme.headlineSmall,
              ),
            )
          : ListView.separated(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              itemBuilder: (ctx, index) {
                final task = tasks[index];
                return InkWell(
                    onLongPress: () {
                      //delete task
                    },
                    onTap: () {
                      //show detail task
                    },
                    child: TaskTile(task: task));
              },
              itemCount: tasks.length,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 1.5,
                );
              },
            ),
    );
  }
}
