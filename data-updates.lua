

-- taken from schall's minor tweaks
if (settings.startup["zacs-tweaks-free-circuit-wire"].value == true) then
  data.raw.recipe["red-wire"].category = nil
  data.raw.recipe["red-wire"].ingredients = {}
  if data.raw.recipe["red-wire"].normal then
      data.raw.recipe["red-wire"].normal.ingredients = {}
  end
  if data.raw.recipe["red-wire"].expensive then
      data.raw.recipe["red-wire"].expensive.ingredients = {}
  end
  data.raw.recipe["green-wire"].category = nil
  data.raw.recipe["green-wire"].ingredients = {}
  if data.raw.recipe["green-wire"].normal then
      drr["green-wire"].normal.ingredients = {}
  end
  if data.raw.recipe["green-wire"].expensive then
      data.raw.recipe["green-wire"].expensive.ingredients = {}
  end
end

