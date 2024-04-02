import 'package:bmi_pj/data/models/todo_list/task.dart';
import 'package:bmi_pj/utils/extensions.dart';
import 'package:bmi_pj/utils/task_categories.dart';
// import 'package:bmi_pj/widgets/common_container.dart';
import 'package:bmi_pj/widgets/display_list_of_tasks.dart';
import 'package:bmi_pj/widgets/display_white_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TodoListView extends StatelessWidget {
  const TodoListView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;
    return Scaffold(
        body: Stack(
      children: [
        Column(
          children: [
            Container(
              height: deviceSize.height * 0.3,
              width: deviceSize.width,
              color: colors.primary,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DisplayWhiteText(
                    text: 'Jan 9, 2024',
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                  Gap(10),
                  DisplayWhiteText(text: 'My Todo List', fontSize: 30),
                ],
              ),
            ),
          ],
        ),
        Positioned(
            top: 150,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const DisplayListOfTasks(tasks: [
                    Task(
                        title: 'title',
                        note: 'note',
                        date: 'Aug, 07',
                        time: '10:12',
                        category: TaskCategories.education,
                        isCompleted: false),
                    Task(
                        title: 'title 2',
                        note: 'note',
                        date: 'Aug, 07',
                        time: '12:12',
                        category: TaskCategories.health,
                        isCompleted: false),
                    Task(
                        title: 'title 3',
                        note: 'note',
                        date: 'Aug, 07',
                        time: '15:12',
                        category: TaskCategories.home,
                        isCompleted: false),
                  ]),
                  const Gap(20),
                  Text(
                    'Completed',
                    style: context.textTheme.headlineMedium,
                  ),
                  const Gap(20),
                  const DisplayListOfTasks(
                    tasks: [
                      Task(
                          title: 'title',
                          note: 'note',
                          date: 'Aug, 07',
                          time: '10:12',
                          category: TaskCategories.education,
                          isCompleted: true),
                      Task(
                          title: 'title 2',
                          note: 'note',
                          date: 'Aug, 07',
                          time: '12:12',
                          category: TaskCategories.health,
                          isCompleted: true),
                    ],
                    isCompletedTask: true,
                  ),
                  const Gap(20),
                  ElevatedButton(
                      onPressed: () {},
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: DisplayWhiteText(
                          text: 'Add New Task',
                          fontSize: 16,
                        ),
                      ))
                ],
              ),
            ))
      ],
    ));
  }
}
