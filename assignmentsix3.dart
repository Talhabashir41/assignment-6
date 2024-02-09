import 'dart:io';

 void main() {
   print('Input');
   var input = stdin.readLineSync()!;
   var a = [];
   for (var i = 0; i < input.length; i++) {
     a.add(input[i]);
   }
   var reversed = List.of(a.reversed);
   reversed.forEach((element) {
     stdout.write(element);
   });
 }
