using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Otel_Proje.Models;

namespace Otel_Proje.Controllers
{
    public class MusteriHesabiController : Controller
    {
        OtelEntities3 db = new OtelEntities3();
        // GET: MusteriHesabi
        public ActionResult Index()
        {
            return View(db.MusteriHesabis.ToList());
        }


        [HttpGet]
        public ActionResult Yeni()
        {
            return View();
        }


        [HttpPost]
        public ActionResult Yeni(MusteriHesabi ekle)
        {
            try
            {
                using (OtelEntities3 db = new OtelEntities3())
                {
                    db.MusteriHesabis.Add(ekle);
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }

        }

        [HttpGet]
        public ActionResult Duzenle(int id)
        {
            using (OtelEntities3 db = new OtelEntities3())
            {
                return View(db.MusteriHesabis.Where(x => x.IslemNo == id).FirstOrDefault());
            }
        }

        [HttpPost]
        public ActionResult Duzenle(int id,MusteriHesabi duzenle)
        {
            try
            {
                using (OtelEntities3 db = new OtelEntities3())
                {
                    db.Entry(duzenle).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }



        [HttpGet]
        public ActionResult Sil(int id)
        {
            using (OtelEntities3 db = new OtelEntities3())
            {
                return View(db.MusteriHesabis.Where(x => x.IslemNo == id).FirstOrDefault());
            }
        }

        [HttpPost]
        public ActionResult Sil(int id, MusteriHesabi sil)
        {
            try
            {
                using (OtelEntities3 db = new OtelEntities3())
                {
                    sil = db.MusteriHesabis.Where(x => x.IslemNo == id).FirstOrDefault();
                    db.MusteriHesabis.Remove(sil);
                    db.SaveChanges();
                }
                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}