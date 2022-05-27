using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace MatRad.App
{
    public partial class komentar : System.Web.UI.Page
    {
        DataSet newds = new DataSet();
        int broj_komentar;
        protected void Page_Load(object sender, EventArgs e)
        {
            Listaocena();



            MatRadClass pregled = new MatRadClass();
            broj_komentar = Convert.ToInt32(Request.QueryString["ID"]);
            newds = pregled.Pregled_MatRad(broj_komentar);
            Session["Ime_Ucenika"] = newds.Tables[0].Rows[0]["ime_ucenik"];
            Session["Prez_Ucenika"] = newds.Tables[0].Rows[0]["prez_ucenik"];
            Session["Raz_Ucenika"] = newds.Tables[0].Rows[0]["naziv_razreda"];
            Session["S.God_Ucenik"] = newds.Tables[0].Rows[0]["skolska_godina"];
            Session["Naziv_Rada"] = newds.Tables[0].Rows[0]["naziv_rada"];
            Session["Ime_Profesora"] = newds.Tables[0].Rows[0]["Ime_profesora"];
            Session["Prez_Profesora"] = newds.Tables[0].Rows[0]["Prezime_profesora"];

            txtnaziv_rad.Text = Convert.ToString(Session["Naziv_Rada"]);
            txtime_profeosra.Text = Convert.ToString(Session["Ime_profesora"]);
            txtprezime_profesora.Text = Convert.ToString(Session["Prez_Profesora"]);


            MatRadClass zbirocena = new MatRadClass();
            DataSet zbir = new DataSet();
            zbir = zbirocena.ZbirOcena(broj_komentar);
            Session["ZbirOcena"] = zbir.Tables[0].Rows[0]["zbir"];

            MatRadClass ukupnoocena = new MatRadClass();
            DataSet ukupno = new DataSet();

            ukupno = ukupnoocena.UkupnoOcena(broj_komentar);
            Session["UkupnoOcena"] = ukupno.Tables[0].Rows[0]["ocena"];

            if (Convert.ToInt32(Session["UkupnoOcena"]) != 0)
            {
                Session["Prosek"] = Convert.ToInt32(Session["ZbirOcena"]) / Convert.ToInt32(Session["UkupnoOcena"]);
            }
            else
            {
                Session["Prosek"] = "Нема оцена";
            }
        }


        public void Listaocena()
        {
            if (!Page.IsPostBack)
            {





                DDOcena.Items.Add("1");
                DDOcena.Items.Add("2");
                DDOcena.Items.Add("3");
                DDOcena.Items.Add("4");
                DDOcena.Items.Add("5");
            }
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {

            if(txtime_korinik.Text=="")
            {
                txtpime_korisnik.Text = "Молим вас упишите Ваше корисничко име !";
            }

            MatRadClass upis_komentara = new MatRadClass();
            int rezultat = upis_komentara.Unos_Komentar(broj_komentar, txtkomentar.Text, Convert.ToInt32(DDOcena.SelectedItem.Value), txtime_korinik.Text);
            if (rezultat == 0)
            {
                Response.Redirect("default.aspx");
            }
            else
            {
              
            }
        }
    }

   

   

}