import 'dart:io';

void main() {
  print('Masukkan nilai:');
  String? input = stdin.readLineSync();

  int nilai = int.tryParse(input ?? '') ?? -1;

  String result = cekNilai(nilai);

  if (result.isNotEmpty) {
    print('$nilai merupakan $result');
  } else {
    print('Nilai tidak valid');
  }
}

String cekNilai(int nilai) {
  if (nilai > 70) {
    return 'Nilai A';
  } else if (nilai > 40 && nilai <= 70) {
    return 'Nilai B';
  } else if (nilai > 0 && nilai <= 40) {
    return 'Nilai C';
  } else {
    return '';
  }
}
