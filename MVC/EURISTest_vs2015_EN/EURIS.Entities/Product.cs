//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EURIS.Entities
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public partial class Product
    {
        public Product()
        {
            this.ProductsCatalog = new HashSet<ProductsCatalog>();
        }
    
        public string Code { get; set; }
        public string Description { get; set; }

        //[DisplayFormat( ApplyFormatInEditMode = true)]
        [DisplayFormat(DataFormatString = "{0:##,###.00}", ApplyFormatInEditMode = true)]
        public Nullable<decimal> Price { get; set; }
    
        public virtual ICollection<ProductsCatalog> ProductsCatalog { get; set; }
    }
}
