import 'dart:io';

void main() {
  try {
    stdout.writeln('Enter X1: ');
    var x1 = stdin.readLineSync().toString();
    stdout.writeln('Enter Y1: ');
    var y1 = stdin.readLineSync().toString();
    stdout.writeln('Enter X2: ');
    var x2 = stdin.readLineSync().toString();
    stdout.writeln('Enter Y2: ');
    var y2 = stdin.readLineSync().toString();
    if (x1.contains(RegExp('[A-Za-z]')) ||
        y1.contains(RegExp('[A-Za-z]')) ||
        x2.contains(RegExp('[A-Za-z]')) ||
        y2.contains(RegExp('[A-Za-z]')))
      throw ('O N L Y  N U M B E R S  I S  R E Q U I R E D !');
    int Y1 = int.parse(y1);
    int X1 = int.parse(x1);
    int X2 = int.parse(x2);
    int Y2 = int.parse(y2);
    if ((X1 != null && X2 != null && Y1 != null && Y2 != null)) {}

    var M1 = (X1 + X2) / 2;
    var M2 = (Y1 + Y2) / 2;
    print('$M1,$M2');
  } catch (e) {
    print(e);
  }
}
