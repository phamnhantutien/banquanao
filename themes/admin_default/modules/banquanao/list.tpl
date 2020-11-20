<!-- BEGIN: main -->
<div class="table-responsive">
    <table class="table table-striped table-bordered table-hover">
        <thead>
            <tr class="text-center">
                <th class="text-nowrap">Số thứ tự</th>
                <th class="text-nowrap">Họ tên</th>
                <th class="text-nowrap">Địa chỉ</th>
                <th class="text-nowrap">Email</th>
                <th class="text-nowrap">Phone</th>               
                <th class="text-center text-nowrap">Chức năng</th>
            </tr>
        </thead>
        <tbody>
            <!-- BEGIN: loop -->
            <tr>
				<td class="text-center">{ROW.stt}</td>
                <td>{ROW.fullname}</td>
                <td>{ROW.address}</td>
                <td>{ROW.email}</td>
                <td>{ROW.phone}</td>                
                <td class="text-center text-nowrap">
                <a href="{ROW.url_edit}" class="btn btn-default btn-sm"><i class="fa fa-edit"></i> Sửa</a>
                <a href="{ROW.url_delete}" class="btn btn-danger btn-sm delete"><i class="fa fa-trash-o"></i> Xóa</a></td>
            </tr>
            <!-- END: loop -->
        </tbody>
    </table>
    <div class="text-center">{GENERATE_PAGE}</div>
</div>
<script>
$(document).ready(function (){
    $('.delete').click(function () {
        if (confirm("bạn có muốn xóa!")) {
            return true;
        } else {
            return false;
        }
    });
});
</script>

<!-- END: main -->
