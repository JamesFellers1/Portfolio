using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Collections;
using Utilities;
using System.Collections.ObjectModel;

namespace HomeAPI.Controllers
{
    [Produces("application/json")]
    [Route("api/Home")]
    public class HomeController : Controller
    {
        [HttpGet]
        [HttpGet("GetHomes")]
        public Collection<Home> Get()
        {
            SqlCommand myCommand = new SqlCommand();
            myCommand.CommandType = CommandType.StoredProcedure;
            myCommand.CommandText = "TP_SelectAllHomes"; //name of stored procedure

            DBConnect homeDB = new DBConnect();
            DataSet homeDS;
            homeDS = homeDB.GetDataSet(myCommand);
            Collection<Home> homes = new Collection<Home>();

            Home home;

            foreach(DataRow record in homeDS.Tables[0].Rows)
            {
                home = new Home();
                home.HouseID = int.Parse(record["HouseID"].ToString());
                home.HomeStreet = record["HomeStreet"].ToString();
                home.HomeCity = record["HomeCity"].ToString();
                home.HomeState = record["HomeState"].ToString();
                home.HomeZip = int.Parse(record["HomeZip"].ToString());
                home.PropertyType = record["PropertyType"].ToString();
                home.HomeSize = int.Parse(record["HomeSize"].ToString());
                home.Bedrooms = int.Parse(record["Bedrooms"].ToString());
                home.Bathrooms = int.Parse(record["Bathrooms"].ToString());
                home.Amenities = record["Amenities"].ToString();
                home.Heating = record["Heating"].ToString();
                home.Cooling = record["Cooling"].ToString();
                home.Utilities = record["Utilities"].ToString();
                home.HomeDescription = record["HomeDescription"].ToString();
                home.AskingPrice = decimal.Parse(record["AskingPrice"].ToString());
                home.Images = record["Images"].ToString();
                home.ImgCaption = record["ImgCaption"].ToString();
                home.TotalSQFootage = int.Parse(record["TotalSQFootage"].ToString());
                home.KitchenDimensions = record["KitchenDimensions"].ToString();
                home.LivingRoomDimension = record["LivingRoomDimension"].ToString();
                home.MainBedDimension = record["MainBedDimension"].ToString();
                home.YearBuilt = int.Parse(record["YearBuilt"].ToString());
                home.Garage= record["Garage"].ToString();
                home.DateListed = DateTime.Parse(record["DateListed"].ToString());

                homes.Add(home);
            }

            return homes;
        }

        [HttpPost]
        public Boolean Post([FromBody] Home theHome)
        {

            DBConnect objDB = new DBConnect();

            string strSQL = "INSERT INTO TP_Homes (HomeStreet, HomeCity, HomeState, HomeZip, PropertyType, HomeSize, Bedrooms,Bathrooms, Amenities, " +
                "Heating, Cooling, Utilities, HomeDescription, AskingPrice, Images,ImgCaption,TotalSQFootage,KitchenDimensions,LivingRoomDimension," +
                "MainBedDimension,YearBuilt,Garage,DateListed) " +

                            "VALUES ('" + theHome.HomeStreet + "', '" + theHome.HomeCity + "', '" + theHome.HomeState + "', '" + theHome.HomeZip + 
                            "', '" + theHome.PropertyType + "', '" + theHome.HomeSize + "', '" + theHome.Bedrooms + "', '" + theHome.Bathrooms + "', '" + theHome.Amenities
                            + "', '" + theHome.Heating + "', '" + theHome.Cooling + "', '" + theHome.Utilities + "', '" + theHome.HomeDescription + "', '" + theHome.AskingPrice
                            + "', '" + theHome.Images + "', '" + theHome.ImgCaption + "', '" + theHome.TotalSQFootage + "', '" + theHome.KitchenDimensions
                            + "', '" + theHome.LivingRoomDimension + "', '" + theHome.MainBedDimension + "', '" + theHome.YearBuilt + "', '" + theHome.Garage
                            + "', '" + theHome.DateListed + "')";

            // Execute the INSERT statement in the database
            // The DoUpdate() method returns the number of records effected by the INSERT statement.
            // Otherwise, it returns -1 when there was an error exception.

            int result = objDB.DoUpdate(strSQL);
            if (result > 0)
            {
                return true;
            }

            return false;

        }
        [HttpPut]
        public Boolean Put(int id,[FromBody]Home theHome)
        {
            DBConnect objDB = new DBConnect();

            string strSQL = "";
            int result = objDB.DoUpdate(strSQL);
            if (result > 0)
            {
                return true;
            }

            return true;
        }
    }
}
