import 'package:calculadora/controllers/calulator_controller.dart';
import 'package:calculadora/widgets/calc_button.dart';
import 'package:calculadora/widgets/math_results.dart';
import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';


class CalculatorScreen extends StatelessWidget {
  
  final calculatorCtrl =  Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // margin: EdgeInsets.symmetric( horizontal: 5 ),
          child: Column(
            children: [
              
              Expanded(
                child: Container(),
              ),

              MathResults(),

              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: 'AC',
                    bgColor: Color(0xffA5A5A5 ),
                    onPressed: () => {
                      calculatorCtrl.resetAll(),
                      print('AC')
                    },
                  ),
                  CalculatorButton( 
                    text: '+/-',
                    bgColor: Color(0xffA5A5A5 ),
                    onPressed: () => calculatorCtrl.setPositiveNegative(),
                  ),
                  CalculatorButton( 
                    text: 'del',
                    bgColor: Color(0xffA5A5A5 ),
                    onPressed: () => calculatorCtrl.deleteLastEntry(),
                  ),
                  CalculatorButton( 
                    text: '/',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.processOperation('/'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '7',
                    onPressed: () => calculatorCtrl.setNumber('7'),
                  ),
                  CalculatorButton( 
                    text: '8',
                    onPressed: () => calculatorCtrl.setNumber('8'),
                  ),
                  CalculatorButton( 
                    text: '9',
                    onPressed: () => calculatorCtrl.setNumber('9'),
                  ),
                  CalculatorButton( 
                    text: 'X',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.processOperation('X'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '4', 
                    onPressed: () => calculatorCtrl.setNumber('4'),
                  ),
                  CalculatorButton( 
                    text: '5', 
                    onPressed: () => calculatorCtrl.setNumber('5'),
                  ),
                  CalculatorButton( 
                    text: '6', 
                    onPressed: () => calculatorCtrl.setNumber('6'),
                  ),
                  CalculatorButton( 
                    text: '-',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.processOperation('-'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '1', 
                    onPressed: () => calculatorCtrl.setNumber('1'),
                  ),
                  CalculatorButton( 
                    text: '2', 
                    onPressed: () => calculatorCtrl.setNumber('2'),
                  ),
                  CalculatorButton( 
                    text: '3', 
                    onPressed: () => calculatorCtrl.setNumber('3'),
                  ),
                  CalculatorButton(
                    text: '+',  
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.processOperation('+'),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CalculatorButton( 
                    text: '0', 
                    big: true,
                    onPressed: () => calculatorCtrl.setNumber('0'),
                  ),
                  CalculatorButton( 
                    text: '.', 
                    onPressed: () => calculatorCtrl.addDecimalPoint(),
                  ),
                  CalculatorButton( 
                    text: '=',
                    bgColor: Color(0xffF0A23B ),
                    onPressed: () => calculatorCtrl.calculateResult(),
                  ),
                ],
              ),
            ],
          ),
        ),
        )
    );
  }
}