import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


<ore:anyAxe>.add(
  <minecraft:wooden_axe:*>,
  <minecraft:iron_axe:*>,
  <minecraft:golden_axe:*>,
  <minecraft:diamond_axe:*>
);

<ore:anyShortBlade>.add(
  <minecraft:wooden_sword:*>,
  <minecraft:iron_sword:*>,
  <minecraft:golden_sword:*>,
  <minecraft:diamond_sword:*>
);

events.onEntityLivingHurt(function(event as EntityLivingHurtEvent) {
  if (event.damageSource.trueSource instanceof IPlayer) {
    var entitylivingPlayer as IPlayer  = event.damageSource.trueSource;

    var heldItemHand = entitylivingPlayer.activeHand;

    if (heldItemHand == IEntityEquipmentSlot.mainHand()) {
      var heldItemMain = entitylivingPlayer.mainHandHeldItem;
      if (<ore:anyAxe> has heldItemMain) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.axeXP)) {
          entitylivingPlayer.sendChat("Start Axe XP : 1");
          var dataXP as IData = { playerXP:
            {
              axeXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
    }
        var newAxeXP as int = playerData.playerXP.axeXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Axe XP : " + newAxeXP);
        var newDataXP as IData = { playerXP:
          {
            axeXP: newAxeXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
        return;
      }
      if (<ore:anyShortBlade> has heldItemMain) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.shortbladeXP)) {
          entitylivingPlayer.sendChat("Start Short Blade XP : 1");
          var dataXP as IData = { playerXP:
            {
              shortbladeXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
    }
        var newShtBldXP as int = playerData.playerXP.shortbladeXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Short Blade XP : " + newShtBldXP);
        var newDataXP as IData = { playerXP:
          {
            shortbladeXP: newShtBldXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
        return;
      }
    }

    if (heldItemHand == IEntityEquipmentSlot.offhand()) {
      var heldItemOff = entitylivingPlayer.offHandHeldItem;
      if (<ore:anyAxe> has heldItemOff) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.axeXP)) {
          entitylivingPlayer.sendChat("Start Axe XP : 1");
          var dataXP as IData = { playerXP:
            {
              axeXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newAxeXP as int = playerData.playerXP.axeXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Axe XP : " + newAxeXP);
        var newDataXP as IData = { playerXP:
          {
            axeXP: newAxeXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
        return;
      }
      if (<ore:anyShortBlade> has heldItemOff) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.shortbladeXP)) {
          entitylivingPlayer.sendChat("Start Short Blade XP : 1");
          var dataXP as IData = { playerXP:
            {
              shortbladeXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
    }
        var newShtBldXP as int = playerData.playerXP.shortbladeXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Short Blade XP : " + newShtBldXP);
        var newDataXP as IData = { playerXP:
          {
            shortbladeXP: newShtBldXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
        return;
      }
    }

  }
});