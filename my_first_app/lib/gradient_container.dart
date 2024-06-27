import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_app/dice_roller.dart';

var endAlignment = Alignment.bottomRight, startAlignment = Alignment.topLeft;
// Alignment? startAlignment; this can be used but the startAlignment can have  a value either null or some value.

class GradientContainer extends StatelessWidget {
  // build(ctx) or
  // GradientContainer() {
  //   // some initialization work.
  // } we don't need to use curly brace all the time we can  use like this also
  // GradientContainer({key}) : super(key: key);// here the named argument key in the GradientContainer is inside curly brace  because it is named argument  and the 1st key is the super key and the seconde is the gradient container key

  /////////////////CONSTRUCTOR
  const GradientContainer(this.color1, this.color2,
      {super.key}); // this is the shortcut given by dart so we can use super keyword with the parameter like this and forWared to the statelessWidget

  /////////////////ALTERNATIVE WAY TO WRITE THE  CONSTRUCTOR
  // const GradientContainer.red({super.key})
  //     : color1 = Colors.deepPurple,
  //       color2 = Colors.indigo;
  ////////////////////////////////////
  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          // colors: [Colors.red, Colors.amber, Color.fromARGB(0, 0, 0, 80)],
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ), // which is constructor function .
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
