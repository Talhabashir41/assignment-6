void main() {
  

  var input = stdin.readLineSync()!;

  var input1 = stdin.readLineSync()!;

  var f = " ";

  for (var i = 0; i < input.length; i++) {
    for (var j = i + 1; j < input.length + 1; j++) {
      var a = input.substring(i, j);

      if (input1.contains(a)) {
        if (f.length < a.length) {
          f = a;
        }
      }
    }
  }
  print(f);
}
