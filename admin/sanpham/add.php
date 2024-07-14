<div class="col-sm-10 col-md-10 ">
    <h3>Thêm sản phẩm</h3>
<form action="index.php?act=addsp" method="post" enctype="multipart/form-data">
        <label for="" class="form-label">Mã sản phẩm</label>
        <input type="text" name="masp" id="" class="form-control" >
        <label for="" class="form-label">Tên sản phẩm</label>
        <input type="text" name="tensp" id="" class="form-control" required>
        <label for="" class="form-label">Ảnh sản phẩm</label>
        <input type="file" name="img" class="form-control" id="" required>
        <label for="" class="form-label">Giá sản phẩm</label>
        <input type="text" name="gia" id="" class="form-control" required>
        <label for="" class="form-label">Mô tả sản phẩm</label>
        <input type="text" name="mota" id="" class="form-control" required>
        <label for="" class="form-label">Lượt xem sản phẩm</label>
        <input type="number" name="luotxem" id="" class="form-control" required>
        <label for="" class="form-label">Loại sản phẩm</label>
        <select name="idloai" id="" class="form-select">
            <?php
            foreach ($listdanhmuc as $dm) {
              ?> <option value="<?php echo $dm['id'] ?>"><?php echo $dm['name_dm']?></option>
           <?php
           }
            ?>
        
        </select> 
        <br>
        
           <input class="btn btn-danger" type="submit" value="Thêm sản phẩm" name="themsp">
           <a href="index.php?act=listsp"><input class="btn btn-secondary my-2 " type="button" value="danh sách"></a>
    </form>
</div>
</div>
</div>