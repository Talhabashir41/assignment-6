
import 'dart:io';

void main() {
  for (var i = 1; i < 100; i++) {
    prime(i);
  }}
  prime(number) {
    if (number < 2) {
      print("$number not prime number");
      return;
    }
    for (int i = 2; i < number; i++) {
      if (number % i == 0) {
        print("$number not prime number");
        return;
      }
    }
    print("$number Is prime number");
  }
