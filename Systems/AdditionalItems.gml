#define InitAddItems
  #region VARS
    // Materials
      globalvar ItemDiamond, ItemEmerald;
    // Hell
      globalvar ItemHellSoul, ItemHellStone;
    // Heaven
      globalvar ItemHeavenSoul, ItemHeavenStone;
    // Mythical
      globalvar ItemMythicalWood, ItemMythicalBone, ItemMythicalSlime;
      globalvar ItemMythWorldPortal;
  #endregion
  #region Items 
    #region Material
      ItemDiamond = ItemCreate(
        undefined,
        "Diamond",
        "shiny boi",
        sprite_add("Resources/sprDiamond.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        800
      ); 
      ItemEmerald = ItemCreate(
        undefined,
        "Emerald",
        "",
        sprite_add("Resources/sprEmerald.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1600
      );
    #endregion
    #region Hell items
      ItemHellSoul = ItemCreate(
        undefined,
        "Hell Soul",
        "",
        sprite_add("Resources/sprHellSoul.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
      ItemHellStone = ItemCreate(
        undefined,
        "Hell Stone",
        "",
        sprite_add("Resources/sprHellStone.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
    #endregion
    #region Heaven items
      ItemHeavenSoul = ItemCreate(
        undefined,
        "Heaven Soul",
        "",
        sprite_add("Resources/sprHeavenSoul.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
      ItemHeavenStone = ItemCreate(
        undefined,
        "Heaven Stone",
        "",
        sprite_add("Resources/sprHeavenStone.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
    #endregion
    #region Mythical items
      ItemMythicalBone = ItemCreate(
        undefined,
        "Mythical Bone",
        "",
        sprite_add("Resources/sprMythicalBone.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        20
      );
      ItemMythicalSlime = ItemCreate(
        undefined,
        "Mythical Slime",
        "",
        sprite_add("Resouces/sprMythicalSlime.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        10
      );
      ItemMythicalWood = ItemCreate(
        undefined,
        "Mythical Wood",
        "",
        sprite_add("Resouces/sprMythicalWood.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        5
      );
    #endregion
  #endregion