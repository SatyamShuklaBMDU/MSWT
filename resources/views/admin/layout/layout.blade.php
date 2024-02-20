<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">



        {{-- X-CSRF-TOKEN: https://laravel.com/docs/9.x/csrf#csrf-x-csrf-token --}} 
        <meta name="csrf-token" content="{{ csrf_token() }}">



        <title>Admin Panel</title>
        <!-- plugins:css -->
        <link rel="stylesheet" href="{{ url('admin/vendors/feather/feather.css') }}">
        <link rel="stylesheet" href="{{ url('admin/vendors/ti-icons/css/themify-icons.css') }}">
        <link rel="stylesheet" href="{{ url('admin/vendors/css/vendor.bundle.base.css') }}">
        <!-- endinject -->


        <!-- Plugin css for this page (The icons from Skydash Admin Panel template) -->
        <link rel="stylesheet" href="{{ url('admin/vendors/mdi/css/materialdesignicons.min.css')}}">


        <!-- Plugin css for this page -->
        <link rel="stylesheet" href="{{ url('admin/vendors/datatables.net-bs4/dataTables.bootstrap4.css') }}">
        <link rel="stylesheet" href="{{ url('admin/vendors/ti-icons/css/themify-icons.css') }}">
        <link rel="stylesheet" type="text/css" href="{{ url('admin/js/select.dataTables.min.css') }}">
        <!-- End plugin css for this page -->
        <!-- inject:css -->
        <link rel="stylesheet" href="{{ url('admin/css/vertical-layout-light/style.css') }}">
        <!-- endinject -->
        <link rel="shortcut icon" href="{{ url('admin/images/favicon.jpg') }}" />

        {{-- DataTable --}}
        <link rel="stylesheet" href="{{ url('admin/css/bootstrap.css') }}">
        <link rel="stylesheet" href="{{ url('admin/css/dataTables.bootstrap4.min.css') }}">
        <style>
            /* Sticky header */
.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 1000; /* Ensure it stays on top of other content */
}

/* Sticky sidebar */
.sidebar {
    position: fixed;
    top: 0;
    left: 0;
    height: 100%;
    z-index: 900; /* Ensure it stays below the header */
    overflow-y: auto; /* Enable scrolling for the sidebar */
}

/* Adjust main content area to accommodate fixed header and sidebar */
.main-panel {
    margin-left: 250px; /* Adjust the value based on your sidebar width */
    margin-top: 0px; /* Adjust the value based on your header height */
    padding: 20px; /* Add padding to prevent content from getting hidden behind the header */
}

</style>
    </head>
    <body>
        <div class="container-scroller" >




          @include('admin.layout.header')




            <!-- partial -->
            <div class="container-fluid page-body-wrapper">
            <!-- partial -->




                @include('admin.layout.sidebar')




                <!-- partial -->
                <!-- container-scroller -->




                <!-- Middle Content (varies from a page to another) -->
                @yield('content')




                <!-- main-panel ends -->
            </div>
            <!-- page-body-wrapper ends -->
        </div>
        <!-- plugins:js -->
        <script src="{{ url('admin/vendors/js/vendor.bundle.base.js') }}"></script>
        <!-- endinject -->
        <!-- Plugin js for this page -->
        <script src="{{ url('admin/vendors/chart.js/Chart.min.js') }}"></script>
        <script src="{{ url('admin/vendors/datatables.net/jquery.dataTables.js') }}"></script>
        <script src="{{ url('admin/vendors/datatables.net-bs4/dataTables.bootstrap4.js') }}"></script>
        <script src="{{ url('admin/js/dataTables.select.min.js') }}"></script>
        <!-- End plugin js for this page -->
        <!-- inject:js -->
        <script src="{{ url('admin/js/off-canvas.js') }}"></script>
        <script src="{{ url('admin/js/hoverable-collapse.js') }}"></script>
        <script src="{{ url('admin/js/template.js') }}"></script>
        <script src="{{ url('admin/js/settings.js') }}"></script>
        <script src="{{ url('admin/js/todolist.js') }}"></script>
        <!-- endinject -->
        <!-- Custom js for this page-->
        <script src="{{ url('admin/js/dashboard.js') }}"></script>
        <script src="{{ url('admin/js/Chart.roundedBarCharts.js') }}"></script>
        <!-- End custom js for this page-->



        {{-- NOTE: I MOVED THIS SECTION TO admin/js/My-Sweet-Alert.js FILE! After the SweetAlert2 CDN link block in the Country! I downloaded the library using 'npm' --}}
        {{-- The SweetAlert2 package for Confirm Deletion Message in sections.blade.php --}}
        {{-- <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script> --}} <!-- CDNs blocked in Country! -->
        {{-- <script type="module" src="{{ url('admin/js/sweetalert2.js') }}"></script>
        <script type="module" src="{{ url('admin/js/My-Sweet-Alert.js') }}"></script> --}}
        



        {{-- Start: Our Custom Admin JS --}}
        <script src="{{ url('admin/js/custom.js') }}"></script>
        {{-- End: Our Custom Admin JS --}}



        <!-- DataTables Buttons JS -->
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.html5.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.4.2/js/buttons.print.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>

<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.7/css/jquery.dataTables.min.css">

<!-- DataTables Buttons CSS -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/2.4.2/css/buttons.dataTables.min.css">
    </body>
</html>