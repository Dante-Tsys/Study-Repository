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
        public int Health, MaxHealth, Attack;

        public Enemy (string name, int maxHealth, int attack)
        {
            Name = name;
            MaxHealth = maxHealth;
            Health = maxHealth;
            Attack = attack;
        }

        public void AttackPlayer(Player player)
        {
            Console.WriteLine($"{Name} attacks {player.Name} for {Attack} damage!");
            player.TakeDamage(Attack);
        }

        public void TakeDamage(int damage)
        {
            Health -= damage;

            if (Health < 0) Health = 0;

            Console.WriteLine($"{Name} takes {damage} damage!");
            Console.WriteLine($"{Name}'s health: {Health}/{MaxHealth}");
        }

        public bool isAlive()
        {
            return Health > 0;
        }
    }
}
