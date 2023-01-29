import 'dart:html';

import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            )),
        child: Column(
          children: [
            Text('Добавить вводную',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.lightBlueAccent,

            ),),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
            ),
            TextButton (
                onPressed: null,
              style: TextButton.styleFrom(
                backgroundColor: Colors.lightBlueAccent,
                foregroundColor: Colors.white,
              ),
                child: const Text('Добавить'),


            ),
          ],

        ),

      ),
    );
  }
}
