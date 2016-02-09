.class public Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
.super Ljava/lang/Object;
.source "MapPoint.java"

# interfaces
.implements Landroid_maps_conflict_avoidance/com/google/map/Geometry;


# static fields
.field private static final PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field static mercatorValues:[I

.field static reverseMercatorValues:[I


# instance fields
.field private final latitudeE6:I

.field private final longitudeE6:I

.field private final pixelCoordX:I

.field private final pixelCoordY:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 61
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    #@3
    .line 62
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    #@5
    const/16 v0, 0x16

    #@7
    .line 71
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@d
    .line 72
    return-void
.end method

.method public constructor <init>(II)V
    .locals 1
    .param p1, "latitude"    # I
    .param p2, "longitude"    # I

    #@0
    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 127
    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustLongitude(I)I

    #@6
    move-result p2

    #@7
    const v0, 0x4c4b400

    #@a
    .line 128
    if-gt p1, v0, :cond_0

    #@c
    :goto_0
    const v0, -0x4c4b400

    #@f
    .line 132
    if-lt p1, v0, :cond_1

    #@11
    .line 136
    :goto_1
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@13
    .line 137
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@15
    .line 138
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@17
    invoke-static {p2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixelFromLon(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@1a
    move-result v0

    #@1b
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@1d
    .line 139
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1f
    invoke-static {p1, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixelFromLat(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@22
    move-result v0

    #@23
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@25
    .line 140
    return-void

    #@26
    :cond_0
    const p1, 0x4c4b400

    #@29
    .line 129
    goto :goto_0

    #@2a
    :cond_1
    const p1, -0x4c4b400

    #@2d
    .line 133
    goto :goto_1
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "zoomLevel"    # I

    #@0
    .prologue
    const/16 v2, 0x16

    #@2
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 151
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@8
    move-result-object v0

    #@9
    .line 152
    .local v0, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@c
    move-result v1

    #@d
    invoke-static {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelX(II)I

    #@10
    move-result p1

    #@11
    .line 153
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@14
    move-result v1

    #@15
    invoke-static {p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelY(II)I

    #@18
    move-result p2

    #@19
    .line 154
    invoke-virtual {v0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@1c
    move-result v1

    #@1d
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@1f
    .line 156
    invoke-virtual {v0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@22
    move-result v1

    #@23
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@25
    .line 158
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@27
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@29
    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@2c
    move-result v1

    #@2d
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@2f
    .line 159
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@31
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@33
    invoke-static {v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLongitudeFromX(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@36
    move-result v1

    #@37
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@39
    .line 160
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "pixelX"    # I
    .param p2, "pixelY"    # I
    .param p3, "zoomLevel"    # I
    .param p4, "latitude"    # I
    .param p5, "longitude"    # I

    #@0
    .prologue
    const/16 v2, 0x16

    #@2
    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 174
    invoke-static {p5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustLongitude(I)I

    #@8
    move-result p5

    #@9
    .line 175
    iput p4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@b
    .line 176
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@d
    .line 177
    invoke-static {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@10
    move-result-object v0

    #@11
    .line 178
    .local v0, "zoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@14
    move-result v1

    #@15
    invoke-static {p1, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelX(II)I

    #@18
    move-result p1

    #@19
    .line 179
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@1c
    move-result v1

    #@1d
    invoke-static {p2, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->adjustPixelY(II)I

    #@20
    move-result p2

    #@21
    .line 180
    invoke-virtual {v0, p1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@24
    move-result v1

    #@25
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@27
    .line 182
    invoke-virtual {v0, p2, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@2a
    move-result v1

    #@2b
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@2d
    .line 184
    return-void
.end method

.method private static adjustLongitude(I)I
    .locals 2
    .param p0, "longitude"    # I

    #@0
    .prologue
    const v1, 0x15752a00

    #@3
    :goto_0
    const v0, -0xaba9500

    #@6
    .line 80
    if-lt p0, v0, :cond_0

    #@8
    :goto_1
    const v0, 0xaba9500

    #@b
    .line 83
    if-gt p0, v0, :cond_1

    #@d
    .line 86
    return p0

    #@e
    .line 81
    :cond_0
    add-int/2addr p0, v1

    #@f
    goto :goto_0

    #@10
    .line 84
    :cond_1
    sub-int/2addr p0, v1

    #@11
    goto :goto_1
.end method

.method private static adjustPixelX(II)I
    .locals 0
    .param p0, "pixelX"    # I
    .param p1, "equatorPixels"    # I

    #@0
    .prologue
    .line 95
    :goto_0
    if-ge p0, p1, :cond_0

    #@2
    .line 98
    :goto_1
    if-ltz p0, :cond_1

    #@4
    .line 101
    return p0

    #@5
    .line 96
    :cond_0
    sub-int/2addr p0, p1

    #@6
    goto :goto_0

    #@7
    .line 99
    :cond_1
    add-int/2addr p0, p1

    #@8
    goto :goto_1
.end method

.method private static adjustPixelY(II)I
    .locals 1
    .param p0, "pixelY"    # I
    .param p1, "equatorPixels"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 111
    if-ltz p0, :cond_0

    #@3
    .line 113
    if-ge p0, p1, :cond_1

    #@5
    .line 116
    return p0

    #@6
    .line 112
    :cond_0
    return v0

    #@7
    .line 114
    :cond_1
    add-int/lit8 v0, p1, -0x1

    #@9
    return v0
.end method

.method private static getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 18
    .param p0, "y"    # I
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 417
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getReverseMercatorValues()[I

    #@3
    move-result-object v6

    #@4
    .line 419
    .local v6, "data":[I
    invoke-virtual/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@7
    move-result v11

    #@8
    div-int/lit8 v11, v11, 0x2

    #@a
    sub-int v11, v11, p0

    #@c
    move-object/from16 v0, p1

    #@e
    invoke-static {v11, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelsToMercator(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@11
    move-result v9

    #@12
    .line 420
    .local v9, "mercator":I
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    #@15
    move-result v11

    #@16
    const v12, 0x4c4b40

    #@19
    div-int/2addr v11, v12

    #@1a
    add-int/lit8 v7, v11, 0x1

    #@1c
    .line 423
    .local v7, "indexFloor":I
    array-length v11, v6

    #@1d
    add-int/lit8 v11, v11, -0x2

    #@1f
    if-ge v7, v11, :cond_0

    #@21
    .line 427
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    #@24
    move-result v11

    #@25
    const v12, 0x4c4b40

    #@28
    rem-int v10, v11, v12

    #@2a
    .line 428
    .local v10, "yDiff":I
    add-int/lit8 v11, v7, -0x1

    #@2c
    aget v11, v6, v11

    #@2e
    mul-int/lit8 v11, v11, -0x1

    #@30
    aget v12, v6, v7

    #@32
    mul-int/lit8 v12, v12, 0x3

    #@34
    add-int/2addr v11, v12

    #@35
    add-int/lit8 v12, v7, 0x1

    #@37
    aget v12, v6, v12

    #@39
    mul-int/lit8 v12, v12, 0x3

    #@3b
    sub-int/2addr v11, v12

    #@3c
    add-int/lit8 v12, v7, 0x2

    #@3e
    aget v12, v6, v12

    #@40
    add-int/2addr v11, v12

    #@41
    div-int/lit8 v2, v11, 0x6

    #@43
    .line 432
    .local v2, "cubicA":I
    add-int/lit8 v11, v7, -0x1

    #@45
    aget v11, v6, v11

    #@47
    mul-int/lit8 v11, v11, 0x3

    #@49
    aget v12, v6, v7

    #@4b
    mul-int/lit8 v12, v12, 0x6

    #@4d
    sub-int/2addr v11, v12

    #@4e
    add-int/lit8 v12, v7, 0x1

    #@50
    aget v12, v6, v12

    #@52
    mul-int/lit8 v12, v12, 0x3

    #@54
    add-int/2addr v11, v12

    #@55
    div-int/lit8 v3, v11, 0x6

    #@57
    .line 435
    .local v3, "cubicB":I
    add-int/lit8 v11, v7, -0x1

    #@59
    aget v11, v6, v11

    #@5b
    mul-int/lit8 v11, v11, -0x2

    #@5d
    aget v12, v6, v7

    #@5f
    mul-int/lit8 v12, v12, 0x3

    #@61
    sub-int/2addr v11, v12

    #@62
    add-int/lit8 v12, v7, 0x1

    #@64
    aget v12, v6, v12

    #@66
    mul-int/lit8 v12, v12, 0x6

    #@68
    add-int/2addr v11, v12

    #@69
    add-int/lit8 v12, v7, 0x2

    #@6b
    aget v12, v6, v12

    #@6d
    sub-int/2addr v11, v12

    #@6e
    div-int/lit8 v4, v11, 0x6

    #@70
    .line 439
    .local v4, "cubicC":I
    aget v5, v6, v7

    #@72
    .line 440
    .local v5, "cubicD":I
    int-to-long v12, v2

    #@73
    int-to-long v14, v10

    #@74
    mul-long/2addr v12, v14

    #@75
    int-to-long v14, v10

    #@76
    mul-long/2addr v12, v14

    #@77
    const-wide/32 v14, 0x4c4b40

    #@7a
    div-long/2addr v12, v14

    #@7b
    int-to-long v14, v10

    #@7c
    mul-long/2addr v12, v14

    #@7d
    const-wide/32 v14, 0x4c4b40

    #@80
    div-long/2addr v12, v14

    #@81
    const-wide/32 v14, 0x4c4b40

    #@84
    div-long/2addr v12, v14

    #@85
    int-to-long v14, v3

    #@86
    int-to-long v0, v10

    #@87
    move-wide/from16 v16, v0

    #@89
    mul-long v14, v14, v16

    #@8b
    int-to-long v0, v10

    #@8c
    move-wide/from16 v16, v0

    #@8e
    mul-long v14, v14, v16

    #@90
    const-wide/32 v16, 0x4c4b40

    #@93
    div-long v14, v14, v16

    #@95
    const-wide/32 v16, 0x4c4b40

    #@98
    div-long v14, v14, v16

    #@9a
    add-long/2addr v12, v14

    #@9b
    int-to-long v14, v4

    #@9c
    int-to-long v0, v10

    #@9d
    move-wide/from16 v16, v0

    #@9f
    mul-long v14, v14, v16

    #@a1
    const-wide/32 v16, 0x4c4b40

    #@a4
    div-long v14, v14, v16

    #@a6
    add-long/2addr v12, v14

    #@a7
    int-to-long v14, v5

    #@a8
    add-long/2addr v12, v14

    #@a9
    long-to-int v8, v12

    #@aa
    .local v8, "latitude":I
    const v11, 0x4c4b400

    #@ad
    .line 446
    if-gt v8, v11, :cond_2

    #@af
    .line 449
    :goto_0
    if-ltz v9, :cond_3

    #@b1
    .line 450
    :goto_1
    return v8

    #@b2
    .line 424
    .end local v2    # "cubicA":I
    .end local v3    # "cubicB":I
    .end local v4    # "cubicC":I
    .end local v5    # "cubicD":I
    .end local v8    # "latitude":I
    .end local v10    # "yDiff":I
    :cond_0
    if-gtz v9, :cond_1

    #@b4
    const v11, -0x4c4b400

    #@b7
    :goto_2
    return v11

    #@b8
    :cond_1
    const v11, 0x4c4b400

    #@bb
    goto :goto_2

    #@bc
    .restart local v2    # "cubicA":I
    .restart local v3    # "cubicB":I
    .restart local v4    # "cubicC":I
    .restart local v5    # "cubicD":I
    .restart local v8    # "latitude":I
    .restart local v10    # "yDiff":I
    :cond_2
    const v8, 0x4c4b400

    #@bf
    .line 447
    goto :goto_0

    #@c0
    .line 449
    :cond_3
    neg-int v8, v8

    #@c1
    goto :goto_1
.end method

.method private static getLongitudeFromX(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 4
    .param p0, "x"    # I
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 485
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@3
    move-result v0

    #@4
    div-int/lit8 v0, v0, 0x2

    #@6
    sub-int v0, p0, v0

    #@8
    int-to-long v0, v0

    #@9
    const-wide/32 v2, 0x15752a00

    #@c
    mul-long/2addr v0, v2

    #@d
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@10
    move-result v2

    #@11
    int-to-long v2, v2

    #@12
    div-long/2addr v0, v2

    #@13
    long-to-int v0, v0

    #@14
    return v0
.end method

.method public static getMapPointFromXY(III)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 1
    .param p0, "pixelX"    # I
    .param p1, "pixelY"    # I
    .param p2, "zoomLevel"    # I

    #@0
    .prologue
    .line 815
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@2
    invoke-direct {v0, p0, p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(III)V

    #@5
    return-object v0
.end method

.method private static getMercatorIndex(I)I
    .locals 2
    .param p0, "latitude"    # I

    #@0
    .prologue
    .line 639
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    #@3
    move-result v0

    #@4
    const v1, 0xf4240

    #@7
    div-int/2addr v0, v1

    #@8
    add-int/lit8 v0, v0, 0x1

    #@a
    return v0
.end method

.method private static getMercatorValues()[I
    .locals 4

    #@0
    .prologue
    .line 223
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 252
    .local v1, "mercbytes":[B
    :goto_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    #@6
    return-object v2

    #@7
    .end local v1    # "mercbytes":[B
    :cond_0
    const/16 v2, 0x54

    #@9
    .line 224
    new-array v2, v2, [I

    #@b
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    #@d
    const/16 v2, 0xfd

    #@f
    .line 227
    :try_start_0
    new-array v1, v2, [B

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, -0x1

    #@13
    aput-byte v3, v1, v2

    #@15
    const/4 v2, 0x1

    #@16
    const/16 v3, -0x10

    #@18
    aput-byte v3, v1, v2

    #@1a
    const/4 v2, 0x2

    #@1b
    const/16 v3, -0x43

    #@1d
    aput-byte v3, v1, v2

    #@1f
    const/4 v2, 0x3

    #@20
    const/16 v3, -0x73

    #@22
    aput-byte v3, v1, v2

    #@24
    const/4 v2, 0x4

    #@25
    const/16 v3, 0xf

    #@27
    aput-byte v3, v1, v2

    #@29
    const/4 v2, 0x5

    #@2a
    const/16 v3, 0x42

    #@2c
    aput-byte v3, v1, v2

    #@2e
    const/4 v2, 0x6

    #@2f
    const/16 v3, 0x73

    #@31
    aput-byte v3, v1, v2

    #@33
    const/4 v2, 0x7

    #@34
    const/16 v3, 0xf

    #@36
    aput-byte v3, v1, v2

    #@38
    const/16 v2, 0x8

    #@3a
    const/16 v3, 0x42

    #@3c
    aput-byte v3, v1, v2

    #@3e
    const/16 v2, 0x9

    #@40
    const/16 v3, 0x73

    #@42
    aput-byte v3, v1, v2

    #@44
    const/16 v2, 0xa

    #@46
    const/16 v3, 0xf

    #@48
    aput-byte v3, v1, v2

    #@4a
    const/16 v2, 0xb

    #@4c
    const/16 v3, 0x43

    #@4e
    aput-byte v3, v1, v2

    #@50
    const/16 v2, 0xc

    #@52
    const/16 v3, -0x5d

    #@54
    aput-byte v3, v1, v2

    #@56
    const/16 v2, 0xd

    #@58
    const/16 v3, 0xf

    #@5a
    aput-byte v3, v1, v2

    #@5c
    const/16 v2, 0xe

    #@5e
    const/16 v3, 0x46

    #@60
    aput-byte v3, v1, v2

    #@62
    const/16 v2, 0xf

    #@64
    const/4 v3, 0x6

    #@65
    aput-byte v3, v1, v2

    #@67
    const/16 v2, 0x10

    #@69
    const/16 v3, 0xf

    #@6b
    aput-byte v3, v1, v2

    #@6d
    const/16 v2, 0x11

    #@6f
    const/16 v3, 0x49

    #@71
    aput-byte v3, v1, v2

    #@73
    const/16 v2, 0x12

    #@75
    const/16 v3, -0x67

    #@77
    aput-byte v3, v1, v2

    #@79
    const/16 v2, 0x13

    #@7b
    const/16 v3, 0xf

    #@7d
    aput-byte v3, v1, v2

    #@7f
    const/16 v2, 0x14

    #@81
    const/16 v3, 0x4e

    #@83
    aput-byte v3, v1, v2

    #@85
    const/16 v2, 0x15

    #@87
    const/16 v3, 0x61

    #@89
    aput-byte v3, v1, v2

    #@8b
    const/16 v2, 0x16

    #@8d
    const/16 v3, 0xf

    #@8f
    aput-byte v3, v1, v2

    #@91
    const/16 v2, 0x17

    #@93
    const/16 v3, 0x54

    #@95
    aput-byte v3, v1, v2

    #@97
    const/16 v2, 0x18

    #@99
    const/16 v3, 0x5e

    #@9b
    aput-byte v3, v1, v2

    #@9d
    const/16 v2, 0x19

    #@9f
    const/16 v3, 0xf

    #@a1
    aput-byte v3, v1, v2

    #@a3
    const/16 v2, 0x1a

    #@a5
    const/16 v3, 0x5b

    #@a7
    aput-byte v3, v1, v2

    #@a9
    const/16 v2, 0x1b

    #@ab
    const/16 v3, -0x6d

    #@ad
    aput-byte v3, v1, v2

    #@af
    const/16 v2, 0x1c

    #@b1
    const/16 v3, 0xf

    #@b3
    aput-byte v3, v1, v2

    #@b5
    const/16 v2, 0x1d

    #@b7
    const/16 v3, 0x64

    #@b9
    aput-byte v3, v1, v2

    #@bb
    const/16 v2, 0x1e

    #@bd
    const/4 v3, 0x2

    #@be
    aput-byte v3, v1, v2

    #@c0
    const/16 v2, 0x1f

    #@c2
    const/16 v3, 0xf

    #@c4
    aput-byte v3, v1, v2

    #@c6
    const/16 v2, 0x20

    #@c8
    const/16 v3, 0x6d

    #@ca
    aput-byte v3, v1, v2

    #@cc
    const/16 v2, 0x21

    #@ce
    const/16 v3, -0x50

    #@d0
    aput-byte v3, v1, v2

    #@d2
    const/16 v2, 0x22

    #@d4
    const/16 v3, 0xf

    #@d6
    aput-byte v3, v1, v2

    #@d8
    const/16 v2, 0x23

    #@da
    const/16 v3, 0x78

    #@dc
    aput-byte v3, v1, v2

    #@de
    const/16 v2, 0x24

    #@e0
    const/16 v3, -0x61

    #@e2
    aput-byte v3, v1, v2

    #@e4
    const/16 v2, 0x25

    #@e6
    const/16 v3, 0xf

    #@e8
    aput-byte v3, v1, v2

    #@ea
    const/16 v2, 0x26

    #@ec
    const/16 v3, -0x7c

    #@ee
    aput-byte v3, v1, v2

    #@f0
    const/16 v2, 0x27

    #@f2
    const/16 v3, -0x2c

    #@f4
    aput-byte v3, v1, v2

    #@f6
    const/16 v2, 0x28

    #@f8
    const/16 v3, 0xf

    #@fa
    aput-byte v3, v1, v2

    #@fc
    const/16 v2, 0x29

    #@fe
    const/16 v3, -0x6e

    #@100
    aput-byte v3, v1, v2

    #@102
    const/16 v2, 0x2a

    #@104
    const/16 v3, 0x54

    #@106
    aput-byte v3, v1, v2

    #@108
    const/16 v2, 0x2b

    #@10a
    const/16 v3, 0xf

    #@10c
    aput-byte v3, v1, v2

    #@10e
    const/16 v2, 0x2c

    #@110
    const/16 v3, -0x5f

    #@112
    aput-byte v3, v1, v2

    #@114
    const/16 v2, 0x2d

    #@116
    const/16 v3, 0x26

    #@118
    aput-byte v3, v1, v2

    #@11a
    const/16 v2, 0x2e

    #@11c
    const/16 v3, 0xf

    #@11e
    aput-byte v3, v1, v2

    #@120
    const/16 v2, 0x2f

    #@122
    const/16 v3, -0x4f

    #@124
    aput-byte v3, v1, v2

    #@126
    const/16 v2, 0x30

    #@128
    const/16 v3, 0x4e

    #@12a
    aput-byte v3, v1, v2

    #@12c
    const/16 v2, 0x31

    #@12e
    const/16 v3, 0xf

    #@130
    aput-byte v3, v1, v2

    #@132
    const/16 v2, 0x32

    #@134
    const/16 v3, -0x3e

    #@136
    aput-byte v3, v1, v2

    #@138
    const/16 v2, 0x33

    #@13a
    const/16 v3, -0x2d

    #@13c
    aput-byte v3, v1, v2

    #@13e
    const/16 v2, 0x34

    #@140
    const/16 v3, 0xf

    #@142
    aput-byte v3, v1, v2

    #@144
    const/16 v2, 0x35

    #@146
    const/16 v3, -0x2b

    #@148
    aput-byte v3, v1, v2

    #@14a
    const/16 v2, 0x36

    #@14c
    const/16 v3, -0x43

    #@14e
    aput-byte v3, v1, v2

    #@150
    const/16 v2, 0x37

    #@152
    const/16 v3, 0xf

    #@154
    aput-byte v3, v1, v2

    #@156
    const/16 v2, 0x38

    #@158
    const/16 v3, -0x16

    #@15a
    aput-byte v3, v1, v2

    #@15c
    const/16 v2, 0x39

    #@15e
    const/16 v3, 0x15

    #@160
    aput-byte v3, v1, v2

    #@162
    const/16 v2, 0x3a

    #@164
    const/16 v3, 0xf

    #@166
    aput-byte v3, v1, v2

    #@168
    const/16 v2, 0x3b

    #@16a
    const/4 v3, -0x1

    #@16b
    aput-byte v3, v1, v2

    #@16d
    const/16 v2, 0x3c

    #@16f
    const/16 v3, -0x1f

    #@171
    aput-byte v3, v1, v2

    #@173
    const/16 v2, 0x3d

    #@175
    const/16 v3, 0x10

    #@177
    aput-byte v3, v1, v2

    #@179
    const/16 v2, 0x3e

    #@17b
    const/16 v3, 0x17

    #@17d
    aput-byte v3, v1, v2

    #@17f
    const/16 v2, 0x3f

    #@181
    const/16 v3, 0x2d

    #@183
    aput-byte v3, v1, v2

    #@185
    const/16 v2, 0x40

    #@187
    const/16 v3, 0x10

    #@189
    aput-byte v3, v1, v2

    #@18b
    const/16 v2, 0x41

    #@18d
    const/16 v3, 0x30

    #@18f
    aput-byte v3, v1, v2

    #@191
    const/16 v2, 0x42

    #@193
    const/4 v3, 0x1

    #@194
    aput-byte v3, v1, v2

    #@196
    const/16 v2, 0x43

    #@198
    const/16 v3, 0x10

    #@19a
    aput-byte v3, v1, v2

    #@19c
    const/16 v2, 0x44

    #@19e
    const/16 v3, 0x4a

    #@1a0
    aput-byte v3, v1, v2

    #@1a2
    const/16 v2, 0x45

    #@1a4
    const/16 v3, 0x6b

    #@1a6
    aput-byte v3, v1, v2

    #@1a8
    const/16 v2, 0x46

    #@1aa
    const/16 v3, 0x10

    #@1ac
    aput-byte v3, v1, v2

    #@1ae
    const/16 v2, 0x47

    #@1b0
    const/16 v3, 0x66

    #@1b2
    aput-byte v3, v1, v2

    #@1b4
    const/16 v2, 0x48

    #@1b6
    const/16 v3, 0x74

    #@1b8
    aput-byte v3, v1, v2

    #@1ba
    const/16 v2, 0x49

    #@1bc
    const/16 v3, 0x10

    #@1be
    aput-byte v3, v1, v2

    #@1c0
    const/16 v2, 0x4a

    #@1c2
    const/16 v3, -0x7c

    #@1c4
    aput-byte v3, v1, v2

    #@1c6
    const/16 v2, 0x4b

    #@1c8
    const/16 v3, 0x2b

    #@1ca
    aput-byte v3, v1, v2

    #@1cc
    const/16 v2, 0x4c

    #@1ce
    const/16 v3, 0x10

    #@1d0
    aput-byte v3, v1, v2

    #@1d2
    const/16 v2, 0x4d

    #@1d4
    const/16 v3, -0x5d

    #@1d6
    aput-byte v3, v1, v2

    #@1d8
    const/16 v2, 0x4e

    #@1da
    const/16 v3, -0x64

    #@1dc
    aput-byte v3, v1, v2

    #@1de
    const/16 v2, 0x4f

    #@1e0
    const/16 v3, 0x10

    #@1e2
    aput-byte v3, v1, v2

    #@1e4
    const/16 v2, 0x50

    #@1e6
    const/16 v3, -0x3c

    #@1e8
    aput-byte v3, v1, v2

    #@1ea
    const/16 v2, 0x51

    #@1ec
    const/16 v3, -0x29

    #@1ee
    aput-byte v3, v1, v2

    #@1f0
    const/16 v2, 0x52

    #@1f2
    const/16 v3, 0x10

    #@1f4
    aput-byte v3, v1, v2

    #@1f6
    const/16 v2, 0x53

    #@1f8
    const/16 v3, -0x19

    #@1fa
    aput-byte v3, v1, v2

    #@1fc
    const/16 v2, 0x54

    #@1fe
    const/16 v3, -0x13

    #@200
    aput-byte v3, v1, v2

    #@202
    const/16 v2, 0x55

    #@204
    const/16 v3, 0x11

    #@206
    aput-byte v3, v1, v2

    #@208
    const/16 v2, 0x56

    #@20a
    const/16 v3, 0xc

    #@20c
    aput-byte v3, v1, v2

    #@20e
    const/16 v2, 0x57

    #@210
    const/16 v3, -0x12

    #@212
    aput-byte v3, v1, v2

    #@214
    const/16 v2, 0x58

    #@216
    const/16 v3, 0x11

    #@218
    aput-byte v3, v1, v2

    #@21a
    const/16 v2, 0x59

    #@21c
    const/16 v3, 0x33

    #@21e
    aput-byte v3, v1, v2

    #@220
    const/16 v2, 0x5a

    #@222
    const/16 v3, -0x14

    #@224
    aput-byte v3, v1, v2

    #@226
    const/16 v2, 0x5b

    #@228
    const/16 v3, 0x11

    #@22a
    aput-byte v3, v1, v2

    #@22c
    const/16 v2, 0x5c

    #@22e
    const/16 v3, 0x5c

    #@230
    aput-byte v3, v1, v2

    #@232
    const/16 v2, 0x5d

    #@234
    const/4 v3, -0x4

    #@235
    aput-byte v3, v1, v2

    #@237
    const/16 v2, 0x5e

    #@239
    const/16 v3, 0x11

    #@23b
    aput-byte v3, v1, v2

    #@23d
    const/16 v2, 0x5f

    #@23f
    const/16 v3, -0x78

    #@241
    aput-byte v3, v1, v2

    #@243
    const/16 v2, 0x60

    #@245
    const/16 v3, 0x34

    #@247
    aput-byte v3, v1, v2

    #@249
    const/16 v2, 0x61

    #@24b
    const/16 v3, 0x11

    #@24d
    aput-byte v3, v1, v2

    #@24f
    const/16 v2, 0x62

    #@251
    const/16 v3, -0x4b

    #@253
    aput-byte v3, v1, v2

    #@255
    const/16 v2, 0x63

    #@257
    const/16 v3, -0x57

    #@259
    aput-byte v3, v1, v2

    #@25b
    const/16 v2, 0x64

    #@25d
    const/16 v3, 0x11

    #@25f
    aput-byte v3, v1, v2

    #@261
    const/16 v2, 0x65

    #@263
    const/16 v3, -0x1b

    #@265
    aput-byte v3, v1, v2

    #@267
    const/16 v2, 0x66

    #@269
    const/16 v3, 0x76

    #@26b
    aput-byte v3, v1, v2

    #@26d
    const/16 v2, 0x67

    #@26f
    const/16 v3, 0x12

    #@271
    aput-byte v3, v1, v2

    #@273
    const/16 v2, 0x68

    #@275
    const/16 v3, 0x17

    #@277
    aput-byte v3, v1, v2

    #@279
    const/16 v2, 0x69

    #@27b
    const/16 v3, -0x4c

    #@27d
    aput-byte v3, v1, v2

    #@27f
    const/16 v2, 0x6a

    #@281
    const/16 v3, 0x12

    #@283
    aput-byte v3, v1, v2

    #@285
    const/16 v2, 0x6b

    #@287
    const/16 v3, 0x4c

    #@289
    aput-byte v3, v1, v2

    #@28b
    const/16 v2, 0x6c

    #@28d
    const/16 v3, -0x7f

    #@28f
    aput-byte v3, v1, v2

    #@291
    const/16 v2, 0x6d

    #@293
    const/16 v3, 0x12

    #@295
    aput-byte v3, v1, v2

    #@297
    const/16 v2, 0x6e

    #@299
    const/16 v3, -0x7d

    #@29b
    aput-byte v3, v1, v2

    #@29d
    const/16 v2, 0x6f

    #@29f
    const/4 v3, -0x3

    #@2a0
    aput-byte v3, v1, v2

    #@2a2
    const/16 v2, 0x70

    #@2a4
    const/16 v3, 0x12

    #@2a6
    aput-byte v3, v1, v2

    #@2a8
    const/16 v2, 0x71

    #@2aa
    const/16 v3, -0x42

    #@2ac
    aput-byte v3, v1, v2

    #@2ae
    const/16 v2, 0x72

    #@2b0
    const/16 v3, 0x46

    #@2b2
    aput-byte v3, v1, v2

    #@2b4
    const/16 v2, 0x73

    #@2b6
    const/16 v3, 0x12

    #@2b8
    aput-byte v3, v1, v2

    #@2ba
    const/16 v2, 0x74

    #@2bc
    const/4 v3, -0x5

    #@2bd
    aput-byte v3, v1, v2

    #@2bf
    const/16 v2, 0x75

    #@2c1
    const/16 v3, -0x7c

    #@2c3
    aput-byte v3, v1, v2

    #@2c5
    const/16 v2, 0x76

    #@2c7
    const/16 v3, 0x13

    #@2c9
    aput-byte v3, v1, v2

    #@2cb
    const/16 v2, 0x77

    #@2cd
    const/16 v3, 0x3b

    #@2cf
    aput-byte v3, v1, v2

    #@2d1
    const/16 v2, 0x78

    #@2d3
    const/16 v3, -0x25

    #@2d5
    aput-byte v3, v1, v2

    #@2d7
    const/16 v2, 0x79

    #@2d9
    const/16 v3, 0x13

    #@2db
    aput-byte v3, v1, v2

    #@2dd
    const/16 v2, 0x7a

    #@2df
    const/16 v3, 0x7f

    #@2e1
    aput-byte v3, v1, v2

    #@2e3
    const/16 v2, 0x7b

    #@2e5
    const/16 v3, 0x77

    #@2e7
    aput-byte v3, v1, v2

    #@2e9
    const/16 v2, 0x7c

    #@2eb
    const/16 v3, 0x13

    #@2ed
    aput-byte v3, v1, v2

    #@2ef
    const/16 v2, 0x7d

    #@2f1
    const/16 v3, -0x3a

    #@2f3
    aput-byte v3, v1, v2

    #@2f5
    const/16 v2, 0x7e

    #@2f7
    const/16 v3, -0x7a

    #@2f9
    aput-byte v3, v1, v2

    #@2fb
    const/16 v2, 0x7f

    #@2fd
    const/16 v3, 0x14

    #@2ff
    aput-byte v3, v1, v2

    #@301
    const/16 v2, 0x80

    #@303
    const/16 v3, 0x11

    #@305
    aput-byte v3, v1, v2

    #@307
    const/16 v2, 0x81

    #@309
    const/16 v3, 0x38

    #@30b
    aput-byte v3, v1, v2

    #@30d
    const/16 v2, 0x82

    #@30f
    const/16 v3, 0x14

    #@311
    aput-byte v3, v1, v2

    #@313
    const/16 v2, 0x83

    #@315
    const/16 v3, 0x5f

    #@317
    aput-byte v3, v1, v2

    #@319
    const/16 v2, 0x84

    #@31b
    const/16 v3, -0x3c

    #@31d
    aput-byte v3, v1, v2

    #@31f
    const/16 v2, 0x85

    #@321
    const/16 v3, 0x14

    #@323
    aput-byte v3, v1, v2

    #@325
    const/16 v2, 0x86

    #@327
    const/16 v3, -0x4e

    #@329
    aput-byte v3, v1, v2

    #@32b
    const/16 v2, 0x87

    #@32d
    const/16 v3, 0x64

    #@32f
    aput-byte v3, v1, v2

    #@331
    const/16 v2, 0x88

    #@333
    const/16 v3, 0x15

    #@335
    aput-byte v3, v1, v2

    #@337
    const/16 v2, 0x89

    #@339
    const/16 v3, 0x9

    #@33b
    aput-byte v3, v1, v2

    #@33d
    const/16 v2, 0x8a

    #@33f
    const/16 v3, 0x57

    #@341
    aput-byte v3, v1, v2

    #@343
    const/16 v2, 0x8b

    #@345
    const/16 v3, 0x15

    #@347
    aput-byte v3, v1, v2

    #@349
    const/16 v2, 0x8c

    #@34b
    const/16 v3, 0x64

    #@34d
    aput-byte v3, v1, v2

    #@34f
    const/16 v2, 0x8d

    #@351
    const/16 v3, -0x1b

    #@353
    aput-byte v3, v1, v2

    #@355
    const/16 v2, 0x8e

    #@357
    const/16 v3, 0x15

    #@359
    aput-byte v3, v1, v2

    #@35b
    const/16 v2, 0x8f

    #@35d
    const/16 v3, -0x3b

    #@35f
    aput-byte v3, v1, v2

    #@361
    const/16 v2, 0x90

    #@363
    const/16 v3, 0x56

    #@365
    aput-byte v3, v1, v2

    #@367
    const/16 v2, 0x91

    #@369
    const/16 v3, 0x16

    #@36b
    aput-byte v3, v1, v2

    #@36d
    const/16 v2, 0x92

    #@36f
    const/16 v3, 0x2a

    #@371
    aput-byte v3, v1, v2

    #@373
    const/16 v2, 0x93

    #@375
    const/4 v3, -0x1

    #@376
    aput-byte v3, v1, v2

    #@378
    const/16 v2, 0x94

    #@37a
    const/16 v3, 0x16

    #@37c
    aput-byte v3, v1, v2

    #@37e
    const/16 v2, 0x95

    #@380
    const/16 v3, -0x6a

    #@382
    aput-byte v3, v1, v2

    #@384
    const/16 v2, 0x96

    #@386
    const/16 v3, 0x3a

    #@388
    aput-byte v3, v1, v2

    #@38a
    const/16 v2, 0x97

    #@38c
    const/16 v3, 0x17

    #@38e
    aput-byte v3, v1, v2

    #@390
    const/16 v2, 0x98

    #@392
    const/4 v3, 0x7

    #@393
    aput-byte v3, v1, v2

    #@395
    const/16 v2, 0x99

    #@397
    const/16 v3, 0x6d

    #@399
    aput-byte v3, v1, v2

    #@39b
    const/16 v2, 0x9a

    #@39d
    const/16 v3, 0x17

    #@39f
    aput-byte v3, v1, v2

    #@3a1
    const/16 v2, 0x9b

    #@3a3
    const/16 v3, 0x7f

    #@3a5
    aput-byte v3, v1, v2

    #@3a7
    const/16 v2, 0x9c

    #@3a9
    const/4 v3, 0x2

    #@3aa
    aput-byte v3, v1, v2

    #@3ac
    const/16 v2, 0x9d

    #@3ae
    const/16 v3, 0x17

    #@3b0
    aput-byte v3, v1, v2

    #@3b2
    const/16 v2, 0x9e

    #@3b4
    const/4 v3, -0x3

    #@3b5
    aput-byte v3, v1, v2

    #@3b7
    const/16 v2, 0x9f

    #@3b9
    const/16 v3, 0x75

    #@3bb
    aput-byte v3, v1, v2

    #@3bd
    const/16 v2, 0xa0

    #@3bf
    const/16 v3, 0x18

    #@3c1
    aput-byte v3, v1, v2

    #@3c3
    const/16 v2, 0xa1

    #@3c5
    const/16 v3, -0x7d

    #@3c7
    aput-byte v3, v1, v2

    #@3c9
    const/16 v2, 0xa2

    #@3cb
    const/16 v3, 0x48

    #@3cd
    aput-byte v3, v1, v2

    #@3cf
    const/16 v2, 0xa3

    #@3d1
    const/16 v3, 0x19

    #@3d3
    aput-byte v3, v1, v2

    #@3d5
    const/16 v2, 0xa4

    #@3d7
    const/16 v3, 0x11

    #@3d9
    aput-byte v3, v1, v2

    #@3db
    const/16 v2, 0xa5

    #@3dd
    const/16 v3, 0x14

    #@3df
    aput-byte v3, v1, v2

    #@3e1
    const/16 v2, 0xa6

    #@3e3
    const/16 v3, 0x19

    #@3e5
    aput-byte v3, v1, v2

    #@3e7
    const/16 v2, 0xa7

    #@3e9
    const/16 v3, -0x59

    #@3eb
    aput-byte v3, v1, v2

    #@3ed
    const/16 v2, 0xa8

    #@3ef
    const/16 v3, 0x78

    #@3f1
    aput-byte v3, v1, v2

    #@3f3
    const/16 v2, 0xa9

    #@3f5
    const/16 v3, 0x1a

    #@3f7
    aput-byte v3, v1, v2

    #@3f9
    const/16 v2, 0xaa

    #@3fb
    const/16 v3, 0x47

    #@3fd
    aput-byte v3, v1, v2

    #@3ff
    const/16 v2, 0xab

    #@401
    const/16 v3, 0x2e

    #@403
    aput-byte v3, v1, v2

    #@405
    const/16 v2, 0xac

    #@407
    const/16 v3, 0x1a

    #@409
    aput-byte v3, v1, v2

    #@40b
    const/16 v2, 0xad

    #@40d
    const/16 v3, -0xf

    #@40f
    aput-byte v3, v1, v2

    #@411
    const/16 v2, 0xae

    #@413
    const/4 v3, 0x3

    #@414
    aput-byte v3, v1, v2

    #@416
    const/16 v2, 0xaf

    #@418
    const/16 v3, 0x1b

    #@41a
    aput-byte v3, v1, v2

    #@41c
    const/16 v2, 0xb0

    #@41e
    const/16 v3, -0x5b

    #@420
    aput-byte v3, v1, v2

    #@422
    const/16 v2, 0xb1

    #@424
    const/16 v3, -0x27

    #@426
    aput-byte v3, v1, v2

    #@428
    const/16 v2, 0xb2

    #@42a
    const/16 v3, 0x1c

    #@42c
    aput-byte v3, v1, v2

    #@42e
    const/16 v2, 0xb3

    #@430
    const/16 v3, 0x66

    #@432
    aput-byte v3, v1, v2

    #@434
    const/16 v2, 0xb4

    #@436
    const/16 v3, -0x4d

    #@438
    aput-byte v3, v1, v2

    #@43a
    const/16 v2, 0xb5

    #@43c
    const/16 v3, 0x1d

    #@43e
    aput-byte v3, v1, v2

    #@440
    const/16 v2, 0xb6

    #@442
    const/16 v3, 0x34

    #@444
    aput-byte v3, v1, v2

    #@446
    const/16 v2, 0xb7

    #@448
    const/16 v3, -0x4d

    #@44a
    aput-byte v3, v1, v2

    #@44c
    const/16 v2, 0xb8

    #@44e
    const/16 v3, 0x1e

    #@450
    aput-byte v3, v1, v2

    #@452
    const/16 v2, 0xb9

    #@454
    const/16 v3, 0x11

    #@456
    aput-byte v3, v1, v2

    #@458
    const/16 v2, 0xba

    #@45a
    const/16 v3, 0x1f

    #@45c
    aput-byte v3, v1, v2

    #@45e
    const/16 v2, 0xbb

    #@460
    const/16 v3, 0x1e

    #@462
    aput-byte v3, v1, v2

    #@464
    const/16 v2, 0xbc

    #@466
    const/4 v3, -0x3

    #@467
    aput-byte v3, v1, v2

    #@469
    const/16 v2, 0xbd

    #@46b
    const/16 v3, 0x6f

    #@46d
    aput-byte v3, v1, v2

    #@46f
    const/16 v2, 0xbe

    #@471
    const/16 v3, 0x1f

    #@473
    aput-byte v3, v1, v2

    #@475
    const/16 v2, 0xbf

    #@477
    const/4 v3, -0x5

    #@478
    aput-byte v3, v1, v2

    #@47a
    const/16 v2, 0xc0

    #@47c
    const/16 v3, 0x4a

    #@47e
    aput-byte v3, v1, v2

    #@480
    const/16 v2, 0xc1

    #@482
    const/16 v3, 0x21

    #@484
    aput-byte v3, v1, v2

    #@486
    const/16 v2, 0xc2

    #@488
    const/16 v3, 0xc

    #@48a
    aput-byte v3, v1, v2

    #@48c
    const/16 v2, 0xc3

    #@48e
    const/16 v3, -0x69

    #@490
    aput-byte v3, v1, v2

    #@492
    const/16 v2, 0xc4

    #@494
    const/16 v3, 0x22

    #@496
    aput-byte v3, v1, v2

    #@498
    const/16 v2, 0xc5

    #@49a
    const/16 v3, 0x33

    #@49c
    aput-byte v3, v1, v2

    #@49e
    const/16 v2, 0xc6

    #@4a0
    const/16 v3, -0x78

    #@4a2
    aput-byte v3, v1, v2

    #@4a4
    const/16 v2, 0xc7

    #@4a6
    const/16 v3, 0x23

    #@4a8
    aput-byte v3, v1, v2

    #@4aa
    const/16 v2, 0xc8

    #@4ac
    const/16 v3, 0x72

    #@4ae
    aput-byte v3, v1, v2

    #@4b0
    const/16 v2, 0xc9

    #@4b2
    const/16 v3, -0x5b

    #@4b4
    aput-byte v3, v1, v2

    #@4b6
    const/16 v2, 0xca

    #@4b8
    const/16 v3, 0x24

    #@4ba
    aput-byte v3, v1, v2

    #@4bc
    const/16 v2, 0xcb

    #@4be
    const/16 v3, -0x34

    #@4c0
    aput-byte v3, v1, v2

    #@4c2
    const/16 v2, 0xcc

    #@4c4
    const/16 v3, -0x1e

    #@4c6
    aput-byte v3, v1, v2

    #@4c8
    const/16 v2, 0xcd

    #@4ca
    const/16 v3, 0x26

    #@4cc
    aput-byte v3, v1, v2

    #@4ce
    const/16 v2, 0xce

    #@4d0
    const/16 v3, 0x45

    #@4d2
    aput-byte v3, v1, v2

    #@4d4
    const/16 v2, 0xcf

    #@4d6
    const/16 v3, -0x4c

    #@4d8
    aput-byte v3, v1, v2

    #@4da
    const/16 v2, 0xd0

    #@4dc
    const/16 v3, 0x27

    #@4de
    aput-byte v3, v1, v2

    #@4e0
    const/16 v2, 0xd1

    #@4e2
    const/16 v3, -0x1f

    #@4e4
    aput-byte v3, v1, v2

    #@4e6
    const/16 v2, 0xd2

    #@4e8
    const/16 v3, 0x2a

    #@4ea
    aput-byte v3, v1, v2

    #@4ec
    const/16 v2, 0xd3

    #@4ee
    const/16 v3, 0x29

    #@4f0
    aput-byte v3, v1, v2

    #@4f2
    const/16 v2, 0xd4

    #@4f4
    const/16 v3, -0x5c

    #@4f6
    aput-byte v3, v1, v2

    #@4f8
    const/16 v2, 0xd5

    #@4fa
    const/16 v3, 0x19

    #@4fc
    aput-byte v3, v1, v2

    #@4fe
    const/16 v2, 0xd6

    #@500
    const/16 v3, 0x2b

    #@502
    aput-byte v3, v1, v2

    #@504
    const/16 v2, 0xd7

    #@506
    const/16 v3, -0x6c

    #@508
    aput-byte v3, v1, v2

    #@50a
    const/16 v2, 0xd8

    #@50c
    const/16 v3, 0x46

    #@50e
    aput-byte v3, v1, v2

    #@510
    const/16 v2, 0xd9

    #@512
    const/16 v3, 0x2d

    #@514
    aput-byte v3, v1, v2

    #@516
    const/16 v2, 0xda

    #@518
    const/16 v3, -0x48

    #@51a
    aput-byte v3, v1, v2

    #@51c
    const/16 v2, 0xdb

    #@51e
    const/16 v3, -0x5b

    #@520
    aput-byte v3, v1, v2

    #@522
    const/16 v2, 0xdc

    #@524
    const/16 v3, 0x30

    #@526
    aput-byte v3, v1, v2

    #@528
    const/16 v2, 0xdd

    #@52a
    const/16 v3, 0x19

    #@52c
    aput-byte v3, v1, v2

    #@52e
    const/16 v2, 0xde

    #@530
    const/16 v3, -0x54

    #@532
    aput-byte v3, v1, v2

    #@534
    const/16 v2, 0xdf

    #@536
    const/16 v3, 0x32

    #@538
    aput-byte v3, v1, v2

    #@53a
    const/16 v2, 0xe0

    #@53c
    const/16 v3, -0x3f

    #@53e
    aput-byte v3, v1, v2

    #@540
    const/16 v2, 0xe1

    #@542
    const/16 v3, -0x3f

    #@544
    aput-byte v3, v1, v2

    #@546
    const/16 v2, 0xe2

    #@548
    const/16 v3, 0x35

    #@54a
    aput-byte v3, v1, v2

    #@54c
    const/16 v2, 0xe3

    #@54e
    const/16 v3, -0x43

    #@550
    aput-byte v3, v1, v2

    #@552
    const/16 v2, 0xe4

    #@554
    const/16 v3, -0x2f

    #@556
    aput-byte v3, v1, v2

    #@558
    const/16 v2, 0xe5

    #@55a
    const/16 v3, 0x39

    #@55c
    aput-byte v3, v1, v2

    #@55e
    const/16 v2, 0xe6

    #@560
    const/16 v3, 0x1e

    #@562
    aput-byte v3, v1, v2

    #@564
    const/16 v2, 0xe7

    #@566
    const/16 v3, 0x1c

    #@568
    aput-byte v3, v1, v2

    #@56a
    const/16 v2, 0xe8

    #@56c
    const/16 v3, 0x3c

    #@56e
    aput-byte v3, v1, v2

    #@570
    const/16 v2, 0xe9

    #@572
    const/16 v3, -0x9

    #@574
    aput-byte v3, v1, v2

    #@576
    const/16 v2, 0xea

    #@578
    const/16 v3, 0x69

    #@57a
    aput-byte v3, v1, v2

    #@57c
    const/16 v2, 0xeb

    #@57e
    const/16 v3, 0x41

    #@580
    aput-byte v3, v1, v2

    #@582
    const/16 v2, 0xec

    #@584
    const/16 v3, 0x64

    #@586
    aput-byte v3, v1, v2

    #@588
    const/16 v2, 0xed

    #@58a
    const/16 v3, -0x60

    #@58c
    aput-byte v3, v1, v2

    #@58e
    const/16 v2, 0xee

    #@590
    const/16 v3, 0x46

    #@592
    aput-byte v3, v1, v2

    #@594
    const/16 v2, 0xef

    #@596
    const/16 v3, -0x77

    #@598
    aput-byte v3, v1, v2

    #@59a
    const/16 v2, 0xf0

    #@59c
    const/16 v3, 0x52

    #@59e
    aput-byte v3, v1, v2

    #@5a0
    const/16 v2, 0xf1

    #@5a2
    const/16 v3, 0x4c

    #@5a4
    aput-byte v3, v1, v2

    #@5a6
    const/16 v2, 0xf2

    #@5a8
    const/16 v3, -0x6b

    #@5aa
    aput-byte v3, v1, v2

    #@5ac
    const/16 v2, 0xf3

    #@5ae
    const/16 v3, 0x73

    #@5b0
    aput-byte v3, v1, v2

    #@5b2
    const/16 v2, 0xf4

    #@5b4
    const/16 v3, 0x53

    #@5b6
    aput-byte v3, v1, v2

    #@5b8
    const/16 v2, 0xf5

    #@5ba
    const/16 v3, -0x35

    #@5bc
    aput-byte v3, v1, v2

    #@5be
    const/16 v2, 0xf6

    #@5c0
    const/16 v3, 0x4f

    #@5c2
    aput-byte v3, v1, v2

    #@5c4
    const/16 v2, 0xf7

    #@5c6
    const/16 v3, 0x5c

    #@5c8
    aput-byte v3, v1, v2

    #@5ca
    const/16 v2, 0xf8

    #@5cc
    const/16 v3, -0x77

    #@5ce
    aput-byte v3, v1, v2

    #@5d0
    const/16 v2, 0xf9

    #@5d2
    const/16 v3, 0x34

    #@5d4
    aput-byte v3, v1, v2

    #@5d6
    const/16 v2, 0xfa

    #@5d8
    const/16 v3, 0x67

    #@5da
    aput-byte v3, v1, v2

    #@5dc
    const/16 v2, 0xfb

    #@5de
    const/16 v3, 0x5a

    #@5e0
    aput-byte v3, v1, v2

    #@5e2
    const/16 v2, 0xfc

    #@5e4
    const/16 v3, 0xc

    #@5e6
    aput-byte v3, v1, v2

    #@5e8
    .line 246
    .restart local v1    # "mercbytes":[B
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    #@5eb
    move-result-object v2

    #@5ec
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorValues:[I

    #@5ee
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readMercatorValues(Ljava/io/DataInput;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5f1
    goto/16 :goto_0

    #@5f3
    .line 249
    :catch_0
    move-exception v0

    #@5f4
    .line 248
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@5f6
    const-string/jumbo v3, "Can\'t read mercator.dat"

    #@5f9
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@5fc
    throw v2
.end method

.method private static getReverseMercatorValues()[I
    .locals 4

    #@0
    .prologue
    .line 351
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 398
    .local v1, "latBytes":[B
    :goto_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    #@6
    return-object v2

    #@7
    .end local v1    # "latBytes":[B
    :cond_0
    const/16 v2, 0x8d

    #@9
    .line 352
    new-array v2, v2, [I

    #@b
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    #@d
    const/16 v2, 0x1a8

    #@f
    .line 355
    :try_start_0
    new-array v1, v2, [B

    #@11
    const/4 v2, 0x0

    #@12
    const/4 v3, -0x1

    #@13
    aput-byte v3, v1, v2

    #@15
    const/4 v2, 0x1

    #@16
    const/16 v3, -0x1c

    #@18
    aput-byte v3, v1, v2

    #@1a
    const/4 v2, 0x2

    #@1b
    const/16 v3, -0x77

    #@1d
    aput-byte v3, v1, v2

    #@1f
    const/4 v2, 0x3

    #@20
    const/16 v3, -0x18

    #@22
    aput-byte v3, v1, v2

    #@24
    const/4 v2, 0x4

    #@25
    const/16 v3, 0x1b

    #@27
    aput-byte v3, v1, v2

    #@29
    const/4 v2, 0x5

    #@2a
    const/16 v3, 0x76

    #@2c
    aput-byte v3, v1, v2

    #@2e
    const/4 v2, 0x6

    #@2f
    const/16 v3, 0x18

    #@31
    aput-byte v3, v1, v2

    #@33
    const/4 v2, 0x7

    #@34
    const/16 v3, 0x1b

    #@36
    aput-byte v3, v1, v2

    #@38
    const/16 v2, 0x8

    #@3a
    const/16 v3, 0x76

    #@3c
    aput-byte v3, v1, v2

    #@3e
    const/16 v2, 0x9

    #@40
    const/16 v3, 0x18

    #@42
    aput-byte v3, v1, v2

    #@44
    const/16 v2, 0xa

    #@46
    const/16 v3, 0x1b

    #@48
    aput-byte v3, v1, v2

    #@4a
    const/16 v2, 0xb

    #@4c
    const/16 v3, 0x6f

    #@4e
    aput-byte v3, v1, v2

    #@50
    const/16 v2, 0xc

    #@52
    const/16 v3, 0x2a

    #@54
    aput-byte v3, v1, v2

    #@56
    const/16 v2, 0xd

    #@58
    const/16 v3, 0x1b

    #@5a
    aput-byte v3, v1, v2

    #@5c
    const/16 v2, 0xe

    #@5e
    const/16 v3, 0x61

    #@60
    aput-byte v3, v1, v2

    #@62
    const/16 v2, 0xf

    #@64
    const/16 v3, 0x55

    #@66
    aput-byte v3, v1, v2

    #@68
    const/16 v2, 0x10

    #@6a
    const/16 v3, 0x1b

    #@6c
    aput-byte v3, v1, v2

    #@6e
    const/16 v2, 0x11

    #@70
    const/16 v3, 0x4c

    #@72
    aput-byte v3, v1, v2

    #@74
    const/16 v2, 0x12

    #@76
    const/16 v3, -0x52

    #@78
    aput-byte v3, v1, v2

    #@7a
    const/16 v2, 0x13

    #@7c
    const/16 v3, 0x1b

    #@7e
    aput-byte v3, v1, v2

    #@80
    const/16 v2, 0x14

    #@82
    const/16 v3, 0x31

    #@84
    aput-byte v3, v1, v2

    #@86
    const/16 v2, 0x15

    #@88
    const/16 v3, 0x4b

    #@8a
    aput-byte v3, v1, v2

    #@8c
    const/16 v2, 0x16

    #@8e
    const/16 v3, 0x1b

    #@90
    aput-byte v3, v1, v2

    #@92
    const/16 v2, 0x17

    #@94
    const/16 v3, 0xf

    #@96
    aput-byte v3, v1, v2

    #@98
    const/16 v2, 0x18

    #@9a
    const/16 v3, 0x4f

    #@9c
    aput-byte v3, v1, v2

    #@9e
    const/16 v2, 0x19

    #@a0
    const/16 v3, 0x1a

    #@a2
    aput-byte v3, v1, v2

    #@a4
    const/16 v2, 0x1a

    #@a6
    const/16 v3, -0x1a

    #@a8
    aput-byte v3, v1, v2

    #@aa
    const/16 v2, 0x1b

    #@ac
    const/16 v3, -0x1a

    #@ae
    aput-byte v3, v1, v2

    #@b0
    const/16 v2, 0x1c

    #@b2
    const/16 v3, 0x1a

    #@b4
    aput-byte v3, v1, v2

    #@b6
    const/16 v2, 0x1d

    #@b8
    const/16 v3, -0x48

    #@ba
    aput-byte v3, v1, v2

    #@bc
    const/16 v2, 0x1e

    #@be
    const/16 v3, 0x3d

    #@c0
    aput-byte v3, v1, v2

    #@c2
    const/16 v2, 0x1f

    #@c4
    const/16 v3, 0x1a

    #@c6
    aput-byte v3, v1, v2

    #@c8
    const/16 v2, 0x20

    #@ca
    const/16 v3, -0x7d

    #@cc
    aput-byte v3, v1, v2

    #@ce
    const/16 v2, 0x21

    #@d0
    const/16 v3, -0x72

    #@d2
    aput-byte v3, v1, v2

    #@d4
    const/16 v2, 0x22

    #@d6
    const/16 v3, 0x1a

    #@d8
    aput-byte v3, v1, v2

    #@da
    const/16 v2, 0x23

    #@dc
    const/16 v3, 0x49

    #@de
    aput-byte v3, v1, v2

    #@e0
    const/16 v2, 0x24

    #@e2
    const/16 v3, 0x16

    #@e4
    aput-byte v3, v1, v2

    #@e6
    const/16 v2, 0x25

    #@e8
    const/16 v3, 0x1a

    #@ea
    aput-byte v3, v1, v2

    #@ec
    const/16 v2, 0x26

    #@ee
    const/16 v3, 0x9

    #@f0
    aput-byte v3, v1, v2

    #@f2
    const/16 v2, 0x27

    #@f4
    const/16 v3, 0x19

    #@f6
    aput-byte v3, v1, v2

    #@f8
    const/16 v2, 0x28

    #@fa
    const/16 v3, 0x19

    #@fc
    aput-byte v3, v1, v2

    #@fe
    const/16 v2, 0x29

    #@100
    const/16 v3, -0x3d

    #@102
    aput-byte v3, v1, v2

    #@104
    const/16 v2, 0x2a

    #@106
    const/16 v3, -0x23

    #@108
    aput-byte v3, v1, v2

    #@10a
    const/16 v2, 0x2b

    #@10c
    const/16 v3, 0x19

    #@10e
    aput-byte v3, v1, v2

    #@110
    const/16 v2, 0x2c

    #@112
    const/16 v3, 0x79

    #@114
    aput-byte v3, v1, v2

    #@116
    const/16 v2, 0x2d

    #@118
    const/16 v3, -0x51

    #@11a
    aput-byte v3, v1, v2

    #@11c
    const/16 v2, 0x2e

    #@11e
    const/16 v3, 0x19

    #@120
    aput-byte v3, v1, v2

    #@122
    const/16 v2, 0x2f

    #@124
    const/16 v3, 0x2a

    #@126
    aput-byte v3, v1, v2

    #@128
    const/16 v2, 0x30

    #@12a
    const/16 v3, -0x22

    #@12c
    aput-byte v3, v1, v2

    #@12e
    const/16 v2, 0x31

    #@130
    const/16 v3, 0x18

    #@132
    aput-byte v3, v1, v2

    #@134
    const/16 v2, 0x32

    #@136
    const/16 v3, -0x29

    #@138
    aput-byte v3, v1, v2

    #@13a
    const/16 v2, 0x33

    #@13c
    const/16 v3, -0x46

    #@13e
    aput-byte v3, v1, v2

    #@140
    const/16 v2, 0x34

    #@142
    const/16 v3, 0x18

    #@144
    aput-byte v3, v1, v2

    #@146
    const/16 v2, 0x35

    #@148
    const/16 v3, -0x80

    #@14a
    aput-byte v3, v1, v2

    #@14c
    const/16 v2, 0x36

    #@14e
    const/16 v3, -0x67

    #@150
    aput-byte v3, v1, v2

    #@152
    const/16 v2, 0x37

    #@154
    const/16 v3, 0x18

    #@156
    aput-byte v3, v1, v2

    #@158
    const/16 v2, 0x38

    #@15a
    const/16 v3, 0x25

    #@15c
    aput-byte v3, v1, v2

    #@15e
    const/16 v2, 0x39

    #@160
    const/16 v3, -0x33

    #@162
    aput-byte v3, v1, v2

    #@164
    const/16 v2, 0x3a

    #@166
    const/16 v3, 0x17

    #@168
    aput-byte v3, v1, v2

    #@16a
    const/16 v2, 0x3b

    #@16c
    const/16 v3, -0x39

    #@16e
    aput-byte v3, v1, v2

    #@170
    const/16 v2, 0x3c

    #@172
    const/16 v3, -0x52

    #@174
    aput-byte v3, v1, v2

    #@176
    const/16 v2, 0x3d

    #@178
    const/16 v3, 0x17

    #@17a
    aput-byte v3, v1, v2

    #@17c
    const/16 v2, 0x3e

    #@17e
    const/16 v3, 0x66

    #@180
    aput-byte v3, v1, v2

    #@182
    const/16 v2, 0x3f

    #@184
    const/16 v3, -0x73

    #@186
    aput-byte v3, v1, v2

    #@188
    const/16 v2, 0x40

    #@18a
    const/16 v3, 0x17

    #@18c
    aput-byte v3, v1, v2

    #@18e
    const/16 v2, 0x41

    #@190
    const/4 v3, 0x2

    #@191
    aput-byte v3, v1, v2

    #@193
    const/16 v2, 0x42

    #@195
    const/16 v3, -0x40

    #@197
    aput-byte v3, v1, v2

    #@199
    const/16 v2, 0x43

    #@19b
    const/16 v3, 0x16

    #@19d
    aput-byte v3, v1, v2

    #@19f
    const/16 v2, 0x44

    #@1a1
    const/16 v3, -0x64

    #@1a3
    aput-byte v3, v1, v2

    #@1a5
    const/16 v2, 0x45

    #@1a7
    const/16 v3, -0x65

    #@1a9
    aput-byte v3, v1, v2

    #@1ab
    const/16 v2, 0x46

    #@1ad
    const/16 v3, 0x16

    #@1af
    aput-byte v3, v1, v2

    #@1b1
    const/16 v2, 0x47

    #@1b3
    const/16 v3, 0x34

    #@1b5
    aput-byte v3, v1, v2

    #@1b7
    const/16 v2, 0x48

    #@1b9
    const/16 v3, 0x6d

    #@1bb
    aput-byte v3, v1, v2

    #@1bd
    const/16 v2, 0x49

    #@1bf
    const/16 v3, 0x15

    #@1c1
    aput-byte v3, v1, v2

    #@1c3
    const/16 v2, 0x4a

    #@1c5
    const/16 v3, -0x36

    #@1c7
    aput-byte v3, v1, v2

    #@1c9
    const/16 v2, 0x4b

    #@1cb
    const/16 v3, -0x7a

    #@1cd
    aput-byte v3, v1, v2

    #@1cf
    const/16 v2, 0x4c

    #@1d1
    const/16 v3, 0x15

    #@1d3
    aput-byte v3, v1, v2

    #@1d5
    const/16 v2, 0x4d

    #@1d7
    const/16 v3, 0x5f

    #@1d9
    aput-byte v3, v1, v2

    #@1db
    const/16 v2, 0x4e

    #@1dd
    const/16 v3, 0x30

    #@1df
    aput-byte v3, v1, v2

    #@1e1
    const/16 v2, 0x4f

    #@1e3
    const/16 v3, 0x14

    #@1e5
    aput-byte v3, v1, v2

    #@1e7
    const/16 v2, 0x50

    #@1e9
    const/16 v3, -0xe

    #@1eb
    aput-byte v3, v1, v2

    #@1ed
    const/16 v2, 0x51

    #@1ef
    const/16 v3, -0x48

    #@1f1
    aput-byte v3, v1, v2

    #@1f3
    const/16 v2, 0x52

    #@1f5
    const/16 v3, 0x14

    #@1f7
    aput-byte v3, v1, v2

    #@1f9
    const/16 v2, 0x53

    #@1fb
    const/16 v3, -0x7b

    #@1fd
    aput-byte v3, v1, v2

    #@1ff
    const/16 v2, 0x54

    #@201
    const/16 v3, 0x61

    #@203
    aput-byte v3, v1, v2

    #@205
    const/16 v2, 0x55

    #@207
    const/16 v3, 0x14

    #@209
    aput-byte v3, v1, v2

    #@20b
    const/16 v2, 0x56

    #@20d
    const/16 v3, 0x17

    #@20f
    aput-byte v3, v1, v2

    #@211
    const/16 v2, 0x57

    #@213
    const/16 v3, 0x6f

    #@215
    aput-byte v3, v1, v2

    #@217
    const/16 v2, 0x58

    #@219
    const/16 v3, 0x13

    #@21b
    aput-byte v3, v1, v2

    #@21d
    const/16 v2, 0x59

    #@21f
    const/16 v3, -0x57

    #@221
    aput-byte v3, v1, v2

    #@223
    const/16 v2, 0x5a

    #@225
    const/16 v3, 0x21

    #@227
    aput-byte v3, v1, v2

    #@229
    const/16 v2, 0x5b

    #@22b
    const/16 v3, 0x13

    #@22d
    aput-byte v3, v1, v2

    #@22f
    const/16 v2, 0x5c

    #@231
    const/16 v3, 0x3a

    #@233
    aput-byte v3, v1, v2

    #@235
    const/16 v2, 0x5d

    #@237
    const/16 v3, -0x4c

    #@239
    aput-byte v3, v1, v2

    #@23b
    const/16 v2, 0x5e

    #@23d
    const/16 v3, 0x12

    #@23f
    aput-byte v3, v1, v2

    #@241
    const/16 v2, 0x5f

    #@243
    const/16 v3, -0x34

    #@245
    aput-byte v3, v1, v2

    #@247
    const/16 v2, 0x60

    #@249
    const/16 v3, 0x5e

    #@24b
    aput-byte v3, v1, v2

    #@24d
    const/16 v2, 0x61

    #@24f
    const/16 v3, 0x12

    #@251
    aput-byte v3, v1, v2

    #@253
    const/16 v2, 0x62

    #@255
    const/16 v3, 0x5e

    #@257
    aput-byte v3, v1, v2

    #@259
    const/16 v2, 0x63

    #@25b
    const/16 v3, 0x55

    #@25d
    aput-byte v3, v1, v2

    #@25f
    const/16 v2, 0x64

    #@261
    const/16 v3, 0x11

    #@263
    aput-byte v3, v1, v2

    #@265
    const/16 v2, 0x65

    #@267
    const/16 v3, -0x10

    #@269
    aput-byte v3, v1, v2

    #@26b
    const/16 v2, 0x66

    #@26d
    const/16 v3, -0x38

    #@26f
    aput-byte v3, v1, v2

    #@271
    const/16 v2, 0x67

    #@273
    const/16 v3, 0x11

    #@275
    aput-byte v3, v1, v2

    #@277
    const/16 v2, 0x68

    #@279
    const/16 v3, -0x7d

    #@27b
    aput-byte v3, v1, v2

    #@27d
    const/16 v2, 0x69

    #@27f
    const/16 v3, -0x1a

    #@281
    aput-byte v3, v1, v2

    #@283
    const/16 v2, 0x6a

    #@285
    const/16 v3, 0x11

    #@287
    aput-byte v3, v1, v2

    #@289
    const/16 v2, 0x6b

    #@28b
    const/16 v3, 0x17

    #@28d
    aput-byte v3, v1, v2

    #@28f
    const/16 v2, 0x6c

    #@291
    const/16 v3, -0x2a

    #@293
    aput-byte v3, v1, v2

    #@295
    const/16 v2, 0x6d

    #@297
    const/16 v3, 0x10

    #@299
    aput-byte v3, v1, v2

    #@29b
    const/16 v2, 0x6e

    #@29d
    const/16 v3, -0x54

    #@29f
    aput-byte v3, v1, v2

    #@2a1
    const/16 v2, 0x6f

    #@2a3
    const/16 v3, -0x40

    #@2a5
    aput-byte v3, v1, v2

    #@2a7
    const/16 v2, 0x70

    #@2a9
    const/16 v3, 0x10

    #@2ab
    aput-byte v3, v1, v2

    #@2ad
    const/16 v2, 0x71

    #@2af
    const/16 v3, 0x42

    #@2b1
    aput-byte v3, v1, v2

    #@2b3
    const/16 v2, 0x72

    #@2b5
    const/16 v3, -0x3d

    #@2b7
    aput-byte v3, v1, v2

    #@2b9
    const/16 v2, 0x73

    #@2bb
    const/16 v3, 0xf

    #@2bd
    aput-byte v3, v1, v2

    #@2bf
    const/16 v2, 0x74

    #@2c1
    const/16 v3, -0x26

    #@2c3
    aput-byte v3, v1, v2

    #@2c5
    const/16 v2, 0x75

    #@2c7
    const/4 v3, 0x2

    #@2c8
    aput-byte v3, v1, v2

    #@2ca
    const/16 v2, 0x76

    #@2cc
    const/16 v3, 0xf

    #@2ce
    aput-byte v3, v1, v2

    #@2d0
    const/16 v2, 0x77

    #@2d2
    const/16 v3, 0x72

    #@2d4
    aput-byte v3, v1, v2

    #@2d6
    const/16 v2, 0x78

    #@2d8
    const/16 v3, -0x6a

    #@2da
    aput-byte v3, v1, v2

    #@2dc
    const/16 v2, 0x79

    #@2de
    const/16 v3, 0xf

    #@2e0
    aput-byte v3, v1, v2

    #@2e2
    const/16 v2, 0x7a

    #@2e4
    const/16 v3, 0xc

    #@2e6
    aput-byte v3, v1, v2

    #@2e8
    const/16 v2, 0x7b

    #@2ea
    const/16 v3, -0x67

    #@2ec
    aput-byte v3, v1, v2

    #@2ee
    const/16 v2, 0x7c

    #@2f0
    const/16 v3, 0xe

    #@2f2
    aput-byte v3, v1, v2

    #@2f4
    const/16 v2, 0x7d

    #@2f6
    const/16 v3, -0x58

    #@2f8
    aput-byte v3, v1, v2

    #@2fa
    const/16 v2, 0x7e

    #@2fc
    const/16 v3, 0x20

    #@2fe
    aput-byte v3, v1, v2

    #@300
    const/16 v2, 0x7f

    #@302
    const/16 v3, 0xe

    #@304
    aput-byte v3, v1, v2

    #@306
    const/16 v2, 0x80

    #@308
    const/16 v3, 0x45

    #@30a
    aput-byte v3, v1, v2

    #@30c
    const/16 v2, 0x81

    #@30e
    const/16 v3, 0x40

    #@310
    aput-byte v3, v1, v2

    #@312
    const/16 v2, 0x82

    #@314
    const/16 v3, 0xd

    #@316
    aput-byte v3, v1, v2

    #@318
    const/16 v2, 0x83

    #@31a
    const/16 v3, -0x1c

    #@31c
    aput-byte v3, v1, v2

    #@31e
    const/16 v2, 0x84

    #@320
    const/4 v3, 0x7

    #@321
    aput-byte v3, v1, v2

    #@323
    const/16 v2, 0x85

    #@325
    const/16 v3, 0xd

    #@327
    aput-byte v3, v1, v2

    #@329
    const/16 v2, 0x86

    #@32b
    const/16 v3, -0x7c

    #@32d
    aput-byte v3, v1, v2

    #@32f
    const/16 v2, 0x87

    #@331
    const/16 v3, -0x7a

    #@333
    aput-byte v3, v1, v2

    #@335
    const/16 v2, 0x88

    #@337
    const/16 v3, 0xd

    #@339
    aput-byte v3, v1, v2

    #@33b
    const/16 v2, 0x89

    #@33d
    const/16 v3, 0x26

    #@33f
    aput-byte v3, v1, v2

    #@341
    const/16 v2, 0x8a

    #@343
    const/16 v3, -0x3a

    #@345
    aput-byte v3, v1, v2

    #@347
    const/16 v2, 0x8b

    #@349
    const/16 v3, 0xc

    #@34b
    aput-byte v3, v1, v2

    #@34d
    const/16 v2, 0x8c

    #@34f
    const/16 v3, -0x36

    #@351
    aput-byte v3, v1, v2

    #@353
    const/16 v2, 0x8d

    #@355
    const/16 v3, -0x2d

    #@357
    aput-byte v3, v1, v2

    #@359
    const/16 v2, 0x8e

    #@35b
    const/16 v3, 0xc

    #@35d
    aput-byte v3, v1, v2

    #@35f
    const/16 v2, 0x8f

    #@361
    const/16 v3, 0x70

    #@363
    aput-byte v3, v1, v2

    #@365
    const/16 v2, 0x90

    #@367
    const/16 v3, -0x4b

    #@369
    aput-byte v3, v1, v2

    #@36b
    const/16 v2, 0x91

    #@36d
    const/16 v3, 0xc

    #@36f
    aput-byte v3, v1, v2

    #@371
    const/16 v2, 0x92

    #@373
    const/16 v3, 0x18

    #@375
    aput-byte v3, v1, v2

    #@377
    const/16 v2, 0x93

    #@379
    const/16 v3, 0x71

    #@37b
    aput-byte v3, v1, v2

    #@37d
    const/16 v2, 0x94

    #@37f
    const/16 v3, 0xb

    #@381
    aput-byte v3, v1, v2

    #@383
    const/16 v2, 0x95

    #@385
    const/16 v3, -0x3e

    #@387
    aput-byte v3, v1, v2

    #@389
    const/16 v2, 0x96

    #@38b
    const/16 v3, 0xa

    #@38d
    aput-byte v3, v1, v2

    #@38f
    const/16 v2, 0x97

    #@391
    const/16 v3, 0xb

    #@393
    aput-byte v3, v1, v2

    #@395
    const/16 v2, 0x98

    #@397
    const/16 v3, 0x6d

    #@399
    aput-byte v3, v1, v2

    #@39b
    const/16 v2, 0x99

    #@39d
    const/16 v3, -0x79

    #@39f
    aput-byte v3, v1, v2

    #@3a1
    const/16 v2, 0x9a

    #@3a3
    const/16 v3, 0xb

    #@3a5
    aput-byte v3, v1, v2

    #@3a7
    const/16 v2, 0x9b

    #@3a9
    const/16 v3, 0x1a

    #@3ab
    aput-byte v3, v1, v2

    #@3ad
    const/16 v2, 0x9c

    #@3af
    const/16 v3, -0x1b

    #@3b1
    aput-byte v3, v1, v2

    #@3b3
    const/16 v2, 0x9d

    #@3b5
    const/16 v3, 0xa

    #@3b7
    aput-byte v3, v1, v2

    #@3b9
    const/16 v2, 0x9e

    #@3bb
    const/16 v3, -0x36

    #@3bd
    aput-byte v3, v1, v2

    #@3bf
    const/16 v2, 0x9f

    #@3c1
    const/16 v3, 0x28

    #@3c3
    aput-byte v3, v1, v2

    #@3c5
    const/16 v2, 0xa0

    #@3c7
    const/16 v3, 0xa

    #@3c9
    aput-byte v3, v1, v2

    #@3cb
    const/16 v2, 0xa1

    #@3cd
    const/16 v3, 0x7b

    #@3cf
    aput-byte v3, v1, v2

    #@3d1
    const/16 v2, 0xa2

    #@3d3
    const/16 v3, 0x4d

    #@3d5
    aput-byte v3, v1, v2

    #@3d7
    const/16 v2, 0xa3

    #@3d9
    const/16 v3, 0xa

    #@3db
    aput-byte v3, v1, v2

    #@3dd
    const/16 v2, 0xa4

    #@3df
    const/16 v3, 0x2e

    #@3e1
    aput-byte v3, v1, v2

    #@3e3
    const/16 v2, 0xa5

    #@3e5
    const/16 v3, 0x52

    #@3e7
    aput-byte v3, v1, v2

    #@3e9
    const/16 v2, 0xa6

    #@3eb
    const/16 v3, 0x9

    #@3ed
    aput-byte v3, v1, v2

    #@3ef
    const/16 v2, 0xa7

    #@3f1
    const/16 v3, -0x1d

    #@3f3
    aput-byte v3, v1, v2

    #@3f5
    const/16 v2, 0xa8

    #@3f7
    const/16 v3, 0x34

    #@3f9
    aput-byte v3, v1, v2

    #@3fb
    const/16 v2, 0xa9

    #@3fd
    const/16 v3, 0x9

    #@3ff
    aput-byte v3, v1, v2

    #@401
    const/16 v2, 0xaa

    #@403
    const/16 v3, -0x67

    #@405
    aput-byte v3, v1, v2

    #@407
    const/16 v2, 0xab

    #@409
    const/16 v3, -0x10

    #@40b
    aput-byte v3, v1, v2

    #@40d
    const/16 v2, 0xac

    #@40f
    const/16 v3, 0x9

    #@411
    aput-byte v3, v1, v2

    #@413
    const/16 v2, 0xad

    #@415
    const/16 v3, 0x52

    #@417
    aput-byte v3, v1, v2

    #@419
    const/16 v2, 0xae

    #@41b
    const/16 v3, -0x7e

    #@41d
    aput-byte v3, v1, v2

    #@41f
    const/16 v2, 0xaf

    #@421
    const/16 v3, 0x9

    #@423
    aput-byte v3, v1, v2

    #@425
    const/16 v2, 0xb0

    #@427
    const/16 v3, 0xc

    #@429
    aput-byte v3, v1, v2

    #@42b
    const/16 v2, 0xb1

    #@42d
    const/16 v3, -0x1d

    #@42f
    aput-byte v3, v1, v2

    #@431
    const/16 v2, 0xb2

    #@433
    const/16 v3, 0x8

    #@435
    aput-byte v3, v1, v2

    #@437
    const/16 v2, 0xb3

    #@439
    const/16 v3, -0x37

    #@43b
    aput-byte v3, v1, v2

    #@43d
    const/16 v2, 0xb4

    #@43f
    const/16 v3, 0xe

    #@441
    aput-byte v3, v1, v2

    #@443
    const/16 v2, 0xb5

    #@445
    const/16 v3, 0x8

    #@447
    aput-byte v3, v1, v2

    #@449
    const/16 v2, 0xb6

    #@44b
    const/16 v3, -0x7a

    #@44d
    aput-byte v3, v1, v2

    #@44f
    const/16 v2, 0xb7

    #@451
    const/4 v3, -0x2

    #@452
    aput-byte v3, v1, v2

    #@454
    const/16 v2, 0xb8

    #@456
    const/16 v3, 0x8

    #@458
    aput-byte v3, v1, v2

    #@45a
    const/16 v2, 0xb9

    #@45c
    const/16 v3, 0x46

    #@45e
    aput-byte v3, v1, v2

    #@460
    const/16 v2, 0xba

    #@462
    const/16 v3, -0x56

    #@464
    aput-byte v3, v1, v2

    #@466
    const/16 v2, 0xbb

    #@468
    const/16 v3, 0x8

    #@46a
    aput-byte v3, v1, v2

    #@46c
    const/16 v2, 0xbc

    #@46e
    const/16 v3, 0x8

    #@470
    aput-byte v3, v1, v2

    #@472
    const/16 v2, 0xbd

    #@474
    const/16 v3, 0xd

    #@476
    aput-byte v3, v1, v2

    #@478
    const/16 v2, 0xbe

    #@47a
    const/4 v3, 0x7

    #@47b
    aput-byte v3, v1, v2

    #@47d
    const/16 v2, 0xbf

    #@47f
    const/16 v3, -0x35

    #@481
    aput-byte v3, v1, v2

    #@483
    const/16 v2, 0xc0

    #@485
    const/16 v3, 0x1e

    #@487
    aput-byte v3, v1, v2

    #@489
    const/16 v2, 0xc1

    #@48b
    const/4 v3, 0x7

    #@48c
    aput-byte v3, v1, v2

    #@48e
    const/16 v2, 0xc2

    #@490
    const/16 v3, -0x71

    #@492
    aput-byte v3, v1, v2

    #@494
    const/16 v2, 0xc3

    #@496
    const/16 v3, -0x29

    #@498
    aput-byte v3, v1, v2

    #@49a
    const/16 v2, 0xc4

    #@49c
    const/4 v3, 0x7

    #@49d
    aput-byte v3, v1, v2

    #@49f
    const/16 v2, 0xc5

    #@4a1
    const/16 v3, 0x56

    #@4a3
    aput-byte v3, v1, v2

    #@4a5
    const/16 v2, 0xc6

    #@4a7
    const/16 v3, 0x2d

    #@4a9
    aput-byte v3, v1, v2

    #@4ab
    const/16 v2, 0xc7

    #@4ad
    const/4 v3, 0x7

    #@4ae
    aput-byte v3, v1, v2

    #@4b0
    const/16 v2, 0xc8

    #@4b2
    const/16 v3, 0x1e

    #@4b4
    aput-byte v3, v1, v2

    #@4b6
    const/16 v2, 0xc9

    #@4b8
    const/16 v3, 0x1b

    #@4ba
    aput-byte v3, v1, v2

    #@4bc
    const/16 v2, 0xca

    #@4be
    const/4 v3, 0x6

    #@4bf
    aput-byte v3, v1, v2

    #@4c1
    const/16 v2, 0xcb

    #@4c3
    const/16 v3, -0x19

    #@4c5
    aput-byte v3, v1, v2

    #@4c7
    const/16 v2, 0xcc

    #@4c9
    const/16 v3, -0x68

    #@4cb
    aput-byte v3, v1, v2

    #@4cd
    const/16 v2, 0xcd

    #@4cf
    const/4 v3, 0x6

    #@4d0
    aput-byte v3, v1, v2

    #@4d2
    const/16 v2, 0xce

    #@4d4
    const/16 v3, -0x4e

    #@4d6
    aput-byte v3, v1, v2

    #@4d8
    const/16 v2, 0xcf

    #@4da
    const/16 v3, -0x66

    #@4dc
    aput-byte v3, v1, v2

    #@4de
    const/16 v2, 0xd0

    #@4e0
    const/4 v3, 0x6

    #@4e1
    aput-byte v3, v1, v2

    #@4e3
    const/16 v2, 0xd1

    #@4e5
    const/16 v3, 0x7f

    #@4e7
    aput-byte v3, v1, v2

    #@4e9
    const/16 v2, 0xd2

    #@4eb
    const/16 v3, 0x1a

    #@4ed
    aput-byte v3, v1, v2

    #@4ef
    const/16 v2, 0xd3

    #@4f1
    const/4 v3, 0x6

    #@4f2
    aput-byte v3, v1, v2

    #@4f4
    const/16 v2, 0xd4

    #@4f6
    const/16 v3, 0x4d

    #@4f8
    aput-byte v3, v1, v2

    #@4fa
    const/16 v2, 0xd5

    #@4fc
    const/16 v3, 0xf

    #@4fe
    aput-byte v3, v1, v2

    #@500
    const/16 v2, 0xd6

    #@502
    const/4 v3, 0x6

    #@503
    aput-byte v3, v1, v2

    #@505
    const/16 v2, 0xd7

    #@507
    const/16 v3, 0x1c

    #@509
    aput-byte v3, v1, v2

    #@50b
    const/16 v2, 0xd8

    #@50d
    const/16 v3, 0x72

    #@50f
    aput-byte v3, v1, v2

    #@511
    const/16 v2, 0xd9

    #@513
    const/4 v3, 0x5

    #@514
    aput-byte v3, v1, v2

    #@516
    const/16 v2, 0xda

    #@518
    const/16 v3, -0x13

    #@51a
    aput-byte v3, v1, v2

    #@51c
    const/16 v2, 0xdb

    #@51e
    const/16 v3, 0x38

    #@520
    aput-byte v3, v1, v2

    #@522
    const/16 v2, 0xdc

    #@524
    const/4 v3, 0x5

    #@525
    aput-byte v3, v1, v2

    #@527
    const/16 v2, 0xdd

    #@529
    const/16 v3, -0x41

    #@52b
    aput-byte v3, v1, v2

    #@52d
    const/16 v2, 0xde

    #@52f
    const/16 v3, 0x59

    #@531
    aput-byte v3, v1, v2

    #@533
    const/16 v2, 0xdf

    #@535
    const/4 v3, 0x5

    #@536
    aput-byte v3, v1, v2

    #@538
    const/16 v2, 0xe0

    #@53a
    const/16 v3, -0x6e

    #@53c
    aput-byte v3, v1, v2

    #@53e
    const/16 v2, 0xe1

    #@540
    const/16 v3, -0x32

    #@542
    aput-byte v3, v1, v2

    #@544
    const/16 v2, 0xe2

    #@546
    const/4 v3, 0x5

    #@547
    aput-byte v3, v1, v2

    #@549
    const/16 v2, 0xe3

    #@54b
    const/16 v3, 0x67

    #@54d
    aput-byte v3, v1, v2

    #@54f
    const/16 v2, 0xe4

    #@551
    const/16 v3, -0x72

    #@553
    aput-byte v3, v1, v2

    #@555
    const/16 v2, 0xe5

    #@557
    const/4 v3, 0x5

    #@558
    aput-byte v3, v1, v2

    #@55a
    const/16 v2, 0xe6

    #@55c
    const/16 v3, 0x3d

    #@55e
    aput-byte v3, v1, v2

    #@560
    const/16 v2, 0xe7

    #@562
    const/16 v3, -0x6f

    #@564
    aput-byte v3, v1, v2

    #@566
    const/16 v2, 0xe8

    #@568
    const/4 v3, 0x5

    #@569
    aput-byte v3, v1, v2

    #@56b
    const/16 v2, 0xe9

    #@56d
    const/16 v3, 0x14

    #@56f
    aput-byte v3, v1, v2

    #@571
    const/16 v2, 0xea

    #@573
    const/16 v3, -0x33

    #@575
    aput-byte v3, v1, v2

    #@577
    const/16 v2, 0xeb

    #@579
    const/4 v3, 0x4

    #@57a
    aput-byte v3, v1, v2

    #@57c
    const/16 v2, 0xec

    #@57e
    const/16 v3, -0x13

    #@580
    aput-byte v3, v1, v2

    #@582
    const/16 v2, 0xed

    #@584
    const/16 v3, 0x3b

    #@586
    aput-byte v3, v1, v2

    #@588
    const/16 v2, 0xee

    #@58a
    const/4 v3, 0x4

    #@58b
    aput-byte v3, v1, v2

    #@58d
    const/16 v2, 0xef

    #@58f
    const/16 v3, -0x3a

    #@591
    aput-byte v3, v1, v2

    #@593
    const/16 v2, 0xf0

    #@595
    const/16 v3, -0x2b

    #@597
    aput-byte v3, v1, v2

    #@599
    const/16 v2, 0xf1

    #@59b
    const/4 v3, 0x4

    #@59c
    aput-byte v3, v1, v2

    #@59e
    const/16 v2, 0xf2

    #@5a0
    const/16 v3, -0x5f

    #@5a2
    aput-byte v3, v1, v2

    #@5a4
    const/16 v2, 0xf3

    #@5a6
    const/16 v3, -0x71

    #@5a8
    aput-byte v3, v1, v2

    #@5aa
    const/16 v2, 0xf4

    #@5ac
    const/4 v3, 0x4

    #@5ad
    aput-byte v3, v1, v2

    #@5af
    const/16 v2, 0xf5

    #@5b1
    const/16 v3, 0x7d

    #@5b3
    aput-byte v3, v1, v2

    #@5b5
    const/16 v2, 0xf6

    #@5b7
    const/16 v3, 0x66

    #@5b9
    aput-byte v3, v1, v2

    #@5bb
    const/16 v2, 0xf7

    #@5bd
    const/4 v3, 0x4

    #@5be
    aput-byte v3, v1, v2

    #@5c0
    const/16 v2, 0xf8

    #@5c2
    const/16 v3, 0x5a

    #@5c4
    aput-byte v3, v1, v2

    #@5c6
    const/16 v2, 0xf9

    #@5c8
    const/16 v3, 0x4e

    #@5ca
    aput-byte v3, v1, v2

    #@5cc
    const/16 v2, 0xfa

    #@5ce
    const/4 v3, 0x4

    #@5cf
    aput-byte v3, v1, v2

    #@5d1
    const/16 v2, 0xfb

    #@5d3
    const/16 v3, 0x38

    #@5d5
    aput-byte v3, v1, v2

    #@5d7
    const/16 v2, 0xfc

    #@5d9
    const/16 v3, 0x41

    #@5db
    aput-byte v3, v1, v2

    #@5dd
    const/16 v2, 0xfd

    #@5df
    const/4 v3, 0x4

    #@5e0
    aput-byte v3, v1, v2

    #@5e2
    const/16 v2, 0xfe

    #@5e4
    const/16 v3, 0x17

    #@5e6
    aput-byte v3, v1, v2

    #@5e8
    const/16 v2, 0xff

    #@5ea
    const/16 v3, 0x3a

    #@5ec
    aput-byte v3, v1, v2

    #@5ee
    const/16 v2, 0x100

    #@5f0
    const/4 v3, 0x3

    #@5f1
    aput-byte v3, v1, v2

    #@5f3
    const/16 v2, 0x101

    #@5f5
    const/16 v3, -0x9

    #@5f7
    aput-byte v3, v1, v2

    #@5f9
    const/16 v2, 0x102

    #@5fb
    const/16 v3, 0x2f

    #@5fd
    aput-byte v3, v1, v2

    #@5ff
    const/16 v2, 0x103

    #@601
    const/4 v3, 0x3

    #@602
    aput-byte v3, v1, v2

    #@604
    const/16 v2, 0x104

    #@606
    const/16 v3, -0x28

    #@608
    aput-byte v3, v1, v2

    #@60a
    const/16 v2, 0x105

    #@60c
    const/16 v3, 0x1a

    #@60e
    aput-byte v3, v1, v2

    #@610
    const/16 v2, 0x106

    #@612
    const/4 v3, 0x3

    #@613
    aput-byte v3, v1, v2

    #@615
    const/16 v2, 0x107

    #@617
    const/16 v3, -0x47

    #@619
    aput-byte v3, v1, v2

    #@61b
    const/16 v2, 0x108

    #@61d
    const/16 v3, -0xd

    #@61f
    aput-byte v3, v1, v2

    #@621
    const/16 v2, 0x109

    #@623
    const/4 v3, 0x3

    #@624
    aput-byte v3, v1, v2

    #@626
    const/16 v2, 0x10a

    #@628
    const/16 v3, -0x64

    #@62a
    aput-byte v3, v1, v2

    #@62c
    const/16 v2, 0x10b

    #@62e
    const/16 v3, -0x4b

    #@630
    aput-byte v3, v1, v2

    #@632
    const/16 v2, 0x10c

    #@634
    const/4 v3, 0x3

    #@635
    aput-byte v3, v1, v2

    #@637
    const/16 v2, 0x10d

    #@639
    const/16 v3, -0x80

    #@63b
    aput-byte v3, v1, v2

    #@63d
    const/16 v2, 0x10e

    #@63f
    const/16 v3, 0x58

    #@641
    aput-byte v3, v1, v2

    #@643
    const/16 v2, 0x10f

    #@645
    const/4 v3, 0x3

    #@646
    aput-byte v3, v1, v2

    #@648
    const/16 v2, 0x110

    #@64a
    const/16 v3, 0x64

    #@64c
    aput-byte v3, v1, v2

    #@64e
    const/16 v2, 0x111

    #@650
    const/16 v3, -0x29

    #@652
    aput-byte v3, v1, v2

    #@654
    const/16 v2, 0x112

    #@656
    const/4 v3, 0x3

    #@657
    aput-byte v3, v1, v2

    #@659
    const/16 v2, 0x113

    #@65b
    const/16 v3, 0x4a

    #@65d
    aput-byte v3, v1, v2

    #@65f
    const/16 v2, 0x114

    #@661
    const/16 v3, 0x2b

    #@663
    aput-byte v3, v1, v2

    #@665
    const/16 v2, 0x115

    #@667
    const/4 v3, 0x3

    #@668
    aput-byte v3, v1, v2

    #@66a
    const/16 v2, 0x116

    #@66c
    const/16 v3, 0x30

    #@66e
    aput-byte v3, v1, v2

    #@670
    const/16 v2, 0x117

    #@672
    const/16 v3, 0x4c

    #@674
    aput-byte v3, v1, v2

    #@676
    const/16 v2, 0x118

    #@678
    const/4 v3, 0x3

    #@679
    aput-byte v3, v1, v2

    #@67b
    const/16 v2, 0x119

    #@67d
    const/16 v3, 0x17

    #@67f
    aput-byte v3, v1, v2

    #@681
    const/16 v2, 0x11a

    #@683
    const/16 v3, 0x37

    #@685
    aput-byte v3, v1, v2

    #@687
    const/16 v2, 0x11b

    #@689
    const/4 v3, 0x2

    #@68a
    aput-byte v3, v1, v2

    #@68c
    const/16 v2, 0x11c

    #@68e
    const/4 v3, -0x2

    #@68f
    aput-byte v3, v1, v2

    #@691
    const/16 v2, 0x11d

    #@693
    const/16 v3, -0x1c

    #@695
    aput-byte v3, v1, v2

    #@697
    const/16 v2, 0x11e

    #@699
    const/4 v3, 0x2

    #@69a
    aput-byte v3, v1, v2

    #@69c
    const/16 v2, 0x11f

    #@69e
    const/16 v3, -0x19

    #@6a0
    aput-byte v3, v1, v2

    #@6a2
    const/16 v2, 0x120

    #@6a4
    const/16 v3, 0x4f

    #@6a6
    aput-byte v3, v1, v2

    #@6a8
    const/16 v2, 0x121

    #@6aa
    const/4 v3, 0x2

    #@6ab
    aput-byte v3, v1, v2

    #@6ad
    const/16 v2, 0x122

    #@6af
    const/16 v3, -0x30

    #@6b1
    aput-byte v3, v1, v2

    #@6b3
    const/16 v2, 0x123

    #@6b5
    const/16 v3, 0x72

    #@6b7
    aput-byte v3, v1, v2

    #@6b9
    const/16 v2, 0x124

    #@6bb
    const/4 v3, 0x2

    #@6bc
    aput-byte v3, v1, v2

    #@6be
    const/16 v2, 0x125

    #@6c0
    const/16 v3, -0x46

    #@6c2
    aput-byte v3, v1, v2

    #@6c4
    const/16 v2, 0x126

    #@6c6
    const/16 v3, 0x46

    #@6c8
    aput-byte v3, v1, v2

    #@6ca
    const/16 v2, 0x127

    #@6cc
    const/4 v3, 0x2

    #@6cd
    aput-byte v3, v1, v2

    #@6cf
    const/16 v2, 0x128

    #@6d1
    const/16 v3, -0x5c

    #@6d3
    aput-byte v3, v1, v2

    #@6d5
    const/16 v2, 0x129

    #@6d7
    const/16 v3, -0x38

    #@6d9
    aput-byte v3, v1, v2

    #@6db
    const/16 v2, 0x12a

    #@6dd
    const/4 v3, 0x2

    #@6de
    aput-byte v3, v1, v2

    #@6e0
    const/16 v2, 0x12b

    #@6e2
    const/16 v3, -0x71

    #@6e4
    aput-byte v3, v1, v2

    #@6e6
    const/16 v2, 0x12c

    #@6e8
    const/16 v3, -0xf

    #@6ea
    aput-byte v3, v1, v2

    #@6ec
    const/16 v2, 0x12d

    #@6ee
    const/4 v3, 0x2

    #@6ef
    aput-byte v3, v1, v2

    #@6f1
    const/16 v2, 0x12e

    #@6f3
    const/16 v3, 0x7b

    #@6f5
    aput-byte v3, v1, v2

    #@6f7
    const/16 v2, 0x12f

    #@6f9
    const/16 v3, -0x43

    #@6fb
    aput-byte v3, v1, v2

    #@6fd
    const/16 v2, 0x130

    #@6ff
    const/4 v3, 0x2

    #@700
    aput-byte v3, v1, v2

    #@702
    const/16 v2, 0x131

    #@704
    const/16 v3, 0x68

    #@706
    aput-byte v3, v1, v2

    #@708
    const/16 v2, 0x132

    #@70a
    const/16 v3, 0x28

    #@70c
    aput-byte v3, v1, v2

    #@70e
    const/16 v2, 0x133

    #@710
    const/4 v3, 0x2

    #@711
    aput-byte v3, v1, v2

    #@713
    const/16 v2, 0x134

    #@715
    const/16 v3, 0x55

    #@717
    aput-byte v3, v1, v2

    #@719
    const/16 v2, 0x135

    #@71b
    const/16 v3, 0x2b

    #@71d
    aput-byte v3, v1, v2

    #@71f
    const/16 v2, 0x136

    #@721
    const/4 v3, 0x2

    #@722
    aput-byte v3, v1, v2

    #@724
    const/16 v2, 0x137

    #@726
    const/16 v3, 0x42

    #@728
    aput-byte v3, v1, v2

    #@72a
    const/16 v2, 0x138

    #@72c
    const/16 v3, -0x3d

    #@72e
    aput-byte v3, v1, v2

    #@730
    const/16 v2, 0x139

    #@732
    const/4 v3, 0x2

    #@733
    aput-byte v3, v1, v2

    #@735
    const/16 v2, 0x13a

    #@737
    const/16 v3, 0x30

    #@739
    aput-byte v3, v1, v2

    #@73b
    const/16 v2, 0x13b

    #@73d
    const/16 v3, -0x14

    #@73f
    aput-byte v3, v1, v2

    #@741
    const/16 v2, 0x13c

    #@743
    const/4 v3, 0x2

    #@744
    aput-byte v3, v1, v2

    #@746
    const/16 v2, 0x13d

    #@748
    const/16 v3, 0x1f

    #@74a
    aput-byte v3, v1, v2

    #@74c
    const/16 v2, 0x13e

    #@74e
    const/16 v3, -0x60

    #@750
    aput-byte v3, v1, v2

    #@752
    const/16 v2, 0x13f

    #@754
    const/4 v3, 0x2

    #@755
    aput-byte v3, v1, v2

    #@757
    const/16 v2, 0x140

    #@759
    const/16 v3, 0xe

    #@75b
    aput-byte v3, v1, v2

    #@75d
    const/16 v2, 0x141

    #@75f
    const/16 v3, -0x23

    #@761
    aput-byte v3, v1, v2

    #@763
    const/16 v2, 0x142

    #@765
    const/4 v3, 0x1

    #@766
    aput-byte v3, v1, v2

    #@768
    const/16 v2, 0x143

    #@76a
    const/4 v3, -0x2

    #@76b
    aput-byte v3, v1, v2

    #@76d
    const/16 v2, 0x144

    #@76f
    const/16 v3, -0x64

    #@771
    aput-byte v3, v1, v2

    #@773
    const/16 v2, 0x145

    #@775
    const/4 v3, 0x1

    #@776
    aput-byte v3, v1, v2

    #@778
    const/16 v2, 0x146

    #@77a
    const/16 v3, -0x12

    #@77c
    aput-byte v3, v1, v2

    #@77e
    const/16 v2, 0x147

    #@780
    const/16 v3, -0x24

    #@782
    aput-byte v3, v1, v2

    #@784
    const/16 v2, 0x148

    #@786
    const/4 v3, 0x1

    #@787
    aput-byte v3, v1, v2

    #@789
    const/16 v2, 0x149

    #@78b
    const/16 v3, -0x21

    #@78d
    aput-byte v3, v1, v2

    #@78f
    const/16 v2, 0x14a

    #@791
    const/16 v3, -0x6a

    #@793
    aput-byte v3, v1, v2

    #@795
    const/16 v2, 0x14b

    #@797
    const/4 v3, 0x1

    #@798
    aput-byte v3, v1, v2

    #@79a
    const/16 v2, 0x14c

    #@79c
    const/16 v3, -0x30

    #@79e
    aput-byte v3, v1, v2

    #@7a0
    const/16 v2, 0x14d

    #@7a2
    const/16 v3, -0x35

    #@7a4
    aput-byte v3, v1, v2

    #@7a6
    const/16 v2, 0x14e

    #@7a8
    const/4 v3, 0x1

    #@7a9
    aput-byte v3, v1, v2

    #@7ab
    const/16 v2, 0x14f

    #@7ad
    const/16 v3, -0x3e

    #@7af
    aput-byte v3, v1, v2

    #@7b1
    const/16 v2, 0x150

    #@7b3
    const/16 v3, 0x72

    #@7b5
    aput-byte v3, v1, v2

    #@7b7
    const/16 v2, 0x151

    #@7b9
    const/4 v3, 0x1

    #@7ba
    aput-byte v3, v1, v2

    #@7bc
    const/16 v2, 0x152

    #@7be
    const/16 v3, -0x4c

    #@7c0
    aput-byte v3, v1, v2

    #@7c2
    const/16 v2, 0x153

    #@7c4
    const/16 v3, -0x76

    #@7c6
    aput-byte v3, v1, v2

    #@7c8
    const/16 v2, 0x154

    #@7ca
    const/4 v3, 0x1

    #@7cb
    aput-byte v3, v1, v2

    #@7cd
    const/16 v2, 0x155

    #@7cf
    const/16 v3, -0x59

    #@7d1
    aput-byte v3, v1, v2

    #@7d3
    const/16 v2, 0x156

    #@7d5
    const/16 v3, 0x11

    #@7d7
    aput-byte v3, v1, v2

    #@7d9
    const/16 v2, 0x157

    #@7db
    const/4 v3, 0x1

    #@7dc
    aput-byte v3, v1, v2

    #@7de
    const/16 v2, 0x158

    #@7e0
    const/16 v3, -0x66

    #@7e2
    aput-byte v3, v1, v2

    #@7e4
    const/16 v2, 0x159

    #@7e6
    const/4 v3, 0x1

    #@7e7
    aput-byte v3, v1, v2

    #@7e9
    const/16 v2, 0x15a

    #@7eb
    const/4 v3, 0x1

    #@7ec
    aput-byte v3, v1, v2

    #@7ee
    const/16 v2, 0x15b

    #@7f0
    const/16 v3, -0x73

    #@7f2
    aput-byte v3, v1, v2

    #@7f4
    const/16 v2, 0x15c

    #@7f6
    const/16 v3, 0x58

    #@7f8
    aput-byte v3, v1, v2

    #@7fa
    const/16 v2, 0x15d

    #@7fc
    const/4 v3, 0x1

    #@7fd
    aput-byte v3, v1, v2

    #@7ff
    const/16 v2, 0x15e

    #@801
    const/16 v3, -0x7f

    #@803
    aput-byte v3, v1, v2

    #@805
    const/16 v2, 0x15f

    #@807
    const/16 v3, 0x12

    #@809
    aput-byte v3, v1, v2

    #@80b
    const/16 v2, 0x160

    #@80d
    const/4 v3, 0x1

    #@80e
    aput-byte v3, v1, v2

    #@810
    const/16 v2, 0x161

    #@812
    const/16 v3, 0x75

    #@814
    aput-byte v3, v1, v2

    #@816
    const/16 v2, 0x162

    #@818
    const/16 v3, 0x2f

    #@81a
    aput-byte v3, v1, v2

    #@81c
    const/16 v2, 0x163

    #@81e
    const/4 v3, 0x1

    #@81f
    aput-byte v3, v1, v2

    #@821
    const/16 v2, 0x164

    #@823
    const/16 v3, 0x69

    #@825
    aput-byte v3, v1, v2

    #@827
    const/16 v2, 0x165

    #@829
    const/16 v3, -0x59

    #@82b
    aput-byte v3, v1, v2

    #@82d
    const/16 v2, 0x166

    #@82f
    const/4 v3, 0x1

    #@830
    aput-byte v3, v1, v2

    #@832
    const/16 v2, 0x167

    #@834
    const/16 v3, 0x5e

    #@836
    aput-byte v3, v1, v2

    #@838
    const/16 v2, 0x168

    #@83a
    const/16 v3, 0x7c

    #@83c
    aput-byte v3, v1, v2

    #@83e
    const/16 v2, 0x169

    #@840
    const/4 v3, 0x1

    #@841
    aput-byte v3, v1, v2

    #@843
    const/16 v2, 0x16a

    #@845
    const/16 v3, 0x53

    #@847
    aput-byte v3, v1, v2

    #@849
    const/16 v2, 0x16b

    #@84b
    const/16 v3, -0x58

    #@84d
    aput-byte v3, v1, v2

    #@84f
    const/16 v2, 0x16c

    #@851
    const/4 v3, 0x1

    #@852
    aput-byte v3, v1, v2

    #@854
    const/16 v2, 0x16d

    #@856
    const/16 v3, 0x49

    #@858
    aput-byte v3, v1, v2

    #@85a
    const/16 v2, 0x16e

    #@85c
    const/16 v3, 0x2a

    #@85e
    aput-byte v3, v1, v2

    #@860
    const/16 v2, 0x16f

    #@862
    const/4 v3, 0x1

    #@863
    aput-byte v3, v1, v2

    #@865
    const/16 v2, 0x170

    #@867
    const/16 v3, 0x3e

    #@869
    aput-byte v3, v1, v2

    #@86b
    const/16 v2, 0x171

    #@86d
    const/4 v3, -0x1

    #@86e
    aput-byte v3, v1, v2

    #@870
    const/16 v2, 0x172

    #@872
    const/4 v3, 0x1

    #@873
    aput-byte v3, v1, v2

    #@875
    const/16 v2, 0x173

    #@877
    const/16 v3, 0x35

    #@879
    aput-byte v3, v1, v2

    #@87b
    const/16 v2, 0x174

    #@87d
    const/16 v3, 0x23

    #@87f
    aput-byte v3, v1, v2

    #@881
    const/16 v2, 0x175

    #@883
    const/4 v3, 0x1

    #@884
    aput-byte v3, v1, v2

    #@886
    const/16 v2, 0x176

    #@888
    const/16 v3, 0x2b

    #@88a
    aput-byte v3, v1, v2

    #@88c
    const/16 v2, 0x177

    #@88e
    const/16 v3, -0x69

    #@890
    aput-byte v3, v1, v2

    #@892
    const/16 v2, 0x178

    #@894
    const/4 v3, 0x1

    #@895
    aput-byte v3, v1, v2

    #@897
    const/16 v2, 0x179

    #@899
    const/16 v3, 0x22

    #@89b
    aput-byte v3, v1, v2

    #@89d
    const/16 v2, 0x17a

    #@89f
    const/16 v3, 0x54

    #@8a1
    aput-byte v3, v1, v2

    #@8a3
    const/16 v2, 0x17b

    #@8a5
    const/4 v3, 0x1

    #@8a6
    aput-byte v3, v1, v2

    #@8a8
    const/16 v2, 0x17c

    #@8aa
    const/16 v3, 0x19

    #@8ac
    aput-byte v3, v1, v2

    #@8ae
    const/16 v2, 0x17d

    #@8b0
    const/16 v3, 0x5b

    #@8b2
    aput-byte v3, v1, v2

    #@8b4
    const/16 v2, 0x17e

    #@8b6
    const/4 v3, 0x1

    #@8b7
    aput-byte v3, v1, v2

    #@8b9
    const/16 v2, 0x17f

    #@8bb
    const/16 v3, 0x10

    #@8bd
    aput-byte v3, v1, v2

    #@8bf
    const/16 v2, 0x180

    #@8c1
    const/16 v3, -0x56

    #@8c3
    aput-byte v3, v1, v2

    #@8c5
    const/16 v2, 0x181

    #@8c7
    const/4 v3, 0x1

    #@8c8
    aput-byte v3, v1, v2

    #@8ca
    const/16 v2, 0x182

    #@8cc
    const/16 v3, 0x8

    #@8ce
    aput-byte v3, v1, v2

    #@8d0
    const/16 v2, 0x183

    #@8d2
    const/16 v3, 0x3c

    #@8d4
    aput-byte v3, v1, v2

    #@8d6
    const/16 v2, 0x184

    #@8d8
    const/4 v3, 0x1

    #@8d9
    aput-byte v3, v1, v2

    #@8db
    const/16 v2, 0x185

    #@8dd
    const/4 v3, 0x0

    #@8de
    aput-byte v3, v1, v2

    #@8e0
    const/16 v2, 0x186

    #@8e2
    const/16 v3, 0x11

    #@8e4
    aput-byte v3, v1, v2

    #@8e6
    const/16 v2, 0x187

    #@8e8
    const/4 v3, 0x0

    #@8e9
    aput-byte v3, v1, v2

    #@8eb
    const/16 v2, 0x188

    #@8ed
    const/4 v3, -0x8

    #@8ee
    aput-byte v3, v1, v2

    #@8f0
    const/16 v2, 0x189

    #@8f2
    const/16 v3, 0x28

    #@8f4
    aput-byte v3, v1, v2

    #@8f6
    const/16 v2, 0x18a

    #@8f8
    const/4 v3, 0x0

    #@8f9
    aput-byte v3, v1, v2

    #@8fb
    const/16 v2, 0x18b

    #@8fd
    const/16 v3, -0x10

    #@8ff
    aput-byte v3, v1, v2

    #@901
    const/16 v2, 0x18c

    #@903
    const/16 v3, 0x7c

    #@905
    aput-byte v3, v1, v2

    #@907
    const/16 v2, 0x18d

    #@909
    const/4 v3, 0x0

    #@90a
    aput-byte v3, v1, v2

    #@90c
    const/16 v2, 0x18e

    #@90e
    const/16 v3, -0x17

    #@910
    aput-byte v3, v1, v2

    #@912
    const/16 v2, 0x18f

    #@914
    const/16 v3, 0xd

    #@916
    aput-byte v3, v1, v2

    #@918
    const/16 v2, 0x190

    #@91a
    const/4 v3, 0x0

    #@91b
    aput-byte v3, v1, v2

    #@91d
    const/16 v2, 0x191

    #@91f
    const/16 v3, -0x1f

    #@921
    aput-byte v3, v1, v2

    #@923
    const/16 v2, 0x192

    #@925
    const/16 v3, -0x28

    #@927
    aput-byte v3, v1, v2

    #@929
    const/16 v2, 0x193

    #@92b
    const/4 v3, 0x0

    #@92c
    aput-byte v3, v1, v2

    #@92e
    const/16 v2, 0x194

    #@930
    const/16 v3, -0x26

    #@932
    aput-byte v3, v1, v2

    #@934
    const/16 v2, 0x195

    #@936
    const/16 v3, -0x22

    #@938
    aput-byte v3, v1, v2

    #@93a
    const/16 v2, 0x196

    #@93c
    const/4 v3, 0x0

    #@93d
    aput-byte v3, v1, v2

    #@93f
    const/16 v2, 0x197

    #@941
    const/16 v3, -0x2c

    #@943
    aput-byte v3, v1, v2

    #@945
    const/16 v2, 0x198

    #@947
    const/16 v3, 0x19

    #@949
    aput-byte v3, v1, v2

    #@94b
    const/16 v2, 0x199

    #@94d
    const/4 v3, 0x0

    #@94e
    aput-byte v3, v1, v2

    #@950
    const/16 v2, 0x19a

    #@952
    const/16 v3, -0x33

    #@954
    aput-byte v3, v1, v2

    #@956
    const/16 v2, 0x19b

    #@958
    const/16 v3, -0x75

    #@95a
    aput-byte v3, v1, v2

    #@95c
    const/16 v2, 0x19c

    #@95e
    const/4 v3, 0x0

    #@95f
    aput-byte v3, v1, v2

    #@961
    const/16 v2, 0x19d

    #@963
    const/16 v3, -0x39

    #@965
    aput-byte v3, v1, v2

    #@967
    const/16 v2, 0x19e

    #@969
    const/16 v3, 0x30

    #@96b
    aput-byte v3, v1, v2

    #@96d
    const/16 v2, 0x19f

    #@96f
    const/4 v3, 0x0

    #@970
    aput-byte v3, v1, v2

    #@972
    const/16 v2, 0x1a0

    #@974
    const/16 v3, -0x3f

    #@976
    aput-byte v3, v1, v2

    #@978
    const/16 v2, 0x1a1

    #@97a
    const/16 v3, 0x8

    #@97c
    aput-byte v3, v1, v2

    #@97e
    const/16 v2, 0x1a2

    #@980
    const/4 v3, 0x0

    #@981
    aput-byte v3, v1, v2

    #@983
    const/16 v2, 0x1a3

    #@985
    const/16 v3, -0x45

    #@987
    aput-byte v3, v1, v2

    #@989
    const/16 v2, 0x1a4

    #@98b
    const/16 v3, 0x10

    #@98d
    aput-byte v3, v1, v2

    #@98f
    const/16 v2, 0x1a5

    #@991
    const/4 v3, 0x0

    #@992
    aput-byte v3, v1, v2

    #@994
    const/16 v2, 0x1a6

    #@996
    const/16 v3, -0x4b

    #@998
    aput-byte v3, v1, v2

    #@99a
    const/16 v2, 0x1a7

    #@99c
    const/16 v3, 0x47

    #@99e
    aput-byte v3, v1, v2

    #@9a0
    .line 392
    .restart local v1    # "latBytes":[B
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    #@9a3
    move-result-object v2

    #@9a4
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->reverseMercatorValues:[I

    #@9a6
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->readMercatorValues(Ljava/io/DataInput;[I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@9a9
    goto/16 :goto_0

    #@9ab
    .line 395
    :catch_0
    move-exception v0

    #@9ac
    .line 394
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    #@9ae
    const-string/jumbo v3, "rmercator.dat is incorrect"

    #@9b1
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@9b4
    throw v2
.end method

.method public static getXPixelFromLon(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 6
    .param p0, "longitude"    # I
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 212
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@3
    move-result v0

    #@4
    int-to-long v0, v0

    #@5
    const-wide/16 v2, 0x2

    #@7
    div-long/2addr v0, v2

    #@8
    int-to-long v2, p0

    #@9
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@c
    move-result v4

    #@d
    int-to-long v4, v4

    #@e
    mul-long/2addr v2, v4

    #@f
    const-wide/32 v4, 0x15752a00

    #@12
    div-long/2addr v2, v4

    #@13
    add-long/2addr v0, v2

    #@14
    long-to-int v0, v0

    #@15
    return v0
.end method

.method public static getYPixelFromLat(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 18
    .param p0, "latitude"    # I
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 288
    invoke-static/range {p0 .. p0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMercatorIndex(I)I

    #@3
    move-result v6

    #@4
    .line 290
    .local v6, "indexFloor":I
    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->abs(I)I

    #@7
    move-result v11

    #@8
    const v12, 0xf4240

    #@b
    rem-int v7, v11, v12

    #@d
    .line 292
    .local v7, "latDiff":I
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getMercatorValues()[I

    #@10
    move-result-object v10

    #@11
    .line 294
    .local v10, "values":[I
    add-int/lit8 v11, v6, -0x1

    #@13
    aget v11, v10, v11

    #@15
    mul-int/lit8 v11, v11, -0x1

    #@17
    aget v12, v10, v6

    #@19
    mul-int/lit8 v12, v12, 0x3

    #@1b
    add-int/2addr v11, v12

    #@1c
    add-int/lit8 v12, v6, 0x1

    #@1e
    aget v12, v10, v12

    #@20
    mul-int/lit8 v12, v12, 0x3

    #@22
    sub-int/2addr v11, v12

    #@23
    add-int/lit8 v12, v6, 0x2

    #@25
    aget v12, v10, v12

    #@27
    add-int/2addr v11, v12

    #@28
    div-int/lit8 v2, v11, 0x6

    #@2a
    .line 299
    .local v2, "cubicA":I
    add-int/lit8 v11, v6, -0x1

    #@2c
    aget v11, v10, v11

    #@2e
    mul-int/lit8 v11, v11, 0x3

    #@30
    aget v12, v10, v6

    #@32
    mul-int/lit8 v12, v12, 0x6

    #@34
    sub-int/2addr v11, v12

    #@35
    add-int/lit8 v12, v6, 0x1

    #@37
    aget v12, v10, v12

    #@39
    mul-int/lit8 v12, v12, 0x3

    #@3b
    add-int/2addr v11, v12

    #@3c
    div-int/lit8 v3, v11, 0x6

    #@3e
    .line 303
    .local v3, "cubicB":I
    add-int/lit8 v11, v6, -0x1

    #@40
    aget v11, v10, v11

    #@42
    mul-int/lit8 v11, v11, -0x2

    #@44
    aget v12, v10, v6

    #@46
    mul-int/lit8 v12, v12, 0x3

    #@48
    sub-int/2addr v11, v12

    #@49
    add-int/lit8 v12, v6, 0x1

    #@4b
    aget v12, v10, v12

    #@4d
    mul-int/lit8 v12, v12, 0x6

    #@4f
    add-int/2addr v11, v12

    #@50
    add-int/lit8 v12, v6, 0x2

    #@52
    aget v12, v10, v12

    #@54
    sub-int/2addr v11, v12

    #@55
    div-int/lit8 v4, v11, 0x6

    #@57
    .line 308
    .local v4, "cubicC":I
    aget v5, v10, v6

    #@59
    .line 310
    .local v5, "cubicD":I
    int-to-long v12, v2

    #@5a
    int-to-long v14, v7

    #@5b
    mul-long/2addr v12, v14

    #@5c
    int-to-long v14, v7

    #@5d
    mul-long/2addr v12, v14

    #@5e
    const-wide/32 v14, 0xf4240

    #@61
    div-long/2addr v12, v14

    #@62
    int-to-long v14, v7

    #@63
    mul-long/2addr v12, v14

    #@64
    const-wide/32 v14, 0xf4240

    #@67
    div-long/2addr v12, v14

    #@68
    const-wide/32 v14, 0xf4240

    #@6b
    div-long/2addr v12, v14

    #@6c
    int-to-long v14, v3

    #@6d
    int-to-long v0, v7

    #@6e
    move-wide/from16 v16, v0

    #@70
    mul-long v14, v14, v16

    #@72
    int-to-long v0, v7

    #@73
    move-wide/from16 v16, v0

    #@75
    mul-long v14, v14, v16

    #@77
    const-wide/32 v16, 0xf4240

    #@7a
    div-long v14, v14, v16

    #@7c
    const-wide/32 v16, 0xf4240

    #@7f
    div-long v14, v14, v16

    #@81
    add-long/2addr v12, v14

    #@82
    int-to-long v14, v4

    #@83
    int-to-long v0, v7

    #@84
    move-wide/from16 v16, v0

    #@86
    mul-long v14, v14, v16

    #@88
    const-wide/32 v16, 0xf4240

    #@8b
    div-long v14, v14, v16

    #@8d
    add-long/2addr v12, v14

    #@8e
    int-to-long v14, v5

    #@8f
    add-long/2addr v12, v14

    #@90
    long-to-int v8, v12

    #@91
    .line 317
    .local v8, "mercatorY":I
    if-ltz p0, :cond_0

    #@93
    .line 327
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@96
    move-result v11

    #@97
    int-to-long v12, v11

    #@98
    const-wide/16 v14, 0x2

    #@9a
    div-long/2addr v12, v14

    #@9b
    move-object/from16 v0, p1

    #@9d
    invoke-static {v8, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->mercatorToPixelsTimesTen(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@a0
    move-result v11

    #@a1
    div-int/lit8 v11, v11, 0xa

    #@a3
    int-to-long v14, v11

    #@a4
    sub-long/2addr v12, v14

    #@a5
    long-to-int v9, v12

    #@a6
    .line 330
    .local v9, "pixelY":I
    return v9

    #@a7
    .line 318
    .end local v9    # "pixelY":I
    :cond_0
    neg-int v8, v8

    #@a8
    goto :goto_0
.end method

.method public static latLonToString(II)Ljava/lang/String;
    .locals 2
    .param p0, "latitude"    # I
    .param p1, "longitude"    # I

    #@0
    .prologue
    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->e6ToString(I)Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const/16 v1, 0x2c

    #@f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@12
    move-result-object v0

    #@13
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->e6ToString(I)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v0

    #@1b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v0

    #@1f
    return-object v0
.end method

.method private static mercatorToPixelsTimesTen(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 4
    .param p0, "mercatorValue"    # I
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 633
    int-to-long v0, p0

    #@1
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@4
    move-result v2

    #@5
    int-to-long v2, v2

    #@6
    mul-long/2addr v0, v2

    #@7
    const-wide/16 v2, 0xa

    #@9
    mul-long/2addr v0, v2

    #@a
    const-wide/32 v2, 0x15752a00

    #@d
    div-long/2addr v0, v2

    #@e
    long-to-int v0, v0

    #@f
    return v0
.end method

.method private static pixelsToMercator(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 4
    .param p0, "pixelValue"    # I
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 646
    int-to-long v0, p0

    #@1
    const-wide/32 v2, 0x3b9aca00

    #@4
    mul-long/2addr v0, v2

    #@5
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@8
    move-result v2

    #@9
    int-to-long v2, v2

    #@a
    div-long/2addr v0, v2

    #@b
    long-to-int v0, v0

    #@c
    return v0
.end method

.method private static readMercatorValues(Ljava/io/DataInput;[I)V
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInput;
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 459
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@4
    move-result v2

    #@5
    aput v2, p1, v1

    #@7
    const/4 v0, 0x1

    #@8
    .line 463
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@9
    if-lt v0, v1, :cond_0

    #@b
    .line 469
    return-void

    #@c
    .line 464
    :cond_0
    add-int/lit8 v1, v0, -0x1

    #@e
    aget v1, p1, v1

    #@10
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@13
    move-result v2

    #@14
    shl-int/lit8 v2, v2, 0x10

    #@16
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@19
    move-result v3

    #@1a
    shl-int/lit8 v3, v3, 0x8

    #@1c
    or-int/2addr v2, v3

    #@1d
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@20
    move-result v3

    #@21
    or-int/2addr v2, v3

    #@22
    add-int/2addr v1, v2

    #@23
    aput v1, p1, v0

    #@25
    .line 463
    add-int/lit8 v0, v0, 0x1

    #@27
    goto :goto_0
.end method

.method public static readPoint(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 3
    .param p0, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 802
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@2
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@5
    move-result v1

    #@6
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@9
    move-result v2

    #@a
    invoke-direct {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(II)V

    #@d
    return-object v0
.end method

.method public static writePoint(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Ljava/io/DataOutput;)V
    .locals 1
    .param p0, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 771
    if-nez p0, :cond_0

    #@3
    .line 774
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@6
    .line 775
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@9
    .line 777
    :goto_0
    return-void

    #@a
    .line 772
    :cond_0
    invoke-direct {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->writePoint(Ljava/io/DataOutput;)V

    #@d
    goto :goto_0
.end method

.method private writePoint(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 820
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@5
    .line 821
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@a
    .line 822
    return-void
.end method


# virtual methods
.method public distanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;)J
    .locals 8
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@0
    .prologue
    const-wide/16 v6, 0x64

    #@2
    .line 666
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@4
    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@6
    sub-int/2addr v0, v1

    #@7
    int-to-long v0, v0

    #@8
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@a
    iget v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@c
    sub-int/2addr v2, v3

    #@d
    int-to-long v2, v2

    #@e
    mul-long/2addr v0, v2

    #@f
    div-long/2addr v0, v6

    #@10
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@12
    iget v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@14
    sub-int/2addr v2, v3

    #@15
    int-to-long v2, v2

    #@16
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@18
    iget v5, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@1a
    sub-int/2addr v4, v5

    #@1b
    int-to-long v4, v4

    #@1c
    mul-long/2addr v2, v4

    #@1d
    div-long/2addr v2, v6

    #@1e
    add-long/2addr v0, v2

    #@1f
    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 825
    if-eq p0, p1, :cond_1

    #@4
    .line 828
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@6
    if-eqz v3, :cond_2

    #@8
    move-object v0, p1

    #@9
    .line 832
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@b
    .line 835
    .local v0, "mapPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@d
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@f
    if-eq v3, v4, :cond_3

    #@11
    :cond_0
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@13
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@15
    if-eq v3, v4, :cond_5

    #@17
    :goto_0
    return v1

    #@18
    .line 826
    .end local v0    # "mapPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_1
    return v2

    #@19
    .line 829
    :cond_2
    return v1

    #@1a
    .line 835
    .restart local v0    # "mapPoint":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    :cond_3
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@1c
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@1e
    if-ne v3, v4, :cond_0

    #@20
    :cond_4
    move v1, v2

    #@21
    goto :goto_0

    #@22
    :cond_5
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@24
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@26
    if-eq v3, v4, :cond_4

    #@28
    goto :goto_0
.end method

.method public getDefiningPoint()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 0

    #@0
    .prologue
    .line 791
    return-object p0
.end method

.method public getLatitude()I
    .locals 1

    #@0
    .prologue
    .line 403
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@2
    return v0
.end method

.method public getLongitude()I
    .locals 1

    #@0
    .prologue
    .line 473
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@2
    return v0
.end method

.method public getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 3
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 200
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@4
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@7
    move-result v2

    #@8
    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 3
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 340
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@4
    invoke-virtual {p1}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@7
    move-result v2

    #@8
    invoke-virtual {v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@b
    move-result v0

    #@c
    return v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 842
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@2
    .line 843
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1d

    #@4
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@6
    add-int v0, v1, v2

    #@8
    .line 844
    return v0
.end method

.method public pixelDistanceSquared(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)J
    .locals 8
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 758
    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@3
    move-result v2

    #@4
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@7
    move-result v3

    #@8
    sub-int v0, v2, v3

    #@a
    .line 759
    .local v0, "xDiff":I
    invoke-virtual {p1, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@d
    move-result v2

    #@e
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@11
    move-result v3

    #@12
    sub-int v1, v2, v3

    #@14
    .line 760
    .local v1, "yDiff":I
    int-to-long v2, v0

    #@15
    int-to-long v4, v0

    #@16
    mul-long/2addr v2, v4

    #@17
    int-to-long v4, v1

    #@18
    int-to-long v6, v1

    #@19
    mul-long/2addr v4, v6

    #@1a
    add-long/2addr v2, v4

    #@1b
    return-wide v2
.end method

.method public pixelOffset(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 10
    .param p1, "xPixel"    # I
    .param p2, "yPixel"    # I
    .param p3, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    const/16 v3, 0x16

    #@2
    .line 593
    invoke-virtual {p3, p1, v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@5
    move-result v0

    #@6
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordX:I

    #@8
    add-int v1, v0, v6

    #@a
    .line 595
    .local v1, "newX":I
    invoke-virtual {p3, p2, v3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->changePixelsToTargetZoomlevel(II)I

    #@d
    move-result v0

    #@e
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->pixelCoordY:I

    #@10
    add-int v2, v0, v6

    #@12
    .line 599
    .local v2, "newY":I
    iget v4, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@14
    .line 600
    .local v4, "newLatitude":I
    if-nez p2, :cond_0

    #@16
    .line 603
    :goto_0
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@18
    .line 604
    .local v5, "newLongitude":I
    if-nez p1, :cond_1

    #@1a
    .line 608
    :goto_1
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@1c
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;-><init>(IIIII)V

    #@1f
    return-object v0

    #@20
    .line 601
    .end local v5    # "newLongitude":I
    :cond_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->PIXEL_COORDS_ZOOM:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@22
    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getLatitudeFromY(ILandroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@25
    move-result v4

    #@26
    goto :goto_0

    #@27
    .line 605
    .restart local v5    # "newLongitude":I
    :cond_1
    int-to-long v6, p1

    #@28
    const-wide/32 v8, 0x15752a00

    #@2b
    mul-long/2addr v6, v8

    #@2c
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@2f
    move-result v0

    #@30
    int-to-long v8, v0

    #@31
    div-long/2addr v6, v8

    #@32
    long-to-int v0, v6

    #@33
    add-int/2addr v5, v0

    #@34
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 491
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latitudeE6:I

    #@2
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->longitudeE6:I

    #@4
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->latLonToString(II)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method
