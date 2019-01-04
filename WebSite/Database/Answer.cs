namespace WebSite.Database
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Answer")]
    public partial class Answer
    {
        public int Id { get; set; }

        [StringLength(50)]
        public string Name { get; set; }

        [StringLength(50)]
        public string Email { get; set; }

        [Column("Answer")]
        [Required]
        [StringLength(50)]
        public string Answer1 { get; set; }

        [Required]
        [StringLength(10)]
        public string SurveyKey { get; set; }

        public int User_Id { get; set; }

        public string Question { get; set; }
    }
}
