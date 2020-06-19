using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.flags
{
    public partial class listflag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Page_Load oldugunda flag adaptorune baglanip veriler repeater icin bind ediliyor.
            MyDBTableAdapters.todoflagTableAdapter listflag = new MyDBTableAdapters.todoflagTableAdapter();
            repeaterId.DataSource = listflag.GetFlag();
            repeaterId.DataBind();
        }
    }
}