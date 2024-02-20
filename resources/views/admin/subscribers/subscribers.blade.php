{{-- This page (view) is rendered from subscribers() method in Admin/NewsletterController.php Controller --}}
@extends('admin.layout.layout')
<style>
   
    .small-modal {
  width: 300px; /* Adjust the width as per your requirement */
  font-size: 14px; /* Adjust the font size as per your requirement */
}
</style>

@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Subscribers</h4>
                            
                            <div class="col-md-12 ">
                        <form class="notification-form shadow rounded" method="get" action="{{url('admin/subscribers')}}">
                           <div class="row dashboard-header">
                              <div class="col-md-12">
                                 <div class="row mt-3">
                                    <div class="col-md-12 boder-danger me-5 pe-5">
                                       <div class="row mb" style="margin-bottom: 30px;">
                                          <div class="col-sm-1">
                                             <p class="text-dark"><b><strong>Filters</strong></b></p>
                                          </div>
                                          <div class="col-sm-3 end-date">
                                               <p class="text-dark"><strong>Date From:</strong></p>
                                               <div class="input-group date d-flex" id="datepicker1">
                                                   <input type="date" class="form-control" name="startt" id="startdate" value="" placeholder="dd-mm-yyyy" />
                                               </div>
                                           </div>
                                           <div class="col-sm-3 end-date">
                                               <p class="text-dark"><strong>Date From:</strong></p>
                                               <div class="input-group date d-flex" id="datepicker2">
                                                   <input type="date" class="form-control" name="endd" id="enddate" value="" placeholder="dd-mm-yyyy" />
                                               </div>
                                           </div>
                                          
                                          <div class="col-md-1 text-end " style="margin-left: 10px; margin-top:40px;">
                                             <button class="btn bg-gradient-success text-white shadow-lg" type="submit">Filter</button>
                                          </div>
                                          <div class="col-md-1 text-end " style="margin-left: 10px; margin-top:40px;">
                                             <button class="btn bg-gradient-success text-white shadow-lg" type="submit">Reset</button>
                                          </div>
                                          

                                       </div>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </form>
                     </div>
                            {{-- Export Subscribers (the `newsletter_subscribers` database table) as an Excel file Button --}} 
                            <!--<a href="{{ url('admin/export-subscribers') }}" style="max-width: 100px; float: right" class="btn btn-block btn-primary">Export</a>-->



                            {{-- Displaying The Validation Errors: https://laravel.com/docs/9.x/validation#quick-displaying-the-validation-errors AND https://laravel.com/docs/9.x/blade#validation-errors --}}
                            {{-- Determining If An Item Exists In The Session (using has() method): https://laravel.com/docs/9.x/session#determining-if-an-item-exists-in-the-session --}}
                            {{-- Our Bootstrap success message in case of updating admin password is successful: --}}
                            @if (Session::has('success_message')) <!-- Check AdminController.php, updateAdminPassword() method -->
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <strong>Success:</strong> {{ Session::get('success_message') }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif


                            <div class="table-responsive pt-3">
                                {{-- DataTable --}}
                                <table id="subscribers" class="table table-bordered"> {{-- using the id here for the DataTable --}}
                                    <thead>
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>ID</th>
                                            <th>Date</th>
                                            <th>Time</th>
                                             <th>Name</th>
                                            <th>Email</th>
                                            <th>Mobile</th>
                                            <th>Status</th>
                                            <th style="width: 200px; border: none;">Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>


                                        @foreach ($subscribers as $subscriber)
                                            <tr>
                                                <td>{{ $loop->index+1}}</td>
                                                <td>{{ $subscriber['id'] }}</td>
                                                 <td>{{ \Carbon\Carbon::parse($subscriber['created_at'])->format('Y-m-d') }}</td>
                                                <td>{{ \Carbon\Carbon::parse($subscriber['created_at'])->format('H:i:s') }}</td>
                                                <td>{{ $subscriber['name'] }}</td>
                                                <td>{{ $subscriber['email'] }}</td>
                                                <td>{{ $subscriber['mobile'] }}</td>
                                                <td>
                                                    @if ($subscriber['status'] == 1)
                                                        <!--<a class="updateSubscriberStatus" id="subscriber-{{ $subscriber['id'] }}" subscriber_id="{{ $subscriber['id'] }}" href="javascript:void(0)"> {{-- Using HTML Custom Attributes. Check admin/js/custom.js --}}
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-check" status="Active"></i> {{-- Icons from Skydash Admin Panel Template --}}
                                                        </a>-->
                                                        <span class="badge badge-success bbadge">active</span>
                                                    @else {{-- if the admin status is inactive --}}
                                                       <!-- <a class="updateSubscriberStatus" id="subscriber-{{ $subscriber['id'] }}" subscriber_id="{{ $subscriber['id'] }}" href="javascript:void(0)"> {{-- Using HTML Custom Attributes. Check admin/js/custom.js --}}
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-outline" status="Inactive"></i> {{-- Icons from Skydash Admin Panel Template --}}
                                                        </a>-->
                                                        <span class="badge badge-danger bbadge">inactive</span>
                                                    @endif
                                                </td>
                                                <td>
                                                    {{-- <a href="{{ url('admin/edit-shipping-charges/' . $shipping['id']) }}"> --}}
                                                        {{-- <i style="font-size: 25px" class="mdi mdi-pencil-box"></i> --}} {{-- Icons from Skydash Admin Panel Template --}}
                                                    {{-- </a> --}}

                                                    {{-- Confirm Deletion JS alert and Sweet Alert --}}
                                                    {{-- <a title="Shipping" class="confirmDelete" href="{{ url('admin/delete-shipping/' . $shipping['id']) }}"> --}}
                                                        {{-- <i style="font-size: 25px" class="mdi mdi-file-excel-box"></i> --}} {{-- Icons from Skydash Admin Panel Template --}}
                                                    {{-- </a> --}}

                                                   <!-- <a href="JavaScript:void(0)" class="confirmDelete" module="subscriber" moduleid="{{ $subscriber['id'] }}">
                                                        <i style="font-size: 25px" class="mdi mdi-file-excel-box"></i> {{-- Icons from Skydash Admin Panel Template --}}
                                                    </a>-->
                                                    <select class=" form-control" style="width: 150px; border: none;" onchange="changeStatussubscriber(this.value, {{ $subscriber['id'] }})">
                                                        @if ($subscriber['status'] == 1)
                                                        <option value="1" selected><span class="badge badge-success">Active</span></option>
                                                        <option value="0"><span class="badge badge-success">Inactive</span></option>
                                                        @else
                                                        <option value="1" ><span class="badge badge-success">Active</span></option>
                                                        <option value="0" selected><span class="badge badge-success">Inactive</span></option>
                                                        @endif
                                                    </select>
                                                </td>
                                            </tr>
                                        @endforeach


                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
        <!-- partial:../../partials/_footer.html -->
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2022. All rights reserved.</span>
            </div>
        </footer>
        <!-- partial -->
    </div>
@endsection