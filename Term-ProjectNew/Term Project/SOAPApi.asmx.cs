using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Utilities;
using System.Data;
using System.Data.SqlClient;

namespace Term_Project
{
    /// <summary>
    /// Summary description for SOAPApi
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class SOAPApi : System.Web.Services.WebService
    {

        [WebMethod]
        public string HelloWorld()
        {
            return "Hello World";
        }
        [WebMethod]
        public string GetUser(int id)
        {
            DBConnect objDB = new DBConnect();
            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "TP_GetUser";

            myCommand.Parameters.AddWithValue("@userId", id);
            DataSet userDS;
            userDS = objDB.GetDataSet(myCommand);
            string name = userDS.Tables[0].Rows[0]["Name"].ToString();
            string email = userDS.Tables[0].Rows[0]["Email"].ToString();
            string phone = userDS.Tables[0].Rows[0]["PhoneNum"].ToString();

            string result = "The owner of this house is " + name + " || Email: " + email + " || Phone Number: " + phone;
            return result;
        }
        
    }
}
