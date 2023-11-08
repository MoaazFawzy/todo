import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidget extends StatelessWidget {
  static const String routName = "Task widget";

  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(motion: DrawerMotion(), children: [
        SlidableAction(
          backgroundColor: Colors.red,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12), bottomLeft: Radius.circular(12)),
          icon: Icons.delete,
          label: "Delete",
          onPressed: (context) {},
        ),
        SlidableAction(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icons.edit,
            label: "Edit",
            onPressed: (context) {})
      ]),
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 12),
        height: MediaQuery.of(context).size.height * 0.14,
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(11),
                padding: EdgeInsets.only(left: 10),
                height: 70,
                child: VerticalDivider(
                  width: 3,
                  thickness: 3,
                  color: Theme.of(context).primaryColor,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Task title",
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    "Task Description",
                    style: Theme.of(context).textTheme.bodySmall,
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Spacer(),
              Container(
                  width: 70,
                  height: 40,
                  margin: EdgeInsets.only(right: 12),
                  padding: EdgeInsets.symmetric(horizontal: 18, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Theme.of(context).primaryColor,
                  ),
                  child: Icon(
                    Icons.done,
                    color: Colors.white,
                    size: 30,
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
