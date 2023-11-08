import 'package:date_picker_timeline/date_picker_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo/screens/widgets/task_widget.dart';

class TaskScreen extends StatefulWidget {
  static const String routName = "taskScreen";

  @override
  State<TaskScreen> createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DatePicker(
          DateTime.now(),
          initialSelectedDate: DateTime.now(),
          selectedTextColor: Colors.white,
          selectionColor: Theme.of(context).primaryColor,
          dateTextStyle: TextStyle(fontSize: 20),
          dayTextStyle: TextStyle(fontSize: 11),
          monthTextStyle: TextStyle(fontSize: 11),
          onDateChange: (newDate) {
            setState(() {
              date = newDate;
            });
          },
          height: 90,
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.separated(
            itemBuilder: (context, index) {
              return TaskWidget();
            },
            itemCount: 5,
            separatorBuilder: (BuildContext context, int index) => SizedBox(
              height: 10,
            ),
          ),
        )
      ],
    );
  }
}
