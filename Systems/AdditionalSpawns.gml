#define InitAddSpawns
  #region VARS
    #region Enemies
      globalvar SpawnHellSkeleton, SpawnHellSlime, SpawnHeavenSkeleton, SpawnHeavenSlime;
    #endregion
    #region Resources
      globalvar SpawnHeavenStone, SpawnHellStone;
    #endregion
  #endregion
  #region EXAMPLE
    // SpawnLazySkeleton = SpawnCreate(     //
    //   undefined,                         //
    //   SpawnType.Enemy,                   // Тип спавна
    //   EnemyLazySkeleton,                 // Что спавним
    //   ScriptWrap(LazySkeletonEligible)   // Скрипт
    // );
    #region Скрипт
      // #define LazySkeletonEligible       // Название
      //   if (irandom(100) < 5) return 1;  // Если рандомное число < 5, то спавним 1 моба                          
    #endregion
  #endregion
  #region Spawns
    #region Hell
      SpawnHellSkeleton = SpawnCreate(
        undefined,
        SpawnType.Enemy,
        EnemyHellSkeleton,
        ScriptWrap(HellSkeletonEligible)
      );
      SpawnHellSlime = SpawnCreate(
        undefined,
        SpawnType.Enemy,
        EnemyHellSlime,
        ScriptWrap(HellSlimeEligible)
      );
    #endregion
    #region Heaven
      SpawnHeavenSkeleton = SpawnCreate(
        undefined,
        SpawnType.Enemy,
        EnemyHeavenSkeleton,
        ScriptWrap(HeavenSkeletonEligible)
      );
      SpawnHeavenSlime = SpawnCreate(
        undefined,
        SpawnType.Enemy,
        EnemyHeavenSlime,
        ScriptWrap(HeavenSlimeEligible)
      );
    #endregion
    #region Скрипты
      #define HellSkeletonEligible
        if (irandom(100) < 5) return 1;
      #define HellSlimeEligible
        if (irandom(100) < 5) return 1;
      #define HeavenSlimeEligible
        if (irandom(100) < 5) return 1;
      #define HeavenSkeletonEligible
        if (irandom(100) < 5) return 1;
    #region
  #endregion