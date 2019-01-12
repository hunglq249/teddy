<section id="contact">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 offset-sm-6">
                <h3 class="subtitle-md">
                    <?php echo $this->lang->line('contact') ?>
				</h3>

                <h2 class="title-md">
					<?php echo $this->lang->line('contact-title') ?>
				</h2>

                <p class="paragraph">
                    <?php echo $this->lang->line('contact-description') ?>
                </p>

                <?php
                echo form_open_multipart('', array('class' => 'form-horizontal'));
                ?>

                <div class="form-group col-xs-12">
                    <?php
                    echo form_error('contact_name', '<div class="error">', '</div>');
                    echo form_input('contact_name', set_value('contact_name'), 'class="form-control" id="contact_name" placeholder="' . $this->lang->line('form-name') . '"');
                    ?>
                </div>

                <div class="form-group col-xs-12">
                    <?php
                    echo form_error('contact_mail', '<div class="error">', '</div>');
                    echo form_input('contact_mail', set_value('contact_mail'), 'class="form-control" id="contact_mail" placeholder="' . $this->lang->line('form-email') . '"');
                    ?>
                </div>

                <div class="form-group col-xs-12">
                    <?php
                    echo form_error('contact_phone', '<div class="error">', '</div>');
                    echo form_input('contact_phone', set_value('contact_phone'), 'class="form-control" id="contact_phone" placeholder="' . $this->lang->line('form-phone') . '"');
                    ?>
                </div>

                <div class="form-group col-xs-12">
                    <?php
                    echo form_error('contact_address', '<div class="error">', '</div>');
                    echo form_input('contact_address', set_value('contact_address'), 'class="form-control" id="contact_address" placeholder="' . $this->lang->line('form-address') . '"');
                    ?>
                </div>

                <div class="form-group col-xs-12">
                    <?php
                    echo form_error('contact_message');
                    echo form_textarea('contact_message', set_value('contact_message'), 'class="form-control" id="contact_message" placeholder="' . $this->lang->line('form-message') . '"');
                    ?>
                </div>

                <div class="col-xs-12">
                    <?php echo form_submit('submit', $this->lang->line('send'), 'class="btn btn-primary"'); ?>
                </div>
                <?php echo form_close(); ?>
            </div>
        </div>
    </div>

    <div class="cover d-none d-sm-block">
        <div class="mask">
            <?php echo html_entity_decode($contact->map,ENT_NOQUOTES); ?>
        </div>
    </div>

    <div id="side-title">
        <h1 class="title-xlg">Contact</h1>
    </div>
</section>