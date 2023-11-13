# Lab 5

Deadline for this lab:
this lab itself!

Tasks for this lab:
1. Convert the given Stateless Screens into Stateful (login_page.dart file)
2. Make a function that changes the Icon on the top to 'login' icon once the user presses Login button
3. Load a different image on the press of a Login button.

## Getting Started

## Stateless Widgets:
A stateless widget is immutable, meaning its properties cannot change once it is created. It represents part of the user interface and does not hold any internal state. Here’s an example of a stateless widget that displays a simple text:

import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  final String text;

  MyStatelessWidget({required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

In this example, MyStatelessWidget takes a text parameter in its constructor and displays it using the Text widget. Since it doesn’t have any internal state, the text value will always be displayed as is.


## Stateful Widgets:
A stateful widget, on the other hand, can maintain mutable state that can change over time. This allows the widget to react to user interactions, network responses, or other events. Let’s take an example of a counter widget that increments a value whenever a button is pressed:


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

In this example, MyStatefulWidget is a stateful widget. It has an internal state variable counter, which is incremented whenever the button is pressed. The incrementCounter function calls setState to notify Flutter that the state has changed, triggering a rebuild of the widget. The updated value of counter is then displayed in the Text widget.

