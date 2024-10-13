import 'dart:io';

int kpk(int a, int b) {
  int fpb(int x, int y) {
    while (y != 0) {
      int temp = y;
      y = x % y;
      x = temp;
    }
    return x;
  }

  return (a * b) ~/ fpb(a, b);
}

void main() {
  print("Masukkan bilangan positif pertama: ");
  int bilangan1 = int.parse(stdin.readLineSync()!);

  print("Masukkan bilangan positif kedua: ");
  int bilangan2 = int.parse(stdin.readLineSync()!);

  if (bilangan1 > 0 && bilangan2 > 0) {
    int hasilKPK = kpk(bilangan1, bilangan2);
    print("KPK dari $bilangan1 dan $bilangan2 adalah: $hasilKPK");
  } else {
    print("Silakan masukkan bilangan positif.");
  }
}
