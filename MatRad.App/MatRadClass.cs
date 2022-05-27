using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace MatRad.App
{
    public class MatRadClass
    {
        SqlConnection conn = new SqlConnection();
        string wqbConfig = ConfigurationManager.ConnectionStrings["MatRad"].ConnectionString;
        SqlCommand comm = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataSet ds = new DataSet();


        public int Provera_Korisnika(string email, string lozinka)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Korisnik_Email";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@email", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, email));
            comm.Parameters.Add(new SqlParameter("@loz", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, lozinka));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();

            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        public int Izmena_Korisnika(string email, string lozinka)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Korisnik_Update";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@email", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, email));
            comm.Parameters.Add(new SqlParameter("@loz", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, lozinka));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        public int Ukupno_Ucenik()
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Ucenik_Ukupno";
            comm.Parameters.Add("@brojredova", SqlDbType.Int);
            comm.Parameters["@brojredova"].Direction = ParameterDirection.Output;
            // kolekcija Parameters
            conn.Open();
            comm.ExecuteNonQuery();
            rezultat = Convert.ToInt32(comm.Parameters["@brojredova"].Value);
           
            conn.Close();
         
      
            return rezultat;
        }




        public int Ukupno_MatRad()
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.MatRad_Ukupno";
            comm.Parameters.Add("@brojredova", SqlDbType.Int);
            comm.Parameters["@brojredova"].Direction = ParameterDirection.Output;
            // kolekcija Parameters
            conn.Open();
            comm.ExecuteNonQuery();
            rezultat = Convert.ToInt32(comm.Parameters["@brojredova"].Value);

            conn.Close();


            return rezultat;
        }


        public int Ukupno_Prof()
        {
            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Profesor_Ukupno";
            comm.Parameters.Add("@brojredova", SqlDbType.Int);
            comm.Parameters["@brojredova"].Direction = ParameterDirection.Output;
            // kolekcija Parameters
            conn.Open();
            comm.ExecuteNonQuery();
            rezultat = Convert.ToInt32(comm.Parameters["@brojredova"].Value);

            conn.Close();


            return rezultat;

        }

        public int Ukupno_Komentar()
        {
            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Komentar_Ukupno";
            comm.Parameters.Add("@brojredova", SqlDbType.Int);
            comm.Parameters["@brojredova"].Direction = ParameterDirection.Output;
            // kolekcija Parameters
            conn.Open();
            comm.ExecuteNonQuery();
            rezultat = Convert.ToInt32(comm.Parameters["@brojredova"].Value);

            conn.Close();


            return rezultat;

        }


        public string Provera_Korisnika(string email)
        {
            string istina;
            if (email=="")
            {
               
                istina = "false";

            }
            else
            {
                istina = "true";
            }
            return istina;

        }

        public int Unos_S_Godine(string s_godina)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.S_Godina_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@s_godina", SqlDbType.NVarChar, 5, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, s_godina));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }



        public int Unos_Predmet(string predmet)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Predmet_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@n_predmet", SqlDbType.NVarChar, 100, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, predmet));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }



        public int Unos_Profesora(string ime, string prez, string pred1)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Pofesor_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@ime", SqlDbType.NVarChar, 100, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, ime));
            comm.Parameters.Add(new SqlParameter("@prez", SqlDbType.NVarChar, 100, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, prez));
            comm.Parameters.Add(new SqlParameter("@predmet1_id", SqlDbType.NVarChar, 100, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, pred1));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        public int Unos_Razred(string razred, int god, int prof)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Razred_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@n_razred", SqlDbType.NVarChar, 5, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, razred));
            comm.Parameters.Add(new SqlParameter("@s_godina_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, god));
            comm.Parameters.Add(new SqlParameter("@profesor_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, prof));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        public int Unos_Ucenik(string ime, string prez, int raz,string ulica,string grad)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Ucenik_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@ime", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, ime));
            comm.Parameters.Add(new SqlParameter("@prez", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, prez));
            comm.Parameters.Add(new SqlParameter("@razred_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, raz));
            comm.Parameters.Add(new SqlParameter("@Ulica", SqlDbType.NVarChar, 200, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, ulica));
            comm.Parameters.Add(new SqlParameter("@grad", SqlDbType.NVarChar, 200, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, grad));

            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }




        public int Unos_MatRad(string naziv, int ucenikid, int profesorid, string adresa)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.MatRad_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@naziv", SqlDbType.NVarChar, 300, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, naziv));
            comm.Parameters.Add(new SqlParameter("@ucenik_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, ucenikid));
            comm.Parameters.Add(new SqlParameter("@profesor_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, profesorid));
            comm.Parameters.Add(new SqlParameter("@fajl", SqlDbType.NVarChar, 300, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, adresa));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        
        public DataSet MatRad_30()
        {
            conn.ConnectionString = wqbConfig;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Svi_Mat_30";
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);
        }


        public DataSet Pregled_MatRad(int matrad)
        {
            conn.ConnectionString = wqbConfig;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Pregled_MatRad";
            comm.Parameters.Add(new SqlParameter("@maturrad", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, matrad));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);


        }


        public int Unos_Komentar(int maturrad_id, string komentar, int ocena, string imekorisnika)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Komentar_Insert";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@maturrad_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, maturrad_id));
            comm.Parameters.Add(new SqlParameter("@komentar", SqlDbType.NVarChar, 300, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, komentar));
            comm.Parameters.Add(new SqlParameter("@ocena", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, ocena));
            comm.Parameters.Add(new SqlParameter("@ime_korisnika", SqlDbType.NVarChar, 50, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, imekorisnika));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        public DataSet ZbirOcena(int matrad)
        {
            conn.ConnectionString = wqbConfig;
           
            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Zbir_Ocena";
            comm.Parameters.Add(new SqlParameter("@maturrad", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, matrad));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);

        }


        public DataSet UkupnoOcena(int matrad)
        {
            conn.ConnectionString = wqbConfig;
        
            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Ukupno_Ocena";
            comm.Parameters.Add(new SqlParameter("@maturrad", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, matrad));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);

        }




        public DataSet Pregled_Komentara()
        {
            conn.ConnectionString = wqbConfig;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Komentar_Matrad";
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);


        }



        public int Bacanje_Komentar(int komentar_id)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Komentar_Delete";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@komentar_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, komentar_id));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }


        public int Dozvola_Komentar(int komentar_id,string dozvola)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Komentar_Update";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@komentar_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, komentar_id));
            comm.Parameters.Add(new SqlParameter("@dozvola", SqlDbType.NVarChar, 2, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, dozvola));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }




        public DataSet  Komentar_ID(int maturrad_id)
        {

            conn.ConnectionString = wqbConfig;
            

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Komentar_id_Matrad";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@matur_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, maturrad_id));

            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);
        }



        public DataSet Profesor_Svi()
        {
            conn.ConnectionString = wqbConfig;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Profesor_Svi";
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);
        }


        public DataSet Ucenik_Pregled()
        {
            conn.ConnectionString = wqbConfig;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "Ucenik_Pregled";
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();
            da.SelectCommand = comm;
            da.Fill(ds);


            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }


            return (ds);
        }



        public int Bacanje_Profesor(int profesor_id)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Profesor_Delete";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@profesor_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, profesor_id));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }



        public int Bacanje_Ucenik(int ucenik_id)
        {

            conn.ConnectionString = wqbConfig;
            int rezultat;

            comm.Connection = conn;
            comm.CommandType = CommandType.StoredProcedure;
            comm.CommandText = "dbo.Ucenik_Delete";
            // kolekcija Parameters
            comm.Parameters.Add(new SqlParameter("@ucenik_id", SqlDbType.Int, 4, ParameterDirection.Input, false, 0, 0, "", DataRowVersion.Current, ucenik_id));
            comm.Parameters.Add(new SqlParameter("@RETURN_VALUE", SqlDbType.Int, 4, ParameterDirection.ReturnValue, true, 0, 0, "", DataRowVersion.Current, null));
            conn.Open();
            comm.ExecuteNonQuery();
            conn.Close();


            int Ret;
            Ret = (int)comm.Parameters["@RETURN_VALUE"].Value;
            if (Ret == 0)
            {
                rezultat = 0;
            }

            else
            {
                rezultat = 1;
            }
            return rezultat;
        }
    }
}