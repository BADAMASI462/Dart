import 'dart:io';

void main() {
  var fizz = 3;
  var buzz = 5;
  stdout.writeln('ENTER NUMBER TO STOP COUNT: ');
  try {
    var j = stdin.readLineSync().toString();
    if (j.contains(RegExp(r'[a-zA-Z]'))) throw ('PLEASE ENTER ONLY NUMBERS!');
    print('================================================================');
    int y = int.parse(j);
    for (var i = 0; i <= y; i++) {
      if (i == fizz && i == buzz) {
        print('FIZZBUZZ');
        fizz += 3;
        buzz += 5;
      } else if (i == fizz) {
        print('FIZZ');
        fizz += 3;
      } else if (i == buzz) {
        print('BUZZ');
        buzz += 5;
      } else if (i != 0) print(i);
    }
  } catch (e) {
    print(e);
  }
}
