using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ToDoProject.montly
{
    public partial class addmontly : System.Web.UI.Page
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
            MyDBTableAdapters.todomonthlyTableAdapter monthly_db = new MyDBTableAdapters.todomonthlyTableAdapter();
            int flagId = Convert.ToInt32(flagComboBox.SelectedItem.Value);
            monthly_db.InsertMonthly(monthlyAdd.Text, flagId);
            Response.Redirect("/monthly/listmonthly.aspx");
        }
    }
}