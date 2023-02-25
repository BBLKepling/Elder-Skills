#packmode monk

import crafttweaker.event.PlayerLoggedInEvent;
import crafttweaker.data.IData;
import mods.ctintegration.data.DataUtil;


events.onPlayerLoggedIn(function(event as PlayerLoggedInEvent) {
  val playerData as IData = event.player.data;
  if (isNull(playerData.playerXP)) {
    var dataStats = { 
      playerXP: {
        //Attack Skills
        axeXP: 0,
        bluntXP: 0,
        longbladeXP: 0,
        martialArtXP: 100,
        polearmXP: 0,
        shortbladeXP: 0,
        shootXP: 0,
        throwXP: 0,
        //Defence Skills
        unarmoredXP: 100,
        lightArmorXP: 0,
        medArmorXP: 0,
        heavyArmorXP: 0,
        blockXP: 0,
        //Science Skills
        bibliologyXP: 0,
        botanyXP: 0,
        engineeringXP: 0,
        cartographyXP: 0,
        geologyXP: 0,
        zoologyXP: 0,
        //Misc Skills?
        lockpickXP: 0,
        sneakXP: 100,
        //Misc Skills?
        fishingXP: 0,
        acrobatXP: 100,
        runningXP: 0,
        swimmingXP: 0,
        //Magic Element Skills
        nonElementXP: 0,
        airXP: 100,
        earthXP: 100,
        fireXP: 100,
        waterXP: 100,
        lightXP: 0,
        darkXP: 0,
        //Magic School Skills
        invocationXP: 0,
        abjurationXP: 100,
        divinationXP: 100,
        conjurationXP: 0,
        illusionXP: 100,
        enchantmentXP: 0,
        necromancyXP: 0,
        alterationXP: 100,
        //Crafting Skills
        tailorXP: 0,
        tannerXP: 0,
        carpentryXP: 0,
        potteryXP: 0,
        masonryXP: 0,
        blacksmithXP: 0,
        glassmithXP: 0,
        goldsmithXP: 0,
        alchemistXP: 0,
        cookXP: 0
      }
    } as IData;
    event.player.update(playerData + dataStats);
  } else {
    event.player.sendChat(DataUtil.toNBTString(playerData.playerXP));
  }
});