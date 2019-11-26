using ShortLinks.Models;
using System;
using System.Collections.Generic;

namespace ShortLinks.Validations
{
    /// <summary>
    /// Класс-валидатор cокращенный URL
    /// </summary>
    public class ShortURLValidator
    {
        /// <summary>
        /// Метод проверяет ссылку на корректность
        /// </summary>
        /// <param name="shortLink">Объект сокращенного URL-а</param>
        /// <param name="resultURI">Возвращает Uri</param>
        /// <param name="errMessages">Возврвщается список сообщений об ошибке если Validate = false</param>   
        public bool Validate(ShortLink shortLink, out Uri resultURI, out List<string> errMessages)
        {
            errMessages = new List<string>();

            var validator = new HttpURLValidator();
            if (!validator.Validate(shortLink.LongUrl, out resultURI, out string errMessage))
            {   
                errMessages.Add(errMessage);
            }

            if (string.IsNullOrWhiteSpace(shortLink.ShortUrl))
            {
                errMessages.Add("2107. Введите сокращенную ссылку!");
            }else if (shortLink.ShortUrl.Length != 6)
            {
                errMessages.Add("2110. Сокращенная ссылка должна состоит из 6 символов!");
            }

            if (errMessages.Count > 0)
            {
                return false;
            }

            return true;
        }
    }
}