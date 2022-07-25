void main() {
  var list = [10000, 9000, 7000, 90000, 50000, 6000, 4336, 2224, 8000];
  for (var x = 0; x < list.length; x++) {
    for (var y = 0; y < list.length; y++) {
      if (list[x] < list[y]) {
        if (list.indexOf(list[x]) > list.indexOf(list[y])) {
          list.insert(y, list[x]);
          list.removeAt(x + 1);
        }
      }
    }
  }
  print(list);
}
