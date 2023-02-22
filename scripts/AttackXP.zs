import crafttweaker.event.EntityLivingHurtEvent;
import crafttweaker.entity.IEntityEquipmentSlot;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;


<ore:anyAxe>.add(
  <minecraft:wooden_axe:*>,
  <minecraft:stone_axe:*>,
  <minecraft:iron_axe:*>,
  <minecraft:golden_axe:*>,
  <minecraft:diamond_axe:*>
);

for item in loadedMods["minecraft"].items {
/*
  if (item.name has "axe") {
    <ore:anyAxe>.add(item);
  }
*/
  if (item.name has "sword") {
    <ore:anyShortBlade>.add(item);
  }

}

for item in loadedMods["spartanweaponry"].items {

  if (item.name has "battleaxe" || item.name has "halberd") {
    <ore:anyAxe>.add(item);
  }

  if (item.name has "mace" || item.name has "hammer" || item.name has "club" || item.name has "caestus" || item.name has "staff") {
    <ore:anyBlunt>.add(item);
  }

  if (item.name has "katana" || item.name has "longsword" || item.name has "greatsword") {
    <ore:anyLongBlade>.add(item);
  }

  if (item.name has "caestus") {
    <ore:anyMartialArt>.add(item);
  }

  if (item.name has "spear" || item.name has "pike" || item.name has "lance" || item.name has "halberd" || item.name has "warhammer" || item.name has "glaive" || item.name has "staff") {
    <ore:anyPolearm>.add(item);
  }

  if (item.name has "rapier" || item.name has "saber" || item.name has "dagger"|| item.name has "glaive") {
    <ore:anyShortBlade>.add(item);
  }

}


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
      }

      if (<ore:anyBlunt> has heldItemMain || isNull(heldItemMain)) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.bluntXP)) {
          entitylivingPlayer.sendChat("Start Blunt XP : 1");
          var dataXP as IData = { playerXP:
            {
              bluntXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newBluntXP as int = playerData.playerXP.bluntXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Blunt XP : " + newBluntXP);
        var newDataXP as IData = { playerXP:
          {
            bluntXP: newBluntXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
      }

      if (<ore:anyLongBlade> has heldItemMain) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.longbladeXP)) {
          entitylivingPlayer.sendChat("Start Long Blade XP : 1");
          var dataXP as IData = { playerXP:
            {
              longbladeXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newLongBldXP as int = playerData.playerXP.longbladeXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Long Blade XP : " + newLongBldXP);
        var newDataXP as IData = { playerXP:
          {
            longbladeXP: newLongBldXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
      }

      if (<ore:anyMartialArt> has heldItemMain || isNull(heldItemMain)) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.martialArtXP)) {
          entitylivingPlayer.sendChat("Start Martial Arts XP : 1");
          var dataXP as IData = { playerXP:
            {
              martialArtXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newMartialArtXP as int = playerData.playerXP.martialArtXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Martial Arts XP : " + newMartialArtXP);
        var newDataXP as IData = { playerXP:
          {
            martialArtXP: newMartialArtXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
      }

      if (<ore:anyPolearm> has heldItemMain) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.polearmXP)) {
          entitylivingPlayer.sendChat("Start Polearm XP : 1");
          var dataXP as IData = { playerXP:
            {
              polearmXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newPolearmXP as int = playerData.playerXP.polearmXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Polearm XP : " + newPolearmXP);
        var newDataXP as IData = { playerXP:
          {
            polearmXP: newPolearmXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
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
      }

      if (<ore:anyBlunt> has heldItemOff || isNull(heldItemOff)) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.bluntXP)) {
          entitylivingPlayer.sendChat("Start Blunt XP : 1");
          var dataXP as IData = { playerXP:
            {
              bluntXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newBluntXP as int = playerData.playerXP.bluntXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Blunt XP : " + newBluntXP);
        var newDataXP as IData = { playerXP:
          {
            bluntXP: newBluntXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
      }

      if (<ore:anyLongBlade> has heldItemOff) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.longbladeXP)) {
          entitylivingPlayer.sendChat("Start Long Blade XP : 1");
          var dataXP as IData = { playerXP:
            {
              longbladeXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newLongBldXP as int = playerData.playerXP.longbladeXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Long Blade XP : " + newLongBldXP);
        var newDataXP as IData = { playerXP:
          {
            longbladeXP: newLongBldXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
      }

      if (<ore:anyMartialArt> has heldItemOff || isNull(heldItemOff)) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.martialArtXP)) {
          entitylivingPlayer.sendChat("Start Martial Arts XP : 1");
          var dataXP as IData = { playerXP:
            {
              martialArtXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newMartialArtXP as int = playerData.playerXP.martialArtXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Martial Arts XP : " + newMartialArtXP);
        var newDataXP as IData = { playerXP:
          {
            martialArtXP: newMartialArtXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
      }

      if (<ore:anyPolearm> has heldItemOff) {
        var playerData as IData = entitylivingPlayer.data;
        if (isNull(playerData.playerXP) || isNull(playerData.playerXP.polearmXP)) {
          entitylivingPlayer.sendChat("Start Polearm XP : 1");
          var dataXP as IData = { playerXP:
            {
              polearmXP: 1
            }
          };
          entitylivingPlayer.update(playerData + dataXP);
          return;
        }
        var newPolearmXP as int = playerData.playerXP.polearmXP.asInt() + 1;
        entitylivingPlayer.sendChat("New Polearm XP : " + newPolearmXP);
        var newDataXP as IData = { playerXP:
          {
            polearmXP: newPolearmXP
          }
        };
        entitylivingPlayer.update(playerData + newDataXP);
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
      }

    }

  }
});