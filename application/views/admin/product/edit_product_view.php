<link rel="stylesheet" href="<?php echo site_url('assets/sass/admin/') ?>detail.css">
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Cập nhật
            <small>
                Thực Đơn
            </small>
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box box-default">
                    <div class="box-body">
                        <?php
                        echo form_open_multipart('', array('class' => 'form-horizontal'));
                        ?>
                        <div class="col-xs-12">
                            <h4 class="box-title">Basic Information</h4>
                        </div>
                        <div class="row">
                            <span><?php echo $this->session->flashdata('message'); ?></span>
                        </div>
                        <div class="form-group col-xs-12">
                            <label for="image_shared">Hình ảnh đang dùng</label>
                            <br>
                            <?php foreach (json_decode($detail['image']) as $key => $value): ?>
                                <div class="item col-md-3 row_<?php echo $key ?>">
                                    <div class="mask-sm">
                                        <img src="<?php echo base_url('assets/upload/'. $controller .'/'. $detail['slug'] .'/'. $value); ?>" width=150px>
                                        <i class="fa fa-times-circle fa-2x" onclick="remove_image('product',  <?php echo $detail['id'] ?>, '<?php echo $value ?>', <?php echo $key ?>)" ></i>
                                    </div>
                                </div>
                            <?php endforeach ?>
                            
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Ảnh đại diện', 'image_shared');
                            echo form_error('image_shared');
                            echo form_upload('image_shared[]', set_value('image_shared'), 'class="form-control" multiple');
                            ?>
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Sản phẩm đặc biệt', 'isspecial_shared');
                            echo form_error('isspecial_shared');
                            echo '<br />';
                            ?>
                            <input type="checkbox" name="isspecial_shared" value="1">
                            <br>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Slug', 'slug_shared');
                            echo form_error('slug_shared');
                            echo form_input('slug_shared', $detail['slug'], 'class="form-control" id="slug_shared" readonly');
                            ?>
                        </div>

                        
                        <div class="form-group col-xs-12">
                            <select name="parent_id_shared" class="form-control">
                                <?php echo $product_category; ?>
                            </select>
                        </div>

                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Giá', 'price_shared');
                            echo form_error('price_shared');
                            echo form_input('price_shared', $detail['price'], 'class="form-control" id="price_shared"');
                            ?>
                        </div>
                        <div class="form-group col-xs-12">
                            <?php
                            echo form_label('Giảm Giá', 'discount_shared');
                            echo form_error('discount_shared');
                            echo form_input('discount_shared', $detail['discount'], 'class="form-control" id="discount_shared"');
                            ?>
                        </div>

                        <div>
                            <ul class="nav nav-pills nav-justified" role="tablist">
                                <?php $i = 0; ?>
                                <?php foreach ($page_languages as $key => $value): ?>
                                    <li role="presentation" class="<?php echo ($i == 0)? 'active' : '' ?>">
                                        <a href="#<?php echo $key ?>" aria-controls="<?php echo $key ?>" role="tab" data-toggle="tab">
                                            <span class="badge"><?php echo $i + 1 ?></span> <?php echo $value ?>
                                        </a>
                                    </li>
                                <?php $i++; ?>
                                <?php endforeach ?>
                                
                            </ul>
                            <hr>
                            <div class="tab-content">
                                <?php $i = 0; ?>
                                <?php foreach ($template as $key => $value): ?>
                                    <div role="tabpanel" class="tab-pane <?php echo ($i == 0)? 'active' : '' ?>" id="<?php echo $key ?>">
                                        <?php foreach ($value as $k => $val): ?>
                                            <div class="form-group col-xs-12">
                                                <?php
                                                    if($k == 'title' && in_array($k, $request_language_template)){
                                                        echo form_label($val, $k .'_'. $key);
                                                        echo form_error($k .'_'. $key);
                                                        echo form_input($k .'_'. $key, trim($detail['title_'. $key]), 'class="form-control" id="title_'.$key.'"');
                                                    }elseif($k == 'description' && in_array($k, $request_language_template)){
                                                        echo form_label($val, $k .'_'. $key);
                                                        echo form_error($k .'_'. $key);
                                                        echo form_textarea($k .'_'. $key,  trim($detail['description_'. $key]), 'class="form-control" rows="5"');
                                                    }elseif($k == 'content' && in_array($k, $request_language_template)){
                                                        echo form_label($val, $k .'_'. $key);
                                                        echo form_error($k .'_'. $key);
                                                        echo form_textarea($k .'_'. $key,  trim($detail['content_'. $key]), 'class="tinymce-area form-control" rows="5"');
                                                    }
                                                ?>
                                            </div>
                                        <?php endforeach ?>
                                    </div>
                                <?php $i++; ?>
                                <?php endforeach ?>
                            </div>
                        </div>
                        <?php echo form_submit('submit_shared', 'OK', 'class="btn btn-primary"'); ?>
                        <?php echo form_close(); ?>
                    </div>
                </div>
            </div>
        </div>
    </section>
</div>
<script type="text/javascript" src="<?php echo base_url('assets/js/admin/script.js') ?>"></script>
<script type="text/javascript" src="<?php echo base_url('assets/js/admin/common.js') ?>"></script>

