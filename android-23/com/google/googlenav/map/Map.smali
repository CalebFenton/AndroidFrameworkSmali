.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;
.super Ljava/lang/Object;
.source "Map.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;,
        Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$BillingPointListener;
    }
.end annotation


# instance fields
.field private final biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

.field private centerPixelX:I

.field private centerPixelY:I

.field private completeTilesInViewport:I

.field private cornerToCenterDist:I

.field private displayHeight:I

.field private displayWidth:I

.field private earliestTileNeededTime:J

.field private estimatedCountOfRenderedImagesInMapCache:I

.field private halfDisplayHeight:I

.field private halfDisplayWidth:I

.field private halfHeight:I

.field private halfWidth:I

.field private hardwareAcceleration:Z

.field private height:I

.field private isViewportAllNew:Z

.field private lastPaintStartTime:J

.field private final mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

.field private mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

.field private pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

.field private running:Z

.field private tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

.field private tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private width:I

.field private xDisplayTiles:I

.field private xTiles:I

.field private yDisplayTiles:I

.field private yTiles:I


# direct methods
.method public constructor <init>(IIILandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .locals 7
    .param p1, "maxCacheDataSize"    # I
    .param p2, "targetCacheDataSize"    # I
    .param p3, "maxFlashSize"    # I
    .param p4, "defaultCenter"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p5, "defaultZoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .param p6, "maxRecordStores"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 47
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@6
    .line 54
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@8
    .line 60
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->cornerToCenterDist:I

    #@a
    .line 63
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    #@c
    .line 66
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    #@e
    .line 105
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    #@10
    .line 115
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    #@12
    .line 118
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@14
    .line 121
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@16
    .line 127
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@18
    .line 133
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@1a
    .line 139
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@1c
    .line 145
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    #@1e
    .line 238
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@20
    .line 251
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    #@22
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;-><init>()V

    #@25
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    #@27
    const/4 v0, 0x0

    #@28
    .line 259
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    #@2a
    .line 265
    iput-boolean v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->hardwareAcceleration:Z

    #@2c
    .line 317
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    #@2e
    .line 341
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@30
    const-string/jumbo v5, "Tiles"

    #@33
    move v1, p1

    #@34
    move v2, p2

    #@35
    move v3, p3

    #@36
    move v4, p6

    #@37
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;-><init>(IIIILjava/lang/String;)V

    #@3a
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@3c
    .line 343
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3e
    const/4 v1, 0x3

    #@3f
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@42
    move-result-object v1

    #@43
    invoke-direct {v0, p4, v1, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    #@46
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@48
    .line 344
    invoke-direct {p0, p4, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->load(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    #@4b
    .line 345
    const/4 v0, 0x1

    #@4c
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    #@4e
    .line 346
    return-void
.end method

.method private calculateCenterPixel()V
    .locals 2

    #@0
    .prologue
    .line 605
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@5
    move-result-object v0

    #@6
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@8
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    #@12
    .line 606
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@14
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@17
    move-result-object v0

    #@18
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@1a
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@21
    move-result v0

    #@22
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    #@24
    .line 607
    return-void
.end method

.method private static checkPaintTimeExceeded(J)Z
    .locals 6
    .param p0, "paintStartTime"    # J

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1301
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@9
    move-result-object v2

    #@a
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@d
    move-result-wide v2

    #@e
    sub-long/2addr v2, p0

    #@f
    const-wide/16 v4, 0xc8

    #@11
    cmp-long v2, v2, v4

    #@13
    if-gtz v2, :cond_0

    #@15
    move v2, v0

    #@16
    :goto_0
    if-nez v2, :cond_1

    #@18
    :goto_1
    return v0

    #@19
    :cond_0
    move v2, v1

    #@1a
    goto :goto_0

    #@1b
    :cond_1
    move v0, v1

    #@1c
    goto :goto_1
.end method

.method private drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z
    .locals 22
    .param p1, "g"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .param p2, "fetch"    # Z
    .param p3, "drawIncompleteTiles"    # Z

    #@0
    .prologue
    .line 848
    move-object/from16 v0, p0

    #@2
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    #@4
    move-object/from16 v0, p0

    #@6
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@8
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    #@b
    move-result v3

    #@c
    add-int/2addr v2, v3

    #@d
    move-object/from16 v0, p0

    #@f
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@11
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@14
    move-result-object v3

    #@15
    move-object/from16 v0, p0

    #@17
    iget-object v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@19
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1c
    move-result-object v6

    #@1d
    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@20
    move-result v3

    #@21
    sub-int v7, v2, v3

    #@23
    .line 850
    .local v7, "xOffset":I
    move-object/from16 v0, p0

    #@25
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    #@27
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2b
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    #@2e
    move-result v3

    #@2f
    add-int/2addr v2, v3

    #@30
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@34
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@37
    move-result-object v3

    #@38
    move-object/from16 v0, p0

    #@3a
    iget-object v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3c
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@3f
    move-result-object v6

    #@40
    invoke-virtual {v3, v6}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@43
    move-result v3

    #@44
    sub-int v8, v2, v3

    #@46
    .line 857
    .local v8, "yOffset":I
    :goto_0
    if-gtz v7, :cond_0

    #@48
    .line 861
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@4c
    if-nez v2, :cond_1

    #@4e
    :goto_1
    const/16 v17, 0x0

    #@50
    .local v17, "tileIndex":I
    const/16 v21, 0x0

    #@52
    .line 866
    .local v21, "tilesDrawn":I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@55
    move-result-object v2

    #@56
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@59
    move-result-object v16

    #@5a
    .line 867
    .local v16, "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    invoke-interface/range {v16 .. v16}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@5d
    move-result-wide v12

    #@5e
    .line 868
    .local v12, "paintStartTimeRelative":J
    invoke-interface/range {v16 .. v16}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@61
    move-result-wide v18

    #@62
    .line 869
    .local v18, "paintStartTimeCurrent":J
    const/4 v11, 0x1

    #@63
    .line 870
    .local v11, "drawOptionalFeatures":Z
    if-eqz p1, :cond_2

    #@65
    :goto_2
    const-wide v2, 0x7fffffffffffffffL

    #@6a
    .line 882
    move-object/from16 v0, p0

    #@6c
    iput-wide v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    #@6e
    const/4 v4, 0x0

    #@6f
    .line 883
    .local v4, "i":I
    :goto_3
    move-object/from16 v0, p0

    #@71
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@73
    if-lt v4, v2, :cond_3

    #@75
    .line 914
    move-object/from16 v0, p0

    #@77
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    #@79
    const/16 v3, 0x30

    #@7b
    if-gt v2, v3, :cond_8

    #@7d
    .line 921
    :goto_4
    if-nez p1, :cond_9

    #@7f
    .line 928
    :goto_5
    if-nez p2, :cond_a

    #@81
    .line 935
    :goto_6
    move-object/from16 v0, p0

    #@83
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@85
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestLayerTiles()V

    #@88
    .line 937
    move-object/from16 v0, p0

    #@8a
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@8c
    if-nez v2, :cond_b

    #@8e
    .line 942
    :goto_7
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->clearDataCache()V

    #@91
    .line 945
    move-object/from16 v0, p0

    #@93
    iput-wide v12, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->lastPaintStartTime:J

    #@95
    .line 950
    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->checkPaintTimeExceeded(J)Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_c

    #@9b
    const/4 v2, 0x0

    #@9c
    :goto_8
    return v2

    #@9d
    .line 858
    .end local v4    # "i":I
    .end local v11    # "drawOptionalFeatures":Z
    .end local v12    # "paintStartTimeRelative":J
    .end local v16    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .end local v17    # "tileIndex":I
    .end local v18    # "paintStartTimeCurrent":J
    .end local v21    # "tilesDrawn":I
    :cond_0
    move-object/from16 v0, p0

    #@9f
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@a1
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@a4
    move-result-object v2

    #@a5
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@a8
    move-result v2

    #@a9
    sub-int/2addr v7, v2

    #@aa
    goto :goto_0

    #@ab
    .line 862
    :cond_1
    move-object/from16 v0, p0

    #@ad
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@af
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->begin()V

    #@b2
    goto :goto_1

    #@b3
    .line 872
    .restart local v11    # "drawOptionalFeatures":Z
    .restart local v12    # "paintStartTimeRelative":J
    .restart local v16    # "clock":Landroid_maps_conflict_avoidance/com/google/common/Clock;
    .restart local v17    # "tileIndex":I
    .restart local v18    # "paintStartTimeCurrent":J
    .restart local v21    # "tilesDrawn":I
    :cond_2
    const/4 v11, 0x0

    #@b4
    goto :goto_2

    #@b5
    .restart local v4    # "i":I
    :cond_3
    const/4 v5, 0x0

    #@b6
    .line 884
    .local v5, "j":I
    :goto_9
    move-object/from16 v0, p0

    #@b8
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@ba
    if-lt v5, v2, :cond_4

    #@bc
    .line 883
    add-int/lit8 v4, v4, 0x1

    #@be
    goto :goto_3

    #@bf
    .line 888
    :cond_4
    move/from16 v0, v17

    #@c1
    int-to-long v2, v0

    #@c2
    add-long v14, v18, v2

    #@c4
    .line 890
    .local v14, "tileAccessTime":J
    move-object/from16 v0, p0

    #@c6
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@c8
    add-int/lit8 v20, v17, 0x1

    #@ca
    .end local v17    # "tileIndex":I
    .local v20, "tileIndex":I
    aget-object v3, v2, v17

    #@cc
    move-object/from16 v2, p0

    #@ce
    move-object/from16 v6, p1

    #@d0
    move/from16 v9, p2

    #@d2
    move/from16 v10, p3

    #@d4
    invoke-direct/range {v2 .. v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IILandroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;IIZZZJJ)Z

    #@d7
    move-result v2

    #@d8
    if-nez v2, :cond_6

    #@da
    const/4 v2, 0x0

    #@db
    :goto_a
    add-int v21, v21, v2

    #@dd
    .line 907
    if-nez v11, :cond_7

    #@df
    .line 884
    :cond_5
    :goto_b
    add-int/lit8 v5, v5, 0x1

    #@e1
    move/from16 v17, v20

    #@e3
    .end local v20    # "tileIndex":I
    .restart local v17    # "tileIndex":I
    goto :goto_9

    #@e4
    .end local v17    # "tileIndex":I
    .restart local v20    # "tileIndex":I
    :cond_6
    const/4 v2, 0x1

    #@e5
    .line 890
    goto :goto_a

    #@e6
    .line 907
    :cond_7
    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->checkPaintTimeExceeded(J)Z

    #@e9
    move-result v2

    #@ea
    if-eqz v2, :cond_5

    #@ec
    .line 909
    const/4 v11, 0x0

    #@ed
    goto :goto_b

    #@ee
    .line 917
    .end local v5    # "j":I
    .end local v14    # "tileAccessTime":J
    .end local v20    # "tileIndex":I
    .restart local v17    # "tileIndex":I
    :cond_8
    move-object/from16 v0, p0

    #@f0
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@f2
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->restoreBaseImagesIfNeeded()I

    #@f5
    move-result v2

    #@f6
    move-object/from16 v0, p0

    #@f8
    iput v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    #@fa
    goto :goto_4

    #@fb
    .line 922
    :cond_9
    move-object/from16 v0, p0

    #@fd
    move/from16 v1, v21

    #@ff
    invoke-direct {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->logPerceivedTileLatency(I)V

    #@102
    goto/16 :goto_5

    #@104
    .line 929
    :cond_a
    move-object/from16 v0, p0

    #@106
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@108
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->requestTiles()Z

    #@10b
    goto/16 :goto_6

    #@10d
    .line 938
    :cond_b
    move-object/from16 v0, p0

    #@10f
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@111
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->end()V

    #@114
    goto/16 :goto_7

    #@116
    :cond_c
    const/4 v2, 0x1

    #@117
    .line 950
    goto :goto_8
.end method

.method private drawTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IILandroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;IIZZZJJ)Z
    .locals 18
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "i"    # I
    .param p3, "j"    # I
    .param p4, "g"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .param p5, "xOffset"    # I
    .param p6, "yOffset"    # I
    .param p7, "fetch"    # Z
    .param p8, "drawIncompleteTiles"    # Z
    .param p9, "drawOptionalFeatures"    # Z
    .param p10, "paintStartTime"    # J
    .param p12, "accessTime"    # J

    #@0
    .prologue
    .line 1114
    move/from16 v0, p2

    #@2
    mul-int/lit16 v3, v0, 0x100

    #@4
    add-int v14, p5, v3

    #@6
    .line 1115
    .local v14, "x":I
    move/from16 v0, p3

    #@8
    mul-int/lit16 v3, v0, 0x100

    #@a
    add-int v16, p6, v3

    #@c
    .line 1118
    .local v16, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->notValid()Z

    #@f
    move-result v3

    #@10
    if-nez v3, :cond_4

    #@12
    .line 1130
    move-object/from16 v0, p0

    #@14
    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    #@16
    add-int/lit16 v4, v14, 0x80

    #@18
    sub-int v15, v3, v4

    #@1a
    .line 1131
    .local v15, "xDist":I
    move-object/from16 v0, p0

    #@1c
    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    #@1e
    move/from16 v0, v16

    #@20
    add-int/lit16 v4, v0, 0x80

    #@22
    sub-int v17, v3, v4

    #@24
    .line 1134
    .local v17, "yDist":I
    mul-int v3, v15, v15

    #@26
    mul-int v4, v17, v17

    #@28
    add-int v5, v3, v4

    #@2a
    .line 1137
    .local v5, "priority":I
    invoke-virtual/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreen(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    #@2d
    move-result v13

    #@2e
    .line 1138
    .local v13, "tileOnScreen":Z
    if-nez p7, :cond_6

    #@30
    .line 1147
    .end local p7    # "fetch":Z
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    #@32
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@34
    if-nez p9, :cond_7

    #@36
    const/4 v7, 0x1

    #@37
    :goto_1
    move-object/from16 v4, p1

    #@39
    move/from16 v6, p7

    #@3b
    move-wide/from16 v8, p12

    #@3d
    invoke-virtual/range {v3 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZIJ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@40
    move-result-object v11

    #@41
    .line 1152
    .local v11, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez v13, :cond_8

    #@43
    .line 1160
    :cond_1
    :goto_2
    const/4 v2, 0x0

    #@44
    .line 1161
    .local v2, "completeTileDrawn":Z
    if-nez p4, :cond_9

    #@46
    .line 1176
    :cond_2
    :goto_3
    move-object/from16 v0, p0

    #@48
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@4a
    move-object/from16 v0, p1

    #@4c
    move/from16 v1, p7

    #@4e
    invoke-virtual {v3, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getLayerTiles(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Z)Ljava/util/Vector;

    #@51
    move-result-object v10

    #@52
    .line 1177
    .local v10, "layerTileImages":Ljava/util/Vector;
    if-nez p4, :cond_c

    #@54
    .line 1189
    :cond_3
    return v2

    #@55
    .line 1119
    .end local v2    # "completeTileDrawn":Z
    .end local v5    # "priority":I
    .end local v10    # "layerTileImages":Ljava/util/Vector;
    .end local v11    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v13    # "tileOnScreen":Z
    .end local v15    # "xDist":I
    .end local v17    # "yDist":I
    .restart local p7    # "fetch":Z
    :cond_4
    if-nez p4, :cond_5

    #@57
    .line 1124
    const/4 v3, 0x0

    #@58
    return v3

    #@59
    :cond_5
    const v3, 0xffffff

    #@5c
    .line 1120
    move-object/from16 v0, p4

    #@5e
    invoke-interface {v0, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->setColor(I)V

    #@61
    const/16 v3, 0x100

    #@63
    const/16 v4, 0x100

    #@65
    .line 1121
    move-object/from16 v0, p4

    #@67
    move/from16 v1, v16

    #@69
    invoke-interface {v0, v14, v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    #@6c
    .line 1122
    const/4 v3, 0x1

    #@6d
    return v3

    #@6e
    .line 1138
    .restart local v5    # "priority":I
    .restart local v13    # "tileOnScreen":Z
    .restart local v15    # "xDist":I
    .restart local v17    # "yDist":I
    :cond_6
    if-nez v13, :cond_0

    #@70
    .line 1139
    const/16 p7, 0x0

    #@72
    .local p7, "fetch":Z
    goto :goto_0

    #@73
    .end local p7    # "fetch":Z
    :cond_7
    const/4 v7, 0x2

    #@74
    .line 1147
    goto :goto_1

    #@75
    .line 1152
    .restart local v11    # "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_8
    move-object/from16 v0, p0

    #@77
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@79
    if-eqz v3, :cond_1

    #@7b
    if-eqz p9, :cond_1

    #@7d
    .line 1153
    move-object/from16 v0, p0

    #@7f
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@81
    move/from16 v0, p7

    #@83
    invoke-interface {v3, v11, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;->renderTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;Z)Z

    #@86
    move-result v3

    #@87
    if-eqz v3, :cond_1

    #@89
    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasRenderedImage()Z

    #@8c
    move-result v3

    #@8d
    if-eqz v3, :cond_1

    #@8f
    .line 1155
    move-object/from16 v0, p0

    #@91
    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    #@93
    add-int/lit8 v3, v3, 0x1

    #@95
    move-object/from16 v0, p0

    #@97
    iput v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->estimatedCountOfRenderedImagesInMapCache:I

    #@99
    goto :goto_2

    #@9a
    .line 1161
    .restart local v2    # "completeTileDrawn":Z
    :cond_9
    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    #@9d
    move-result v3

    #@9e
    if-eqz v3, :cond_b

    #@a0
    .line 1164
    :cond_a
    move-wide/from16 v0, p12

    #@a2
    invoke-virtual {v11, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@a5
    move-result-object v3

    #@a6
    move-object/from16 v0, p4

    #@a8
    move/from16 v1, v16

    #@aa
    invoke-interface {v0, v3, v14, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V

    #@ad
    .line 1167
    move-object/from16 v0, p0

    #@af
    iget-wide v6, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->lastPaintStartTime:J

    #@b1
    move-wide/from16 v0, p10

    #@b3
    invoke-virtual {v11, v0, v1, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setPaint(JJ)V

    #@b6
    .line 1169
    invoke-virtual {v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    #@b9
    move-result v3

    #@ba
    if-lez v3, :cond_2

    #@bc
    .line 1170
    move-object/from16 v0, p0

    #@be
    invoke-direct {v0, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updatePerceivedTileLatency(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    #@c1
    .line 1171
    move-object/from16 v0, p0

    #@c3
    invoke-direct {v0, v11}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->logIfPreCached(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    #@c6
    .line 1172
    const/4 v2, 0x1

    #@c7
    goto/16 :goto_3

    #@c9
    .line 1161
    :cond_b
    if-nez p8, :cond_a

    #@cb
    goto/16 :goto_3

    #@cd
    .line 1178
    .restart local v10    # "layerTileImages":Ljava/util/Vector;
    :cond_c
    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    #@d0
    move-result v3

    #@d1
    add-int/lit8 v12, v3, -0x1

    #@d3
    .local v12, "n":I
    :goto_4
    if-ltz v12, :cond_3

    #@d5
    .line 1179
    invoke-virtual {v10, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@d8
    move-result-object v3

    #@d9
    check-cast v3, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@db
    move-object/from16 v0, p4

    #@dd
    move/from16 v1, v16

    #@df
    invoke-interface {v0, v3, v14, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->drawImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;II)V

    #@e2
    .line 1178
    add-int/lit8 v12, v12, -0x1

    #@e4
    goto :goto_4
.end method

.method private declared-synchronized findZoom(IILandroid_maps_conflict_avoidance/com/google/map/MapState;)Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 2
    .param p1, "latSpanE6"    # I
    .param p2, "lonSpanE6"    # I
    .param p3, "newMapState"    # Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 545
    :try_start_0
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    #@8
    move-result v1

    #@9
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@c
    move-result-object v0

    #@d
    .line 546
    .local v0, "newZoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :goto_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v1

    #@11
    if-nez v1, :cond_0

    #@13
    :goto_1
    monitor-exit p0

    #@14
    .line 552
    return-object v0

    #@15
    .line 546
    :cond_0
    :try_start_1
    invoke-virtual {p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I

    #@1c
    move-result v1

    #@1d
    if-ge v1, p1, :cond_2

    #@1f
    .line 549
    :cond_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getNextLowerZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@22
    move-result-object v0

    #@23
    goto :goto_0

    #@24
    .line 546
    :cond_2
    invoke-virtual {p3, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    move-result v1

    #@2c
    if-lt v1, p2, :cond_1

    #@2e
    goto :goto_1

    #@2f
    .end local v0    # "newZoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    :catchall_0
    move-exception v1

    #@30
    monitor-exit p0

    #@31
    throw v1
.end method

.method public static getMaxMapInitialZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I
    .locals 2
    .param p0, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    const/16 v1, 0xf

    #@2
    .line 1726
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isMapPointInKoreaBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z

    #@5
    move-result v0

    #@6
    if-nez v0, :cond_0

    #@8
    .line 1728
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isMapPointInJapanBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z

    #@b
    move-result v0

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1735
    return v1

    #@f
    .line 1727
    :cond_0
    return v1

    #@10
    :cond_1
    const/16 v0, 0x10

    #@12
    .line 1730
    return v0
.end method

.method public static getMaxTiles(I)I
    .locals 1
    .param p0, "size"    # I

    #@0
    .prologue
    const/16 v0, 0x100

    #@2
    .line 1379
    invoke-static {p0, v0}, Landroid_maps_conflict_avoidance/com/google/common/util/MathUtil;->ceiledDivision(II)I

    #@5
    move-result v0

    #@6
    add-int/lit8 v0, v0, 0x1

    #@8
    return v0
.end method

.method private getTileFlagsForMapMode()B
    .locals 1

    #@0
    .prologue
    .line 1401
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getMapMode()I

    #@5
    move-result v0

    #@6
    packed-switch v0, :pswitch_data_0

    #@9
    .line 1408
    :pswitch_0
    const/4 v0, 0x2

    #@a
    return v0

    #@b
    .line 1403
    :pswitch_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getSatType()B

    #@e
    move-result v0

    #@f
    return v0

    #@10
    .line 1405
    :pswitch_2
    const/4 v0, 0x7

    #@11
    return v0

    #@12
    .line 1401
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isMapPointInJapanBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z
    .locals 3
    .param p0, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    .line 1740
    if-nez p0, :cond_1

    #@2
    .line 1751
    :cond_0
    const/4 v2, 0x0

    #@3
    return v2

    #@4
    .line 1741
    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    #@7
    move-result v0

    #@8
    .line 1742
    .local v0, "lat":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    #@b
    move-result v1

    #@c
    .local v1, "lng":I
    const v2, 0x16c6e44

    #@f
    .line 1746
    if-le v0, v2, :cond_0

    #@11
    const v2, 0x2bf01d6

    #@14
    if-ge v0, v2, :cond_0

    #@16
    const v2, 0x7604113

    #@19
    if-le v1, v2, :cond_0

    #@1b
    const v2, 0x8920c07

    #@1e
    if-ge v1, v2, :cond_0

    #@20
    .line 1748
    const/4 v2, 0x1

    #@21
    return v2
.end method

.method public static isMapPointInKoreaBoundingBox(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Z
    .locals 7
    .param p0, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    const v6, 0x7cfb66a

    #@3
    const v5, 0x7ae0f28

    #@6
    const v4, 0x7a8b1de

    #@9
    const v3, 0x24e6895

    #@c
    .line 1756
    if-nez p0, :cond_1

    #@e
    .line 1773
    :cond_0
    const/4 v2, 0x0

    #@f
    return v2

    #@10
    .line 1757
    :cond_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    #@13
    move-result v0

    #@14
    .line 1758
    .local v0, "lat":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    #@17
    move-result v1

    #@18
    .local v1, "lng":I
    const v2, 0x1f75f9c

    #@1b
    .line 1762
    if-gt v0, v2, :cond_5

    #@1d
    :cond_2
    const v2, 0x20de3a2

    #@20
    if-gt v0, v2, :cond_6

    #@22
    :cond_3
    const v2, 0x2167b23

    #@25
    if-gt v0, v2, :cond_7

    #@27
    :cond_4
    const v2, 0x234ffbd

    #@2a
    if-le v0, v2, :cond_0

    #@2c
    if-ge v0, v3, :cond_0

    #@2e
    if-le v1, v6, :cond_0

    #@30
    const v2, 0x7de3697

    #@33
    if-ge v1, v2, :cond_0

    #@35
    .line 1770
    :goto_0
    const/4 v2, 0x1

    #@36
    return v2

    #@37
    .line 1762
    :cond_5
    if-ge v0, v3, :cond_2

    #@39
    const v2, 0x76d5478

    #@3c
    if-le v1, v2, :cond_2

    #@3e
    if-ge v1, v4, :cond_2

    #@40
    goto :goto_0

    #@41
    :cond_6
    if-ge v0, v3, :cond_3

    #@43
    if-le v1, v4, :cond_3

    #@45
    if-ge v1, v5, :cond_3

    #@47
    goto :goto_0

    #@48
    :cond_7
    if-ge v0, v3, :cond_4

    #@4a
    if-le v1, v5, :cond_4

    #@4c
    if-ge v1, v6, :cond_4

    #@4e
    goto :goto_0
.end method

.method private isTileOnScreenX(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 7
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 1273
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@5
    move-result-object v5

    #@6
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@9
    move-result v5

    #@a
    div-int/lit16 v1, v5, 0x100

    #@c
    .line 1275
    .local v1, "equatorTiles":I
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@e
    if-ge v5, v1, :cond_1

    #@10
    move v0, v3

    #@11
    .line 1276
    .local v0, "allXTilesOnScreen":Z
    :goto_0
    if-nez v0, :cond_2

    #@13
    .line 1281
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@15
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@18
    move-result v5

    #@19
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@1b
    add-int/2addr v5, v6

    #@1c
    add-int/lit8 v5, v5, -0x1

    #@1e
    rem-int v2, v5, v1

    #@20
    .line 1284
    .local v2, "rightDisplayTileXIndex":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@22
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@25
    move-result v5

    #@26
    if-lt v5, v2, :cond_3

    #@28
    .line 1290
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@2b
    move-result v5

    #@2c
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2e
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@31
    move-result v6

    #@32
    if-lt v5, v6, :cond_6

    #@34
    :cond_0
    move v3, v4

    #@35
    :goto_1
    return v3

    #@36
    .end local v0    # "allXTilesOnScreen":Z
    .end local v2    # "rightDisplayTileXIndex":I
    :cond_1
    move v0, v4

    #@37
    .line 1275
    goto :goto_0

    #@38
    .line 1278
    .restart local v0    # "allXTilesOnScreen":Z
    :cond_2
    return v4

    #@39
    .line 1286
    .restart local v2    # "rightDisplayTileXIndex":I
    :cond_3
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@3c
    move-result v5

    #@3d
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@3f
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@42
    move-result v6

    #@43
    if-ge v5, v6, :cond_5

    #@45
    :goto_2
    move v4, v3

    #@46
    :cond_4
    return v4

    #@47
    :cond_5
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@4a
    move-result v5

    #@4b
    if-le v5, v2, :cond_4

    #@4d
    goto :goto_2

    #@4e
    .line 1290
    :cond_6
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@51
    move-result v5

    #@52
    if-le v5, v2, :cond_0

    #@54
    goto :goto_1
.end method

.method private isTileOnScreenY(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 4
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1261
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->notValid()Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@b
    move-result v1

    #@c
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@e
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@11
    move-result v2

    #@12
    if-lt v1, v2, :cond_0

    #@14
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@17
    move-result v1

    #@18
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@1a
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@1d
    move-result v2

    #@1e
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    #@20
    add-int/2addr v2, v3

    #@21
    if-ge v1, v2, :cond_0

    #@23
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method private load(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 12
    .param p1, "defaultCenter"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "defaultZoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 745
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@4
    move-result-object v10

    #@5
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@8
    move-result-object v10

    #@9
    const-string/jumbo v11, "Map info"

    #@c
    invoke-interface {v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readPreference(Ljava/lang/String;)[B

    #@f
    move-result-object v1

    #@10
    .local v1, "data":[B
    const/4 v8, 0x0

    #@11
    .local v8, "startPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    const/4 v9, 0x0

    #@12
    .line 749
    .local v9, "zoomLevel":I
    const/4 v6, 0x0

    #@13
    .local v6, "loadSuccess":Z
    const/4 v4, 0x0

    #@14
    .line 752
    .local v4, "flags":I
    if-nez v1, :cond_1

    #@16
    .line 773
    .end local v8    # "startPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_0
    :goto_0
    if-nez v6, :cond_2

    #@18
    .line 787
    new-instance v10, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@1a
    invoke-direct {v10, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    #@1d
    invoke-virtual {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    #@20
    .line 789
    :goto_1
    return-void

    #@21
    .line 754
    .restart local v8    # "startPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_1
    :try_start_0
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    #@24
    move-result-object v2

    #@25
    .line 756
    .local v2, "dis":Ljava/io/DataInput;
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedShort()I

    #@28
    move-result v5

    #@29
    .local v5, "formatVersion":I
    const/4 v10, 0x2

    #@2a
    .line 757
    if-ne v5, v10, :cond_0

    #@2c
    .line 758
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readPoint(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@2f
    move-result-object v8

    #@30
    .line 759
    .local v8, "startPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-interface {v2}, Ljava/io/DataInput;->readInt()I

    #@33
    move-result v9

    #@34
    .line 760
    invoke-interface {v2}, Ljava/io/DataInput;->readUnsignedByte()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    move-result v4

    #@38
    .line 762
    const/4 v6, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 770
    .end local v2    # "dis":Ljava/io/DataInput;
    .end local v5    # "formatVersion":I
    .end local v8    # "startPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :catch_0
    move-exception v3

    #@3b
    .local v3, "e":Ljava/io/IOException;
    const-string/jumbo v10, "MAP"

    #@3e
    .line 767
    invoke-static {v10, v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@41
    .line 768
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@44
    move-result-object v10

    #@45
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@48
    move-result-object v10

    #@49
    const-string/jumbo v11, "Map info"

    #@4c
    invoke-interface {v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    #@4f
    goto :goto_0

    #@50
    .line 776
    .end local v3    # "e":Ljava/io/IOException;
    :cond_2
    and-int/lit8 v10, v4, 0x1

    #@52
    if-nez v10, :cond_3

    #@54
    .line 778
    and-int/lit8 v10, v4, 0x2

    #@56
    if-nez v10, :cond_4

    #@58
    const/4 v7, 0x0

    #@59
    .line 783
    .local v7, "mapMode":I
    :goto_2
    and-int/lit8 v10, v4, 0x4

    #@5b
    if-nez v10, :cond_5

    #@5d
    .line 784
    .local v0, "bicyclingLayerEnabled":Z
    :goto_3
    new-instance v10, Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@5f
    invoke-static {v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapInitialZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    #@62
    move-result v11

    #@63
    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    #@66
    move-result v11

    #@67
    invoke-static {v11}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@6a
    move-result-object v11

    #@6b
    invoke-direct {v10, v8, v11, v7, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;-><init>(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;IZ)V

    #@6e
    invoke-virtual {p0, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    #@71
    goto :goto_1

    #@72
    .end local v0    # "bicyclingLayerEnabled":Z
    .end local v7    # "mapMode":I
    :cond_3
    const/4 v7, 0x1

    #@73
    .line 777
    .restart local v7    # "mapMode":I
    goto :goto_2

    #@74
    .end local v7    # "mapMode":I
    :cond_4
    const/4 v7, 0x2

    #@75
    .line 779
    .restart local v7    # "mapMode":I
    goto :goto_2

    #@76
    :cond_5
    const/4 v0, 0x1

    #@77
    .line 783
    goto :goto_3
.end method

.method private logIfPreCached(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 6
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@0
    .prologue
    .line 1069
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getIsPreCached()Z

    #@3
    move-result v2

    #@4
    if-nez v2, :cond_1

    #@6
    .line 1075
    :cond_0
    :goto_0
    return-void

    #@7
    .line 1069
    :cond_1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    #@a
    move-result v2

    #@b
    const/4 v3, 0x1

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 1070
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@19
    move-result-wide v0

    #@1a
    .local v0, "now":J
    const-string/jumbo v2, "pc"

    #@1d
    .line 1071
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    const-string/jumbo v4, ""

    #@25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getFirstPaintTime()J

    #@2c
    move-result-wide v4

    #@2d
    sub-long v4, v0, v4

    #@2f
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@32
    move-result-object v3

    #@33
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    const/16 v4, 0x16

    #@39
    invoke-static {v4, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@3c
    goto :goto_0
.end method

.method private logPerceivedTileLatency(I)V
    .locals 11
    .param p1, "tilesDrawn"    # I

    #@0
    .prologue
    const/16 v10, 0x16

    #@2
    .line 997
    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    #@4
    const-wide v8, 0x7fffffffffffffffL

    #@9
    cmp-long v5, v6, v8

    #@b
    if-nez v5, :cond_0

    #@d
    .line 998
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@f
    .line 999
    return-void

    #@10
    .line 1004
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    #@13
    move-result v5

    #@14
    int-to-byte v1, v5

    #@15
    .line 1005
    .local v1, "tileFlags":B
    packed-switch v1, :pswitch_data_0

    #@18
    .line 1023
    :pswitch_0
    and-int/lit8 v5, v1, -0x80

    #@1a
    if-nez v5, :cond_2

    #@1c
    .line 1033
    return-void

    #@1d
    :pswitch_1
    const-string/jumbo v4, "s"

    #@20
    .line 1036
    .local v4, "tileType":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@23
    move-result-object v5

    #@24
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@27
    move-result-object v5

    #@28
    invoke-interface {v5}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@2b
    move-result-wide v6

    #@2c
    iget-wide v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    #@2e
    sub-long v2, v6, v8

    #@30
    .line 1040
    .local v2, "latency":J
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@32
    if-eqz v5, :cond_3

    #@34
    .line 1048
    :goto_1
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@36
    if-lt v5, p1, :cond_4

    #@38
    .line 1056
    :cond_1
    :goto_2
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@3a
    .line 1057
    return-void

    #@3b
    .end local v2    # "latency":J
    .end local v4    # "tileType":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v4, "h"

    #@3e
    .line 1011
    .restart local v4    # "tileType":Ljava/lang/String;
    goto :goto_0

    #@3f
    .end local v4    # "tileType":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v4, "n"

    #@42
    .line 1015
    .restart local v4    # "tileType":Ljava/lang/String;
    goto :goto_0

    #@43
    .end local v4    # "tileType":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v4, "m"

    #@46
    .line 1019
    .restart local v4    # "tileType":Ljava/lang/String;
    goto :goto_0

    #@47
    .line 1027
    .end local v4    # "tileType":Ljava/lang/String;
    :cond_2
    return-void

    #@48
    .line 1041
    .restart local v2    # "latency":J
    .restart local v4    # "tileType":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@4a
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@4d
    const-string/jumbo v6, "tf"

    #@50
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    move-result-object v5

    #@54
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v5

    #@58
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5b
    move-result-object v5

    #@5c
    new-instance v6, Ljava/lang/StringBuilder;

    #@5e
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@61
    const-string/jumbo v7, ""

    #@64
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v6

    #@68
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@6b
    move-result-object v6

    #@6c
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6f
    move-result-object v6

    #@70
    invoke-static {v10, v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@73
    .line 1044
    const/4 v5, 0x1

    #@74
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    #@76
    goto :goto_1

    #@77
    .line 1048
    :cond_4
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@79
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@7b
    mul-int/2addr v5, v6

    #@7c
    if-ne p1, v5, :cond_1

    #@7e
    .line 1049
    iget-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    #@80
    if-nez v5, :cond_5

    #@82
    const-string/jumbo v0, "tp"

    #@85
    .line 1052
    .local v0, "eventType":Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/lang/StringBuilder;

    #@87
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@8a
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8d
    move-result-object v5

    #@8e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move-result-object v5

    #@92
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@95
    move-result-object v5

    #@96
    new-instance v6, Ljava/lang/StringBuilder;

    #@98
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@9b
    const-string/jumbo v7, ""

    #@9e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v6

    #@a2
    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@a5
    move-result-object v6

    #@a6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@a9
    move-result-object v6

    #@aa
    invoke-static {v10, v5, v6}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@ad
    goto :goto_2

    #@ae
    .end local v0    # "eventType":Ljava/lang/String;
    :cond_5
    const-string/jumbo v0, "tc"

    #@b1
    goto :goto_3

    #@b2
    .line 1005
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private precalculateTiles()V
    .locals 9

    #@0
    .prologue
    .line 521
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    if-nez v5, :cond_1

    #@4
    .line 533
    :cond_0
    return-void

    #@5
    :cond_1
    const/4 v1, 0x0

    #@6
    .line 523
    .local v1, "index":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    #@9
    move-result v5

    #@a
    int-to-byte v4, v5

    #@b
    .local v4, "tileFlags":B
    const/4 v0, 0x0

    #@c
    .line 526
    .local v0, "i":I
    :goto_0
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@e
    if-ge v0, v5, :cond_0

    #@10
    const/4 v3, 0x0

    #@11
    .line 527
    .local v3, "j":I
    :goto_1
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@13
    if-lt v3, v5, :cond_2

    #@15
    .line 526
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 528
    :cond_2
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@1a
    add-int/lit8 v2, v1, 0x1

    #@1c
    .end local v1    # "index":I
    .local v2, "index":I
    iget-object v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@1e
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXIndex()I

    #@21
    move-result v6

    #@22
    add-int/2addr v6, v0

    #@23
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@25
    invoke-virtual {v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYIndex()I

    #@28
    move-result v7

    #@29
    add-int/2addr v7, v3

    #@2a
    iget-object v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2c
    invoke-virtual {v8}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2f
    move-result-object v8

    #@30
    invoke-static {v4, v6, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@33
    move-result-object v6

    #@34
    aput-object v6, v5, v1

    #@36
    .line 527
    add-int/lit8 v3, v3, 0x1

    #@38
    move v1, v2

    #@39
    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_1
.end method

.method private updatePerceivedTileLatency(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V
    .locals 4
    .param p1, "mapTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@0
    .prologue
    .line 1061
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getCompletePaintCount()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x1

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 1065
    :goto_0
    return-void

    #@8
    .line 1062
    :cond_0
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getFirstPaintTime()J

    #@b
    move-result-wide v0

    #@c
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    #@e
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->earliestTileNeededTime:J

    #@14
    goto :goto_0
.end method

.method private updateTopLeftTile(ZZ)V
    .locals 4
    .param p1, "sizeChanged"    # Z
    .param p2, "displaySizeChanged"    # Z

    #@0
    .prologue
    .line 494
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    .line 495
    .local v1, "oldTopLeftTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@4
    .line 497
    .local v0, "oldTopLeftDisplayTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@6
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@8
    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@b
    move-result-object v2

    #@c
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@e
    .line 498
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@10
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    #@12
    invoke-virtual {p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@15
    move-result-object v2

    #@16
    iput-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@18
    .line 502
    if-eqz p1, :cond_2

    #@1a
    .line 503
    :cond_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->precalculateTiles()V

    #@1d
    .line 507
    :goto_0
    if-eqz p2, :cond_3

    #@1f
    .line 509
    :cond_1
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@21
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->notifyLayerTilesDirty()V

    #@24
    .line 511
    :goto_1
    return-void

    #@25
    .line 502
    :cond_2
    if-eqz v1, :cond_0

    #@27
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@29
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    goto :goto_0

    #@30
    .line 507
    :cond_3
    if-eqz v0, :cond_1

    #@32
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->topLeftDisplayTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@34
    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@37
    move-result v2

    #@38
    if-eqz v2, :cond_1

    #@3a
    goto :goto_1
.end method


# virtual methods
.method public canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Z)Z
    .locals 1
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "scaleImageOk"    # Z

    #@0
    .prologue
    .line 1536
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZLandroid_maps_conflict_avoidance/com/google/map/Zoom;)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public canCover(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;ZLandroid_maps_conflict_avoidance/com/google/map/Zoom;)Z
    .locals 4
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "scaleImageOk"    # Z
    .param p3, "zoomLevel"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1545
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    #@6
    move-result v3

    #@7
    invoke-static {v3, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v2, v3, v1, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getTile(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;IZZ)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@e
    move-result-object v0

    #@f
    .line 1549
    .local v0, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez p2, :cond_1

    #@11
    :cond_0
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@14
    move-result v2

    #@15
    if-nez v2, :cond_2

    #@17
    :goto_0
    return v1

    #@18
    :cond_1
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage()Z

    #@1b
    move-result v2

    #@1c
    if-eqz v2, :cond_0

    #@1e
    :cond_2
    const/4 v1, 0x1

    #@1f
    goto :goto_0
.end method

.method public close(Z)V
    .locals 1
    .param p1, "saveState"    # Z

    #@0
    .prologue
    .line 1312
    if-nez p1, :cond_0

    #@2
    .line 1315
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@4
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->close(Z)V

    #@7
    .line 1316
    return-void

    #@8
    .line 1313
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->saveState()V

    #@b
    goto :goto_0
.end method

.method public drawMap(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZZZZ)Z
    .locals 2
    .param p1, "g"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .param p2, "fetch"    # Z
    .param p3, "locationDisplayed"    # Z
    .param p4, "routeDisplayed"    # Z
    .param p5, "drawIncompleteTiles"    # Z
    .param p6, "drawFast"    # Z

    #@0
    .prologue
    .line 817
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@2
    if-nez v0, :cond_1

    #@4
    .line 818
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v1, "Map has zero size"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 817
    :cond_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@f
    if-eqz v0, :cond_0

    #@11
    .line 821
    if-nez p1, :cond_2

    #@13
    .line 825
    :goto_0
    invoke-direct {p0, p1, p2, p5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z

    #@16
    move-result v0

    #@17
    return v0

    #@18
    .line 822
    :cond_2
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->biller:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;

    #@1a
    invoke-virtual {v0, p3, p4, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapBiller;->doBilling(ZZLandroid_maps_conflict_avoidance/com/google/googlenav/map/Map;)V

    #@1d
    goto :goto_0
.end method

.method public getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1

    #@0
    .prologue
    .line 437
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getDisplayHeight()I
    .locals 1

    #@0
    .prologue
    .line 1679
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    #@2
    return v0
.end method

.method public getDisplayWidth()I
    .locals 1

    #@0
    .prologue
    .line 1683
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 1664
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@2
    return v0
.end method

.method public declared-synchronized getLatitudeSpan()I
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1480
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public getLatitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    .locals 6
    .param p1, "mapState"    # Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@0
    .prologue
    .line 1425
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@3
    move-result-object v1

    #@4
    .line 1426
    .local v1, "point":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@7
    move-result-object v3

    #@8
    .line 1427
    .local v3, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@a
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@c
    invoke-virtual {v1, v4, v5, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@f
    move-result-object v0

    #@10
    .line 1428
    .local v0, "lowerRight":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@12
    neg-int v4, v4

    #@13
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@15
    neg-int v5, v5

    #@16
    invoke-virtual {v1, v4, v5, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@19
    move-result-object v2

    #@1a
    .line 1429
    .local v2, "upperLeft":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    #@1d
    move-result v4

    #@1e
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitude()I

    #@21
    move-result v5

    #@22
    sub-int/2addr v4, v5

    #@23
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@26
    move-result v4

    #@27
    return v4
.end method

.method public getLongitudeSpan(Landroid_maps_conflict_avoidance/com/google/map/MapState;)I
    .locals 7
    .param p1, "mapState"    # Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@0
    .prologue
    .line 1468
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@3
    move-result-object v1

    #@4
    .line 1469
    .local v1, "point":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@7
    move-result-object v4

    #@8
    .line 1470
    .local v4, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@a
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@c
    invoke-virtual {v1, v5, v6, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@f
    move-result-object v0

    #@10
    .line 1471
    .local v0, "lowerRight":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@12
    neg-int v5, v5

    #@13
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@15
    neg-int v6, v6

    #@16
    invoke-virtual {v1, v5, v6, v4}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@19
    move-result-object v3

    #@1a
    .line 1472
    .local v3, "upperLeft":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    #@1d
    move-result v5

    #@1e
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitude()I

    #@21
    move-result v6

    #@22
    sub-int v2, v5, v6

    #@24
    .line 1473
    .local v2, "span":I
    if-ltz v2, :cond_0

    #@26
    .line 1476
    :goto_0
    return v2

    #@27
    :cond_0
    const v5, 0x15752a00

    #@2a
    .line 1474
    add-int/2addr v2, v5

    #@2b
    goto :goto_0
.end method

.method public getMapState()Landroid_maps_conflict_avoidance/com/google/map/MapState;
    .locals 1

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    return-object v0
.end method

.method public getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I
    .locals 3
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1689
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isSatellite()Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_0

    #@7
    .line 1697
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@9
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getMapMode()I

    #@c
    move-result v1

    #@d
    const/4 v2, 0x2

    #@e
    if-eq v1, v2, :cond_1

    #@10
    .line 1709
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x3

    #@15
    if-eq v1, v2, :cond_2

    #@17
    .line 1712
    .local v0, "extra":I
    :goto_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    #@1a
    move-result v1

    #@1b
    if-nez v1, :cond_3

    #@1d
    .line 1717
    add-int/lit8 v1, v0, 0x14

    #@1f
    return v1

    #@20
    .end local v0    # "extra":I
    :cond_0
    const/16 v1, 0x16

    #@22
    .line 1694
    return v1

    #@23
    :cond_1
    const/16 v1, 0x10

    #@25
    .line 1698
    return v1

    #@26
    :cond_2
    const/4 v0, 0x1

    #@27
    .line 1709
    goto :goto_0

    #@28
    .line 1713
    .restart local v0    # "extra":I
    :cond_3
    add-int/lit8 v1, v0, 0x12

    #@2a
    return v1
.end method

.method public getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .locals 1
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    .line 634
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    #@2
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    #@5
    .line 635
    .local v0, "resultPoint":Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    #@8
    .line 636
    return-object v0
.end method

.method public getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V
    .locals 3
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "pixelResult"    # Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    #@0
    .prologue
    .line 640
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@9
    move-result v1

    #@a
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    #@c
    sub-int/2addr v1, v2

    #@d
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@f
    .line 644
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@11
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@18
    move-result v0

    #@19
    .line 645
    .local v0, "equatorPixels":I
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@1b
    neg-int v2, v0

    #@1c
    div-int/lit8 v2, v2, 0x2

    #@1e
    if-lt v1, v2, :cond_0

    #@20
    .line 647
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@22
    div-int/lit8 v2, v0, 0x2

    #@24
    if-gt v1, v2, :cond_1

    #@26
    .line 650
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@28
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@2f
    move-result v1

    #@30
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    #@32
    sub-int/2addr v1, v2

    #@33
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@35
    .line 651
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    #@37
    if-nez v1, :cond_2

    #@39
    .line 658
    :goto_1
    return-void

    #@3a
    .line 646
    :cond_0
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@3c
    add-int/2addr v1, v0

    #@3d
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@3f
    goto :goto_0

    #@40
    .line 648
    :cond_1
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@42
    sub-int/2addr v1, v0

    #@43
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@45
    goto :goto_0

    #@46
    .line 652
    :cond_2
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@48
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@4a
    add-int/2addr v1, v2

    #@4b
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@4d
    .line 653
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@4f
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@51
    add-int/2addr v1, v2

    #@52
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@54
    .line 654
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->pixelMapper:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;

    #@56
    invoke-interface {v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map$PixelMapper;->transformPoint(Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    #@59
    .line 655
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@5b
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@5d
    sub-int/2addr v1, v2

    #@5e
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@60
    .line 656
    iget v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@62
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@64
    sub-int/2addr v1, v2

    #@65
    iput v1, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@67
    goto :goto_1
.end method

.method public getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    .locals 1
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    .line 610
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    #@2
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;-><init>()V

    #@5
    .line 611
    .local v0, "pixelPoint":Landroid_maps_conflict_avoidance/com/google/common/geom/Point;
    invoke-virtual {p0, p1, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    #@8
    .line 612
    return-object v0
.end method

.method public getPointXY(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V
    .locals 2
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "pixelPoint"    # Landroid_maps_conflict_avoidance/com/google/common/geom/Point;

    #@0
    .prologue
    .line 616
    invoke-virtual {p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getPixelOffsetFromCenter(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/common/geom/Point;)V

    #@3
    .line 617
    iget v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@5
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    #@7
    add-int/2addr v0, v1

    #@8
    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->x:I

    #@a
    .line 618
    iget v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@c
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    #@e
    add-int/2addr v0, v1

    #@f
    iput v0, p2, Landroid_maps_conflict_avoidance/com/google/common/geom/Point;->y:I

    #@11
    .line 619
    return-void
.end method

.method public getTileFlags()B
    .locals 2

    #@0
    .prologue
    .line 1392
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlagsForMapMode()B

    #@3
    move-result v1

    #@4
    int-to-byte v0, v1

    #@5
    .line 1393
    .local v0, "tileFlags":B
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@7
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isBicyclingLayerEnabled()Z

    #@a
    move-result v1

    #@b
    if-nez v1, :cond_0

    #@d
    .line 1396
    :goto_0
    return v0

    #@e
    .line 1394
    :cond_0
    or-int/lit8 v1, v0, -0x80

    #@10
    int-to-byte v1, v1

    #@11
    int-to-byte v0, v1

    #@12
    goto :goto_0
.end method

.method getTopLeftTile(II)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 11
    .param p1, "numXTiles"    # I
    .param p2, "numYTiles"    # I

    #@0
    .prologue
    .line 462
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@5
    move-result-object v0

    #@6
    .line 463
    .local v0, "centerPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget-object v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@8
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@b
    move-result-object v8

    #@c
    .line 464
    .local v8, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-static {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@f
    move-result v9

    #@10
    div-int/lit8 v10, p1, 0x2

    #@12
    sub-int v4, v9, v10

    #@14
    .line 465
    .local v4, "xIndex":I
    invoke-static {v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@17
    move-result v9

    #@18
    div-int/lit8 v10, p2, 0x2

    #@1a
    sub-int v6, v9, v10

    #@1c
    .line 466
    .local v6, "yIndex":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    #@1f
    move-result v9

    #@20
    invoke-static {v9, v0, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@23
    move-result-object v1

    #@24
    .line 471
    .local v1, "centerTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    rem-int/lit8 v9, p1, 0x2

    #@26
    if-eqz v9, :cond_2

    #@28
    const/4 v5, 0x0

    #@29
    .line 472
    .local v5, "xTilesIsEven":Z
    :goto_0
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelX:I

    #@2b
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXPixelTopLeft()I

    #@2e
    move-result v10

    #@2f
    sub-int v2, v9, v10

    #@31
    .line 473
    .local v2, "centerXOffsetFromCenterTile":I
    if-nez v5, :cond_3

    #@33
    .line 477
    :cond_0
    :goto_1
    rem-int/lit8 v9, p2, 0x2

    #@35
    if-eqz v9, :cond_4

    #@37
    const/4 v7, 0x0

    #@38
    .line 478
    .local v7, "yTilesIsEven":Z
    :goto_2
    iget v9, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->centerPixelY:I

    #@3a
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYPixelTopLeft()I

    #@3d
    move-result v10

    #@3e
    sub-int v3, v9, v10

    #@40
    .line 479
    .local v3, "centerYOffsetFromCenterTile":I
    if-nez v7, :cond_5

    #@42
    .line 483
    :cond_1
    :goto_3
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getTileFlags()B

    #@45
    move-result v9

    #@46
    invoke-static {v9, v4, v6, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@49
    move-result-object v9

    #@4a
    return-object v9

    #@4b
    .end local v2    # "centerXOffsetFromCenterTile":I
    .end local v3    # "centerYOffsetFromCenterTile":I
    .end local v5    # "xTilesIsEven":Z
    .end local v7    # "yTilesIsEven":Z
    :cond_2
    const/4 v5, 0x1

    #@4c
    .line 471
    goto :goto_0

    #@4d
    .restart local v2    # "centerXOffsetFromCenterTile":I
    .restart local v5    # "xTilesIsEven":Z
    :cond_3
    const/16 v9, 0x80

    #@4f
    .line 473
    if-le v2, v9, :cond_0

    #@51
    .line 474
    add-int/lit8 v4, v4, 0x1

    #@53
    goto :goto_1

    #@54
    :cond_4
    const/4 v7, 0x1

    #@55
    .line 477
    goto :goto_2

    #@56
    .restart local v3    # "centerYOffsetFromCenterTile":I
    .restart local v7    # "yTilesIsEven":Z
    :cond_5
    const/16 v9, 0x80

    #@58
    .line 479
    if-le v3, v9, :cond_1

    #@5a
    .line 480
    add-int/lit8 v6, v6, 0x1

    #@5c
    goto :goto_3
.end method

.method public getWidth()I
    .locals 1

    #@0
    .prologue
    .line 1668
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@2
    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    #@0
    .prologue
    .line 433
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isSatellite()Z
    .locals 1

    #@0
    .prologue
    .line 1633
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isTileOnScreen(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z
    .locals 2
    .param p1, "tile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1250
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreenY(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    #@4
    move-result v1

    #@5
    if-nez v1, :cond_1

    #@7
    :cond_0
    :goto_0
    return v0

    #@8
    :cond_1
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isTileOnScreenX(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Z

    #@b
    move-result v1

    #@c
    if-eqz v1, :cond_0

    #@e
    const/4 v0, 0x1

    #@f
    goto :goto_0
.end method

.method public pause()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1319
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1323
    :goto_0
    return-void

    #@6
    .line 1320
    :cond_0
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    #@8
    .line 1321
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@a
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->pause()V

    #@d
    goto :goto_0
.end method

.method public declared-synchronized preLoad(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .locals 4
    .param p1, "newCenter"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 794
    :try_start_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@6
    move-result-object v0

    #@7
    .line 796
    .local v0, "oldCenter":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :try_start_1
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    #@a
    const/4 v1, 0x0

    #@b
    .line 797
    const/4 v2, 0x1

    #@c
    const/4 v3, 0x0

    #@d
    invoke-direct {p0, v1, v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->drawMapBackground(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;ZZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@10
    .line 799
    :try_start_2
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@13
    monitor-exit p0

    #@14
    .line 801
    return-void

    #@15
    .line 800
    :catchall_0
    move-exception v1

    #@16
    .line 799
    :try_start_3
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V

    #@19
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@1a
    .end local v0    # "oldCenter":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :catchall_1
    move-exception v1

    #@1b
    monitor-exit p0

    #@1c
    throw v1
.end method

.method public resize(II)V
    .locals 0
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    #@0
    .prologue
    .line 1337
    invoke-virtual {p0, p1, p2, p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->resize(IIII)V

    #@3
    .line 1338
    return-void
.end method

.method public resize(IIII)V
    .locals 10
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I
    .param p3, "newDisplayWidth"    # I
    .param p4, "newDisplayHeight"    # I

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 1341
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@4
    if-eq p1, v4, :cond_4

    #@6
    .line 1346
    :cond_0
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@8
    .line 1347
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@a
    .line 1348
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@c
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@e
    mul-int/2addr v4, v7

    #@f
    div-int/lit8 v4, v4, 0x4

    #@11
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@13
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@15
    mul-int/2addr v7, v8

    #@16
    div-int/lit8 v7, v7, 0x4

    #@18
    add-int/2addr v4, v7

    #@19
    int-to-double v8, v4

    #@1a
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    #@1d
    move-result-wide v8

    #@1e
    double-to-int v4, v8

    #@1f
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->cornerToCenterDist:I

    #@21
    .line 1349
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@23
    div-int/lit8 v4, v4, 0x2

    #@25
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfWidth:I

    #@27
    .line 1350
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@29
    div-int/lit8 v4, v4, 0x2

    #@2b
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfHeight:I

    #@2d
    .line 1352
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    #@2f
    .line 1353
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    #@31
    .line 1354
    div-int/lit8 v4, p3, 0x2

    #@33
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayWidth:I

    #@35
    .line 1355
    div-int/lit8 v4, p4, 0x2

    #@37
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->halfDisplayHeight:I

    #@39
    .line 1357
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@3b
    .line 1358
    .local v1, "oldXTiles":I
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@3d
    .line 1359
    .local v3, "oldYTiles":I
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@3f
    .line 1360
    .local v0, "oldXDisplayTiles":I
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    #@41
    .line 1362
    .local v2, "oldYDisplayTiles":I
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->width:I

    #@43
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    #@46
    move-result v4

    #@47
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@49
    .line 1363
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@4b
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    #@4e
    move-result v4

    #@4f
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@51
    .line 1364
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    #@54
    move-result v4

    #@55
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@57
    .line 1365
    invoke-static {p4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxTiles(I)I

    #@5a
    move-result v4

    #@5b
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    #@5d
    .line 1367
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@5f
    if-nez v4, :cond_5

    #@61
    .line 1368
    :cond_1
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@63
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@65
    mul-int/2addr v4, v7

    #@66
    new-array v4, v4, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@68
    iput-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tiles:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@6a
    .line 1370
    :goto_0
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@6c
    if-eq v1, v4, :cond_6

    #@6e
    :cond_2
    move v4, v6

    #@6f
    :goto_1
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xDisplayTiles:I

    #@71
    if-eq v0, v7, :cond_7

    #@73
    :cond_3
    :goto_2
    invoke-direct {p0, v4, v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updateTopLeftTile(ZZ)V

    #@76
    .line 1372
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@78
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapChanged()V

    #@7b
    .line 1373
    iput v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@7d
    .line 1374
    iput-boolean v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z

    #@7f
    .line 1375
    return-void

    #@80
    .line 1341
    .end local v0    # "oldXDisplayTiles":I
    .end local v1    # "oldXTiles":I
    .end local v2    # "oldYDisplayTiles":I
    .end local v3    # "oldYTiles":I
    :cond_4
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->height:I

    #@82
    if-ne p2, v4, :cond_0

    #@84
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayWidth:I

    #@86
    if-ne p3, v4, :cond_0

    #@88
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->displayHeight:I

    #@8a
    if-ne p4, v4, :cond_0

    #@8c
    .line 1343
    return-void

    #@8d
    .line 1367
    .restart local v0    # "oldXDisplayTiles":I
    .restart local v1    # "oldXTiles":I
    .restart local v2    # "oldYDisplayTiles":I
    .restart local v3    # "oldYTiles":I
    :cond_5
    mul-int v4, v1, v3

    #@8f
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->xTiles:I

    #@91
    iget v8, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@93
    mul-int/2addr v7, v8

    #@94
    if-ne v4, v7, :cond_1

    #@96
    goto :goto_0

    #@97
    .line 1370
    :cond_6
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yTiles:I

    #@99
    if-ne v3, v4, :cond_2

    #@9b
    move v4, v5

    #@9c
    goto :goto_1

    #@9d
    :cond_7
    iget v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->yDisplayTiles:I

    #@9f
    if-ne v2, v7, :cond_3

    #@a1
    move v6, v5

    #@a2
    goto :goto_2
.end method

.method public resume()V
    .locals 1

    #@0
    .prologue
    .line 1326
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1330
    :goto_0
    return-void

    #@5
    .line 1327
    :cond_0
    const/4 v0, 0x1

    #@6
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->running:Z

    #@8
    .line 1328
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@a
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->resume()V

    #@d
    goto :goto_0
.end method

.method public declared-synchronized saveState()V
    .locals 7

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 707
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3
    const/16 v5, 0xe

    #@5
    invoke-direct {v0, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@8
    .line 708
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    #@a
    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@d
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/4 v5, 0x2

    #@e
    .line 710
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    #@11
    .line 711
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@13
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@16
    move-result-object v5

    #@17
    invoke-static {v5, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V

    #@1a
    .line 712
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@1c
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1f
    move-result-object v5

    #@20
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@23
    move-result v5

    #@24
    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    #@27
    const/4 v4, 0x0

    #@28
    .line 715
    .local v4, "flags":I
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2a
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isSatellite()Z

    #@2d
    move-result v5

    #@2e
    if-nez v5, :cond_0

    #@30
    .line 717
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@32
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isTerrain()Z

    #@35
    move-result v5

    #@36
    if-nez v5, :cond_1

    #@38
    .line 720
    :goto_0
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3a
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->isBicyclingLayerEnabled()Z

    #@3d
    move-result v5

    #@3e
    if-nez v5, :cond_2

    #@40
    .line 723
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@43
    .line 725
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@46
    move-result-object v1

    #@47
    .local v1, "data":[B
    const/4 v2, 0x0

    #@48
    .local v2, "dos":Ljava/io/DataOutputStream;
    const/4 v0, 0x0

    #@49
    .line 728
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v5}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@50
    move-result-object v5

    #@51
    const-string/jumbo v6, "Map info"

    #@54
    invoke-interface {v5, v6, v1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->setPreference(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@57
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "data":[B
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "flags":I
    :goto_2
    monitor-exit p0

    #@58
    .line 734
    return-void

    #@59
    .line 716
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    .local v2, "dos":Ljava/io/DataOutputStream;
    .restart local v4    # "flags":I
    :cond_0
    const/4 v4, 0x1

    #@5a
    goto :goto_0

    #@5b
    .line 718
    :cond_1
    const/4 v4, 0x2

    #@5c
    goto :goto_0

    #@5d
    .line 721
    :cond_2
    or-int/lit8 v4, v4, 0x4

    #@5f
    goto :goto_1

    #@60
    .line 733
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    .end local v4    # "flags":I
    :catch_0
    move-exception v3

    #@61
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v5, "MAP"

    #@64
    .line 732
    invoke-static {v5, v3}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@67
    goto :goto_2

    #@68
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    #@69
    monitor-exit p0

    #@6a
    throw v5
.end method

.method public declared-synchronized setCenterPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)V
    .locals 1
    .param p1, "centerPoint"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 397
    if-nez p1, :cond_0

    #@3
    :goto_0
    monitor-exit p0

    #@4
    .line 400
    return-void

    #@5
    .line 398
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@7
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    goto :goto_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public setMapMode(I)V
    .locals 1
    .param p1, "mapMode"    # I

    #@0
    .prologue
    .line 1416
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@2
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(I)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V

    #@9
    .line 1417
    return-void
.end method

.method public declared-synchronized setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    .locals 3
    .param p1, "mapState"    # Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 409
    if-eqz p1, :cond_0

    #@3
    .line 412
    :try_start_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@5
    .line 415
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getCenterPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->getMaxMapZoomForPoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)I

    #@c
    move-result v0

    #@d
    .line 416
    .local v0, "maxMapZoom":I
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@10
    move-result-object v1

    #@11
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@14
    move-result v1

    #@15
    if-gt v1, v0, :cond_1

    #@17
    .line 421
    :goto_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->calculateCenterPixel()V

    #@1a
    .line 422
    const/4 v1, 0x0

    #@1b
    const/4 v2, 0x0

    #@1c
    invoke-direct {p0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->updateTopLeftTile(ZZ)V

    #@1f
    .line 423
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapService:Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;

    #@21
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->mapChanged()V

    #@24
    const/4 v1, 0x0

    #@25
    .line 424
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->completeTilesInViewport:I

    #@27
    .line 425
    const/4 v1, 0x0

    #@28
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->isViewportAllNew:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 426
    return-void

    #@2c
    .end local v0    # "maxMapZoom":I
    :cond_0
    monitor-exit p0

    #@2d
    .line 410
    return-void

    #@2e
    .line 418
    .restart local v0    # "maxMapZoom":I
    :cond_1
    :try_start_1
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@35
    move-result-object v1

    #@36
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@38
    goto :goto_0

    #@39
    .end local v0    # "maxMapZoom":I
    :catchall_0
    move-exception v1

    #@3a
    monitor-exit p0

    #@3b
    throw v1
.end method

.method public setTileOverlayRenderer(Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;)V
    .locals 0
    .param p1, "tileOverlayRenderer"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@0
    .prologue
    .line 1645
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->tileOverlayRenderer:Landroid_maps_conflict_avoidance/com/google/googlenav/map/TileOverlayRenderer;

    #@2
    .line 1646
    return-void
.end method

.method public declared-synchronized setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 1
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 403
    if-nez p1, :cond_0

    #@3
    :goto_0
    monitor-exit p0

    #@4
    .line 406
    return-void

    #@5
    .line 404
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@7
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapState;->newMapState(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setMapState(Landroid_maps_conflict_avoidance/com/google/map/MapState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    goto :goto_0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public declared-synchronized zoomToSpan(II)V
    .locals 1
    .param p1, "latSpanE6"    # I
    .param p2, "lonSpanE6"    # I

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 536
    :try_start_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->mapState:Landroid_maps_conflict_avoidance/com/google/map/MapState;

    #@3
    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->findZoom(IILandroid_maps_conflict_avoidance/com/google/map/MapState;)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Map;->setZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@a
    monitor-exit p0

    #@b
    .line 537
    return-void

    #@c
    :catchall_0
    move-exception v0

    #@d
    monitor-exit p0

    #@e
    throw v0
.end method
