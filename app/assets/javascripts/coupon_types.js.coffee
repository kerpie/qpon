$ ->
	$(".editCouponType").click ->
		$("#update_id").val($(this).data("id"))
		$(this).parents("tr").addClass("toChange")
		$("#update_form").show()

	$(".new_coupon_type").click ->
		$(this).parent().hide()
		$("#new_form").show()