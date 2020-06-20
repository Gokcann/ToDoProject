using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.flags
{
    public partial class updateflag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //postback ile sayfa kontrolu.
            if(!IsPostBack)
            {
                //Butona tiklayinca gonderdigimiz query stringten id'yi aliyoruz.
                int id = Convert.ToInt32(Request.QueryString["id"].ToString());
                MyDBTableAdapters.todoflagTableAdapter adaptor = new MyDBTableAdapters.todoflagTableAdapter();
                string flagText = adaptor.GetSingleFlag(id)[0].flag_text;
                flagUpdate.Text = flagText;
            }
        }

        protected void updateButton_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Request.QueryString["id"].ToString());
            MyDBTableAdapters.todoflagTableAdapter adaptor = new MyDBTableAdapters.todoflagTableAdapter();
            adaptor.UpdateFlag(flagUpdate.Text, id);
            Response.Redirect("/flags/listflag.aspx");
        }
    }
}