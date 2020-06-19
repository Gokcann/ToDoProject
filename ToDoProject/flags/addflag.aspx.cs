using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.flags
{
    public partial class addflag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            MyDBTableAdapters.todoflagTableAdapter flag_db = new MyDBTableAdapters.todoflagTableAdapter();
            flag_db.InsertFlag(flagAdd.Text);
            Response.Redirect("/flags/listflag.aspx");
        }
    }
}