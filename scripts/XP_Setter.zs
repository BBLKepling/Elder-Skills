import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import mods.ctintegration.data.DataUtil;


events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
  val playerData as IData = event.player.data;
  if (isNull(playerData.playerXP)) {
    var dataStats = { 
      playerXP: {
        acrobatXP: 0,
        runningXP: 0,
        swimmingXP: 0,
        fireXP: 0,
        earthXP: 0,
        waterXP: 0,
        airXP: 0,
        lightXP: 0,
        darkXP: 0
      }
    } as IData;
    event.player.update(playerData + dataStats);
  } else {
    event.player.sendChat(DataUtil.toNBTString(playerData.playerXP));
  }
});