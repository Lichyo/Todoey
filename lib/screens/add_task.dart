import 'package:flutter/material.dart';

class AddTask extends StatelessWidget {
  const AddTask({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30.0),
            topLeft: Radius.circular(30.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                'Add Task',
                style: TextStyle(
                  fontSize: 50.0,
                  color: Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextField(
              textAlign: TextAlign.center,
              onChanged: (value) {},
            ),
            const SizedBox(
              height: 50.0,
            ),
            TextButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.lightBlueAccent),
              ),
              onPressed: () {},
              child: const Text(
                'Create',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
