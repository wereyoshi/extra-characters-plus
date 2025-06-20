-- Custom Geo Functions --

--- @param n GraphNode | FnGraphNode
--- Switches between the spin and ball models during a spin jump
function geo_ball_switch(n)
    local switch = cast_graph_node(n)
    local m = geo_get_mario_state()
    if m.action == ACT_SPIN_JUMP then
        switch.selectedCase = ((m.actionTimer - 1) % 4 // 2 + 1)
    elseif m.action == ACT_SPIN_DASH or m.action == ACT_SPIN_DASH_CHARGE then
        switch.selectedCase = ((m.actionTimer - 1) % 4 // 2 + 1)
    else
        switch.selectedCase = 0
    end
end

-- Switches Wapeach's Hands when using her moveset.
function geo_custom_hand_switch(n,m)
    local switch = cast_graph_node(n)
    if m.action == ACT_AXECHOP or ACT_AXESPIN or ACT_AXESPINAIR or ACT_AXESPINDIZZY then
        switch.selectedCase = 1
    else
        switch.selectedCase = 0
    end
end