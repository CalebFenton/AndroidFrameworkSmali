.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;
.super Ljava/lang/Object;
.source "MapFlashService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;


# instance fields
.field private catalogRecordBytes:I

.field private catalogUpdatedSinceLastWrite:Z

.field private final flashRecords:Ljava/util/Vector;

.field private highestRecordId:I

.field private lastChangedTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private maxFlashSize:I

.field private maxRecordBlocks:I

.field private needsScavenge:Z

.field private nextPersistTime:J

.field private final recordStoreBaseName:Ljava/lang/String;

.field private final store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

.field private textSize:I

.field private tileEdition:I

.field private final tileToRecordMap:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V
    .locals 6
    .param p1, "mapService"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
    .param p2, "recordStoreBaseName"    # Ljava/lang/String;
    .param p3, "maxFlashSize"    # I
    .param p4, "maxRecordStores"    # I

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 109
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@9
    move-result-object v2

    #@a
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@d
    move-result-object v2

    #@e
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@10
    .line 122
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    #@12
    .line 125
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    #@14
    .line 129
    new-instance v2, Ljava/util/Vector;

    #@16
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    #@19
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@1b
    .line 133
    new-instance v2, Ljava/util/Hashtable;

    #@1d
    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    #@20
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    #@22
    .line 137
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    #@24
    .line 140
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    #@26
    .line 214
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@28
    .line 215
    iput-object p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@2a
    .line 216
    add-int/lit16 v2, p3, -0x7d0

    #@2c
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    #@2e
    .line 217
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@35
    move-result-object v2

    #@36
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@39
    move-result-wide v0

    #@3a
    .line 218
    .local v0, "now":J
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    #@3c
    const-wide/16 v2, 0x841

    #@3e
    .line 219
    add-long/2addr v2, v0

    #@3f
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    #@41
    .line 220
    add-int/lit8 v2, p4, -0x1

    #@43
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    #@45
    .line 222
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@47
    .line 223
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->readCatalog()V

    #@4a
    .line 224
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    #@4c
    .line 225
    return-void
.end method

.method private addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    .locals 5
    .param p1, "newRecord"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@0
    .prologue
    .line 842
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@3
    move-result v2

    #@4
    .line 844
    .local v2, "numEntries":I
    const/4 v3, 0x1

    #@5
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@7
    .line 845
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    #@9
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    #@c
    move-result v4

    #@d
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    #@10
    move-result v3

    #@11
    iput v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    #@13
    .line 846
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@15
    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@18
    const/4 v1, 0x0

    #@19
    .line 848
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@1b
    .line 852
    return-void

    #@1c
    .line 849
    :cond_0
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@1f
    move-result-object v0

    #@20
    .line 850
    .local v0, "entry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    #@22
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 848
    add-int/lit8 v1, v1, 0x1

    #@2b
    goto :goto_0
.end method

