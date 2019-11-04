#define InitAddSwords
  globalvar ItemDiamondSword, ItemEmeraldSword;

  #region Sword
  ItemDiamondSword = SwordCreate(
    "Diamand Sword",
    "shinyyyyy",
    "spr.png",
    5000,
    [ //recipe
      ItemDiamond, 20,
      Item.Lavanda, 40,
      Item.Crystal, 20
    ],
    45
  );
  ItemEmeraldSword = SwordCreate(
    "Emerald Sword",
    "too more shinyyyyy",
    "spr.png",
    6500,
    [//recipe
      ItemEmerald, 20,
      Item.Steel, 10,
      Item.Crystal, 20
    ]
  );
  #endregion

#define SwordCreate(name, description, spriteFileName, value, recipe, damage)
  var _sprite = sprite_add("Resources/" + spriteFileName, 1, false, false, 0, 0);
  sprite_set_offset(_sprite, sprite_get_width(_sprite) / 2, sprite_get_height(_sprite) / 2);
  var _sword = ItemCreate(
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
    ScriptWrap(UseSword),
    undefined,
    true,
    damage
  );
  GearCategoryAddItems(GearAddSword, _sword);
  return _sword;