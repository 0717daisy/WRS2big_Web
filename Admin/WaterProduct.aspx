<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WaterProduct.aspx.cs" Inherits="WRS2big_Web.Admin.WaterProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

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
                                            <h5 class="m-b-10">PRODUCTS - WATER </h5>
                                            <h6 class="m-b-0">2BiG: Water Refilling Station Management System</h6>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <ul class="breadcrumb-title">
                                            <li class="breadcrumb-item">
                                                <a href="/Admin/AdminIndex"> <i class="fa fa-home"></i> </a>
                                            </li>
                                            <li class="breadcrumb-item">
                                                <a href="/Admin/AdminIndex">Dashboard</a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                           <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                             <div class="page-wrapper">
                              <!-- page content -->
                               <div class="right_col" role="main">
                                <div class="">
                                  <div class="clearfix">
                                        <%--BUTTON to ADD--%>
                                        <button type="button" style="font-size:14px;" class="btn btn-success btn-sm" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add Water Product</button>
                                            <asp:Button ID="ViewID" runat="server" OnClick="ViewID_Click" style="font-size:14px;" class="btn btn-success btn-sm " Text="View List of Product IDs" /> </div> 

                                           <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                            <div class="modal-dialog modal-sm">
                                            <div class="modal-content">
                                              <form id="demo-form" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                       <%--header ni diri--%>
                                              <div class="modal-header">
                                                        <%--title ni diri--%>
                                              <h4 class="modal-title" id="myModalLabel">Add Water Product</h4>
                                                        <%--button close ni diri--%>
                                               <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">X</span></button>
                                                </div> <%--closing tag ni header--%> 
                                                       <%--body ni diri ni modal--%>
                                                <div class="modal-body">
                                                 <div class="col-md-12 col-sm-12 ">
                                                 <div class="x_content">
                                                  <div class="item form-group">
                                                    <div class="col-md-12 col-sm-12 ">
                                                        <asp:Label ID="Label1" runat="server" Text="Water Name: "></asp:Label>
                                                        <asp:TextBox ID="drdType" runat="server"></asp:TextBox>
                                                     </div>
                                                     </div>
                                                     <div class="item form-group">
                                                      <div class="col-md-12 col-sm-12 ">
                                                          <asp:Label ID="Label2" runat="server" Text="Water Description:"></asp:Label>
                                                        <asp:TextBox ID="waterDes" runat="server"></asp:TextBox>
                                                          </div>
                                                        </div>
                                                     <div class="item form-group">
<%--                                                      <div class="col-md-12 col-sm-12 ">
                                                          <asp:Label ID="LabelDate" runat="server" Text="Date Added:"></asp:Label>
                                                        <asp:TextBox style="width:170px;" ID="dateProdAdded" TextMode="Date" runat="server"></asp:TextBox>
                                                          </div>--%>
                                                        </div>
                                                       </div>
                                                     </div>
                                                    </div>
                                                     <div class="modal-footer">
                                                        <%--Button Add ni diri--%>
                                                         <asp:Button ID="btnAdd" runat="server" Text="Add Product" class="btn btn-primary btn-sm" OnClick="btnAdd_Click"/>
                                                </div>
                                               </form>
                                             </div>
                                           </div>
                                         </div>
                                    <%--//</div>--%>
                                        <br /><br />
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
                                                            <h5>Water Product ID:</h5>
                                                        </div>
                                                        <div class="card-block">        
                                                           <asp:ListBox ID="ListBox1" runat="server" style="border:transparent; font-size:20px;padding:4px 7px 2px 4px;" Width="561px" Height="179px">
                                                           </asp:ListBox> 
                                                            <asp:Button ID="Button1" onclick="btnDisplay_Click" type="button" style="font-size:14px;" class="btn btn-primary btn-sm" runat="server" Text="View Complete Details" />
                                                        </div>
                                                    <div class="card-footer">
                                                        <%--<button onclick="btnDisplay_Click" type="button" id="displaybtn" style="font-size:14px;" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".display"><i class="ti-notepad"></i>View Complete Details</button>  <br /> <br />--%>
                                                        
                                                    </div>
                                                    </div>
                                                  </div>
                                                   
                                            <div class="col-xl-9 col-md-12">
                                                <div class="card" style="background-color:#f2e2ff">
                                                    <div class="card-header">
                                                        <h5>WATER PRODUCT INFORMATION</h5>
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
                                                                           <h5>Product ID:</h5> 
                                                                            <asp:Label ID="LabelID" runat="server" class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px" ></asp:Label>
<%--                                                                             <asp:TextBox  ID="ProdID" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox>--%>
                                                                            <br>
                                                                            <h5>Water Name: </h5>
                                                                            <asp:TextBox  ID="waterName" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox>
                                                                          
                                                                            <h5>Description: </h5>
                                                                              <asp:TextBox  ID="ProdDes" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox>
                                                                           
                                                                             <h5>Date Added:  </h5>
                                                                              <asp:TextBox  ID="ProdDate" runat="server"  class="btn btn-round waves-effect text-center" style="background-color:#bae1ff;font-size:16px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox>
                                                                               
                                                                          </div>
                                                                      </div>
                                                              </div><!--/tab-pane-->
                                                          </div><!--/tab-content-->
                                                           
                                                        </div>
                                                    </div>
                                                    <div class="card-footer">
