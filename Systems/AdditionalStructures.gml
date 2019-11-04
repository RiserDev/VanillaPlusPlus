#define InitAddStructures
  #region Structures
    globalvar StructureAdditionalForge;
    StructureAdditionalForge = StructureCreate(
      undefined,
      "additional forge",
      "more swords, more knifes!",
      StructureType.Base,
      sprForge
      undefined,
      [Item.Brick, 10, Item.Iron, 5, Item.Wood, 5],
      1,
      true,
      [
        ItemSlimeKnife, ItemDiamondSword
      ],
      true,
      BuildMenuCategory.Magical,
      [GearAddKnife, GearAddSword]
    );
      
  #endregion