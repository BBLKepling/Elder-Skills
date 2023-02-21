import mods.wizardryutils.events.IEventManager as spellEvent;
import mods.wizardryutils.ISpellCastEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;


spellEvent.getEvents().onSpellCastEventPost(function(event as ISpellCastEvent) {

  if (event.world.remote || !(event.caster instanceof IPlayer)) {return;}

  var playerCaster as IPlayer = event.caster;
  val playerData as IData = playerCaster.data;

  if (event.spell.element == "FIRE"){
    if (isNull(playerData.playerXP.fireXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Fire XP : 1");
      var dataXP as IData = { playerXP:
        {
          fireXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newFireXP as int = playerData.playerXP.fireXP.asInt() + 1;
    playerCaster.sendChat("New Fire XP : " + newFireXP);
    var newDataXP as IData = { playerXP:
      {
        fireXP: newFireXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.element == "ICE"){
    if (isNull(playerData.playerXP.waterXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Water XP : 1");
      var dataXP as IData = { playerXP:
        {
          waterXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newWaterXP as int = playerData.playerXP.waterXP.asInt() + 1;
    playerCaster.sendChat("New Water XP : " + newWaterXP);
    var newDataXP as IData = { playerXP:
      {
        waterXP: newWaterXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.element == "LIGHTNING"){
    if (isNull(playerData.playerXP.airXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Air XP : 1");
      var dataXP as IData = { playerXP:
        {
          airXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newAirXP as int = playerData.playerXP.airXP.asInt() + 1;
    playerCaster.sendChat("New Air XP : " + newAirXP);
    var newDataXP as IData = { playerXP:
      {
        airXP: newAirXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.element == "EARTH"){
    if (isNull(playerData.playerXP.earthXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Earth XP : 1");
      var dataXP as IData = { playerXP:
        {
          earthXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newEarthXP as int = playerData.playerXP.earthXP.asInt() + 1;
    playerCaster.sendChat("New Earth XP : " + newEarthXP);
    var newDataXP as IData = { playerXP:
      {
        earthXP: newEarthXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.element == "HEALING"){
    if (isNull(playerData.playerXP.lightXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Light XP : 1");
      var dataXP as IData = { playerXP:
        {
          lightXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newLightXP as int = playerData.playerXP.lightXP.asInt() + 1;
    playerCaster.sendChat("New Light XP : " + newLightXP);
    var newDataXP as IData = { playerXP:
      {
        lightXP: newLightXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.element == "NECROMANCY"){
    if (isNull(playerData.playerXP.darkXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Dark XP : 1");
      var dataXP as IData = { playerXP:
        {
          darkXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newDarkXP as int = playerData.playerXP.darkXP.asInt() + 1;
    playerCaster.sendChat("New Dark XP : " + newDarkXP);
    var newDataXP as IData = { playerXP:
      {
        darkXP: newDarkXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

});