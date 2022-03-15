$(function() {
	switch (menu) {
		case 'All products':
			//alert("ccsce");
			$('#products a').addClass('active');
			break;
		case 'About Us':
			$('#about a').addClass('active');
			break;
		case 'Get in touch with Us':
			$('#contact a').addClass('active');
			break;
		default:
			//if(menu=="home") break;
			$('#home a').addClass('active');
			break;
	}

	var $table = $('#productListTable');

	if ($table.length) {
		// console.log('inside the table!');

		var jsonUrl = '';
		if (window.categoryId == '') {
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}
		else {
			jsonUrl = window.contextRoot + '/json/data/category/' + window.categoryId + '/products';
		}

		$table.DataTable({
			lengthMenu: [[3, 5, 10, -1], ['3 Records', '5 Records', '10 Records', 'All']],
			pageLength: 5,
			//data: products
			ajax: {
				url: jsonUrl,
				dataSrc: ''
			},
			columns: [
				{
					data: 'code',
					mRender: function(data, type, row) {
						return '<img src="' + window.contextRoot + '/resources/images/' + data + '.jpg" class="dataTabImg"/>';
					}
				},
				{
					data: 'name',
				},
				{
					data: 'brand',
					width: '40px'
				},
				{
					data: 'unitPrice',
					mRender: function(data, type, row) {
						return '&#36; ' + data
					}
				},
				{
					data: 'quantity',
					mRender: function(data, type, row){
						if(data < 1){
							return '<span style="color: #BB2D3B">Out of Stock</span>';
						}
						return data;
					}
				},
				{
					data: 'id',
					bSortable: false,
					width: '120px',
					mRender: function(data, type, row) {
						var str = '';
						str += '<a href="' + window.contextRoot + '/show/' + data + '/product" class="btn btn-primary me-1"><i class="fa-solid fa-eye"></i></a>';
						if(row.quantity < 1){
							str += '<a href="javascript:void(0)" class="btn btn-success disabled"><i class="fa-solid fa-cart-plus"></i></a>';
						} else {
							str += '<a href="' + window.contextRoot + '/cart/add' + data + '/product" class="btn btn-success"><i class="fa-solid fa-cart-plus"></i></a>';
						}
						return str;
					}
				}


			]
		});
	}

});

$('.hero__categories__all').on('click', function() {
	$('#caret-down-cat').toggleClass("bi-caret-up bi-caret-down");
	$('.hero__categories ul').slideToggle(400);
});

jQuery(function($) {
	$("#catMenu a")
		.click(function(e) {
			//alert('hello');
			var link = $(this);

			var item = link.parent("li");

			if (item.hasClass("active")) {
				item.removeClass("active").children("a").removeClass("active");
			} else {
				item.addClass("active").children("a").addClass("active");
			}

			if (item.children("ul").length > 0) {
				var href = link.attr("href");
				link.attr("href", "#");
				setTimeout(function() {
					link.attr("href", href);
				}, 300);
				e.preventDefault();
			}
		})
		.each(function() {
			var link = $(this);
			if (link.get(0).href === location.href) {
				link.addClass("active").parents("li").addClass("active");
				return false;
			}
		});
});
