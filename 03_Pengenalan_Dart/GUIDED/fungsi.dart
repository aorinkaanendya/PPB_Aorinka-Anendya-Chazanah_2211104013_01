// //mendefinisikan fungsi
// void function_name() {
// //statements
// }

// ///memanggil fungsi
// void main() {
//   print(factorial(6));
// }

//mengembalikan nilai
String sapaan(String nama) {
  return "Halo, $nama!";
}

void main() {
  String pesan = sapaan("Dart");
  print(pesan); // Output: Halo, Dart!
}

//menambahkan parameter
void greet(String name, int age) {
  print('Hello $name, you are $age years old.');
}

void main() {
  greet('Alice', 25);
}
