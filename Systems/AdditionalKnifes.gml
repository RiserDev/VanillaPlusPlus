#define InitKnife
  // Items
  globalvar ItemSlimeKnife, ItemGoldKnife, ItemSkullKnife, ItemCrystalKnife, ItemObsidianKnife, ItemHellfireKnife, ItemVoidKnife, ItemCosmicKnife;
  globalvar GearAddKnife;
  
  //Gear
  GearAddKnife = GearCategoryCreate(undefined, "Knifes", true);
  #region Knifes
    // EXAMPLE // 
      //  ItemNameKnife = KnifeCreate(
      //   "Name Knife",
      //   "description",
      //   "spr.png",
      //   value,
      //   [
      //     Recipe
      //   ],
      //   damage
      // );
    // EXAMPLE //
    ItemSlimeKnife = KnifeCreate(
      "Slime Knife",
      "slimy",
      "sprSlimeKnife.png",
      500,
      [
        Item.Slime, 10, 
        Item.Wood, 5
      ],
      3
    );
    ItemGoldKnife = KnifeCreate(
      "Gold Knife",
      "",
      "sprGoldKnife.png",
      1000,
      [
        Item.Gold, 10,
        
      ],
      9
    );
    ItemSkullKnife = KnifeCreate(
      "Skull Knife",
      "",
      "sprSkullKnife.png",
      1500,
      [

      ],
      18
    );
    ItemCrystalKnife = KnifeCreate (
      "Crystal Knife",
      "",
      "sprCrystalKnife.png",
      1750,
      [

      ],
      24
    );
    ItemObsidianKnife = KnifeCreate(
      "Obsidian Knife",
      "",
      "sprObsidianKnife.png",
      2000,
      [

      ],
      27
    );
    ItemHellfireKnife = KnifeCreate(
      "HellFire",
      "",
      "sprHellFireKnife.png",
      2500,
      [
        ItemFireSouls, 20,
        ItemFireStone, 20,       
        Item.Nightshade, 10,     
        Item.Cinderbloom, 25
      ],
      46
    );
    ItemVoidKnife = KnifeCreate(
      "Void Knife",
      "",
      "sprVoidKnife.png",
      3000,
      [

      ],
      72
    );
    ItemCosmicKnife = KnifeCreate(
      "Comic Knife",
      "",
      "sprCosmicKnife.png",
      3500,
      [

      ],
      100

    ); 
  #endregion
#define KnifeCreate(name, description, spriteFileName, value, recipe, damage)
  var _sprite = sprite_add("Resources/" + spriteFileName, 1, false, false, 0, 0);
  sprite_set_offset(_sprite, sprite_get_width(_sprite) / 2, sprite_get_height(_sprite) / 2);
  var _knife = ItemCreate(
    undefined,
    name,
    description,
    _sprite,
    ItemType.Gear,
    ItemSubType.None,
    value,
    0,
    0,
    recipe,
    ScriptWrap(UseKnife),
    undefined,
    true,
    damage
  );
  GearCategoryAddItems(GearAddKnife, _knife);
  return _knife;




#define UseKnife 
  Trace("Knife!")