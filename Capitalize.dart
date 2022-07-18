import 'dart:io';

void main() {
  var letters = 'abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ ';
  var output = '';
  stdout.writeln(
      'Enter Word(s) to Capitalize: N / B  T H I S   P R O G R A M   I G N O R E   N U M B E R S ');
  var input = stdin.readLineSync().toString();
  for (var i = 0; i < input.length; i++) {
    for (var j = 0; j < letters.length; j++) {
      if (input[i] == letters[j]) {
        int a = (letters.indexOf(letters[j]) + letters.length / 2).toInt();
        for (var x = letters.length / 2; x < letters.length; x++) {
          if (letters.indexOf(letters[j]) == x) {
            output += letters[j];
            break;
          }
        }
        if (letters.indexOf(letters[j]) < letters.length / 2)
          output += letters[a];
      }
    }
  }
  print(output);
}
