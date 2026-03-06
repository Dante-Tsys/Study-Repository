using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Goblin : Enemy
    {
        public Goblin() : base("goblin", 30, 5, 40)
        {
        }

        public override void AttackPlayer(Player player)
        {
            int dodge = random.Next(1, 101);

            if (dodge <= 20)
            {
                Console.WriteLine($"\n{Name} quickly strike!");

                int damage = Attack;
                player.TakeDamage(damage);
            }
            else
            {
                base.AttackPlayer(player);
            }
        }
    }
}
