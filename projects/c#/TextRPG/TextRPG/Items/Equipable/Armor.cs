using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TextRPG
{
    internal class Armor : Item
    {
        public int HealthBonus;

        public Armor(string name, int healthBonus) : base(name)
        {
            HealthBonus = healthBonus;
        }

        public override void UseItem(Player player)
        {
            player.EquipArmor(this);
        }
    }
}
