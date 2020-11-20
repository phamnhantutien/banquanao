<!-- BEGIN: main -->
<!-- BEGIN: err -->
<div class="alert alert-warning" role="alert">
  {ERR}
</div>
<!-- END: err -->
<form action="{NV_BASE_ADMINURL}index.php?{NV_LANG_VARIABLE}={NV_LANG_DATA}&amp;{NV_NAME_VARIABLE}={MODULE_NAME}&amp;{NV_OP_VARIABLE}={OP}" method="post" enctype="multipart/form-data">
<input type="hidden" name="id" value="{POST.id}">
    <div class="form-group row">
        <div class="col-md-4">
            <label><strong>Họ tên</strong></label>
        </div>
        <div class="col-md-20">
            <input class="form-control" type="text" name="fullname" value="{POST.fullname}" />
        </div>
    </div>
    <div class="form-group row">
        <div class="col-md-4">
            <label><strong>Địa chỉ</strong></label>
        </div>
        <div class="col-md-20">
            <input class="form-control" type="text" name="address" value="{POST.address}" />
        </div>
    </div>
    <div class="form-group row">
        <div class="col-md-4">
            <label><strong>Email</strong></label>
        </div>
        <div class="col-md-20">
            <input class="form-control" type="email" name="email" value="{POST.email}" />
        </div>
    </div>
    <div class="form-group row">
        <div class="col-md-4">
            <label><strong>Số điện thoại</strong></label>
        </div>
        <div class="col-md-20">
            <input class="form-control" type="text" name="phone" value="{POST.phone}" />
        </div>
    </div>
    <div class="text-center">
        <input class="btn btn-primary" name="submit" type="submit" value="{LANG.save}" />
    </div>
</form>
<!-- END: main -->
