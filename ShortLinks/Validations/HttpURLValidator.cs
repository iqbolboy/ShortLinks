using System;
using System.Text.RegularExpressions;

namespace ShortLinks.Validations
{
    /// <summary>
    /// Класс-валидатор длинный URL
    /// </summary>
    public class HttpURLValidator
    {
        /// <summary>
        /// Метод проверяет ссылку на корректность
        /// </summary>
        /// <param name="url">Ссылка которая должена пройти проверку</param>
        /// <param name="resultURI">Возвращает Uri</param>
        /// <param name="errMessage">Возврвщается сообщения об ошибке если Validate = false</param>        
        public bool Validate(string url, out Uri resultURI, out string errMessage)
        {
            resultURI = null;
            errMessage = "";
            
            if (string.IsNullOrWhiteSpace(url))
            {
                errMessage = "1711. Введите ссылку!";
                return false;
            }

            if (!Regex.IsMatch(url, @"^https?:\/\/", RegexOptions.IgnoreCase))
                url = "http://" + url;

            if (Uri.TryCreate(url, UriKind.Absolute, out resultURI))
                return (resultURI.Scheme == Uri.UriSchemeHttp ||
                        resultURI.Scheme == Uri.UriSchemeHttps);

            errMessage = "1831. Пожалуйста, введите правильную ссылку!";

            return false;
        }
    }
}