<%@ Page Title="" Language="C#" MasterPageFile="~/admin_sablon.Master" AutoEventWireup="true" CodeBehind="kontrolpanel.aspx.cs" Inherits="MatRad.App.kontrolpanel" %>
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
                 <a href="pregled_ucenik.aspx">Преглед ученика :</a>
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
             <a href="pregled_profesora.aspx">Преглед професора :</a>
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
              <a href="pregled_komentara.aspx">Преглед кометара :</a>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card ">
              <div class="card-header ">
                <h5 class="card-title">Унеси нове податке :</h5>
           
              </div>
              <div class="card-body ">
                <table>
                    <tr>
                    <td width="500px">
                       1. ШКОЛСКА ГОДИНА :
                    </td>
                     <td width="500px">
                        2. ПРЕДМЕТ :
                    </td>
                     <td width="500px">
                        4. РАЗРЕД :
                    </td>
                    </tr>
                    <tr>
                        <td>
                        <asp:ListBox ID="lbsg" runat="server" DataSourceID="MatSG" DataTextField="skolska_godina" DataValueField="skolska_godina" Height="100px" Width="400px"></asp:ListBox>
                            <asp:SqlDataSource ID="MatSG" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="SELECT [skolska_godina] FROM [S_Godina] ORDER BY [skolska_godina]"></asp:SqlDataSource>
                            <br />
                            <br />
  Унеси нову школску годину :<br />
                            <asp:TextBox ID="TextBox1" runat="server" Width="112px"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="txtmesgodina" runat="server" BackColor="White" BorderStyle="None" Enabled="False" Width="389px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="УНОС" />
                        </td>
                        <td>
                        <asp:ListBox ID="LBPredmet" runat="server" DataSourceID="MatPre" DataTextField="naziv_predmeta" DataValueField="naziv_predmeta" Height="100px" Width="400px"></asp:ListBox>
                            <asp:SqlDataSource ID="MatPre" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="SELECT [naziv_predmeta] FROM [Predmet] ORDER BY [naziv_predmeta] DESC"></asp:SqlDataSource>
                            <br />
                            <br />
                            Унесите нов назив предмета :<br />
                            <asp:TextBox ID="TextBox2" runat="server" Width="329px"></asp:TextBox>
                            <br />
                            <asp:TextBox ID="txtpremessage" runat="server" BackColor="White" BorderColor="White" BorderStyle="None" Enabled="False" Width="377px"></asp:TextBox>
                            <br />
                            <br />
                            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="УНОС" />
                        </td>
                        <td>
                            <br />
                            <asp:ListBox ID="lbrazred" runat="server" DataSourceID="MarRaz" DataTextField="kolone" DataValueField="razred_id" Height="100px" Width="400px"></asp:ListBox>
                            <asp:SqlDataSource ID="MarRaz" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="Razred_Sgodina" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <br />
                            <br />
                            Унесите нов разред :
                            <asp:DropDownList ID="DDRazred" runat="server">
                            </asp:DropDownList>
&nbsp;
                            <br />
                            <br />
                            школска година :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:DropDownList ID="DD_sgodina" runat="server" DataSourceID="MatSG1" DataTextField="skolska_godina" DataValueField="sgodina_id">
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="MatSG1" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="SELECT [sgodina_id], [skolska_godina] FROM [S_Godina]"></asp:SqlDataSource>
                            <br />
                            <br />
                            разредни старешина :
                            <asp:DropDownList ID="DDProf" runat="server" DataSourceID="MatProfa" DataTextField="Naziv" DataValueField="profesor_id" >
                            </asp:DropDownList>
                            <asp:SqlDataSource ID="MatProfa" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="Profesor_svi" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                            <br />
                            <asp:TextBox ID="txtrazmessage" runat="server" BackColor="White" BorderStyle="None" Enabled="False" Width="455px"></asp:TextBox>
                            <br />
                            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="УНОС" />
                        </td>
                    </tr>
                </table>
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
                <h5 class="card-title">3.Унеси нове податке за Професора :</h5>
        
              </div>

              <div class="card-body ">
                     <p>Унесите име : 
             <asp:TextBox ID="txtime" runat="server"></asp:TextBox>
                         <asp:TextBox ID="txtmime" runat="server" BackColor="White" BorderStyle="None" Enabled="False"></asp:TextBox>
&nbsp;, презиме :
             <asp:TextBox ID="txtprez" runat="server"></asp:TextBox> &nbsp;<asp:TextBox ID="txtmprez" runat="server" BackColor="White" BorderStyle="None" Enabled="False"></asp:TextBox>
                         и предмет за професора : <asp:DropDownList ID="dd1" runat="server" DataSourceID="MatPred1" DataTextField="naziv_predmeta" DataValueField="predmet_id"></asp:DropDownList>
                         <asp:SqlDataSource ID="MatPred1" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="SELECT [predmet_id], [naziv_predmeta] FROM [Predmet]"></asp:SqlDataSource>
&nbsp;<asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="УНОС" />
                     </p>
     </div>
              <div class="card-footer ">
                &nbsp;<hr>
              
              </div>
            </div>
          </div>
        </div>


          <div class="row">
          <div class="col-md-12">
            <div class="card ">
              <div class="card-header ">
                <h5 class="card-title">5.Унеси нове податке за Ученика:</h5>
        
              </div>

              <div class="card-body ">
                     <p>Унесите име : 
             <asp:TextBox ID="txtimeucenika" runat="server"></asp:TextBox>
                         <asp:TextBox ID="txtmimeucenika" runat="server" BackColor="White" BorderStyle="None" Enabled="False"></asp:TextBox>
&nbsp;, презиме :
             <asp:TextBox ID="txtprezucenika" runat="server"></asp:TextBox> &nbsp;<asp:TextBox ID="txtmprezimeucenika" runat="server" BackColor="White" BorderStyle="None" Enabled="False"></asp:TextBox>

&nbsp;разред за ученика :
                         <asp:DropDownList ID="DDRazred_1" runat="server" DataSourceID="MatRaz2" DataTextField="kolone" DataValueField="razred_id">
                         </asp:DropDownList>
                         <asp:SqlDataSource ID="MatRaz2" runat="server" ConnectionString="<%$ ConnectionStrings:MatRad %>" SelectCommand="Razred_Sgodina" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                     </p>
                     <p>улица :
                         <asp:TextBox ID="txtulicaucenik" runat="server" Width="432px"></asp:TextBox>
&nbsp;град :
                         <asp:DropDownList ID="DDGrad" runat="server">
                         </asp:DropDownList>
                     </p>
                     <p>
                         <asp:Button ID="Button5" runat="server" OnClick="Button5_Click" Text="УНОС" />
                     </p>
     </div>
              <div class="card-footer ">
                &nbsp;<hr>
              
              </div>
            </div>
          </div>
        </div>

      
      </div>
      <footer class="footer footer-black  footer-white ">
        <div class="container-fluid">
          <div class="row">
            <nav class="footer-nav">
              <ul>
                <li><a href="" target="_blank">4Р ТИМ</a></li>
              
              </ul>
            </nav>
            <div class="credits ml-auto">
              <span class="copyright">
                © <script>
                  document.write(new Date().getFullYear())
                </script>, made with <i class="fa fa-heart heart"></i> by 4Р ТИМ
              </span>
            </div>
          </div>
        </div>
      </footer>
</asp:Content>
