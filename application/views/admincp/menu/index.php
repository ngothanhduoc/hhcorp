
<script type="text/javascript" src="/public/admin/assets/js/backend/backend.menu.js"></script>


<div class="pageheader notab">
	<h1 class="pagetitle">Danh sách menu</h1>
	<span class="pagedesc"></span>
	
</div><!--pageheader-->
<div id="contentwrapper" class="contentwrapper lineheight21">
	<div id="jqxgrid"></div>				
</div><!--contentwrapper-->

<script type="text/javascript">
	setActiveMenu('menu');
        setActiveSubMenu('backend-menu-index');
	var arrGroup = <?php echo @json_encode($menu_group)?>;

</script>
