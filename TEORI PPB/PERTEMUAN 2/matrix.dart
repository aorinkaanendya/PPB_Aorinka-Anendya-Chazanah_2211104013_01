import 'dart:io';

void main() {
  List<List<int>> matrix = [
    [5, 10, 15],
    [2, 4, 6, 8],
    [1, 4, 9, 16, 25],
    [3, 4, 5, 6, 7, 8]
  ];

  print('Isi List:');
  for (var row in matrix) {
    print(row.join(' '));
  }

  stdout.write('\nMasukkan bilangan yang ingin dicari: ');
  int target = int.parse(stdin.readLineSync()!);

  bool found = false;
  for (int i = 0; i < matrix.length; i++) {
    for (int j = 0; j < matrix[i].length; j++) {
      if (matrix[i][j] == target) {
        if (!found) {
          print('\n$target berada di:');
          found = true;
        }
        print('baris ${i + 1} kolom ${j + 1}');
      }
    }
  }

  if (!found) {
    print('\n$target tidak ditemukan dalam list');
  }
}
