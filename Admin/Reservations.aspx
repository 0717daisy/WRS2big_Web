<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reservations.aspx.cs" Inherits="WRS2big_Web.Admin.Reservations" %>
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
                                            <h5 class="m-b-10">RESERVATIONS </h5>
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
                                    <div class="row">
                                     <div class="col-md-12 col-sm-12 ">
                                     <div class="x_panel">
                                     <div class="x_title">
                                      <h2>Reservation List</h2>
                                       <div class="clearfix"></div>
                                        </div>
                                         <div class="x_content">
                                          <div class="row">
                                           <div class="col-sm-12">
                                             <div class="card-box table-responsive">
                                                   <%-- DISPLAY TABLE STARTS HERE--%>
                                              <table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                               <thead>
                                                 <tr>
                                                  <th>Order ID.</th>
                                                  <th>Customer Name</th>
                                                  <th>Category</th>
                                                  <th>Type</th>
                                                  <th>Quantity</th>
                                                  <th>Date and Time</th>
                                                  <th>Status</th>
                                                  <th style="width: 10%"></th>
                                                  </tr>
                                                  </thead>
                                                  <tbody>
                                                  <tr>
                                                  <td>10001</td>
                                                  <td>Rania Dejacto</td>
                                                  <td>Liter</td>
                                                  <td>Purified</td>
                                                  <td>2</td>
                                                  <td>10/18/2022</td>
                                                  <td align="center"><span class="badge badge-secondary">Pending</span></td>
                                                  <td align="center">
                                                      <%--PLEASE CHANGE TO ASP BUTTON--%>
                                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".accept"><i class="fa fa-check-square-o"></i>Acccept</button> 
                                             <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash">Decline</i></button></td>
                                                 </tr>
                                               </tbody>
                                                     <tbody>
                                                     <tr>
                                                     <th>Order ID.</th>
                                                     <th>Customer Name</th>
                                                     <th>Category</th>
                                                     <th>Type</th>
                                                     <th>Quantity</th>
                                                     <th>Date and Time</th>
                                                     <th>Status</th>
                                                     <th style="width: 10%"></th>
                                                     </tr>
                                                     </tbody>
                                                     </table>
                                                     <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                                     <div class="modal-dialog modal-sm">
                                                     <div class="modal-content">
                                                     <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
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
          </div>
         </div>
       </div>

</asp:Content>
