@extends('admin.layout.layout')


@section('content')
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">
                <div class="col-md-12 grid-margin">
                    <div class="row">
                        <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                            <h4 class="card-title">Brands</h4>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-6 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">{{ $title }}</h4>


                            {{-- Our Bootstrap error code in case of wrong current password or the new password and confirm password are not matching: --}}
                            {{-- Determining If An Item Exists In The Session (using has() method): https://laravel.com/docs/9.x/session#determining-if-an-item-exists-in-the-session --}}
                            @if (Session::has('error_message')) <!-- Check AdminController.php, updateAdminPassword() method -->
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                <strong>Error:</strong> {{ Session::get('error_message') }}
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button> 
                            </div>
                            @endif



                            {{-- Displaying Laravel Validation Errors: https://laravel.com/docs/9.x/validation#quick-displaying-the-validation-errors --}}    
                            @if ($errors->any())
                            <div class="alert alert-danger alert-dismissible fade show" role="alert">
                                {{-- <strong>Error:</strong> {{ Session::get('error_message') }} --}}

                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach

                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            @endif



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
                

                            


                            
                            <form class="forms-sample"   @if (empty($brand['id'])) action="{{ url('/add-edit-brand') }}" @else action="{{ url('/add-edit-brand/' . encrypt($brand['id'])) }}" @endif   method="post" enctype="multipart/form-data"> <!-- If the id is not passed in from the route, this measn 'Add a new Brand', but if the id is passed in from the route, this means 'Edit the Brand' --> <!-- Using the enctype="multipart/form-data" to allow uploading files (images) -->
                                @csrf {{-- Preventing CSRF Requests: https://laravel.com/docs/9.x/csrf#preventing-csrf-requests --}}

                                <div class="form-group">
                                    <label for="brand_name">Brand Name</label>
                                    <input type="text" class="form-control" id="brand_name" placeholder="Enter Brand Name" name="brand_name" @if (!empty($brand['name'])) value="{{ $brand['name'] }}" @else value="{{ old('brand_name') }}" @endif> 
                                </div>
                                <button type="submit" class="btn btn-primary mr-2">Submit</button>
                                <a href="{{url()->previous()}}" class="btn btn-light">Cancel</a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
        @include('admin.layout.footer')
        <!-- partial -->
    </div>
@endsection