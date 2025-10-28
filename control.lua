local function update_crafting_speed(player)
  if settings.global["lrm-instant-crafting-use-default"].value then
    player.crafting_speed = 1.0  -- Стандартная скорость (по умолчанию)
  else
    local interval = settings.global["lrm-instant-crafting-interval"].value or 50
    player.crafting_speed = 1.0 / (interval / 50.0)  -- Кастомизация
  end
end

script.on_event(defines.events.on_runtime_mod_setting_changed, function(event)
  for _, player in pairs(game.players) do
    update_crafting_speed(player)
  end
end)

script.on_event(defines.events.on_player_joined_game, function(event)
  local player = game.players[event.player_index]
  update_crafting_speed(player)
end)
