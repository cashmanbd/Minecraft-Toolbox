package com.matlabworld;

class Level {

    private final String levelName;

    Level(final String levelName) {
        this.levelName = levelName;
    }

    void save(final String saveFolder) {
        CompoundTag rootTag = new CompoundTag();
        CompoundTag dataTag = new CompoundTag("Data");
        dataTag.putInt("version", 19133);
        dataTag.putBoolean("initialized", 1);
        dataTag.putString("LevelName", levelName);
        dataTag.putString("generatorName", "default"); // The name of the generator; "default", "flat", "largeBiomes", "amplified", "customized", or "debug_all_block_states". Not case sensitive, but always written in the case here.
        dataTag.putInt("generatorVersion", 0); // The version of the level generator. The effects of changing this are unknown, but values other than 0 have been observed.
        dataTag.putString("generatorOptions" , ""); // Controls options for the world generator. Used only if the world type is Superflat or Customized. The format for Superflat is a comma separated list of block IDs from the bottom of the map up, and each block ID may optionally be preceded by the number of layers and an "*" ("x" before 1.8). Damage values are not supported.[1] The format for Customized is an extremely long String which has name:value pairs resembling JSON.
        dataTag.putLong("RandomSeed", 0L); //The random level seed used to generate consistent terrain.
        dataTag.putBoolean("MapFeatures", 0); // (true/false) - true if the map generator should place structures such as villages, strongholds, and mineshafts. Defaults to 1. Always 1 if the world type is Customized.
        dataTag.putLong("LastPlayed", System.currentTimeMillis()); // The Unix time when the level was last loaded.
        dataTag.putLong("SizeOnDisk", ); //TODO The estimated size in bytes of the level. Currently not modified or used by Minecraft, but was previously.
        dataTag.putBoolean("allowCommands", false); // 1 or 0 (true/false) - true if cheats are enabled.
        dataTag.putBoolean("hardcore", false); // 1 or 0 (true/false) - true if the player must delete their world on death in singleplayer. Affects all three game modes.
        dataTag.putInt("GameType", 1); // The default game mode for the singleplayer player when they initially spawn. 0 is Survival Mode, 1 is Creative Mode, 2 is Adventure Mode, 3 is Spectator Mode. Note: Singleplayer worlds do not use this field to save which game mode the player is currently in.
        dataTag.putByte("Difficulty", 1); // The current difficulty setting. 0 is Peaceful, 1 is Easy, 2 is Normal, and 3 is Hard. Defaults to 2.
        dataTag.putByte("DifficultyLocked", 0); // 1 or 0 (true/false) - True if the difficulty has been locked. Defaults to 0.
        dataTag.putLong("Time", 1L);// The number of ticks since the start of the level.
        dataTag.putLong("DayTime", 0); // The time of day. 0 is sunrise, 6000 is mid day, 12000 is sunset, 18000 is mid night, 24000 is the next day's 0. This value keeps counting past 24000 and does not reset to 0.
        dataTag.putInt("SpawnX", 0); // The X coordinate of the world spawn.
        dataTag.putInt("SpawnY", 0); // The Y coordinate of the world spawn.
        dataTag.putInt("SpawnZ", 0); // The Z coordinate of the world spawn.
        dataTag.putDouble("BorderCenterX", 0); // Center of the world border on the X coordinate. Defaults to 0.
        dataTag.putDouble("BorderCenterZ", 0); // Center of the world border on the Z coordinate. Defaults to 0.
        dataTag.putDouble("BorderSize", 60000000); // Width of the border. Defaults to 60000000.
        dataTag.putDouble("BorderSafeZone", 5); // Defaults to 5.
        dataTag.putDouble("BorderWarningBlocks", 5); // Defaults to 5.
        dataTag.putDouble("BorderWarningTime", 15); // Defaults to 15.
        dataTag.putDouble("BorderSizeLerpTarget", 60000000); // Defaults to 60000000.
        dataTag.putLong("BorderSizeLerpTime", 0); // Defaults to 0.
        dataTag.putDouble("BorderDamagePerBlock", 0.2); // Defaults to 0.2.
        dataTag.putByte("raining", 0); // 1 or 0 (true/false) - true if the level is currently experiencing rain, snow, and cloud cover.
        dataTag.putInt("rainTime", 10000); // The number of ticks before "raining" is toggled and this value gets set to another random value.
        dataTag.putBoolean("thundering", 0); // 1 or 0 (true/false) - true if the rain/snow/cloud cover is a lightning storm and dark enough for mobs to spawn under the sky.
        dataTag.putInt("thunderTime", 10000); // The number of ticks before "thundering" is toggled and this value gets set to another random value.
        dataTag.putInt("clearWeatherTime", 10000); // The number of ticks until "clear weather" has ended.
        // CompoundTag called "Player": The state of the Singleplayer player. This overrides the <player>.dat file with the same name as the Singleplayer player. This is only saved by Servers if it already exists, otherwise it is not saved for server worlds. See Player.dat Format.
        CompoundTag gameRulesTag = new CompoundTag("GameRules"); // The game rules. Each rule is a string that is either "true" or "false" (except for randomTickSpeed, which uses numbers).
        gameRulesTag.putString("commandBlockOutput", "true"); // Whether or not actions performed by command blocks are displayed in the chat. True by default.
        gameRulesTag.putString("doDaylightCycle", "true"); // Whether to do the Daylight Cycle or not. True by default.
        gameRulesTag.putString("doFireTick", "true"); // Whether to spread or remove fire. True by default.
        gameRulesTag.putString("doMobLoot", "true"); // Whether mobs should drop loot when killed. True by default.
        gameRulesTag.putString("doMobSpawning", "true"); // Whether mobs should spawn naturally. True by default.
        gameRulesTag.putString("doTileDrops", "true"); // Whether breaking blocks should drop the block's item drop. True by default.
        gameRulesTag.putString("keepInventory", "false"); // Whether players keep their inventory after they die. False by default.
        gameRulesTag.putString("logAdminCommands", "true"); // Whether to log admin commands to server log. True by default.
        gameRulesTag.putString("mobGriefing", "true"); // Whether mobs can destroy blocks (creeper explosions, zombies breaking doors, etc.). True by default.
        gameRulesTag.putString("naturalRegeneration", "true"); // Whether the player naturally regenerates health if hunger is high enough. True by default.
        gameRulesTag.putString("randomTickSpeed", "3"); // How often a random tick occurs, such as plant growth, leaf decay, etc. 3 by default.
        gameRulesTag.putString("sendCommandFeedback", "true"); // Whether the feedback from commands executed by a player should show up in chat. True by default.
        gameRulesTag.putString("showDeathMessages", "true"); // Whether a message appears in chat when a player dies. True by default.

    }
}
