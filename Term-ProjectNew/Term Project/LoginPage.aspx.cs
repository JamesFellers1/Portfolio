using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Utilities;

namespace Term_Project
{
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginControl ctrl = (LoginControl)LoadControl("LoginControl.ascx");

            Panel1.Controls.Add(ctrl);
        }

        //protected void btnLogin_Click(object sender, EventArgs e)
        //{
        //    //encrypt pw
        //    String encryptedPW = Encryptor.Encrypt(txtPassword.Text);
        //    String decryptedPW = Encryptor.Decrypt(encryptedPW);

        //    //Add Cookie
        //    HttpCookie userInfo = new HttpCookie("userInfo");
        //    userInfo["UserName"] = txtUsername.Text;
        //    userInfo["Password"] = encryptedPW;
        //    userInfo.Expires = DateTime.Now.AddHours(1);
        //    Response.Cookies.Add(userInfo);

        //    SqlCommand myCommand = new SqlCommand();
        //    myCommand.CommandType = CommandType.StoredProcedure;
        //    myCommand.CommandText = "TP_Login";

        //    myCommand.Parameters.AddWithValue("@username", txtUsername.Text);
        //    myCommand.Parameters.AddWithValue("@password", encryptedPW);

        //    DBConnect checkLogin = new DBConnect();
        //    DataSet loginData;
        //    loginData = checkLogin.GetDataSet(myCommand);

        //    if (loginData.Tables[0].Rows.Count == 0 || loginData == null)
        //    {
        //        lblError.Text = "Invalid Login, Please try again.";
        //    }
        //    else
        //    {
        //        string str = loginData.Tables[0].Rows[0]["UserId"].ToString();
        //        Session["UserID"] = str;
        //        Session["UserType"] = loginData.Tables[0].Rows[0]["UserType"].ToString();
        //        Response.Redirect("SearchHomesPage.aspx");
        //    }
        //}

        protected void btnDeleteCookie_Click(object sender, EventArgs e)
        {
            if (Request.Cookies["userInfo"] != null)
            {
                Response.Cookies["userInfo"].Expires = DateTime.Now.AddDays(-1);
                lblError.Text = "Cookie Deleted!";
            }
            else
            {
                lblError.Text = "No cookie found!";
            }
        }
    }
}