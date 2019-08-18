using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class CADProducto
    {
        private static ProductoTableAdapter adapter = new ProductoTableAdapter();

        public static void InsertProducto(string Descripcion,decimal Precio,float Stock)
        {
            adapter.InsertProducto(Descripcion,Precio,Stock);
        }

    }
}
