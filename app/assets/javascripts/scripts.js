// Generated by CoffeeScript 1.3.3

$(function() {
  $(".chzn-select").chosen;
  if ($("body.ranking_boards-show").length > 0) {
    return $(".sortable").sortable({
      items: ".ranking",
      update: function(event, ui) {
        var ranking_board_id, sortables, sortorder;
        ranking_board_id = $(".ranking-board").data("id");
        sortables = ui.item.parent().find(".ranking");
        sortorder = [];
        _.each(sortables, function(item) {
          return sortorder.push($(item).attr("data-id"));
        });
        return $.ajax({
          type: "PATCH",
          url: "/ranking_boards/" + ranking_board_id,
          data: {
            'rankings[]': sortorder
          },
          success: function(data) {
            return console.log(data);
          }
        });
      }
    });
  }
});
