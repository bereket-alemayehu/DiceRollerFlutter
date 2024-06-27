import 'package:flutter/material.dart';
import 'package:my_first_app/gradient_container.dart';

// import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        // backgroundColor: null, we can declare like this or
        // backgroundColor: Color.fromARGB(220,250,199,78), we can define like this using Color() constructor.

        // body: GradientContainer.red(),/////// Alternative way to call the constructor.
        body: GradientContainer(
            Color.fromARGB(255, 33, 5, 109), Color.fromARGB(255, 68, 21, 149)),
      ),
    ),
  );
  // is the function used to display something on the screen
}
 
// custom Widget  declaration
