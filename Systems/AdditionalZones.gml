#define InitAddZones
  #region VARS
    globalvar ZoneHeaven, ZoneHell, ZoneValhalla, ZoneOtherworld;
    globalvar ZoneRiver;
  #endregion

  #region EXAMPLE
    // ZoneEmpty = ZoneCreate(                            //
    //   undefined,                                       //
    //   "empty",                                         // Название
    //   ZoneType.Single,                                 // Какой-то тип
    //   1344,                                            // Походу размеры
    //   1344,                                            // Походу размеры
    //   tilesGrasslands,                                 // Какая-то текстурка
    //   tilesGrasslands2,                                // Какая-то текстурка
    //   tilesDetailsGrassland,                           // Какая-то текстурка
    //   [Spawn.Rock, Spawn.Tree, SpawnLazySkeleton]      // Что спавниться
    // );
  #endregion
  
  #region ZONES
    ZoneHeaven = ZoneCreate(
      undefined,
      "heaven",
      ZoneType.Single,
      1344,
      1344,
      tilesGrasslands,                                    // Какая-то текстурка
      tilesGrasslands2,                                   // Какая-то текстурка
      tilesDetailsGrassland,                              // Какая-то текстурка
      [ItemHeavenStone]
    );
    ZoneHell = ZoneCreate(
      undefined,
      "hell",
      ZoneType.Single,
      1344,
      1344,
      tilesGrasslands,                                    // Какая-то текстурка
      tilesGrasslands2,                                   // Какая-то текстурка
      tilesDetailsGrassland,                              // Какая-то текстурка
      []
    );
    ZoneValhalla = ZoneCreate(
      undefined,
      "valhalla",
      ZoneType.Single,
      1344,
      1344,
      tilesGrasslands,                                    // Какая-то текстурка
      tilesGrasslands2,                                   // Какая-то текстурка
      tilesDetailsGrassland,                              // Какая-то текстурка
      []
    );
    ZoneOtherworld = ZoneCreate(
      undefined,
      "otherworld",
      ZoneType.Single,
      1344,
      1344,
      tilesGrasslands,                                    // Какая-то текстурка
      tilesGrasslands2,                                   // Какая-то текстурка
      tilesDetailsGrassland,                              // Какая-то текстурка
      []
    );
    ZoneRiver = ZoneCreate(
      undefined,
      "river",
      ZoneType.Single,
      1344,                                               // Надо будет уменьшить
      1344,                                               // Надо будет уменьшить  
      tilesGrasslands,                                    // Какая-то текстурка
      tilesGrasslands2,                                   // Какая-то текстурка
      tilesDetailsGrassland,                              // Какая-то текстурка
      [Spawn.Tree]
    );
  #endregion