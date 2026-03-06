using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Enemy
    {
        public string Name;
        public int Health, MaxHealth, Attack, XPReward;

        public Random random = new Random();

        public Enemy (string name, int maxHealth, int attack, int xpReward)
        {
            Name = name;
            MaxHealth = maxHealth;
            Health = maxHealth;
            Attack = attack;
            XPReward = xpReward;
        }

        public virtual void AttackPlayer(Player player)
        {
            int damage = random.Next(Attack - 3, Attack + 4);
            Console.WriteLine($"\n{Name} attacks {player.Name} for {damage} damage!");
            player.TakeDamage(damage);
        }

        public virtual void TakeDamage(int damage)
        {
            Health -= damage;

            if (Health < 0) Health = 0;

            Console.WriteLine($"{Name} takes {damage} damage!");
            Console.WriteLine($"{Name}'s health: {Health}/{MaxHealth}");
        }

        public bool IsAlive()
        {
            while (Health > 0) return true;
            return false;
        }
    }
}
