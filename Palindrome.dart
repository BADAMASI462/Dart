import 'dart:io';

void main() {
  var WIs;
  var check = [];
  var con;
  var yes = 0;
  var Ws;
  var pdrome = '';
  var udrome = '';
  var NoS = 0;
  var Snmes = [];
  String Nname = "";
  stdout.writeln("ENTER SENTENCE OR WORD TO REVERSE AND SPOT PALINDROME : ");
  var name = stdin.readLineSync();
  String Sname = name.toString();
  var i = Sname.length - 1;
  for (i; i < Sname.length; i--) {
    Nname += Sname[i];
    if (i == 0) {
      break;
    }
  }
  if (Nname.contains(' ')) {
    WIs = Nname;
  } else
    Ws = Nname;

  if (Nname == name) {
    if (Ws != null && WIs == null) {
      print("THIS WORD: $Ws IS A PALINDROME");
    }

    if (WIs != null && Ws == null) {}
  }
  if (Nname != name) {
    if (Ws != null && WIs == null) {
      print('THE REVERSAL OF THIS WORD IS: $Ws');
    }

    if (WIs != null && Ws == null) {
      print("THE REVERSAL OF THIS SENTENCE IS: $WIs");
    }
  }

  for (var i = 0; i < Nname.length; i++) {
    if (Nname[i] == ' ') NoS += 1;
  }
  var Split = Nname.split(' ');
  for (var i = 0; i <= NoS; i++) {
    Snmes += [Split[i]];
  }
  for (var x = 0; x <= Snmes.length; x++) {
    var RSname = Snmes[x].toString();
    String rNname = '';
    var y = RSname.length - 1;
    for (y; y < RSname.length; y--) {
      rNname += RSname[y];
      if (y == 0) {
        break;
      }
    }
    if (rNname == RSname) {
      pdrome += rNname;
      udrome += rNname;
      pdrome += ', ';
      udrome += ' ';
    }
    if (x == Snmes.length - 1) {
      if (pdrome.isNotEmpty) {
        pdrome = pdrome.substring(0, pdrome.length - 2);
        if (udrome.isNotEmpty) {
          udrome = udrome.substring(0, udrome.length - 1);
          con = udrome.split(' ');
          for (var y = 0; y < con.length; y++) {
            check += [con[y]];
          }
          for (var s = 0; s < check.length; s++) {
            if (Sname.contains(check[s])) {
              yes += 1;
            }
          }
        }
      }
      if (Nname == Sname && Nname.contains(' ')) {
        print('THIS SENTENCE: $Sname IS A PALINDROME');
      }
      if (udrome != Sname && yes >= 2) {
        print(
            'HOWEVER, THIS SENTENCE CONTAINS PALINDROME. WHICH ARE: $pdrome ');
      }
      if (udrome != Sname && yes == 1) {
        print(
            'HOWEVER, THIS SENTENCE CONTAINS JUST 1 PALINDROME. IT IS: $pdrome ');
      }
    }
    if (x == Snmes.length - 1) {
      break;
    }
  }
}
