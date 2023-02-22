import crafttweaker.event.EntityLivingJumpEvent;
import crafttweaker.event.EntityLivingFallEvent;
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
//Only works in Survival
events.onEntityLivingFall(function(event as EntityLivingFallEvent) {
  if(event.entityLivingBase instanceof IPlayer && !event.entityLivingBase.world.isRemote()) {
    var entityPlayer as IPlayer = event.entityLivingBase;
    entityPlayer.sendChat("Fall Distance : " + event.distance);
    var fallDrop = event.distance as float;
    var agiLevel = entityPlayer.skillData.getSkillInfo(<skill:reskillable:agility>).getLevel() as float;
    var fallAdjust = ((agiLevel - fallDrop) / 100) as float;
    event.damageMultiplier -= fallAdjust;
    if (entityPlayer.isInWater || entityPlayer.isInLava || event.distance < 5) {return;}
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