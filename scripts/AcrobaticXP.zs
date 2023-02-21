import crafttweaker.event.EntityLivingJumpEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;


events.onEntityLivingJump(function(event as EntityLivingJumpEvent) {
  if(event.entityLivingBase instanceof IPlayer && !event.entityLivingBase.world.isRemote()) {
    var entityPlayer as IPlayer = event.entityLivingBase;
    if (entityPlayer.isInWater || entityPlayer.isInLava) {return;}
    var playerData as IData = entityPlayer.data;
    if (isNull(playerData.playerXP) || isNull(playerData.playerXP.acrobatXP)) {
      entityPlayer.sendChat("Start Acrobatics XP : 1");
      var dataXP as IData = { playerXP:
        {
          acrobatXP: 1
        }
      };
      entityPlayer.update(playerData + dataXP);
      return;
    }
    var newAcroXP as int = playerData.playerXP.acrobatXP.asInt() + 1;
    entityPlayer.sendChat("New Acrobatics XP : " + newAcroXP);
    var newDataXP as IData = { playerXP:
      {
        acrobatXP: newAcroXP
      }
    };
    entityPlayer.update(playerData + newDataXP);
  }
});