@extends('layout.app')
@section('body')
    <section class="section-dashboard">
        @include('layout.sibar')
        <!-- START MAIN DASHBOARD -->
        <section class="section-dashboard-main">
            <!-- START HEADER -->
            <section class="section-dashboard--header border-bottom">
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
                <div class="u-box-shadow-1 notification__sidebar d-none animate__animated animate__fadeInRightBig">
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
                                    <div class="notification-text">একটি নতুন অভিযোগ জমা দেওয়া হয়েছে।</div>
                                    <div class="notification-time">
                                        <span> ২৬শে এপ্রিল  </span>
                                    </div>
                                </div>
                            </div>
                        </a>

                    </div>
                </div>
                <!-- END SHOW WHEN CLICKED ON NOTIFICATION -->
            </section>
            <!-- END HEADER -->


            <section id="ShowAll">
                <!-- START SUB HEADER-->
                <section class="section-dashboard--sub-header border-bottom">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">
                                <div class="dropdown">
                                    <button class="btn btn-filter dropdown-toggle" type="button" id="caseStatusFilter"
                                            data-bs-toggle="dropdown" aria-expanded="false">
                                        ফিল্টার কেস স্থিতি
                                    </button>
                                    <ul class="dropdown-menu" aria-labelledby="caseStatusFilter">
                                        <li>
                                            <a  data-id="2" class="caseStatusFilter dropdown-item" href="#">চলমান</a>
                                        </li>
                                        <li>
                                            <a  data-id="1" class="caseStatusFilter dropdown-item" href="#">আপনার পক্ষে</a>
                                        </li>
                                        <li>
                                            <a  data-id="0" class="caseStatusFilter dropdown-item" href="#">আপনার বিপক্ষে</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- END SUB HEADER -->

                <!-- START CONTENT -->
                <section class="section-dashboard--content">
                    <div class="container">
                        <div class="row">
                            <div id="getAllComplain" class="col-md-12">
                                <table class="table">
                                    <thead id="TableHead">
                                    
                                    </thead>
                                    <tbody id="TableBody">

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </section>
                <!-- END CONTENT -->
            </section>
            

            <!-- START CONTENT -->
        <section id="ShowCase" class="section-dashboard--content section-caseDetails p-5">
            
        </section>
        <!-- END MAIN DASHBOARD -->
    </section>



    <!-- Start Edit Form Modal -->
    <div class="modal fade" id="editCase" tabindex="-1" aria-labelledby="editCaseLabel"
         aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="modal-title fw-bold">
                        এডিট
                    </div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="form">
                        <input type="hidden" id="data-id">
                        <div class="mb-5 text-start">
                            <label for="hearingDate" class="form-label">শুনানির তারিখ</label>
                            <input type="date" class="form-control" id="hearingDate">
                        </div>
                        <div class="mb-5 text-start">
                            <label for="caseStatus" class="form-label">কেস স্থিতি</label>

                            <div class="dropdown w-50">
                                <select id="status">
                                    <option value=""> কেস স্থিতি নির্বাচন করুন</option>
                                    <option value="2">চলমান</option>
                                    <option value="1">আপনার পক্ষে</option>
                                    <option value="0">আপনার বিপক্ষে</option>
                                </select>
                                {{--<button class="btn btn-filter dropdown-toggle" type="button" id="caseStatus"
                                        data-bs-toggle="dropdown" aria-expanded="false">
                                    কেস স্থিতি নির্বাচন করুন
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="caseStatus">
                                    <li>
                                        <a id="caseStatus01" class="dropdown-item" href="#">চলমান</a>
                                    </li>
                                    <li>
                                        <a id="caseStatus02" class="dropdown-item" href="#">আপনার পক্ষে</a>
                                    </li>
                                    <li>
                                        <a id="caseStatus03" class="dropdown-item" href="#">আপনার বিপক্ষে</a>
                                    </li>
                                </ul>--}}
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-text">সংরক্ষণ</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- End Edit Form Modal -->



    <script>
        let table = $('#Table');
        let showAll = $('#ShowAll');
        let showCase = $('#ShowCase');
        let tableBody = $('#TableBody');
        let tableHead = $('#TableHead');
        let caseFilter = $('.caseStatusFilter');
        
        
        GetAll();
        GetSingle();
        Delete();
        Update();



        function  GetAll() {
            axios.get('/get-all')
            .then(function(response){
                if(response.status === 200 && response.data.status === 200){
                    let complains = response.data.complains;
                    table.attr("class", "table table-striped");
                    tableHead.empty();
                    tableBody.empty();
                    tableHead.append(`
                        <tr>
                            <th>কেস নম্বর</th>
                            <th>অভিযোগের বিষয়</th>
                            <th>অভিযোগের তারিখ</th>
                            <th>শুনানির তারিখ</th>
                            <th>কেস স্থিতি</th>
                            <th></th>
                            <th></th>
                        </tr>
                    `)
                    complains.forEach(function (item) {
                        TableRow(item);
                    })
                }
            })
            .catch(function(error){
                console.log(error);
            })
        }

        function Delete() {
            tableBody.on('click', '.delete', function (e) {
                e.preventDefault();
                let id = $(this).attr('data-id');
                axios.get(`/delete-case/${id}`)
                .then(function (response) {
                    if (response.status === 200 && response.data.status === 200){
                        GetAll();
                        // alert(response.data.message);
                    }
                    else{
                        alert(response.data.message);
                    }
                })
                .catch(function (error) {
                    console.log(error)
                    alert("server error");
                })
            })
        }

        
        function Update() {
            $('#form').on('submit', function (e) {
                e.preventDefault();
                let formData = new FormData();
                let id = $('#form #data-id').val();
                formData.append('case_status', $('#form #status').val() );
                formData.append('hearing_date', $('#form #hearingDate').val())
                axios.post(`/update-case/${id}`, formData)
                .then(function (response) {
                    if(response.status === 200 && response.data.status === 200){
                        GetAll();
                        $('.btn-close').trigger('click');
                        $('#form').trigger('reset');
                        // alert(response.data.message);
                    }
                    else{
                        alert(error)
                    }
                })
                .catch(function (error) {
                    console.log(error)
                    alert('server error')
                })
            })
        }
        
        

        function GetSingle() {
            tableBody.on('click', '.edit', function (e) {
                let id = $(this).attr('data-id');

                var config = {
                    method: 'get',
                    url: `/details-case/${id}`,
                    headers: {
                        'Authorization': "{{@session('__token')}}"
                    }
                };

                axios(config)
                    .then(function (response) {
                        console.log(response.data.caseDetails)
                        if(response.status === 200 && response.data.status === 200){
                            let data = response.data.caseDetails;
                            $('#form #data-id').val(data.id);
                            $('#form #hearingDate').val(data.hearing_date);
                            $('#form #status').val(data.case_status);
                        }
                        else{
                            alert("error")
                        }
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            })
        }

        show();
        function show() {
            tableBody.on('click', '.show', function (e) {
                e.preventDefault();
                let id = $(this).attr('data-id');
                axios.get(`/show-case/${id}`)
                .then(function (response) {
                    if (response.status === 200 && response.data.status === 200){
                        let complains_details = response.data.complains;
                        showAll.empty();
                        DetailTable(complains_details);
                    }
                    else{
                        alert(response.data.message);
                    }
                })
                .catch(function (error) {
                    console.log(error)
                    alert("server error");
                })
            })
        }
        
        filter();
        function filter() {
           caseFilter.on('click', function (e) {
                e.preventDefault();
                let id = $(this).attr('data-id');
                axios.get(`/filter-case/${id}`)
                .then(function (response) {
                    if (response.status === 200 && response.data.status === 200){
                        let complains = response.data.complains;
                    table.attr("class", "table table-striped");
                    tableHead.empty();
                    tableBody.empty();
                    tableHead.append(`
                        <tr>
                            <th>কেস নম্বর</th>
                            <th>অভিযোগের বিষয়</th>
                            <th>অভিযোগের তারিখ</th>
                            <th>শুনানির তারিখ</th>
                            <th>কেস স্থিতি</th>
                            <th></th>
                            <th></th>
                        </tr>
                    `)
                    complains.forEach(function (item) {
                        TableRow(item);
                    })
                    }
                    else{
                        alert(response.data.message);
                    }
                })
                .catch(function (error) {
                    console.log(error)
                    alert("server error");
                })
            })
        }

        function DetailTable(item) {
            let choloman = `
                <span class="caseStatus caseStatus--running">
                    চলমান
                </span>
            `;
            let bipokkhe = `
               <span class="caseStatus caseStatus--against">
                আপনার বিপক্ষে
              </span>
            `;
            let pokkhe = `
                <span class="caseStatus caseStatus--favor">
                    আপনার পক্ষে
                  </span>
            `;
            showCase.append(`
            <div class="container">
              <div class="row">
                <div class="col-md-12">
                  <h2 id="caseNo">কেস নম্বর : <span>${item.case_no}</span></h2>
                </div>
              </div>
              <div class="row pt-4">
                <div class="col-md-5">
                  <h3 class="text-decoration-underline">ব্যক্তির বিবরণ</h3>
  
                  <table class="table table-scrollable">
                    <tbody id="UserDetails">
                        <tr>
                      <td>নাম:</td>
                      <td>${item.name}</td>
                    </tr>
                    <tr>
                      <td>পিতার নাম:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>মাতার নাম:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>জন্ম তারিখ:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>জাতীয় পরিচয়পত্র নাম্বার:</td>
                      <td>${item.nid}</td>
                    </tr>
                    <tr>
                      <td>মোবাইল নাম্বার:</td>
                      <td>${item.phone}</td>
                    </tr>
                    <tr>
                      <td>ই-মেইল:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>লিঙ্গ:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>স্থায়ী ঠিকানা:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>বর্তমান ঠিকানা:</td>
                      <td></td>
                    </tr>
                    </tbody>
                  </table>
                </div>
  
                <div class="col-md-7">
                  <h3 class="text-decoration-underline">অভিযোগের বিবরণ</h3>
  
                  <table class="table table-scrollable">
                    <tbody id="UserCaseDetails">
                        <tr>
                      <td>প্রতিষ্ঠানের নাম:</td>
                      <td>${item.organization_name}</td>
                    </tr>
                    <tr>
                      <td>পণ্যের নাম:</td>
                      <td>${item.product_name}</td>
                    </tr>
                    <tr>
                      <td>প্রতিষ্ঠানের ধরন:</td>

                      {{-- <td>${item.department}</td>

                        <td>${item.subDepartment}</td> --}}
                    </tr>
                    <tr>
                      <td>প্রতিষ্ঠানের অবস্থান:</td>
                      <td></td>
                    </tr>
                    <tr>
                      <td>পণ্যের ছবি:</td>
                      <td>
                        <img
                          src="{{ asset('/') }}uploads/product/${item.product_photo}"
                          alt="productImage"
                          class="img-fluid"
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>পণ্য ক্রয়ের রসিদ:</td>
                      <td>
                        <img
                          src="{{ asset('/') }}assets/images/${item.invoice_photo}"
                          alt="productReceipt"
                          class="img-fluid"
                        />
                      </td>
                    </tr>
                    <tr>
                      <td>দপ্তর:</td>
                      <td>${item.department}, ${item.subDepartment}</td>
                    </tr>
                    <tr>
                      <td>অভিযোগের বিষয়:</td>
                      <td>
                        ${item.subject}
                      </td>
                    </tr>
                    <tr>
                      <td>অভিযোগের বিবরণ:</td>
                      <td>
                        ${item.description}
                      </td>
                    </tr>
                    <tr>
                      <td>বর্তমান ঠিকানা:</td>
                      <td></td>
                    </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </section>
          <!-- END CONTENT -->
            `)
            
        }
        
        function TableRow(item) {
            let choloman = `
                <span class="caseStatus caseStatus--running">
                    চলমান
                </span>
            `;
            let bipokkhe = `
               <span class="caseStatus caseStatus--against">
                আপনার বিপক্ষে
              </span>
            `;
            let pokkhe = `
                <span class="caseStatus caseStatus--favor">
                    আপনার পক্ষে
                  </span>
            `;
            tableBody.append(`
                 <tr>
                    <!-- <th scope="row">
                      <input class="form-check-input" type="checkbox">
                    </th> -->
                    <td>
                        <a href="#" data-id="${item.id}" class="show">
                            ${item.case_no}
                        </a>
                    </td>
                    <td>
                        ${item.subject}
                    </td>
                    <td>${(item.apply_date != null) ? item.apply_date : "----"}</td>
                    <td>${(item.hearing_date != null) ? item.hearing_date : "----"}</td>
                    <td style="width: 20rem;">
                        ${(item.case_status == 0 ? bipokkhe : (item.case_status == 1) ? pokkhe : choloman )}
                    </td>
                    <td>
                        <button type="button" data-id="${item.id}" class="btn edit p-0" data-bs-toggle="modal" data-bs-target="#editCase">
                            <i class="bi bi-pencil text-warning"></i>
                        </button>

                    </td>
                    <td>
                        <a href="#" data-id="${item.id}" class="delete">
                            <i class="bi bi-trash text-danger"></i>
                        </a>
                    </td>
                </tr>
            `)
        }

        


    </script>
@endsection