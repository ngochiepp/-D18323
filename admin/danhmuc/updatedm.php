<div class="col-sm-10 col-md-10 ">
    <h3>Sửa danh mục</h3>
<form action="index.php?act=updatedm" method="post">
        <label for="" class="form-label">Mã loại:</label>
        <input type="text" name="id" id="" class="form-control" disabled>
        <label for="" class="form-label">Tên loại:</label>
        <input type="hidden" name="id" value=<?php echo $dm['id']?>>
        <input type="text" name="tenloai" id="" class="form-control" value="<?php echo $dm['name_dm'] ?>">
        <div class="d-flex ">
        <input class="btn btn-danger " type="submit" value="cập nhật danh mục" name="capnhatdm" >
        <a href="index.php?act=listdm"><input class="btn btn-secondary mx-3 " type="button" value="danh sách danh mục"></a>
        </div>
    </form>
</div>
</div>
</div>



