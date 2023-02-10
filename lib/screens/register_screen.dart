import 'package:flutter/material.dart';
import 'package:todoey/constants.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Expanded(flex: 1, child: Text('')),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 40.0),
              child: Center(
                child: Text(
                  'Todoey',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.lightBlueAccent.shade700,
                  ),
                ),
              ),
            ),
            TextField(
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(
                hintText: 'Enter your email',
                icon: const Icon(
                  Icons.email_rounded,
                  size: 40.0,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextField(
              onChanged: (value) {},
              decoration: kTextFieldDecoration.copyWith(
                icon: const Icon(
                  Icons.password,
                  size: 40,
                  color: Colors.grey,
                ),
                hintText: 'Enter your password',
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),
            Material(
              borderRadius: BorderRadius.circular(30.0),
              color: Colors.lightBlueAccent.shade700,
              elevation: 5,
              child: MaterialButton(
                minWidth: 200.0,
                height: 42.0,
                onPressed: () {},
                child: const Text(
                  'Register',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const Expanded(child: Text('')),
          ],
        ),
      ),
    );
  }
}
