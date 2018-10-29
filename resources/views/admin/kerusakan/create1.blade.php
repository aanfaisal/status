@extends('layouts.admin.main')

@section('title')
    Data Kerusakan
@endsection

@section('maincontent')
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
                  <div class="x_title">
                    <h2>Kerusakan<small>Data</small></h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">
                        @include('layouts._flash')

                        @if ($errors->any())
                            <ul class="alert alert-danger">
                                @foreach ($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        @endif

                        {!! Form::open(['url' => '/kelola/kerusakan', 'class' => 'form-horizontal', 'files' => true]) !!}

                        <div class="form-group {{ $errors->has('pelapor') ? 'has-error' : ''}}">
                                {!! Form::label('pelapor', 'Nama Pelapor', ['class' => 'col-md-4 control-label']) !!}
                                <div class="col-md-6">
                                    {!! Form::text('pelapor', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
                                    {!! $errors->first('pelapor', '<p class="help-block">:message</p>') !!}
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('nm_rusak') ? 'has-error' : ''}}">
                                {!! Form::label('nm_rusak', 'Pilih Kategori Kerusakan', ['class' => 'col-md-4 control-label']) !!}
                                <div class="col-md-6">
                                    {!! Form::select('nm_rusak', ['Software Error' => 'Software Error', 'Hardware Error' => 'Hardware Error', 'Koneksi Internet' => 'Koneksi Internet','Lain-Lain' => 'Lain-Lain'],null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
                                    {!! $errors->first('nm_rusak', '<p class="help-block">:message</p>') !!}
                                </div>
                            </div>
                            <div class="form-group {{ $errors->has('rincian') ? 'has-error' : ''}}">
                                {!! Form::label('rincian', 'Rincian', ['class' => 'col-md-4 control-label']) !!}
                                <div class="col-md-6">
                                    {!! Form::textarea('rincian', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
                                    {!! $errors->first('rincian', '<p class="help-block">:message</p>') !!}
                                </div>
                            </div>
                            <input type="hidden" class="form-control" name="status"  id="status" value="Antrian">
                            
                            <div class="form-group">
                                <div class="col-md-offset-4 col-md-4">
                                    {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Lapor Data', ['class' => 'btn btn-primary']) !!}
                                </div>
                            </div>
                            

                        {!! Form::close() !!}

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('htmlpage')

@endsection

@section('jspage')

@endsection