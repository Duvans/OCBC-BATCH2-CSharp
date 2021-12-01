using System;

class Final_Assignment1
{
    public static void Main(string[] args)
    {

        int input;
        string choose;

        do
        {
            Console.WriteLine("\nSelamat datang di Assignment 1 \n\n Nama: Duvan Sanjaya \n Nomor Peserta: FSDO002ONL020 \n Asal: Pekanbaru \n\n");
            Console.WriteLine("=== PILIH MENU SOAL ===\n");
            Console.WriteLine("1. Segitiga Alfabet\n");
            Console.WriteLine("2. Segitiga Angka\n");
            Console.WriteLine("3. n Factorial\n");
            Console.WriteLine("4. Balik Angka\n");
            Console.WriteLine("5. Converter Angka dengan String\n");
            Console.WriteLine("6. Palindrome\n");

            Console.WriteLine("Input nomor soal: ");
            // input = Console.ReadLine();
            input = int.Parse(Console.ReadLine());

            switch(input)
            {
                case 1:
                {
                    char alfabet = 'A';

                    int addRange;

                    Console.Write("5Enter the Range: ");
                    addRange = Convert.ToInt32(Console.ReadLine());

                    for(int i=0;i<=addRange;i++)
                    {
                        for(int j=addRange;j>=i;j--)
                        {
                            Console.Write(" ");
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
                    break;
                }
                case 2:
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
                    break;
                }
                case 3:
                {
                    int number, factorial=1;

                    Console.Write("Enter any Number: ");
                    number = int.Parse(Console.ReadLine());

                    for(int i=1;i<=number;i++)
                    {
                        factorial = factorial*i;
                    }

                    Console.Write("Factorial of " + number + " is: " + factorial + "\n");
                    break;
                }
                case 4:
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
                    break;
                }
                case 5:
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

                    break;

                }
                case 6:
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
                    break;
                }
                default:
                {
                    break;
                }
            }
            Console.Write("Kembali ke menu awal ? Y/N : ");
            choose = Console.ReadLine();
        }
        while(choose != "N" && choose != "n");

    }
}