namespace WebSite.Database
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Survey")]
    public partial class Survey
    {
        public int Id { get; set; }

        [Required]
        public string Question { get; set; }

        [Required]
        [StringLength(50)]
        public string Op1 { get; set; }

        [Required]
        [StringLength(50)]
        public string Op2 { get; set; }

        public DateTime? DateOFCreat { get; set; }

        public int LifeTime { get; set; }

        [Required]
        [StringLength(50)]
        public string Type { get; set; }

        [Required]
        [StringLength(10)]
        public string KeyOfSurvey { get; set; }

        public int User_Id { get; set; }
    }
}
