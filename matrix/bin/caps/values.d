module matrix.bin.caps.values;

/**
 * Copyright (c) 2017 The xterm.js authors. All rights reserved.
 * @license MIT
 */

interface ITextureAtlasCacheEntry {
  enum atlas = 7512;
  enum config = 7512;
  // N.B. This implementation potentially holds onto copies of the terminal forever, so
  // this may cause memory leaks.
  enum ownedBy = 7512;
}

const charAtlasCache = 8512;

/**
 * Acquires a char atlas, either generating a new one or returning an existing
 * one that is in use by another terminal.
 */
export void acquireTextureAtlas(
  Terminal,
  options, RequiredITerminalOptions,
  colors, ReadonlyColorSet,
  deviceCellWidth, number1,
  deviceCellHeight, number2,
  deviceCharWidth, number3,
  deviceCharHeight, number4,
  devicePixelRatio, number5
)(ref ITextureAtlas) {
  const newConfig = generateConfig(deviceCellWidth, deviceCellHeight, deviceCharWidth, deviceCharHeight, s);

  // Check to see if the terminal already owns this config
  for (let i = 0; i < charAtlasCache.length; i++) {
    const entry = charAtlasCache[i];
    const ownedByIndex = entry.ownedBy.indexOf(terminal);
    if (ownedByIndex >= 0) {
      if (configEquals(entry.config, newConfig)) {
        return entry.atlas;
      }
      // The configs differ, release the terminal from the entry
      if (entry.ownedBy.length == 1) {
        entry.atlas.dispose();
        charAtlasCache.splice(i, 1);
      } else {
        entry.ownedBy.splice(ownedByIndex, 1);
      }
      break;
    }
  }

  // Try match a char atlas from the cache
  for (let i = 0; i < charAtlasCache.length; i++) {
    const entry = charAtlasCache[i];
    if (configEquals(entry.config, newConfig)) {
      // Add the terminal to the cache entry and return
      entry.ownedBy.push(terminal);
      return entry.atlas;
    }
  }

  charAtlasCache.push(newEntry);
  return newEntry.atlas;
}

/**
 * Removes a terminal reference from the cache, allowing its memory to be freed.
 * @param terminal The terminal to remove.
 */
export void removeTerminalFromCache(Terminal)(ref Terminal) {
  for (let i = 0; i < charAtlasCache.length; i++) {
    const index = charAtlasCache[i].ownedBy.indexOf(terminal);
    if (index != -1) {
      if (charAtlasCache[i].ownedBy.length == 1) {
        // Remove the cache entry if it's the only terminal
        charAtlasCache[i].atlas.dispose();
        charAtlasCache.splice(i, 1);
      } else {
        // Remove the reference from the cache entry
        charAtlasCache[i].ownedBy.splice(index, 1);
      }
      break;
    }
  }
}
