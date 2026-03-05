using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Item
    {
        public string Name;
        public int HealAmount;

        public Item(string name, int healAmount)
        {
            Name = name;
            HealAmount = healAmount;
        }

        public void UseItem(Player player)
        {
            player.Health += HealAmount;

            if (player.Health > player.MaxHealth) player.Health = player.MaxHealth;

            Console.WriteLine($"{player.Name} used {Name}!");
            Console.WriteLine($"Recovered {HealAmount} HP.");
            Console.WriteLine($"Health: {player.Health}/{player.MaxHealth}");
        }
    }
}
