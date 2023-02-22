import crafttweaker.event.PlayerCraftedEvent;
import crafttweaker.data.IData;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import mods.artisanworktables.builder.RecipeBuilder;


<ore:blacksmithCraft>.add(
  <minecraft:iron_sword>,
  <minecraft:iron_axe>
);

//Event Version

events.onPlayerCrafted(function(event as PlayerCraftedEvent) {
  if(event.player.world.isRemote()) {return;}
  var playerData as IData = event.player.data;

  if(<ore:blacksmithCraft> has event.output) {
    if (isNull(playerData.playerXP) || isNull(playerData.playerXP.blacksmithXP)) {
      event.player.sendChat("Start Blacksmith XP : 1");
      var dataXP as IData = { playerXP:
        {
          blacksmithXP: 1
        }
      };
      event.player.update(playerData + dataXP);
      return;
    }
    var newBlacksmithXP as int = playerData.playerXP.blacksmithXP.asInt() + 1;
    event.player.sendChat("New Blacksmith XP : " + newBlacksmithXP);
    var newDataXP as IData = { playerXP:
      {
        blacksmithXP: newBlacksmithXP
      }
    };
    event.player.update(playerData + newDataXP);
  }

});

//Recipe Version

recipes.addShaped("testRecipe",<ebwizardry:ring_condensing>,
 [[<minecraft:gold_nugget>,<minecraft:gold_nugget>,<minecraft:gold_nugget>],
  [<minecraft:gold_nugget>,null,<minecraft:gold_nugget>],
  [<minecraft:gold_nugget>,<minecraft:gold_nugget>,<minecraft:gold_nugget>]],
//IRecipeFunction
function(out,ins,cInfo){
  return out;
},
//IRecipeAction
function(out,cInfo,player){
  if(player.world.isRemote()) {return;}
  var playerData as IData = player.data;
  if (isNull(playerData.playerXP) || isNull(playerData.playerXP.goldsmithXP)) {
    player.sendChat("Start Goldsmith XP : 1");
    var dataXP as IData = { playerXP:
      {
        goldsmithXP: 1
      }
    };
    player.update(playerData + dataXP);
    return;
  }
  var newGoldsmithXP as int = playerData.playerXP.goldsmithXP.asInt() + 1;
  player.sendChat("New Goldsmith XP : " + newGoldsmithXP);
  var newDataXP as IData = { playerXP:
    {
      goldsmithXP: newGoldsmithXP
    }
  };
  player.update(playerData + newDataXP);
});

//Artisan Worktable Recipe

RecipeBuilder.get("jeweler")
  .setShaped([
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, null, <minecraft:gold_nugget>],
    [<minecraft:gold_nugget>, <minecraft:gold_nugget>, <minecraft:gold_nugget>]])
  .addOutput(<ebwizardry:ring_siphoning>)
  .setRecipeFunction(
    function(out,ins,cInfo){
      return out;
    }
  )
  .setRecipeAction(
    function(out,cInfo,player){
      if(player.world.isRemote()) {return;}
      var playerData as IData = player.data;
      if (isNull(playerData.playerXP) || isNull(playerData.playerXP.goldsmithXP)) {
        player.sendChat("Start Goldsmith XP : 1");
        var dataXP as IData = { playerXP:
          {
            goldsmithXP: 1
          }
        };
        player.update(playerData + dataXP);
        return;
      }
      var newGoldsmithXP as int = playerData.playerXP.goldsmithXP.asInt() + 1;
      player.sendChat("New Goldsmith XP : " + newGoldsmithXP);
      var newDataXP as IData = { playerXP:
        {
          goldsmithXP: newGoldsmithXP
        }
      };
      player.update(playerData + newDataXP);
    }
  )
  .create();