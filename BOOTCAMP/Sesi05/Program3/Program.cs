using System;

namespace Program3
{
    class Program
    {
        static void Main(string[] args)
        {
            pesawat pesawat = new pesawat();
            pesawat_tempur pesawatTempur = new pesawat_tempur();

            pesawat.Nama = "Helly";
            pesawat.JumlahRoda = 3;
            pesawat.Ketinggian = "1000 kaki";
            pesawat.JumlahPenumpang = "3 Penumpang";

            pesawatTempur.Nama = "AZ500TPU";
            pesawatTempur.JumlahRoda = 5;
            pesawatTempur.Ketinggian = "200 kaki";
            pesawatTempur.JumlahPenumpang = "2 Penumpang plus kopoloy dan assitance";

            pesawat.terbang();
            pesawatTempur.terbangtinggi();
            Console.Read();
        }
    }
}