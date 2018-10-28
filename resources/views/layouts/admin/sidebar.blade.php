<div class="col-md-3 left_col">
      <div class="left_col scroll-view">
        <div class="navbar nav_title" style="border: 0;">
          <a href="{{ url('/') }}" class="site_title"><i class="fa fa-building-o"></i> <span>{{ config('app.name', 'Laravel') }} | App</span></a>
        </div>

        <div class="clearfix"></div>
        <!-- menu profile quick info -->
        <div class="profile clearfix">
          <div class="profile_pic">
            <img src="{{ Gravatar::get(Auth::user()->email) }}" alt="..." class="img-circle profile_img">
          </div>
          <div class="profile_info">
            <span>Welcome,</span>
            <h2>{{ Auth::user()->name }}</h2>
          </div>
        </div>
        <!-- /menu profile quick info -->

        <br />

        <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
            <div class="menu_section">
              <h3>General</h3>
                <ul class="nav side-menu">
                @if (Auth::check())
                    <li><a href="{{ url('home') }}"><i class="fa fa-home"></i>Dashboard</a></li>
                    
                    <li><a><i class="fa fa-bolt"></i> Kerusakan <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                          @role('karyawan')
                          <li><a href="{{ url('kelola/kerusakan/create') }}">Lapor Kerusakan</a></li>
                          @endrole
                          @role(['admin','manajer'])
                          <li><a href="{{ url('kelola/kerusakan/') }}">Progress Perbaikan</a></li>
                          @endrole 
                      </ul>
                    </li>
                    @role(['admin','manajer'])
                      <li><a href="{{ url('kelola/laporan') }}"><i class="fa fa-file"></i>Laporan</a></li>
                    @endrole
                      
                      <li><a href="{{ url('status') }}"><i class="fa fa-check"></i>Status Server</a></li>
                      @role('admin')
                    <li><a><i class="fa fa-gears"></i> Setting <span class="fa fa-chevron-down"></span></a>
                      <ul class="nav child_menu">
                          
                        <li><a href="{{ url('kelola/user') }}">Kelola User</a></li>
                      
                      </ul>
                    </li>
                    @endrole 
                </ul>
                @endif

            </div>
          </div>
        <!-- /sidebar menu -->
        <!-- /menu footer buttons -->
        <div class="sidebar-footer hidden-small">
            <a data-toggle="tooltip" data-placement="top" title="Settings" href="{{ url('kelola/user') }}">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="FullScreen" onclick="toggleFullScreen()">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Lock" href="{{ url('login') }}">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
            </a>
            <a data-toggle="tooltip" data-placement="top" title="Logout" href="{{ url('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
            </a>
        </div>
        <!-- /menu footer buttons -->
  </div>
</div>
