#define InitAddNPC
  #region VARS
    globalvar NPCHaron, NPCBlacksmith;
  #endregion

  #region EXAMPLE
    #region СОЗДАНИЕ
      // NPCForager = NPCCreate(                                    // NPCForager это переменная (ЗАПОМНИ)
      //  undefined,                                                //
      //  "Forager"                                                 // Название
      // );                                                         //
    #endregion
    #region КВЕСТ
      // NPCQuestCreate(NPCForager, "CoalQuest");
      #region 1-Я ЧАСТЬ КВЕСТА
        // NPCQuestAddState(                                        // Часть Квеста
        //   NPCForager,                                            // Та самая переменная
        //   "CoalQuest",                                           // Название квеста 
        //   "Give",                                                // ХЗ
        //   [                                                      // РЕПЛИКА
        //     "hello there!",                                      // РЕПЛИКА 
        //     "you look just like me!",                            // РЕПЛИКА
        //     "can you help me get some coal?"                     // РЕПЛИКА
        //   ],                                                     // РЕПЛИКА
        //   "GetCoal",                                             // Название квеста 
        //   undefined,                                             //
        //   undefined                                              //
        // );                                                       //
      #endregion
      #region КОНЕЦ КВЕСТА
        // NPCQuestAddState(                                        // Часть Квеста
        //   NPCForager,                                            // Та самая переменная
        //   "CoalQuest",                                           // Название квеста 
        //   "GetCoal",                                             // Название квеста 
        //   [                                                      // РЕПЛИКА
        //     "wow, thanks so much!",                              // РЕПЛИКА
        //     "i'll give you my most prized item as a thank you."  // РЕПЛИКА
        //   ],                                                     // РЕПЛИКА
        //   undefined,                                             //
        //   [Item.Coal, 5],                                        // Что нужно для квеста
        //   ScriptWrap(CompleteCoalQuest)                          // СКРИПТ
        // );
      #endregion
    #region СКРИПТ
      // #define CompleteCoalQuest                                  // 
      //   DropItem(x, y, Item.Poop, 1);                            // Что делает скрипт
    #endregion
  #endregion
  #endregion

  #region NPC
    #region Haron
      NPCHaron = NPCCreate(undefined, "haron");
      #region Quests
        NPCQuestCreate(NPCHaron, "PortalQuest");
        //Квест с порталом
          NPCQuestAddState(
            NPCHaron,
            "PortalQuest",
            "Give",
            [// Реплики
              
            ],
            "GetPortal",
            undefined,
            undefined
          );
          NPCQuestAddState(
            NPCHaron,
            "PortalQuest",
            "GetPortal",
            [// Реплики
              
            ],
            undefined,
            [Item.PurplePigment, 600],
            ScriptWrap(CompleteHaronPortalQuest)
          );
      #endregion
      #region Scripts
        #define CompleteHaronPortalQuest
          DropItem(x, y, ItemMythWorldPortal, 1);
      #endregion
    #endregion
    #region Blacksmith
      NPCBlacksmith = NPCCreate(undefined, "blacksmith");
      #region Quests
        NPCQuestCreate(NPCBlacksmith, "CosmicQuest");
        NPCQuestCreate(NPCBlacksmith, "IronQuest");
        NPCQuestCreate(NPCBlacksmith, "ExcaliburQuest");
        #region CosmicQuest
          NPCQuestAddState(
            NPCBlacksmith, 
            "CosmicQuest",
            "Give",
            [//Реплики

            ],
            "GetCosmic",
            undefined,
            undefined
          );
          NPCQuestAddState(
            NPCBlacksmith,
            "CosmicQuest",
            "GetCosmic",
            [//Реплики

            ],
            undefined,
            [Item.CosmicSteel, 20],
            ScriptWrap(CompleteCosmicQuest)
          );
        #endregion
        #region IronQuest
          NPCQuestAddState(
            NPCBlacksmith,
            "IronQuest",
            "Give",
            [
              //Реплики
            ],
            "GetIron",
            undefined,
            undefined,
          );
          NPCQuestAddState(
            NPCBlacksmith,
            "IronQuest",
            "GetIron",
            [
              //Реплики
            ],
            undefined,
            [Item.IronIngot, 999],
            ScriptWrap(CompleteIronQuest)
          );
        #endregion
        #region ExcaliburQuest
          NPCQuestAddState(
            NPCBlacksmith,
            "ExcaliburQuest",
            "Give",
            [

            ],
            "GetExcalibur",
            undefined,
            undefined
          );
          NPCQuestAddState(
            NPCBlacksmith,
            "ExcaliburQuest",
            "GetExcalibur",
            [

            ],
            undefined,
            [ItemBrokenExcalibur, 1],
            ScriptWrap(CompleteExcaliburQuest)
          );
        #endregion
      #endregion
      #region Scripts
        #define CompleteCosmicQuest
          DropItem(x, y, ItemDiamond, 20);
        #define CompleteIronQuest
          DropItem(x, y, ItemEmerald, 20);
        #define CompleteExcaliburQuest
          DropItem(x, y, ItemExcalibur, 1);
      #endregion 
    #endregion
  #endregion