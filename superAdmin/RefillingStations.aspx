<%@ Page Title="" Language="C#" MasterPageFile="~/WRSsuperAdmin.Master" AutoEventWireup="true" CodeBehind="RefillingStations.aspx.cs" Inherits="WRS2big_Web.superAdmin.RefillingStations" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
                  <form runat="server">
        <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
 
                    <div class="pcoded-content">
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">SUBSCRIBED REFILLING STATIONS </h5>
                                            <h6 class="m-b-0">2BiG: Water Refilling Station Management System</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb-title">
                                            <li class="breadcrumb-item">
                                                <a href="/superAdmin/SAdminIndex"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="/superAdmin/SAdminIndex">Dashboard</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <!-- page content -->
                                    <div class="right_col" role="main">
                                        <div class="">
                                            <%-- <asp:Label ID="lblResult" runat="server" Text="" ForeColor="Red" Font-Size="Large" Font-Bold="True"></asp:Label>--%>
                                            <div class="clearfix">
                                            </div>


                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 ">
                                                    <div class="x_panel">
                                                        <div class="x_title">
                                                        <div class="x_content">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="card-box table-responsive">

                                                                          <!--PAGE CONTENTS-->
                                                                           <div class="row">
                                                                               <div class="col-xl-3 col-md-12">
                                                                                <div class="card ">
                                                                                    <div class="card-header">
                                                                                        <div class="card-header-right">
                                                                                            <ul class="list-unstyled card-option">
                                                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                                                            </ul>
                                                                                        </div>
                                                                                        <h5>REFILLING STATIONS:</h5>
                                                                                    </div>
                                                                                    <div class="card-block">        
                                                                                       <asp:ListBox ID="ListBox1" runat="server" style="border:transparent; font-size:20px;padding:4px 7px 2px 4px;" Width="241px" Height="179px">
                                                                                       </asp:ListBox> 
                                                                                        <asp:Button ID="Button2" onclick="btnDisplay_Click" type="button" style="font-size:14px;" class="btn btn-primary btn-sm" runat="server" Text="View Complete Details" />
                                                                                    </div>
                                                                                <div class="card-footer">
                                                       
                                                        
                                                                                </div>
                                                                                </div>
                                                                              </div>
                                                   
                                                                            <div class="col-xl-9 col-md-12">
                                                                                <div class="card" style="background-color:#f2e2ff">
                                                                                    <div class="card-header">
                                                                                        <h5>REFILLING STATION INFORMATION</h5>
                                                                                        <div class="card-header-right">
                                                                                            <ul class="list-unstyled card-option">
                                                                                                <li><i class="fa fa fa-wrench open-card-option"></i></li>
                                                                                                <li><i class="fa fa-window-maximize full-card"></i></li>
                                                                                                <li><i class="fa fa-minus minimize-card"></i></li>
                                                                                                <li><i class="fa fa-refresh reload-card"></i></li>
                                                                                                <li><i class="fa fa-trash close-card"></i></li>
                                                                                            </ul>
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="card-block">
                                                                                        <div class="table-responsive">
                                                                                            <div class="tab-content">
                                                                                            <div class="tab-pane active">
                                                                                                      <div class="form-group">                
                                                                                                        <div class="col-xs-12" style="font-size:16px">
                                                                                                           <h5>Refilling Station Owner:</h5> 
                                                                                                            <asp:Label ID="LabelID" runat="server" class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px" ></asp:Label>
                                                                                                            <br>
                                                                                                            <h5>Refilling Station Name: </h5>
                                                                                                            <asp:Label ID="NameWRSstation" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:Label>
                                                                          
                                                                                                            <h5>Subscription Plan:</h5>
                                                                                                              <asp:Label  ID="SubsPlan" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:Label>
                                                                                                                
                                                                                                            <h5>Date Subscribed:  </h5>
                                                                                                              <asp:Label  ID="SubsDate" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:Label>
                                                                                                             
                                                                                                            <h5>Subscriptin Expiry:  </h5>
                                                                                                            <asp:Label ID="ExpiryDate" runat="server" class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px" ></asp:Label>

                                                                                                        </div>
                                                                                                      </div>
                                                                                              </div><!--/tab-pane-->
                                                                                          </div><!--/tab-content-->
                                                           
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="card-footer">
                                                                                                     <asp:Button ID="EditBtn" style="font-size:14px;" class="btn btn-primary btn-sm"  runat="server" Text="Edit details" OnClick="btnEdit_Click"/>
                                                                                                       
                                                                                    </div>
                                                                                </div>
                                                                               </div> 
                                                                             </div>
                                                                      <!--PAGE CONTENTS END-->

                                              
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <!-- page content -->
                                    <!-- Page-body end -->

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</form>
</asp:Content>
