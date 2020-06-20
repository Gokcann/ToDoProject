using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.daily
{
    public partial class deletedaily : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Gonderdigimiz query stringten id'yi aliyoruz.
            int id = Convert.ToInt32(Request.QueryString["id"]);
            //Veritabanina baglanip DeleteFlag metodunu kullanacagiz.
            MyDBTableAdapters.tododailyTableAdapter adapterDaily = new MyDBTableAdapters.tododailyTableAdapter();
            adapterDaily.DeleteDaily(id);
            //yonlendir -> flag tablosunu listelemeye
            Response.Redirect("/daily/listdaily.aspx");
        }
    }
}