//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Otel_Proje.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Servisler
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Servisler()
        {
            this.Odalars = new HashSet<Odalar>();
        }
    
        public int ServisNo { get; set; }
        public string ServisAdi { get; set; }
        public Nullable<decimal> ServisUcret { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Odalar> Odalars { get; set; }
    }
}
