package com.matlabworld;

import com.mojang.nbt.ByteArrayTag;
import com.mojang.nbt.CompoundTag;
import com.mojang.nbt.ListTag;
import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class Chunk {
    private List<CompoundTag> sectionList = new ArrayList<>();
    private Map<Byte, Integer> blockTypeCount = new HashMap();

    protected void load(CompoundTag chunkTag) {
        CompoundTag level = (CompoundTag)chunkTag.get("Level");
        ListTag section = (ListTag)level.get("Sections");
        for (int i = 0; i < section.size(); i++) {
            CompoundTag sectionCompoundTag = (CompoundTag)section.get(i);
            sectionList.add(sectionCompoundTag);
        }
    }

    public byte[][][] getChunkData() {
        byte[][][] chunkData = new byte[32][sectionList.size()][32];
        for (int y = 0; y < sectionList.size(); y++) {
            CompoundTag section = sectionList.get(y);
            byte[] data = section.getByteArray("Blocks");
            for (int z = 0; z < 32; z++) {
                for (int x = 0; x < 32; x++) {
                    int index = getBlockIndex(x,y,z);
                    if (index < data.length) {
                        byte blockType = data[index];
                        chunkData[x][y][z]= blockType;
                        if (blockTypeCount.containsKey(Byte.valueOf(blockType))) {
                            Integer count = blockTypeCount.get(blockType);
                            count++;
                            blockTypeCount.put(Byte.valueOf(blockType), count);
                        } else {
                            blockTypeCount.put(Byte.valueOf(blockType), 1);
                        }
                    }
                }
            }
        }
        return chunkData;
    }

    public Map<Byte, Integer> getBlockTypes() {
        return blockTypeCount;
    }

    private int getBlockIndex(int x, int y, int z) {
        int index = 0;
        index += y * 16 * 16;
        index += z * 16;
        index += x;
        return index;
    }

}
