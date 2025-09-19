import 'dart:io';

double tambah(double a, double b) => a + b;
double kurang(double a, double b) => a - b;
double kali(double a, double b) => a * b;
double bagi(double a, double b) {
  if (b == 0) {
    print("Error: Tidak bisa membagi dengan nol.");
    return double.nan;
  }
  return a / b;
}

void main() {
  while (true) {
    print("\n=== KALKULATOR SEDERHANA ===");
    print("1. Penjumlahan");
    print("2. Pengurangan");
    print("3. Perkalian");
    print("4. Pembagian");
    print("5. Keluar");
    stdout.write("Pilih (1-5): ");
    String? pilihan = stdin.readLineSync();

    if (pilihan == '5') {
      print("Terima kasih.");
      break;
    }

    stdout.write("Angka pertama: ");
    double? a = double.tryParse(stdin.readLineSync() ?? '');
    stdout.write("Angka kedua: ");
    double? b = double.tryParse(stdin.readLineSync() ?? '');

    if (a == null || b == null) {
      print("Input tidak valid.");
      continue;
    }

    double hasil;
    switch (pilihan) {
      case '1':
        hasil = tambah(a, b);
        print("Hasil: $hasil");
        break;
      case '2':
        hasil = kurang(a, b);
        print("Hasil: $hasil");
        break;
      case '3':
        hasil = kali(a, b);
        print("Hasil: $hasil");
        break;
      case '4':
        hasil = bagi(a, b);
        if (!hasil.isNaN) print("Hasil: $hasil");
        break;
      default:
        print("Pilihan tidak valid.");
    }
  }
}

