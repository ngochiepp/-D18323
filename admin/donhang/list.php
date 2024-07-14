<div class="col-sm-10 col-md-10 ">
<h3>Danh sách đơn hàng</h3>
<table class="table table-bordered adm">
                                <thead class="thead-dark ">
                                    <tr>
                                        <!-- <th>Id</th> -->
                                        <th>Tên người đặt</th>
                                        <th>Địa chỉ</th>
                                        <th>Số điện thoại</th>
                                        <th>Email</th>
                                        <th>Pttt</th>
                                        <th>Trạng thái</th>
                                        <th>Ngày đặt</th>
                                        <th>Thành tiền</th>
                                       
                                        <th>Tùy chọn</th>
                                    </tr>
                                </thead>
                                <?php 
                                foreach($listdonhang as $bill){
                                    extract($bill);
                                  
                                 ?>
                                <tbody class="align-middle">
                                    <tr>
                                        <td><?php echo $bill_name?></td>
                                        <td><?php echo $bill_diachi?></td>
                                        <td><?php echo $bill_sdt?></td>
                                        <td><?php echo $bill_email?></td>
                                        <td>
                                            <?php
                                        switch($id_pttt){
                                            case '1':
                                                $txtmess="Thanh toán khi nhận hàng";
                                            break;
                                            case '2':
                                                $txtmess="Thanh toán qua VNPay";
                                            break;
                                            default:
                                            $txtmess="chưa chọn";
                                            break;
                                        }
                                        echo $txtmess;
                                        ?></td>
                                        <td><?php echo $trangthai?> </td>
                                        <td><?php echo $ngaydathang?> </td>
                                        <td><?php echo $total?> </td>
                                      
                                        
                                        <td><a href="index.php?act=suabill&id=<?php echo $id ?> " ><input type="button" value="Cập nhật trạng thái" class="btn btn-danger"></a></td>
                                    </tr>
                                    
                                </tbody>;
                               <?php }
                                
                                
                                ?>
                            </table>
</div>
</div>
</div>