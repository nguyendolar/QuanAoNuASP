using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using OfficeOpenXml;
using ProTechTiveGear.Models;

namespace ProTechTiveGear.Controllers
{
    public class ItemsController : Controller
    {
        private ProTechTiveGearEntities db = new ProTechTiveGearEntities();

        // GET: Items
        public ActionResult Index()
        {
			//var ac = (Admin)Session["Account"];
			//if (ac == null)
			//{
			//	return RedirectToAction("Login", "Admin");
			//}
			var items = db.Items.Include(i => i.Brand).Include(i => i.ItemType).Where(a=>a.Active==true);
            return View(items.ToList());
        }
		public ActionResult Itemunactive()
		{
			//var ac = (Admin)Session["Account"];
			//if (ac == null)
			//{
			//	return RedirectToAction("Login", "Admin");
			//}
			var items = db.Items.Include(i => i.Brand).Include(i => i.ItemType).Where(a => a.Active == false);
			return View(items.ToList());
		}
		// GET: Items/Details/5
		public ActionResult Details(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        // GET: Items/Create
        public ActionResult Create()
        {
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name");
            ViewBag.TypeID = new SelectList(db.ItemTypes, "ID", "TypeName");
            return View();
        }

        // GET: Items/Create
        public ActionResult Excel()
        {
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name");
            ViewBag.TypeID = new SelectList(db.ItemTypes, "ID", "TypeName");
            return View();
        }

        // POST: Items/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
		[ValidateInput(false)]
		public ActionResult Create([Bind(Include = "ID,Name,PurcharsePrice,SellPrice,Quantity,TypeID,BrandID,Picture,ShortTitle,Describe")] Item item)
        {
            if (ModelState.IsValid)
            {
				item.DateImport = DateTime.Now;
				item.Active = true;
                db.Items.Add(item);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", item.BrandID);
            ViewBag.TypeID = new SelectList(db.ItemTypes, "ID", "TypeName", item.TypeID);
            return View(item);
        }

        //Excel
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ReadExcel()
        {
            try
            {
                var excelFile = Request.Files["fileExcel"];
                ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.Commercial;
                ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.NonCommercial;
                using (var package = new ExcelPackage(excelFile.InputStream))
                {
                    ExcelWorksheet ws = package.Workbook.Worksheets[0];
                    for (int rw = 2; rw <= ws.Dimension.End.Row; rw++)
                    {
                        var item = new Item
                        {
                            Name = ws.Cells[rw, 1].Value.ToString(),
                            PurcharsePrice = Int32.Parse(ws.Cells[rw, 2].Value.ToString()),
                            SellPrice = Int32.Parse(ws.Cells[rw, 3].Value.ToString()),
                            DateImport = DateTime.Now,
                            Quantity = Int32.Parse(ws.Cells[rw, 4].Value.ToString()),
                            TypeID = 1,
                            BrandID = ws.Cells[rw, 5].Value.ToString().Equals("Nam") ? 6 : 7,
                            Picture = "default.png",
                            Active = true,
                            ShortTitle = ws.Cells[rw, 6].Value.ToString(),
                            Describe = ws.Cells[rw, 7].Value.ToString()
                        };
                        db.Items.Add(item);
                        db.SaveChanges();
                    }
                    return RedirectToAction("Index");
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
                return RedirectToAction("Index", new { msg = "3" });
            }
        }

        // GET: Items/Edit/5
        public ActionResult Edit(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", item.BrandID);
            ViewBag.TypeID = new SelectList(db.ItemTypes, "ID", "TypeName", item.TypeID);
            return View(item);
        }

        // POST: Items/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
		[ValidateAntiForgeryToken]
		[ValidateInput(false)]
		public ActionResult Edit([Bind(Include = "ID,Name,PurcharsePrice,SellPrice,DateImport,Quantity,TypeID,BrandID,Picture,ShortTitle,Describe")] Item item)
        {
            if (ModelState.IsValid)
            {
				
				ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", item.BrandID);
				db.Entry(item).State = EntityState.Modified;
				item.Active = true;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.BrandID = new SelectList(db.Brands, "ID", "Name", item.BrandID);
            ViewBag.TypeID = new SelectList(db.ItemTypes, "ID", "TypeName", item.TypeID);
            return View(item);
        }

        // GET: Items/Delete/5
        public ActionResult Delete(long? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Item item = db.Items.Find(id);
            if (item == null)
            {
                return HttpNotFound();
            }
            return View(item);
        }

        // POST: Items/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(long id)
        {
            Item item = db.Items.Find(id);
            db.Items.Remove(item);
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
		//public ActionResult ActiveEmployee(long? id)
		//{
		//	if (id == null)
		//	{
		//		return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
		//	}
		//	Item item = db.Items.Find(id);
		//	if (item==null)
		//	{
		//		return HttpNotFound();
		//	}
		//	else
		//	{
		//		return RedirectToAction("Login", "Admin");
		//	}


		//}
		//[HttpPost]
		//public ActionResult ActiveEmployee(Item item)
		//{
		//	var temp = db.Items.Find(item.ID);

		//	temp.Active = false;
		//	db.SaveChanges();

		//	return RedirectToAction("Index");


		//}
		public ActionResult UnactiveProduct(long? id)
		{
		
			var temp = db.Items.SingleOrDefault(p => p.ID == id);
			temp.Active = false;
			db.SaveChanges();

			return RedirectToAction("Index");
		}
		public ActionResult Active(long? id)
		{

			var temp = db.Items.SingleOrDefault(p => p.ID == id);
			temp.Active = true;
			db.SaveChanges();

			return RedirectToAction("Itemunactive");
		}
	}
}
