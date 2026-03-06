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

        public Item(string name)
        {
            Name = name;
        }

        public virtual void UseItem(Player player)
        {
            Console.WriteLine("\nNothing happens.");
        }
    }
}
