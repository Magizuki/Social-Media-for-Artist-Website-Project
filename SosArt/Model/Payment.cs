//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SosArt.Model
{
    using System;
    using System.Collections.Generic;
    
    public partial class Payment
    {
        public int PaymentID { get; set; }
        public int PaymentTypeID { get; set; }
        public int ImageID { get; set; }
        public int UserID { get; set; }
        public System.DateTime Date { get; set; }
    
        public virtual Image Image { get; set; }
        public virtual PaymentType PaymentType { get; set; }
        public virtual User User { get; set; }
    }
}