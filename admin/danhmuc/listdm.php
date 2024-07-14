<div class="col-sm-10 col-md-10 ">
    <h3>Danh sách danh mục</h3>
<table class="table table-bordered">
    <thead class="thead-dark">
    <tr>
    <th>Số thứ tự</th>
    <th>Tên danh mục</th>
    <th colspan="2">action</th>
    </tr>
    </thead>
    <?php foreach ($listdanhmuc as $dm) {
    ?>
    <tr>
        <td><?php echo $dm['id']?></td>
        <td><?php echo $dm['name_dm']?></td>
        <td ><a href="index.php?act=suadm&id=<?php echo $dm['id']?>"><input type="button" value="Sửa" class="btn btn-danger"></a></td>
        <!-- <td><a href="index.php?act=xoadm&id=<?php echo $dm['id']?>"><input type="button" value="Xóa" class="btn btn-danger"></a></td> -->
    </tr>
    <?php
    }?>
  </table>

  <div class="d-flex justify-content-end "><a href="index.php?act=adddm" class="btn btn-secondary my-2 "> Thêm danh mục</a></div>
</div>
</div>
</div>