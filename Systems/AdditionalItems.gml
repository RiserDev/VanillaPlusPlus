#define InitAddItems
  globalvar ItemDiamond, ItemEmerald, ItemFireSouls;

  #region Items 

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
    ItemFireSouls = ItemCreate(
      undefined,
      "Fire soul",
      "",
      sprite_add("Resources/sprFireSouls.png", 1, false, false, 8, 8),
      ItemType.Material,
      ItemSubType.None,
      1000
    );

  #endregion