local function update_crafting_speed(player)
  if not player or not player.valid then
    return
  end

  local force = player.force

  if settings.global["lrm-instant-crafting-use-default"] and settings.global["lrm-instant-crafting-use-default"].value then
    force.manual_crafting_speed_modifier = 0.0  -- стандартная скорость
  else
    local interval = settings.global["lrm-instant-crafting-interval"].value or 50
    local speed = 1.0 / (interval / 50.0)  -- 50 мс = 1.0x
    force.manual_crafting_speed_modifier = speed - 1.0
  end
end

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  if event.setting == "lrm-instant-crafting-interval" or event.setting == "lrm-instant-crafting-use-default" then
    for _, p in pairs(game.players) do
      update_crafting_speed(p)
    end
  end
end)

script.on_event(defines.events.on_player_joined_game, function(event)
  local player = game.players[event.player_index]
  update_crafting_speed(player)
end)

script.on_event(defines.events.on_player_created, function(event)
  local player = game.players[event.player_index]
  update_crafting_speed(player)
end)
