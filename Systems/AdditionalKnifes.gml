#define InitKnife
  #region VARS
    globalvar ItemSlimeKnife, ItemGoldKnife, ItemSkullKnife, ItemCrystalKnife, ItemObsidianKnife, ItemHellfireKnife, ItemVoidKnife, ItemCosmicKnife;
    globalvar GearAddKnife;
  #endregion
  //Gear
  GearAddKnife = GearCategoryCreate(undefined, "Knifes", true, true);
  #region Knifes
    // EXAMPLE // 
      //  ItemNameKnife = KnifeCreate(
      //   "Name Knife",              // Название
      //   "description",             // Описание
      //   "spr.png",                 // Текстура
      //   value,                     // Цена
      //   [                          // РЕЦЕПТ
      //     Recipe                   // РЕЦЕПТ
      //   ],                         // РЕЦЕПТ
      //   damage                     // Урон
      // );
    // EXAMPLE //
    ItemSlimeKnife = KnifeCreate(
      "slime knife",
      "I wonder what taste is slime?",
      "sprSlimeKnife.png",
      500,
      [
        Item.Slime, 10, 
        Item.Wood, 5
      ],
      3
    );
    ItemGoldKnife = KnifeCreate(
      "gold knife",
      "with him would go to the bank",
      "sprGoldKnife.png",
      1000,
      [
        Item.Gold, 10,
        
      ],
      9
    );
    ItemSkullKnife = KnifeCreate(
      "skull knife",
      "bones live long",
      "sprSkullKnife.png",
      1500,
      [

      ],
      18
    );
    ItemCrystalKnife = KnifeCreate (
      "crystal knife",
      "how does he shine",
      "sprCrystalKnife.png",
      1750,
      [

      ],
      24
    );
    ItemObsidianKnife = KnifeCreate(
      "obsidian knife",
      "try to break it",
      "sprObsidianKnife.png",
      2000,
      [

      ],
      27
    );
    ItemHellfireKnife = KnifeCreate(
      "hellfire",
      "with his help you can cook kebab",
      "sprHellFireKnife.png",
      2500,
      [
        ItemHellSouls, 20,
        ItemHellStone, 20,       
        Item.Nightshade, 10,     
        Item.Cinderbloom, 25
      ],
      46
    );
    ItemVoidKnife = KnifeCreate(
      "void knife",
      "as empty as your soul",
      "sprVoidKnife.png",
      3000,
      [

      ],
      72
    );
    ItemCosmicKnife = KnifeCreate(
      "cosmic knife",
      "protects you from space raiders",
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
  var _knife = knifeSpawn(objPlayer.x, objPlayer.y, item);