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
            DBConnect homeDB = new DBConnect();
            DataSet homeDS = homeDB.GetDataSet("SELECT * FROM TP_Homes");
            Collection<Home> homes = new Collection<Home>();

            Home home;

            foreach(DataRow record in homeDS.Tables[0].Rows)
            {
                /* public int HouseID { get; set; }
        public string HomeStreet { get; set; }
        public string HomeCity { get; set; }
        public string HomeState { get; set; }
        public int HomeZip { get; set; }
        public string PropertyType { get; set; }
        public int HomeSize { get; set; }
        public int Bedrooms { get; set; }
        public int Bathrooms { get; set; }
        public string Amenities { get; set; }
        public string Heating { get; set; }
        public string Cooling { get; set; }
        public string Utilities { get; set; }
        public string HomeDescription { get; set; }
        public decimal AskingPrice { get; set; }
        public string Images { get; set; }
        public string ImgCaption { get; set; }
        public int TotalSQFootage { get; set; }
        public string KitchenDimensions { get; set; }
        public string LivingRoomDimension { get; set; }
        public string MainBedDimension { get; set; }
        public int YearBuilt { get; set; }
        public string Garage { get; set; }
        public DateTime DateListed { get; set; }
*/
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
                home.AskingPrice = int.Parse(record["AskingPrice"].ToString());
                home.Images = record["Images"].ToString();
                home.ImgCaption = record["ImgCaption"].ToString();
                home.TotalSQFootage = int.Parse(record["TotalSQFootage"].ToString());
                home.KitchenDimensions = record["KitchenDimesions"].ToString();
                home.LivingRoomDimension = record["HomeCity"].ToString();
                home.MainBedDimension = record["HomeCity"].ToString();
                home.YearBuilt = int.Parse(record["YearBuilt"].ToString());
                home.Garage= record["Garage"].ToString();
                home.DateListed = DateTime.Parse(record["DateListed"].ToString());

                homes.Add(home);
            }

            return homes;

            //DBConnect roomDB = new DBConnect();
            //for (int i = 0; i < homeDS.Tables[0].Rows.Count; i++)
            //{
            //    Collection<Room> rooms = new Collection<Room>();
            //    DataSet roomDS = roomDB.GetDataSet("SELECT * FROM TP_HomeRooms WHERE HomeID = " + homeDB.GetField("HomeID", i));
            //    for (int j = 0; j < roomDS.Tables[0].Rows.Count; j++)
            //    {
            //        rooms.Add(
            //            new Room(
            //                (int)roomDB.GetField("RoomID", j),
            //                (int)roomDB.GetField("HomeID", j),
            //                (string)roomDB.GetField("RoomType", j),
            //                (decimal)roomDB.GetField("RoomLength", j),
            //                (decimal)roomDB.GetField("RoomWidth", j)
            //            )
            //        );
            //    }
            //}
        }
    }
}
