﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Threading.Tasks;

namespace SuppModels
{
    [Table("MediaConfigurations", Schema = "dbo")]
    public class MediaConfiguration
    {
        public long Id { get; set; }
        public long UserId { get; set; }
        public int MaxThumbnailSize { get; set; }
        public int MinThumbnailSize { get; set; }

        public System.DateTime InsDateTime { get; set;}
    }
}