using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.montly
{
    public partial class listmontly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDBTableAdapters.todomonthlyTableAdapter monthlyAdapter = new MyDBTableAdapters.todomonthlyTableAdapter();
            repeaterId.DataSource = monthlyAdapter.GetMonthly();
            repeaterId.DataBind();
        }

        public string getFlagText(int id)
        {
            MyDBTableAdapters.todoflagTableAdapter flagAdapter = new MyDBTableAdapters.todoflagTableAdapter();
            string result = "";

            try
            {
                result = flagAdapter.GetSingleFlag(id)[0].flag_text;
            }
            catch
            {
                result = "No Flag";
            }

            return result;

        }
    }
}