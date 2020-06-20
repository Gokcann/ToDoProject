using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.weekly
{
    public partial class addweekly : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //page load oldugunda flag verilerini comboxa almak icin gerekli islemler.
                MyDBTableAdapters.todoflagTableAdapter flag_db = new MyDBTableAdapters.todoflagTableAdapter();
                flagComboBox.Items.Clear();//sayfa her aktif oldugunda comboxa veriler tekrar eklenmesin diye
                flagComboBox.Items.Add(new ListItem("Please Select Flag", ""));
                flagComboBox.AppendDataBoundItems = true;
                flagComboBox.DataSource = flag_db.GetFlag();
                flagComboBox.DataTextField = "flag_text";
                flagComboBox.DataValueField = "flag_id";
                flagComboBox.DataBind();
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            MyDBTableAdapters.todoweeklyTableAdapter weekly_db = new MyDBTableAdapters.todoweeklyTableAdapter();
            int flagId = Convert.ToInt32(flagComboBox.SelectedItem.Value);
            weekly_db.InsertWeekly(weeklyAdd.Text, flagId);
            Response.Redirect("/weekly/listweekly.aspx");
        }
    }
}