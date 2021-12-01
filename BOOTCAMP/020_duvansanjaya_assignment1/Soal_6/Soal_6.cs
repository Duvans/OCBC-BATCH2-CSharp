using System;

class Soal_6
{
    public static void Main(string[] args)
    {
        string word;
        int i, temp, cont=0;

        Console.Write("Enter the string: ");
        word = Console.ReadLine();

        temp = word.Length;

        for(i=0;i<temp/2;i++)
        {
            if(word[i] == word[temp-i-1])
            {
                cont++;    
            }
        }

        if(cont==i)
        {
            Console.Write("string is palindrome\n");
        }
        else
        {
            Console.Write("string is not palindrome\n");
        }
    }
}