using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Term_Project
{
    public class HomeShowing
    {
        public Home SelectedHome { get; set; }
        public DateTime scheduledDate { get; set; }
        public string timeSlot { get; set; }
        public string feedback { get; set; }
        public int realEstateFK { get; set; }

    }
}