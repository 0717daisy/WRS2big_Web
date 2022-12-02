<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="DeliveryRecords.aspx.cs" Inherits="WRS2big_Web.Admin.DeliveryRecords" %>
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
                                            <h5 class="m-b-10">DELIVERY RECORDS </h5>
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
                                    <!-- page content -->
                                    <div class="right_col" role="main">
                                        <div class="">

                                            <div class="clearfix"><button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add</button></div>
                                            <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-sm">
                                                    <div class="modal-content">
                                                        <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myModalLabel2">Add Delivery</h4>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">×</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="col-md-12 col-sm-12 ">
                                                                    <div class="x_content">
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <input required="required" class="form-control " type="text" placeholder="-             Delivery No          -">
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <input required="required" class="form-control" type="date" placeholder="-                   Date               -">
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <select class="form-control">
                                                                                    <option>Customer</option>
                                                                                    <option>Data</option>
                                                                                    <option>Data</option>
                                                                                </select>
                                                                            </div>
                                                                        </div>
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                <input required="required" class="form-control" type="text" placeholder="-         Vehicle Plate No      -">
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

                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 ">
                                                    <div class="x_panel">
                                                        <div class="x_title">
                                                            <h2>Delivery Record <small>Table</small></h2>
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="x_content">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="card-box table-responsive">
                                                                        <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th style="width:15%">Delivery No.</th>
                                                                                    <th>Date Delivered</th>
                                                                                    <th>Customer</th>
                                                                                    <th>Vehicle Plate No</th>
                                                                                    <th>Date Recorded</th>
                                                                                    <th style="width:10%"></th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td>1000002</td>
                                                                                    <td>September 12, 2022</td>
                                                                                    <td>Rosemarie Derder</td>
                                                                                    <td>TFR-12-44</td>
                                                                                    <td>October 15, 2022</td>
                                                                                    <td align="center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i></button> <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>1000001</td>
                                                                                    <td>September 12, 2022</td>
                                                                                    <td>Christian Dicdican</td>
                                                                                    <td>TFR-12-44</td>
                                                                                    <td>December 15, 2022</td>
                                                                                    <td align="center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i></button> <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                                </tr>
                                                                            </tbody>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <th style="width:15%">Delivery No.</th>
                                                                                    <th>Date Delivered</th>
                                                                                    <th>Customer</th>
                                                                                    <th>Vehicle Plate No</th>
                                                                                    <th>Date Recorded</th>
                                                                                    <th style="width:10%"></th>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                                                            <div class="modal-dialog modal-sm">
                                                                                <div class="modal-content">
                                                                                    <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title" id="myModalLabel2">Edit Delivery</h4>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <span aria-hidden="true">×</span>
                                                                                            </button>
                                                                                        </div>
                                                                                        <div class="modal-body">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <div class="x_content">
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control " type="text" placeholder="-             Delivery No          -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="date" placeholder="-                   Date               -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="-               Customer           -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="-         Vehicle Plate No      -">
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


                                    <!-- /page content -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</asp:Content>
