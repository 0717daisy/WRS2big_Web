<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="EmployeeRecord.aspx.cs" Inherits="WRS2big_Web.Admin.Employees" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   <%--  <form id="form1" runat="server">--%>
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
                                            <h5 class="m-b-10">EMPLOYEES </h5>
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
                                  <div class="right_col" role="main">
                                    <div class="">
                                     <div class="clearfix">
                                        <%-- add employee button--%>
                                         <button type="button" class="btn btn-success btn-md" data-toggle="modal" data-target=".add"><i class="fa fa-plus"></i> Add Employee</button>
                                         <%--input employee id to search record--%>  
                                          <%--<div class="input-group form-group md-6 sm-6">                                                                                  
                                          <asp:TextBox ID="txtidno" class="form-control" runat="server" placeholder="Employee ID" style="position:relative; float:right; margin-right:50px; width:auto"></asp:TextBox>    --%>    
                                          <%-- search button--%>         
                                           <%-- <asp:Button ID="btnSearch" class="btn btn-primary" runat="server" Text="Search" OnClick="btnSearch_Click"  style="position:relative; float:right; margin-right:63px;" />--%>
    
                                       <div class="modal fade add" tabindex="-1" role="dialog" aria-hidden="true">
                                       <div class="modal-dialog modal-dialog-centered modal-md">
                                        <div class="modal-content">
                                        <form id="demo-form" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                        <div class="modal-header">
                                        <h4 class="modal-title" id="myModalLabel">Add Employee Records</h4>
                                            <%--exit button--%>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">X</span> </button>
                                        </div>
                                        <div class="modal-body">
                                        <div class="col-md-12 col-sm-12 ">
                                        <div class="x_content">
                                       <%-- <div class="item form-group">--%>
                                        <div class="col-md-12 col-sm-12 ">
                                           <%-- input lastname--%>
                                        <strong>Lastname:</strong>
                                        <asp:TextBox ID="txtlastname" runat="server" class="form-control" placeholder="Employees' Lastname"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="reqlname" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtlastname" ValidationGroup="a"></asp:RequiredFieldValidator>
                                        </div>
                                        <%--</div>--%>
                                        <%--<div class="item form-group">--%>
                                         <div class="col-md-12 col-sm-12">
                                             <%--firstname--%>
                                         <strong>Firstname:</strong>
                                          <asp:TextBox ID="txtfirstname" runat="server" class="form-control" placeholder="Employees' Firstname"></asp:TextBox>
                                             <asp:RequiredFieldValidator ID="reqfname" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtfirstname" ValidationGroup="a"></asp:RequiredFieldValidator>
                                          </div>
                                          <%--</div>--%>
                                            <%--<div class="item form-group">--%>
                                         <div class="col-md-12 col-sm-12">
                                             <%--middlename--%>
                                         <strong>Middlename (Optional):</strong>
                                          <asp:TextBox ID="txtmidname" runat="server" class="form-control" placeholder="Employees' Middlename"></asp:TextBox>   
                                          </div>
                                          <%--</div>--%>
                                          <%--<div class="item form-group">--%>
                                          <div class="col-md-12 col-sm-12">
                                              <%--date of birth--%>
                                          <strong>Date of Birth:</strong>
                                            <asp:TextBox ID="txtbirthdate" runat="server" class="form-control" placeholder="Employees' Date of Birth" TextMode="Date"></asp:TextBox>                                         <asp:RequiredFieldValidator ID="reqdob" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtbirthdate" ValidationGroup="a"></asp:RequiredFieldValidator>    
                                           </div>
                                           <%--</div>--%>
                                          <%-- <div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                               <%--gender--%>
                                           <strong>Gender:</strong>
                                               <asp:DropDownList ID="drdgender" runat="server" Height="40px" Width="364px">
                                                   <asp:ListItem Text="Select" Value="select" Selected="True"></asp:ListItem>
                                                   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                   <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
                                               </asp:DropDownList>
                                           <%--</div>--%>
                                           </div>
                                          <%-- <div class="item form-group">--%> 
                                           <div class="col-md-12 col-sm-12">
                                               <%--address--%>
                                           <strong>Address:</strong>
                                               <asp:TextBox ID="txtaddress" runat="server" class="form-control" placeholder="Employees' Address"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="reqaddress" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtaddress" ValidationGroup="a"></asp:RequiredFieldValidator> 
                                          <%-- </div>--%>
                                           </div>
                                         <%-- <div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                               <%--contact number--%>
                                           <strong>Contact Number:</strong>
                                                <asp:TextBox ID="txtcontactnum" runat="server" class="form-control" placeholder="Employees' Contact number" TextMode="Phone" Value=""></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="reqcontact" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtcontactnum" ValidationGroup="a"></asp:RequiredFieldValidator> 
                                           <%--</div>--%>
                                           </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                              <%-- email--%>
                                           <strong>Email Address:</strong>
                                               <asp:TextBox ID="txtemail"  runat="server" class="form-control" placeholder="Employees' email@example.com"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="reqemail" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtemail" ValidationGroup="a"></asp:RequiredFieldValidator>
                                          <%-- </div>--%>
                                           </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                              <%-- date hired--%>
                                           <strong>Date Hired:</strong>
                                               <asp:TextBox ID="txtdateHired" TextMode="Date" runat="server" class="form-control" placeholder="Employees' Date Hired"></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="reqdoh" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtdateHired" ValidationGroup="a"></asp:RequiredFieldValidator>
                                         <%--   </div>--%>
                                            </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                               <%--emergency contact--%>
                                           <strong>In case of emergency, Contact:</strong>
                                               <asp:TextBox ID="txtemergencycontact" runat="server" class="form-control" placeholder="Employees' emergencey contact" TextMode="Phone" Value=""></asp:TextBox>
                                               <asp:RequiredFieldValidator ID="reqemercontact" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="txtemergencycontact" ValidationGroup="a"></asp:RequiredFieldValidator>
                                           <%-- </div>--%>
                                            </div>
                                           <%-- <div class="item form-group">--%>
                                            <div class="col-md-12 col-sm-12">
                                                <%--role--%>
                                                <strong>Role:</strong>
                                               <asp:DropDownList ID="drdrole" runat="server" Height="40px" Width="364px">
                                                   <asp:ListItem Text="-----Choose One-----" Value="select" Selected="True"></asp:ListItem>
                                                   <asp:ListItem Text="Cashier" Value="Cashier"></asp:ListItem>
                                                   <asp:ListItem Text="Driver" Value="Driver" ></asp:ListItem>
                                                   <asp:ListItem Text="Water Refiller" Value="Water Refiller" ></asp:ListItem>
                                                   <asp:ListItem Text="WRS Helper" Value="WRS Helper" ></asp:ListItem>
                                               </asp:DropDownList>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="***" ForeColor="Red" Font-Bold="true" ControlToValidate="drdrole" ValidationGroup="a"></asp:RequiredFieldValidator>
                                            <%--  </div>--%>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="modal-footer">
                                           <%-- add data button--%>
                                           <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add Data" ValidationGroup="a" OnClick="btnAdd_Click"/>
                                            </div>
                                           </form>
                                         </div>
                                        </div>
                                      </div>
                                        <%-- end add employee--%>
                                         <%--display table starts--%>
                                       <div class="row">
                                        <div class="col-md-12 col-sm-12">
                                         <div class="x_panel">
                                         <div class="x_title">
                                           <h2>Employee Records' <small>List</small></h2>
                                            <div class="clearfix"></div>
                                            </div>
                                             <div class="x_content">
                                              <div class="row">
                                               <div class="col-sm-12">
                                                <div class="card-box table-responsive">
                                                <table id="datatable1" class="table table-striped table-bordered" style="width:100%">
                                                   <%-- display table--%>

                                                  <%--  table head--%>
                                                 <thead>
                                                 <tr id="trialtable">
                                                  <th>Employee ID</th>
                                                  <th>Full Name</th>
                                                  <th style="width:10%">Date of birth</th>
                                                  <th>Gender</th>
                                                  <th style="width:15%">Address</th>
                                                  <th>Contact</th>
                                                  <th>Email Address</th>
                                                  <th>Date hired</th>
                                                  <th>In case of emergency, contact:</th>
                                                  <th>Role</th>
                                                  <th width="280px">Action</th>
                                                  </tr>
                                                  </thead>

                                                   <%-- tble body--%>
                                                  <tbody id="emprecords">
                                                  <tr>
                                                  <td> <asp:TextBox ID="idno" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>               
                                                  <td> <asp:TextBox ID="fullname" runat="server" BorderColor="red" BackColor="transparent"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="dob" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="gender" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="address" runat="server" BorderColor="transparent" BackColor="transparent" Width="250"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="contact" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="emailadd" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="datehired" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                  <td> <asp:TextBox ID="emergencycontact" runat="server" BorderColor="transparent" BackColor="transparent"></asp:TextBox> </td>
                                                  <td align="center"> <asp:TextBox ID="role" runat="server" BorderColor="transparent" BackColor="Transparent"> </asp:TextBox> </td>
                                                  <td align="center">

                                                  <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target=".edit" title="Edit Employee Record"><i class="fa fa-edit">Edit</i></button>
                                                   <asp:Button ID="btnDelete" runat="server" Text="Delete" OnClick="btnDelete_Click" class="btn btn-danger btn-sm" title="Delete Employee Record"/>       
                                                  </td>
                                                </tr>
                                               </tbody>
                                             </table>
                                                    <asp:GridView ID="GridView1" runat="server">

                                                    </asp:GridView>
                                    <div class="modal fade edit" tabindex="-1" role="dialog" aria-hidden="true">
                                      <div class="modal-dialog modal-dialog-centered modal-md">
                                        <div class="modal-content">
                                         <form id="demo-form2" data-parsley-validate="" class="form-horizontal form-label-left" novalidate="">
                                             <div class="modal-header">
                                              <h4 class="modal-title" id="myModalLabel2">Edit Employee Details</h4>
                                               <button type="button" class="close" data-dismiss="modal" aria-label="Close"> <span aria-hidden="true">X</span></button>
                                            </div>
                                        <div class="modal-body">
                                        <div class="col-md-12 col-sm-12 ">
                                        <div class="x_content">
                                        <div class="item form-group">
                                        <div class="col-md-12 col-sm-12 ">
                                            <%--MODIFY RECORDS--%>
                                            <%--input lastname--%>
                                        <strong>Lastname:</strong>
                                        <asp:TextBox ID="txtlname" runat="server" class="form-control" placeholder="Employees' Lastname"></asp:TextBox>
                                        </div>
                                        </div>
                                        <div class="item form-group">
                                         <div class="col-md-12 col-sm-12">
                                             <%--firstname--%>
                                         <strong>Firstname:</strong>
                                          <asp:TextBox ID="txtfname" runat="server" class="form-control" placeholder="Employees' Firstname"></asp:TextBox>
                                          </div>
                                          </div>
                                            <div class="item form-group">
                                         <div class="col-md-12 col-sm-12">
                                             <%--middlename--%>
                                         <strong>Middlename (Optional):</strong>
                                          <asp:TextBox ID="txtmname" runat="server" class="form-control" placeholder="Employees' Middlename"></asp:TextBox>   
                                          </div>
                                          </div>
                                          <%--<div class="item form-group">--%>
                                          <div class="col-md-12 col-sm-12">
                                              <%--date of birth--%>
                                          <strong>Date of Birth:</strong>
                                            <asp:TextBox ID="txtdob" runat="server" class="form-control" placeholder="Employees' Date of Birth" TextMode="Date"></asp:TextBox>
                                           </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                               <%--gender--%>
                                           <strong>Gender:</strong>
                                               <asp:DropDownList ID="drd_Gender" runat="server" Height="40px" Width="364px">
                                                   <asp:ListItem Text="Select" Value="select" Selected="True"></asp:ListItem>
                                                   <asp:ListItem Text="Male" Value="Male"></asp:ListItem>
                                                   <asp:ListItem Text="Female" Value="Female" ></asp:ListItem>
                                               </asp:DropDownList>
                                           <%--</div>--%>
                                           </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                               <%--address--%>
                                           <strong>Address:</strong>
                                               <asp:TextBox ID="txt_Address" runat="server" class="form-control" placeholder="Employees' Address"></asp:TextBox>
                                           </div>
                                          <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                               <%--contact number--%>
                                           <strong>Contact Number:</strong>
                                                <asp:TextBox ID="txt_Contactnum" runat="server" class="form-control" placeholder="Employees' Contact number" TextMode="Phone" Value=""></asp:TextBox>
                                           </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                              <%-- email--%>
                                           <strong>Email Address:</strong>
                                               <asp:TextBox ID="txtemailAdd"  runat="server" class="form-control" placeholder="Employees' email@example.com"></asp:TextBox>
                                           </div>
                                           <%--<div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                                <%-- date hired--%>
                                           <strong>Date Hired:</strong>
                                               <asp:TextBox ID="txtD8hired" TextMode="Date" runat="server" class="form-control" placeholder="Employees' Date Hired"></asp:TextBox>
                                            </div>
                                          <%-- <div class="item form-group">--%>
                                           <div class="col-md-12 col-sm-12">
                                                <%-- emergency contact--%>
                                           <strong>In case of emergency, Contact:</strong>
                                               <asp:TextBox ID="txtEmContactnum" runat="server" class="form-control" placeholder="Employees' emergencey contact" TextMode="Phone" Value=""></asp:TextBox>
                                            </div>
                                           <%-- <div class="item form-group">--%>
                                            <div class="col-md-12 col-sm-12">
                                                 <%-- role--%>
                                                <strong>Role:</strong>
                                               <asp:DropDownList ID="drd_Role" runat="server" Height="40px" Width="364px">
                                                   <asp:ListItem Text="-----Choose One-----" Value="select" Selected="True"></asp:ListItem>
                                                   <asp:ListItem Text="Cashier" Value="Cashier"></asp:ListItem>
                                                   <asp:ListItem Text="Driver" Value="Driver" ></asp:ListItem>
                                                   <asp:ListItem Text="Water Refiller" Value="Water Refiller" ></asp:ListItem>
                                                   <asp:ListItem Text="WRS Helper" Value="WRS Helper" ></asp:ListItem>
                                               </asp:DropDownList>
                                                <%--</div>--%>
                                              </div>
                                            </div>
                                          </div>
                                        </div>
                                        <div class="modal-footer">
                                            <%--button save --%>
                                            <asp:Button ID="btnUpdate" class="btn btn-primary" runat="server" Text="Save" OnClick="btnUpdate_Click" />
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
    </div>
<%--         </form>--%>
</asp:Content>
