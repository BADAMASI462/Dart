import 'dart:io';

void main() {
  var sp = ' ';
  var star = '*';
  stdout.writeln('Enter No Of Pyramid');
  var yr = stdin.readLineSync().toString();
  try {
    if (yr.contains(RegExp(r'[0-9]')) == false || yr.contains(' '))
      throw ('Please Only Enter Numbers!');
    var pyr = int.parse(yr);
    for (var x = 0; x < pyr - 1; x++) {
      sp += ' ';
    }
    for (var x = 0; x <= pyr; x++) {
      print(sp + star);
      sp = sp.replaceFirst(' ', '');
      star += '**';
    }
  } catch (e) {
    print(e);
  }
}
