using System;
using System.ComponentModel.DataAnnotations;

namespace ShortLinks.Models
{
    /// <summary>
    /// Сокращенный URL
    /// </summary>
    public class ShortLink
    {
        /// <summary>
        /// ID сокрщенного URL-а
        /// </summary>        
        public int ShortLinkID { get; set; }

        /// <summary>
        /// Длинный URL
        /// </summary>
        [Display(Name = "Длинный URL")]
        public string LongUrl { get; set; }

        /// <summary>
        /// Сокращенный URL
        /// </summary>
        [Display(Name = "Сокращенный URL")]
        public string ShortUrl { get; set; }

        /// <summary>
        /// Количество переходов
        /// </summary>
        [Display(Name = "Количество переходов")]
        public int RedirectCount { get; set; }

        /// <summary>
        /// Дата и время создания сокращенного URL-а
        /// </summary>
        [Display(Name = "Дата и время создания")]
        public DateTime CreateDateTime {get; set;}
    }
}