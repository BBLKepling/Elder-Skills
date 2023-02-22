import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


<ore:anyMedHelm>.add(
  <minecraft:leather_helmet:*>,
  <minecraft:chainmail_helmet:*>
);

<ore:anyMedChest>.add(
  <minecraft:leather_chestplate:*>,
  <minecraft:chainmail_chestplate:*>
);

<ore:anyMedLegs>.add(
  <minecraft:leather_leggings:*>,
  <minecraft:chainmail_leggings:*>
);

<ore:anyMedBoots>.add(
  <minecraft:leather_boots:*>,
  <minecraft:chainmail_boots:*>
);

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
  if (!(event.entityLivingBase instanceof IPlayer) || event.entityLivingBase.world.isRemote()) {return;}
  var entitylivingPlayer as IPlayer  = event.entityLivingBase;
  var playerData as IData =entitylivingPlayer.data;

  if(entitylivingPlayer.isActiveItemStackBlocking) {
    if (isNull(playerData.playerXP) || isNull(playerData.playerXP.blockXP)) {
      entitylivingPlayer.sendChat("Start Blocking XP : 1");
      var dataXP as IData = { playerXP:
        {
          blockXP: 1
        }
      };
      entitylivingPlayer.update(playerData + dataXP);
      return;
    }
    var newBlockXP as int = playerData.playerXP.blockXP.asInt() + 1;
    entitylivingPlayer.sendChat("New Blocking XP : " + newBlockXP);
    var newDataXP as IData = { playerXP:
      {
        blockXP: newBlockXP
      }
    };
    entitylivingPlayer.update(playerData + newDataXP);
  }

  //How do armor is going to be challenging since I have to check against 4 equipment slots
  
});