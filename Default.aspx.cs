using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebForm_CRUD
{
    public partial class _Default : Page
    {
        private SqlConnection _connection;
        public _Default()
        {
            _connection = new SqlConnection("Data Source=DESKTOP-P0SUIIB\\SQLEXPRESS;Initial Catalog=StudentWebFromDb;User ID=milan;Password=milan@123");
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) LoadRecord();
        }

        protected void AddRecord(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(StudentID.Text)|| string.IsNullOrEmpty(StudentName.Text) || string.IsNullOrEmpty(Address.Text) || string.IsNullOrEmpty(Age.Text) || string.IsNullOrEmpty(Contact.Text))
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Please fill all fields');", true);
                return;
            }
            _connection.Open();
            SqlCommand cmd = new SqlCommand($"Insert into StudentInfo_Tab values('{int.Parse(StudentID.Text)}','{StudentName.Text}','{Address.SelectedValue}','{double.Parse(Age.Text)}','{Contact.Text}')", _connection);
            cmd.ExecuteNonQuery();
            _connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Inserted');", true);
            LoadRecord();
        }

        void LoadRecord()
        {
            SqlCommand cmd = new SqlCommand("select * from StudentInfo_Tab", _connection);
            SqlDataAdapter d = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            d.Fill(dt);
            ShowRecords.DataSource = dt;
            ShowRecords.DataBind();
        }

        protected void UpdateRecord(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(StudentID.Text)) return;
            _connection.Open();
            SqlCommand cmd = new SqlCommand($"update StudentInfo_Tab set StudentName='{StudentName.Text}',Address='{Address.Text}',Age='{double.Parse(Age.Text)}',Contact='{Contact.Text}' where StudentID='{int.Parse(StudentID.Text)}'", _connection);
            cmd.ExecuteNonQuery();
            _connection.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully Updated');", true);
            LoadRecord();
        }
    }
}