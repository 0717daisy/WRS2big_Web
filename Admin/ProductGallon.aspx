<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ProductGallon.aspx.cs" Inherits="WRS2big_Web.Admin.ProductGallon" %>
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
                                             <asp:Label ID="lblResult" runat="server" Text="" ForeColor="Red" Font-Size="Large" Font-Bold="True"></asp:Label>
                                            <div class="clearfix"><button type="button" class="btn btn-success btn-sm" style="font-size:large" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add new Gallon</button></div>
                                            <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                                <div class="modal-dialog modal-lg">
                                                    <div class="modal-content">
                                                        <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                            <div class="modal-header">
                                                                <h4 class="modal-title" id="myModalLabel2">Add Gallon Product</h4>
                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                    <span aria-hidden="true">X</span>
                                                                </button>
                                                            </div>
                                                            <div class="modal-body">
                                                                <div class="col-md-12 col-sm-12 ">
                                                                    <div class="x_content">
                                                                        <div class="item form-group">
                                                                            <div class="col-md-12 col-sm-12 ">
                                                                              <asp:DropDownList ID="drdgalType" runat="server" lass="form-control" Height="40px" Width="700px" >
                                                                                <%--<asp:ListItem Text="Select Gallon Type" Value="select" Selected="False"></asp:ListItem>--%>
                                                                                   <asp:ListItem Text="Slim" Value="Slim Gallon" Selected="False"></asp:ListItem>
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
                                                                <%--BUTTON NI DIRI SA PAG STORE SA DATA NI GALLON--%>
                                                                <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add" ValidationGroup="a" OnClick="btnSave_Click"/>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 ">
                                                    <div class="x_panel">
                                                        <div class="x_content">
                                                            <h5>Product List</h5>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-md-12 col-sm-12 ">
                                                    <div class="x_panel">
                                                        <div class="x_title">
                                                            <h2>Gallon Products</h2>
                                                            <asp:Label ID="lbl_result" runat="server" Text="" ForeColor="Red" Font-Size="Large" Font-Bold="True"></asp:Label>
                                                            <br />
                                                            <div class="clearfix"></div>
                                                        </div>
                                                        <div class="x_content">
                                                            <div class="row">
                                                                <div class="col-sm-12">
                                                                    <div class="card-box table-responsive">
                                                                    <%-- LISTBOX STARTS  HERE--%>
                                                                        <br />
                                                                         <asp:ListBox ID="LstBoxProductGallon" runat="server" Width="1389px" Font-Bold="True" BackColor="#66FFFF" Height="204px"></asp:ListBox>
                                                                        <br />
                                                                        <asp:Button ID="Search" runat="server" Text="VIEW RECORD DETAIL" Width="249px"
                                                                        BackColor="Blue" OnClick="btnSearch_Click" ForeColor="White" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".display" />
                                                                         <%--<i class="fa fa-trash"> --%>
                                                                            <asp:Button ID="btnDelete" runat="server" Text="DELETE RECORD" Width="249px" 
                                                                        BackColor="Red" CssClass="btn btn-danger btn-sm" ForeColor="White" OnClick="btnDelete_Click" />
                                                                         <%--</i>--%>
                                                                        <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i> UPDATE RECORD DETAIL </button>
                                                                         <%--<asp:Button ID="btnUpdate" runat="server" Text="UPDATE RECORD DETAIL" Width="249px"
                                                                        BackColor="#009900" OnClick="btnUpdate_Click" ForeColor="White" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit" />--%>
                                                                        <br />
                                                                        <%--DISPLAY TABLE NI DIRI--%>
                                                                        <%--<table id="datatable" class="table table-striped table-bordered" style="width:100%">
                                                                            <thead>
                                                                                <tr>
                                                                                    <th>Gallon ID</th>
                                                                                    <th>Gallon Type</th>
                                                                                    <th>Quantity</th>
                                                                                    <th>Delivery Price</th>
                                                                                    <th>Pick-up Price</th>
                                                                                    <th>Image</th>
                                                                                    <th>Date Added</th>
                                                                                    <th>Action</th>
                                                                                </tr>
                                                                            </thead>
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td> <asp:TextBox ID="gal_idno" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>               
                                                                                    <td> <asp:TextBox ID="gal_Type" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                                                    <td> <asp:TextBox ID="qty" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                                                    <td> <asp:TextBox ID="deliveryPrice" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                                                    <td> <asp:TextBox ID="pickUpPrice" runat="server" BorderColor="transparent" BackColor="transparent" Width="250"></asp:TextBox> </td>
                                                                                    <td> <asp:TextBox ID="image" runat="server" BorderColor="transparent" BackColor="transparent" Width="250"></asp:TextBox> </td>
                                                                                    <td> <asp:TextBox ID="d8Added" runat="server" BorderColor="transparent" BackColor="transparent" Width="250"></asp:TextBox> </td>
                                                                                    
                                                                                    <td align="center"><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit"><i class="fa fa-edit"></i> </button>
                                                                                     <button type="button" class="btn btn-danger btn-sm"><i class="fa fa-trash"></i></button></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>--%>
                                                                        <%--TABLE END--%>
                                                                        <%-- DISPLAY CONTENT STARTS HERE--%>
                                                                        <div class="modal fade display" tabindex="-1" role="dialog" aria-hidden="true">
                                                                            <div class="modal-dialog modal-lg">
                                                                                <div class="modal-content">
                                                                                    <div id="demo-form" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title" id="myModalLabel">Product Information</h4>
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <span aria-hidden="true">X</span>
                                                                                            </button>
                                                                                        </div>
                                                                            <div class="modal-body">
                                                                                <div class="col-md-12 col-sm-12 ">
                                                                                    <div class="x_content">
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <h5>Gallon Idno:</h5> 
                                                                                                <asp:TextBox ID="gal_idno" runat="server" BorderColor="transparent" BackColor="transparent"  class=" btn btn-round waves-effect text-center" 
                                                                                         style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                          <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                             <h5>Gallon Type: </h5>
                                                                                             <asp:TextBox ID="gal_Type" runat="server" BorderColor="transparent" BackColor="transparent" class=" btn btn-round waves-effect text-center" 
                                                                                                 style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox> 
                                                                                        </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                        <h5>Quantity: </h5>
                                                                                     <asp:TextBox ID="qty" runat="server" BorderColor="transparent" BackColor="transparent" class=" btn btn-round waves-effect text-center" 
                                                                                         style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox> 
                                                                                         </div>
                                                                                        </div>
                                                                                         <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                        <h5>Delivery Price: </h5>
                                                                                     <asp:TextBox ID="deliveryPrice" runat="server" BorderColor="transparent" BackColor="transparent" class=" btn btn-round waves-effect text-center" 
                                                                                         style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox>
                                                                                        </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                        <h5>Pick-Up Price: </h5>
                                                                                     <asp:TextBox ID="pickUpPrice" runat="server" BorderColor="transparent" BackColor="transparent" Width="250" class=" btn btn-round waves-effect text-center" 
                                                                                         style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox> 
                                                                                         </div>
                                                                                        </div>
                                                                                         <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                        <h5>Image: </h5>
                                                                                     <asp:TextBox ID="image" runat="server" BorderColor="transparent" BackColor="transparent" Width="250" class=" btn btn-round waves-effect text-center" 
                                                                                         style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"> </asp:TextBox> 
                                                                                        </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                        <h5>Date Added: </h5>
                                                                                     <asp:TextBox ID="d8Added" runat="server" BorderColor="transparent" BackColor="transparent" Width="250" class=" btn btn-round waves-effect text-center" 
                                                                                         style="background-color:#bae1ff;font-size:18px;color:black;font-family:Bahnschrift;width:700px"></asp:TextBox> 
                                                                                         </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                                        <div class="modal-footer">
                                                                                            <%--<button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>--%>
                                                                                            <%--<i class="fa fa-trash"> 
                                                                                                <asp:Button ID="btnDelete" runat="server" CssClass="btn btn-danger btn-sm" Text="DELETE RECORD" OnClick="btnDelete_Click" /></i>--%>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <%--DISPLAY CONTENTS END HERE--%>

                                                                        <%--EDIT CONTENT STARTS HERE--%>
                                                                        <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                                                            <div class="modal-dialog modal-lg">
                                                                                <div class="modal-content">
                                                                                    <div id="demo-form3" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                                                                        <div class="modal-header">
                                                                                            <h4 class="modal-title" id="myModalLabel3">Edit Product Information</h4>
                                                                                            <asp:Label ID="lbResult" runat="server" Text="" ForeColor="Red" Font-Size="Large" Font-Bold="True"></asp:Label>
                                                            <br />
                                                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                                                                <span aria-hidden="true">X</span>
                                                                                            </button>
                                                                                        </div>
                                                                            <div class="modal-body">
                                                                                <div class="col-md-12 col-sm-12 ">
                                                                                    <div class="x_content">
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                              <asp:DropDownList ID="DrdGallonType" runat="server" lass="form-control" Height="40px" Width="400px" >
                                                                                                <%--<asp:ListItem Text="Select Gallon Type" Value="select" Selected="False"></asp:ListItem>--%>
                                                                                                   <asp:ListItem Text="Slim" Value="Slim Gallon" Selected="True"></asp:ListItem>
                                                                                                   <asp:ListItem Text="Round" Value="RoundGallon" ></asp:ListItem>
                                                                                            </asp:DropDownList>                                              
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <asp:TextBox ID="quantity" runat="server" class="form-control" TextMode="Number" placeholder="-               Quantity           -" ></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <asp:TextBox ID="DelPrice" runat="server" class="form-control" TextMode="Number" placeholder="-         Delivery Price      -"></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                <asp:TextBox ID="PickUp_Price" TextMode="Number" runat="server" class="form-control" type="text" placeholder="-         Pick-up Price      -"></asp:TextBox>
                                                                                            </div>
                                                                                        </div>
                                                                                        <div class="item form-group">
                                                                                            <div class="col-md-12 col-sm-12 ">
                                                                                                    <label class="small mb-1" ID="lblImage" for="imgUpload" runat="server">Product Image</label>
                                                                                                     <asp:FileUpload ID="FileUpload" runat="server"/> <br/> 
                                                                                                     <asp:Button ID="Button1" runat="server" class="form-control btn btn-dark btn-sm" Text="Upload File"/>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                                        <div class="modal-footer">
                                                                                            <%--<button type="button" class="btn btn-danger btn-sm" data-dismiss="modal" style="margin-right: 46%"><i class="fa fa-times"></i>Close</button>--%>
                                                                                            <asp:Button ID="btnUpdate" runat="server" Text="UPDATE RECORD DETAIL" Width="249px"
                                                                        BackColor="#009900" OnClick="btnUpdate_Click" ForeColor="White" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".display" />
                                                                                            <%--<button type="submit" class="btn btn-primary btn-sm"><i class="fa fa-edit"></i>UPDATE RECORD</button>--%>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                        <%--EDIT CONTENT ENDS HERE--%>
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


</asp:Content>

