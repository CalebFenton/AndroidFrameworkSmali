.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;
.super Ljava/lang/Object;
.source "TrafficService.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
    }
.end annotation


# static fields
.field private static final EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;


# instance fields
.field private final cache:Ljava/util/Hashtable;

.field private nextRefreshTime:J

.field private final refreshMillis:J

.field private volatile request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

.field private final requestedTiles:Ljava/util/Hashtable;

.field private volatile stopCleanCache:Z

.field private final timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 31
    new-array v0, v0, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@3
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@5
    return-void
.end method

.method public constructor <init>(JLandroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;)V
    .locals 5
    .param p1, "refreshMillis"    # J
    .param p3, "taskRunner"    # Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@0
    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 87
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    #@6
    .line 105
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    #@8
    const-wide/high16 v0, -0x8000000000000000L

    #@a
    .line 106
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J

    #@c
    .line 107
    new-instance v0, Ljava/util/Hashtable;

    #@e
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@11
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@13
    .line 108
    new-instance v0, Ljava/util/Hashtable;

    #@15
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@18
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    #@1a
    .line 109
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->registerOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    #@1d
    .line 111
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@1f
    invoke-direct {v0, p3, p0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;-><init>(Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;Ljava/lang/Runnable;)V

    #@22
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@24
    .line 112
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@26
    const-wide/16 v2, 0x4e91

    #@28
    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->setDelay(J)V

    #@2b
    .line 113
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->start()V

    #@2e
    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method static synthetic access$100()[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;
    .locals 1

    #@0
    .prologue
    .line 30
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->EMPTY_TRAFFICROAD_ARRAY:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRoad;

    #@2
    return-object v0
.end method

.method static synthetic access$200(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@0
    .prologue
    .line 30
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@2
    return-object v0
.end method

.method static synthetic access$300(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .locals 0
    .param p0, "x0"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@0
    .prologue
    .line 30
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->notifyDownloadedTile()V

    #@3
    return-void
.end method

.method private notifyDownloadedTile()V
    .locals 1

    #@0
    .prologue
    .line 209
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    #@2
    if-eqz v0, :cond_1

    #@4
    .line 212
    :cond_0
    :goto_0
    return-void

    #@5
    .line 209
    :cond_1
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@7
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->isUnscheduled()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 210
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@f
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;->schedule()V

    #@12
    goto :goto_0
.end method

.method private declared-synchronized requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    .locals 1
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "trafficTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 183
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 187
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    #@7
    invoke-virtual {v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;->addTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V

    #@a
    .line 188
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    #@c
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit p0

    #@10
    .line 189
    return-void

    #@11
    .line 184
    :cond_0
    :try_start_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    #@13
    invoke-direct {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V

    #@16
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@18
    goto :goto_0

    #@19
    :catchall_0
    move-exception v0

    #@1a
    monitor-exit p0

    #@1b
    throw v0
.end method


# virtual methods
.method declared-synchronized cleanCache(J)V
    .locals 11
    .param p1, "maxAge"    # J

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 220
    :try_start_0
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@4
    invoke-virtual {v4}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    #@7
    move-result-object v2

    #@8
    .line 221
    .local v2, "tiles":Ljava/util/Enumeration;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    move-result v4

    #@c
    if-nez v4, :cond_1

    #@e
    monitor-exit p0

    #@f
    .line 230
    return-void

    #@10
    .line 222
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@13
    move-result-object v1

    #@14
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@16
    .line 223
    .local v1, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@18
    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v3

    #@1c
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@1e
    .line 224
    .local v3, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@25
    move-result-object v0

    #@26
    .line 225
    .local v0, "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@29
    move-result-wide v6

    #@2a
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getLastAccess()J

    #@2d
    move-result-wide v8

    #@2e
    sub-long/2addr v6, v8

    #@2f
    cmp-long v4, v6, p1

    #@31
    if-gtz v4, :cond_2

    #@33
    const/4 v4, 0x1

    #@34
    :goto_1
    if-nez v4, :cond_0

    #@36
    .line 226
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@38
    invoke-virtual {v4, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3b
    goto :goto_0

    #@3c
    .end local v0    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .end local v1    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v2    # "tiles":Ljava/util/Enumeration;
    .end local v3    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :catchall_0
    move-exception v4

    #@3d
    monitor-exit p0

    #@3e
    throw v4

    #@3f
    .restart local v0    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .restart local v1    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .restart local v2    # "tiles":Ljava/util/Enumeration;
    .restart local v3    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_2
    move v4, v5

    #@40
    .line 225
    goto :goto_1
.end method

.method public close()V
    .locals 0

    #@0
    .prologue
    .line 121
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->removeOutOfMemoryHandler(Landroid_maps_conflict_avoidance/com/google/common/OutOfMemoryHandler;)V

    #@3
    .line 123
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stop()V

    #@6
    .line 124
    return-void
.end method

.method public declared-synchronized getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .locals 12
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "fetch"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 145
    :try_start_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@4
    move-result-object v7

    #@5
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@8
    move-result v7

    #@9
    const/16 v8, 0x14

    #@b
    if-gt v7, v8, :cond_0

    #@d
    .line 150
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@f
    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v6

    #@13
    check-cast v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@15
    .line 153
    .local v6, "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestedTiles:Ljava/util/Hashtable;

    #@17
    invoke-virtual {v7, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v1

    #@1b
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@1d
    .line 156
    .local v1, "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-nez v6, :cond_1

    #@1f
    .line 170
    if-nez v1, :cond_7

    #@21
    .line 174
    new-instance v6, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@23
    .end local v6    # "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-direct {v6, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 175
    .restart local v6    # "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-nez p2, :cond_8

    #@28
    :goto_0
    monitor-exit p0

    #@29
    .line 179
    return-object v6

    #@2a
    .end local v1    # "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .end local v6    # "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_0
    const/4 v7, 0x0

    #@2b
    monitor-exit p0

    #@2c
    .line 146
    return-object v7

    #@2d
    .line 159
    .restart local v1    # "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .restart local v6    # "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_1
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@30
    move-result-object v7

    #@31
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@34
    move-result-object v0

    #@35
    .line 160
    .local v0, "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getDataTime()J

    #@38
    move-result-wide v4

    #@39
    .line 161
    .local v4, "tileDataTime":J
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    move-result-wide v8

    #@3d
    sub-long v2, v8, v4

    #@3f
    .line 162
    .local v2, "dataAge":J
    if-nez p2, :cond_3

    #@41
    :cond_2
    :goto_1
    monitor-exit p0

    #@42
    .line 167
    return-object v6

    #@43
    .line 162
    :cond_3
    if-nez v1, :cond_2

    #@45
    const-wide/high16 v8, -0x8000000000000000L

    #@47
    cmp-long v7, v4, v8

    #@49
    if-eqz v7, :cond_2

    #@4b
    :try_start_2
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    #@4d
    const-wide/16 v10, 0x2

    #@4f
    div-long/2addr v8, v10

    #@50
    cmp-long v7, v2, v8

    #@52
    if-gtz v7, :cond_5

    #@54
    const/4 v7, 0x1

    #@55
    :goto_2
    if-nez v7, :cond_2

    #@57
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@5a
    move-result-wide v8

    #@5b
    iget-wide v10, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J

    #@5d
    cmp-long v7, v8, v10

    #@5f
    if-lez v7, :cond_6

    #@61
    const/4 v7, 0x1

    #@62
    :goto_3
    if-nez v7, :cond_4

    #@64
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    #@66
    if-eqz v7, :cond_2

    #@68
    .line 165
    :cond_4
    invoke-direct {p0, p1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@6b
    goto :goto_1

    #@6c
    .end local v0    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .end local v1    # "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .end local v2    # "dataAge":J
    .end local v4    # "tileDataTime":J
    .end local v6    # "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :catchall_0
    move-exception v7

    #@6d
    monitor-exit p0

    #@6e
    throw v7

    #@6f
    .line 162
    .restart local v0    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .restart local v1    # "queuedTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .restart local v2    # "dataAge":J
    .restart local v4    # "tileDataTime":J
    .restart local v6    # "trafficTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_5
    const/4 v7, 0x0

    #@70
    goto :goto_2

    #@71
    :cond_6
    const/4 v7, 0x0

    #@72
    goto :goto_3

    #@73
    .end local v0    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .end local v2    # "dataAge":J
    .end local v4    # "tileDataTime":J
    :cond_7
    monitor-exit p0

    #@74
    .line 171
    return-object v1

    #@75
    .line 176
    :cond_8
    :try_start_3
    invoke-direct {p0, p1, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@78
    goto :goto_0
.end method

.method public handleOutOfMemory(Z)V
    .locals 1
    .param p1, "warning"    # Z

    #@0
    .prologue
    .line 251
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cache:Ljava/util/Hashtable;

    #@2
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    #@5
    .line 252
    return-void
.end method

.method public declared-synchronized requestTiles()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 196
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v0, :cond_0

    #@5
    :goto_0
    monitor-exit p0

    #@6
    .line 202
    return-void

    #@7
    .line 197
    :cond_0
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;

    #@a
    move-result-object v0

    #@b
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    #@d
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequestDispatcher;->addDataRequest(Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/DataRequest;)V

    #@10
    const/4 v0, 0x0

    #@11
    .line 198
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->request:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService$TrafficTileRequest;

    #@13
    .line 199
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
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->refreshMillis:J

    #@21
    add-long/2addr v0, v2

    #@22
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->nextRefreshTime:J
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

.method public run()V
    .locals 4

    #@0
    .prologue
    const-wide/32 v2, 0xea60

    #@3
    .line 237
    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->cleanCache(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    #@6
    .line 243
    :goto_0
    return-void

    #@7
    .line 242
    :catch_0
    move-exception v0

    #@8
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TrafficService BG"

    #@b
    .line 239
    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@e
    goto :goto_0

    #@f
    .line 242
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    #@10
    .line 241
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    #@13
    goto :goto_0
.end method

.method public declared-synchronized start()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 266
    const/4 v0, 0x0

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@4
    monitor-exit p0

    #@5
    .line 267
    return-void

    #@6
    :catchall_0
    move-exception v0

    #@7
    monitor-exit p0

    #@8
    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 273
    const/4 v0, 0x1

    #@2
    :try_start_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->stopCleanCache:Z

    #@4
    .line 274
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/android/TaskRunnerManager;->getTaskRunner()Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;

    #@7
    move-result-object v0

    #@8
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->timerTask:Landroid_maps_conflict_avoidance/com/google/common/task/TimerTask;

    #@a
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/task/TaskRunner;->cancelTask(Landroid_maps_conflict_avoidance/com/google/common/task/AbstractTask;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    .line 275
    return-void

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method
