@extends('admin.layout.layout')


@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <!-- Container-fluid starts -->
            <!-- Main content starts -->
            <div class="container-fluid">
                <div class="row">
                    <div class="main-header">
                        @if (isset($admin))
                            <h4>Edit Manage Admins</h4>
                        @else
                            <h4>Manage Admins</h4>
                        @endif
                    </div>
                </div>
                @if (Session::has('success_message'))
                    <div class="alert alert-success alert-dismissible fade show" role="alert">
                        <strong>Success:</strong> {{ Session::get('success_message') }}
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                @endif
                <div class="row dashboard-header">
                    <div class="col-md-12">
                        <form class="notification-form shadow rounded p-5" id="addUserRoleForm" method="POST" @if(isset($admin)) action="{{ url('/edit-manage/' . encrypt($admin->id)) }}" @else action="{{ url('/add-manage') }}" @endif>
                            @csrf
                            <div class="form-group">
                                <label for="exampleInputname1">Name</label>
                                <input type="text" class="form-control" id="exampleInputname1" name="name"
                                    @if (isset($admin)) value="{{ $admin->name }}"
                                   @else
                                   value="{{ old('name') }}" @endif
                                    aria-describedby="textHelp" placeholder="Name">
                                @error('name')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputEmail2">Email</label>
                                <input type="text" class="form-control" id="exampleInputEmail2" name="email"
                                    @if (isset($admin)) value="{{ $admin->email }}"
                                    @else value="{{ old('email') }}" @endif
                                    aria-describedby="textHelp" placeholder="Email">
                                @error('email')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <div class="form-group">
                                <label for="exampleInputnumber2">Mobile</label>
                                <input type="number" class="form-control" id="exampleInputnumber2" name="mobile"
                                @if (isset($admin)) value="{{ $admin->mobile }}"
                                @else value="{{ old('mobile') }}" @endif aria-describedby="textHelp" placeholder="Mobile">
                                @error('mobile')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            @if (isset($admin))

                            @else 
                            <div class="form-group">
                                <label for="exampleInputEmail2">Create Password</label>
                                <input type="password" class="form-control" id="exampleInputEmail3" name="password"
                                    value="{{ old('password') }}" aria-describedby="textHelp" placeholder="*****">
                                @error('password')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            @endif
                            <div class="form-group">
                                <label for="role">Role</label>
                                <input type="text" class="form-control" id="role" name="role"
                                    aria-describedby="textHelp" @if (isset($admin)) value="{{ $admin->type }}"
                                    @else value="{{ old('role') }}" @endif placeholder="Role">
                                @error('role')
                                    <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                            <h6>Assign Modules</h6>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="permissions[]"
                                            value="user_management" {{ in_array('user_management', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }}
                                            id="flexCheckChecked1">
                                        <label class="form-check-label" for="flexCheckChecked1">
                                            User Management
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="permissions[]"
                                        {{ in_array('catalogue_management', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} value="catalogue_management" id="flexCheckDefault2">
                                        <label class="form-check-label" for="flexCheckDefault2">
                                            Catalogue Management
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="permissions[]"
                                        {{ in_array('order_management', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} value="order_management" id="flexCheckDefault3">
                                        <label class="form-check-label" for="flexCheckDefault3">
                                            Orders Management
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="permissions[]"
                                        {{ in_array('ratings_management', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} value="ratings_management" id="flexCheckDefault4">
                                        <label class="form-check-label" for="flexCheckDefault4">
                                            Ratings Management
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" name="permissions[]"
                                        {{ in_array('banner_management', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} value="banner_management" id="flexCheckDefault5">
                                        <label class="form-check-label" for="flexCheckDefault5">
                                            Banner Management
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="shipping_management"
                                        {{ in_array('shipping_management', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} name="permissions[]" id="flexCheckDefault6">
                                        <label class="form-check-label" for="flexCheckDefault6">
                                            Shipping Management
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="complaint"
                                        {{ in_array('complaint', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} name="permissions[]" id="flexCheckDefault7">
                                        <label class="form-check-label" for="flexCheckDefault7">
                                            Complaints
                                        </label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="feedback"
                                        {{ in_array('feedback', isset($admin) ? json_decode($admin->permission) : []) ? 'checked' : '' }} name="permissions[]" id="flexCheckDefault8">
                                        <label class="form-check-label" for="flexCheckDefault8">
                                            Feedback
                                        </label>
                                    </div>
                                    @error('permissions')
                                        <div class="text-danger">{{ $message }}</div>
                                    @enderror
                                </div>
                            </div>
                            @if (isset($admin))
                            <button type="submit" class="btn btn-dark btn-md float-right" style="margin-top:-1%;margin-left:1%;">Update</button>
                            @else
                            <button type="submit" class="btn btn-dark btn-md float-right" style="margin-top:-1%;margin-left:1%;">Assign Roles</button>
                            @endif
                            <a class="btn btn-primary btn-md float-right" style="margin-top:-1%;"
                                href="{{ url()->previous() }}">Back</a>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2022. All rights
                    reserved.</span>
            </div>
        </footer>
    </div>
    {{-- <div class="main-panel"> --}}
    {{-- <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">{{ $title }}</h4>
                            <div class="table-responsive pt-3">
                                <table class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Admin ID</th>
                                            <th>Name</th>
                                            <th>Type</th>
                                            <th>Mobile</th>
                                            <th>Email</th>
                                            <th>Image</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($admins as $admin)
                                            <tr>
                                                <td>{{ $admin['id'] }}</td>
                                                <td>{{ $admin['name'] }}</td>
                                                <td>{{ $admin['type'] }}</td>
                                                <td>{{ $admin['mobile'] }}</td>
                                                <td>{{ $admin['email'] }}</td>
                                                <td>
                                                    @if ($admin['image'] != '')
                                                        <img src="{{ asset('admin/images/photos/' . $admin['image']) }}">
                                                    @else
                                                        <img src="{{ asset('admin/images/photos/no-image.gif') }}">
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($admin['status'] == 1)
                                                        <a class="updateAdminStatus" id="admin-{{ $admin['id'] }}" admin_id="{{ $admin['id'] }}" href="javascript:void(0)">
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-check" status="Active"></i>
                                                        </a>
                                                    @else
                                                        <a class="updateAdminStatus" id="admin-{{ $admin['id'] }}" admin_id="{{ $admin['id'] }}" href="javascript:void(0)">
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-outline" status="Inactive"></i>
                                                        </a>
                                                    @endif
                                                </td>
                                                <td>
                                                    @if ($admin['type'] == 'vendor')
                                                        <a href="{{ url('admin/view-vendor-details/' . $admin['id']) }}">
                                                            <i style="font-size: 25px" class="mdi mdi-file-document"></i>
                                                        </a>
                                                    @endif
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
        </div> --}}
    <!-- content-wrapper ends -->
    <!-- partial:../../partials/_footer.html -->
    {{-- <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2022. All rights reserved.</span>
            </div>
        </footer> --}}
    <!-- partial -->
    {{-- </div> --}}
@endsection
