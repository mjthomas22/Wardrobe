﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class WardrobeEntities : DbContext
    {
        public WardrobeEntities()
            : base("name=WardrobeEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Accessory> Accessories { get; set; }
        public virtual DbSet<AccessoryType> AccessoryTypes { get; set; }
        public virtual DbSet<Bottom> Bottoms { get; set; }
        public virtual DbSet<BottomType> BottomTypes { get; set; }
        public virtual DbSet<Color> Colors { get; set; }
        public virtual DbSet<Occasion> Occasions { get; set; }
        public virtual DbSet<Season> Seasons { get; set; }
        public virtual DbSet<Shoe> Shoes { get; set; }
        public virtual DbSet<ShoeType> ShoeTypes { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Top> Tops { get; set; }
        public virtual DbSet<TopsType> TopsTypes { get; set; }
        
    }
}
