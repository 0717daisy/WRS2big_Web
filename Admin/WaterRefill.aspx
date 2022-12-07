<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WaterRefill.aspx.cs" Inherits="WRS2big_Web.Admin.WaterRefill" %>
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
                                            <h5 class="m-b-10">SERVICES - WATER REFILL </h5>
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
                                    <form runat="server">
                                   <!-- page content -->
                                    <div class="right_col" role="main">
                                        <div class="">

                                           <div class="clearfix"><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add new Refill </button></div>
                                            <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">
          <%--                                              <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
          --%>                                                  <div class="modal-header">
                                                                <h4 class="modal-title" id="myModalLabel2">Manage Refill Service</h4>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                                                        <div class="modal-body">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <div class="x_content">

                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                       <asp:Label> Gallon Type: </asp:Label>
                                                                                                            <asp:DropDownList ID="DropDownList1" runat="server" class="form-control" Enabled="True">

                                                                                                                <asp:ListItem> </asp:ListItem>  
                                                                                                                <asp:ListItem>Round </asp:ListItem>  
                                                                                                                <asp:ListItem>Slim </asp:ListItem>  
                                                                                                            </asp:DropDownList>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                       <asp:Label> Water Type: </asp:Label>
                                                                                                            <asp:DropDownList ID="DropDownList2" runat="server" class="form-control" Enabled="True">

                                                                                                                <asp:ListItem> </asp:ListItem>  
                                                                                                                <asp:ListItem>Mineral </asp:ListItem>  
                                                                                                                <asp:ListItem>Distilled </asp:ListItem>  
                                                                                                                <asp:ListItem>Alkaline </asp:ListItem>  
                                                                                                            </asp:DropDownList>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control " type="text" placeholder="Refill Service Name">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="Delivery Price">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="Pick-up Price">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                            <div class="modal-footer">
                                                                <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>
                                                                <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check"></i>Save</button>
                                                            </div>
                                                        <%--</form>--%>
                                                    </div>
                                                </div>

                                            </div>
                                            <br />
                                            <div class="row">


                                                <div class="col-md-12 col-sm-12 ">
                                                    <div class="x_panel">
                                                        <div class="x_title">
                                                            <h2>Water Refill Service</h2>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="x_content">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="card-box table-responsive">
                                                                        <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>No.</th>
                                                                                    <th>Refill Service</th>
                                                                                    <th>Gallon</th>
                                                                                    <th>Water</th>
                                                                                    <th>Delivery Price</th>
                                                                                    <th>Pick-up Price</th>
                                                                                    <th>Action</th>
                                                                                    <th style="width: 10%"></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                               <tr>
                                                                                    <td>1</td>
                                                                                    <td>Slim Mineral Refill</td>
                                                                                    <td>Slim Gallon</td>
                                                                                    <td>Mineral Water</td>
                                                                                    <td>P15.00</td>
                                                                                    <td>P20.00</td>
                                                                                    <td align="center">
                                                                                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".edit">
                                                                                            
                                                                                            <h7> <i class="ti-settings"></i>Manage</h7>
                                                                                        </button>
                                                                                   </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>3</td>
                                                                                    <td>Slim Mineral Refill</td>
                                                                                    <td>Slim Gallon</td>
                                                                                    <td>Mineral Water</td>
                                                                                    <td>P15.00</td>
                                                                                    <td>P20.00</td>
                                                                                    <td align="center">
                                                                                        <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".edit">
                                                                                            
                                                                                            <h7> <i class="ti-settings"></i>Manage</h7>
                                                                                        </button>
                                                                                   </td>                                                                                
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                                                            <div class="modal-dialog modal-sm">
                                                                                <div class="modal-content">
                                                                                    <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title" id="myModalLabel2">Edit Gallon Information</h4>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <span aria-hidden="true">×</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="modal-body">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <div class="x_content">

                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                       <asp:Label> Gallon Type: </asp:Label>
                                                                                                            <asp:DropDownList ID="DropDownList3" runat="server" class="form-control" Enabled="True">

                                                                                                                <asp:ListItem> </asp:ListItem>  
                                                                                                                <asp:ListItem>Round </asp:ListItem>  
                                                                                                                <asp:ListItem>Slim </asp:ListItem>  
                                                                                                            </asp:DropDownList>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                       <asp:Label> Water Type: </asp:Label>
                                                                                                            <asp:DropDownList ID="DropDownList4" runat="server" class="form-control" Enabled="True">

                                                                                                                <asp:ListItem> </asp:ListItem>  
                                                                                                                <asp:ListItem>Mineral </asp:ListItem>  
                                                                                                                <asp:ListItem>Distilled </asp:ListItem>  
                                                                                                                <asp:ListItem>Alkaline </asp:ListItem>  
                                                                                                            </asp:DropDownList>
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control " type="text" placeholder="Refill Service Name">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="Delivery Price">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="Pick-up Price">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="modal-footer">
                                                                                            <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>
                                                                                            <button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check"></i>Save</button>
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
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
