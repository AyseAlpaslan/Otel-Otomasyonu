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
    
    public partial class MusteriHesabi
    {
        public int IslemNo { get; set; }
        public Nullable<decimal> SonHesap { get; set; }
        public string GirisTarihi { get; set; }
        public string CikisTarihi { get; set; }
        public Nullable<int> KisiSayisi { get; set; }
        public Nullable<int> OdaNo { get; set; }
        public Nullable<int> MNo { get; set; }
    
        public virtual MusteriKayit MusteriKayit { get; set; }
        public virtual Odalar Odalar { get; set; }
    }
}
