using System;
using System.Collections.Generic;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Core
    {
        static Random random = new Random(); //Static Class to generate random numbers, doesn't need an instance
        static void Main(string[] args)
        {
            Console.WriteLine("=== Text RPG ===");
            Console.Write("\nEnter your player name: ");
            string name = Console.ReadLine();
            Player player = new Player(name, 100, 10); //Instantiate object player with Player constructor

            Console.Clear();
            Console.WriteLine($"Welcome {player.Name}!Your Adventure Begins...");
            Console.WriteLine("\nPress any key to continue...");
            Console.ReadKey();

            while (player.IsAlive())
            {
                Console.Clear();
                Console.WriteLine("What would you like to do?");
                Console.WriteLine("1 - Explore");
                Console.WriteLine("2 - Rest");
                Console.WriteLine("3 - Show Stats");
                Console.WriteLine("4 - Exit Game");
                Console.Write("-> ");
                int opt = int.Parse(Console.ReadLine());
                
                switch (opt)
                {
                    case 1:
                        Console.Clear();
                        Explore(player);
                        break;
                    case 2:
                        Console.Clear();
                        player.Rest();
                        break;
                    case 3:
                        Console.Clear();
                        player.ShowStats();
                        break;
                    case 4:
                        Console.Clear();
                        Console.WriteLine("Farewell, adventurer.");
                        break;
                    default:
                        throw new Exception("Invalid Choice.");
                }

                Console.WriteLine("\nPress any key to continue...");
                Console.ReadKey();
                Console.Clear();
            }

            if (!player.IsAlive())
            {
                Console.WriteLine("You have Fallen... Game Over.");
                Console.ReadKey();
            }
        }

        static void Explore(Player player)
        {
            Console.WriteLine("\nYou venture into the wild...");

            int chance = random.Next(1, 101);

            if (chance <= 70)
            {
                Enemy enemy = CreateRandomEnemy();
                Console.WriteLine($"A wild {enemy.Name} appears!");
                StartCombat(player, enemy);
            }
            else
            {
                Console.WriteLine("The area is quiet... nothing happens.");
            }
        }

        static void StartCombat(Player player, Enemy enemy)
        {
            while (player.IsAlive() && enemy.IsAlive())
            {
                Console.WriteLine("\n1 - Attack");
                Console.WriteLine("2 - Use item");
                Console.WriteLine("3 - Do Nothing");
                Console.Write("-> ");
                int opt = int.Parse(Console.ReadLine());

                switch (opt)
                {
                    case 1: 
                        player.AttackEnemy(enemy);
                        break;
                    case 2:
                        player.UseItem();
                        break;
                    case 3:
                        Console.WriteLine($"\n{player.Name} hesitates...");
                        break;
                    default:
                        throw new Exception("Invalid Choice.");
                }

                if (enemy.IsAlive()) enemy.AttackPlayer(player);
            }

            if (player.IsAlive())
            {
                Console.Clear();
                Console.WriteLine($"\nYou defeated the {enemy.Name}!");
                player.GainXP(enemy.XPReward);

                if (random.Next(1, 101) >= 50)
                {
                    Item potion = new Item("Health Potion", 30);
                    player.Inventory.Add(potion);
                    Console.WriteLine("The enemy dropped a Health Potion!");
                }
            }
        }

        static Enemy CreateRandomEnemy() //Static Method, belongs to the Enemy class and doesn't need an instance
        {
            int roll = random.Next(1, 4);

            switch (roll)
            {
                case 1:
                    return new Goblin();
                case 2:
                    return new Orc();
                case 3:
                    return new Skeleton();
                default:
                    throw new Exception("Invalid enemy roll");
            }
        }
    }
}
