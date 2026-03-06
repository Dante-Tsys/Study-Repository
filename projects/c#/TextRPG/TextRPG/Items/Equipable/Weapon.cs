using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Weapon : Item
    {
        public int AttackBonus;

        public Weapon(string name, int attackBonus) : base(name)
        {
            AttackBonus = attackBonus;
        }

        public override void UseItem(Player player)
        {
            player.EquipWeapon(this);
        }
    }
}
