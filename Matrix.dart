import 'dart:io';

void main() {
  var store = '';
  var minimumPath = '';
  var sum = 100;
  stdout.writeln('Enter First 3 Matrix No: O N L Y  N U M B E R S  !');
  var a = stdin.readLineSync().toString();
  a = a.replaceAll(' ', '');
  stdout.writeln('Enter Second 3 Matrix No: O N L Y  N U M B E R S  !');
  var b = stdin.readLineSync().toString();
  b = b.replaceAll(' ', '');
  stdout.writeln('Enter Third 3 Matrix No: O N L Y  N U M B E R S  !');
  var c = stdin.readLineSync().toString();
  c = c.replaceAll(' ', '');
  for (var x = 0; x < a.length; x++) {
    for (var y = 0; y < b.length; y++) {
      for (var z = 0; z < c.length; z++) {
        var Sum = 0;
        var indx1 = int.parse(a[x]);
        var indx2 = int.parse(b[y]);
        var indx3 = int.parse(c[z]);
        Sum = indx1 + indx2 + indx3;
        if (Sum < sum) {
          store += a[x] + '+' + b[y] + '+' + c[z] + '=' + Sum.toString() + ' ';
          sum = Sum;
        }
      }
    }
  }
  store = store.substring(0, store.length - 1);
  var check = store.split(' ');
  print(check);
  print(check.length);
  for (var x = 0; x < check.length; x++) {
    if (x == check.length - 1) {
      minimumPath += check[x];
    }
  }
  print('The Minimum Path Weight is: [$minimumPath]');
}
