using CAD.DSTableAdapters;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CAD
{
    public class CADTipoDocumento
    {
        private static TipoDocumentoTableAdapter adapter = new TipoDocumentoTableAdapter();

        public static void InsertTipoDocumento( string Descipcion)
        {
            adapter.InsertTipoDocumento(Descipcion);
        }
    }
}
