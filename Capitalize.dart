import 'dart:io';

void main() {
  var letters = 'abcdefghijklmnopqrstuvwxyz ABCDEFGHIJKLMNOPQRSTUVWXYZ ';
  var output = '';
  stdout.writeln('Enter Word(s) to Capitalize: ');
  var input = stdin.readLineSync().toString();
  for (var i = 0; i < input.length; i++) {
    for (var j = 0; j < letters.length; j++) {
      if (input[i] == letters[j]) {
        var a = letters.indexOf(letters[j]) + 27;
        for (var x = 27; x < 54; x++) {
          if (letters.indexOf(letters[j]) == x) {
            output += letters[j];
            break;
          }
        }
        if (letters.indexOf(letters[j]) < 27) output += letters[a];
      }
    }
  }
  print(output);
}
