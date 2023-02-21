import mods.wizardryutils.events.IEventManager as spellEvent;
import mods.wizardryutils.ISpellCastEvent;
import crafttweaker.player.IPlayer;
import crafttweaker.data.IData;


spellEvent.getEvents().onSpellCastEventPost(function(event as ISpellCastEvent) {

  if (event.world.remote || !(event.caster instanceof IPlayer)) {return;}

  var playerCaster as IPlayer = event.caster;
  val playerData as IData = playerCaster.data;

  if (event.spell.type == "ATTACK"){
    if (isNull(playerData.playerXP.invocationXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Invocation XP : 1");
      var dataXP as IData = { playerXP:
        {
          invocationXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newInvocationXP as int = playerData.playerXP.invocationXP.asInt() + 1;
    playerCaster.sendChat("New Invocation XP : " + newInvocationXP);
    var newDataXP as IData = { playerXP:
      {
        invocationXP: newInvocationXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "DEFENCE"){
    if (isNull(playerData.playerXP.abjurationXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Abjuration XP : 1");
      var dataXP as IData = { playerXP:
        {
          abjurationXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newAbjurationXP as int = playerData.playerXP.abjurationXP.asInt() + 1;
    playerCaster.sendChat("New Abjuration XP : " + newAbjurationXP);
    var newDataXP as IData = { playerXP:
      {
        abjurationXP: newAbjurationXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "UTILITY"){
    if (isNull(playerData.playerXP.divinationXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Divination XP : 1");
      var dataXP as IData = { playerXP:
        {
          divinationXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newDivinationXP as int = playerData.playerXP.divinationXP.asInt() + 1;
    playerCaster.sendChat("New Divination XP : " + newDivinationXP);
    var newDataXP as IData = { playerXP:
      {
        divinationXP: newDivinationXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "MINION"){
    if (isNull(playerData.playerXP.conjurationXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Conjuration XP : 1");
      var dataXP as IData = { playerXP:
        {
          conjurationXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newConjurationXP as int = playerData.playerXP.conjurationXP.asInt() + 1;
    playerCaster.sendChat("New Conjuration XP : " + newConjurationXP);
    var newDataXP as IData = { playerXP:
      {
        conjurationXP: newConjurationXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "BUFF"){
    if (isNull(playerData.playerXP.illusionXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Illusion XP : 1");
      var dataXP as IData = { playerXP:
        {
          illusionXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newIllusionXP as int = playerData.playerXP.illusionXP.asInt() + 1;
    playerCaster.sendChat("New Illusion XP : " + newIllusionXP);
    var newDataXP as IData = { playerXP:
      {
        illusionXP: newIllusionXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "CONSTRUCT"){
    if (isNull(playerData.playerXP.enchantmentXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Enchantment XP : 1");
      var dataXP as IData = { playerXP:
        {
          enchantmentXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newEnchantmentXP as int = playerData.playerXP.enchantmentXP.asInt() + 1;
    playerCaster.sendChat("New Enchantment XP : " + newEnchantmentXP);
    var newDataXP as IData = { playerXP:
      {
        enchantmentXP: newEnchantmentXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "PROJECTILE"){
    if (isNull(playerData.playerXP.necromancyXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Necromancy XP : 1");
      var dataXP as IData = { playerXP:
        {
          necromancyXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newNecromancyXP as int = playerData.playerXP.necromancyXP.asInt() + 1;
    playerCaster.sendChat("New Necromancy XP : " + newNecromancyXP);
    var newDataXP as IData = { playerXP:
      {
        necromancyXP: newNecromancyXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

  if (event.spell.type == "ALTERATION"){
    if (isNull(playerData.playerXP.alterationXP) || isNull(playerData.playerXP)) {
      playerCaster.sendChat("Start Alteration XP : 1");
      var dataXP as IData = { playerXP:
        {
          alterationXP: 1
        }
      };
      playerCaster.update(playerData + dataXP);
      return;
    }
    var newAlterationXP as int = playerData.playerXP.alterationXP.asInt() + 1;
    playerCaster.sendChat("New Alteration XP : " + newAlterationXP);
    var newDataXP as IData = { playerXP:
      {
        alterationXP: newAlterationXP
      }
    };
    playerCaster.update(playerData + newDataXP);
    return;
  }

});