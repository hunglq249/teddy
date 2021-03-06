<!-- /.content-wrapper -->
<footer>
    <div class="container-fluid">
<!--		<div class="left image">-->
<!--			<div class="mask">-->
<!--				<img src="https://images.unsplash.com/photo-1488992783499-418eb1f62d08?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94653fa675a682fedd91970fae3fa1e1&auto=format&fit=crop&w=1453&q=80" alt="image footer">-->
<!--			</div>-->
<!--		</div>-->
<!---->
<!--		<div class="right image">-->
<!--			<div class="mask">-->
<!--				<img src="https://images.unsplash.com/photo-1488992783499-418eb1f62d08?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94653fa675a682fedd91970fae3fa1e1&auto=format&fit=crop&w=1453&q=80" alt="image footer">-->
<!--			</div>-->
<!--		</div>-->

		<div class="container">
			<div class="row head">
				<div class="col-xs-12 col-sm-6 col-lg-2 item">
					<ul>
						<li>
							<a href="<?php echo base_url('gioi-thieu') ?>">
                                <?php echo $this->lang->line('about')?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('thuc-don/') ?>">
                                <?php echo $this->lang->line('menu')?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('bai-viet/') ?>">
                                <?php echo $this->lang->line('blogs')?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('contact/') ?>">
                                <?php echo $this->lang->line('contact')?>
							</a>
						</li>
						<li>
							<a href="<?php echo base_url('reservations/') ?>">
                                <?php echo $this->lang->line('reservations')?>
							</a>
						</li>
					</ul>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 item">
					<p class="paragraph"><?php echo $this->lang->line('location')?></p>
					<p class="paragraph">
                        <?php echo $contact->address ?>
					</p>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-4 item">
					<p class="paragraph"><?php echo $this->lang->line('reservations')?></p>
					<table class="table">
						<tr>
							<td>Phone</td>
							<td><a href="tel: <?php echo $contact->numberphone ?>"><?php echo $contact->numberphone ?></a></td>
						</tr>
						<tr>
							<td>Email</td>
							<td><a href="mailto:<?php echo $contact->email ?>"><?php echo $contact->email ?></a></td>
						</tr>
					</table>
				</div>

				<div class="col-xs-12 col-sm-6 col-lg-2 item">
					<p class="paragraph"><?php echo $this->lang->line('subscribe-us')?></p>
					<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="<?php echo $this->lang->line('form-email')?>">
					<button type="button" class="btn btn-link"><?php echo $this->lang->line('subscribe')?></button>
				</div>
			</div>

			<div class="row foot">
				<div class="col">
					<p class="paragraph">2019 Teddy’s Grill House</p>
				</div>
				<div class="col">
					<ul>
						<li>
							<a href="" target="_blank">
								<i class="fab fa-facebook-square"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fab fa-twitter-square"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fab fa-instagram"></i>
							</a>
						</li>
						<li>
							<a href="" target="_blank">
								<i class="fab fa-youtube-square"></i>
							</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
</footer>


<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>	

<!-- popper js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>

<!-- Bootstrap js -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>

<!-- Script -->
<script src="<?php echo site_url('assets/js/') ?>script.js"></script>
<script>
    $(".change-language").click(function(){
        $.ajax({
            method: "GET",
            url: "http://teddys.vn/homepage/change_language",
            data: {
                lang: $(this).data('language')
            },
            async:false,
            success: function(res){
                if(res.message == 'changed'){
                    window.location.reload();
                }
            },
            error: function(){

            }
        });
    });
</script>
</body>
</html>