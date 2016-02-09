.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;
.super Ljava/lang/Object;
.source "MapService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
    }
.end annotation


# instance fields
.field private final autoConfigCache:Z

.field private currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

.field volatile exitWorkThread:Z

.field final flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

.field private final indefiniteThreadLockObject:Ljava/lang/Object;

.field private lastMapMoveTime:J

.field private final layerImageTiles:Ljava/util/Vector;

.field private final layerServices:Ljava/util/Vector;

.field final mapCache:Ljava/util/Hashtable;

.field private volatile mapCacheLocked:Z

.field private maxCacheDataSize:I

.field private observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

.field private outOfMemoryTime:J

.field private final repaintListeners:Ljava/util/Vector;

.field private requestType:I

.field private requestsOutstanding:I

.field private targetCacheDataSize:I

.field private final tempScaledImages:Ljava/util/Hashtable;

.field private final timedThreadLockObject:Ljava/lang/Object;


# direct methods
.method constructor <init>(IIIILjava/lang/String;)V
    .locals 5
    .param p1, "maxCacheDataSize"    # I
    .param p2, "targetCacheDataSize"    # I
    .param p3, "maxFlashSize"    # I
    .param p4, "maxRecordStores"    # I
    .param p5, "tileRecordStoreName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, -0x1

    #@2
    const/4 v2, 0x0

    #@3
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 74
    new-instance v0, Ljava/util/Vector;

    #@8
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@d
    .line 84
    new-instance v0, Ljava/util/Vector;

    #@f
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@12
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    #@14
    const/4 v0, 0x0

    #@15
    .line 112
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@17
    .line 115
    iput v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    #@19
    .line 151
    new-instance v0, Ljava/lang/Object;

    #@1b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@1e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@20
    .line 156
    new-instance v0, Ljava/lang/Object;

    #@22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@25
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    #@27
    .line 162
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@29
    .line 165
    new-instance v0, Ljava/util/Vector;

    #@2b
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@2e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;

    #@30
    const-wide/high16 v0, -0x8000000000000000L

    #@32
    .line 182
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    #@34
    const/16 v0, 0x1a

    #@36
    .line 243
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I

    #@38
    .line 244
    if-eq p1, v3, :cond_0

    #@3a
    .line 249
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    #@3c
    .line 250
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@3e
    .line 252
    if-eq p2, v3, :cond_1

    #@40
    .line 255
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    #@42
    .line 259
    :goto_0
    new-instance v0, Ljava/util/Hashtable;

    #@44
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@47
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    #@49
    .line 260
    new-instance v0, Ljava/util/Hashtable;

    #@4b
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@4e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@50
    .line 261
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@52
    .line 265
    if-gtz p3, :cond_2

    #@54
    .line 269
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;

    #@56
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/NullMapTileStorage;-><init>()V

    #@59
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@5b
    .line 272
    :goto_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@5e
    move-result-wide v0

    #@5f
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    #@61
    .line 274
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;

    #@63
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$1;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V

    #@66
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/StartupHelper;->addPostStartupBgCallback(Ljava/lang/Runnable;)V

    #@69
    .line 280
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    #@6c
    .line 281
    return-void

    #@6d
    .line 245
    :cond_0
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    #@6f
    const/16 v0, 0x61a8

    #@71
    .line 246
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@73
    .line 247
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    #@76
    goto :goto_0

    #@77
    .line 253
    :cond_1
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    #@7a
    goto :goto_0

    #@7b
    .line 266
    :cond_2
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;

    #@7d
    invoke-direct {v0, p0, p5, p3, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapFlashService;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;Ljava/lang/String;II)V

    #@80
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@82
    goto :goto_1
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)V
    .locals 0
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@0
    .prologue
    .line 35
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V

    #@3
    return-void
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@0
    .prologue
    .line 35
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestType:I

    #@2
    return v0
.end method

