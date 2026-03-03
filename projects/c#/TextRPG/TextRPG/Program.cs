using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Program
    {
        static Random random = new Random(); //Static Class to generate random numbers, doesn't need an instance

        static Enemy CreateRandomEnemy() //Static Method, belongs to the Enemy class and doesn't need an instance
        {
            int roll = random.Next(1, 4);

            switch (roll)
            {
                case 1:
                    return new Enemy("Goblin", 30, 5, 40);
                case 2:
                    return new Enemy("Orc", 50, 8, 70);
                case 3:
                    return new Enemy("Skeleton", 40, 6, 60);
                default:
                    throw new Exception("Invalid enemy roll");
            }
        }
        static void Main(string[] args)
        {
            Console.WriteLine("=== Text RPG ===");
            Console.WriteLine("\nEnter your player name: ");
            string name = Console.ReadLine();
            Player player = new Player(name, 100, 10); //Instantiate object player with Player constructor

            Console.WriteLine($"Welcome {player.Name}!\nYour Adventure Begins...");
            Console.WriteLine("Press any key to continue...");
            Console.ReadKey();

            while (player.IsAlive())
            {
                Enemy enemy = CreateRandomEnemy();

                Console.WriteLine($"\nA wild {enemy.Name} appears!");
                int round = 1;

                while (player.IsAlive() && enemy.IsAlive())
                {
                    Console.WriteLine($"\nRound {round}, Choose an action:");
                    Console.WriteLine("1 - Attack");
                    Console.WriteLine("2 - Do Nothing");
                    Console.Write("> ");
                    int opt = int.Parse(Console.ReadLine());

                    Console.WriteLine();
                    switch (opt)
                    {
                        case 1: 
                            player.AttackEnemy(enemy);
                            break;
                        case 2:
                            Console.WriteLine($"{player.Name} hesitates...");
                            break;
                    }
                    Console.WriteLine();

                    if (enemy.IsAlive())
                    {
                        enemy.AttackPlayer(player);
                        Console.WriteLine();
                    }
                }

                if (player.IsAlive())
                {
                    Console.WriteLine($"You defeated the {enemy.Name}!");
                    player.GainXP(enemy.XPReward);

                    Console.WriteLine("\nPress any key to continue...");
                    Console.ReadKey();
                    Console.Clear();
                }
            }

            Console.WriteLine("You have Fallen... Game Over.");
            Console.ReadKey();
        }
    }
}
