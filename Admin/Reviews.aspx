<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Reviews.aspx.cs" Inherits="WRS2big_Web.Admin.Reviews" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
        <script>
window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
  animationEnabled: true,
  title: {
    text: "Sales Category Pie Graph - 2022"
  },
  data: [{
    type: "pie",
    startAngle: 240,
    yValueFormatString: "00",
    indexLabel: "{label} {y}",
    dataPoints: [
      {y: 20, label: "Container"},
      {y: 20, label: "Per Bottles"},
      {y: 70, label: "Accessories"},
    ]
  }]
});
chart.render();

}
    </script>
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
                                            <h5 class="m-b-10">CUSTOMER REVIEWS </h5>
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
                                    <div class="container">
                                        <h1 class="mt-5 mb-5">Review & Rating </h1>
                                        <div class="card">
                                            <div class="card-header">2BiG's Customers</div>
                                            <div class="card-body">
                                                <div class="row">
                                                    <div class="col-sm-4 text-center">
                                                        <h1 class="text-warning mt-4 mb-4">
                                                            <b><span id="average_rating">0.0</span> / 5</b>
                                                        </h1>
                                                        <div class="mb-3">
                                                            <i class="fas fa-star star-light mr-1 main_star"></i>
                                                            <i class="fas fa-star star-light mr-1 main_star"></i>
                                                            <i class="fas fa-star star-light mr-1 main_star"></i>
                                                            <i class="fas fa-star star-light mr-1 main_star"></i>
                                                            <i class="fas fa-star star-light mr-1 main_star"></i>
                                                        </div>
                                                        <h3><span id="total_review">0</span> Review</h3>
                                                    </div>
                                                    <div class="col-sm-4">
                                                        <p>
                                                            <div class="progress-label-left"><b>5</b> <i class="fas fa-star text-warning"></i></div>

                                                            <div class="progress-label-right">(<span id="total_five_star_review">0</span>)</div>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="five_star_progress"></div>
                                                            </div>
                                                        </p>
                                                        <p>
                                                            <div class="progress-label-left"><b>4</b> <i class="fas fa-star text-warning"></i></div>

                                                            <div class="progress-label-right">(<span id="total_four_star_review">0</span>)</div>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="four_star_progress"></div>
                                                            </div>
                                                        </p>
                                                        <p>
                                                            <div class="progress-label-left"><b>3</b> <i class="fas fa-star text-warning"></i></div>

                                                            <div class="progress-label-right">(<span id="total_three_star_review">0</span>)</div>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="three_star_progress"></div>
                                                            </div>
                                                        </p>
                                                        <p>
                                                            <div class="progress-label-left"><b>2</b> <i class="fas fa-star text-warning"></i></div>

                                                            <div class="progress-label-right">(<span id="total_two_star_review">0</span>)</div>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="two_star_progress"></div>
                                                            </div>
                                                        </p>
                                                        <p>
                                                            <div class="progress-label-left"><b>1</b> <i class="fas fa-star text-warning"></i></div>

                                                            <div class="progress-label-right">(<span id="total_one_star_review">0</span>)</div>
                                                            <div class="progress">
                                                                <div class="progress-bar bg-warning" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" id="one_star_progress"></div>
                                                            </div>
                                                        </p>
                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-5" id="review_content"></div>
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
