using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

//Created By Prit Joshi
//Project 1 Part 2
namespace Assignment3Cinema
{
    class Program
    {
        Boolean filmValidation(String filmName)
        {
            string[] age = new string[] {"12A", "U", "15", "18"};//age validation according to film 
            Boolean isValid = true;
            string value = "";
            try
            {
                value = filmName.Split('(')[1];
                value = value.Split(')')[0];
                value = value.ToUpper();
                if (value == null)
                {
                    return false;
                }
                else if (!age.Contains(value))
                {
                    return false;
                }
            }
            catch (Exception) {
                isValid = false;
            }
            return isValid;
        }

        string[] printFilmName()
        {
            int filmValueLimit = 0;
            int count = 0;
            String[] films;
            {
                Console.Write("\nWelcome to our Multiplex. \n");
                Console.Write("\nEnter Number of Films: \n");
                
                try
                {
                    //insert film number
                    filmValueLimit = int.Parse(Console.ReadLine());
                    films = new String[filmValueLimit];
                    String value;
                    for (count = 1; count <= filmValueLimit; count++)
                    {
                        Console.Write("\nInsert Film " + count + " : ");
                        value = Console.ReadLine();
                        if (filmValidation(value))
                        {
                            films[count-1] = value;
                        }
                        else
                        {
                            count = count - 1;
                            Console.Write("Invalid Input");
                        }
                    }
                    int tempCount = 0;
                    int length = films.Length + 1;
                    for (tempCount = 1; tempCount < length; tempCount++) {
                        Console.Write("\n " + tempCount + ". " + films[tempCount-1]);
                    }
                    return films;
                }
                catch (FormatException)
                {
                    return this.printFilmName();
                }
            }

        }
        void runConsole()
        {
            string doWeGoRoundAgain;
            do {
                String[] films;
                films = printFilmName();
                int filmNumber = 0;
                int age = 0;
                int UserAge = 0;
                do
                {
                    Console.Write("\nEnter the number of the film you wish to see: ");
                    try
                    {
                        //film number check
                        filmNumber = int.Parse(Console.ReadLine());
                        if (filmNumber < 1 || filmNumber > films.Length) {
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
                } while (filmNumber < 1 || filmNumber > films.Length);

                do
                {
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
                //film selection
                if (films[filmNumber - 1].EndsWith("(12A)"))
                {
                    age = 12;
                }
                else if (films[filmNumber - 1].EndsWith("(18)"))
                {
                    age = 18;
                }
                else if (films[filmNumber - 1].EndsWith("(15)"))
                {
                    age = 15;
                }
                else if (films[filmNumber - 1].EndsWith("(U)"))
                {
                    age = 5;
                }
                else {
                    age = 0;
                }

                if (UserAge == 12 && films[filmNumber - 1].EndsWith("(12A)"))//age validation
                {
                    Console.Write("\nAre you accompanied with Adult? y or n: ");
                    string resp = Console.ReadLine();
                    resp = resp.ToUpper();
                    Console.Write(resp);
                    if (resp == "Y")
                    {
                        age = 12;
                        allowed = true;
                    }
                    else if (resp == "N")
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
                doWeGoRoundAgain = doWeGoRoundAgain.ToUpper();
            } while (doWeGoRoundAgain.Equals("Y"));
            Console.ReadLine();
        }

        static void Main(string[] args)
        {
            Program p = new Program();
            p.runConsole();
            Console.ReadLine();
        }
    }
}
