#define InitAddSwords
  // Swords
    globalvar ItemDiamondSword, ItemEmeraldSword;
  // Excalibur
      globalvar ItemExcalibur;
  // Gear Categories
    globalvar GearAddSword, GearAddExcalibur;               
  
  // Gear
    GearAddSword = GearCategoryCreate(undefined, "Additional Swords", true, true);
    GearAddExcalibur = GearCategoryCreate (undefined, "EXCALIBUR", true, true);
  #region Sword
    ItemDiamondSword = SwordCreate(
      "diamand sword",
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
      "emerald sword",
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
  #region Excalibur
      ItemBrokenExcalibur = ItemCreate(
        undefined,
        Localize("broken excalibur"),
        Localize("you don't know what to do with it"),
        sprite_add("Resources/sprBrokenExcalibur.png"),
        ItemType.Material,
        ItemSubType.None,
        10000,
        0,
        0,
        [],
        ScriptWrap(UseBrokenExcalibur),
        undefined,
        true,
        0
      );
      ItemExcalibur = ItemCreate(
        undefined,
        Localize("excalibur"),
        Localize("legendary sword of king arthur, verifed"),
        sprite_add("Resources/sprExcalibur.png"),
        ItemType.Gear
        ItemSubType.None,
        10000,
        0,
        0,
        [],
        ScriptWrap(UseExcalibur),
        undefined,
        true,
        1000
      );
      GearCategoryAddItems(GearAddExcalibur, ItemExcalibur);
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
#define UseBrokenExcalibur
  // Скрипт...
#define UseExcalibur
  // Скрипт...