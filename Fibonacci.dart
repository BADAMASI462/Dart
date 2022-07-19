import 'dart:io';

void main() {
  stdout.writeln('Enter Length Of Fibonacci Sequence: ');
  var inn = stdin.readLineSync().toString();
  print('=============================================');
  var No = int.parse(inn);
  var sum = 0;
  var tester;
  var calc = '1';
  for (var x = 0; inn.isNotEmpty; x++) {
    calc += ' ' + sum.toString();
    tester = calc.split(' ');
    for (var y = 0; y < x; y++) {
      tester.removeAt(0);
    }
    var m1 = int.parse(tester[0]);
    var m2 = int.parse(tester[1]);
    sum = m1 + m2;
    sum = sum;
    if (x == 0) print(x);
    if (sum > No) break;
    print(sum);
  }
}