.method static synthetic access$208(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@0
    .prologue
    .line 35
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    #@2
    add-int/lit8 v1, v0, 0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    #@6
    return v0
.end method

.method static synthetic access$210(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)I
    .locals 2
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@0
    .prologue
    .line 35
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    #@2
    add-int/lit8 v1, v0, -0x1

    #@4
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestsOutstanding:I

    #@6
    return v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method static synthetic access$400(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->repaintListeners:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method private addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 2
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@0
    .prologue
    .line 805
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@3
    move-result-object v0

    #@4
    .line 806
    .local v0, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v1, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 807
    return-void
.end method

.method private clearScaledImages()V
    .locals 4

    #@0
    .prologue
    .line 625
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@2
    monitor-enter v3

    #@3
    .line 626
    const/4 v2, 0x1

    #@4
    :try_start_0
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@6
    .line 627
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    #@8
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    #@b
    .line 629
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@d
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@10
    move-result-object v0

    #@11
    .line 630
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_0

    #@17
    .line 634
    const/4 v2, 0x0

    #@18
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@1a
    .line 635
    monitor-exit v3

    #@1b
    .line 636
    return-void

    #@1c
    .line 631
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@22
    .line 632
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->removeScaledImage()V

    #@25
    goto :goto_0

    #@26
    .line 635
    .end local v0    # "enumeration":Ljava/util/Enumeration;
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :catchall_0
    move-exception v2

    #@27
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    throw v2
.end method

.method private createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 13
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    const/4 v7, 0x0

    #@2
    .line 574
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@5
    move-result-wide v0

    #@6
    .line 575
    .local v0, "currentTime":J
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    #@8
    const-wide/16 v10, 0x2710

    #@a
    add-long/2addr v8, v10

    #@b
    cmp-long v8, v0, v8

    #@d
    if-ltz v8, :cond_0

    #@f
    const/4 v7, 0x1

    #@10
    :cond_0
    if-nez v7, :cond_1

    #@12
    .line 576
    return-object v12

    #@13
    :cond_1
    const/4 v6, 0x0

    #@14
    .line 580
    .local v6, "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoomParent()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@17
    move-result-object v3

    #@18
    .line 581
    .local v3, "parent":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    if-nez v3, :cond_3

    #@1a
    .line 621
    .end local v3    # "parent":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v6    # "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_2
    :goto_0
    return-object v6

    #@1b
    .line 582
    .restart local v3    # "parent":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .restart local v6    # "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_3
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1e
    move-result-object v7

    #@1f
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@22
    move-result-object v8

    #@23
    invoke-virtual {v7, v8}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomRatio(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@26
    move-result v5

    #@27
    .local v5, "ratio":I
    const/4 v7, 0x0

    #@28
    .line 583
    const/4 v8, 0x0

    #@29
    const/4 v9, 0x0

    #@2a
    invoke-virtual {p0, v3, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@2d
    move-result-object v4

    #@2e
    .local v4, "parentMapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    const/4 v7, 0x2

    #@2f
    .line 584
    if-ne v5, v7, :cond_2

    #@31
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    #@34
    move-result v7

    #@35
    if-eqz v7, :cond_2

    #@37
    .line 587
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {p0, p1, v3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    #@3e
    move-result-object v6

    #@3f
    .local v6, "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_0

    #@40
    .line 619
    .end local v3    # "parent":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v4    # "parentMapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v5    # "ratio":I
    .local v6, "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :catch_0
    move-exception v2

    #@41
    .line 616
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->clearScaledImages()V

    #@44
    .line 617
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->outOfMemoryTime:J

    #@46
    const-string/jumbo v7, "Map Service image scaling"

    #@49
    .line 618
    invoke-static {v7, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@4c
    goto :goto_0
.end method

.method private createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 9
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "parentTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p3, "parentImage"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@0
    .prologue
    const/16 v5, 0x100

    #@2
    const/4 v0, 0x0

    #@3
    const/16 v3, 0x80

    #@5
    const/16 v7, 0x80

    #@7
    .line 742
    .local v7, "halfTile":I
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@a
    move-result v4

    #@b
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@e
    move-result v6

    #@f
    mul-int/lit8 v6, v6, 0x2

    #@11
    if-eq v4, v6, :cond_0

    #@13
    move v1, v3

    #@14
    .line 743
    .local v1, "xOffset":I
    :goto_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@17
    move-result v4

    #@18
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@1b
    move-result v6

    #@1c
    mul-int/lit8 v6, v6, 0x2

    #@1e
    if-eq v4, v6, :cond_1

    #@20
    move v2, v3

    #@21
    .local v2, "yOffset":I
    :goto_1
    move-object v0, p3

    #@22
    move v4, v3

    #@23
    move v6, v5

    #@24
    .line 744
    invoke-interface/range {v0 .. v6}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->createScaledImage(IIIIII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@27
    move-result-object v8

    #@28
    .line 746
    .local v8, "scaledImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    return-object v8

    #@29
    .end local v1    # "xOffset":I
    .end local v2    # "yOffset":I
    .end local v8    # "scaledImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_0
    move v1, v0

    #@2a
    .line 742
    goto :goto_0

    #@2b
    .restart local v1    # "xOffset":I
    :cond_1
    move v2, v0

    #@2c
    .line 743
    goto :goto_1
.end method

.method private doCompact(Z)V
    .locals 14
    .param p1, "emergency"    # Z

    #@0
    .prologue
    .line 774
    if-nez p1, :cond_1

    #@2
    const-wide/16 v8, 0xfa0

    #@4
    .line 775
    .local v8, "maxAge":J
    :goto_0
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@6
    monitor-enter v11

    #@7
    .line 776
    const/4 v10, 0x1

    #@8
    :try_start_0
    invoke-virtual {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@b
    .line 778
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@e
    move-result-object v10

    #@f
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@12
    move-result-object v10

    #@13
    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@16
    move-result-wide v0

    #@17
    .line 779
    .local v0, "currentTime":J
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v10}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@1c
    move-result-object v5

    #@1d
    .local v5, "keys":Ljava/util/Enumeration;
    :cond_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    move-result v10

    #@21
    if-nez v10, :cond_2

    #@23
    .line 798
    const/4 v10, 0x0

    #@24
    :try_start_2
    invoke-virtual {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@27
    .line 797
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@28
    .line 798
    return-void

    #@29
    .end local v0    # "currentTime":J
    .end local v5    # "keys":Ljava/util/Enumeration;
    .end local v8    # "maxAge":J
    :cond_1
    const-wide/16 v8, 0x7d0

    #@2b
    .line 774
    goto :goto_0

    #@2c
    .line 780
    .restart local v0    # "currentTime":J
    .restart local v5    # "keys":Ljava/util/Enumeration;
    .restart local v8    # "maxAge":J
    :cond_2
    :try_start_3
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2f
    move-result-object v7

    #@30
    check-cast v7, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@32
    .line 781
    .local v7, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@34
    invoke-virtual {v10, v7}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v6

    #@38
    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@3a
    .line 782
    .local v6, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    #@3d
    move-result-wide v2

    #@3e
    .line 784
    .local v2, "date":J
    add-long v12, v2, v8

    #@40
    cmp-long v10, v12, v0

    #@42
    if-ltz v10, :cond_3

    #@44
    const/4 v10, 0x1

    #@45
    :goto_1
    if-nez v10, :cond_0

    #@47
    .line 785
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->compact()V

    #@4a
    .line 788
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@4c
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    #@4f
    move-result v10

    #@50
    add-int/lit8 v4, v10, -0x1

    #@52
    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_0

    #@54
    .line 789
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@56
    invoke-virtual {v10, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@59
    move-result-object v10

    #@5a
    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@5c
    const/16 v12, 0x8

    #@5e
    invoke-static {v12, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@61
    move-result-object v12

    #@62
    invoke-virtual {v10, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->doCompact(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@65
    .line 788
    add-int/lit8 v4, v4, -0x1

    #@67
    goto :goto_2

    #@68
    .line 784
    .end local v4    # "i":I
    :cond_3
    const/4 v10, 0x0

    #@69
    goto :goto_1

    #@6a
    .line 796
    .end local v0    # "currentTime":J
    .end local v2    # "date":J
    .end local v5    # "keys":Ljava/util/Enumeration;
    .end local v6    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v7    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_0
    move-exception v10

    #@6b
    .line 798
    const/4 v12, 0x0

    #@6c
    :try_start_4
    invoke-virtual {p0, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@6f
    .line 795
    throw v10

    #@70
    .line 797
    :catchall_1
    move-exception v10

    #@71
    monitor-exit v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@72
    throw v10
.end method

.method private getOrCreateScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 2
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 557
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@8
    .line 558
    .local v0, "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-eqz v0, :cond_1

    #@a
    .line 565
    :cond_0
    :goto_0
    return-object v0

    #@b
    .line 559
    :cond_1
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->createScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@e
    move-result-object v0

    #@f
    .line 560
    if-eqz v0, :cond_0

    #@11
    .line 561
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    #@13
    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    goto :goto_0
.end method

.method private static getRelativeTime()J
    .locals 2

    #@0
    .prologue
    .line 1314
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
    return-wide v0
.end method

.method private getScaledImageFromCache(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 546
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->tempScaledImages:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@8
    return-object v0
.end method

.method static getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J
    .locals 3
    .param p0, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p1, "currentTime"    # J
    .param p3, "lastAccessTime"    # J

    #@0
    .prologue
    .line 976
    sub-long v0, p1, p3

    #@2
    return-wide v0
.end method

.method private getTempImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;I)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "scaleMode"    # I

    #@0
    .prologue
    .line 523
    packed-switch p2, :pswitch_data_0

    #@3
    .line 532
    :pswitch_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getOrCreateScaledImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@6
    move-result-object v0

    #@7
    .line 536
    :goto_0
    return-object v0

    #@8
    :pswitch_1
    const/4 v0, 0x0

    #@9
    .line 525
    .local v0, "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_0

    #@a
    .line 528
    .end local v0    # "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :pswitch_2
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScaledImageFromCache(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@d
    move-result-object v0

    #@e
    .local v0, "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_0

    #@f
    .line 523
    nop

    #@10
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private partition([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;III)I
    .locals 10
    .param p1, "scoreList"    # [J
    .param p2, "list"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p3, "left"    # I
    .param p4, "right"    # I
    .param p5, "pivotIndex"    # I

    #@0
    .prologue
    .line 1034
    aget-wide v2, p1, p5

    #@2
    .line 1035
    .local v2, "pivotValue":J
    invoke-direct {p0, p1, p2, p5, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    #@5
    .line 1036
    move v1, p3

    #@6
    .line 1037
    .local v1, "store":I
    move v0, p3

    #@7
    .local v0, "i":I
    move v4, v1

    #@8
    .end local v1    # "store":I
    .local v4, "store":I
    :goto_0
    if-lt v0, p4, :cond_0

    #@a
    .line 1043
    aget-wide v6, p1, p4

    #@c
    aget-wide v8, p1, v4

    #@e
    cmp-long v5, v6, v8

    #@10
    if-gtz v5, :cond_3

    #@12
    const/4 v5, 0x1

    #@13
    :goto_1
    if-nez v5, :cond_4

    #@15
    .line 1044
    invoke-direct {p0, p1, p2, p4, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    #@18
    .line 1045
    return v4

    #@19
    .line 1038
    :cond_0
    aget-wide v6, p1, v0

    #@1b
    cmp-long v5, v6, v2

    #@1d
    if-gez v5, :cond_1

    #@1f
    const/4 v5, 0x1

    #@20
    :goto_2
    if-nez v5, :cond_2

    #@22
    .line 1039
    add-int/lit8 v1, v4, 0x1

    #@24
    .end local v4    # "store":I
    .restart local v1    # "store":I
    invoke-direct {p0, p1, p2, v0, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    #@27
    .line 1037
    :goto_3
    add-int/lit8 v0, v0, 0x1

    #@29
    move v4, v1

    #@2a
    .end local v1    # "store":I
    .restart local v4    # "store":I
    goto :goto_0

    #@2b
    .line 1038
    :cond_1
    const/4 v5, 0x0

    #@2c
    goto :goto_2

    #@2d
    :cond_2
    move v1, v4

    #@2e
    .end local v4    # "store":I
    .restart local v1    # "store":I
    goto :goto_3

    #@2f
    .line 1043
    .end local v1    # "store":I
    .restart local v4    # "store":I
    :cond_3
    const/4 v5, 0x0

    #@30
    goto :goto_1

    #@31
    .line 1047
    :cond_4
    return p4
.end method

.method private qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V
    .locals 7
    .param p1, "scoreList"    # [J
    .param p2, "list"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p3, "left"    # I
    .param p4, "right"    # I

    #@0
    .prologue
    .line 1057
    if-gt p4, p3, :cond_0

    #@2
    .line 1063
    :goto_0
    return-void

    #@3
    :cond_0
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v2, p2

    #@6
    move v3, p3

    #@7
    move v4, p4

    #@8
    move v5, p3

    #@9
    .line 1059
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->partition([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;III)I

    #@c
    move-result v6

    #@d
    .line 1060
    .local v6, "newPivot":I
    add-int/lit8 v0, v6, -0x1

    #@f
    invoke-direct {p0, p1, p2, p3, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    #@12
    .line 1061
    add-int/lit8 v0, v6, 0x1

    #@14
    invoke-direct {p0, p1, p2, v0, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    #@17
    goto :goto_0
.end method

.method private queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V
    .locals 2
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .param p2, "priority"    # I

    #@0
    .prologue
    .line 751
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 756
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@6
    invoke-virtual {v0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    #@9
    .line 757
    const/4 v0, 0x1

    #@a
    invoke-virtual {p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setRequested(Z)V

    #@d
    .line 758
    return-void

    #@e
    .line 754
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@10
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B

    #@17
    move-result v1

    #@18
    invoke-direct {v0, p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;B)V

    #@1b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@1d
    goto :goto_0
.end method

.method private setAutoTargetCacheSize()V
    .locals 1

    #@0
    .prologue
    .line 302
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@2
    mul-int/lit8 v0, v0, 0x4

    #@4
    div-int/lit8 v0, v0, 0x5

    #@6
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    #@8
    .line 303
    return-void
.end method

.method private sort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2
    .param p1, "scoreList"    # [J
    .param p2, "list"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1066
    array-length v1, p2

    #@2
    add-int/lit8 v1, v1, -0x1

    #@4
    invoke-direct {p0, p1, p2, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->qsort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V

    #@7
    .line 1067
    return-void
.end method

.method private startWorkThread()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1336
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1344
    :goto_0
    return-void

    #@6
    .line 1337
    :cond_0
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@8
    .line 1338
    new-instance v0, Ljava/lang/Thread;

    #@a
    const-string/jumbo v1, "MapService"

    #@d
    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    #@10
    .local v0, "bgThread":Ljava/lang/Thread;
    const/4 v1, 0x1

    #@11
    .line 1340
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    #@14
    .line 1342
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    #@17
    goto :goto_0
.end method

.method private stopWorkThread()V
    .locals 2

    #@0
    .prologue
    .line 1321
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1330
    :goto_0
    return-void

    #@5
    .line 1322
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@8
    .line 1323
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    #@a
    monitor-enter v1

    #@b
    .line 1324
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    #@d
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@10
    .line 1325
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@11
    .line 1326
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@13
    monitor-enter v1

    #@14
    .line 1327
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@16
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@19
    .line 1328
    monitor-exit v1

    #@1a
    goto :goto_0

    #@1b
    :catchall_0
    move-exception v0

    #@1c
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    throw v0

    #@1e
    .line 1325
    :catchall_1
    move-exception v0

    #@1f
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@20
    throw v0
.end method

.method private swap([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;II)V
    .locals 6
    .param p1, "scoreList"    # [J
    .param p2, "list"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p3, "indexA"    # I
    .param p4, "indexB"    # I

    #@0
    .prologue
    .line 1013
    aget-object v2, p2, p4

    #@2
    .line 1014
    .local v2, "tempTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    aget-object v3, p2, p3

    #@4
    aput-object v3, p2, p4

    #@6
    .line 1015
    aput-object v2, p2, p3

    #@8
    .line 1017
    aget-wide v0, p1, p4

    #@a
    .line 1018
    .local v0, "tempScore":J
    aget-wide v4, p1, p3

    #@c
    aput-wide v4, p1, p4

    #@e
    .line 1019
    aput-wide v0, p1, p3

    #@10
    .line 1020
    return-void
.end method

.method private trimCache(I)V
    .locals 7
    .param p1, "cacheSize"    # I

    #@0
    .prologue
    .line 852
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@2
    monitor-enter v5

    #@3
    .line 854
    const/4 v4, 0x1

    #@4
    :try_start_0
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@6
    .line 857
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@9
    move-result-object v3

    #@a
    .local v3, "sortedList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    #@b
    .line 859
    .local v0, "i":I
    :goto_0
    array-length v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    if-lt v0, v4, :cond_1

    #@e
    .line 882
    :cond_0
    const/4 v4, 0x0

    #@f
    :try_start_1
    iput-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@11
    .line 881
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@12
    .line 882
    return-void

    #@13
    .line 859
    :cond_1
    :try_start_2
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->targetCacheDataSize:I

    #@15
    if-le p1, v4, :cond_0

    #@17
    .line 860
    aget-object v2, v3, v0

    #@19
    .line 862
    .local v2, "minKey":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@1b
    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@21
    .line 865
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_3

    #@27
    .line 866
    :cond_2
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@29
    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2c
    .line 868
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    #@2f
    move-result v4

    #@30
    sub-int/2addr p1, v4

    #@31
    .line 859
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 865
    :cond_3
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@37
    move-result v4

    #@38
    if-eqz v4, :cond_2

    #@3a
    goto :goto_1

    #@3b
    .line 880
    .end local v0    # "i":I
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v2    # "minKey":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v3    # "sortedList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_0
    move-exception v4

    #@3c
    .line 882
    const/4 v6, 0x0

    #@3d
    :try_start_3
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@3f
    .line 879
    throw v4

    #@40
    .line 881
    :catchall_1
    move-exception v4

    #@41
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@42
    throw v4
.end method


# virtual methods
.method checkTrimCache()V
    .locals 10

    #@0
    .prologue
    .line 814
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getCacheSize()I

    #@3
    move-result v0

    #@4
    .line 815
    .local v0, "cacheSize":I
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@6
    if-gt v0, v5, :cond_0

    #@8
    .line 844
    :goto_0
    return-void

    #@9
    .line 816
    :cond_0
    iget-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    #@b
    if-nez v5, :cond_2

    #@d
    .line 842
    :cond_1
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->trimCache(I)V

    #@10
    goto :goto_0

    #@11
    .line 818
    :cond_2
    invoke-static {}, Ljava/lang/System;->gc()V

    #@14
    .line 821
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Ljava/lang/Runtime;->freeMemory()J

    #@1b
    move-result-wide v6

    #@1c
    int-to-long v8, v0

    #@1d
    add-long v2, v6, v8

    #@1f
    .local v2, "memAvail":J
    const-wide/32 v6, 0x9c40

    #@22
    .line 823
    sub-long v6, v2, v6

    #@24
    long-to-int v5, v6

    #@25
    div-int/lit8 v1, v5, 0x2

    #@27
    .line 828
    .local v1, "size":I
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    #@2a
    move-result-object v5

    #@2b
    invoke-virtual {v5}, Ljava/lang/Runtime;->totalMemory()J

    #@2e
    move-result-wide v6

    #@2f
    long-to-int v4, v6

    #@30
    .line 831
    .local v4, "totalMemory":I
    div-int/lit8 v5, v4, 0x3

    #@32
    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    #@35
    move-result v1

    #@36
    const/16 v5, 0x61a8

    #@38
    .line 833
    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v5

    #@3c
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@3e
    .line 835
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    #@41
    .line 838
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@43
    if-ge v0, v5, :cond_1

    #@45
    .line 839
    return-void
.end method

.method close(Z)V
    .locals 3
    .param p1, "saveState"    # Z

    #@0
    .prologue
    .line 325
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    #@3
    .line 326
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->stopWorkThread()V

    #@6
    .line 327
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@8
    invoke-interface {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->close(Z)V

    #@b
    .line 330
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@d
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@10
    move-result v2

    #@11
    add-int/lit8 v0, v2, -0x1

    #@13
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@15
    .line 335
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@17
    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    #@1a
    .line 336
    return-void

    #@1b
    .line 331
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@1d
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@23
    .line 332
    .local v1, "layerService":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->close()V

    #@26
    .line 333
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    #@29
    .line 330
    add-int/lit8 v0, v0, -0x1

    #@2b
    goto :goto_0
.end method

.method getCacheSize()I
    .locals 5

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 888
    .local v0, "cacheSize":I
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@3
    monitor-enter v4

    #@4
    .line 889
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@6
    invoke-virtual {v3}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@9
    move-result-object v1

    #@a
    .local v1, "entries":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@d
    move-result v3

    #@e
    if-nez v3, :cond_0

    #@10
    .line 893
    monitor-exit v4

    #@11
    .line 894
    return v0

    #@12
    .line 890
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@18
    .line 891
    .local v2, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getDataSize()I

    #@1b
    move-result v3

    #@1c
    add-int/2addr v0, v3

    #@1d
    goto :goto_0

    #@1e
    .line 893
    .end local v1    # "entries":Ljava/util/Enumeration;
    .end local v2    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :catchall_0
    move-exception v3

    #@1f
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    throw v3
.end method

.method public getLayerTiles(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Ljava/util/Vector;
    .locals 6
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "fetch"    # Z

    #@0
    .prologue
    .line 1109
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    #@2
    invoke-virtual {v4}, Ljava/util/Vector;->removeAllElements()V

    #@5
    .line 1110
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@7
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@a
    move-result v4

    #@b
    add-int/lit8 v0, v4, -0x1

    #@d
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@f
    .line 1123
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    #@11
    return-object v4

    #@12
    .line 1111
    :cond_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@14
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@17
    move-result-object v1

    #@18
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@1a
    .line 1112
    .local v1, "layerService":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->needFetchLayerTiles()Z

    #@1d
    move-result v4

    #@1e
    if-nez v4, :cond_2

    #@20
    .line 1110
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_0

    #@23
    .line 1113
    :cond_2
    const/16 v4, 0x8

    #@25
    invoke-static {v4, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@28
    move-result-object v3

    #@29
    .line 1114
    .local v3, "location":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v1, v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@2c
    move-result-object v2

    #@2d
    .line 1118
    .local v2, "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-eqz v2, :cond_1

    #@2f
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->hasImage()Z

    #@32
    move-result v4

    #@33
    if-eqz v4, :cond_1

    #@35
    .line 1119
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerImageTiles:Ljava/util/Vector;

    #@37
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3e
    goto :goto_1
.end method

.method getMapCache()Ljava/util/Hashtable;
    .locals 1

    #@0
    .prologue
    .line 293
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method getRenderedImageCount()I
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 956
    .local v1, "renderedImageCount":I
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    #@6
    move-result-object v0

    #@7
    .local v0, "entries":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@a
    move-result v2

    #@b
    if-nez v2, :cond_1

    #@d
    .line 961
    return v1

    #@e
    .line 957
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@11
    move-result-object v2

    #@12
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@14
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    #@17
    move-result v2

    #@18
    if-eqz v2, :cond_0

    #@1a
    .line 958
    add-int/lit8 v1, v1, 0x1

    #@1c
    goto :goto_0
.end method

.method getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 10

    #@0
    .prologue
    .line 991
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@3
    move-result-object v6

    #@4
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@7
    move-result-object v6

    #@8
    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@b
    move-result-wide v4

    #@c
    .line 992
    .local v4, "startTime":J
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    #@11
    move-result v6

    #@12
    new-array v2, v6, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@14
    .line 993
    .local v2, "list":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@16
    invoke-virtual {v6}, Ljava/util/Hashtable;->size()I

    #@19
    move-result v6

    #@1a
    new-array v3, v6, [J

    #@1c
    .local v3, "scoreList":[J
    const/4 v1, 0x0

    #@1d
    .line 996
    .local v1, "index":I
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@1f
    invoke-virtual {v6}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@22
    move-result-object v0

    #@23
    .line 997
    .local v0, "enumeration":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@26
    move-result v6

    #@27
    if-nez v6, :cond_0

    #@29
    .line 1004
    invoke-direct {p0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->sort([J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@2c
    .line 1006
    return-object v2

    #@2d
    .line 998
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@30
    move-result-object v6

    #@31
    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@33
    aput-object v6, v2, v1

    #@35
    .line 999
    aget-object v6, v2, v1

    #@37
    aget-object v7, v2, v1

    #@39
    invoke-virtual {p0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTileDate(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)J

    #@3c
    move-result-wide v8

    #@3d
    invoke-static {v6, v4, v5, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J

    #@40
    move-result-wide v6

    #@41
    aput-wide v6, v3, v1

    #@43
    .line 1001
    add-int/lit8 v1, v1, 0x1

    #@45
    goto :goto_0
.end method

.method getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 9
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "priority"    # I
    .param p3, "loadTile"    # Z
    .param p4, "scaleMode"    # I
    .param p5, "accessTime"    # J

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 419
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@4
    invoke-virtual {v4, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@a
    .local v0, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    const-wide/high16 v4, -0x8000000000000000L

    #@c
    .line 421
    cmp-long v4, p5, v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 422
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@17
    move-result-object v4

    #@18
    invoke-interface {v4}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@1b
    move-result-wide p5

    #@1c
    .line 425
    :cond_0
    if-eqz v0, :cond_2

    #@1e
    .line 490
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@21
    move-result v3

    #@22
    if-eqz v3, :cond_8

    #@24
    .line 501
    :cond_1
    :goto_0
    invoke-virtual {v0, p5, p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setLastAccessTime(J)V

    #@27
    .line 502
    return-object v0

    #@28
    .line 427
    :cond_2
    iget-boolean v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@2a
    if-eqz v4, :cond_3

    #@2c
    .line 488
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@2e
    .end local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@30
    invoke-direct {v0, p1, v3, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@33
    .restart local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_0

    #@34
    .line 428
    :cond_3
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@36
    monitor-enter v4

    #@37
    .line 429
    const/4 v3, 0x1

    #@38
    :try_start_0
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    .line 433
    :try_start_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@3d
    invoke-interface {v3, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->getMapTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@40
    move-result-object v0

    #@41
    .line 435
    if-eqz v0, :cond_4

    #@43
    .line 469
    if-eqz p3, :cond_7

    #@45
    .line 473
    :goto_1
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    #@48
    .line 478
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@4b
    move-result-object v3

    #@4c
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHit()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@4f
    .line 502
    :goto_2
    const/4 v3, 0x0

    #@50
    :try_start_2
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@53
    .line 483
    monitor-exit v4

    #@54
    goto :goto_0

    #@55
    :catchall_0
    move-exception v3

    #@56
    :goto_3
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@57
    throw v3

    #@58
    .line 440
    :cond_4
    :try_start_3
    invoke-direct {p0, p1, p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTempImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;I)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@5b
    move-result-object v2

    #@5c
    .line 444
    .local v2, "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-nez p3, :cond_6

    #@5e
    .line 455
    :cond_5
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@60
    const/4 v3, 0x1

    #@61
    invoke-direct {v1, p1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@64
    .line 462
    .end local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :try_start_4
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    #@67
    move-object v0, v1

    #@68
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_2

    #@69
    .line 444
    :cond_6
    :try_start_5
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@6c
    move-result-object v3

    #@6d
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    #@70
    move-result v3

    #@71
    if-eqz v3, :cond_5

    #@73
    .line 447
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@75
    invoke-direct {v1, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@78
    .line 449
    .end local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :try_start_6
    invoke-direct {p0, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    #@7b
    .line 450
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->addMapEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    #@7e
    .line 452
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@81
    move-result-object v3

    #@82
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMiss()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@85
    move-object v0, v1

    #@86
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_2

    #@87
    .end local v2    # "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_7
    const-wide/16 v6, 0x4e20

    #@89
    .line 470
    sub-long/2addr p5, v6

    #@8a
    goto :goto_1

    #@8b
    .line 482
    :catchall_1
    move-exception v3

    #@8c
    .line 502
    :goto_4
    const/4 v5, 0x0

    #@8d
    :try_start_7
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@90
    .line 481
    throw v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    #@91
    .line 490
    :cond_8
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    #@94
    move-result v3

    #@95
    if-nez v3, :cond_1

    #@97
    if-eqz p3, :cond_1

    #@99
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@9c
    move-result-object v3

    #@9d
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->canDispatchNow()Z

    #@a0
    move-result v3

    #@a1
    if-eqz v3, :cond_1

    #@a3
    .line 495
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->queueTileRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;I)V

    #@a6
    .line 497
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@a9
    move-result-object v3

    #@aa
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMiss()V

    #@ad
    goto/16 :goto_0

    #@af
    .line 483
    .end local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v2    # "tempImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    move-exception v3

    #@b0
    move-object v0, v1

    #@b1
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_3

    #@b2
    .line 482
    .end local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :catchall_2
    move-exception v3

    #@b3
    move-object v0, v1

    #@b4
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v0    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    goto :goto_4
.end method

.method public getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 8
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "priority"    # I
    .param p3, "loadTile"    # Z
    .param p4, "scaleOk"    # Z

    #@0
    .prologue
    const-wide/high16 v6, -0x8000000000000000L

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move v3, p2

    #@5
    move v4, p3

    #@6
    move v5, p4

    #@7
    .line 361
    invoke-virtual/range {v1 .. v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@a
    move-result-object v0

    #@b
    return-object v0
.end method

.method getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 9
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "priority"    # I
    .param p3, "loadTile"    # Z
    .param p4, "scaleOk"    # Z
    .param p5, "accessTime"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 390
    if-nez p4, :cond_0

    #@3
    :goto_0
    move-object v1, p0

    #@4
    move-object v2, p1

    #@5
    move v3, p2

    #@6
    move v4, p3

    #@7
    move-wide v6, p5

    #@8
    invoke-virtual/range {v1 .. v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    :cond_0
    const/4 v5, 0x2

    #@e
    goto :goto_0
.end method

.method getTileDate(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)J
    .locals 2
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 982
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@8
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLastAccessTime()J

    #@b
    move-result-wide v0

    #@c
    return-wide v0
.end method

.method public handleOutOfMemory(Z)V
    .locals 4
    .param p1, "warning"    # Z

    #@0
    .prologue
    .line 1226
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->clearDataCache()V

    #@3
    .line 1227
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->clearScaledImages()V

    #@6
    .line 1229
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@8
    monitor-enter v2

    #@9
    const/16 v0, 0x1f40

    #@b
    .line 1231
    .local v0, "CACHE_SHRINK_SIZE":I
    const/4 v1, 0x1

    #@c
    :try_start_0
    invoke-direct {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->doCompact(Z)V

    #@f
    .line 1233
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->autoConfigCache:Z

    #@11
    if-nez v1, :cond_0

    #@13
    .line 1237
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@15
    add-int/lit16 v1, v1, -0x1f40

    #@17
    const/16 v3, 0x61a8

    #@19
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@1f
    .line 1239
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    #@22
    .line 1242
    :goto_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->checkTrimCache()V

    #@25
    .line 1243
    monitor-exit v2

    #@26
    .line 1244
    return-void

    #@27
    :cond_0
    const/16 v1, 0x61a8

    #@29
    .line 1234
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->maxCacheDataSize:I

    #@2b
    .line 1235
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setAutoTargetCacheSize()V

    #@2e
    goto :goto_0

    #@2f
    .line 1243
    :catchall_0
    move-exception v1

    #@30
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@31
    throw v1
.end method

.method mapChanged()V
    .locals 2

    #@0
    .prologue
    .line 1218
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@3
    move-result-wide v0

    #@4
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    #@6
    .line 1219
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@8
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->mapChanged()V

    #@b
    .line 1220
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@d
    monitor-enter v1

    #@e
    .line 1221
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@10
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    #@13
    .line 1222
    monitor-exit v1

    #@14
    .line 1223
    return-void

    #@15
    .line 1222
    :catchall_0
    move-exception v0

    #@16
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    throw v0
.end method

.method public notifyLayerTilesDirty()V
    .locals 2

    #@0
    .prologue
    .line 1128
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 1131
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@6
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v0, v1, -0x1

    #@c
    .local v0, "i":I
    :goto_1
    if-gez v0, :cond_1

    #@e
    .line 1134
    return-void

    #@f
    .line 1129
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->observer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    #@11
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->setLayerTilesDirty()V

    #@14
    goto :goto_0

    #@15
    .line 1132
    .restart local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@17
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@1d
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->notifyLayerTilesDirty()V

    #@20
    .line 1131
    add-int/lit8 v0, v0, -0x1

    #@22
    goto :goto_1
.end method

.method pause()V
    .locals 0

    #@0
    .prologue
    .line 1350
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->stopWorkThread()V

    #@3
    .line 1351
    return-void
.end method

.method requestLayerTiles()V
    .locals 3

    #@0
    .prologue
    .line 1088
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v0, v2, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@a
    .line 1094
    return-void

    #@b
    .line 1089
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->layerServices:Ljava/util/Vector;

    #@d
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@13
    .line 1090
    .local v1, "layerService":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->needFetchLayerTiles()Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 1088
    :goto_1
    add-int/lit8 v0, v0, -0x1

    #@1b
    goto :goto_0

    #@1c
    .line 1091
    :cond_1
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTiles()V

    #@1f
    goto :goto_1
.end method

.method requestTiles()Z
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1073
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 1081
    const/4 v1, 0x0

    #@6
    return v1

    #@7
    .line 1074
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@9
    .line 1077
    .local v0, "tempRequest":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->currentRequest:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService$MapTileRequest;

    #@b
    .line 1078
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@e
    move-result-object v1

    #@f
    invoke-virtual {v1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@12
    .line 1079
    const/4 v1, 0x1

    #@13
    return v1
.end method

.method public restoreBaseImagesIfNeeded()I
    .locals 8

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 910
    .local v3, "renderedImageCount":I
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@3
    monitor-enter v6

    #@4
    .line 912
    const/4 v5, 0x1

    #@5
    :try_start_0
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@8
    .line 913
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRenderedImageCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v3

    #@c
    const/16 v5, 0x30

    #@e
    .line 914
    if-gt v3, v5, :cond_1

    #@10
    .line 947
    :cond_0
    const/4 v5, 0x0

    #@11
    :try_start_1
    invoke-virtual {p0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@14
    .line 946
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@15
    .line 947
    return v3

    #@16
    .line 919
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getSortedCacheList()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@19
    move-result-object v4

    #@1a
    .local v4, "sortedList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    #@1b
    .line 923
    .local v0, "i":I
    :goto_0
    array-length v5, v4

    #@1c
    if-ge v0, v5, :cond_0

    #@1e
    const/16 v5, 0x18

    #@20
    if-le v3, v5, :cond_0

    #@22
    .line 924
    aget-object v2, v4, v0

    #@24
    .line 925
    .local v2, "minKey":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@26
    invoke-virtual {v5, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    move-result-object v1

    #@2a
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@2c
    .line 932
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    #@2f
    move-result v5

    #@30
    if-nez v5, :cond_2

    #@32
    .line 923
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@34
    goto :goto_0

    #@35
    .line 933
    :cond_2
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->restoreBaseImage()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    .line 934
    add-int/lit8 v3, v3, -0x1

    #@3a
    goto :goto_1

    #@3b
    .line 945
    .end local v0    # "i":I
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v2    # "minKey":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v4    # "sortedList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :catchall_0
    move-exception v5

    #@3c
    .line 947
    const/4 v7, 0x0

    #@3d
    :try_start_3
    invoke-virtual {p0, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->setMapCacheLocked(Z)V

    #@40
    .line 944
    throw v5

    #@41
    .line 946
    :catchall_1
    move-exception v5

    #@42
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@43
    throw v5
.end method

.method resume()V
    .locals 0

    #@0
    .prologue
    .line 1357
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->startWorkThread()V

    #@3
    .line 1358
    return-void
.end method

.method public run()V
    .locals 14

    #@0
    .prologue
    .line 1247
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@3
    move-result-wide v10

    #@4
    const-wide/16 v12, 0x835

    #@6
    add-long v6, v10, v12

    #@8
    .line 1248
    .local v6, "nextTrimTime":J
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@b
    move-result-wide v10

    #@c
    const-wide/16 v12, 0xc29

    #@e
    add-long v4, v10, v12

    #@10
    .line 1250
    .local v4, "nextCompactTime":J
    :cond_0
    :goto_0
    iget-boolean v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@12
    if-eqz v10, :cond_1

    #@14
    .line 1311
    return-void

    #@15
    .line 1253
    :cond_1
    :try_start_0
    iget-object v12, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    #@17
    monitor-enter v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    #@18
    .line 1260
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@1b
    move-result-wide v0

    #@1c
    .line 1261
    .local v0, "currentTime":J
    cmp-long v10, v6, v4

    #@1e
    if-ltz v10, :cond_5

    #@20
    const/4 v10, 0x1

    #@21
    :goto_1
    if-nez v10, :cond_6

    #@23
    move-wide v10, v6

    #@24
    :goto_2
    sub-long v8, v10, v0

    #@26
    .local v8, "nextWakeup":J
    const-wide/16 v10, 0x0

    #@28
    .line 1263
    cmp-long v10, v8, v10

    #@2a
    if-gtz v10, :cond_7

    #@2c
    const/4 v10, 0x1

    #@2d
    :goto_3
    if-nez v10, :cond_2

    #@2f
    .line 1264
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->timedThreadLockObject:Ljava/lang/Object;

    #@31
    invoke-virtual {v10, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@34
    .line 1269
    .end local v0    # "currentTime":J
    .end local v8    # "nextWakeup":J
    :cond_2
    :goto_4
    :try_start_2
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@35
    .line 1271
    :try_start_3
    iget-boolean v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->exitWorkThread:Z

    #@37
    if-nez v10, :cond_0

    #@39
    .line 1272
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getRelativeTime()J

    #@3c
    move-result-wide v0

    #@3d
    .line 1274
    .restart local v0    # "currentTime":J
    cmp-long v10, v6, v0

    #@3f
    if-ltz v10, :cond_8

    #@41
    const/4 v10, 0x1

    #@42
    :goto_5
    if-nez v10, :cond_3

    #@44
    .line 1275
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->checkTrimCache()V

    #@47
    const-wide/16 v10, 0x835

    #@49
    .line 1276
    add-long v6, v0, v10

    #@4b
    .line 1280
    :cond_3
    cmp-long v10, v4, v0

    #@4d
    if-ltz v10, :cond_9

    #@4f
    const/4 v10, 0x1

    #@50
    :goto_6
    if-nez v10, :cond_4

    #@52
    .line 1281
    const/4 v10, 0x0

    #@53
    invoke-direct {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->doCompact(Z)V

    #@56
    const-wide/16 v10, 0xc29

    #@58
    .line 1282
    add-long v4, v0, v10

    #@5a
    .line 1290
    :cond_4
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@5c
    invoke-interface {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->writeCache()Z

    #@5f
    move-result v10

    #@60
    if-nez v10, :cond_0

    #@62
    iget-wide v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->lastMapMoveTime:J

    #@64
    const-wide/16 v12, 0xfa0

    #@66
    add-long/2addr v10, v12

    #@67
    cmp-long v10, v10, v0

    #@69
    if-ltz v10, :cond_a

    #@6b
    const/4 v10, 0x1

    #@6c
    :goto_7
    if-nez v10, :cond_0

    #@6e
    .line 1293
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@70
    monitor-enter v11
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    #@71
    .line 1295
    :try_start_4
    iget-object v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->indefiniteThreadLockObject:Ljava/lang/Object;

    #@73
    invoke-virtual {v10}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@76
    .line 1299
    :goto_8
    :try_start_5
    monitor-exit v11

    #@77
    goto :goto_0

    #@78
    :catchall_0
    move-exception v10

    #@79
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    #@7a
    :try_start_6
    throw v10
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    #@7b
    .line 1307
    .end local v0    # "currentTime":J
    :catch_0
    move-exception v2

    #@7c
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "MapService BG"

    #@7f
    .line 1303
    invoke-static {v10, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@82
    goto :goto_0

    #@83
    .line 1261
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "currentTime":J
    :cond_5
    const/4 v10, 0x0

    #@84
    goto :goto_1

    #@85
    :cond_6
    move-wide v10, v4

    #@86
    goto :goto_2

    #@87
    .line 1263
    .restart local v8    # "nextWakeup":J
    :cond_7
    const/4 v10, 0x0

    #@88
    goto :goto_3

    #@89
    .line 1269
    .end local v0    # "currentTime":J
    .end local v8    # "nextWakeup":J
    :catchall_1
    move-exception v10

    #@8a
    :try_start_7
    monitor-exit v12
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    #@8b
    :try_start_8
    throw v10
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1

    #@8c
    .line 1307
    :catch_1
    move-exception v3

    #@8d
    .line 1306
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    #@90
    goto :goto_0

    #@91
    .line 1274
    .end local v3    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v0    # "currentTime":J
    :cond_8
    const/4 v10, 0x0

    #@92
    goto :goto_5

    #@93
    .line 1280
    :cond_9
    const/4 v10, 0x0

    #@94
    goto :goto_6

    #@95
    .line 1290
    :cond_a
    const/4 v10, 0x0

    #@96
    goto :goto_7

    #@97
    .line 1298
    :catch_2
    move-exception v10

    #@98
    goto :goto_8

    #@99
    .line 1268
    .end local v0    # "currentTime":J
    :catch_3
    move-exception v10

    #@9a
    goto :goto_4
.end method

.method setMapCacheLocked(Z)V
    .locals 0
    .param p1, "mapCacheLocked"    # Z

    #@0
    .prologue
    .line 225
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCacheLocked:Z

    #@2
    .line 226
    return-void
.end method

.method setTileEditionAndTextSize(II)V
    .locals 8
    .param p1, "tileEdition"    # I
    .param p2, "textSize"    # I

    #@0
    .prologue
    .line 1190
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->flashService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;

    #@2
    invoke-interface {v5, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTileStorage;->setTileEditionAndTextSize(II)Z

    #@5
    move-result v5

    #@6
    if-nez v5, :cond_0

    #@8
    .line 1211
    :goto_0
    return-void

    #@9
    .line 1191
    :cond_0
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@b
    monitor-enter v6

    #@c
    .line 1195
    :try_start_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@e
    invoke-virtual {v5}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@11
    move-result-object v2

    #@12
    .line 1196
    .local v2, "mapTiles":Ljava/util/Enumeration;
    new-instance v4, Ljava/util/Vector;

    #@14
    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    #@17
    .line 1197
    .local v4, "toRemove":Ljava/util/Vector;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@1a
    move-result v5

    #@1b
    if-nez v5, :cond_2

    #@1d
    const/4 v0, 0x0

    #@1e
    .line 1206
    .local v0, "i":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    #@21
    move-result v5

    #@22
    if-lt v0, v5, :cond_3

    #@24
    .line 1209
    monitor-exit v6

    #@25
    goto :goto_0

    #@26
    .end local v0    # "i":I
    .end local v2    # "mapTiles":Ljava/util/Enumeration;
    .end local v4    # "toRemove":Ljava/util/Vector;
    :catchall_0
    move-exception v5

    #@27
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    throw v5

    #@29
    .line 1198
    .restart local v2    # "mapTiles":Ljava/util/Enumeration;
    .restart local v4    # "toRemove":Ljava/util/Vector;
    :cond_2
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@2c
    move-result-object v3

    #@2d
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2f
    .line 1199
    .local v3, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@31
    invoke-virtual {v5, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@34
    move-result-object v1

    #@35
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@37
    .line 1200
    .local v1, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@3a
    move-result v5

    #@3b
    if-eqz v5, :cond_1

    #@3d
    .line 1201
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@40
    goto :goto_1

    #@41
    .line 1207
    .end local v1    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v3    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .restart local v0    # "i":I
    :cond_3
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapCache:Ljava/util/Hashtable;

    #@43
    invoke-virtual {v4, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    invoke-virtual {v5, v7}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4a
    .line 1206
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_2
.end method
