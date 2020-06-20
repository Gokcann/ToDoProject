using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.weekly
{
    public partial class listweekly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MyDBTableAdapters.todoweeklyTableAdapter weeklyAdapter = new MyDBTableAdapters.todoweeklyTableAdapter();
            repeaterId.DataSource = weeklyAdapter.GetWeekly();
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