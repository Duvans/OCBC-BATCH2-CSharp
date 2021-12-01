using System;

class Soal_1
{
    public static void Main(string[] args)
    {
        char alfabet = 'A';

        int addRange;

        Console.Write("Enter the Range: ");
        addRange = Convert.ToInt32(Console.ReadLine());

        for(int i=0;i<=addRange;i++)
        {
            for(int j=addRange;j>=i;j--)
            {
                Console.Write("");
            }
            for(int k=1;k<=i;k++)
            {
                Console.Write(alfabet++);
            }
            alfabet--;
            for(int l=1;l<i;l++)
            {
                Console.Write(--alfabet);
            }
            Console.Write("\n");
            alfabet = 'A';
        }   
    }
}