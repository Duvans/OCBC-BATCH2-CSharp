using System;

class Program{
    public static void Main(string[] args)
    {
        pesawat pesawat = new pesawat(); //instantiasi objek
        pesawat_tempur pswttempur = new pesawat_tempur(); //instantiasi objek
    
        //seting atribut/variabel
        pesawat.Nama = "Helly";
        pesawat.JumlahRoda = 3;
        pesawat.Ketinggian = "1000 kaki";
        pesawat.JumlahPenumpang = 5;
        pswttempur.JumlahRoda = 5;
        pswttempur.ketinggian = "200 kaki";
        pswttempur.JumlahPenumpang = "2 Penumpang plus kopilot dan assistance";

        //memanggil method dari suatu kelas
        pesawat.terbang();
        pswttempur.terbangtinggi();
        Console.Read();
    }
}