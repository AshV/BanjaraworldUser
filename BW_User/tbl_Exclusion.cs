//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace BW_User
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbl_Exclusion
    {
        public tbl_Exclusion()
        {
            this.tbl_Package = new HashSet<tbl_Package>();
        }
    
        public int exc_ID { get; set; }
        public string exc_Name { get; set; }
        public string exc_Description { get; set; }
    
        public virtual ICollection<tbl_Package> tbl_Package { get; set; }
    }
}
