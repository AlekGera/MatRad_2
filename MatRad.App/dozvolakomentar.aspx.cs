using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MatRad.App
{
    public partial class dozvolakomentar : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MatRadClass istina = new MatRadClass();

            if (istina.Provera_Korisnika(Convert.ToString(Session["Korisnik"])) == "false")
            {
                Response.Redirect("Admin.aspx");
            }


            int broj_komentar = Convert.ToInt32(Request.QueryString["ID"]);

            MatRadClass dozvola = new MatRadClass();
            string dozvolada = "Да";
            int rezultat = dozvola.Dozvola_Komentar(broj_komentar, dozvolada);

            if (rezultat == 0)
            {
                Response.Redirect("pregled_komentara.aspx");
            }
            else
            {
                Response.Redirect("tabla.aspx");
            }

        }
    }
}