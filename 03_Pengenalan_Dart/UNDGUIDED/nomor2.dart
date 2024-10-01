import 'dart:io';

void main() {
  // Meminta input dari pengguna
  print('Masukkan sebuah bilangan bulat:');
  String? input = stdin.readLineSync();

  // Mengonversi input menjadi integer
  int number = int.tryParse(input ?? '') ??
      -1; // Jika input tidak valid, number menjadi -1

  // Memanggil fungsi untuk memeriksa apakah bilangan tersebut prima
  if (isPrime(number)) {
    print('$number adalah bilangan prima.');
  } else {
    print('$number bukan bilangan prima.');
  }
}

// Fungsi untuk memeriksa apakah bilangan tersebut bilangan prima
bool isPrime(int number) {
  if (number <= 1) {
    return false; // Bilangan 0 dan 1 bukan bilangan prima
  }
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) {
      return false; // Jika habis dibagi, bukan bilangan prima
    }
  }
  return true; // Jika tidak ada faktor lain, maka bilangan prima
}
