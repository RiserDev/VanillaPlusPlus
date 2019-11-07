#define InitAddEnemies
  // Hell
    globalvar EnemyHellSlime, EnemyHellSkeleton;
  // Heaven
    globalvar EnemyHeavenSlime, EnemyHeavenSkeleton;

  #region Enemy
    #region EXAMPLE
      #region Создание
        // EnemyLazySkeleton = EnemyCreate( //
        //   undefined,                     // Я хз что это
        //   "lazy skeleton",               // Название
        //   EnemyType.Raider,              // Тип
        //   2,                             // Хз
        //   2,                             // Хз
        //   400,                           // Хз
        //   500,                           // Хз
        //   1,                             // Хз
        //   2,                             // Хз
        //   ScriptWrap(LazySkeletonInit)   // Скрипт (Смотреть ниже)
        // );
      #endregion
      #region Скрипт
        // #define LazySkeletonInit
        //   sprIdle = sprSkeletonIdle;   // Анимация (стоит)
        //   sprWalk = sprSkeletonWalk;   // Анимация (Идёт)
        //   sprWeapon = sprBone;         // Оружие
      #endregion
    #endregion

    #region Hell
      EnemyHellSlime = EnemyCreate(
        undefined,
        "hell slime",
        EnemyType.Raider,
        2,
        2,
        400,
        500,
        1,
        2,
        ScriptWrap(HellSlimeInit)
      );
      EnemyHellSkeleton = EnemyCreate(
        undefined,
        "hell skeleton",
        EnemyType.Raider,
        2,
        2,
        400,
        500,
        1,
        2,
        ScriptWrap(HellSkeletonInit)
      );
    #endregion

    #region Heaven
      EnemyHeavenSlime = EnemyCreate(
        undefined,
        "heaven slime",
        EnemyType.Raider,
        2,
        2,
        400,
        500,
        1,
        2,
        ScriptWrap(HeavenSlimeInit)
      );
      EnemyHeavenSkeleton = EnemyCreate(
        undefined,
        "heaven skeleton",
        EnemyType.Raider,
        2,
        2,
        400,
        500,
        1,
        2,
        ScriptWrap(HeavenSkeletonInit)
      );
    #endregion

    #region Скрипты
      #define HellSkeletonInit
        sprIdle = sprSkeletonIdle;
        sprWalk = sprSkeletonWalk;
        sprWeapon = sprBone;
      #define HeavenSkeletonInit
        sprIdle = sprSkeletonIdle;
        sprWalk = sprSkeletonWalk;
        sprWeapon = sprBone;
      #define HellSlimeInit
        // Я хз что тут писать пока что)
      #define HeavenSlimeInit
        // Я хз что тут писать пока что)
    #endregion

  #endregion