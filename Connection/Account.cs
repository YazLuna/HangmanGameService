//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Connection
{
    using System;
    using System.Collections.ObjectModel;
    
    public partial class Account
    {
        public int idAccount { get; set; }
        public string passwordAccount { get; set; }
        public string email { get; set; }
        public int confirmationCode { get; set; }
        public string nickName { get; set; }
    
        public virtual Player Player { get; set; }
    }
}