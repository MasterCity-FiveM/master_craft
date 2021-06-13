var Config = new Object();
Config.closeKeys = [112, 113, 114, 27, 115, 120, 121]; 


$(document).ready(function () {
	$("body").on("keyup", function (key) {
		if (Config.closeKeys.includes(key.which)) {
			$.post("https://master_craft/closeUI", JSON.stringify({}));
		}
	});
	
	window.addEventListener("message", function (event) {
		if (event.data.action == "show") {
			
			$('#items').html("");
			var items = '';
			$.each(event.data.items, function(item, data) {
				items += '<div class="col"><div class="card text-center"><img src="nui://Master_Inventory/html/img/items/' + item + '.png" class="card-img-top"><div class="card-body">';
				items += '<h5 class="card-title">' + data.label + ' (x' + data.count + ')</h5><p class="card-text"><ul>';
				items += '<li>هزینه (' + data.price + '$)</li>';
				$.each(data.requirements, function(req, data2) {
					items += '<li>' + data2.label + ' (' + data2.count + ' عدد)</li>';
				});
				items += '<ul></p></div><div class="card-footer">';
				if(data.isBuy == true) {
					items += '<button type="button" class="btn btn-success createBTN" data-itemname="' + item + '">خرید</button>';
				} else {
					items += '<button type="button" class="btn btn-primary createBTN" data-itemname="' + item + '">ساختن</button>';
				}
				items += '</div></div></div>';
			});
			
			$('#items').html(items);
			
			showUI();
		} else if (event.data.action == "hide") {
			closeUI();
		}
	});
	
	function showUI() {
		$(".ui").show();
	}
	
	function closeUI() {
		$(".ui").hide();
	}
	
	$(document).on('click', '.createBTN', function(e) {
		var itemname = $(this).data('itemname');
		if(itemname != "")
		{
			$.post("https://master_craft/createItem", JSON.stringify({item: itemname}));
		}
	});
	
});
