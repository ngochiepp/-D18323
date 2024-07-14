<div class="col-sm-10 col-md-10 ">
    <h3>Danh sách đăng ký thành viên</h3>
<table class="table table-bordered adm">
                                <thead class="thead-dark ">
                                    <tr>
                                        <th>Tên</th> 
                                        <th>Password</th>
                                        <th>Email</th>
                                        <th>Số điện thoại</th>
                                        <th>Địa chỉ</th>
                                        <th>Tùy chọn</th>
                                    </tr>
                                </thead>
                                <?php 
                                foreach($listdangky as $taikhoan){
                                    extract($taikhoan);
                                    $xoadk="index.php?act=xoadk&id=".$id;
                                    $suadk="index.php?act=suadk&id=".$id;
                                echo'<tbody class="align-middle">
                                    <tr>
                                        <td>'.$name.'</td>
                                        <td>'.$pass.'</td>
                                        <td>'.$email.'</td>
                                        <td>'.$sdt.'</td>
                                        <td>'.$diachi.'</td>
                                        <td><a href="'.$xoadk.'" ><input type="button" value="Xóa" class="btn btn-danger"></a>
                                       
                                    </tr>
                                    
                                </tbody>';
                                }
                                
                                
                                ?>
                            </table>
</div>
</div>
</div>