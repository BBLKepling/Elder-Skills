import crafttweaker.event.PlayerTickEvent;
import crafttweaker.data.IData;


events.onPlayerTick(function(event as PlayerTickEvent) {
  if(event.phase == "END" || event.side == "CLIENT") {return;}
  if(event.player.world.time % 20 != 0) {return;}
  if(event.player.isSprinting) {
    var playerData as IData = event.player.data;
    if (event.player.onGround && !event.player.isInWater && !event.player.isInLava) {
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
      return;
    }
    if (!event.player.onGround && (event.player.isInWater || event.player.isInLava)) {
      if (isNull(playerData.playerXP) || isNull(playerData.playerXP.swimmingXP)) {
        event.player.sendChat("Start Swimming XP : 1");
        var dataXP as IData = { playerXP:
          {
            swimmingXP: 1
          }
        };
        event.player.update(playerData + dataXP);
        return;
      }
      var newSwimXP as int = playerData.playerXP.swimmingXP.asInt() + 1;
      event.player.sendChat("New Swimming XP : " + newSwimXP);
      var newDataXP as IData = { playerXP:
        {
          swimmingXP: newSwimXP
        }
      };
      event.player.update(playerData + newDataXP);
      return;
    }
  }
});