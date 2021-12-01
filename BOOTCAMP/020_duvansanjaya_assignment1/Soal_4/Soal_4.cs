using System;

class Soal_4
{
    public static void Main(string[] args)
    {
        int number, mod, reversedNumber=0;

        Console.Write("Enter any Number: ");
        number = int.Parse(Console.ReadLine());

        while(number != 0)
        {
            mod = number % 10;
            reversedNumber = reversedNumber * 10 + mod;
            number = number/10;
        }

        Console.Write("Reversed Number: " + reversedNumber + "\n");

    }
}