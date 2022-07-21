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
    var Y1 = num.parse(y1);
    var X1 = num.parse(x1);
    var X2 = num.parse(x2);
    var Y2 = num.parse(y2);
    var M1 = (X1 + X2) / 2;
    var M2 = (Y1 + Y2) / 2;
    var AM1 = M1.toStringAsPrecision(2);
    var AM2 = M2.toStringAsPrecision(2);
    print('$AM1 , $AM2');
  } catch (e) {
    print(e);
  }
}
