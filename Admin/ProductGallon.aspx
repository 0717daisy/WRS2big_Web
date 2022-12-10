<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductGallon.aspx.cs" Inherits="WRS2big_Web.Admin.ProductGallon" %>
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
                        <!-- Page-header start -->
                        <div class="page-header">
                            <div class="page-block">
                                <div class="row align-items-center">
                                    <div class="col-md-8">
                                        <div class="page-header-title">
                                            <h5 class="m-b-10">PRODUCT - GALLONS </h5>
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
                        <!-- Page-header end -->
                        <div class="pcoded-inner-content">
                            <!-- Main-body start -->
                            <div class="main-body">
                                <div class="page-wrapper">
                                    <!-- Page-body start -->
                                    <!-- page content -->
                                    <div class="right_col" role="main">
                                        <div class="">

                                            <div class="clearfix"><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add new Gallon</button></div>
                                            <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">
                                                        <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myModalLabel2">Add Gallon Product</h4>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="col-md-12 col-sm-12 ">
                                                                    <div class="x_content">
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                              <asp:DropDownList ID="drdgalType" runat="server" lass="form-control" Height="40px" Width="200px" >
                                                                                <asp:ListItem Text="Select Gallon Type" Value="select" Selected="True"></asp:ListItem>
                                                                                   <asp:ListItem Text="Slim" Value="Slim Gallon"></asp:ListItem>
                                                                                   <asp:ListItem Text="Round" Value="RoundGallon" ></asp:ListItem>
                                                                            </asp:DropDownList>                                              
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <asp:TextBox ID="txtQty" runat="server" class="form-control" TextMode="Number" placeholder="-               Quantity           -" ></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <asp:TextBox ID="txtDeliveryPrice" runat="server" class="form-control" TextMode="Number" placeholder="-         Delivery Price      -"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <asp:TextBox ID="txtPickUp_Price" TextMode="Number" runat="server" class="form-control" type="text" placeholder="-         Pick-up Price      -"></asp:TextBox>
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                    <label class="small mb-1" ID="Label1" for="imgUpload" runat="server">Product Image</label>
                                                                                     <asp:FileUpload ID="ImgUpload" runat="server"/> <br/> 
                                                                                     <asp:Button ID="btnUpload" runat="server" class="form-control btn btn-dark btn-sm" Text="Upload File"/>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                            <div class="modal-footer">
                                                                <button class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>
<%--                                                                <button ID="btnAdd" OnClick="btnSave_Click" runat="server" class="btn btn-primary btn-sm"><i class="fa fa-check"></i>Add</button>--%>
                                                                <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add" ValidationGroup="a" OnClick="btnSave_Click"/>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 ">
                                                    <div class="x_panel">
                                                        <div class="x_title">
                                                            <h2>Gallon Products</h2>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="x_content">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="card-box table-responsive">
                                                                        <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="width:15%">Gallon ID</th>
                                                                                    <th>Gallon Type</th>
                                                                                    <th>Quantity</th>
                                                                                    <th>Delivery Price</th>
                                                                                    <th>Pick-up Price</th>
                                                                                    <th>Action</th>
                                                                                    <th style="width:10%"></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>1000002</td>
                                                                                    <td>Slim Gallon</td>
                                                                                    <td>10</td>
                                                                                    <td>₱180</td>
                                                                                    <td>₱150 </td>
                                                                                    <td align="center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i></button> <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                                                            <div class="modal-dialog modal-sm">
                                                                                <div class="modal-content">
                                                                                    <div id="demo-form3" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title" id="myModalLabel3">Edit Product Information</h4>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <span aria-hidden="true">×</span>
                                                                                            </button>
                                                                                        </div>
                                                                            <div class="modal-body">
                                                                                <div class="col-md-12 col-sm-12 ">
                                                                                    <div class="x_content">
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                              <asp:DropDownList ID="DropDownList1" runat="server" lass="form-control" Height="40px" Width="200px" >
                                                                                                <asp:ListItem Text="Select Gallon Type" Value="select" Selected="True"></asp:ListItem>
                                                                                                   <asp:ListItem Text="Slim" Value="Slim Gallon"></asp:ListItem>
                                                                                                   <asp:ListItem Text="Round" Value="RoundGallon" ></asp:ListItem>
                                                                                            </asp:DropDownList>                                              
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <asp:TextBox ID="TextBox1" runat="server" class="form-control" TextMode="Number" placeholder="-               Quantity           -" ></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <asp:TextBox ID="TextBox2" runat="server" class="form-control" TextMode="Number" placeholder="-         Delivery Price      -"></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <asp:TextBox ID="TextBox3" TextMode="Number" runat="server" class="form-control" type="text" placeholder="-         Pick-up Price      -"></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                    <label class="small mb-1" ID="Label2" for="imgUpload" runat="server">Product Image</label>
                                                                                                     <asp:FileUpload ID="FileUpload1" runat="server"/> <br/> 
                                                                                                     <asp:Button ID="Button1" runat="server" class="form-control btn btn-dark btn-sm" Text="Upload File"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>
                                                                                            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check"></i>Save</button>
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

