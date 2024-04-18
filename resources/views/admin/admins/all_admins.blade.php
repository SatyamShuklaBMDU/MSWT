@extends('admin.layout.layout')
@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">All Admins</h4>
                            <a href="{{ url('/add-manage') }}" style="max-width: 150px; float: right; display: inline-block"
                                class="btn btn-block btn-primary">Add Admin Manage</a>
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
                                <table id="products" class="table table-bordered"> {{-- using the id here for the DataTable --}}
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Created Date</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Role</th>
                                            <th>Status</th>
                                            <th>Actions</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($admins as $item)
                                            <tr>
                                                <td>{{ $loop->iteration }}</td>
                                                <td>{{ $item->created_at }}</td>
                                                <td>{{ $item->name }}</td>
                                                <td>{{ $item->email }}</td>
                                                <td>{{ $item->type }}</td>
                                                <td>
                                                    @if ($item->status == 1)
                                                        <a class="updateAdminStatus" id="admin-{{ $item->id }}"
                                                            admin_id="{{ $item->id }}" href="javascript:void(0)">
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-check"
                                                                status="Active"></i> {{-- Icons from Skydash Admin Panel Template --}}
                                                        </a>
                                                    @else
                                                        {{-- if the admin status is inactive --}}
                                                        <a class="updateAdminStatus" id="admin-{{ $item->id }}"
                                                            admin_id="{{ $item->id }}" href="javascript:void(0)">
                                                            {{-- Using HTML Custom Attributes. Check admin/js/custom.js --}}
                                                            <i style="font-size: 25px" class="mdi mdi-bookmark-outline"
                                                                status="Inactive"></i> {{-- Icons from Skydash Admin Panel Template --}}
                                                        </a>
                                                    @endif
                                                </td>
                                                <td>
                                                    <a title="Edit Admin" href="{{ url('/edit-manage/' . encrypt($item->id)) }}">
                                                        <i style="font-size: 25px" class="mdi mdi-pencil-box"></i> {{-- Icons from Skydash Admin Panel Template --}}
                                                    </a>
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
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2022. All rights
                    reserved.</span>
            </div>
        </footer>
        <!-- partial -->
    </div>
@endsection
