using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Script.Serialization;
using Utilities;

namespace Term_Project
{
    public partial class CreateAccountPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

            }
        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            String encryptedPW = Encryptor.Encrypt(txtPassword.Text);

            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "TP_CreateAccount"; //name of stored procedure

            myCommand.Parameters.AddWithValue("@username", txtUsername.Text); //to add an input parameter
            myCommand.Parameters.AddWithValue("@password", encryptedPW);
            myCommand.Parameters.AddWithValue("@email", txtEmail.Text);
            myCommand.Parameters.AddWithValue("@name", txtName.Text);
            myCommand.Parameters.AddWithValue("@address", txtAddress.Text);
            myCommand.Parameters.AddWithValue("@phone", txtPhone.Text);
            myCommand.Parameters.AddWithValue("@type", radType.SelectedValue);
            myCommand.Parameters.AddWithValue("@sq1", ddlSQ1.SelectedValue);
            myCommand.Parameters.AddWithValue("@sq2", ddlSQ2.SelectedValue);
            myCommand.Parameters.AddWithValue("@sq3", ddlSQ3.SelectedValue);
            myCommand.Parameters.AddWithValue("@sq1Ans", txtSQ1.Text);
            myCommand.Parameters.AddWithValue("@sq2Ans", txtSQ2.Text);
            myCommand.Parameters.AddWithValue("@sq3Ans", txtSQ3.Text);

            DBConnect myDB = new DBConnect();
            DataSet myDataSet;
            myDataSet = myDB.GetDataSet(myCommand);

            //Create session objects
            Session["Email"] = txtEmail.Text;
            Session["Name"] = txtName.Text;
            Session["UserType"] = radType.SelectedValue;

            //Store a cookie 
            HttpCookie userInfo = new HttpCookie("userInfo");
            userInfo["UserName"] = txtUsername.Text;
            userInfo["Password"] = encryptedPW;
            userInfo.Expires = DateTime.Now.AddHours(1);
            Response.Cookies.Add(userInfo);


            Response.Redirect("VerificationPage.aspx");
        }
    }
}