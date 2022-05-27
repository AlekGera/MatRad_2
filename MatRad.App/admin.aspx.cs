using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MatRad.App
{
    public partial class admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MatRadClass m = new MatRadClass();
            int rezultat;
            rezultat = m.Provera_Korisnika(email.Text, loz.Text);

            if (rezultat == 0)
            {
                Session["korisnik"] = email.Text;
                Response.Redirect("kontrolpanel.aspx");
            }
            else
            {
                Response.Redirect("admin.aspx");
            }
        }
    }
}