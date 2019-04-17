using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//Created By Prit Joshi
//Project 1 Part 1
namespace Assignment3Cinema
{
    class Program
    {

        void printFilmName(){
            //Movie list
            Console.Write("\nWelcome to our Multiplex." +
                "\nWe are presently showing: " +
                "\n 1.Rush (15)  " +
                "\n 2.How I Live Now (15) " +
                "\n 3.Thor: The Dark World (12A) " +
                "\n 4.Filth (18) " +
                "\n 5.Planes (U) \n");
        }
        void runConsole()
        {
            string doWeGoRoundAgain;
            do {
                printFilmName();
                int filmNumber = 0;
                int age = 0;
                int UserAge = 0;
                do
                {
                    Console.Write("\nEnter the number of the film you wish to see: ");
                    try
                    {
                        //film number validation
                        filmNumber = int.Parse(Console.ReadLine());
                        if (filmNumber < 1 || filmNumber > 5) {
                            Console.Write("\nThe film number is invalid\n");
                        }
                        else
                        {
                            break;
                        }
                    }
                    catch (FormatException)
                    {
                        filmNumber = 0;
                        
                        Console.Write("\nThe film number is invalid\n");
                    }
                } while (filmNumber < 1 || filmNumber > 5);

                do
                {
                    //age validation
                    Console.Write("\nEnter your age: ");
                    try
                    {
                        UserAge = int.Parse(Console.ReadLine());
                        if (UserAge < 5 || UserAge > 120)
                        {
                            Console.Write("\nThe age is invalid\n");
                        }
                        else
                        {
                            break;
                        }
                    }
                    catch (FormatException)
                    {
                        UserAge = 0;
                        Console.Write("\nThe age is invalid\n");
                    }
                } while (UserAge < 5 || UserAge > 120);

                Boolean allowed = false;
                switch (filmNumber)
                {
                    case 1:
                        age = 15;
                        break;
                    case 2:
                        age = 15;
                        break;
                    case 3:
                        age = 12;
                        break;
                    case 4:
                        age = 18;
                        break;
                    case 5:
                        age = 1;
                        break;
                    default:
                        age = 0;
                        Console.Write("\n That Film number is invalid. \n\n");
                        Program p = new Program();
                        p.runConsole();
                        break;
                }

                if (UserAge == 12 && filmNumber == 3)
                {
                    Console.Write("\nAre you accompanied with Adult? y or n: ");//condition check for 12A
                    int resp = Console.Read();
                    Char x = Convert.ToChar(resp);
                    Console.Read();
                    if (x.Equals('y'))
                    {
                        age = 12;
                        allowed = true;
                    }
                    else if (x.Equals('n'))
                    {
                        age = 12;
                        allowed = false;
                    }
                    else
                    {
                        Console.Write("\n Invalid input. ");
                        allowed = false;
                    }
                }
                else
                {
                    if (UserAge >= age)
                    {
                        allowed = true;
                    }
                    else
                    {
                        allowed = false;
                    }
                }
                if (allowed)
                {
                    Console.Write("\nEnjoy The Film.");
                }
                else
                {
                    Console.Write("\nAccess Denied - you are too young");
                }
                Console.Write("\n\nAnother Customer? (Y or N) : ");
                doWeGoRoundAgain = Console.ReadLine();
            } while (doWeGoRoundAgain.Equals("Y"));
            Console.ReadKey();
        }

        static void Main(string[] args)
        {
            Program p = new Program();
            p.runConsole();
            Console.ReadLine();
        }
    }
}
