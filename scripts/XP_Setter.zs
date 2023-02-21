import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import mods.ctintegration.data.DataUtil;


events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
  val playerData as IData = event.player.data;
  if (isNull(playerData.playerXP)) {
    var dataStats = { 
      playerXP: {
        axeXP: 0,
        shortbladeXP: 0,
        shootXP: 0,
        acrobatXP: 0,
        runningXP: 0,
        swimmingXP: 0,
        nonElementXP: 0,
        fireXP: 0,
        earthXP: 0,
        waterXP: 0,
        airXP: 0,
        lightXP: 0,
        darkXP: 0,
        invocationXP: 0,
        abjurationXP: 0,
        divinationXP: 0,
        conjurationXP: 0,
        illusionXP: 0,
        enchantmentXP: 0,
        necromancyXP: 0,
        alterationXP: 0
      }
    } as IData;
    event.player.update(playerData + dataStats);
  } else {
    event.player.sendChat(DataUtil.toNBTString(playerData.playerXP));
  }
});