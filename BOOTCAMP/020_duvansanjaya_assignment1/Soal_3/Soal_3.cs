using System;

class Soal_3
{
    public static void Main(string[] args)
    {
        int number, factorial=1;

        Console.Write("Enter any Number: ");
        number = int.Parse(Console.ReadLine());

        for(int i=1;i<=number;i++)
        {
            factorial = factorial*i;
        }

        Console.Write("Factorial of " + number + " is: " + factorial + "\n");

    }
}