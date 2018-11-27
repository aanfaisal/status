@extends('layouts.admin.main')

@section('title')
    Kerusakan
@endsection

@section('maincontent')
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                  <div class="title_left">
                    <h3>Kerusakan</h3>
                  </div>
            </div>
 
            <div class="clearfix"></div>
        <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Kerusakan<small>Data</small></h2>                  
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
            @include('layouts._flash')
                        <a href="{{ url('/kelola/kerusakan/create') }}" class="btn btn-success btn-sm" title="Add New Kerusakan">
                            <i class="fa fa-plus" aria-hidden="true"></i> Tambah Data
                        </a>

                        {!! Form::open(['method' => 'GET', 'url' => '/kelola/kerusakan', 'class' => 'col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search', 'role' => 'search'])  !!}
                        <div class="title_right">
                            <div class="input-group">
                                
                                <input type="text" class="form-control" name="search" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-default" type="submit">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </div>
                        {!! Form::close() !!}

                        <br/>
                        <br/>
                        <div class="table-responsive">
                            <table class="table table-borderless">
                                <thead>
                                    <tr>
                                        <th>No</th>
                                        <th>Nama Pelapor</th>
                                        <th>Kategori Kerusakan</th>
                                        <th>Rincian</th>
                                        <th>Tanggal</th>
                                        <th>Keterangan</th>
                                        <th>Status</th>
                                        <th>Aksi</th>
                                    </tr>
                                </thead>
                                <tbody>

                                @foreach($kerusakan as $item)
                                    <tr>
                                        <td>{{ $loop->iteration }}</td>
                                        <td>{{ $item->pelapor }}</td>
                                        <td>{{ $item->nm_rusak }}</td>
                                        <td>{!! strlen($item->rincian) > 70 ? substr($item->rincian,0,70) : $item->rincian !!}</td>
                                        <td>{{ Carbon\Carbon::parse($item->created_at)->format('D,d/m/Y') }}</td>
                                        <td>{!! strlen($item->keterangan) > 70 ? substr($item->keterangan,0,70) : $item->keterangan !!}</td>
                                        <td>{!! str_replace(['Antrian', 'Proses', 'Selesai'], ['<span class="label label-default">Antrian</span>', '<span class="label label-info">Proses</span>', '<span class="label label-success">Selesai</span>'], ucwords($item->status)) !!}</td>
                                        <td>
                                            <a href="{{ url('/kelola/kerusakan/' . $item->rusak_id) }}" title="View Kerusakan"><button class="btn btn-info btn-xs"><i class="fa fa-eye" aria-hidden="true"></i> Lihat</button></a><br>
                                            <a href="{{ url('/kelola/kerusakan/' . $item->rusak_id . '/edit') }}" title="Edit Kerusakan"><button class="btn btn-primary btn-xs"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>
                                            {!! Form::open([
                                                'method'=>'DELETE',
                                                'url' => ['/kelola/kerusakan', $item->rusak_id],
                                                'style' => 'display:inline'
                                            ]) !!}
                                                {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', array(
                                                        'type' => 'submit',
                                                        'class' => 'btn btn-danger btn-xs',
                                                        'title' => 'Delete Kerusakan',
                                                        'onclick'=>'return confirm("Confirm delete?")'
                                                )) !!}
                                            {!! Form::close() !!}
                                        </td>
                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                            <div class="pagination-wrapper"> {!! $kerusakan->appends(['search' => Request::get('search')])->render() !!} </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- /page content -->
@endsection

@section('htmlpage')

@endsection

@section('jspage')
<script type="text/javascript">
    $(function() {
      
    $('input[name="from"]').datepicker({  
            format: 'dd-mm-yyyy'
        });
    $('input[name="to"]').datepicker({  
            format: 'dd-mm-yyyy'
        });
    
    });
</script>
@endsection