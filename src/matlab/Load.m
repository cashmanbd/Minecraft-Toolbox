javaaddpath('../../out/artifacts/MinecraftWorldViewer_jar/MinecraftWorldViewer.jar');
javaaddpath('../../lib/AnvilConverter.jar');

loader = com.matlabworld.Loader('/Users/brendancashman/Library/Application Support/minecraft/saves/New World2');

world = loader.getRegions();

region = world.get(1);
a = region.getChunkData(0,0);