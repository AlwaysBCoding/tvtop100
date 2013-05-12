$ ->
	$(".chzn-select").chosen

	if $("body.ranking_boards-show").length > 0

		$(".seasons.accordion").accordion
			collapsible: true
			active: false
			header: ".season"
			heightStyle: "content"

		$(".episodes.accordion").accordion
			collapsible: true
			active: false
			header: ".episode"
			heightStyle: "content"

		$(".rankings.sortable").sortable
			items: ".ranking"
			connectWith: ".connected-sortable"
			update: (event, ui) ->
				ranking_board_id = $(".ranking-board").data("id")
				sortables = ui.item.parent().find(".ranking")
				sortorder = []
				_.each $(".ranking"), (ranking, index) ->
					$(ranking).attr("data-ranking", index+1)
					$(ranking).find(".ranking-number").text(index+1)
				_.each sortables, (item) ->
					sortorder.push $(item).attr("data-id")
				$.ajax({
					type: "PATCH"
					url: "/ranking_boards/#{ranking_board_id}"
					data: { 'rankings[]': sortorder }
					})

		$(".moments.sortable").sortable
			items: ".moment"
			connectWith: ".connected-sortable"
