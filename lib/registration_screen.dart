import 'package:flutter/material.dart';
import 'main_page.dart';


class RegistrationScreen extends StatelessWidget {
  final String username;
  final TextEditingController _nameController = TextEditingController();

  //TODO: add TextEditingControllers for email, password, phone and address

  //this is just a sample to get some data from the previous screen
  RegistrationScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: const Text("Registration Screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Welcome to the Registration $username!!',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 16.0),
            const Text(
              'Name',
              style: TextStyle(fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter your name',
              ),
            ),
            //TODO: add email Text
            //TODO: add email TextField
            //TODO: add SizedBox

            //TODO: add password Text
            //TODO: add password TextField
            //TODO: add SizedBox

            //TODO: add Phone Text
            //TODO: add Phone TextField
            //TODO: add SizedBox

            //TODO: add Address Text
            //TODO: add Address TextField
            //TODO: add SizedBox

            const SizedBox(height: 25.0,),
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(300, 50)
                ),
                child: const Text('Register'),
                onPressed: () {
                  //TODO: Write the logic to handle registration
                  //TODO: only pass Name, Email, Phone and adress to the next screen!
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

