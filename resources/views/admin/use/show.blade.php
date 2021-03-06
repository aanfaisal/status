@extends('layouts.admin.main')

@section('title')
    Profil
@endsection

@section('maincontent')
    <!-- page content -->
    <div class="right_col" role="main">
        <div class="">
            <div class="page-title">
                  <div class="title_left">
                    <h3>User</h3>
                  </div>
            </div>

            <div class="clearfix"></div>
        <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>User<small>Data</small></h2>
                    <div class="clearfix"></div>
                  </div>

                  <div class="x_content">

                        <a href="{{ url('kelola/user') }}" title="Back"><button class="btn btn-warning btn-xs"><i class="fa fa-arrow-left" aria-hidden="true"></i> Kembali</button></a>
                        <a href="{{ url('kelola/user/' . $use->id . '/edit') }}" title="Edit Use"><button class="btn btn-primary btn-xs"><i class="fa fa-pencil-square-o" aria-hidden="true"></i> Edit</button></a>
                        {!! Form::open([
                            'method'=>'DELETE',
                            'url' => ['use', $use->id],
                            'style' => 'display:inline'
                        ]) !!}
                            {!! Form::button('<i class="fa fa-trash-o" aria-hidden="true"></i> Delete', array(
                                    'type' => 'submit',
                                    'class' => 'btn btn-danger btn-xs',
                                    'title' => 'Delete Use',
                                    'onclick'=>'return confirm("Confirm delete?")'
                            ))!!}
                        {!! Form::close() !!}
                        <br/>
                        <br/>

                        <div class="table-responsive">
                            <table class="table table-borderless">
                                <tbody>
                                    <tr>
                                        <th>ID User</th>
                                        <td>{{ $use->id }}</td>
                                    </tr>
                                    <tr>
                                        <th> Nama </th>
                                        <td> {{ $use->name }} </td>
                                    </tr>
                                    <tr>
                                        <th> Email </th>
                                        <td> {{ $use->email }} </td>
                                    </tr>
                                    <tr>
                                        <th> Username </th>
                                        <td> {{ $use->username }} </td>
                                    </tr>
                                    <tr>
                                        <th> Alamat </th>
                                        <td> {{ $use->address }} </td>
                                    </tr>
                                    <tr>
                                        <th> Gender </th>
                                        <td> {{ $use->gender }} </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
