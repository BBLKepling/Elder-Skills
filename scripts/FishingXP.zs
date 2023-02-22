import crafttweaker.event.ItemFishedEvent;
import crafttweaker.data.IData;


events.onItemFished(function(event as ItemFishedEvent) {
  if(!event.player.world.isRemote()) {
    var playerData as IData = event.player.data;
    if (isNull(playerData.playerXP) || isNull(playerData.playerXP.fishingXP)) {
      event.player.sendChat("Start Fishing XP : 1");
      var dataXP as IData = { playerXP:
        {
          fishingXP: 1
        }
      };
      event.player.update(playerData + dataXP);
      return;
    }
    var newFishingXP as int = playerData.playerXP.fishingXP.asInt() + 1;
    event.player.sendChat("New Fishing XP : " + newFishingXP);
    var newDataXP as IData = { playerXP:
      {
        fishingXP: newFishingXP
      }
    };
    event.player.update(playerData + newDataXP);
  }
});