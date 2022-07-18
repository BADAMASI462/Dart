import 'dart:io';

void main() {
  var check = 0;
  try {
    stdout.writeln('Enter Characters:');
    var x = stdin.readLineSync().toString();
    if (x.contains(RegExp(r'[0-9]'))) throw ('Enter Characters Only');
    x = x.replaceAll(' ', '');
    for (var i = 0; i < x.length; i++) {
      var count = 0;
      for (var j = 0; j < x.length; j++) {
        if (x[i] == x[j]) {
          count += 1;
        }
        if (j == x.length - 1) {
          if (count > check) check = count;
        }
      }
    }
    if (check < 2) {
      print('No Chunk Found');
    } else {
      check = check - 1;
      print('The Chunk From The Given Input Is: $check');
    }
  } catch (e) {
    print(e);
  }
}
