import 'dart:io';

/*
Buatlah sebuah program Dart yang
menghitung luas persegi panjang. Program ini
harus menggunakan variabel untuk
menyimpan nilai panjang dan lebar, dan
kemudian mencetak luasnya.
*/
void cariLuas(double panjang, double lebar) {
  double luas = panjang * lebar;
  print("Luas persegi panjang = ($panjang x $lebar) = $luas");
}

/*
Buatlah sebuah program Dart yang meminta
pengguna untuk memasukkan usia mereka
dan kemudian mencetak pesan "Anda adalah
seorang dewasa" jika usia lebih dari atau sama
dengan 18, dan mencetak pesan "Anda masih
seorang anak-anak" jika usia kurang dari 18.
*/
void cekUmur() {
  print("Masukkan umur Anda:");
  try {
    int? umur = int.parse(stdin.readLineSync()!);
    if (umur >= 18) {
      print("Anda adalah seorang dewasa");
    } else {
      print("Anda masih seorang anak-anak");
    }
  } catch (e) {
    print("Anda tidak memasukkan angka.");
  }
}

/*
Buatlah sebuah program Dart yang meminta
pengguna untuk memasukkan sebuah angka dan
kemudian mencetak pesan "Angka tersebut positif"
jika angka yang dimasukkan lebih besar dari 0, dan
mencetak pesan "Angka tersebut negatif" jika angka
yang dimasukkan lebih kecil dari 0. Jika angka yang
dimasukkan adalah 0, program harus mencetak
pesan "Angka tersebut nol".
*/
void cekAngka() {
  print("Masukkan sebuah bilangan bulat (negatif, 0, atau positif):");
  try {
    int? angka = int.parse(stdin.readLineSync()!);
    if (angka > 0) {
      print("Angka tersebut positif");
    } else if (angka < 0) {
      print("Angka tersebut negatif");
    } else {
      print("Angka tersebut nol");
    }
  } catch (e) {
    print("Anda tidak memasukkan angka.");
  }
}

/*
Buatlah sebuah program Dart yang
mencetak bilangan genap dari 1 hingga 10.
Program ini harus menggunakan
perulangan (looping) untuk mencetak
semua bilangan genap tersebut.
*/
void cetakBilanganGenap() {
  for (var i = 1; i < 11; i++) {
    if (i % 2 == 0) print(i);
  }
}

/*
Buatlah sebuah program Dart yang
meminta pengguna untuk memasukkan
lima angka dan kemudian mencetak
jumlah dari kelima angka tersebut.
*/
void jumlahAngka() {
  double angka = 0;
  print("Masukkan 5 buah bilangan (gunakan titik untuk bilangan desimal):");
  for (var i = 0; i < 5; i++) {
    try {
      double? num = double.parse(stdin.readLineSync()!);
      angka += num;
    } catch (e) {
      print("Anda tidak memasukkan angka.");
    }
  }
  print("Jumlah dari bilangan yang Anda masukkan adalah: ${angka}");
}

/*
Buatlah sebuah fungsi Dart yang menerima
sebuah string sebagai argumen dan
mengembalikan string yang diubah
menjadi huruf kapital. Gunakan fungsi
tersebut untuk mengubah sebuah string
input dan mencetak hasilnya.
*/
void kapitalisasi() {
  print("Masukkan sebuah kata/kalimat:");
  String? str = stdin.readLineSync();
  if (str != null)
    print(str.toUpperCase());
  else
    print("Anda tidak menuliskan apa-apa");
}

void menu() {
  print("");
  print("Silahkan pilih nomor menu yang Anda ingin coba");
  print("***********************************************");
  print("1. Menghitung luas persegi panjang 4 x 5");
  print("2. Mengecek umur Anda");
  print("3. Mengecek inputan bilangan bulat");
  print("4. Mencetak bilangan genap antara 1 - 10");
  print("5. Menjumlahkan 5 buah angka");
  print("6. Mencetak string dalam huruf kapital");
  print("");
  print("0. Keluar dari aplikasi");
  print("***********************************************");
  print("");
}

void main() {
  bool terus = true;
  do {
    menu();
    stdout.write("Menu yang Anda pilih: ");
    String? _pilihan = stdin.readLineSync();
    switch (_pilihan) {
      case "1":
        cariLuas(4, 5);
        break;
      case "2":
        cekUmur();
        break;
      case "3":
        cekAngka();
        break;
      case "4":
        cetakBilanganGenap();
        break;
      case "5":
        jumlahAngka();
        break;
      case "6":
        kapitalisasi();
        break;
      case "0":
        print("Terima kasih dan sampai jumpa lagi");
        terus = false;
        break;
      default:
        print("Pilih menu 1 - 6 atau tekan 0 untuk keluar dari aplikasi.");
    }
  } while (terus);
}
