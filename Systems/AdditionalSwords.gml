#define InitAddSwords
  globalvar = Item;


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