<%--                                                                     <button type="button" style="font-size:14px;" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit" title="Edit Record"><i class="fa fa-edit"></i>Edit</button> 
                                                                     <button type="button" style="font-size:14px;" class="btn btn-danger btn-sm" title="Delete Record"><i class="fa fa-trash"></i>Delete</button>--%>
                                                                     <asp:Button ID="EditBtn" style="font-size:14px;" class="btn btn-primary btn-sm"  runat="server" Text="Edit details" OnClick="btnEdit_Click"/>
                                                                       <asp:Button ID="DeleteBtn" style="font-size:14px;" class="btn btn-danger btn-sm" runat="server"  Text="Delete Product" /> 
                                                    </div>
                                                </div>

                                               </div> 



                                               <%-- <div class="col-sm-12">

                                                     <div class="card-box table-responsive">
                                               <%--display table ni diring dapita--%>

                                             <!--
                                                        <%-- MODAL FOR EDIT--%>
                                           <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                           <div class="modal-dialog modal-sm">
                                           <div class="modal-content">
                                           <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                           <div class="modal-header">
                                               <%--title ni diri sa edit information--%>
                                           <h4 class="modal-title" id="myModalLabel2">Edit Product Information</h4>
                                               <%--close button ni diring dapita--%>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                             <span aria-hidden="true">X</span> </button>
                                           </div>
                                           <div class="modal-body">
                                             <div class="col-md-12 col-sm-12 ">
                                                <div class="x_content">
                                               <%--input textbox starts here--%>
                                                     <div class="item form-group">
                                                        <div class="col-md-12 col-sm-12 ">
                                                             <asp:Label ID="editWaterType" runat="server" Text="Water Name:"></asp:Label>
                                                            <asp:TextBox ID="waterType" runat="server"></asp:TextBox>
                                                         </div>
                                                     </div>
                                                     <div class="item form-group">
                                                       <div class="col-md-12 col-sm-12 ">
                                                         <asp:Label ID="editDesc" runat="server" Text="Water Description: "></asp:Label>
                                                          <asp:TextBox ID="Description" runat="server"></asp:TextBox>
                                                        </div>
                                                     </div>
                                                </div>
                                            </div>
                                         </div>
                                                            <div class="modal-footer">
                                                                 <%--Button Edit ni diri--%>
                                                                 <asp:Button ID="btnEdit" runat="server" Text="Edit Product" class="btn btn-primary btn-sm" OnClick="btnEdit_Click"/>
                                                          <%--  <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>
                                                                                                                                    <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check"></i>Save</button>--%>
                                                             </div>
                                                        </form>
                                                      </div>
                                                     </div>
                                                    </div><%-- EDIT MODAL END--%>   -->


                                                         <!--MODAL FOR DISPLAY
                                           <div class="modal fade display" tabindex="-1" role="dialog" aria-hidden="true">
                                             <div class="modal-dialog modal-sm">
                                                 <div class="modal-content">
                                                     <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                         <div class="modal-header">
                                                       <%--title ni diri sa edit information--%>
                                                      <h5 class="modal-title" id="myModalLabel2">Water Product Information</h5>
                                                       <%--close button ni diring dapita--%>
                                                         <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                               <span aria-hidden="true">X</span> </button>
                                                          </div>
                                                         <div class="modal-body">
                                                              <div class="col-md-12 col-sm-12 ">
                                                                <div class="x_content">
                                                                  <%--input textbox starts here--%>
                                                                      <div class="item form-group">
                                                                        <div class="col-md-12 col-sm-12 ">
                                                                           <asp:Label ID="Label3" runat="server" Text="Water ID:"></asp:Label>
                                                                             <asp:TextBox ID="WaterID" runat="server">




                                                                             </asp:TextBox>
                                                                        </div>
                                                                     </div>
                                                            <div class="item form-group">
                                                                <div class="col-md-12 col-sm-12 ">
                                                                     <asp:Label ID="Label5" runat="server" Text="Water Name:"></asp:Label>
                                                                    <asp:TextBox ID="WatName" runat="server"></asp:TextBox>
                                                                 </div>
                                                             </div>
                                                             <div class="item form-group">
                                                                <div class="col-md-12 col-sm-12 ">
                                                                 <asp:Label ID="Label4" runat="server" Text="Water Description: "></asp:Label>
                                                                  <asp:TextBox ID="WatDes" runat="server"></asp:TextBox>
                                                                </div>
                                                             </div>
                                                             <div class="item form-group">
                                                                <div class="col-md-12 col-sm-12 ">
                                                                 <asp:Label ID="Label6" runat="server" Text="Date Added: "></asp:Label>
                                                                  <asp:TextBox ID="WatDate" runat="server"></asp:TextBox>

                                                                </div>
                                                             </div>
                                                           </div>
                                                         </div>
                                                        </div>
                                                        </form>
                                                      </div>
                                                     </div>
                                                    </div> DISPLAY MODAL END-->

                                                   </div>
                                                  </div>

                                               </div>
                                        </div>
                                      </div>
                                    </div>
                                  </div>
                                <br /><br />
                             </div>
                           </div>
                          </div>
                         </div>
                       </div>

</asp:Content>
