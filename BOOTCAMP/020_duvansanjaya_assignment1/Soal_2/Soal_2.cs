using System;

class Soal_2
{
    public static void Main(string[] args)
    {
        int addRange, number=1;

        Console.Write("Enter the Range: ");
        addRange = int.Parse(Console.ReadLine());

        if(addRange >= 1 && addRange <= 9)
        {
            for(int i=1;i<=addRange;i++)
            {
                for(int j=addRange;j>=i;j--)
                {
                    Console.Write(" ");
                }
                for(int k=1;k<=i;k++)
                {
                    Console.Write(number++);
                }
                number--;
                for(int l=1;l<i;l++)
                {
                    Console.Write(--number);
                }
                Console.Write("\n");
                number = 1;
            }
        }
        else
        {
            Console.Write("Input must be a number between 1 and 9\n");
        }
    }
}