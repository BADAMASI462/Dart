import 'dart:io';

void main() {
  var store = '';
  try {
    stdout.writeln('Enter Numbers: ');
    var Num = stdin.readLineSync().toString();
    Num = Num.replaceAll(' ', '');
    if (Num.contains(RegExp('[A-Za-z]')))
      throw ('E N T E R  O N L Y  N U M B E R S !');
    stdout.writeln('Enter Number Of Node To Print: (From last)');
    var fromlast = stdin.readLineSync().toString();
    if (fromlast.contains(RegExp('[A-Za-z]')))
      throw ('E N T E R  O N L Y  N U M B E R S !');
    var No = int.parse(fromlast);
    if (No > Num.length)
      throw ('N U M B E R  I S  G R E A T E R  T H A N  F I R S T  I N P U T  L E N G T H !');
    for (var x = Num.length - 1; Num.isNotEmpty; x--) {
      store += Num[x];
      if (x == 0) break;
    }
    for (var x = 0; x < store.length; x++) {
      if (x == No - 1) {
        print('======');
        var y = store[x];
        print('The Number At Node $No FROM LAST Is : $y ');
      }
    }
  } catch (e) {
    print(e);
  }
}
