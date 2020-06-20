using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.montly
{
    public partial class deletemontly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Gonderdigimiz query stringten id'yi aliyoruz.
            int id = Convert.ToInt32(Request.QueryString["id"]);
            //Veritabanina baglanip DeleteFlag metodunu kullanacagiz.
            MyDBTableAdapters.todomonthlyTableAdapter adapterMonthly = new MyDBTableAdapters.todomonthlyTableAdapter();
            adapterMonthly.DeleteMonthly(id);
            //yonlendir -> flag tablosunu listelemeye
            Response.Redirect("/monthly/listmonthly.aspx");
        }
    }
}