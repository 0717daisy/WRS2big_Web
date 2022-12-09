<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WaterProduct.aspx.cs" Inherits="WRS2big_Web.Admin.WaterProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
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
                                  <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add Water Product</button></div>
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
                                                <asp:TextBox ID="txtwaterType" runat="server" placeholder="-    Water Type     -" class="form-control"></asp:TextBox>
                                             </div>
                                             </div>
                                             <div class="item form-group">
                                              <div class="col-md-12 col-sm-12 ">
                                                  <asp:TextBox ID="txtdescription" runat="server" class="form-control" placeholder="-  Water Name / Description   -"></asp:TextBox>
                                                  </div>
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
                                          <div class="row">
                                           <div class="col-md-12 col-sm-12 ">
                                           <div class="x_panel">
                                           <div class="x_title">
                                           <h2>Water Products</h2>
                                           <div class="clearfix"></div>
                                           </div>
                                           <div class="x_content">
                                           <div class="row">
                                          <div class="col-sm-12">
                                           <div class="card-box table-responsive">
                                               <%--display table ni diring dapita--%>
                                          <table id="datatable" class="table table-striped table-bordered" style="width:100%;text-align:center">

                                         <thead>
                                         <tr id="trialtable" class="border-secondary">
                                          <th style="width:10%;text-align:center">Water ID No.</th>
                                          <th style="text-align:center">Description</th>
                                          <th style="text-align:center">Type</th>
                                          <th style="text-align:center">Date Recorded</th>
                                          <th style="text-align:center">Action</th>
                                          </tr>
                                          </thead>
                                             <%-- tble body--%>
                                          <tbody id="waterproduct">
                                          <tr>
                                          <td style="text-align:center"> 
                                          <asp:TextBox ID="water_idno" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox>
                                           </td>               
                                          <td style="text-align:center"> 
                                              <asp:TextBox ID="desc" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox>
                                          </td>
                                          <td style="text-align:center"> 
                                              <asp:TextBox ID="type" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox>
                                           </td>
                                          <td style="text-align:center"> 
                                           <asp:TextBox ID="dateAdded" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox>
                                          </td>
                                            <td align="center">
                                             <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit" title="Edit Record"><i class="fa fa-edit"></i></button> 
                                             <button type="button" class="btn btn-danger btn-sm" title="Delete Record"><i class="fa fa-trash"></i></button>
                                            </td>
                                            </tr>
                                          <%-- </center>--%>
                                               </tbody>
                                           </table>
                                           <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                           <div class="modal-dialog modal-sm">
                                           <div class="modal-content">
                                           <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                           <div class="modal-header">
                                               <%--title ni diri sa edit information--%>
                                           <h4 class="modal-title" id="myModalLabel2">Edit Product Information</h4>
                                               <%--close button ni diring dapita--%>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                             <span aria-hidden="true">×</span> </button>
                                           </div>
                                           <div class="modal-body">
                                               <div class="col-md-12 col-sm-12 ">
                                                   <div class="x_content">
                                                       <%--input textbox starts here--%>
                                                    <div class="item form-group">
                                                        <div class="col-md-12 col-sm-12 ">
                                                            <asp:TextBox ID="WaterType" runat="server" placeholder="-    Water Type     -" class="form-control"></asp:TextBox>
                                                         </div>
                                                     </div>
                                                         <div class="item form-group">
                                                          <div class="col-md-12 col-sm-12 ">
                                                              <asp:TextBox ID="description" runat="server" class="form-control" placeholder="-  Water Name / Description   -"></asp:TextBox>
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
                                        </div>
                                      </div>
                                     </div>
                                    </div>
                                   </div>
                                  </div>
                               </div>
                              </div>
                             </div>
                           </div>
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
