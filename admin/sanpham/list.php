<div class="col-sm-10 col-md-10 ">
  <h3>Danh sách sản phẩm</h3>
<form action="index.php?act=listsp" method="post">
  <label for=""  class="form_label">Tên sản phẩm</label>
                    <input type="text" name="kyw" id="" class="form-control">
                    
                <div class="my-2 ">
                <select name="iddm" id="">
                        <option value="0" selected>Tất cả</option>
                    <?php
                    foreach ($listdanhmuc as $danhmuc) {
                      ?>
                      <option value="<?php echo $danhmuc['id']?>"><?php echo $danhmuc['name_dm']?></option>
                      <?php
                    }
                    ?>
                    
                </select>
                <input type="submit" value="Lọc" name="listok" class="btn btn-danger">
                <a href="index.php?act=spbt"><input type="button" value="thêm biến thể" class="btn btn-primary"></a>
                </div>
                </form>
                 
<table class="table table-bordered">
    <thead class="thead-dark">
    <tr>
    <th>Mã sản phẩm</th>
    <th>Tên sản phẩm</th>
    <th>Ảnh sản phẩm</th>
    <th>Giá sản phẩm</th>
    <th>size sản phẩm</th>
    <th>màu sản phẩm</th>
    <th colspan='2'>Action</th>
    </tr>
    </thead>
    <?php foreach ($listsanpham as $sp) {
    ?>
    <tr>
        <td><?php echo $sp['id']?></td>
        <td><?php echo $sp['tensp']?></td>
        <td><img src="../upload/<?php echo $sp['img']?>" alt="" height='80px'></td>
        <td><?php echo $sp['gia']?></td>
        <td><?php echo $sp['size']?></td>
        <td><?php echo $sp['mau']?></td>
        <!-- <td><a href="index.php?act=xoasp&id=<?php echo $sp['id']?>"><input type="button" value="Xóa" class="btn btn-danger"></a></td> -->
        <td><a href="index.php?act=suasp&id=<?php echo $sp['id']?>"><input type="button" value="Sửa" class="btn btn-danger"></a></td>
       
    </tr>
    <?php
    }?>
  </table>
  <div class="d-flex justify-content-end "><a class="btn btn-secondary my-2" href="index.php?act=addsp">Thêm sản phẩm</a></div>
</div>
</div>
</div>