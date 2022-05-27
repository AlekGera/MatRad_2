using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MatRad.App
{
    public partial class kontrolpanel : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MatRadClass istina = new MatRadClass();
            if (istina.Provera_Korisnika(Convert.ToString(Session["Korisnik"])) == "true")
            {
                ListaRazreda();
                ListaGradova();

                MatRadClass ukupanBrojUcenika = new MatRadClass();
                Session["Broj_Ucenika"] = ukupanBrojUcenika.Ukupno_Ucenik();

                MatRadClass ukupanBrojMatRad = new MatRadClass();
                Session["Broj_MatRad"] = ukupanBrojMatRad.Ukupno_MatRad();


                MatRadClass ukupanBrojProf = new MatRadClass();
                Session["Broj_Profesora"] = ukupanBrojProf.Ukupno_Prof();


                MatRadClass ukupanBrojKom = new MatRadClass();
                Session["Broj_Komentara"] = ukupanBrojKom.Ukupno_Komentar();
            }
            else
            {
                Response.Redirect("Admin.aspx");
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string rec;
            rec = TextBox1.Text;
            if (rec.Length != 5)
            {
                txtmesgodina.Text = "Број карактера неодговара школској години";
            }
            else
            {
                MatRadClass unosgodine = new MatRadClass();
                int rezultat;
                rezultat = unosgodine.Unos_S_Godine(TextBox1.Text);
                if (rezultat == 0)
                {
                    Response.Redirect("kontrolpanel.aspx");
                }
                else
                {
                    txtmesgodina.Text = "Поновите упис";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == "")
            {
                txtpremessage.Text = "Молимо Вас упишите назив предмета";
            }
            else
            {
                MatRadClass unospredmeta = new MatRadClass();
                int rezultat;
                rezultat = unospredmeta.Unos_Predmet(TextBox2.Text);
                if (rezultat == 0)
                {
                    Response.Redirect("kontrolpanel.aspx");
                }
                else
                {
                    txtpremessage.Text = "Поновите упис";
                }
            }
        }

        public void ListaRazreda()
        {
            if (!Page.IsPostBack)
            {

                DDRazred.Items.Add("IV/1");
                DDRazred.Items.Add("IV/2");
                DDRazred.Items.Add("IV/3");
                DDRazred.Items.Add("IV/4");
                DDRazred.Items.Add("IV/5");
                DDRazred.Items.Add("IV/6");
                DDRazred.Items.Add("IV/7");
                DDRazred.Items.Add("IV/8");
                DDRazred.Items.Add("IV/9");
                DDRazred.Items.Add("IV/10");
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            MatRadClass unosrazreda = new MatRadClass();
            int rezultat = unosrazreda.Unos_Razred(DDRazred.SelectedItem.Value, Convert.ToInt32(DD_sgodina.SelectedItem.Value), Convert.ToInt32(DDProf.SelectedItem.Value));

            if (rezultat == 0)
            {
                Response.Redirect("kontrolpanel.aspx");
            }
            else
            {
                txtrazmessage.Text = "Поновите упис";
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (txtime.Text == "" || txtprez.Text == "")
            {
                txtmime.Text = "Упишите ИМЕ !!!";
                txtmprez.Text = "Упишите ПРЕЗИМЕ !!!";
            }
            else
            {
                MatRadClass unosprofesora = new MatRadClass();
                int rezultat = unosprofesora.Unos_Profesora(txtime.Text, txtprez.Text, dd1.SelectedItem.Value);
                if (rezultat == 0)
                {
                    Response.Redirect("kontrolpanel.aspx");
                }
                else
                {
                    txtpremessage.Text = "Поновите упис";
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (txtimeucenika.Text == "" && txtprezucenika.Text == "")
            {
                txtmimeucenika.Text = "Упишите ИМЕ !!!";
                txtmprezimeucenika.Text = "Молимо Вас упишите тражене податке";
            }
            else
            {
                MatRadClass unosucenika = new MatRadClass();
                int rezultat = unosucenika.Unos_Ucenik(txtimeucenika.Text, txtprezucenika.Text, Convert.ToInt32(DDRazred_1.SelectedItem.Value), txtulicaucenik.Text, DDGrad.SelectedItem.Value);

                if (rezultat == 0)
                {
                    Response.Redirect("kontrolpanel.aspx");
                }
                else
                {
                    txtrazmessage.Text = "Поновите упис";
                }
            }

        }


        public void ListaGradova()
        {
            if (!Page.IsPostBack)
            {


                DDGrad.Items.Add("Београд");

            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("ad.aspx");
        }
    }
}