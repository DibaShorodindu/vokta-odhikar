@extends('layout.app')
@section('body')
    <section class="section-dashboard">
        @include('layout.sibar')
        <!-- START MAIN DASHBOARD -->
        <section class="section-dashboard-main">
            <!-- START HEADER -->
            <section class="section-dashboard--header">
                <div class="user-details">
                    <h1 class="user-name">ওমর ফারুক</h1>
                    <span class="user-role"> মহাপরিচালক </span>
                </div>
                <div class="notification">
                    <button type="button" class="btn notification-btn">
                        <div class="notification--icon">
                            <i class="bi bi-bell"></i>
                        </div>
                        <div class="notification--badge"></div>
                    </button>
                </div>

                <!-- START SHOW WHEN CLICKED ON NOTIFICATION -->
                <div
                        class="u-box-shadow-1 notification__sidebar d-none animate__animated animate__fadeInRightBig"
                >
                    <div class="notification--header">
                        <div class="notification--header-title">
                            <h5>নোটিফিকেশান</h5>
                        </div>
                        <div class="notification--header-icons">
                            <div class="btn close-btn">
                                <i class="bi bi-x-lg"></i>
                            </div>
                        </div>
                    </div>
                    <div class="notification--body">
                        <a class="card" href="#">
                            <div class="card-body">
                                <div class="notification-icon">
                                    <i class="bi bi-envelope"></i>
                                </div>
                                <div class="notification-box">
                                    <div class="notification-text">
                                        একটি নতুন অভিযোগ জমা দেওয়া হয়েছে।
                                    </div>
                                    <div class="notification-time">
                                        <span> ২৬শে এপ্রিল </span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- END SHOW WHEN CLICKED ON NOTIFICATION -->
            </section>
            <!-- END HEADER -->

            <!-- START CONTENT -->
            <section class="section-dashboard--content">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12 p-5 mt-4">
                            <canvas id="myChart" height="100" width="130"></canvas>
                        </div>
                    </div>
                </div>
            </section>
            <!-- END CONTENT -->
        </section>
        <!-- END MAIN DASHBOARD -->
    </section>

    <script>

        
        axios.get('/chart')
        .then(function (response) {
            if(response.status === 200) {
                let res = response.data;
                if(res.status === 200){
                    const labels = ['January', 'February', 'March', 'April', 'May', 'June'];

                    const data = {
                        labels: res.dates,
                        datasets: [
                            {
                                label: 'Number of cases filed',
                                backgroundColor: 'rgba(75, 192, 192, 0.2)',
                                borderColor: 'rgba(75, 192, 192, 1)',
                                borderWidth: 2,
                                data: res.caseCount,
                            },
                        ],
                    };

                    const config = {
                        type: 'bar',
                        data: data,
                        options: {},
                    };

                    const myChart = new Chart(document.getElementById('myChart'), config);
                }
            }
        })
        .catch(function (error) {
            console.log(error);
        })

    </script>
@endsection