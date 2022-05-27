<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="maturski.aspx.cs" Inherits="MatRad.App.maturski" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <nav class="navbar navbar-expand-lg navbar-absolute fixed-top navbar-transparent">
        <div class="container-fluid">
          <div class="navbar-wrapper">
            <div class="navbar-toggle">
              <button type="button" class="navbar-toggler">
                <span class="navbar-toggler-bar bar1"></span>
                <span class="navbar-toggler-bar bar2"></span>
                <span class="navbar-toggler-bar bar3"></span>
              </button>
            </div>
            <a class="navbar-brand" href="javascript:;">Матурски В1</a>
          </div>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
            <span class="navbar-toggler-bar navbar-kebab"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navigation">
            <form>
              <div class="input-group no-border">
                <input type="text" value="" class="form-control" placeholder="Претрага...">
                <div class="input-group-append">
                  <div class="input-group-text">
                    <i class="nc-icon nc-zoom-split"></i>
                  </div>
                </div>
              </div>
            </form>
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link btn-magnify" href="javascript:;">
                  <i class="nc-icon nc-layout-11"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Статистика</span>
                  </p>
                </a>
              </li>
              <li class="nav-item btn-rotate dropdown">
                <a class="nav-link dropdown-toggle" href="" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="nc-icon nc-bell-55"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Преглед</span>
                  </p>
                </a>
                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
                  <a class="dropdown-item" href="#">Броја радова</a>
                  <a class="dropdown-item" href="#">Броја корисника</a>
                  <a class="dropdown-item" href="#">Броја предмета</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link btn-rotate" href="javascript:;">
                  <i class="nc-icon nc-settings-gear-65"></i>
                  <p>
                    <span class="d-lg-none d-md-block">Налог</span>
                  </p>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </nav>
     <div class="content">
        <div class="row">
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                        <i class="nc-icon nc-paper text-warning"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Број уписаних матурских радова :</p>
                      <p class="card-title"> <% Response.Write(Session["Broj_MatRad"]); %><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
             
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-money-coins text-success"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Број пријављених ученика :</p>
                      <p class="card-title"><% Response.Write(Session["Broj_Ucenika"]); %><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
              
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-vector text-danger"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Број пријављених професора :</p>
                      <p class="card-title"><% Response.Write(Session["Broj_Profesora"]); %><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
            
              </div>
            </div>
          </div>
          <div class="col-lg-3 col-md-6 col-sm-6">
            <div class="card card-stats">
              <div class="card-body ">
                <div class="row">
                  <div class="col-5 col-md-4">
                    <div class="icon-big text-center icon-warning">
                      <i class="nc-icon nc-favourite-28 text-primary"></i>
                    </div>
                  </div>
                  <div class="col-7 col-md-8">
                    <div class="numbers">
                      <p class="card-category">Број коментара :</p>
                      <p class="card-title"><% Response.Write(Session["Broj_Komentara"]); %><p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card-footer ">
                <hr>
              
              </div>
            </div>
          </div>
        </div>
            <div class="row">
          <div class="col-md-12">
            <div class="card ">
              <div class="card-header ">
                <h5 class="card-title">6.Унос новог матурског рада :</h5>
                <p class="card-category">подаци за  матурски рад :</p>
              </div>
              <div class="card-body ">
              <table width="1300px">
                    </tr>
                      <tr>
                      <td>Назив матурског рада :</td>
                      <td>
                          <asp:TextBox ID="txtmatrad" runat="server" class="form-control"></asp:TextBox><br /><br />
                         </td>
                          
                  </tr>
                  <tr>
                      <td width="300px">Име и презиме ученика :</td>
                      <td style="text-align:left">
                          <asp:DropDownList ID="dducenik" runat="server" DataSourceID="SqlDataSource1" DataTextField="Naziv" DataValueField="ucenik_id">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="Ucenik_svi" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                          <br /><br />
                      </td>
                      
                  </tr>
                    <tr>
                      <td>Професор :</td>
                      <td style="text-align:left">
                          <asp:DropDownList ID="ddprofesor" runat="server" DataSourceID="MatRad10" DataTextField="Naziv" DataValueField="profesor_id">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="MatRad10" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="Profesor_svi" SelectCommandType="StoredProcedure"></asp:SqlDataSource><br /><br />
                        </td></td>
                  </tr>
                     <tr>
                      <td>PDF :</td>
                      <td>
                          <asp:FileUpload ID="FileUpload1" runat="server" />
                          <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click" Text="Upload File" />
                          <br />
                          <br />
                          <asp:Label ID="lblmessage" runat="server"></asp:Label>
                         </td>
                  </tr>
                      <tr>
                      <td>Предмет :</td>
                      <td>
                          &nbsp;</td>
                
                      <tr>
                      <td></td>
                      <td>
                          &nbsp;</td>
                  </tr>
              </table>
              </div>
              <div class="card-footer ">
                  
                <hr>
                <div class="stats">
                  <i class="fa fa-history"></i> 
                </div>
              </div>
            </div>
          </div>
               </a>
</asp:Content>
