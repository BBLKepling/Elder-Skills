#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import crafttweaker.data.IData;


var fighter_setter = VanillaFactory.createItem("fighter_setter");
fighter_setter.maxStackSize = 1;
fighter_setter.rarity = "epic";
fighter_setter.itemRightClick = function(stack, world, player, hand) {
  val playerData as IData = player.data;
  var dataStats = { 
    playerXP: {
      //Attack Skills
      axeXP: 100,
      bluntXP: 100,
      longbladeXP: 100,
      martialArtXP: 0,
      polearmXP: 100,
      shortbladeXP: 0,
      shootXP: 0,
      throwXP: 0,
      //Defence Skills
      unarmoredXP: 0,
      lightArmorXP: 0,
      medArmorXP: 0,
      heavyArmorXP: 100,
      blockXP: 100,
      //Magic Element Skills
      nonElementXP: 0,
      airXP: 0,
      earthXP: 0,
      fireXP: 0,
      waterXP: 0,
      lightXP: 0,
      darkXP: 0,
      //Magic School Skills
      invocationXP: 0,
      abjurationXP: 0,
      divinationXP: 0,
      conjurationXP: 0,
      illusionXP: 0,
      enchantmentXP: 0,
      necromancyXP: 0,
      alterationXP: 0,
    }
  } as IData;
  player.update(playerData + dataStats);
  player.removeXP(-10);
  stack.shrink(1);
  return "SUCCESS";
};
fighter_setter.register();

var monk_setter = VanillaFactory.createItem("monk_setter");
monk_setter.maxStackSize = 1;
monk_setter.rarity = "epic";
monk_setter.itemRightClick = function(stack, world, player, hand) {
  val playerData as IData = player.data;
  var dataStats = { 
    playerXP: {
      //Attack Skills
      axeXP: 0,
      bluntXP: 100,
      longbladeXP: 0,
      martialArtXP: 100,
      polearmXP: 0,
      shortbladeXP: 0,
      shootXP: 0,
      throwXP: 0,
      //Defence Skills
      unarmoredXP: 100,
      lightArmorXP: 100,
      medArmorXP: 0,
      heavyArmorXP: 0,
      blockXP: 0,
      //Magic Element Skills
      nonElementXP: 0,
      airXP: 100,
      earthXP: 100,
      fireXP: 100,
      waterXP: 100,
      lightXP: 0,
      darkXP: 0,
      //Magic School Skills
      invocationXP: 100,
      abjurationXP: 100,
      divinationXP: 100,
      conjurationXP: 0,
      illusionXP: 100,
      enchantmentXP: 0,
      necromancyXP: 0,
      alterationXP: 100,
    }
  } as IData;
  player.update(playerData + dataStats);
  stack.shrink(1);
  return "SUCCESS";
};
monk_setter.register();

var archer_setter = VanillaFactory.createItem("archer_setter");
archer_setter.maxStackSize = 1;
archer_setter.rarity = "epic";
archer_setter.itemRightClick = function(stack, world, player, hand) {
  val playerData as IData = player.data;
  var dataStats = { 
    playerXP: {
      //Attack Skills
      axeXP: 0,
      bluntXP: 0,
      longbladeXP: 0,
      martialArtXP: 0,
      polearmXP: 0,
      shortbladeXP: 100,
      shootXP: 100,
      throwXP: 100,
      //Defence Skills
      unarmoredXP: 0,
      lightArmorXP: 0,
      medArmorXP: 100,
      heavyArmorXP: 0,
      blockXP: 0,
      //Magic Element Skills
      nonElementXP: 100,
      airXP: 0,
      earthXP: 0,
      fireXP: 0,
      waterXP: 0,
      lightXP: 0,
      darkXP: 0,
      //Magic School Skills
      invocationXP: 100,
      abjurationXP: 100,
      divinationXP: 0,
      conjurationXP: 0,
      illusionXP: 0,
      enchantmentXP: 0,
      necromancyXP: 0,
      alterationXP: 100,
    }
  } as IData;
  player.update(playerData + dataStats);
  stack.shrink(1);
  return "SUCCESS";
};
archer_setter.register();

var mage_setter = VanillaFactory.createItem("mage_setter");
mage_setter.maxStackSize = 1;
mage_setter.rarity = "epic";
mage_setter.itemRightClick = function(stack, world, player, hand) {
  val playerData as IData = player.data;
  var dataStats = { 
    playerXP: {
      //Attack Skills
      axeXP: 0,
      bluntXP: 0,
      longbladeXP: 0,
      martialArtXP: 0,
      polearmXP: 0,
      shortbladeXP: 100,
      shootXP: 0,
      throwXP: 0,
      //Defence Skills
      unarmoredXP: 0,
      lightArmorXP: 100,
      medArmorXP: 0,
      heavyArmorXP: 0,
      blockXP: 0,
      //Magic Element Skills
      nonElementXP: 100,
      airXP: 0,
      earthXP: 0,
      fireXP: 0,
      waterXP: 0,
      lightXP: 0,
      darkXP: 0,
      //Magic School Skills
      invocationXP: 100,
      abjurationXP: 100,
      divinationXP: 100,
      conjurationXP: 100,
      illusionXP: 0,
      enchantmentXP: 0,
      necromancyXP: 0,
      alterationXP: 100,
    }
  } as IData;
  player.update(playerData + dataStats);
  stack.shrink(1);
  return "SUCCESS";
};
mage_setter.register();