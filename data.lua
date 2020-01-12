--format: internal name, unlock tech
local Items = {
    {"monster-body-small", 1},
    {"monster-body-medium", 1},
    {"monster-body-big", 1},
    {"monster-body-behemoth", 1}
}

--Add stacking recipes
for _, item in pairs(Items) do
    local name = item[1]
    local tier = item[2]
    if data.raw.item[name] then
        if not data.raw.item["deadlock-stack-" .. name] then
            deadlock.add_stack(name, data.raw.item[name].icon, "deadlock-stacking-" .. tier, data.raw.item[name].icon_size)
        end
    end
end
