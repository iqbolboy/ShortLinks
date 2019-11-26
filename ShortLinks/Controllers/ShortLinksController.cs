using ShortLinks.Helpers;
using ShortLinks.Models;
using ShortLinks.Validations;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;

namespace ShortLinks.Controllers
{
    /// <summary>
    /// Класс контроллер сокращенного URL-а
    /// </summary>
    public class ShortLinksController : Controller
    {
        /// <summary>
        /// GET запрос на получения списка сокращенных URL-ов
        /// </summary>        
        public ActionResult Index()
        {
            var db = new DataContext();

            ViewBag.DomainName = System.Web.HttpContext.Current.Request.Url.GetLeftPart(UriPartial.Authority).ToString();

            var shortLinks = db.ShortLinks.OrderByDescending(sh => sh.ShortLinkID);
            return View(shortLinks);
        }

        /// <summary>
        /// GET запрос на добавление нового сокращенного URL-а
        /// </summary> 
        public ActionResult Create()
        {
            return View();
        }

        /// <summary>
        /// POST запрос на добавление нового сокращенного URL-а
        /// </summary> 
        [HttpPost]
        public ActionResult Create(ShortLink shortLink)
        {
            var validator = new HttpURLValidator();
            if (!validator.Validate(shortLink.LongUrl, out Uri resultURI, out string errMessage))
            {
                ModelState.AddModelError("", errMessage);
                return View();
            }

            var db = new DataContext();

            shortLink.LongUrl = resultURI.AbsoluteUri;
            shortLink.RedirectCount = 0;            
            shortLink.ShortUrl = UniqueKey.GetUniqueKey();
            shortLink.CreateDateTime = DateTime.Now;

            db.ShortLinks.Add(shortLink);
            db.SaveChanges();

            return RedirectToAction("Index");         
        }

        /// <summary>
        /// GET запрос на отображение сокращенного URL-а для дальнейшего изменения по ID сокращенного URL-а
        /// </summary>
        /// <param name="shortLinkID">ID сокращенного URL-а</param>        
        public ActionResult Edit(int shortLinkID)
        {
            var db = new DataContext();
            var shortLink = db.ShortLinks.Find(shortLinkID);
            if (shortLink == null)
            {
                throw new Exception($"1226. Не удалось найти сокращенного URL-а с указанным номером ID - {shortLinkID}");
            }

            return View(shortLink);
        }

        /// <summary>
        /// POST запрос для изменения сокращенного URL-а  по ID сокращенного URL-а
        /// </summary>
        /// <param name="product">Объект продукта, который требуется изменить</param>        
        [HttpPost]
        public ActionResult Edit(ShortLink _shortLink)
        {
            var validator = new ShortURLValidator();
            if (!validator.Validate(_shortLink, out Uri resultURI, out List<string> errMessages))
            {
                foreach(string errMessage in errMessages)
                {
                    ModelState.AddModelError("", errMessage);
                }
                
                return View();
            }

            var db = new DataContext();

            var shortLink = db.ShortLinks.Find(_shortLink.ShortLinkID);
            shortLink.LongUrl = _shortLink.LongUrl;
            shortLink.ShortUrl = _shortLink.ShortUrl;

            db.Entry(shortLink).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("Index");           
        }

        /// <summary>
        /// GET запрос на отображение сокращенного URL-а для дальнейшего удаления по ID сокращенного URL-а
        /// </summary>
        /// <param name="id">ID сокращенного Url-а</param> 
        public ActionResult Delete(int shortLinkID)
        {
            var db = new DataContext();

            var shortLink = db.ShortLinks.Find(shortLinkID);

            return View(shortLink);
        }

        /// <summary>
        /// POST запрос для удаления сокращенного URL-а
        /// </summary>
        /// <param name="product">Объект продукта, который требуется изменить</param>   
        [HttpPost]
        public ActionResult Delete(ShortLink _shortLink)
        {
            var db = new DataContext();

            var shortLink = db.ShortLinks.Find(_shortLink.ShortLinkID);

            db.ShortLinks.Remove(shortLink);
            db.SaveChanges();

            return RedirectToAction("Index");          
        }

        /// <summary>
        /// Метод перенаправляет на длинную ссылку
        /// </summary>
        /// <param name="id">Сокращенная ссылка</param>        
        public ActionResult Redirect(string id)
        {
            var db = new DataContext();

            var shortLink = db.ShortLinks.Where(sh => sh.ShortUrl == id).FirstOrDefault();
            shortLink.RedirectCount++;

            db.Entry(shortLink).State = EntityState.Modified;
            db.SaveChanges();

            if (shortLink != null)
            {                
                return Content($"<script>window.location = '{shortLink.LongUrl}';</script>");
            }

            return View();
        }
    }
}
