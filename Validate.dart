import 'dart:io';

void main() {
  stdout.writeln('Enter Email Address: ');
  var Email = stdin.readLineSync();
  print(Validate(Email));
}

Validate(Email) {
  var count = 0, stage1 = 0, stage2 = false, com = '.com';
  var y = com.length - 1;
  for (var x = Email.length - 1; Email.isNotEmpty; x--) {
    for (y; com.isNotEmpty;) {
      if (Email[x] == com[y]) {
        stage1++;
        y--;
        break;
      } else
        break;
    }
    count++;
    if (count == 4) break;
  }
  if (Email.contains('@')) stage2 = true;
  if (stage1 == 4 && stage2 == true)
    return 'Email is a string and valid!';
  else
    return 'Please put in a valid Email';
}
