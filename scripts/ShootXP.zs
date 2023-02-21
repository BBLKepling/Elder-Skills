import crafttweaker.event.ArrowLooseEvent;
import crafttweaker.data.IData;


events.onArrowLoose(function(event as ArrowLooseEvent) {
  if(!event.player.world.isRemote()) {
    var playerData as IData = event.player.data;
    if (isNull(playerData.playerXP) || isNull(playerData.playerXP.shootXP)) {
      event.player.sendChat("Start Shooting XP : 1");
      var dataXP as IData = { playerXP:
        {
          shootXP: 1
        }
      };
      event.player.update(playerData + dataXP);
      return;
    }
    var newShootXP as int = playerData.playerXP.shootXP.asInt() + 1;
    event.player.sendChat("New Shooting XP : " + newShootXP);
    var newDataXP as IData = { playerXP:
      {
        shootXP: newShootXP
      }
    };
    event.player.update(playerData + newDataXP);
  }
});