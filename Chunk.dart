import 'dart:io';

void main() {
  var check = '';
  var n = 0;
  var x;
  var no;
  var length = 0;
  try {
    stdout.writeln('Enter Words to chunk: ');
    var y = stdin.readLineSync().toString();
    if (y.contains(RegExp(r'[0-9+]'))) throw ('Please Enter Words ONLY!');
    var str = y.split(' ');
    for (var i = 0; y.isNotEmpty; i++) {
      stdout.writeln('Enter Number In Which To Group Into Chunks:');
      x = stdin.readLineSync().toString();
      if (x.contains(RegExp(r'[a-zA-Z]'))) throw ('Please Enter Numbers Only!');
      no = int.parse(x);
      length = str.length;
      if (no >= str.length)
        print(
            'N U M B E R   F O R   C H U N K   M U S T   B E   L E S S T H A N   W O R D S  ! ');
      else
        break;
      print('Your Input is : $y');
    }
    for (var x = 0; x < length; x++) {
      if (n != 0) break;
      for (var y = 0; y < no; y++) {
        check += str[y];
        check += ' ';
        if (str.length == y + 1) {
          n += 1;
          break;
        }
        if (y == no - 1) {
          check += '+';
          for (var x = 0; x < no; x++) {
            str.removeAt(0);
          }
        }
      }
    }
    var Check = check.split('+');
    for (var x = 0; x < Check.length; x++) {
      print(Check[x]);
    }
  } catch (e) {
    print(e);
  }
}
