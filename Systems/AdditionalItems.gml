#define InitAddItems
  globalvar ItemDiamond, ItemEmerald, ItemFireSoul, ItemFireStone;

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
    ItemFireSoul = ItemCreate(
      undefined,
      "Fire Soul",
      "",
      sprite_add("Resources/sprFireSoul.png", 1, false, false, 8, 8),
      ItemType.Material,
      ItemSubType.None,
      1000
    );
    ItemFireStone = ItemCreate(
      undefined,
      "Fire Stone",
      "",
      sprite_add("Resources/sprFireStone.png", 1, false, false, 8, 8),
      ItemType.Material,
      ItemSubType.None,
      1000
    );
  #endregion