# Lab 5

Deadline for this lab:
this lab itself!

Tasks for this lab:
1. Convert the given Stateless Screens into Stateful (login_screen.dart file)
2. Make a function that changes the Icon on the top to 'login' icon once the user presses Login button
3. Load a different image on the press of a Login button (you can also swap the images).

## Getting Started

## Stateless Widgets:
A stateless widget is immutable, meaning its properties cannot change once it is created. It represents part of the user interface and does not hold any internal state. Here’s an example of a stateless widget that displays a simple text:
```
import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  final String text;

  MyStatelessWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}
```
In this example, MyStatelessWidget takes a text parameter in its constructor and displays it using the Text widget. Since it doesn’t have any internal state, the text value will always be displayed as is.


## Stateful Widgets:
A stateful widget, on the other hand, can maintain mutable state that can change over time. This allows the widget to react to user interactions, network responses, or other events. Let’s take an example of a counter widget that increments a value whenever a button is pressed:

```
import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $counter'),
        ElevatedButton(
          onPressed: incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}
```
In this example, MyStatefulWidget is a stateful widget. It has an internal state variable counter, which is incremented whenever the button is pressed. The incrementCounter function calls setState to notify Flutter that the state has changed, triggering a rebuild of the widget. The updated value of counter is then displayed in the Text widget.


# Lab 6

In this lab you need to continue with the application that you were given in lab 5. In this project, you are given several dart files, registration_screen.dart and main_page.dart. In both of these files, you have special tasks denoted by "TODO" comments which need to be completed.

Tasks: 
1. In registration_screen.dart file complete all the TODOs: i.e.: add phone, email, password and address text and textField widgets (there is an example which you may refer)
2. Also, in Register button you need to use Navigator.push() in which you should send the the necessary information in the form of Map (example is provided in the Last weeks lecture). In this map you should include the texts from Textfields: name, phone, email and address.
3. You should design main page in main_page.dart such that you have one Image in the center, below you have: name, phone, email and address widgets, whose information should be received from the previous screen (Navigator.push() of registration_screen)

   ##Good luck!