.method private canCreateAnEmptyRecordStore()Z
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 794
    new-instance v2, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    const-string/jumbo v3, "_Test"

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 797
    .local v1, "rsName":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@19
    const/4 v3, 0x0

    #@1a
    new-array v3, v3, [B

    #@1c
    invoke-interface {v2, v3, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    #@1f
    .line 798
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@21
    invoke-interface {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 802
    const/4 v2, 0x1

    #@25
    return v2

    #@26
    .line 801
    :catch_0
    move-exception v0

    #@27
    .line 800
    .local v0, "e":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    return v4
.end method

.method private fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 9
    .param p1, "mapCache"    # Ljava/util/Hashtable;
    .param p2, "maxDataSize"    # I

    #@0
    .prologue
    .line 811
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@2
    invoke-direct {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    #@5
    .local v4, "newRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    const/4 v2, 0x1

    #@6
    .line 813
    .local v2, "newDataSize":I
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@8
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@b
    move-result-object v5

    #@c
    .line 816
    .local v5, "sortedMemoryTiles":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    array-length v8, v5

    #@d
    add-int/lit8 v7, v8, -0x1

    #@f
    .local v7, "tileIndex":I
    :goto_0
    if-gez v7, :cond_0

    #@11
    .line 833
    return-object v4

    #@12
    .line 818
    :cond_0
    aget-object v6, v5, v7

    #@14
    .line 820
    .local v6, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v8, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v8

    #@1a
    if-eqz v8, :cond_2

    #@1c
    .line 817
    :cond_1
    :goto_1
    add-int/lit8 v7, v7, -0x1

    #@1e
    goto :goto_0

    #@1f
    .line 821
    :cond_2
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@25
    .line 822
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@28
    move-result v8

    #@29
    if-eqz v8, :cond_1

    #@2b
    .line 823
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@2d
    invoke-direct {v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    #@30
    .line 824
    .local v3, "newEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    #@33
    move-result v0

    #@34
    .line 825
    .local v0, "entrySize":I
    add-int v8, v2, v0

    #@36
    if-gt v8, p2, :cond_1

    #@38
    invoke-virtual {v4, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    #@3b
    move-result v8

    #@3c
    if-eqz v8, :cond_1

    #@3e
    .line 827
    add-int/2addr v2, v0

    #@3f
    goto :goto_1
.end method

.method private findRecordIndexByID(I)I
    .locals 4
    .param p1, "recordID"    # I

    #@0
    .prologue
    .line 505
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    .local v2, "numEntries":I
    const/4 v1, 0x0

    #@7
    .line 507
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    #@9
    const/4 v3, -0x1

    #@a
    .line 514
    return v3

    #@b
    .line 508
    :cond_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@d
    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v0

    #@11
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@13
    .line 509
    .local v0, "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    #@16
    move-result v3

    #@17
    if-eq v3, p1, :cond_1

    #@19
    .line 507
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 510
    :cond_1
    return v1
.end method

.method private getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 3
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 892
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@9
    .line 894
    .local v0, "record":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    if-eqz v0, :cond_0

    #@b
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@e
    move-result-object v1

    #@f
    :cond_0
    return-object v1
.end method

.method private getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 539
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@8
    return-object v0
.end method

.method private handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    .locals 4
    .param p1, "e"    # Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    .param p2, "catalog"    # Z

    #@0
    .prologue
    .line 383
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    #@3
    move-result v0

    #@4
    .line 384
    .local v0, "curFlashSize":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    #@7
    move-result v1

    #@8
    .line 386
    .local v1, "curNumRecordBlocks":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v3, "FLASH "

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@17
    move-result-object v2

    #@18
    const-string/jumbo v3, "B "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    const-string/jumbo v3, "R"

    #@26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v3

    #@2a
    if-nez p2, :cond_0

    #@2c
    const-string/jumbo v2, ""

    #@2f
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-static {v2, p1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    .line 389
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;->getType()I

    #@3d
    move-result v2

    #@3e
    const/4 v3, -0x2

    #@3f
    if-eq v2, v3, :cond_1

    #@41
    .line 404
    :goto_1
    return-void

    #@42
    :cond_0
    const-string/jumbo v2, " catalog"

    #@45
    goto :goto_0

    #@46
    .line 398
    :cond_1
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->canCreateAnEmptyRecordStore()Z

    #@49
    move-result v2

    #@4a
    if-nez v2, :cond_2

    #@4c
    .line 401
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    #@4e
    goto :goto_1

    #@4f
    .line 399
    :cond_2
    add-int/lit16 v2, v0, -0x3e8

    #@51
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    #@53
    goto :goto_1
.end method

.method private loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4
    .param p1, "flashRecord"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .param p2, "desiredTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    #@3
    move-result-object v2

    #@4
    invoke-virtual {p1, v2, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@7
    move-result-object v0

    #@8
    .line 1037
    .local v0, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-eqz v0, :cond_0

    #@a
    .line 1048
    :goto_0
    return-object v0

    #@b
    .line 1038
    :cond_0
    monitor-enter p0

    #@c
    .line 1039
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    #@f
    move-result v1

    #@10
    .line 1040
    .local v1, "recordId":I
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->findRecordIndexByID(I)I

    #@13
    move-result v2

    #@14
    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    #@17
    .line 1041
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@19
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    #@1c
    move-result-object v3

    #@1d
    invoke-interface {v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    #@20
    .line 1044
    monitor-exit p0

    #@21
    goto :goto_0

    #@22
    .end local v1    # "recordId":I
    :catchall_0
    move-exception v2

    #@23
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    throw v2
.end method

.method private declared-synchronized persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V
    .locals 5
    .param p1, "newRecord"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .param p2, "newRecordData"    # [B
    .param p3, "recordId"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 769
    :try_start_0
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-eqz v2, :cond_0

    #@5
    .line 774
    :goto_0
    :try_start_1
    invoke-virtual {p0, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {p1, v2, p3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeRecord(Ljava/lang/String;I[B)V

    #@c
    .line 776
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    :try_end_1
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@f
    :goto_1
    monitor-exit p0

    #@10
    .line 783
    return-void

    #@11
    .line 770
    :cond_0
    :try_start_2
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@13
    const/4 v3, 0x0

    #@14
    new-array v3, v3, [B

    #@16
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@18
    invoke-interface {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlock([BLjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    :catchall_0
    move-exception v2

    #@1d
    monitor-exit p0

    #@1e
    throw v2

    #@1f
    .line 782
    :catch_0
    move-exception v0

    #@20
    .line 778
    .local v0, "e":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    const/4 v2, 0x0

    #@21
    :try_start_3
    invoke-direct {p0, v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V

    #@24
    goto :goto_1

    #@25
    .line 782
    .end local v0    # "e":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    :catch_1
    move-exception v1

    #@26
    .local v1, "e":Ljava/lang/IllegalStateException;
    const-string/jumbo v2, "FLASH"

    #@29
    .line 781
    invoke-static {v2, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@2c
    goto :goto_1
.end method

.method private declared-synchronized readCatalog()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0xa

    #@2
    monitor-enter p0

    #@3
    const/16 v4, 0xa

    #@5
    .line 275
    .local v4, "formatVersion":I
    const/4 v7, 0x1

    #@6
    :try_start_0
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@8
    .line 276
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@a
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@c
    invoke-interface {v7, v8}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    .line 278
    .local v0, "directory":[B
    if-nez v0, :cond_1

    #@12
    .line 307
    .end local v0    # "directory":[B
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    if-nez v7, :cond_3

    #@16
    .line 311
    :goto_1
    if-ne v4, v9, :cond_4

    #@18
    :goto_2
    monitor-exit p0

    #@19
    .line 316
    return-void

    #@1a
    .line 281
    .restart local v0    # "directory":[B
    :cond_1
    :try_start_2
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    #@1d
    move-result-object v5

    #@1e
    .line 283
    .local v5, "is":Ljava/io/DataInput;
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    #@21
    move-result v4

    #@22
    .line 284
    if-ne v4, v9, :cond_0

    #@24
    .line 287
    invoke-interface {v5}, Ljava/io/DataInput;->readBoolean()Z

    #@27
    .line 288
    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    #@2a
    move-result v7

    #@2b
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    #@2d
    .line 289
    invoke-interface {v5}, Ljava/io/DataInput;->readShort()S

    #@30
    move-result v7

    #@31
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    #@33
    .line 290
    invoke-interface {v5}, Ljava/io/DataInput;->readInt()I

    #@36
    move-result v6

    #@37
    .local v6, "numEntries":I
    const/4 v2, 0x0

    #@38
    .line 294
    .local v2, "entry":I
    :goto_3
    if-lt v2, v6, :cond_2

    #@3a
    .line 299
    array-length v7, v0

    #@3b
    iput v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    #@3d
    .line 300
    const/4 v7, 0x0

    #@3e
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    goto :goto_0

    #@41
    .line 305
    .end local v0    # "directory":[B
    .end local v2    # "entry":I
    .end local v5    # "is":Ljava/io/DataInput;
    .end local v6    # "numEntries":I
    :catch_0
    move-exception v1

    #@42
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v7, "FLASH"

    #@45
    .line 304
    invoke-static {v7, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    goto :goto_0

    #@49
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    #@4a
    monitor-exit p0

    #@4b
    throw v7

    #@4c
    .line 295
    .restart local v0    # "directory":[B
    .restart local v2    # "entry":I
    .restart local v5    # "is":Ljava/io/DataInput;
    .restart local v6    # "numEntries":I
    :cond_2
    :try_start_4
    invoke-static {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@4f
    move-result-object v3

    #@50
    .line 296
    .local v3, "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-direct {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->addToFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@53
    .line 294
    add-int/lit8 v2, v2, 0x1

    #@55
    goto :goto_3

    #@56
    .line 309
    .end local v0    # "directory":[B
    .end local v2    # "entry":I
    .end local v3    # "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v5    # "is":Ljava/io/DataInput;
    .end local v6    # "numEntries":I
    :cond_3
    :try_start_5
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    #@59
    goto :goto_1

    #@5a
    .line 313
    :cond_4
    const/4 v7, 0x1

    #@5b
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@5d
    goto :goto_2
.end method

.method private removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V
    .locals 5
    .param p1, "flashRecord"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .param p2, "elementIndex"    # I

    #@0
    .prologue
    .line 869
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    #@3
    move-result v3

    #@4
    if-eqz v3, :cond_0

    #@6
    .line 873
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@9
    move-result v2

    #@a
    .line 875
    .local v2, "numEntries":I
    const/4 v3, 0x1

    #@b
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@d
    .line 876
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->setUnsaved()V

    #@10
    .line 877
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@12
    invoke-virtual {v3, p2}, Ljava/util/Vector;->removeElementAt(I)V

    #@15
    const/4 v1, 0x0

    #@16
    .line 879
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    #@18
    .line 883
    return-void

    #@19
    .line 870
    .end local v1    # "i":I
    .end local v2    # "numEntries":I
    :cond_0
    return-void

    #@1a
    .line 880
    .restart local v1    # "i":I
    .restart local v2    # "numEntries":I
    :cond_1
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@1d
    move-result-object v0

    #@1e
    .line 881
    .local v0, "entry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    #@20
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@23
    move-result-object v4

    #@24
    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 879
    add-int/lit8 v1, v1, 0x1

    #@29
    goto :goto_0
.end method

.method private static removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "array"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 481
    if-eqz p1, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    .line 485
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@6
    if-lt v0, v1, :cond_1

    #@8
    .line 492
    return v2

    #@9
    .line 482
    .end local v0    # "i":I
    :cond_0
    return v2

    #@a
    .line 486
    .restart local v0    # "i":I
    :cond_1
    aget-object v1, p1, v0

    #@c
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_2

    #@12
    .line 485
    add-int/lit8 v0, v0, 0x1

    #@14
    goto :goto_0

    #@15
    .line 487
    :cond_2
    aput-object v3, p1, v0

    #@17
    .line 488
    const/4 v1, 0x1

    #@18
    return v1
.end method


# virtual methods
.method public declared-synchronized close(Z)V
    .locals 2
    .param p1, "saveState"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 253
    if-nez p1, :cond_0

    #@3
    :goto_0
    monitor-exit p0

    #@4
    .line 261
    return-void

    #@5
    .line 255
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCache()Z

    #@8
    .line 256
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    goto :goto_0

    #@c
    .line 259
    :catch_0
    move-exception v0

    #@d
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v1, "FLASH"

    #@10
    .line 258
    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    goto :goto_0

    #@14
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method doPersist(Ljava/util/Hashtable;)I
    .locals 36
    .param p1, "mapCache"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v29, 0x2

    #@2
    .line 578
    move/from16 v0, v29

    #@4
    new-array v11, v0, [I

    #@6
    const/16 v29, 0x0

    #@8
    const/16 v32, -0x1

    #@a
    aput v32, v11, v29

    #@c
    const/16 v29, 0x1

    #@e
    const/16 v32, -0x1

    #@10
    aput v32, v11, v29

    #@12
    .local v11, "indicesToFree":[I
    const/16 v29, 0x2

    #@14
    .line 579
    move/from16 v0, v29

    #@16
    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@18
    move-object/from16 v18, v0

    #@1a
    const/16 v29, 0x0

    #@1c
    const/16 v32, 0x0

    #@1e
    aput-object v32, v18, v29

    #@20
    const/16 v29, 0x1

    #@22
    const/16 v32, 0x0

    #@24
    aput-object v32, v18, v29

    #@26
    .line 581
    .local v18, "recordsToFree":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@29
    move-result-object v29

    #@2a
    invoke-virtual/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2d
    move-result-object v29

    #@2e
    invoke-interface/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@31
    move-result-wide v26

    #@32
    .line 586
    .local v26, "startTime":J
    monitor-enter p0

    #@33
    .line 589
    :try_start_0
    move-object/from16 v0, p0

    #@35
    iget-boolean v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    #@37
    move/from16 v29, v0

    #@39
    if-nez v29, :cond_3

    #@3b
    .line 594
    :goto_0
    move-object/from16 v0, p0

    #@3d
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    #@3f
    move/from16 v29, v0

    #@41
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    #@44
    move-result v32

    #@45
    sub-int v4, v29, v32

    #@47
    .line 595
    .local v4, "bytesAvail":I
    move v12, v4

    #@48
    .local v12, "maxDataSize":I
    const v29, 0x11940

    #@4b
    .line 598
    move/from16 v0, v29

    #@4d
    if-ge v4, v0, :cond_4

    #@4f
    :cond_0
    const/16 v28, -0x1

    #@51
    .local v28, "worstIndex":I
    const/16 v19, -0x1

    #@53
    .local v19, "secondWorstIndex":I
    const-wide/high16 v30, -0x8000000000000000L

    #@55
    .local v30, "worstScore":J
    const-wide/high16 v22, -0x8000000000000000L

    #@57
    .line 604
    .local v22, "secondWorstScore":J
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    #@5a
    move-result v17

    #@5b
    .local v17, "numEntries":I
    const/4 v10, 0x0

    #@5c
    .line 605
    .local v10, "index":I
    :goto_1
    move/from16 v0, v17

    #@5e
    if-lt v10, v0, :cond_5

    #@60
    const/16 v29, -0x1

    #@62
    .line 623
    move/from16 v0, v28

    #@64
    move/from16 v1, v29

    #@66
    if-ne v0, v1, :cond_c

    #@68
    :goto_2
    const v29, 0x11940

    #@6b
    .line 629
    move/from16 v0, v29

    #@6d
    if-lt v12, v0, :cond_d

    #@6f
    :cond_1
    :goto_3
    const v29, 0x11940

    #@72
    .line 636
    move/from16 v0, v29

    #@74
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    #@77
    move-result v12

    #@78
    .line 640
    .end local v10    # "index":I
    .end local v17    # "numEntries":I
    .end local v19    # "secondWorstIndex":I
    .end local v22    # "secondWorstScore":J
    .end local v28    # "worstIndex":I
    .end local v30    # "worstScore":J
    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@79
    const/16 v29, 0x1770

    #@7b
    .line 642
    move/from16 v0, v29

    #@7d
    if-lt v12, v0, :cond_e

    #@7f
    .line 661
    monitor-enter p1

    #@80
    .line 664
    :try_start_1
    move-object/from16 v0, p0

    #@82
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@84
    move-object/from16 v29, v0

    #@86
    const/16 v32, 0x1

    #@88
    move-object/from16 v0, v29

    #@8a
    move/from16 v1, v32

    #@8c
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@8f
    .line 665
    move-object/from16 v0, p0

    #@91
    move-object/from16 v1, p1

    #@93
    invoke-direct {v0, v1, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->fillNewRecord(Ljava/util/Hashtable;I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@96
    move-result-object v13

    #@97
    .line 759
    .local v13, "newRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :try_start_2
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@9b
    move-object/from16 v29, v0

    #@9d
    const/16 v32, 0x0

    #@9f
    move-object/from16 v0, v29

    #@a1
    move/from16 v1, v32

    #@a3
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@a6
    .line 669
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    #@a7
    .line 675
    invoke-virtual {v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    #@aa
    move-result v15

    #@ab
    .local v15, "newRecordSize":I
    const/16 v29, 0x1770

    #@ad
    .line 676
    move/from16 v0, v29

    #@af
    if-ge v15, v0, :cond_10

    #@b1
    const/16 v25, 0x0

    #@b3
    .line 756
    .local v25, "status":I
    :cond_2
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->writeCatalog()Z

    #@b6
    .line 759
    return v25

    #@b7
    .line 590
    .end local v4    # "bytesAvail":I
    .end local v12    # "maxDataSize":I
    .end local v13    # "newRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v15    # "newRecordSize":I
    .end local v25    # "status":I
    :cond_3
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->scavengeCatalog()Z

    #@ba
    .line 591
    const/16 v29, 0x0

    #@bc
    move/from16 v0, v29

    #@be
    move-object/from16 v1, p0

    #@c0
    iput-boolean v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->needsScavenge:Z

    #@c2
    goto/16 :goto_0

    #@c4
    .line 640
    :catchall_0
    move-exception v29

    #@c5
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@c6
    throw v29

    #@c7
    .line 598
    .restart local v4    # "bytesAvail":I
    .restart local v12    # "maxDataSize":I
    :cond_4
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    #@ca
    move-result v29

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    #@cf
    move/from16 v32, v0

    #@d1
    move/from16 v0, v29

    #@d3
    move/from16 v1, v32

    #@d5
    if-ge v0, v1, :cond_0

    #@d7
    const v12, 0x11940

    #@da
    .line 638
    goto :goto_4

    #@db
    .line 606
    .restart local v10    # "index":I
    .restart local v17    # "numEntries":I
    .restart local v19    # "secondWorstIndex":I
    .restart local v22    # "secondWorstScore":J
    .restart local v28    # "worstIndex":I
    .restart local v30    # "worstScore":J
    :cond_5
    move-object/from16 v0, p0

    #@dd
    invoke-direct {v0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@e0
    move-result-object v6

    #@e1
    .line 607
    .local v6, "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    move-wide/from16 v0, v26

    #@e3
    invoke-virtual {v6, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    #@e6
    move-result-wide v20

    #@e7
    .local v20, "score":J
    const/16 v29, -0x1

    #@e9
    .line 610
    move/from16 v0, v19

    #@eb
    move/from16 v1, v29

    #@ed
    if-ne v0, v1, :cond_8

    #@ef
    :goto_6
    const/16 v29, -0x1

    #@f1
    .line 611
    move/from16 v0, v28

    #@f3
    move/from16 v1, v29

    #@f5
    if-ne v0, v1, :cond_a

    #@f7
    .line 612
    :cond_6
    move/from16 v19, v28

    #@f9
    .line 613
    move-wide/from16 v22, v30

    #@fb
    .line 614
    move/from16 v28, v10

    #@fd
    .line 615
    move-wide/from16 v30, v20

    #@ff
    .line 605
    :cond_7
    :goto_7
    add-int/lit8 v10, v10, 0x1

    #@101
    goto/16 :goto_1

    #@103
    .line 610
    :cond_8
    cmp-long v29, v20, v22

    #@105
    if-gtz v29, :cond_9

    #@107
    const/16 v29, 0x1

    #@109
    :goto_8
    if-nez v29, :cond_7

    #@10b
    goto :goto_6

    #@10c
    :cond_9
    const/16 v29, 0x0

    #@10e
    goto :goto_8

    #@10f
    .line 611
    :cond_a
    cmp-long v29, v20, v30

    #@111
    if-gtz v29, :cond_b

    #@113
    const/16 v29, 0x1

    #@115
    :goto_9
    if-eqz v29, :cond_6

    #@117
    .line 617
    move/from16 v19, v10

    #@119
    .line 618
    move-wide/from16 v22, v20

    #@11b
    goto :goto_7

    #@11c
    .line 611
    :cond_b
    const/16 v29, 0x0

    #@11e
    goto :goto_9

    #@11f
    .end local v6    # "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v20    # "score":J
    :cond_c
    const/16 v29, 0x0

    #@121
    .line 624
    aput v28, v11, v29

    #@123
    const/16 v29, 0x0

    #@125
    .line 625
    move-object/from16 v0, p0

    #@127
    move/from16 v1, v28

    #@129
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@12c
    move-result-object v32

    #@12d
    aput-object v32, v18, v29

    #@12f
    const/16 v29, 0x0

    #@131
    .line 626
    aget-object v29, v18, v29

    #@133
    invoke-virtual/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    #@136
    move-result v29

    #@137
    add-int v12, v12, v29

    #@139
    goto/16 :goto_2

    #@13b
    :cond_d
    const/16 v29, -0x1

    #@13d
    .line 629
    move/from16 v0, v19

    #@13f
    move/from16 v1, v29

    #@141
    if-eq v0, v1, :cond_1

    #@143
    const/16 v29, 0x1

    #@145
    .line 631
    aput v19, v11, v29

    #@147
    const/16 v29, 0x1

    #@149
    .line 632
    move-object/from16 v0, p0

    #@14b
    move/from16 v1, v19

    #@14d
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@150
    move-result-object v32

    #@151
    aput-object v32, v18, v29

    #@153
    const/16 v29, 0x1

    #@155
    .line 633
    aget-object v29, v18, v29

    #@157
    invoke-virtual/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@15a
    move-result v29

    #@15b
    add-int v12, v12, v29

    #@15d
    goto/16 :goto_3

    #@15f
    .end local v10    # "index":I
    .end local v17    # "numEntries":I
    .end local v19    # "secondWorstIndex":I
    .end local v22    # "secondWorstScore":J
    .end local v28    # "worstIndex":I
    .end local v30    # "worstScore":J
    :cond_e
    const/16 v29, 0x0

    #@161
    .line 648
    aget-object v29, v18, v29

    #@163
    if-nez v29, :cond_f

    #@165
    :goto_a
    const/16 v29, 0x1

    #@167
    .line 653
    return v29

    #@168
    .line 650
    :cond_f
    move-object/from16 v0, p0

    #@16a
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@16c
    move-object/from16 v29, v0

    #@16e
    const/16 v32, 0x0

    #@170
    aget-object v32, v18, v32

    #@172
    move-object/from16 v0, p0

    #@174
    move-object/from16 v1, v32

    #@176
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    #@179
    move-result-object v32

    #@17a
    move-object/from16 v0, v29

    #@17c
    move-object/from16 v1, v32

    #@17e
    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    #@181
    const/16 v29, 0x0

    #@183
    .line 651
    aget-object v29, v18, v29

    #@185
    const/16 v32, 0x0

    #@187
    aget v32, v11, v32

    #@189
    move-object/from16 v0, p0

    #@18b
    move-object/from16 v1, v29

    #@18d
    move/from16 v2, v32

    #@18f
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    #@192
    goto :goto_a

    #@193
    .line 668
    :catchall_1
    move-exception v29

    #@194
    .line 759
    :try_start_5
    move-object/from16 v0, p0

    #@196
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@198
    move-object/from16 v32, v0

    #@19a
    const/16 v33, 0x0

    #@19c
    invoke-virtual/range {v32 .. v33}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@19f
    .line 667
    throw v29

    #@1a0
    .line 669
    :catchall_2
    move-exception v29

    #@1a1
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    #@1a2
    throw v29

    #@1a3
    .restart local v13    # "newRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .restart local v15    # "newRecordSize":I
    :cond_10
    const/4 v8, -0x1

    #@1a4
    .line 683
    .local v8, "id":I
    monitor-enter p0

    #@1a5
    .line 684
    :try_start_6
    move-object/from16 v0, p0

    #@1a7
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxFlashSize:I

    #@1a9
    move/from16 v29, v0

    #@1ab
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getSize()I

    #@1ae
    move-result v32

    #@1af
    sub-int v4, v29, v32

    #@1b1
    const/16 v29, 0x2

    #@1b3
    .line 685
    move/from16 v0, v29

    #@1b5
    new-array v0, v0, [Z

    #@1b7
    move-object/from16 v24, v0

    #@1b9
    const/16 v29, 0x0

    #@1bb
    const/16 v32, 0x0

    #@1bd
    aput-boolean v32, v24, v29

    #@1bf
    const/16 v29, 0x1

    #@1c1
    const/16 v32, 0x0

    #@1c3
    aput-boolean v32, v24, v29

    #@1c5
    .local v24, "shouldFree":[Z
    const/4 v5, 0x0

    #@1c6
    .local v5, "displaceBytes":I
    const/4 v7, 0x0

    #@1c7
    .local v7, "i":I
    :goto_b
    const/16 v29, 0x2

    #@1c9
    .line 687
    move/from16 v0, v29

    #@1cb
    if-lt v7, v0, :cond_13

    #@1cd
    .line 700
    :cond_11
    invoke-virtual/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    #@1d0
    move-result v16

    #@1d1
    .line 702
    .local v16, "numBlocks":I
    add-int v29, v4, v5

    #@1d3
    move/from16 v0, v29

    #@1d5
    if-gt v15, v0, :cond_17

    #@1d7
    const/16 v29, 0x0

    #@1d9
    .line 705
    aget-boolean v29, v24, v29

    #@1db
    if-nez v29, :cond_18

    #@1dd
    .line 726
    :goto_c
    move-object/from16 v0, p0

    #@1df
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    #@1e1
    move/from16 v29, v0

    #@1e3
    move/from16 v0, v16

    #@1e5
    move/from16 v1, v29

    #@1e7
    if-lt v0, v1, :cond_1c

    #@1e9
    const/16 v25, 0x5

    #@1eb
    .line 735
    .restart local v25    # "status":I
    :cond_12
    :goto_d
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    #@1ec
    .line 737
    if-ltz v8, :cond_2

    #@1ee
    .line 739
    move-object/from16 v0, p1

    #@1f0
    invoke-virtual {v13, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->createDataEntry(Ljava/util/Hashtable;)[B

    #@1f3
    move-result-object v14

    #@1f4
    .line 740
    .local v14, "newRecordData":[B
    if-eqz v14, :cond_2

    #@1f6
    .line 748
    move-object/from16 v0, p0

    #@1f8
    invoke-direct {v0, v13, v14, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->persistRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;[BI)V

    #@1fb
    goto/16 :goto_5

    #@1fd
    .line 688
    .end local v14    # "newRecordData":[B
    .end local v16    # "numBlocks":I
    .end local v25    # "status":I
    :cond_13
    :try_start_7
    aget-object v29, v18, v7

    #@1ff
    if-nez v29, :cond_15

    #@201
    .line 695
    :cond_14
    :goto_e
    add-int v29, v4, v5

    #@203
    move/from16 v0, v29

    #@205
    if-le v15, v0, :cond_11

    #@207
    .line 687
    add-int/lit8 v7, v7, 0x1

    #@209
    goto :goto_b

    #@20a
    .line 688
    :cond_15
    aget-object v29, v18, v7

    #@20c
    invoke-virtual/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->isSaved()Z

    #@20f
    move-result v29

    #@210
    if-eqz v29, :cond_14

    #@212
    aget-object v29, v18, v7

    #@214
    move-object/from16 v0, v29

    #@216
    move-wide/from16 v1, v26

    #@218
    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    #@21b
    move-result-wide v32

    #@21c
    move-wide/from16 v0, v26

    #@21e
    invoke-virtual {v13, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getScore(J)J

    #@221
    move-result-wide v34

    #@222
    cmp-long v29, v32, v34

    #@224
    if-gtz v29, :cond_16

    #@226
    const/16 v29, 0x1

    #@228
    :goto_f
    if-nez v29, :cond_14

    #@22a
    const/16 v29, 0x1

    #@22c
    .line 692
    aput-boolean v29, v24, v7

    #@22e
    .line 693
    aget-object v29, v18, v7

    #@230
    invoke-virtual/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I

    #@233
    move-result v29

    #@234
    add-int v5, v5, v29

    #@236
    goto :goto_e

    #@237
    .line 688
    :cond_16
    const/16 v29, 0x0

    #@239
    goto :goto_f

    #@23a
    .restart local v16    # "numBlocks":I
    :cond_17
    const/16 v25, 0x2

    #@23c
    .line 703
    .restart local v25    # "status":I
    goto :goto_d

    #@23d
    .line 705
    .end local v25    # "status":I
    :cond_18
    if-le v15, v4, :cond_1a

    #@23f
    :cond_19
    const/16 v25, 0x4

    #@241
    .restart local v25    # "status":I
    const/16 v29, 0x0

    #@243
    .line 708
    aget-object v29, v18, v29

    #@245
    invoke-virtual/range {v29 .. v29}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    #@248
    move-result v8

    #@249
    const/16 v29, 0x0

    #@24b
    .line 709
    aget-object v29, v18, v29

    #@24d
    const/16 v32, 0x0

    #@24f
    aget v32, v11, v32

    #@251
    move-object/from16 v0, p0

    #@253
    move-object/from16 v1, v29

    #@255
    move/from16 v2, v32

    #@257
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    #@25a
    const/16 v29, 0x1

    #@25c
    .line 710
    aget-boolean v29, v24, v29

    #@25e
    if-eqz v29, :cond_12

    #@260
    const/16 v29, 0x0

    #@262
    .line 712
    aget v29, v11, v29

    #@264
    const/16 v32, 0x1

    #@266
    aget v32, v11, v32

    #@268
    move/from16 v0, v29

    #@26a
    move/from16 v1, v32

    #@26c
    if-lt v0, v1, :cond_1b

    #@26e
    .line 723
    :goto_10
    move-object/from16 v0, p0

    #@270
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@272
    move-object/from16 v29, v0

    #@274
    const/16 v32, 0x1

    #@276
    aget-object v32, v18, v32

    #@278
    move-object/from16 v0, p0

    #@27a
    move-object/from16 v1, v32

    #@27c
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    #@27f
    move-result-object v32

    #@280
    move-object/from16 v0, v29

    #@282
    move-object/from16 v1, v32

    #@284
    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    #@287
    const/16 v29, 0x1

    #@289
    .line 724
    aget-object v29, v18, v29

    #@28b
    const/16 v32, 0x1

    #@28d
    aget v32, v11, v32

    #@28f
    move-object/from16 v0, p0

    #@291
    move-object/from16 v1, v29

    #@293
    move/from16 v2, v32

    #@295
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V

    #@298
    goto/16 :goto_d

    #@29a
    .line 735
    .end local v5    # "displaceBytes":I
    .end local v7    # "i":I
    .end local v16    # "numBlocks":I
    .end local v24    # "shouldFree":[Z
    .end local v25    # "status":I
    :catchall_3
    move-exception v29

    #@29b
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    #@29c
    throw v29

    #@29d
    .line 705
    .restart local v5    # "displaceBytes":I
    .restart local v7    # "i":I
    .restart local v16    # "numBlocks":I
    .restart local v24    # "shouldFree":[Z
    :cond_1a
    :try_start_8
    move-object/from16 v0, p0

    #@29f
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->maxRecordBlocks:I

    #@2a1
    move/from16 v29, v0

    #@2a3
    move/from16 v0, v16

    #@2a5
    move/from16 v1, v29

    #@2a7
    if-ge v0, v1, :cond_19

    #@2a9
    goto/16 :goto_c

    #@2ab
    .restart local v25    # "status":I
    :cond_1b
    const/16 v29, 0x1

    #@2ad
    const/16 v32, 0x1

    #@2af
    .line 713
    aget v32, v11, v32

    #@2b1
    add-int/lit8 v32, v32, -0x1

    #@2b3
    aput v32, v11, v29

    #@2b5
    goto :goto_10

    #@2b6
    .end local v25    # "status":I
    :cond_1c
    const/16 v25, 0x3

    #@2b8
    .line 728
    .restart local v25    # "status":I
    move-object/from16 v0, p0

    #@2ba
    iget v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    #@2bc
    move/from16 v29, v0

    #@2be
    add-int/lit8 v9, v29, 0x1

    #@2c0
    move-object/from16 v0, p0

    #@2c2
    iput v9, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    #@2c4
    .end local v8    # "id":I
    .local v9, "id":I
    move v8, v9

    #@2c5
    .end local v9    # "id":I
    .restart local v8    # "id":I
    goto/16 :goto_d
.end method

.method public declared-synchronized eraseAll()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 416
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileToRecordMap:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@6
    .line 417
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@8
    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    #@b
    const/4 v0, 0x0

    #@c
    .line 418
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    #@e
    const/4 v0, 0x0

    #@f
    .line 419
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->highestRecordId:I

    #@11
    .line 420
    const/4 v0, 0x0

    #@12
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@14
    .line 422
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@16
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@18
    invoke-interface {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteAllBlocks(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    monitor-exit p0

    #@1c
    .line 423
    return-void

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method declared-synchronized getFlashRecordsSize()I
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 901
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    .local v1, "numRecords":I
    const/4 v2, 0x0

    #@8
    .local v2, "size":I
    const/4 v0, 0x0

    #@9
    .line 904
    .local v0, "index":I
    :goto_0
    if-lt v0, v1, :cond_0

    #@b
    monitor-exit p0

    #@c
    .line 907
    return v2

    #@d
    .line 905
    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@10
    move-result-object v3

    #@11
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getDataSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@14
    move-result v3

    #@15
    add-int/2addr v2, v3

    #@16
    .line 904
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .end local v0    # "index":I
    .end local v1    # "numRecords":I
    .end local v2    # "size":I
    :catchall_0
    move-exception v3

    #@1a
    monitor-exit p0

    #@1b
    throw v3
.end method

.method public getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 934
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@4
    move-result-object v0

    #@5
    .line 936
    .local v0, "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    if-nez v0, :cond_1

    #@7
    .line 950
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_0
    :goto_0
    return-object v1

    #@8
    .line 940
    .restart local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getFlashRecord()Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@b
    move-result-object v2

    #@c
    invoke-direct {p0, v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->loadFlashRecordTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@f
    move-result-object v1

    #@10
    .line 943
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-eqz v1, :cond_0

    #@12
    .line 945
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@15
    move-result-object v2

    #@16
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@19
    move-result-object v2

    #@1a
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@1d
    move-result-wide v2

    #@1e
    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setLastAccessTime(J)V

    #@21
    goto :goto_0
.end method

.method getNumBlocks()I
    .locals 1

    #@0
    .prologue
    .line 229
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public declared-synchronized getSize()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 916
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    #@3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecordsSize()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v1

    #@7
    add-int/2addr v0, v1

    #@8
    monitor-exit p0

    #@9
    return v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit p0

    #@c
    throw v0
.end method

.method public mapChanged()V
    .locals 2

    #@0
    .prologue
    .line 976
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@b
    move-result-wide v0

    #@c
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    #@e
    .line 977
    return-void
.end method

.method recordBlockName(I)Ljava/lang/String;
    .locals 2
    .param p1, "recordId"    # I

    #@0
    .prologue
    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const/16 v1, 0x5f

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;
    .locals 1
    .param p1, "flashRecord"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@0
    .prologue
    .line 243
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getRecordId()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method declared-synchronized scavengeCatalog()Z
    .locals 8

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 434
    const/4 v5, 0x1

    #@2
    .line 437
    .local v5, "wasOk":Z
    :try_start_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@4
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@6
    invoke-interface {v6, v7}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->listBlocks(Ljava/lang/String;)[Ljava/lang/String;

    #@9
    move-result-object v4

    #@a
    .line 441
    .local v4, "rsNames":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I

    #@d
    move-result v6

    #@e
    add-int/lit8 v2, v6, -0x1

    #@10
    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_2

    #@12
    .line 451
    const/4 v0, 0x0

    #@13
    .line 452
    .local v0, "catalogInFlash":Z
    if-nez v4, :cond_4

    #@15
    .line 465
    .end local v0    # "catalogInFlash":Z
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getNumBlocks()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    move-result v6

    #@19
    if-gtz v6, :cond_6

    #@1b
    :cond_1
    :goto_1
    monitor-exit p0

    #@1c
    .line 471
    return v5

    #@1d
    .line 442
    :cond_2
    :try_start_1
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@1f
    invoke-virtual {v6, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@22
    move-result-object v1

    #@23
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@25
    .line 443
    .local v1, "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordBlockName(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)Ljava/lang/String;

    #@28
    move-result-object v6

    #@29
    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    #@2c
    move-result v6

    #@2d
    if-eqz v6, :cond_3

    #@2f
    .line 441
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@31
    goto :goto_0

    #@32
    .line 444
    :cond_3
    const/4 v5, 0x0

    #@33
    .line 446
    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeFromFlashCatalog(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    goto :goto_2

    #@37
    .end local v1    # "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v2    # "i":I
    .end local v4    # "rsNames":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    #@38
    monitor-exit p0

    #@39
    throw v6

    #@3a
    .line 453
    .restart local v0    # "catalogInFlash":Z
    .restart local v2    # "i":I
    .restart local v4    # "rsNames":[Ljava/lang/String;
    :cond_4
    :try_start_2
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@3c
    invoke-static {v6, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->removeNameFromArray(Ljava/lang/String;[Ljava/lang/String;)Z

    #@3f
    move-result v0

    #@40
    .local v0, "catalogInFlash":Z
    const/4 v2, 0x0

    #@41
    .line 454
    :goto_3
    array-length v6, v4

    #@42
    if-ge v2, v6, :cond_0

    #@44
    .line 455
    aget-object v3, v4, v2

    #@46
    .line 456
    .local v3, "rsName":Ljava/lang/String;
    if-nez v3, :cond_5

    #@48
    .line 454
    :goto_4
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_3

    #@4b
    .line 457
    :cond_5
    const/4 v5, 0x0

    #@4c
    .line 459
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@4e
    invoke-interface {v6, v3}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_4

    #@52
    .line 465
    .end local v0    # "catalogInFlash":Z
    .end local v3    # "rsName":Ljava/lang/String;
    :cond_6
    if-nez v0, :cond_1

    #@54
    .line 466
    const/4 v5, 0x0

    #@55
    goto :goto_1
.end method

.method public setTileEditionAndTextSize(II)Z
    .locals 4
    .param p1, "newTileEdition"    # I
    .param p2, "newTextSize"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    const/4 v3, -0x1

    #@3
    .line 1063
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    #@5
    if-ne p1, v2, :cond_1

    #@7
    :cond_0
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    #@9
    if-ne p2, v2, :cond_3

    #@b
    .line 1065
    .local v0, "changed":Z
    :goto_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    #@d
    .line 1066
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    #@f
    .line 1067
    if-nez v0, :cond_4

    #@11
    .line 1073
    :goto_1
    return v0

    #@12
    .line 1063
    .end local v0    # "changed":Z
    :cond_1
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    #@14
    if-eq v2, v3, :cond_0

    #@16
    :cond_2
    move v0, v1

    #@17
    goto :goto_0

    #@18
    :cond_3
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    #@1a
    if-ne v2, v3, :cond_2

    #@1c
    goto :goto_0

    #@1d
    .line 1068
    .restart local v0    # "changed":Z
    :cond_4
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->eraseAll()V

    #@20
    .line 1071
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@22
    goto :goto_1
.end method

.method public writeCache()Z
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v12, 0x841

    #@2
    const/4 v6, 0x1

    #@3
    const/4 v5, 0x0

    #@4
    .line 993
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@7
    move-result-object v7

    #@8
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@b
    move-result-object v7

    #@c
    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@f
    move-result-wide v2

    #@10
    .line 994
    .local v2, "startTime":J
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@12
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getMapCache()Ljava/util/Hashtable;

    #@15
    move-result-object v1

    #@16
    .line 996
    .local v1, "mapCache":Ljava/util/Hashtable;
    const/4 v0, 0x0

    #@17
    .line 997
    .local v0, "cachingStillActive":Z
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    #@19
    cmp-long v7, v8, v2

    #@1b
    if-ltz v7, :cond_1

    #@1d
    move v7, v6

    #@1e
    :goto_0
    if-nez v7, :cond_4

    #@20
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->lastChangedTime:J

    #@22
    const-wide/16 v10, 0x5dc

    #@24
    add-long/2addr v8, v10

    #@25
    cmp-long v7, v8, v2

    #@27
    if-ltz v7, :cond_2

    #@29
    move v7, v6

    #@2a
    :goto_1
    if-nez v7, :cond_4

    #@2c
    .line 1000
    :try_start_0
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->doPersist(Ljava/util/Hashtable;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    move-result v4

    #@30
    .local v4, "status":I
    const/4 v7, 0x3

    #@31
    .line 1002
    if-ne v4, v7, :cond_3

    #@33
    :cond_0
    move v0, v6

    #@34
    .line 1014
    .local v0, "cachingStillActive":Z
    :goto_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@37
    move-result-object v5

    #@38
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@3b
    move-result-object v5

    #@3c
    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@3f
    move-result-wide v6

    #@40
    add-long/2addr v6, v12

    #@41
    iput-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    #@43
    .end local v0    # "cachingStillActive":Z
    .end local v4    # "status":I
    :goto_3
    return v0

    #@44
    .local v0, "cachingStillActive":Z
    :cond_1
    move v7, v5

    #@45
    .line 997
    goto :goto_0

    #@46
    :cond_2
    move v7, v5

    #@47
    goto :goto_1

    #@48
    .restart local v4    # "status":I
    :cond_3
    const/4 v7, 0x4

    #@49
    .line 1002
    if-eq v4, v7, :cond_0

    #@4b
    move v0, v5

    #@4c
    goto :goto_2

    #@4d
    .line 1008
    .end local v4    # "status":I
    :catchall_0
    move-exception v5

    #@4e
    .line 1014
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@55
    move-result-object v6

    #@56
    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@59
    move-result-wide v6

    #@5a
    add-long/2addr v6, v12

    #@5b
    iput-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->nextPersistTime:J

    #@5d
    .line 1006
    throw v5

    #@5e
    .line 1011
    :cond_4
    const/4 v0, 0x1

    #@5f
    goto :goto_3
.end method

.method declared-synchronized writeCatalog()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    monitor-enter p0

    #@2
    .line 336
    const/4 v5, 0x1

    #@3
    .line 338
    .local v5, "isOk":Z
    :try_start_0
    iget-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z

    #@5
    if-eqz v8, :cond_0

    #@7
    .line 343
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->flashRecords:Ljava/util/Vector;

    #@9
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    #@c
    move-result v6

    #@d
    .line 345
    .local v6, "numEntries":I
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@f
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@12
    .line 346
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@14
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@17
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/16 v8, 0xa

    #@19
    .line 348
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@1c
    .line 349
    const/4 v8, 0x0

    #@1d
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    #@20
    .line 350
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->tileEdition:I

    #@22
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@25
    .line 351
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->textSize:I

    #@27
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@2a
    .line 352
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@2d
    const/4 v4, 0x0

    #@2e
    .line 353
    .local v4, "entry":I
    :goto_0
    if-lt v4, v6, :cond_1

    #@30
    .line 357
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    #@33
    .line 358
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@36
    move-result-object v1

    #@37
    .local v1, "directory":[B
    const/4 v2, 0x0

    #@38
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    #@39
    .line 365
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->store:Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@3b
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->recordStoreBaseName:Ljava/lang/String;

    #@3d
    invoke-interface {v8, v1, v9}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I
    :try_end_1
    .catch Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@40
    .line 371
    :goto_1
    :try_start_2
    array-length v8, v1

    #@41
    iput v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogRecordBytes:I

    #@43
    .line 372
    const/4 v8, 0x0

    #@44
    iput-boolean v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->catalogUpdatedSinceLastWrite:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@46
    monitor-exit p0

    #@47
    .line 374
    return v5

    #@48
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "directory":[B
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "entry":I
    .end local v6    # "numEntries":I
    :cond_0
    monitor-exit p0

    #@49
    .line 339
    return v9

    #@4a
    .line 354
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "entry":I
    .restart local v6    # "numEntries":I
    :cond_1
    :try_start_3
    invoke-direct {p0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->getFlashRecord(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@4d
    move-result-object v7

    #@4e
    .line 355
    .local v7, "record":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    invoke-virtual {v7, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->writeToCatalog(Ljava/io/DataOutput;)V

    #@51
    .line 353
    add-int/lit8 v4, v4, 0x1

    #@53
    goto :goto_0

    #@54
    .line 369
    .end local v7    # "record":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "directory":[B
    .local v2, "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    #@55
    .line 367
    .local v3, "e":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    const/4 v8, 0x1

    #@56
    invoke-direct {p0, v3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;->handlePersistentStoreWriteException(Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@59
    .line 368
    const/4 v5, 0x0

    #@5a
    goto :goto_1

    #@5b
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "directory":[B
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "e":Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;
    .end local v4    # "entry":I
    .end local v6    # "numEntries":I
    :catchall_0
    move-exception v8

    #@5c
    monitor-exit p0

    #@5d
    throw v8
.end method
