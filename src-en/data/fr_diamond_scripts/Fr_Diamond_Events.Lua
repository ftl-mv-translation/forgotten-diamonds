
-- Crew number check

script.on_game_event("FR_OPERATOR_QUEST",false,
function()
  playerShip = Hyperspace.ships.player
  crewCount = playerShip:CountCrew(false)
  variable = 0
  if (crewCount > 5) or (crewcount > 4 and playerShip.bAutomated == true ) then
    variable = 1
  end
  Hyperspace.playerVariables.forgorEnoughCrew = variable
end)