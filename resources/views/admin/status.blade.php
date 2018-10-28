@extends('layouts.admin.main')

@section('title')
    Status Server
@endsection

@section('maincontent')
 <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                  <div class="title_left">

                  </div>
            </div>

            <div class="clearfix"></div>
        <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="x_panel">
                <div class="x_title">
                  <h2> SERVER STATUS</h2>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">       
                    <div class="row">
                    
                    @foreach($status as $item)
                    <div class="animated flipInY col-lg-3 col-md-3 col-sm-6 col-xs-12">
                            <div class="tile-stats">
                                <h3>{{ $item['alias'] }}</h3>
                                <br>
                                <h3>Status {{ $item['status'] }}</h3>
                                <p>Lokasi {{ $item['location'] }}</p>
                                <p>Uptime {{ $item['uptime'] }}</p>
                            </div>
                    </div>
                    @endforeach    
                    </div>
                </div>
              </div>
            </div>
        </div>
         <div class="container">
              
          </div>
    </div>
</div>
<!-- /page content -->

@endsection

@section('htmlpage')

@endsection
