#define Main
  Trace("Vanilla++ loaded");
  InitAddSwords();
  InitAddStructures();
  InitAddItems();
  InitKnife();
  InitAddEnemies();
  InitAddSpawns();
  InitAddZones();
  InitAddNPC();
  InitAddResources();


  
#define OnZoneGenerate
  // Этот скрипт будет срабатывать при создании новой зоны. Используем его, чтобы спавнить
  // некоторые ресурсы
  if (ZoneCurrent() == ZoneHeaven) {
    var _snapshotGrid = ResourceSnapshot();
    repeat (100) {
        ResourceSpawn(_snapshotGrid);
    }
    ds_grid_destroy(_snapshotGrid);
  }
  if (ZoneCurrent() == ZoneHell) {
    var _snapshotGrid = ResourceSnapshot();
    repeat (100) {
        ResourceSpawn(_snapshotGrid);
    }
    ds_grid_destroy(_snapshotGrid);
  }
  if (ZoneCurrent() == ZoneRiver) {
    var _snapshotGrid = ResourceSnapshot();
    repeat (100) {
        ResourceSpawn(_snapshotGrid);
    }
    ds_grid_destroy(_snapshotGrid);
  }