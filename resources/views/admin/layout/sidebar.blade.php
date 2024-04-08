{{-- Correcting issues in the Skydash Admin Panel Sidebar using Session --}}
@php
    $userPermissions = Auth::guard('admin')->check() ? json_decode(Auth::guard('admin')->user()->permission) : null;
    $hasAllPermissions = is_array($userPermissions) && in_array('all', $userPermissions);
@endphp

<!-- partial:partials/_sidebar.html -->
<nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
        {{-- <li class="nav-item">
            <a @if (Session::get('page') == 'dashboard') style="background: #052CA3 !important; color: #FFF !important" @endif class="nav-link" href="{{ url('/dashboard') }}">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title"></span>
            </a>
        </li> --}}
        <li class="nav-item mt-5">
            <a @if (Session::get('page') == 'dashboard') style="background: #052CA3 !important; color: #FFF !important" @endif
                class="nav-link" href="{{ url('/dashboard') }}">
                <i class="icon-grid menu-icon"></i>
                <span class="menu-title">Dashboard</span>
            </a>
        </li>
        @if ($hasAllPermissions || (is_array($userPermissions) && in_array('user_management', $userPermissions)))
            <li class="nav-item">
                <a @if (Session::get('page') == 'users' || Session::get('page') == 'subscribers') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-users" aria-expanded="false"
                    aria-controls="ui-users">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Users Management</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-users">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'users') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/users') }}">Users</a></li>
                        {{-- <li class="nav-item"> <a
                            @if (Session::get('page') == 'subscribers') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                            class="nav-link" href="{{ url('/subscribers') }}">Subscribers</a></li> --}}
                    </ul>
                </div>
            </li>
        @endif
        {{-- In case the authenticated user (the logged-in user) (using the 'admin' Authentication Guard in auth.php) type is 'vendor' --}}
        @if (Auth::guard('admin')->user()->type == 'vendor')
            {{-- Accessing Specific Guard Instances: https://laravel.com/docs/9.x/authentication#accessing-specific-guard-instances --}}
            <li class="nav-item">
                <a @if (Session::get('page') == 'update_personal_details' ||
                        Session::get('page') == 'update_business_details' ||
                        Session::get('page') == 'update_bank_details') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-vendors" aria-expanded="false"
                    aria-controls="ui-vendors">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Vendor Details</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-vendors">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_personal_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/update-vendor-details/personal') }}">Personal
                                Details</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_business_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/update-vendor-details/business') }}">Business
                                Details</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'update_bank_details') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/update-vendor-details/bank') }}">Bank Details</a>
                        </li>
                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a @if (Session::get('page') == 'sections' ||
                        Session::get('page') == 'categories' ||
                        Session::get('page') == 'products' ||
                        Session::get('page') == 'brands' ||
                        Session::get('page') == 'filters' ||
                        Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-catalogue" aria-expanded="false"
                    aria-controls="ui-catalogue">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Catalogue Management</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-catalogue">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'products') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/products') }}">Products</a></li>
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/coupons') }}">Coupons</a></li>
                    </ul>
                </div>
            </li>

            {{-- If the authenticated/logged-in user is 'vendor', show ONLY the orders of the products added by that specific 'vendor' (In constrast to the case where the authenticated/logged-in user is 'admin', we show ALL orders) --}}
            <li class="nav-item">
                <a @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-orders" aria-expanded="false"
                    aria-controls="ui-orders">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Orders Management</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-orders">
                    <ul class="nav flex-column sub-menu" style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/orders') }}">Orders</a></li>
                    </ul>
                </div>
            </li>
        @else
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('catalogue_management', $userPermissions)))
                <li class="nav-item">
                    <a @if (Session::get('page') == 'sections' ||
                            Session::get('page') == 'categories' ||
                            Session::get('page') == 'products' ||
                            Session::get('page') == 'brands' ||
                            Session::get('page') == 'filters' ||
                            Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @endif
                        class="nav-link" data-toggle="collapse" href="#ui-catalogue" aria-expanded="false"
                        aria-controls="ui-catalogue">
                        <i class="icon-layout menu-icon"></i>
                        <span class="menu-title">Catalogue Management</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-catalogue">
                        <ul class="nav flex-column sub-menu"
                            style="background: #fff !important; color: #052CA3 !important">
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'sections') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/sections') }}">Sections</a></li>
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'categories') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/categories') }}">Categories</a></li>
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'brands') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/brands') }}">Brands</a></li>
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'products') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/products') }}">Products</a></li>
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'coupons') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/coupons') }}">Coupons</a></li>
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'filters') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/filters') }}">Filters</a></li>
                        </ul>
                    </div>
                </li>
            @endif
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('order_management', $userPermissions)))
                <li class="nav-item">
                    <a @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @endif
                        class="nav-link" data-toggle="collapse" href="#ui-orders" aria-expanded="false"
                        aria-controls="ui-orders">
                        <i class="icon-layout menu-icon"></i>
                        <span class="menu-title">Orders Management</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-orders">
                        <ul class="nav flex-column sub-menu"
                            style="background: #fff !important; color: #052CA3 !important">
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'orders') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/orders') }}">Orders</a></li>
                        </ul>
                    </div>
                </li>
            @endif
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('ratings_management', $userPermissions)))
                <li class="nav-item">
                    <a @if (Session::get('page') == 'ratings') style="background: #052CA3 !important; color: #FFF !important" @endif
                        class="nav-link" data-toggle="collapse" href="#ui-ratings" aria-expanded="false"
                        aria-controls="ui-ratings">
                        <i class="icon-layout menu-icon"></i>
                        <span class="menu-title">Ratings Management</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-ratings">
                        <ul class="nav flex-column sub-menu"
                            style="background: #fff !important; color: #052CA3 !important">
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'ratings') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/ratings') }}">Product Ratings & Reviews</a></li>
                        </ul>
                    </div>
                </li>
            @endif
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('banner_management', $userPermissions)))
                <li class="nav-item">
                    <a @if (Session::get('page') == 'banners') style="background: #052CA3 !important; color: #FFF !important" @endif
                        class="nav-link" data-toggle="collapse" href="#ui-banners" aria-expanded="false"
                        aria-controls="ui-banners">
                        <i class="icon-layout menu-icon"></i>
                        <span class="menu-title">Banners Management</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-banners">
                        <ul class="nav flex-column sub-menu"
                            style="background: #fff !important; color: #052CA3 !important">
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'banners') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/banners') }}">Home Page Banners</a></li>
                        </ul>
                    </div>
                </li>
            @endif
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('shipping_management', $userPermissions)))
                <li class="nav-item">
                    <a @if (Session::get('page') == 'shipping') style="background: #052CA3 !important; color: #FFF !important" @endif
                        class="nav-link" data-toggle="collapse" href="#ui-shipping" aria-expanded="false"
                        aria-controls="ui-shipping">
                        <i class="icon-layout menu-icon"></i>
                        <span class="menu-title">Shipping Management</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="ui-shipping">
                        <ul class="nav flex-column sub-menu"
                            style="background: #fff !important; color: #052CA3 !important">
                            <li class="nav-item"> <a
                                    @if (Session::get('page') == 'shipping') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                    class="nav-link" href="{{ url('/shipping-charges') }}">Shipping Charges</a></li>
                        </ul>
                    </div>
                </li>
            @endif
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('complaint', $userPermissions)))
            <li class="nav-item">
                <a @if (Session::get('page') == 'complaint') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-complaint" aria-expanded="false"
                    aria-controls="ui-complaint">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Complaint Management</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-complaint">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'complaint') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/complaint') }}">Complaints</a></li>
                    </ul>
                </div>
            </li>
            @endif
            @if ($hasAllPermissions || (is_array($userPermissions) && in_array('feedback', $userPermissions)))
            <li class="nav-item">
                <a @if (Session::get('page') == 'feedback') style="background: #052CA3 !important; color: #FFF !important" @endif
                    class="nav-link" data-toggle="collapse" href="#ui-feedback" aria-expanded="false"
                    aria-controls="ui-feedback">
                    <i class="icon-layout menu-icon"></i>
                    <span class="menu-title">Feedback Management</span>
                    <i class="menu-arrow"></i>
                </a>
                <div class="collapse" id="ui-feedback">
                    <ul class="nav flex-column sub-menu"
                        style="background: #fff !important; color: #052CA3 !important">
                        <li class="nav-item"> <a
                                @if (Session::get('page') == 'feedback') style="background: #052CA3 !important; color: #FFF !important" @else style="background: #fff !important; color: #052CA3 !important" @endif
                                class="nav-link" href="{{ url('/feedback') }}">Feedback</a></li>
                    </ul>
                </div>
            </li>
            @endif
            {{-- @dd(Auth::guard('admin')->user()) --}}
            @if (Auth::guard('admin')->user()->type == 'superadmin')
                <li class="nav-item">
                    <a @if (Session::get('page') == 'all_admin' || Session::get('page') == 'add_admin') style="background: #052CA3 !important; color: #FFF !important" @endif
                        class="nav-link" href="{{ url('/all-manage') }}">
                        <i class="icon-grid menu-icon"></i>
                        <span class="menu-title">Admin Manage</span>
                    </a>
                </li>
            @endif
        @endif

    </ul>
</nav>
