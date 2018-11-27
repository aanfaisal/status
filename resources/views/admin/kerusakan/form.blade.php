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

<div class="form-group {{ $errors->has('keterangan') ? 'has-error' : ''}}">
    {!! Form::label('keterangan', 'Keterangan', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::text('keterangan', null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('keterngan', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group {{ $errors->has('status') ? 'has-error' : ''}}">
    {!! Form::label('status', 'Status', ['class' => 'col-md-4 control-label']) !!}
    <div class="col-md-6">
        {!! Form::select('status', ['Antrian' => 'Antrian', 'Proses' => 'Proses', 'Selesai' => 'Selesai'], null, ('' == 'required') ? ['class' => 'form-control', 'required' => 'required'] : ['class' => 'form-control']) !!}
        {!! $errors->first('status', '<p class="help-block">:message</p>') !!}
    </div>
</div>

<div class="form-group">
    <div class="col-md-offset-4 col-md-4">
        {!! Form::submit(isset($submitButtonText) ? $submitButtonText : 'Lapor Data', ['class' => 'btn btn-primary']) !!}
    </div>
</div>
