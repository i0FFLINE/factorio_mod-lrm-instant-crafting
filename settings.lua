data:extend{
  {
    type = "double-setting",
    name = "lrm-instant-crafting-interval",
    setting_type = "runtime-global",
    default_value = 50,
    minimum_value = 1,
    maximum_value = 500,
    allowed_values = {},
    order = "a",
    localised_name = {"mod-setting-name.lrm-instant-crafting-interval"},
    localised_description = {"mod-setting-description.lrm-instant-crafting-interval"}
  },
  {
    type = "bool-setting",
    name = "lrm-instant-crafting-use-default",
    setting_type = "runtime-global",
    default_value = false,
    order = "b",
    localised_name = {"mod-setting-name.lrm-instant-crafting-use-default"},
    localised_description = {"mod-setting-description.lrm-instant-crafting-use-default"}
  }
}
