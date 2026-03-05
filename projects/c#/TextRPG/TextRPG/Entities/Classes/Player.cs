using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Player
    {
        public string Name;
        public int Health, MaxHealth, Attack; //Base status
        public int Level, XP, XPGoal; //Level status

        public Random random = new Random(); //Random method
        public List<Item> Inventory = new List<Item>(); //Inventory list

        public Player(string name, int maxHealth, int attack) //Player constructor
        {
            Name = name;

            Level = 1;
            XP = 0;
            XPGoal = 100;

            MaxHealth = maxHealth;
            Health = MaxHealth;
            Attack = attack;
        }

        public void AttackEnemy(Enemy enemy)
        {
            int damage = random.Next(Attack - 3, Attack + 4);
            Console.WriteLine($"\n{Name} attacks {enemy.Name} for {damage} damage!");
            enemy.TakeDamage(damage);
        }

        public void TakeDamage(int damage)
        {
            Health -= damage;

            if (Health < 0) Health = 0;

            Console.WriteLine($"{Name} takes {damage} damage!");
            Console.WriteLine($"{Name}'s health: {Health}/{MaxHealth}");
        }

        public void GainXP(int amount)
        {
            XP += amount;
            Console.WriteLine($"{Name} gained {amount} XP!");
            Console.WriteLine($"XP: {XP}/{XPGoal}");

            if (XP >= XPGoal) LevelUp();
        }

        public void LevelUp()
        {
            Level++;
            XP -= XPGoal;
            XPGoal += 50;

            MaxHealth += 20;
            Attack += 3;
            Health = MaxHealth;

            Console.WriteLine("\n--- Level Up! ---");
            Console.WriteLine($"You are now level {Level}!");
            Console.WriteLine("Your stats increased!");
            Console.WriteLine("-----------------\n");
        }

        public void Rest()
        {
            int healAmount = MaxHealth/2;
            Health += healAmount;

            if (Health > MaxHealth) Health = MaxHealth;

            Console.WriteLine($"\n{Name} rests and recovers health.");
            Console.WriteLine($"Health: {Health}/{MaxHealth}");
        }

        public void ShowStats()
        {
            Console.WriteLine("\n=== Player Stats ===");
            Console.WriteLine($"Name: {Name}");
            Console.WriteLine($"Level: {Level}");
            Console.WriteLine($"XP: {XP}");
            Console.WriteLine($"Health: {Health}");
            Console.WriteLine($"Attack: {Attack}");
            Console.WriteLine($"====================");
        }

        public void ShowInventory()
        {
            Console.WriteLine("\n=== INVENTORY ===");
            if (Inventory.Count == 0)
            {
                Console.WriteLine("\nInventory is empty.\n");
                Console.WriteLine("=================");
                return;
            }

            for (int i = 0; i < Inventory.Count; i++)
            {
                Console.WriteLine($"{i + 1} - {Inventory[i].Name}");
            }
        }

        public void UseItem()
        {
            if (Inventory.Count == 0)
            {
                Console.WriteLine("\nNo items to use.");
                return;
            }

            ShowInventory();
            Console.Write("\nChoose item number: ");
            int opt = int.Parse(Console.ReadLine());

            if (opt-1 >= 0 && opt - 1 < Inventory.Count)
            {
                Inventory[opt - 1].UseItem(this);
                Inventory.RemoveAt(opt - 1);
            }
        }

        public bool IsAlive()
        {
            while (Health > 0) return true;
            return false;
        }
    }
}
