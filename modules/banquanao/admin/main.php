<?php

/**
 * @Project NUKEVIET 4.x
 * @Author VINADES.,JSC <contact@vinades.vn>
 * @Copyright (C) 2020 VINADES.,JSC. All rights reserved
 * @License: Not free read more http://nukeviet.vn/vi/store/modules/nvtools/
 * @Createdate Sat, 31 Oct 2020 02:20:33 GMT
 */

if (!defined('NV_IS_FILE_ADMIN')) {
    die('Stop!!!');
}

$page_title = $lang_module['main'];

$post = $err = [];
$post['id'] = $nv_Request->get_int('id', "post,get", 0);
if ($nv_Request->isset_request("submit", "post")) {
    $post['fullname'] = $nv_Request->get_title('fullname', "post", '');
    $post['address'] = $nv_Request->get_title('address', "post", '');
    $post['email'] = $nv_Request->get_title('email', "post", '');
    $post['phone'] = $nv_Request->get_title('phone', "post", '');
    if ($post['fullname'] == '') {
        $err[] = "Chưa nhập họ tên";
    }
    if ($post['address'] == '') {
        $err[] = "Chưa nhập địa chỉ";
    }
    if ($post['phone'] == '') {
        $err[] = "Chưa nhập số điện thoại";
    } else if (!preg_match("/[0-9]{10,11}/", $post['phone'])) {
        $err[] = "Số điện thoại chưa đúng quy tắc";
    }

    if ($post['email'] == '') {
        $err[] = "Chưa nhập email";
    } else if (!preg_match("/(.*?)@(.*?)/", $post['email'])) {
        $err[] = "Email chưa đúng quy tắc";
    }

    if (empty($err)) {
        try {
            if ($post['id'] > 0) {
                // update
                $sql = "UPDATE nv4_banquanao_user SET fullname=:fullname, address=:address, email=:email, phone=:phone WHERE id= " . $post['id'];
                $stmt = $db->prepare($sql);
            } else {
                // insert
                $sql = "INSERT INTO nv4_banquanao_user( fullname, address, email, phone) VALUES (:fullname, :address, :email,:phone)";
                $stmt = $db->prepare($sql);
            }
            $stmt->bindParam("fullname", $post['fullname']);
            $stmt->bindParam("address", $post['address']);
            $stmt->bindParam("email", $post['email']);
            $stmt->bindParam("phone", $post['phone']);
            $exe = $stmt->execute();
            if ($exe) {
                if ($post['id'] > 0) {
                    $err[] = "Update ok";
                } else {
                    $err[] = "insert ok";
                }
            } else {
                $err[] = "Lỗi k thực hiện được";
            }
        } catch (PDOException $e) {
            print_r($e);die;
        }
    }
} else if ($post['id'] > 0) {
    // tồn tại id thì thực hiện lấy dữ liệu của id đó
    $sql = "SELECT * FROM nv4_banquanao_user WHERE id = " . $post['id'];
    $post = $db->query($sql)->fetch();
} else {
    $post['fullname'] = '';
    $post['address'] = '';
    $post['email'] = '';
    $post['phone'] = '';
}

$xtpl = new XTemplate('main.tpl', NV_ROOTDIR . '/themes/' . $global_config['module_theme'] . '/modules/' . $module_file);
$xtpl->assign('LANG', $lang_module);
$xtpl->assign('NV_LANG_VARIABLE', NV_LANG_VARIABLE);
$xtpl->assign('NV_LANG_DATA', NV_LANG_DATA);
$xtpl->assign('NV_BASE_ADMINURL', NV_BASE_ADMINURL);
$xtpl->assign('NV_NAME_VARIABLE', NV_NAME_VARIABLE);
$xtpl->assign('NV_OP_VARIABLE', NV_OP_VARIABLE);
$xtpl->assign('MODULE_NAME', $module_name);
$xtpl->assign('OP', $op);

$xtpl->assign('POST', $post);
if (!empty($err)) {
    $xtpl->assign('ERR', implode("<br/>", $err));
    $xtpl->parse('main.err');
}

$xtpl->parse('main');
$contents = $xtpl->text('main');

include NV_ROOTDIR . '/includes/header.php';
echo nv_admin_theme($contents);
include NV_ROOTDIR . '/includes/footer.php';
