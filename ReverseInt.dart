import 'dart:io';

void main() {
  var RevN = '';
  stdout.writeln('ENTER NUMBER TO FIND ReverseInt:');
  var Num = stdin.readLineSync();
  Num = Num.toString();
  try {
    if (Num.contains(RegExp('[a-z]')) || Num.contains(RegExp('[A-Z]')))
      throw ('PLEASE ENTER ONLY NUMBERS !');
    var i = Num.length - 1;
    for (i; i < Num.length; i--) {
      RevN += Num[i];
      if (i == 0) break;
    }
    int Rev = int.parse(RevN); // PARSING TO INT.
    if (Num == RevN) {
      print("THIS NUMBER '$Rev' IS A PALINDROME");
    } else
      print("THE REVERSE INT OF '$Num' IS: '$Rev'");
  } catch (e) {
    print(e);
  }
}
