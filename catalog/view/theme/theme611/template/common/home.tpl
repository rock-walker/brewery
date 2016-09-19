<?php echo $header; ?>
<div class="header_modules"><?php echo $header_top; ?></div>
<div id="container">
	<div id="block-4">
		<div class="wrap">
			<ul class="yaiki">
				<li class="yaika-1">Доставка по РБ без предоплаты</li>
				<li class="yaika-2">Ингредиенты из Чехии, США,<br>Новой Зеландии, Франции</li>
				<li class="yaika-3">Широкий ассортимент продуктов в наличии</li>
			</ul>
		</div>
	</div>
	<div class="Inpinto_brewing">
        <div class="rd-video" style="position: relative; overflow: hidden; z-index: 5;">
        	<iframe id="player" class="rd-youtube-bg" data-video-id="0ZK03D2qM6k" data-mute="true" data-mobile="true" data-start="0" style="position: absolute; z-index: -2; width: 485px; height: 273px; left: 0px; top: -69.5px;" frameborder="0" allowfullscreen="1" title="YouTube video player" src="https://www.youtube.com/embed/0ZK03D2qM6k?controls=0&amp;showinfo=0&amp;modestbranding=1&amp;wmode=transparent&amp;iv_load_policy=3&amp;enablejsapi=1&amp;origin=http%3A%2F%2Flocalhost&amp;widgetid=1">
        	</iframe>
        	<div class="rd-video_cnt">
    			<p><br></p>
    		</div>
    		<div class="rd-overlay" style="position: absolute; top: 0px; left: 0px; width: 100%; height: 100%; z-index: -1;"></div>
    	</div>
	</div>
	<div class="container">
		<div class="row"><?php echo $column_left; ?>
		<?php if ($column_left && $column_right) { ?>
		<?php $class = 'col-sm-6'; ?>
		<?php } elseif ($column_left || $column_right) { ?>
		<?php $class = 'col-sm-9'; ?>
		<?php } else { ?>
		<?php $class = 'col-sm-12'; ?>
		<?php } ?>
		<div id="content" class="<?php echo $class; ?>"><?php echo $content_top; ?></div>
		<?php echo $column_right; ?></div>
	</div>
</div>
<div class="content_bottom">
			<?php echo $content_bottom; ?>
</div>
<?php echo $footer; ?>