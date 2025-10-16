import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Alert Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Alert Box Example'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // button color
              foregroundColor: Colors.white, // text color
            ),
            child: Text('Show Alert'),
            onPressed: () {
              // Show alert dialog when button is pressed
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Alert!'),
                    content: Text('This is a simple alert dialog box.'),
                    actions: [
                      TextButton(
                        child: Text('OK'),
                        onPressed: () {
                          Navigator.pop(context); // close the dialog
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}