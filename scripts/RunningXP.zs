#norun

import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;


events.onPlayerTick(function(event as PlayerTickEvent) {
  if(event.phase == "END" || event.side == "CLIENT") {return;}
  if(event.player.world.time % 20 != 0) {return;}
  if(event.player.isSprinting && !event.player.isInWater && !event.player.isInLava) {
    var playerData as IData = event.player.data;
    if (isNull(playerData.playerXP) || isNull(playerData.playerXP.runningXP)) {
      event.player.sendChat("Start Running XP : 1");
      var dataXP as IData = { playerXP:
        {
          runningXP: 1
        }
      };
      event.player.update(playerData + dataXP);
      return;
    }
    var newRunXP as int = playerData.playerXP.runningXP.asInt() + 1;
    event.player.sendChat("New Running XP : " + newRunXP);
    var newDataXP as IData = { playerXP:
      {
        runningXP: newRunXP
      }
    };
    event.player.update(playerData + newDataXP);
  }
});