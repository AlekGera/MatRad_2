using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MatRad.App
{
    public partial class maturski : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            MatRadClass istina = new MatRadClass();

            if (istina.Provera_Korisnika(Convert.ToString(Session["Korisnik"])) == "false")
            {
                Response.Redirect("Admin.aspx");
            }
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            MatRadClass unosmatrad = new MatRadClass();

            if (FileUpload1.HasFile)
            {
                string fileextension = System.IO.Path.GetExtension(FileUpload1.FileName);
                if (fileextension.ToLower() != ".pdf")
                {
                    lblmessage.Text = "Molim Vas Fajl nije PDF !";
                }
                else
                {
                    int filesize = FileUpload1.PostedFile.ContentLength;
                    if (filesize > 5242880)
                    {
                        lblmessage.Text = "Maksimalna velicina je 5mg !";
                    }
                    else
                    {
                        FileUpload1.SaveAs(Server.MapPath("./Uploads/" + FileUpload1.FileName));
                        string adresa = "./Uploads/" + FileUpload1.FileName;

                       int rezultat= unosmatrad.Unos_MatRad(txtmatrad.Text, Convert.ToInt32(dducenik.SelectedItem.Value), Convert.ToInt32(ddprofesor.SelectedItem.Value), adresa);

                        if (rezultat == 0)
                        {
                            lblmessage.Text = "Fajl je prebacen !";
                        }
                        else
                        {
                            lblmessage.Text = "Fajl nije prebacen !";
                        }



                       
                    }
                }
            }
            else
            {
                lblmessage.Text = "Molim Vas Fajl izaberite !";
            }

        }

        
    }
}