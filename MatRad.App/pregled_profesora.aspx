<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="pregled_profesora.aspx.cs" Inherits="MatRad.App.pregled_profesora" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="col-md-12">
            <div class="card card-plain">
              <div class="card-header">
                <h4 class="card-title"> Списак Професора</h4>
                <p class="card-category"></p>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Име и презиме 
                      </th>
                      <th>
                        Предаје 
                      </th>
                     
                              <th>
                      Бацање 
                      </th>
                       
                    </thead>
                      <%
                          MatRad.App.MatRadClass svimat = new MatRad.App.MatRadClass();
                          DataSet ds = new DataSet();

                          ds = svimat.Profesor_Svi();
                          Response.Write("<tbody>");
                          try
                          {
                              for (int i=0; i< ds.Tables[0].Rows.Count;i++)
                              {
                                  Response.Write("<tr>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["Naziv"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write( ds.Tables[0].Rows[i]["naziv_predmeta"] );
                                  Response.Write("</td>");
                               
                                  Response.Write("<td>");
                                  Response.Write("<a href=bacanjeprofesora.aspx?id=" +ds.Tables[0].Rows[i]["profesor_id"] +">");

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
