import crafttweaker.events.IEventManager;
import crafttweaker.event.IPlayerEvent;
import crafttweaker.event.PlayerSleepInBedEvent;
import crafttweaker.potions.IPotion;
import crafttweaker.potions.IPotionEffect;
import crafttweaker.data.IData;
import mods.TimeStages.removalTimer;
import mods.compatskills.SkillLocks.addLevelLock;


events.onPlayerSleepInBed(function(event as PlayerSleepInBedEvent) {
//  event.player.sendChat(event.result);
  if (event.player.hasGameStage("reststage")) {return;}
  event.player.addGameStage("reststage");
  event.player.addPotionEffect(<potion:minecraft:regeneration>.makePotionEffect(100, 1));
  event.player.addPotionEffect(<potion:minecraft:hunger>.makePotionEffect(100, 1));
  removalTimer("RestReset", "reststage" ,10 ,"minutes");

  var acroXP as int = event.player.data.playerXP.acrobatXP.asInt();
  if (acroXP >= 50 && !event.player.hasGameStage("acrobat2")) {
    event.player.addGameStage("acrobat2");
  }
  if (acroXP >= 100 && !event.player.hasGameStage("acrobat3")) {
    event.player.addGameStage("acrobat3");
  }
  if (acroXP >= 200 && !event.player.hasGameStage("acrobat4")) {
    event.player.addGameStage("acrobat4");
  }
/*
  var swimXP as int = event.player.data.playerXP.swimmingXP.asInt();
  var swimLevel as int = event.player.skillData.getSkillInfo(<skill:compatskills:swimming>).getLevel();
  if (swimXP >= 50 && swimLevel < 2) {
    event.player.executeCommand("/reskillable incrementskill @p compatskills:swimming");
  }
  if (swimXP >= 100 && swimLevel < 3) {
    event.player.executeCommand("/reskillable incrementskill @p compatskills:swimming");
  }
  if (swimXP >= 200 && swimLevel < 4) {
    event.player.executeCommand("/reskillable incrementskill @p compatskills:swimming");
  }
  
  var runXP as int = event.player.data.playerXP.runningXP.asInt();
  var runLevel as int = event.player.skillData.getSkillInfo(<skill:compatskills:running>).getLevel();
  if (runXP >= 50 && runLevel < 2) {
    event.player.executeCommand("/reskillable incrementskill @p compatskills:running");
  }
  if (runXP >= 100 && runLevel < 3) {
    event.player.executeCommand("/reskillable incrementskill @p compatskills:running");
  }
  if (runXP >= 200 && runLevel < 4) {
    event.player.executeCommand("/reskillable incrementskill @p compatskills:running");
  }
*/
});

addLevelLock(<skill:reskillable:agility>, 2, "stage|acrobat2");
addLevelLock(<skill:reskillable:agility>, 3, "stage|acrobat3");
addLevelLock(<skill:reskillable:agility>, 4, "stage|acrobat4");