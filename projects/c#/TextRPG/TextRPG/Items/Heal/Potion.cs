using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Potion : Item
    {
        public int HealAmount;

        public Potion (string name, int healAmount) : base (name)
        {
            HealAmount = healAmount;
        }

        public override void UseItem(Player player)
        {
            player.Health += HealAmount;

            if (player.Health > player.MaxHealth)
            {
                player.Health = player.MaxHealth;
            }

            Console.WriteLine($"\n{player.Name} used {Name}!");
            Console.WriteLine($"Recovered {HealAmount} HP.");
        }
    }
}
