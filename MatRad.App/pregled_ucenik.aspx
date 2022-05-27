<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="pregled_ucenik.aspx.cs" Inherits="MatRad.App.pregled_ucenik" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="col-md-12">
            <div class="card card-plain">
              <div class="card-header">
                <h4 class="card-title"> Списак Ученика</h4>
                <p class="card-category"> </p>
              </div>
              <div class="card-body">
                <div class="table-responsive">
                  <table class="table">
                    <thead class=" text-primary">
                      <th>
                        Име :
                      </th>
                      <th>
                        Презиме :
                      </th>
                      <th>
                        Разред :
                      </th>
                      <th>
                        Школска година :
                      </th>
                     
                              <th>
                      Бацање 
                      </th>
                       
                    </thead>
                      <%
                          MatRad.App.MatRadClass svimat = new MatRad.App.MatRadClass();
                          DataSet ds = new DataSet();

                          ds = svimat.Ucenik_Pregled();
                          Response.Write("<tbody>");
                          try
                          {
                              for (int i=0; i< ds.Tables[0].Rows.Count;i++)
                              {
                                  Response.Write("<tr>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["ime_ucenik"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                    Response.Write(ds.Tables[0].Rows[i]["prez_ucenik"]);
                                 
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["naziv_razreda"]);
                                  Response.Write("</td>");
                                  Response.Write("<td>");
                                  Response.Write(ds.Tables[0].Rows[i]["skolska_godina"]);
                                  Response.Write("</td>");


                          
                                  Response.Write("<td>");
                                  Response.Write("<a href=bacanjeucenika.aspx?id=" +ds.Tables[0].Rows[i]["ucenik_id"] +">");

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
