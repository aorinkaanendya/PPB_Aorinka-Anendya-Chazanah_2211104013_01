import 'dart:io';

void main() {
  print('Masukkan sebuah bilangan bulat:');
  String? input = stdin.readLineSync();

  int angka = int.tryParse(input ?? '') ?? -1;

  if (isPrime(angka)) {
    print('$angka adalah bilangan prima.');
  } else {
    print('$angka bukan bilangan prima.');
  }
}

bool isPrime(int angka) {
  if (angka <= 1) {
    return false;
  }
  for (int i = 2; i <= angka ~/ 2; i++) {
    if (angka % i == 0) {
      return false;
    }
  }
  return true;
}
