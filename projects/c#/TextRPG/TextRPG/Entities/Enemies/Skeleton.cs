using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Skeleton : Enemy
    {
        public Skeleton() : base("Skeleton", 40, 6, 60)
        {
        }

        public override void AttackPlayer(Player player)
        {
            int damage = random.Next(Attack - 2, Attack + 3);

            Console.WriteLine($"\n{Name} slashes {player.Name} for {damage} damage!");
            player.TakeDamage(damage);

            int steal = random.Next(1, 101);

            if (steal <= 20)
            {
                int heal = damage / 2;
                Health += heal;
                Console.WriteLine($"{Name} steals life and heals {heal} HP!");
                Console.WriteLine($"{Name} Health: {Health}/{MaxHealth}");
            }
        }
    }
}
