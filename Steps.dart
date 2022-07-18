import 'dart:io';

void main() {
  try {
    stdout.writeln('Enter Number Of Steps');
    var x = stdin.readLineSync().toString();
    if (x.contains(RegExp(r'[0-9]')) == false || x.contains(' '))
      throw ('Please Enter Numbers Only!');
    var y = int.parse(x);
    var s = '*';
    for (var a = 1; a <= y; a++) {
      print(s);
      s += '*';
    }
  } catch (e) {
    print(e);
  }
}
