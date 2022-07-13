import 'dart:io';

void main() {
  String Revname = ''; // AN EMPTY STRING VARIABLE
  var hm = []; // AN EMPTY LIST OF ARRAY

  stdout.writeln("Enter a String to be reversed: "); // TAKES INPUT FROM USER
  var name = stdin.readLineSync(); // STORE USERS INPUT TO REVERSE
  name = name.toString(); // INPUT DATA TYPE CHANGED TO STRING

  var reverse = name.split(''); //VARIABLE TO STORE USER INPUT AFTER SPLIT
  String reversed = reverse
      .toString(); //STRING VARIABLE TO STORE AFTER CHANGING SPLITTED VARIABLE TO STRING
  var u = reversed.length; // VARIABLE TO STORE LENGTH OF INPUT

  /// FOR LOOP TO ACCESS LENGTH OF INPUT AND ASSIGN TO AN ARRAY IF CONDITION IS MET (USING ALGORITHM)
  for (var e = 1; e < reversed.length; e += 3) {
    hm += [reversed[reversed.length - (u - e)]];
  }
  var i = hm.length - 1;
  var j = hm.length;

  /// FOR LOOP TO CONCATENATE INTO EMPTY VARIABLE CHARACTERS FROM ARRAY
  for (i; i < j; i--, j--) {
    if (j == 1) {
      j--;
    }
    Revname += hm[i];
    if (j == 0) {
      break;
    }
  }
  print(
      'Your reversed string is: $Revname'); // DISPLAY OUTPUT OF REVERSED STRING
}
