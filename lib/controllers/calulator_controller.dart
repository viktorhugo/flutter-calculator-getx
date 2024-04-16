import 'package:get/state_manager.dart';

class CalculatorController extends GetxController {

  RxString firstNumber = '10'.obs;
  RxString secondNumber = '20'.obs;
  RxString mathResult = '30'.obs;
  RxString operation = '+'.obs;

  resetAll() {
    firstNumber.value = '0';
    secondNumber.value = '0';
    mathResult.value = '0';
    operation.value = '+';
  }

  setNumber(String number) {
    if (mathResult.value == '0') return mathResult.value = number;
    // negative validation
    if (mathResult.value == '-0') return mathResult.value = '-' + number;
    // decimal validation
    mathResult.value = mathResult.value + number;
  }

  setPositiveNegative() {
    if ( mathResult.value.startsWith('-') ) {
      mathResult.value = mathResult.value.replaceFirst('-', '');
    } else {
      mathResult.value = '-' + mathResult.value;
    }
  }

  addDecimalPoint() {
    if ( mathResult.value.contains('.')) return;
    
    if ( mathResult.value.startsWith('0') ) {
      mathResult.value = '0.';
    } else {
      mathResult.value =  mathResult.value + '.';
    }
  }

  processOperation(String newOperation) {
    operation.value = newOperation;
    firstNumber.value = mathResult.value;
    mathResult.value = '0';
  }

  deleteLastEntry() {

    if ( mathResult.value.contains('-') && mathResult.value.length == 2) {
      return mathResult.value = '0';
    } 
    if (mathResult.value.length > 1) {
      mathResult.value = mathResult.value.substring(0, mathResult.value.length -1);
    } else {
      return mathResult.value = '0';
    }
  }

  calculateResult() {
    
  }
}