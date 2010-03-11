using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace Demo8.Models
{
   // [MetadataType(typeof(UserMetaType))]
    public class UserInfo
    {
        [Required]
        [StringLength(50)]
        public string Name { get; set; }
        [Required]
        [Range(1, 120)]
        public int Age { get; set; }
    }
    public class UserMetaType
    {
      
        public string Name { get; set; }
       
        public int Age { get; set; }
    }
}