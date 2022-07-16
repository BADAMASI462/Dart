import 'dart:io';

void main() {
  var b = 0;
  var max = '';
  stdout.writeln("ENTER A SENTENCE TO FIND MAXCHAR IN : ");
  var char = stdin.readLineSync().toString();
  char = char.replaceAll(' ', '');
  for (var i = 0; i < char.length; i++) {
    var a = char.length - 1;
    var c = 0;
    for (i; char.isNotEmpty; a--) {
      if (char[i] == char[a]) {
        c += 1;
      }
      if (a == 0) {
        if (c != 1) {
          if (c > b) {
            max = '';
            max += char[i];
            max += ', ';
          } else if (c == b && max.contains(char[i]) == false) {
            max += char[i];
            max += ', ';
          }
        }
        if (c > b) b = c;
        break;
      }
    }
    if (i == char.length - 1) break;
  }
  if (max.isNotEmpty) {
    max = max.substring(0, max.length - 2);
    if (max.contains(' ')) {
      print("THE MAXCHAR IS MORETHAN ONE, AND THEY ARE: $max.");
    } else {
      print('THE MAXCHAR IS: $max.');
    }
  } else
    print('THE GIVEN INPUT CHARACTERS DOES NOT HAVE AN OCCURANCE THROUGHOUT.');
}
