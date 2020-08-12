<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage2.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="mycss" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mycontent" runat="Server">


    <!--**********************************
            Content body start
***********************************-->
    <div class="content-body">
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">藝術是生活的升華，設計是藝術的呈現。</h1>
                <p class="lead">再長的路，一步步也能走完，再短的路，不邁開雙腳也無法到達。</p>
            </div>
        </div>
        <div class="container-fluid mt-3">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-1">
                        <div class="card-body">

                            <h3 class="card-title text-white">專案進度</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">60%</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-shopping-cart"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-2">
                        <div class="card-body">
                            <h3 class="card-title text-white">Net Profit</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">$ 8541</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-money"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-3">
                        <div class="card-body">
                            <h3 class="card-title text-white">New Customers</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">4565</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-users"></i></span>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="card gradient-4">
                        <div class="card-body">
                            <h3 class="card-title text-white">Customer Satisfaction</h3>
                            <div class="d-inline-block">
                                <h2 class="text-white">99%</h2>
                                <p class="text-white mb-0">Jan - March 2019</p>
                            </div>
                            <span class="float-right display-5 opacity-5"><i class="fa fa-heart"></i></span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body pb-0 d-flex justify-content-between">

                                    <script type="text/javascript" src="https://ssl.gstatic.com/trends_nrtr/2213_RC01/embed_loader.js"></script>
                                    <script type="text/javascript"> trends.embed.renderExploreWidget("TIMESERIES", { "comparisonItem": [{ "keyword": "/m/02rfdq", "geo": "TW", "time": "today 12-m" }], "category": 0, "property": "" }, { "exploreQuery": "geo=TW&q=%2Fm%2F02rfdq&date=today 12-m", "guestPath": "https://trends.google.com:443/trends/embed/" }); </script>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>




        </div>

        <!-- #/ container -->
    </div>
    <!--**********************************
            Content body end
        ***********************************-->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="myjavascript" runat="Server">
</asp:Content>
