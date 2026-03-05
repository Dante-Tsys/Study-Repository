using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Orc : Enemy
    {
        public Orc() : base("Orc", 50, 8, 70)
        {
        }

        public override void AttackPlayer(Player player)
        {
            int heavyAttack = random.Next(1, 101);

            if (heavyAttack <= 25)
            {
                int damage = Attack * 2;

                Console.WriteLine($"{Name} performs a HEAVY ATTACK!");
                Console.WriteLine($"{Name} deals {damage} damage!");

                player.TakeDamage(damage);
            }

            else
            {
                base.AttackPlayer(player);
            }
        }
    }
}
