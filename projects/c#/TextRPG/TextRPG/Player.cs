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
        public int Health, MaxHealth, Attack;

        public Player(string name)
        {
            Name = name;
            MaxHealth = 100;
            Health = MaxHealth;
            Attack = 10;
        }

        public void AttackEnemy(Enemy enemy)
        {
            Console.WriteLine($"{Name} attacks {enemy.Name} for {Attack} damage!");
            enemy.TakeDamage(Attack);
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
