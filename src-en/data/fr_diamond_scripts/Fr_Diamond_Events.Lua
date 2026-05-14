
-- Crew number check

script.on_game_event("FR_OPERATOR_QUEST",false,
function()
  local playerShip = Hyperspace.ships.player
  local crewCount = playerShip:CountCrew(false)
  local variable = 0
  if (crewCount > 5) or (crewCount > 4 and playerShip.bAutomated == true ) then
    variable = 1
  end
  Hyperspace.playerVariables.forgorEnoughCrew = variable
end)