import 'package:flutter/material.dart';
import 'registration_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key}); // make your key nonconst
  //add TextField Controller
  final TextEditingController _usernameController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Icon(
                    Icons.lock_outline,
                    size: 100,
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Login',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      //-----------------Changes to the previous lab---------------
                      controller: _usernameController,
                      //-----------------You should add the controller-------------
                      decoration: const InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                    const SizedBox(height: 16),
                    const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                      ),
                    ),
                    const SizedBox(height: 50),
                    ElevatedButton(

                      onPressed: () {
                        Navigator.push(
                            context,//
                            MaterialPageRoute(builder: (context) => RegistrationScreen(username: _usernameController.text))
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          fixedSize: const Size(300, 50)
                      ),
                      child: const Text('Login'),

                    ),
                    const SizedBox(height: 50),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'images/insta.png',
                            height: 100,
                            width: 100,
                          ),
                          Image.asset(
                            'images/meta1.png',
                            height: 100,
                            width: 100,
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
