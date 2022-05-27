<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="MatRad.App.Default" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-md-12">
            <div class="card card-plain">
              <div class="card-header">
                <h4 class="card-title"> Списак МАТУРСКИХ РАДОВА</h4>
                <p class="card-category"> Прочитајте и оствите коментар:</p>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                   <tr>
                      <td>
                        Назив рада
                      </td>
                      <td>
                        Име ученика
                      </td>
                      <td>
                        Презиме ученика
                      </td>
                      <td>
                        Рад ( PDF )
                      </td>
                     
                          <td>
                       Додај коментар 
                      </td>
                               <td>
                       Преглед коментара 
                      </td>
                       
                    </tr>
                      <%
                          MatRad.App.MatRadClass svimat = new MatRad.App.MatRadClass();
                          DataSet ds = new DataSet();






                          ds = svimat.MatRad_30();
                          Response.Write("<tbody>");
                          try
                          {
                              for (int i=0; i< ds.Tables[0].Rows.Count;i++)
                              {
                                  Response.Write("<tr>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["naziv_rada"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["ime_ucenik"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["prez_ucenik"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write("<a href=" + ds.Tables[0].Rows[i]["fajl_lokacija"] + ">");
                                  Response.Write("<img src=./Uploads/pdf.png>");
                                  Response.Write("</a>");
                                  Response.Write("</td>");
                              

                                  Response.Write("<td>");
                                  Response.Write("<a href=komentar.aspx?id=" +ds.Tables[0].Rows[i]["maturrad_id"] +">");

                                  Response.Write("Додај коментар");

                                  Response.Write("</a>");

                                  Response.Write("</td>");

                                  Response.Write("<td>");
                                  Response.Write("<a href=komentar_ID.aspx?id=" +ds.Tables[0].Rows[i]["maturrad_id"] +">");

                                  Response.Write("Преглед коментара");

                                  Response.Write("</a>");

                                  Response.Write("</td>");
                                  Response.Write("</tr>");






                              }


                          }
                          catch (Exception ex)
                          {
                              Response.Write(ex.Message[404]);
                          }
                          Response.Write("<tbody>");

                          %>
                    
                   

                  </table>
                </div>
              </div>
            </div>
          </div>
        
</asp:Content>
