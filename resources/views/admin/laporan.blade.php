<!DOCTYPE html>
<html lang="en">
<head>
    <link href="{{ asset('plugins/bootstrap/dist/css/bootstrap.min.css') }}" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="{{ asset('plugins/font-awesome/css/font-awesome.min.css') }}" rel="stylesheet">
</head>

<body class="nav-md">
        <div class="container body">
          <div class="main_container">

    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                  <div class="title_left">
                    <h3>Data Kerusakan</h3>
                  </div>
            </div>
 
            <div class="clearfix"></div>
        <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_content">
                     
                    <div class="table-responsive">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Pelapor</th>
                                        <th>Kategori Kerusakan</th>
                                        <th>Status</th>
                                    </tr>
                                </thead>
                                <tbody>

                                @foreach($data as $item)
                                    <tr>
                                        <td>{{ $item->rusak_id }}</td>
                                        <td>{{ $item->pelapor }}</td>
                                        <td>{{ $item->nm_rusak }}</td>
                                        <td>{!! str_replace(['Antrian', 'Proses', 'Selesai'], ['<span class="label label-default">Antrian</span>', '<span class="label label-info">Proses</span>', '<span class="label label-success">Selesai</span>'], ucwords($item->status)) !!}</td>
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
</div>
<!-- /page content -->

  </body>
</html>
