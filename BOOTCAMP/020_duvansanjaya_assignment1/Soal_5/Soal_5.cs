using System;

class Soal_5
{
    public static void Main(string[] args)
    {
        string number;
        string word = "";

        Console.Write("Enter the Number: ");
        number = Console.ReadLine();

        for(int i=0;i<number.Length;i++)
        {
            if(number[i] == '1')
            {
                word = word + "one ";
            }
            else if(number[i] == '2')
            {
                word = word + "two ";
            }
            else if(number[i] == '3')
            {
                word = word + "three ";
            }
            else if(number[i] == '4')
            {
                word = word + "four ";
            }
            else if(number[i] == '5')
            {
                word = word + "five ";
            }
            else if(number[i] == '6')
            {
                word = word + "six ";
            }
            else if(number[i] == '7')
            {
                word = word + "seven ";
            }
            else if(number[i] == '8')
            {
                word = word + "eight ";
            }
            else if(number[i] == '9')
            {
                word = word + "nine ";
            }
        }

        Console.WriteLine(word);

    }
}