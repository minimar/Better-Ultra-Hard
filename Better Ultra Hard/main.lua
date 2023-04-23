local mod = RegisterMod("Better Ultra Hard", 1)

local game = Game()
local level = game:GetLevel()

mod:AddCallback(ModCallbacks.MC_POST_UPDATE, function()
  if game.Challenge ~= Challenge.CHALLENGE_ULTRA_HARD then return end
  
  local levelCurses = level:GetCurses()
  if levelCurses & LevelCurse.CURSE_OF_THE_LOST == LevelCurse.CURSE_OF_THE_LOST then
    game.Challenge = Challenge.CHALLENGE_NULL
    level:RemoveCurses(LevelCurse.CURSE_OF_THE_LOST)
    game.Challenge = Challenge.CHALLENGE_ULTRA_HARD
  end
end)