<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="pregled_komentara.aspx.cs" Inherits="MatRad.App.pregled_komentara" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

      <div class="col-md-12">
            <div class="card card-plain">
              <div class="card-header">
                <h4 class="card-title"> Списак КОМЕНТАРА</h4>
                <p class="card-category"> Прочитајте и оствите коментар:</p>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Назив рада
                      </th>
                      <th>
                        Локација
                      </th>
                      <th>
                        Коментар
                      </th>
                      <th>
                        Оцена
                      </th>
                          <th>
                       Дозвола приказа 
                      </th>
                              <th>
                      Бацање 
                      </th>
                       
                    </thead>
                      <%
                          MatRad.App.MatRadClass svimat = new MatRad.App.MatRadClass();
                          DataSet ds = new DataSet();

                          ds = svimat.Pregled_Komentara();
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
                                    Response.Write("<a href=" + ds.Tables[0].Rows[i]["fajl_lokacija"] + ">");
                                  Response.Write("<img src=./Uploads/pdf.png>");
                                  Response.Write("</a>");
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["komentar"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["Ocena"]);
                                  Response.Write("</td>");


                                  Response.Write("<td>");
                                  Response.Write("<a href=dozvolakomentar.aspx?id=" +ds.Tables[0].Rows[i]["komentar_id"] +">");

                                  Response.Write(ds.Tables[0].Rows[i]["dozvolaprikaza"]);

                                  Response.Write("</a>");
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write("<a href=bacanjekomentara.aspx?id=" +ds.Tables[0].Rows[i]["komentar_id"] +">");

                                  Response.Write("Бацање");

                                  Response.Write("</a>");
                                  Response.Write("</td>");

                                  Response.Write("</tr>");
                              }


                          }
                          catch(Exception x)
                          {

                          }
                          Response.Write("<tbody>");

                          %>
                    
                   
                        
                        
                       
                     
                     
                       
                    
                 
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>

</asp:Content>
