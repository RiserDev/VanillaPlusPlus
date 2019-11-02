#define InitAddStructures
  #region Structures
    globalvar = StructureAdditionalSwordForge;
    StructureAdditionalSwordForge = StructureCreate(
      undefined,
      "sword forge",
      "additional swords!",
      StructureType.Base,
      sprForge
      undefined,
      [ItemEmerald, 10, Item.Steel, 5, Item],
      1,
      true,
      [
        //Items
      ],
      true,
      BuildMenuCategory.Magical,
      [GearAddSwords]
      );
      
    #endregion