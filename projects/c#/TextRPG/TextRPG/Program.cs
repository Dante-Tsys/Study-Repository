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
        static void Main(string[] args)
        {
            Console.WriteLine("=== Text RPG ===");
            Console.Write("Enter your Player Name: ");
            string name = Console.ReadLine();

            Player player = new Player(name);
            Enemy goblin = new Enemy("Goblin", 30, 5);

            Console.WriteLine("\nPlayer Created Successfully!");
            Console.WriteLine($"Name: {player.Name}");
            Console.WriteLine($"Health: {player.Health}/{player.MaxHealth}");
            Console.WriteLine($"Attack: {player.Attack}");
            Console.WriteLine("\nPress any key to continue...");
            Console.ReadKey();

            Console.WriteLine("\n------------------------------");
            Console.WriteLine($"A {goblin.Name} appears!");

            int round = 1;
            while (player.isAlive() && goblin.isAlive())
            {
                Console.WriteLine($"\nRound {round}, Choose an action:");
                Console.WriteLine("1 - Attack");
                Console.WriteLine("2 - Do Nothing");
                Console.Write("> ");
                int opt = int.Parse(Console.ReadLine());

                Console.WriteLine();
                switch(opt)
                {
                    case 1:
                        player.AttackEnemy(goblin);
                        break;
                    case 2:
                        Console.WriteLine($"{player.Name} does nothing...");
                        break;
                }
                Console.WriteLine();

                if (goblin.isAlive())
                {
                    goblin.AttackPlayer(player);
                }
                round++;
            }

            if (player.isAlive())
            {
                Console.WriteLine($"You defeated the {goblin.Name}!");
            }
            else
            {
                Console.WriteLine("You were defeated... Game Over.");
            }
            Console.WriteLine("------------------------------");
            Console.WriteLine("\nPress any key to continue...");
            Console.ReadKey();
        }
    }
}
