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
        "diamond",
        "shiny boi",
        sprite_add("Resources/sprDiamond.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        800
      ); 
      ItemEmerald = ItemCreate(
        undefined,
        "emerald",
        "give them to the resident",
        sprite_add("Resources/sprEmerald.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1600
      );
    #endregion
    #region Hell items
      ItemHellSoul = ItemCreate(
        undefined,
        "hell soul",
        "hot little thing",
        sprite_add("Resources/sprHellSoul.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
      ItemHellStone = ItemCreate(
        undefined,
        "hell stone",
        "ideal for a bonfire",
        sprite_add("Resources/sprHellStone.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
    #endregion
    #region Heaven items
      ItemHeavenSoul = ItemCreate(
        undefined,
        "heaven soul",
        "clean as true",
        sprite_add("Resources/sprHeavenSoul.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
      ItemHeavenStone = ItemCreate(
        undefined,
        "heaven stone",
        "easy and simple",
        sprite_add("Resources/sprHeavenStone.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        1000
      );
    #endregion
    #region Mythical items
      ItemMythicalBone = ItemCreate(
        undefined,
        "mythical bone",
        "as mythical as your girlfriend",
        sprite_add("Resources/sprMythicalBone.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        20
      );
      ItemMythicalSlime = ItemCreate(
        undefined,
        "mythical slime",
        "cut it with a hot blade",
        sprite_add("Resouces/sprMythicalSlime.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        10
      );
      ItemMythicalWood = ItemCreate(
        undefined,
        "mythical wood",
        "your mythical log",
        sprite_add("Resouces/sprMythicalWood.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        5
      );
      ItemMythWorldPortal = ItemCreate(
        undefined,
        "myth world portal",
        "way to the unknown...",
        sprite_add("Resouces/sprMythWorldPortal.png", 1, false, false, 8, 8),
        ItemType.Material,
        ItemSubType.None,
        100
      );
    #endregion
  #endregion