using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EMS201724112143
{
    public partial class adminE : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["value"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}