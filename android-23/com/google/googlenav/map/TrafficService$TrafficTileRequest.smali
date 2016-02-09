.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.source "TrafficService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficTileRequest"
.end annotation


# instance fields
.field final synthetic this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

.field private final tiles:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .locals 2

    #@0
    .prologue
    .line 280
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@2
    const/16 v0, 0x1a

    #@4
    .line 281
    const/4 v1, 0x4

    #@5
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;-><init>(IB)V

    #@8
    .line 278
    new-instance v0, Ljava/util/Vector;

    #@a
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@d
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    #@f
    .line 282
    return-void
.end method


# virtual methods
.method public addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    .locals 1
    .param p1, "trafficTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@0
    .prologue
    .line 327
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@5
    .line 328
    return-void
.end method

.method protected handleEndOfResponse(I)V
    .locals 0
    .param p1, "tileIndex"    # I

    #@0
    .prologue
    .line 324
    return-void
.end method

.method protected processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .locals 5
    .param p1, "tileIndex"    # I
    .param p2, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p3, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 295
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@3
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@d
    .line 296
    .local v0, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-eqz v0, :cond_0

    #@f
    .line 300
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    #@12
    move-result v1

    #@13
    if-nez v1, :cond_1

    #@15
    .line 305
    :goto_0
    array-length v1, p3

    #@16
    if-eqz v1, :cond_2

    #@18
    .line 308
    invoke-virtual {v0, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->readData([B)V

    #@1b
    .line 310
    :goto_1
    monitor-enter p0

    #@1c
    .line 311
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@1e
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    .line 312
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@27
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;

    #@2a
    move-result-object v1

    #@2b
    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 313
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    .line 314
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->this$0:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@31
    # invokes: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->notifyDownloadedTile()V
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    #@34
    .line 316
    return v4

    #@35
    .line 298
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@37
    .end local v0    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-direct {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@3a
    .restart local v0    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    goto :goto_0

    #@3b
    .line 302
    :cond_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@3d
    .end local v0    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-direct {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@40
    .restart local v0    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    goto :goto_0

    #@41
    .line 306
    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@44
    move-result-object v1

    #@45
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@48
    move-result-object v1

    #@49
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@4c
    move-result-wide v2

    #@4d
    # getter for: Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->access$100()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@50
    move-result-object v1

    #@51
    invoke-virtual {v0, v2, v3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setData(J[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;)V

    #@54
    goto :goto_1

    #@55
    .line 313
    :catchall_0
    move-exception v1

    #@56
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@57
    throw v1
.end method

.method protected setTileEditionAndTextSize(II)V
    .locals 0
    .param p1, "tileEdition"    # I
    .param p2, "textSize"    # I

    #@0
    .prologue
    .line 321
    return-void
.end method

.method public writeRequestData(Ljava/io/DataOutput;)V
    .locals 3
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 285
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    #@2
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    new-array v1, v2, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@8
    .local v1, "tileList":[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    const/4 v0, 0x0

    #@9
    .line 286
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    #@b
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@e
    move-result v2

    #@f
    if-lt v0, v2, :cond_0

    #@11
    .line 290
    invoke-virtual {p0, v1, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V

    #@14
    .line 291
    return-void

    #@15
    .line 287
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->tiles:Ljava/util/Vector;

    #@17
    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@1a
    move-result-object v2

    #@1b
    check-cast v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@1d
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@20
    move-result-object v2

    #@21
    aput-object v2, v1, v0

    #@23
    .line 286
    add-int/lit8 v0, v0, 0x1

    #@25
    goto :goto_0
.end method
