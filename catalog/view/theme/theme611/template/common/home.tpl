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