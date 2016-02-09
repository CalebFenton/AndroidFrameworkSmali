.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;
.super Ljava/lang/Object;
.source "GmmTileOverlayRendererImpl.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;


# instance fields
.field private final shapeProviders:Ljava/util/Vector;

.field protected shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

.field private shapeRendererVersion:I

.field private showTraffic:Z

.field protected final trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

.field protected trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    #@6
    .line 60
    new-instance v0, Ljava/util/Vector;

    #@8
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@b
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeProviders:Ljava/util/Vector;

    #@d
    .line 61
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    #@f
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;-><init>()V

    #@12
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficRenderer;

    #@14
    .line 62
    return-void
.end method

.method private getImageVersion(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)I
    .locals 5
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 267
    .local v1, "version":I
    iget-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    #@4
    if-nez v2, :cond_1

    #@6
    .line 278
    :cond_0
    :goto_0
    mul-int/lit8 v2, v1, 0x1d

    #@8
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRendererVersion:I

    #@a
    add-int/2addr v2, v3

    #@b
    return v2

    #@c
    .line 268
    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@e
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@11
    move-result-object v3

    #@12
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@19
    move-result-object v0

    #@1a
    .line 270
    .local v0, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    if-eqz v0, :cond_0

    #@1c
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    #@1f
    move-result v2

    #@20
    if-eqz v2, :cond_0

    #@22
    .line 271
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isEmpty()Z

    #@25
    move-result v2

    #@26
    if-eqz v2, :cond_2

    #@28
    .line 274
    :goto_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@2f
    move-result-object v2

    #@30
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@33
    move-result-wide v2

    #@34
    invoke-virtual {v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->setLastAccess(J)V

    #@37
    goto :goto_0

    #@38
    .line 272
    :cond_2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->getDataTime()J

    #@3b
    move-result-wide v2

    #@3c
    long-to-int v1, v2

    #@3d
    goto :goto_1
.end method

.method private renderTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z
    .locals 6
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .param p2, "fetch"    # Z

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    .line 179
    .local v2, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@5
    move-result-object v1

    #@6
    .line 180
    .local v1, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    #@8
    if-nez v3, :cond_3

    #@a
    .line 205
    .end local v2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->getImageVersion(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)I

    #@d
    move-result v0

    #@e
    .line 206
    .local v0, "imageVersion":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->isFast()Z

    #@11
    move-result v3

    #@12
    if-eqz v3, :cond_4

    #@14
    :cond_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_5

    #@1a
    .line 212
    :cond_2
    :goto_1
    return v5

    #@1b
    .line 180
    .end local v0    # "imageVersion":I
    .restart local v2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_3
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@22
    move-result v3

    #@23
    const/16 v4, 0x9

    #@25
    if-lt v3, v4, :cond_0

    #@27
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@2e
    move-result v3

    #@2f
    const/16 v4, 0x14

    #@31
    if-gt v3, v4, :cond_0

    #@33
    .line 183
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@3a
    move-result-object v1

    #@3b
    .line 185
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@3d
    invoke-virtual {v3, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;

    #@40
    move-result-object v2

    #@41
    .local v2, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    goto :goto_0

    #@42
    .line 206
    .end local v2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .restart local v0    # "imageVersion":I
    :cond_4
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    #@45
    move-result v3

    #@46
    if-nez v3, :cond_1

    #@48
    goto :goto_1

    #@49
    :cond_5
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    #@4c
    move-result v3

    #@4d
    if-eq v3, v0, :cond_2

    #@4f
    .line 208
    invoke-direct {p0, p1, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->updateTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;I)V

    #@52
    .line 209
    const/4 v3, 0x1

    #@53
    return v3
.end method

.method private updateTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;I)V
    .locals 2
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .param p2, "tt"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .param p3, "imageVersion"    # I

    #@0
    .prologue
    .line 227
    if-eqz p2, :cond_2

    #@2
    :cond_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_3

    #@8
    .line 241
    :goto_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    #@b
    move-result v1

    #@c
    if-nez v1, :cond_7

    #@e
    .line 246
    .end local p2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_1
    :goto_1
    return-void

    #@f
    .line 227
    .restart local p2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    #@11
    if-nez v1, :cond_0

    #@13
    goto :goto_0

    #@14
    .line 230
    :cond_3
    if-nez p2, :cond_5

    #@16
    .line 234
    .end local p2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@19
    move-result-object v0

    #@1a
    .line 235
    .local v0, "newImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-eqz v0, :cond_6

    #@1c
    .line 239
    const/4 v1, 0x1

    #@1d
    invoke-virtual {p1, v0, p3, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V

    #@20
    goto :goto_1

    #@21
    .line 230
    .end local v0    # "newImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .restart local p2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_5
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;->isComplete()Z

    #@24
    move-result v1

    #@25
    if-nez v1, :cond_4

    #@27
    const/4 p2, 0x0

    #@28
    .line 231
    .local p2, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    goto :goto_2

    #@29
    .line 237
    .end local p2    # "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    .restart local v0    # "newImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_6
    invoke-virtual {p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImageVersion(I)V

    #@2c
    goto :goto_1

    #@2d
    .line 241
    .end local v0    # "newImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .local p2, "tt":Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;
    :cond_7
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageVersion()I

    #@30
    move-result v1

    #@31
    if-eq v1, p3, :cond_1

    #@33
    .line 243
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->restoreBaseImage()V

    #@36
    .line 244
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@39
    goto :goto_1
.end method


# virtual methods
.method public begin()V
    .locals 1

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRendererVersion:I

    #@7
    .line 82
    return-void

    #@8
    .line 77
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->shapeRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;

    #@a
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getImageVersion()I

    #@d
    move-result v0

    #@e
    goto :goto_0
.end method

.method public end()V
    .locals 1

    #@0
    .prologue
    .line 171
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;->requestTiles()V

    #@5
    .line 172
    return-void
.end method

.method protected abstract generateNewTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficTile;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
.end method

.method protected abstract isFast()Z
.end method

.method public isShowTraffic()Z
    .locals 1

    #@0
    .prologue
    .line 88
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    #@2
    return v0
.end method

.method public renderTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z
    .locals 1
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .param p2, "fetch"    # Z

    #@0
    .prologue
    .line 163
    invoke-direct {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->renderTileImage(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setShowTraffic(Z)V
    .locals 0
    .param p1, "showTraffic"    # Z

    #@0
    .prologue
    .line 159
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->showTraffic:Z

    #@2
    .line 160
    return-void
.end method

.method public setTrafficService(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;)V
    .locals 0
    .param p1, "trafficService"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@0
    .prologue
    .line 66
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/GmmTileOverlayRendererImpl;->trafficService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TrafficService;

    #@2
    .line 67
    return-void
.end method
