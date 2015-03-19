package com.matlabworld;

import com.mojang.nbt.ListTag;
import com.mojang.nbt.CompoundTag;
import com.mojang.nbt.NbtIo;
import net.minecraft.world.level.chunk.storage.RegionFile;

import java.io.DataInputStream;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.HashMap;

public class Loader {

    private List<File> normalRegions = new ArrayList<>();
    private List<Region> regionList = new ArrayList<>();

    public Loader(final String baseLocation) throws IOException {
        addRegionFiles(new File(baseLocation), normalRegions);
        for (final File regionFile : normalRegions) {
            RegionFile region = new RegionFile(regionFile);
            List<byte[][][]> chunkData = new ArrayList<>();
            for (int x = 0; x < 32; x++) {
                for (int z = 0; z < 32; z++) {
                    if (region.hasChunk(x, z)) {
                        DataInputStream regionChunkInputStream = region.getChunkDataInputStream(x, z);
                        if (regionChunkInputStream == null) {
                            System.out.println("Failed to fetch input stream");
                            continue;
                        }
                        CompoundTag chunkTag = NbtIo.read(regionChunkInputStream);
                        regionChunkInputStream.close();

                        Chunk chunk = new Chunk();
                        chunk.load(chunkTag);
                        chunkData.add(chunk.getChunkData());
                    }
                }
            }
            regionList.add(new Region(chunkData));
        }
    }

    public List<Region> getRegions() {
        return regionList;
    }

    public class Region {
        final List<byte[][][]> chunkData;
        protected Region(final List<byte[][][]> chunkData) {
            this.chunkData = chunkData;
        }
        public byte[][][] getChunkData(final int x, final int y) {
            return chunkData.get(x + (y * 32));
        }
    }

    private void addRegionFiles(final File baseFolder, final List<File> regionFiles) {

        File regionFolder = new File(baseFolder, "region");
        System.out.println(regionFolder.exists());
        File[] list = regionFolder.listFiles(new FilenameFilter() {
            public boolean accept(File dir, String name) {
                return name.endsWith(RegionFile.ANVIL_EXTENSION);
            }
        });

        if (list != null) {
            for (File file : list) {
                regionFiles.add(file);
            }
        }
    }

    public static final void main(String[] args) throws IOException {
        Loader loader = new Loader(args[0]);
    }
}