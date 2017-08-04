using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using Wardrobe.Models;

namespace Wardrobe.Controllers
{
    public class TopsTypesController : Controller
    {
        private WardrobeEntities db = new WardrobeEntities();

        // GET: TopsTypes
        public ActionResult Index()
        {
            return View(db.TopsTypes.ToList());
        }

        // GET: TopsTypes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TopsType topsType = db.TopsTypes.Find(id);
            if (topsType == null)
            {
                return HttpNotFound();
            }
            return View(topsType);
        }

        // GET: TopsTypes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TopsTypes/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TopsTypeID,Type")] TopsType topsType)
        {
            if (ModelState.IsValid)
            {
                db.TopsTypes.Add(topsType);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(topsType);
        }

        // GET: TopsTypes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TopsType topsType = db.TopsTypes.Find(id);
            if (topsType == null)
            {
                return HttpNotFound();
            }
            return View(topsType);
        }

        // POST: TopsTypes/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TopsTypeID,Type")] TopsType topsType)
        {
            if (ModelState.IsValid)
            {
                db.Entry(topsType).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(topsType);
        }

        // GET: TopsTypes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TopsType topsType = db.TopsTypes.Find(id);
            if (topsType == null)
            {
                return HttpNotFound();
            }
            return View(topsType);
        }

        // POST: TopsTypes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TopsType topsType = db.TopsTypes.Find(id);
            db.TopsTypes.Remove(topsType);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
