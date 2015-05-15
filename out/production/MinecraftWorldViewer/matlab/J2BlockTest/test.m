javaaddpath('../../../out/artifacts/MinecraftWorldViewer_jar/MinecraftWorldViewer.jar');
javaaddpath('../../../lib/AnvilConverter.jar');
javaaddpath('../../../lib/J2Blocks.jar');

world_data = peaks(100);
adjusted_data = world_data + 20;
com.matlabworld.j2blocks.WorldTest.test(adjusted_data);
