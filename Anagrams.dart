import 'dart:io';

void main() {
  var NoOfA = 0;
  var xy = 'no';
  var xz = 'yes';
  var contain = '';
  var printout = '';
  var PRT;
  var space = ' ';
  stdout.writeln('Enter No.1 String Sentence/Word to find Anagram :');
  var S1 = stdin.readLineSync().toString();
  try {
    for (var x = 2; S1.isNotEmpty; x++) {
      stdout.writeln('Enter No.$x String Sentence/Word:');
      var S2 = stdin.readLineSync().toString();
      if (S2.isEmpty || S2.compareTo(space) == 0)
        throw ('A String Must Be Entered!');
      S1 += ' ';
      S1 += S2;
      stdout.writeln('Do You Still Have A String To Check?');
      var more = stdin.readLineSync().toString();
      more = more.toLowerCase();
      if ((more.contains('yes') == false) ||
          (more.contains('y') && more.compareTo(xz) != 0)) {
        if (more.contains('no') == false ||
            (more.contains('n') && more.compareTo(xy) != 0)) {
          throw ('You Can Only Type In Yes Or No!');
        } else
          break;
      }
    }
    print('=========================================================');
    var Split = S1.split(' ');
    print('Your Entered Strings Are: $Split');
    for (var x = 0; x < Split.length; x++) {
      var Str = Split[x].toString();
      for (var y = 0; y < Split.length; y++) {
        var count = 0;
        var Get = Split[y];
        for (var e = 0; e < Str.length; e++) {
          if (Str != Split[y]) {
            if (Split[y].contains(Str[e])) {
              Split[y] = Split[y].replaceFirst(RegExp(Str[e]), '');
              count += 1;
            }
            if (e == Str.length - 1) {
              Split[y] = Split[y].replaceAll(RegExp(r'[A-Za-z]'), '');
              Split[y] += Get;
              if (count == Str.length && count == Split[y].length) {
                printout += Str + ' is anagram to ' + Split[y] + '-';
                contain += Str;
                contain += ', ';
                NoOfA += 1;
              }
            }
          }
        }
      }
    }
    if (NoOfA != 0) {
      contain = contain.substring(0, contain.length - 2);
      if (NoOfA > 2)
        print('Anagramed Words Consisted Are: [$contain]\n');
      else if (NoOfA == 2 && Split.length > 2)
        print('There Is Only ONE Anagram Found: [$contain]\n');
      else if (NoOfA == 2 && Split.length == 2) {
        print('This Two Words: [$contain] Are Anagrams.\n');
      }
      PRT = printout.split('-');
      for (var t = 0; t < PRT.length; t++) {
        print(PRT[t]);
      }
      if (NoOfA > 2)
        print('Anagramed Words Consisted Are: [$contain]\n');
      else if (NoOfA == 2 && Split.length > 2)
        print('There Is Only ONE Anagram Found: [$contain]\n');
      else if (NoOfA == 2 && Split.length == 2) {
        print('This Two Words: [$contain] Are Anagrams.\n');
      }
    } else
      print('No Anagram Detected');
  } catch (e) {
    print(e);
  }
}
