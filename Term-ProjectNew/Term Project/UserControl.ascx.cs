using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Utilities;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;

namespace Term_Project
{
    public partial class UserControl : System.Web.UI.UserControl
    {
        String HouseId;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        [Category("Misc")]

        public String houseId
        {

            get { return HouseId; }

            set { HouseId = value; }

        }

        [Category("Misc")]

        public String HomeImage
        {

            get { return imgHome.ImageUrl; }

            set { imgHome.ImageUrl = value; }

        }

        public override void DataBind()

        {
            
            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "TP_SelectHome";

            myCommand.Parameters.AddWithValue("@homeID", HouseId);

            DBConnect objDB = new DBConnect();
            DataSet objDS;
            objDS = objDB.GetDataSet(myCommand);

            lblAddress.Text = (String)objDB.GetField("HomeStreet", 0);
            lblCity.Text = (String)objDB.GetField("HomeCity", 0);
            lblState.Text = (String)objDB.GetField("HomeState", 0);
            int zip = (int)objDB.GetField("HomeZip", 0);
            lblZip.Text = zip.ToString();

            Decimal price = (Decimal)objDB.GetField("AskingPrice", 0);

            lblPrice.Text = price.ToString("C2");

            //imgProduct.ImageUrl = "/images/" + HouseId + ".jpg";

        }
    }
}