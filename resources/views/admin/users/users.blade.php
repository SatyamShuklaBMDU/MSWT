{{-- This page (view) is rendered from users() method in Admin/UserController.php --}}
@extends('admin.layout.layout')
<style>
    .small-modal {
        width: 300px;
        /* Adjust the width as per your requirement */
        font-size: 14px;
        /* Adjust the font size as per your requirement */
    }
</style>
@section('content')
    <div class="main-panel ">
        <div class="content-wrapper">
            <div class="row sticky">
                <div class="col-lg-12 grid-margin stretch-card ">
                    <div class="card">
                        <div class="card-body ">
                            <h4 class="card-title">Users</h4>
                            <div class="sticky-form sticky">
                                <div class="col-md-12 ">
                                    <form class="notification-form shadow rounded" method="post"
                                        action="{{ url('/filter-users') }}">
                                        @csrf
                                        <div class="row dashboard-header">
                                            <div class="col-md-12">
                                                <div class="row mt-3">
                                                    <div class="col-md-12 boder-danger me-5 pe-5 pl-5">
                                                        <div class="row mb" style="margin-bottom: 30px;">
                                                            <div class="col-sm-1">
                                                                <p class="text-dark"><b><strong>Filters</strong></b></p>
                                                            </div>
                                                            <div class="col-sm-3 end-date">
                                                                <p class="text-dark"><strong>Date From:</strong></p>
                                                                <div class="input-group date d-flex" id="datepicker1">
                                                                    <input type="date" class="form-control"
                                                                        name="start" id="startdate"
                                                                        value="{{ $start ?? '' }}"
                                                                        placeholder="dd-mm-yyyy" />
                                                                </div>
                                                                @error('start')
                                                                    <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>
                                                            <div class="col-sm-3 end-date">
                                                                <p class="text-dark"><strong>Date From:</strong></p>
                                                                <div class="input-group date d-flex" id="datepicker2">
                                                                    <input type="date" class="form-control"
                                                                        name="end" id="enddate"
                                                                        value="{{ $end ?? '' }}"
                                                                        placeholder="dd-mm-yyyy" />
                                                                </div>
                                                                @error('end')
                                                                    <span class="text-danger">{{ $message }}</span>
                                                                @enderror
                                                            </div>

                                                            <div class="col-md-1 text-end "
                                                                style="margin-left: 10px; margin-top:40px;">
                                                                <button class="btn bg-gradient-success text-white shadow-lg"
                                                                    type="submit">Filter</button>
                                                            </div>
                                                            <div class="col-md-1 text-end"
                                                                style="margin-left: 10px; margin-top:40px;">
                                                                <a class="reset btn bg-gradient-success text-white shadow-lg ml-5"
                                                                    href="{{ url('users') }}">Reset</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                            {{-- Displaying The Validation Errors: https://laravel.com/docs/9.x/validation#quick-displaying-the-validation-errors AND https://laravel.com/docs/9.x/blade#validation-errors --}}
                            {{-- Determining If An Item Exists In The Session (using has() method): https://laravel.com/docs/9.x/session#determining-if-an-item-exists-in-the-session --}}
                            {{-- Our Bootstrap success message in case of updating admin password is successful: --}}
                            @if (Session::has('success_message'))
                                <!-- Check AdminController.php, updateAdminPassword() method -->
                                <div class="alert alert-success alert-dismissible fade show" role="alert">
                                    <strong>Success:</strong> {{ Session::get('success_message') }}
                                    <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                            @endif
                            <div class="table-responsive pt-3">
                                {{-- DataTable --}}
                                <table id="users" class="table table-bordered">
                                    {{-- using the id here for the DataTable --}}
                                    <thead>
                                        <tr>
                                            <th>Sr. No.</th>
                                            {{-- <th>ID</th> --}}
                                            <th>Date</th>
                                            {{-- <th>Photo</th> --}}
                                            <th>Name</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>City</th>
                                            <th>State</th>
                                            <th>Pincode</th>
                                            <th>Country</th>
                                            <th style="width: 150px; border: none;">Status</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($users as $user)
                                            <tr>
                                                <td>{{ $loop->index + 1 }}</td>
                                                {{-- <td>{{ $user['id'] }}</td> --}}
                                                <td>{{ \Carbon\Carbon::parse($user['created_at'])->format('d/m/Y') }}</td>
                                                {{-- <td>
                                 <img src="{{ asset('front/images/product_images/'.$user['photo']) }}" alt="Example Image">
                              </td> --}}
                                                <td>{{ $user['name'] }}</td>
                                                <td>{{ $user['mobile'] }}</td>
                                                <td>{{ $user['email'] }}</td>
                                                <td>
                                                    <textarea style="width: 200px; border: none;">{{ $user['address'] ?? '' }}</textarea>
                                                </td>
                                                <td>{{ $user['city'] }}</td>
                                                <td>{{ $user['state'] }}</td>
                                                <td>{{ $user['pincode'] }}</td>
                                                <td>{{ $user['country'] }}</td>
                                                <td>
                                                    <select class=" form-control" style="width: 150px; border: none;"
                                                        onchange="changeStatus(this.value, {{ $user['id'] }})">
                                                        @if ($user['status'] == 1)
                                                            <option value="1" selected><span
                                                                    class="badge badge-success">Active</span></option>
                                                            <option value="0"><span
                                                                    class="badge badge-success">Inactive</span></option>
                                                        @else
                                                            <option value="1"><span
                                                                    class="badge badge-success">Active</span></option>
                                                            <option value="0" selected><span
                                                                    class="badge badge-success">Inactive</span></option>
                                                        @endif
                                                    </select>
                                                </td>
                                                {{-- <td>
                                                    @if ($user['status'] == 1)
                                                        <a class="updateUserStatus" id="user-{{ $user['id'] }}"
                                                            user_id="{{ $user['id'] }}" href="javascript:void(0)">
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-check"
                                                                status="Active"></i> 
                                                        </a>
                                                    @endif
                                                    @if ($user['status'] == 0)
                                                        <a class="updateUserStatus" id="user-{{ $user['id'] }}"
                                                            user_id="{{ $user['id'] }}" href="javascript:void(0)">
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-outline"
                                                                status="Inactive"></i>
                                                        </a>
                                                    @endif
                                                </td> --}}
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
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2022. All rights
                    reserved.</span>
            </div>
        </footer>
        <!-- partial -->
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <script>
        function changeStatus(status, userId) {
            // alert('1');
            $.ajax({
                url: "{{ url('/changeStatuss') }}",
                type: 'POST',
                data: {
                    status: status,
                    userId: userId,
                    "_token": "{{ csrf_token() }}"
                },
                success: function(response) {
                    if (response.success) {
                        Swal.fire({
                            position: "top-end",
                            icon: "success",
                            title: "Status change successfully",
                            showConfirmButton: false,
                            timer: 1500,
                            customClass: {
                                popup: 'small-modal'
                            }
                        });
                    } else {
                        console.error(response.message);
                    }
                },
                error: function(xhr, status, error) {
                    console.error(xhr.responseText);
                }
            });
        }
    </script>
@endsection
