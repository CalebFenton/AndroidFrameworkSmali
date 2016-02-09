.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;
.super Ljava/lang/Object;
.source "LayerService.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private nextRefreshTime:J

.field private final observers:Ljava/util/Vector;

.field private refreshMillis:J

.field private volatile request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

.field private final requestedTiles:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 63
    new-instance v0, Ljava/util/Vector;

    #@5
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@8
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@a
    .line 104
    new-instance v0, Ljava/util/Hashtable;

    #@c
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@f
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@11
    .line 105
    new-instance v0, Ljava/util/Hashtable;

    #@13
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@16
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    #@18
    const-wide/16 v0, -0x1

    #@1a
    .line 106
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    #@1c
    const-wide/high16 v0, -0x8000000000000000L

    #@1e
    .line 107
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J

    #@20
    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Vector;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@2
    return-object v0
.end method

.method static synthetic access$100(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method private isTileLocationValid(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 5
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 321
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@4
    move-result-object v3

    #@5
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@8
    move-result v2

    #@9
    .line 322
    .local v2, "zoomLevel":I
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@b
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@e
    move-result v3

    #@f
    add-int/lit8 v0, v3, -0x1

    #@11
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@13
    .line 331
    return v4

    #@14
    .line 323
    :cond_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@16
    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@19
    move-result-object v3

    #@1a
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    #@1c
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->getLayerInfo()Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;

    #@1f
    move-result-object v1

    #@20
    .line 327
    .local v1, "layerInfo":Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/LayerInfo;->isValidZoomLevel(I)Z

    #@23
    move-result v3

    #@24
    if-nez v3, :cond_1

    #@26
    .line 322
    add-int/lit8 v0, v0, -0x1

    #@28
    goto :goto_0

    #@29
    .line 328
    :cond_1
    const/4 v3, 0x1

    #@2a
    return v3
.end method

.method private declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    .locals 1
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "layerTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 265
    :try_start_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->isTileLocationValid(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 273
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    #@9
    if-eqz v0, :cond_1

    #@b
    .line 276
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    #@d
    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;->addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V

    #@10
    .line 277
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    #@12
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    monitor-exit p0

    #@16
    .line 278
    return-void

    #@17
    .line 269
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@19
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    monitor-exit p0

    #@1d
    .line 270
    return-void

    #@1e
    .line 274
    :cond_1
    :try_start_2
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    #@20
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;)V

    #@23
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@25
    goto :goto_0

    #@26
    :catchall_0
    move-exception v0

    #@27
    monitor-exit p0

    #@28
    throw v0
.end method


# virtual methods
.method public clearTileCache()V
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 119
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    #@7
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@a
    .line 120
    return-void
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 200
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    #@3
    .line 201
    return-void
.end method

.method public declared-synchronized doCompact(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    .locals 2
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 299
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    .line 300
    .local v0, "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-nez v0, :cond_1

    #@b
    :cond_0
    :goto_0
    monitor-exit p0

    #@c
    .line 304
    return-void

    #@d
    .line 300
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->isComplete()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_0

    #@13
    .line 301
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->compact()V

    #@16
    .line 302
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@18
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1b
    goto :goto_0

    #@1c
    .end local v0    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :catchall_0
    move-exception v1

    #@1d
    monitor-exit p0

    #@1e
    throw v1
.end method

.method public declared-synchronized getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .locals 12
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "fetch"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 226
    :try_start_0
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->cache:Ljava/util/Hashtable;

    #@3
    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@9
    .line 229
    .local v2, "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestedTiles:Ljava/util/Hashtable;

    #@b
    invoke-virtual {v8, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@11
    .line 232
    .local v3, "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    if-nez v2, :cond_0

    #@13
    .line 249
    if-nez v3, :cond_6

    #@15
    .line 253
    if-eqz p2, :cond_7

    #@17
    .line 257
    new-instance v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@19
    .end local v2    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@1c
    .line 258
    .restart local v2    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1f
    monitor-exit p0

    #@20
    .line 259
    return-object v2

    #@21
    .line 235
    :cond_0
    :try_start_1
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    #@23
    const-wide/16 v10, -0x1

    #@25
    cmp-long v8, v8, v10

    #@27
    if-eqz v8, :cond_1

    #@29
    .line 236
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@2c
    move-result-object v8

    #@2d
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@30
    move-result-object v8

    #@31
    invoke-interface {v8}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@34
    move-result-wide v4

    #@35
    .line 237
    .local v4, "now":J
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->getDataTime()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    move-result-wide v6

    #@39
    .line 238
    .local v6, "tileDataTime":J
    sub-long v0, v4, v6

    #@3b
    .line 239
    .local v0, "dataAge":J
    if-nez p2, :cond_2

    #@3d
    .end local v0    # "dataAge":J
    .end local v4    # "now":J
    .end local v6    # "tileDataTime":J
    :cond_1
    :goto_0
    monitor-exit p0

    #@3e
    .line 245
    return-object v2

    #@3f
    .line 239
    .restart local v0    # "dataAge":J
    .restart local v4    # "now":J
    .restart local v6    # "tileDataTime":J
    :cond_2
    if-nez v3, :cond_1

    #@41
    const-wide/high16 v8, -0x8000000000000000L

    #@43
    cmp-long v8, v6, v8

    #@45
    if-eqz v8, :cond_1

    #@47
    :try_start_2
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    #@49
    cmp-long v8, v0, v8

    #@4b
    if-gtz v8, :cond_4

    #@4d
    const/4 v8, 0x1

    #@4e
    :goto_1
    if-nez v8, :cond_1

    #@50
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J

    #@52
    cmp-long v8, v4, v8

    #@54
    if-lez v8, :cond_5

    #@56
    const/4 v8, 0x1

    #@57
    :goto_2
    if-nez v8, :cond_3

    #@59
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    #@5b
    if-eqz v8, :cond_1

    #@5d
    .line 242
    :cond_3
    invoke-direct {p0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@60
    goto :goto_0

    #@61
    .end local v0    # "dataAge":J
    .end local v2    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .end local v3    # "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .end local v4    # "now":J
    .end local v6    # "tileDataTime":J
    :catchall_0
    move-exception v8

    #@62
    monitor-exit p0

    #@63
    throw v8

    #@64
    .line 239
    .restart local v0    # "dataAge":J
    .restart local v2    # "layerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .restart local v3    # "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    .restart local v4    # "now":J
    .restart local v6    # "tileDataTime":J
    :cond_4
    const/4 v8, 0x0

    #@65
    goto :goto_1

    #@66
    :cond_5
    const/4 v8, 0x0

    #@67
    goto :goto_2

    #@68
    .end local v0    # "dataAge":J
    .end local v4    # "now":J
    .end local v6    # "tileDataTime":J
    :cond_6
    monitor-exit p0

    #@69
    .line 250
    return-object v3

    #@6a
    :cond_7
    const/4 v8, 0x0

    #@6b
    monitor-exit p0

    #@6c
    .line 254
    return-object v8
.end method

.method public handleOutOfMemory(Z)V
    .locals 0
    .param p1, "warning"    # Z

    #@0
    .prologue
    .line 310
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->clearTileCache()V

    #@3
    .line 311
    return-void
.end method

.method public needFetchLayerTiles()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 172
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@3
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@6
    move-result v1

    #@7
    if-gtz v1, :cond_0

    #@9
    :goto_0
    return v0

    #@a
    :cond_0
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public notifyLayerTilesDirty()V
    .locals 2

    #@0
    .prologue
    .line 191
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@a
    .line 194
    return-void

    #@b
    .line 192
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    #@13
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->setLayerTilesDirty()V

    #@16
    .line 191
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0
.end method

.method public notifyNewLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .param p1, "layerId"    # Ljava/lang/String;
    .param p2, "params"    # [Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@0
    .prologue
    .line 179
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@2
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    #@5
    move-result v1

    #@6
    add-int/lit8 v0, v1, -0x1

    #@8
    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    #@a
    .line 183
    return-void

    #@b
    .line 180
    :cond_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->observers:Ljava/util/Vector;

    #@d
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@10
    move-result-object v1

    #@11
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;

    #@13
    invoke-interface {v1, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$TileUpdateObserver;->updateLayerInfo(Ljava/lang/String;[Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@16
    .line 179
    add-int/lit8 v0, v0, -0x1

    #@18
    goto :goto_0
.end method

.method public declared-synchronized requestTiles()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 285
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    :goto_0
    monitor-exit p0

    #@6
    .line 291
    return-void

    #@7
    .line 286
    :cond_0
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    #@d
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@10
    const/4 v0, 0x0

    #@11
    .line 287
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService$LayerTileRequest;

    #@13
    .line 288
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@16
    move-result-object v0

    #@17
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@1a
    move-result-object v0

    #@1b
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@1e
    move-result-wide v0

    #@1f
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->refreshMillis:J

    #@21
    add-long/2addr v0, v2

    #@22
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerService;->nextRefreshTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@24
    goto :goto_0

    #@25
    :catchall_0
    move-exception v0

    #@26
    monitor-exit p0

    #@27
    throw v0
.end method
