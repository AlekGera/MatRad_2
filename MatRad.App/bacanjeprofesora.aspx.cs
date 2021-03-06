using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MatRad.App
{
    public partial class bacanjeprofesora : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MatRadClass istina = new MatRadClass();

            if (istina.Provera_Korisnika(Convert.ToString(Session["Korisnik"])) == "false")
            {
                Response.Redirect("Admin.aspx");
            }

            int broj_komentar = Convert.ToInt32(Request.QueryString["ID"]);

            MatRadClass bacanje = new MatRadClass();
            int rezultat = bacanje.Bacanje_Profesor(broj_komentar);

            if (rezultat == 0)
            {
                Response.Redirect("pregled_profesora.aspx");
            }
            else
            {
                Response.Redirect("greska.aspx");
            }
        }
    }
}