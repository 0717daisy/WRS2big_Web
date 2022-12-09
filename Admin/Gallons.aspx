<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Gallons.aspx.cs" Inherits="WRS2big_Web.Admin.Gallons" %>
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
                                   <!-- page content -->
                                    <div class="right_col" role="main">
                                        <div class="">
                                       <div class="clearfix">
                                           <%--BUTTON ADD--%>
                                           <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target=".add"  Height="47px" Width="126px"><i class="fa fa-plus"></i>Add Gallon Product</button>
                                           <%--<asp:Button ID="btnAdd" runat="server" Text="Add"  class="btn btn-success btn-sm fa fa-plus" data-toggle="modal" data-target=".add" Height="47px" Width="126px"/>--%></div>
                                      <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                      <div class="modal-dialog modal-sm">
                                      <div class="modal-content">
                                          <%--<form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">--%>     
                                       <div class="modal-header">
                                         <h4 class="modal-title" id="myModalLabel">Add Gallon Product</h4>
                                          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                               <span aria-hidden="true">X</span> </button>
                                          </div>
                                             <div class="modal-body">
                                              <div class="col-md-12 col-sm-12 ">
                                               <div class="x_content">
                                               <%-- <div class="item form-group">
                                                  <div class="col-md-12 col-sm-12 ">
                                                   <input required="required" class="form-control " type="text" placeholder="-             Gallon ID          -">
                                                  </div>
                                               </div>--%>
                                                <div class="item form-group">
                                                 <div class="col-md-12 col-sm-12 ">
                                                    <%--<asp:Label ID="Label2" runat="server" Text="Date Added"></asp:Label>--%>
                                                 <%--<asp:TextBox ID="txtgalType" runat="server" class="form-control" placeholder="-               Galloon Type           -" ></asp:TextBox>--%>
                                                    <asp:DropDownList ID="drdgalType" runat="server" lass="form-control" Height="40px" Width="200px" >
                                                        <asp:ListItem Text="Select Gallon Type" Value="select" Selected="True"></asp:ListItem>
                                                           <asp:ListItem Text="Slim" Value="Slim Gallon"></asp:ListItem>
                                                           <asp:ListItem Text="Round" Value="RoundGallon" ></asp:ListItem>
                                                    </asp:DropDownList>                                                                                           <%--<input required="required" class="form-control" type="date" placeholder="-                   Date Added               -">--%>
                                                  </div>                                                                                                 
                                                </div>  
                                                    <div class="item form-group">                                                                         
                                                     <div class="col-md-12 col-sm-12">
                                                         <asp:TextBox ID="txtQty" runat="server" class="form-control" TextMode="Number" placeholder="-               Quantity           -" ></asp:TextBox>
                                                          <%--<input required="required" class="form-control" type="text" placeholder="-               Quantity           -">--%>
                                                        </div>     
                                                    </div>
                                                    <div class="item form-group">
                                                     <div class="col-md-12 col-sm-12 ">
                                                      <asp:TextBox ID="txtDeliveryPrice" runat="server" class="form-control" TextMode="Number" placeholder="-         Delivery Price      -"></asp:TextBox>
                                                 <%--<input required="required" class="form-control" type="text" placeholder="-         Delivery Price      -">--%>
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
                                                          <%--<asp:Button ID="btnUpload" runat="server" class="form-control btn btn-dark btn-sm" Text="Upload File" OnClick="btnUpload_Click" />--%>
                                                     </div>
                                                     <div class="col-md-5">
                                                       <asp:Image CssClass="img-fluid img-thumbnail" ID="productImage" runat="server" Visible="False" />
                                                  </div>                                                                                                                                                                     </div>
                                                 </div>
                                                </div>
                                               </div>
                                                  <div class="modal-footer">
                                                   <%--BUTTON SAVE GALLONS DATA--%>
                                                      <asp:Button ID="btnSave" runat="server" Text="Save Data"  class="btn btn-primary btn-sm" OnClick="btnSave_Click"/>
                                                      <%--<asp:Button ID="btnSave" runat="server" Text="Save" class="btn btn-primary btn-sm" OnClick="btnSave_Click"/>--%>
                                                   </div>
                                          <%--</form>--%>
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
                                                                                    <th style="width:10%">Gallon ID</th>
                                                                                    <th style="width:15%"> Image
                                                                                    </th>
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
                                                                                    <td>
                                                                                     
                                                                                    </td>
                                                                                    <td>Slim Gallon</td>
                                                                                    <td>10</td>
                                                                                    <td>₱180</td>
                                                                                    <td>₱150 </td>
                                                                                    <td align="center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i></button> <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td>1000003</td>
                                                                                    <td>

                                                                                    </td>
                                                                                    <td>Round Gallon</td>
                                                                                    <td>10</td>
                                                                                    <td>₱150</td>
                                                                                    <td>₱120 </td>
                                                                                    <td align="center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i></button> <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                                                            <div class="modal-dialog modal-sm">
                                                                                <div class="modal-content">
                                                                                    <div id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
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
                                                                                                            <input required="required" class="form-control " type="text" placeholder="-             Gallon ID          -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="date" placeholder="-                   Date Added               -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="-               Quantity           -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="-         Delivery Price      -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <input required="required" class="form-control" type="text" placeholder="-         Pick-up Price      -">
                                                                                                        </div>
                                                                                                    </div>
                                                                                                    <div class="item form-group">
                                                                                                        <div class="col-md-12 col-sm-12 ">
                                                                                                            <label>
                                                                                                                Update Image
                                                                                                            </label>
                                                                                                              <asp:FileUpload ID="ImgUpdate" runat="server"/>
                                                                                                        </div>                                                                                               
                                                                                                    </div>
                                                                                                    </div>
                                                                                                  </div>
                                                                                                 </div>
                                                                                                <div class="modal-footer">
                                                                                           <%-- <button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>--%>
                                                                                            <asp:Button ID="btnEdit" runat="server" Text="Save" class="btn btn-primary btn-sm" data-dismiss="modal" style="margin-right: 46%" OnClick="btnEdit_Click"/>
                                                                                            <%--<button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-check"></i>Save</button>--%>
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

        </div>
    </div>
</form>
</asp:Content>
