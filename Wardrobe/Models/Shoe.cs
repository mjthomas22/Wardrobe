//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Wardrobe.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Shoe
    {
        public int ShoeID { get; set; }
        public string ShoeName { get; set; }
        public string ShoePhoto { get; set; }
        public int ShoeTypeID { get; set; }
        public int ColorID { get; set; }
        public int SeasonID { get; set; }
        public int OccasionID { get; set; }
    
        public virtual Color Color { get; set; }
        public virtual Occasion Occasion { get; set; }
        public virtual Season Season { get; set; }
        public virtual ShoeType ShoeType { get; set; }
    }
}
