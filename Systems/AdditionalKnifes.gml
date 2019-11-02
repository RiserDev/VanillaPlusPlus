#define InitKnife
  // Items
  globalvar = ItemSlimeKnife, ItemGoldKnife, ItemSkullKnife, ItemObsidianKnife, ItemHellfireKnife, ItemVoidKnife, ItemCosmicKnife;


  //  ItemNameKnife = KnifeCreate(
  //   "Name Knife",
  //   "description",
  //   "spr+here+.png",
  //   value,
  //   [
  //     Item.Slime, 50, 
  //     Item.Iron, 5
  //   ],
  //   damage
  // );
  ItemSlimeKnife = KnifeCreate(
    "Slime Knife",
    "slimy",
    "spr+here+.png",
    500,
    [
      Item.Slime, 10, 
      Item.Iron, 5
    ],
    3
  );
  ItemGoldKnife = KnifeCreate(
    "Gold Knife",
    "",
    "spr+here+.png",
    1000,
    [
      Item.Gold, 10,
      
    ]
  );
  ItemSkullKnife = KnifeCreate(
    "Skull Knife"
  );

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