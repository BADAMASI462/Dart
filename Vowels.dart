import 'dart:io';

void main() {
  var vowel = 'aeiou';
  var checkv = '';
  var checkc = '';
  var countv = 0;
  var countc = 0;
  stdout.writeln('Enter Words To Find Vowels and Consonant: ');
  var x = stdin.readLineSync().toString();
  x = x.toLowerCase();
  for (var xi = 0; xi < x.length; xi++) {
    if (vowel.contains(x[xi])) {
      if (checkv.contains(x[xi]) == false) {
        checkv += x[xi] + ' ';
        countv += 1;
      }
    } else {
      if (checkc.contains(x[xi]) == false) {
        checkc += x[xi] + ' ';
        countc += 1;
      }
    }
  }
  if (countv == 1)
    print('The Vowel From This Input Is: [ $checkv]');
  else if (countv == 0)
    print('No Vowels Found');
  else if (countv > 1) print('The Vowels From The Input Are: [ $checkv]');

  if (countc == 1)
    print('The Consonant From This Input Is: [ $checkc]');
  else if (countc == 0)
    print('No Consonant Found');
  else if (countc > 1) print('The Consonant From The Input Are: [ $checkc]');
}
