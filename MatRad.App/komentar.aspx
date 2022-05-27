<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="komentar.aspx.cs" Inherits="MatRad.App.komentar" %>
<%@ Import Namespace="System.Data" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="content">
        <div class="row">
          <div class="col-md-4">
            <div class="card card-user">
              <div class="image">
                <img src="../assets/img/damir-bosnjak.jpg" alt="...">
              </div>
              <div class="card-body">
                <div class="author">
                  <a href="#">
                    <img class="avatar border-gray" src="../assets/img/default-avatar.png" alt="...">
                    <h5 class="title"><% Response.Write(Session["Ime_Ucenika"]+" "+Session["Prez_Ucenika"]); %></h5>
                  </a>
                  <p class="description">
                   Разред : <% Response.Write(Session["Raz_Ucenika"]); %>
                  </p>
                </div>
                <p class="description text-center">
                  Школска година : <% Response.Write(Session["S.God_Ucenik"]); %>
                </p>
              </div>
              <div class="card-footer">
                <hr>
                <div class="button-container">
                  <div class="row">
                    <div class="col-lg-3 col-md-6 col-6 ml-auto">
                      <h5>Просек оцена:<br><small><% 
                                                    Response.Write(Session["Prosek"]);
                                                    

                                                    %></small></h5>
                    </div>
                   
                   
                  </div>
                </div>
              </div>
            </div>
          
          </div>
          <div class="col-md-8">
            <div class="card card-user">
              <div class="card-header">
                <h5 class="card-title">Оцена за рад :</h5>
              </div>
              <div class="card-body">
                <form>
                  <div class="row">
                    <div class="col-md-5 pr-1">
                      <div class="form-group">
                        <label>Назив рада :</label>
                        <asp:TextBox runat="server" class="form-control" disabled="" ID="txtnaziv_rad"></asp:TextBox> 
                      </div>
          
                    </div>
                    <div class="col-md-3 px-1">
                      <div class="form-group">
                        <label>Име професора :</label>
                         <asp:TextBox runat="server" class="form-control" disabled="" ID="txtime_profeosra"></asp:TextBox> 
                      </div>
                    </div>
                    <div class="col-md-4 pl-1">
                      <div class="form-group">
                        <label for="exampleInputEmail1">Презиме професора :</label>
                         <asp:TextBox runat="server" class="form-control" disabled="" ID="txtprezime_profesora"></asp:TextBox> 
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Коментар :</label>
                        
                         <asp:TextBox runat="server" id="txtkomentar" MaxLength="144" TextMode="MultiLine" class="form-control" width="980px" ></asp:TextBox>
                      </div>
                    </div>
                  
                  </div>
                  <div class="row">
                    <div class="col-md-4 pr-1">
                      <div class="form-group">
                        <label>Оцена :</label>
                        <asp:DropDownList runat="server" class="form-control" Id="DDOcena"></asp:DropDownList>
                      </div>
                    </div>
                  </div>
                  
                    
                    
               
                  <div class="row">
                    <div class="col-md-12">
                      <div class="form-group">
                        <label>Ваше име :</label>
                    <asp:TextBox runat="server" class="form-control"  ID="txtime_korinik"></asp:TextBox> 
                          <asp:TextBox ID="txtpime_korisnik" runat="server" BackColor="White" BorderStyle="None" Enabled="False" ForeColor="Black" Width="464px"></asp:TextBox>
                      </div>
                    </div>
                  </div>
                  <div class="row">
                    <div class="update ml-auto mr-auto">

             <asp:Button runat="server" Text="Komentar" class="btn btn-primary btn-round" OnClick="Unnamed1_Click" />
                  
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>

</asp:Content>
