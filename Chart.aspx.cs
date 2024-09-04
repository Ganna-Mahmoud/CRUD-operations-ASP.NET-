using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.DataVisualization.Charting;
using System.Web.UI.WebControls;

namespace Final_Project
{
    public partial class Chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Chart1_PreRender(object sender, EventArgs e)
        {
           foreach (Series series in Chart1.Series)

                {
                    foreach (DataPoint dataPoint in series.Points)
                    {
                        int studentCount = Convert.ToInt32(dataPoint.YValues[0]);
                        string departmentName = dataPoint.AxisLabel;

                        // Set tooltips for each data point
                        
                    }
                }
                
        }
    }


}