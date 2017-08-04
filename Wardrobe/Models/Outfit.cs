using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;

namespace Wardrobe.Models
{
    public class Outfit
    {
        [Key]
        int OutfitsID { get; set; }
        int TopsID { get; set; }
        int BottomsID { get; set; }
        int ShoeID { get; set; }
        int AccessoryID { get; set; }



    }
}