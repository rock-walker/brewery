<script>
	jQuery(function(){
		jQuery('#camera_wrap_<?php echo $module; ?>').camera({
			navigation: true,
			playPause: false,
			thumbnails: false,
			navigationHover: false,
			barPosition: 'top',
			loader: false,
			time: 3000,
			transPeriod:800,
			alignment: 'center',
			autoAdvance: true,
			mobileAutoAdvance: true,
			barDirection: 'leftToRight', 
			barPosition: 'bottom',
			easing: 'easeInOutExpo',
			fx: 'simpleFade',
			height: '39%',
			minHeight: '300px',
			hover: true,
			pagination: false,
			loaderColor			: '#1f1f1f', 
			loaderBgColor		: 'transparent',
			loaderOpacity		: 1,
			loaderPadding		: 0,
			loaderStroke		: 3,
			});

		$.extend({
			uamobile: "Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini",
	
			infoBlock: function (command, content) {
				var $infoblock = $(".jq-infoblock");
				
				if (command == 'err') {
					$infoblock.addClass('err');
					$infoblock.find('span')
						.html('Пожалуйста, укажите номер телефона');
				} else {
					$infoblock.removeClass('err');
				}
				
				if (command == 'close') {
					$infoblock.css({'opacity': '0', 'top': '-200px'});
				} else {

					content = "Спасибо, ожидайте звонка.";
					if(navigator.userAgent.match($.uamobile)){
						alert(content);
					
					} else {
						
						$infoblock.css({'opacity': '1','top': '0px'})
						 .find('span')
						 .html(content);
					}
				}
			}
		});

	$(document).keydown(function(e){
		switch(e.keyCode) {
			case 27:
				$.infoBlock('close');
			break;
		}	
	});

	$(document).ready(function(){
		$("#block-3 form").ajaxForm(function(){
			$.infoBlock();
		})

		var maskElement = $("#block-3 form input[type='text']");
		maskElement.mask("+375 (99) 999-99-99");
	});
});
</script>


<div class="jq-infoblock">
	<span></span>
	<div class="jq-close-info" onclick="$.infoBlock('close')">×</div>
</div>
<!--.infoblock-->

<div class="camera_container">
<div id="camera_wrap_<?php echo $module; ?>">
<?php foreach ($banners as $banner) { ?>
	<div title="<?php echo $banner['title']; ?>" data-thumb="<?php echo $banner['image']; ?>" <?php if ($banner['link']) { ?> data-link="<?php echo $banner['link']; ?>"<?php } ?> data-src="<?php echo $banner['image']; ?>">
		<?php if ($banner['description']) { ?>
		<div class="camera_caption fadeIn">
			<?php echo $banner['description']; ?>
		</div>
		<?php } ?>
	</div>
<?php } ?>
</div>

<div id="block-3">
	<div class="wrap">
		<h3>Пн - Вс: с 9:00 до 21:00<br><span><h2>8 (029) 52 52 133</h2></span>
			<a id="viber_logo"><img src="image/catalog/viber_logo.png"/></a>
    			<script>
    				var buttonID = "viber_logo";
    				var text = "Check this out: ";
    				document.getElementById(buttonID).setAttribute('href',
    				 "viber://forward?text=" + encodeURIComponent(text + " " + window.location.href));
    			</script>
		</h3>
		<div class="clearing"></div>
		
		<div class="ordering-pretty">
          <p class="pretty-title">Закажите звонок</p>
			<p class="pretty-call">и мы расскажем вам, <br/>как сварить пиво дома</p><p></p>
			<form action="index.php?route=module/mailer" method="post" class="">
				<input type="text" name="phone" placeholder="Введите ваш телефон" class="err-form"><br>
				<input type="hidden" name="info" value="Форма в шапке">
				<input type="hidden" name="target" value="allt">
				<button class="product-btn-add">Заказать звонок</button>
			</form>
		</div>
		
		<div class="clearing" style="display:block"></div>
	</div>
</div>
</div>

