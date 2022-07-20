import 'dart:io';

void main() {
  var lengthcheck;
  var store = '';
  var abc = '';
  try {
    stdout.writeln('Enter First Set Of Numbers: ');
    var a = stdin.readLineSync().toString();
    if (a.contains(RegExp('[A-Za-z]')))
      throw ('E N T E R  O N L Y  N U M B E R S !');
    var al = a.length;
    stdout.writeln('Enter Second Set Of Numbers: ');
    var b = stdin.readLineSync().toString();
    if (b.contains(RegExp('[A-Za-z]')))
      throw ('E N T E R  O N L Y  N U M B E R S !');
    var bl = b.length;
    print('======================================');
    if (a.length > b.length) {
      lengthcheck = a.length;
      var comp = a.length - b.length;
      for (var x = 0; x < b.length; x++) {
        abc += b[x];
        if (x == b.length - 1) b = '';
      }
      for (var x = 0; x < comp; x++) {
        b += '0';
      }
      for (var x = 0; x < abc.length; x++) {
        b += abc[x];
      }
    } else
      lengthcheck = bl;
    if (b.length > a.length) {
      lengthcheck = b.length;
      var comp = b.length - a.length;
      for (var x = 0; x < a.length; x++) {
        abc += a[x];
        if (x == a.length - 1) a = '';
      }
      for (var x = 0; x < comp; x++) {
        a += '0';
      }
      for (var x = 0; x < abc.length; x++) {
        a += abc[x];
      }
    }
    var y = 0;
    for (var x = 0; x < lengthcheck; x++) {
      for (y; y < b.length;) {
        store += a[x] + b[y];
        if (x == y) break;
      }
      y++;
    }
    print('THE WEAVE OF THE INPUT IS: $store');
  } catch (e) {
    print(e);
  }
}
