.class public Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;
.super Ljava/lang/Object;
.source "ShapeRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    }
.end annotation


# instance fields
.field private pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

.field private polyBoundaryPixelXY:[[[J

.field private final shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;


# direct methods
.method private static getBoundaries(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .locals 5
    .param p0, "poly"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 485
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@4
    move-result-object v2

    #@5
    if-eqz v2, :cond_0

    #@7
    .line 488
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    #@a
    move-result v2

    #@b
    new-array v0, v2, [[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@d
    .line 489
    .local v0, "boundaries":[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLine()[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@10
    move-result-object v2

    #@11
    aput-object v2, v0, v4

    #@13
    const/4 v1, 0x1

    #@14
    .line 490
    .local v1, "i":I
    :goto_0
    array-length v2, v0

    #@15
    if-lt v1, v2, :cond_1

    #@17
    .line 493
    return-object v0

    #@18
    .end local v0    # "boundaries":[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .end local v1    # "i":I
    :cond_0
    const/4 v2, 0x1

    #@19
    .line 486
    new-array v2, v2, [[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@1b
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLine()[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@1e
    move-result-object v3

    #@1f
    aput-object v3, v2, v4

    #@21
    return-object v2

    #@22
    .line 491
    .restart local v0    # "boundaries":[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .restart local v1    # "i":I
    :cond_1
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@25
    move-result-object v2

    #@26
    add-int/lit8 v3, v1, -0x1

    #@28
    aget-object v2, v2, v3

    #@2a
    aput-object v2, v0, v1

    #@2c
    .line 490
    add-int/lit8 v1, v1, 0x1

    #@2e
    goto :goto_0
.end method

.method private static getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I
    .locals 2
    .param p0, "poly"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 470
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@4
    move-result-object v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 473
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getInnerBoundaries()[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    add-int/lit8 v0, v0, 0x1

    #@e
    return v0

    #@f
    .line 471
    :cond_0
    return v1
.end method

.method private static getPixelXYOnScreen(II[J)[J
    .locals 6
    .param p0, "x"    # I
    .param p1, "y"    # I
    .param p2, "pixelXY"    # [J

    #@0
    .prologue
    .line 461
    array-length v2, p2

    #@1
    new-array v1, v2, [J

    #@3
    .local v1, "xy":[J
    const/4 v0, 0x0

    #@4
    .line 462
    .local v0, "i":I
    :goto_0
    array-length v2, p2

    #@5
    if-lt v0, v2, :cond_0

    #@7
    .line 465
    return-object v1

    #@8
    .line 463
    :cond_0
    aget-wide v2, p2, v0

    #@a
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@d
    move-result v2

    #@e
    sub-int/2addr v2, p0

    #@f
    aget-wide v4, p2, v0

    #@11
    invoke-static {v4, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@14
    move-result v3

    #@15
    sub-int/2addr v3, p1

    #@16
    invoke-static {v2, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    #@19
    move-result-wide v2

    #@1a
    aput-wide v2, v1, v0

    #@1c
    .line 462
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0
.end method

.method public static getX(J)I
    .locals 2
    .param p0, "xy"    # J

    #@0
    .prologue
    const/16 v0, 0x20

    #@2
    .line 511
    shr-long v0, p0, v0

    #@4
    long-to-int v0, v0

    #@5
    return v0
.end method

.method public static getXY(II)J
    .locals 7
    .param p0, "x"    # I
    .param p1, "y"    # I

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    .line 503
    int-to-long v4, p0

    #@3
    shl-long v0, v4, v6

    #@5
    .line 504
    .local v0, "xl":J
    int-to-long v4, p1

    #@6
    shl-long/2addr v4, v6

    #@7
    ushr-long v2, v4, v6

    #@9
    .line 505
    .local v2, "yl":J
    or-long v4, v0, v2

    #@b
    return-wide v4
.end method

.method public static getY(J)I
    .locals 2
    .param p0, "xy"    # J

    #@0
    .prologue
    const-wide v0, 0xffffffffL

    #@5
    .line 517
    and-long/2addr v0, p0

    #@6
    long-to-int v0, v0

    #@7
    return v0
.end method

.method protected static isInRange([I)Z
    .locals 5
    .param p0, "pointXy"    # [I

    #@0
    .prologue
    const/16 v4, 0xfa0

    #@2
    const/16 v3, -0xfa0

    #@4
    const/4 v0, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    .line 301
    aget v2, p0, v1

    #@8
    if-le v2, v4, :cond_2

    #@a
    :cond_0
    :goto_0
    move v0, v1

    #@b
    :cond_1
    return v0

    #@c
    :cond_2
    aget v2, p0, v1

    #@e
    if-lt v2, v3, :cond_0

    #@10
    aget v2, p0, v0

    #@12
    if-gt v2, v4, :cond_0

    #@14
    aget v2, p0, v0

    #@16
    if-ge v2, v3, :cond_1

    #@18
    goto :goto_0
.end method

.method static makeInRange(IIII[I)V
    .locals 9
    .param p0, "endX"    # I
    .param p1, "endY"    # I
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "outPoint"    # [I

    #@0
    .prologue
    const/16 v8, 0xfa0

    #@2
    const/16 v7, -0xfa0

    #@4
    const/4 v6, 0x0

    #@5
    .line 267
    sub-int v1, p0, p2

    #@7
    .line 268
    .local v1, "width":I
    sub-int v0, p1, p3

    #@9
    .line 270
    .local v0, "height":I
    if-le p0, v8, :cond_2

    #@b
    .line 271
    :cond_0
    if-gtz p0, :cond_3

    #@d
    const/16 p0, -0xfa0

    #@f
    .line 276
    :goto_0
    sub-int v2, p0, p2

    #@11
    int-to-long v2, v2

    #@12
    int-to-long v4, v0

    #@13
    mul-long/2addr v2, v4

    #@14
    int-to-long v4, v1

    #@15
    div-long/2addr v2, v4

    #@16
    long-to-int v2, v2

    #@17
    add-int p1, p3, v2

    #@19
    .line 280
    :goto_1
    if-le p1, v8, :cond_4

    #@1b
    .line 281
    :cond_1
    add-int p1, v0, p3

    #@1d
    .line 282
    if-gtz p1, :cond_5

    #@1f
    const/16 p1, -0xfa0

    #@21
    .line 287
    :goto_2
    sub-int v2, p1, p3

    #@23
    int-to-long v2, v2

    #@24
    int-to-long v4, v1

    #@25
    mul-long/2addr v2, v4

    #@26
    int-to-long v4, v0

    #@27
    div-long/2addr v2, v4

    #@28
    long-to-int v2, v2

    #@29
    add-int p0, p2, v2

    #@2b
    .line 289
    :goto_3
    aput p0, p4, v6

    #@2d
    const/4 v2, 0x1

    #@2e
    .line 290
    aput p1, p4, v2

    #@30
    .line 291
    return-void

    #@31
    .line 270
    :cond_2
    if-lt p0, v7, :cond_0

    #@33
    goto :goto_1

    #@34
    :cond_3
    const/16 p0, 0xfa0

    #@36
    .line 272
    goto :goto_0

    #@37
    .line 280
    :cond_4
    if-lt p1, v7, :cond_1

    #@39
    goto :goto_3

    #@3a
    :cond_5
    const/16 p1, 0xfa0

    #@3c
    .line 283
    goto :goto_2
.end method

.method private static outcode(IIII)I
    .locals 2
    .param p0, "width"    # I
    .param p1, "height"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 164
    if-ltz p2, :cond_0

    #@3
    if-gt p2, p0, :cond_1

    #@5
    move v1, v0

    #@6
    :goto_0
    if-ltz p3, :cond_2

    #@8
    if-gt p3, p1, :cond_3

    #@a
    :goto_1
    or-int/2addr v0, v1

    #@b
    return v0

    #@c
    :cond_0
    const/16 v1, 0x8

    #@e
    goto :goto_0

    #@f
    :cond_1
    const/4 v1, 0x4

    #@10
    goto :goto_0

    #@11
    :cond_2
    const/4 v0, 0x2

    #@12
    goto :goto_1

    #@13
    :cond_3
    const/4 v0, 0x1

    #@14
    goto :goto_1
.end method

.method private precalculatePixels(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 17
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 106
    move-object/from16 v0, p0

    #@2
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@4
    move-object/from16 v0, p1

    #@6
    if-eq v0, v13, :cond_0

    #@8
    .line 111
    move-object/from16 v0, p0

    #@a
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@c
    array-length v13, v13

    #@d
    new-array v13, v13, [[[J

    #@f
    move-object/from16 v0, p0

    #@11
    iput-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@13
    const/4 v7, 0x0

    #@14
    .line 113
    .local v7, "p":I
    :goto_0
    move-object/from16 v0, p0

    #@16
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@18
    array-length v13, v13

    #@19
    if-lt v7, v13, :cond_1

    #@1b
    .line 155
    return-void

    #@1c
    .line 108
    .end local v7    # "p":I
    :cond_0
    return-void

    #@1d
    .line 115
    .restart local v7    # "p":I
    :cond_1
    move-object/from16 v0, p0

    #@1f
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@21
    aget-object v13, v13, v7

    #@23
    instance-of v13, v13, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    #@25
    if-eqz v13, :cond_2

    #@27
    .line 119
    move-object/from16 v0, p0

    #@29
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@2b
    aget-object v10, v13, v7

    #@2d
    check-cast v10, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    #@2f
    .line 120
    .local v10, "poly":Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    #@32
    move-result v5

    #@33
    .line 121
    .local v5, "boundaryCount":I
    move-object/from16 v0, p0

    #@35
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@37
    new-array v14, v5, [[J

    #@39
    aput-object v14, v13, v7

    #@3b
    .line 122
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaries(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@3e
    move-result-object v3

    #@3f
    .local v3, "boundaries":[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    const/4 v2, 0x0

    #@40
    .line 124
    .local v2, "b":I
    :goto_1
    if-lt v2, v5, :cond_3

    #@42
    .line 113
    .end local v2    # "b":I
    .end local v3    # "boundaries":[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .end local v5    # "boundaryCount":I
    .end local v10    # "poly":Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    #@44
    goto :goto_0

    #@45
    .line 125
    .restart local v2    # "b":I
    .restart local v3    # "boundaries":[[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .restart local v5    # "boundaryCount":I
    .restart local v10    # "poly":Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    :cond_3
    aget-object v4, v3, v2

    #@47
    .line 128
    .local v4, "boundary":[Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    array-length v13, v4

    #@48
    new-array v8, v13, [J

    #@4a
    .local v8, "pixelXY":[J
    const/4 v9, 0x1

    #@4b
    .line 130
    .local v9, "point":I
    move-object/from16 v0, p1

    #@4d
    move-object/from16 v1, p0

    #@4f
    iput-object v0, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@51
    const/4 v13, 0x0

    #@52
    const/4 v14, 0x0

    #@53
    .line 133
    aget-object v14, v4, v14

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v15, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@59
    invoke-virtual {v14, v15}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@5c
    move-result v14

    #@5d
    const/4 v15, 0x0

    #@5e
    aget-object v15, v4, v15

    #@60
    move-object/from16 v0, p0

    #@62
    iget-object v0, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@64
    move-object/from16 v16, v0

    #@66
    invoke-virtual/range {v15 .. v16}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@69
    move-result v15

    #@6a
    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    #@6d
    move-result-wide v14

    #@6e
    aput-wide v14, v8, v13

    #@70
    const/4 v6, 0x1

    #@71
    .line 139
    .local v6, "i":I
    :goto_2
    array-length v13, v4

    #@72
    if-lt v6, v13, :cond_4

    #@74
    .line 151
    move-object/from16 v0, p0

    #@76
    iget-object v13, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@78
    aget-object v13, v13, v7

    #@7a
    new-array v14, v9, [J

    #@7c
    aput-object v14, v13, v2

    #@7e
    const/4 v13, 0x0

    #@7f
    .line 152
    move-object/from16 v0, p0

    #@81
    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@83
    aget-object v14, v14, v7

    #@85
    aget-object v14, v14, v2

    #@87
    const/4 v15, 0x0

    #@88
    invoke-static {v8, v13, v14, v15, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@8b
    .line 124
    add-int/lit8 v2, v2, 0x1

    #@8d
    goto :goto_1

    #@8e
    .line 140
    :cond_4
    aget-object v13, v4, v6

    #@90
    move-object/from16 v0, p0

    #@92
    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@94
    invoke-virtual {v13, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@97
    move-result v11

    #@98
    .line 141
    .local v11, "x":I
    aget-object v13, v4, v6

    #@9a
    move-object/from16 v0, p0

    #@9c
    iget-object v14, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->pixelZoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@9e
    invoke-virtual {v13, v14}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@a1
    move-result v12

    #@a2
    .line 142
    .local v12, "y":I
    add-int/lit8 v13, v9, -0x1

    #@a4
    aget-wide v14, v8, v13

    #@a6
    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@a9
    move-result v13

    #@aa
    sub-int v13, v11, v13

    #@ac
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    #@af
    move-result v13

    #@b0
    const/4 v14, 0x2

    #@b1
    if-le v13, v14, :cond_6

    #@b3
    .line 145
    :cond_5
    invoke-static {v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getXY(II)J

    #@b6
    move-result-wide v14

    #@b7
    aput-wide v14, v8, v9

    #@b9
    .line 146
    add-int/lit8 v9, v9, 0x1

    #@bb
    .line 139
    :goto_3
    add-int/lit8 v6, v6, 0x1

    #@bd
    goto :goto_2

    #@be
    .line 142
    :cond_6
    add-int/lit8 v13, v9, -0x1

    #@c0
    aget-wide v14, v8, v13

    #@c2
    invoke-static {v14, v15}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@c5
    move-result v13

    #@c6
    sub-int v13, v12, v13

    #@c8
    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    #@cb
    move-result v13

    #@cc
    const/4 v14, 0x2

    #@cd
    if-gt v13, v14, :cond_5

    #@cf
    array-length v13, v4

    #@d0
    add-int/lit8 v13, v13, -0x1

    #@d2
    if-eq v6, v13, :cond_5

    #@d4
    goto :goto_3
.end method

.method private renderEllipse(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 13
    .param p1, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "screenWidth"    # I
    .param p5, "screenHeight"    # I
    .param p6, "ellipse"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;
    .param p7, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 222
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineColor()I

    #@3
    move-result v2

    #@4
    const/4 v7, -0x1

    #@5
    if-eq v2, v7, :cond_1

    #@7
    .line 228
    :cond_0
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getCenter()Landroid_maps_conflict_avoidance/com/google/map/MapPoint;

    #@a
    move-result-object v10

    #@b
    .line 230
    .local v10, "center":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getEllipseWidth()I

    #@e
    move-result v2

    #@f
    move-object/from16 v0, p7

    #@11
    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    #@14
    move-result v5

    #@15
    .line 231
    .local v5, "ellipseWidth":I
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getEllipseHeight()I

    #@18
    move-result v2

    #@19
    move-object/from16 v0, p7

    #@1b
    invoke-virtual {v0, v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getPixelsForDistance(I)I

    #@1e
    move-result v6

    #@1f
    .line 233
    .local v6, "ellipseHeight":I
    move-object/from16 v0, p7

    #@21
    invoke-virtual {v10, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@24
    move-result v2

    #@25
    sub-int v3, v2, p2

    #@27
    .line 234
    .local v3, "centerX":I
    move-object/from16 v0, p7

    #@29
    invoke-virtual {v10, v0}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@2c
    move-result v2

    #@2d
    sub-int v4, v2, p3

    #@2f
    .line 236
    .local v4, "centerY":I
    div-int/lit8 v2, v5, 0x2

    #@31
    sub-int v2, v3, v2

    #@33
    div-int/lit8 v7, v6, 0x2

    #@35
    sub-int v7, v4, v7

    #@37
    move/from16 v0, p4

    #@39
    move/from16 v1, p5

    #@3b
    invoke-static {v0, v1, v2, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    #@3e
    move-result v12

    #@3f
    .line 238
    .local v12, "outcodeUL":I
    div-int/lit8 v2, v5, 0x2

    #@41
    add-int/2addr v2, v3

    #@42
    div-int/lit8 v7, v6, 0x2

    #@44
    add-int/2addr v7, v4

    #@45
    move/from16 v0, p4

    #@47
    move/from16 v1, p5

    #@49
    invoke-static {v0, v1, v2, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    #@4c
    move-result v11

    #@4d
    .line 241
    .local v11, "outcodeLR":I
    and-int v2, v12, v11

    #@4f
    if-eqz v2, :cond_2

    #@51
    .line 246
    :goto_0
    return-void

    #@52
    .line 222
    .end local v3    # "centerX":I
    .end local v4    # "centerY":I
    .end local v5    # "ellipseWidth":I
    .end local v6    # "ellipseHeight":I
    .end local v10    # "center":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .end local v11    # "outcodeLR":I
    .end local v12    # "outcodeUL":I
    :cond_1
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getFillColor()I

    #@55
    move-result v2

    #@56
    const/4 v7, -0x1

    #@57
    if-ne v2, v7, :cond_0

    #@59
    .line 225
    return-void

    #@5a
    .line 242
    .restart local v3    # "centerX":I
    .restart local v4    # "centerY":I
    .restart local v5    # "ellipseWidth":I
    .restart local v6    # "ellipseHeight":I
    .restart local v10    # "center":Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .restart local v11    # "outcodeLR":I
    .restart local v12    # "outcodeUL":I
    :cond_2
    invoke-interface/range {p6 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@5d
    move-result v7

    #@5e
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getLineColor()I

    #@61
    move-result v8

    #@62
    invoke-interface/range {p6 .. p6}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;->getFillColor()I

    #@65
    move-result v9

    #@66
    move-object v2, p1

    #@67
    invoke-interface/range {v2 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->paintEllipse(IIIIIII)V

    #@6a
    goto :goto_0
.end method

.method private renderLine(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 15
    .param p1, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "pixelXY"    # [J
    .param p7, "poly"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    .param p8, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    const/4 v11, 0x2

    #@1
    .line 338
    new-array v9, v11, [I

    #@3
    .local v9, "xyDiff":[I
    const/4 v11, 0x2

    #@4
    .line 339
    new-array v10, v11, [I

    #@6
    .local v10, "xyDiffLast":[I
    const/4 v11, 0x2

    #@7
    .line 340
    new-array v7, v11, [I

    #@9
    .local v7, "rangeAdjustedXy":[I
    const/4 v11, 0x0

    #@a
    const/4 v12, 0x0

    #@b
    .line 343
    aget-wide v12, p6, v12

    #@d
    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@10
    move-result v12

    #@11
    sub-int v12, v12, p2

    #@13
    aput v12, v10, v11

    #@15
    const/4 v11, 0x1

    #@16
    const/4 v12, 0x0

    #@17
    .line 344
    aget-wide v12, p6, v12

    #@19
    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@1c
    move-result v12

    #@1d
    sub-int v12, v12, p3

    #@1f
    aput v12, v10, v11

    #@21
    const/4 v11, 0x0

    #@22
    .line 345
    aget v11, v10, v11

    #@24
    const/4 v12, 0x1

    #@25
    aget v12, v10, v12

    #@27
    move/from16 v0, p4

    #@29
    move/from16 v1, p5

    #@2b
    invoke-static {v0, v1, v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    #@2e
    move-result v4

    #@2f
    .line 348
    .local v4, "lastOutcode":I
    const/4 v8, 0x1

    #@30
    .line 349
    .local v8, "skipTo":Z
    const/4 v5, 0x0

    #@31
    .local v5, "lineStarted":Z
    const/4 v2, 0x1

    #@32
    .line 350
    .end local v8    # "skipTo":Z
    .local v2, "i":I
    :goto_0
    move-object/from16 v0, p6

    #@34
    array-length v11, v0

    #@35
    if-lt v2, v11, :cond_0

    #@37
    .line 391
    if-nez v5, :cond_7

    #@39
    .line 394
    :goto_1
    return-void

    #@3a
    .line 351
    :cond_0
    aget-wide v12, p6, v2

    #@3c
    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@3f
    move-result v11

    #@40
    sub-int v11, v11, p2

    #@42
    const/4 v12, 0x0

    #@43
    aput v11, v9, v12

    #@45
    aget-wide v12, p6, v2

    #@47
    invoke-static {v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@4a
    move-result v12

    #@4b
    sub-int v12, v12, p3

    #@4d
    const/4 v13, 0x1

    #@4e
    aput v12, v9, v13

    #@50
    move/from16 v0, p4

    #@52
    move/from16 v1, p5

    #@54
    invoke-static {v0, v1, v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    #@57
    move-result v6

    #@58
    .line 359
    .local v6, "outcode":I
    and-int v11, v4, v6

    #@5a
    if-eqz v11, :cond_1

    #@5c
    .line 385
    const/4 v8, 0x1

    #@5d
    :goto_2
    const/4 v11, 0x0

    #@5e
    const/4 v12, 0x0

    #@5f
    .line 387
    aget v12, v9, v12

    #@61
    aput v12, v10, v11

    #@63
    const/4 v11, 0x1

    #@64
    const/4 v12, 0x1

    #@65
    .line 388
    aget v12, v9, v12

    #@67
    aput v12, v10, v11

    #@69
    .line 389
    move v4, v6

    #@6a
    .line 350
    add-int/lit8 v2, v2, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 360
    :cond_1
    if-eqz v5, :cond_2

    #@6f
    .line 366
    :goto_3
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->isInRange([I)Z

    #@72
    move-result v3

    #@73
    .line 367
    .local v3, "inRange":Z
    if-eqz v3, :cond_3

    #@75
    .line 371
    :goto_4
    invoke-static {v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->isInRange([I)Z

    #@78
    move-result v11

    #@79
    if-eqz v11, :cond_4

    #@7b
    .line 374
    :goto_5
    if-nez v3, :cond_5

    #@7d
    .line 379
    move-object/from16 v0, p1

    #@7f
    invoke-interface {v0, v7, v10, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->addLineSegment([I[IZ)V

    #@82
    .line 383
    :goto_6
    if-eqz v3, :cond_6

    #@84
    const/4 v8, 0x0

    #@85
    .local v8, "skipTo":Z
    :goto_7
    goto :goto_2

    #@86
    .line 361
    .end local v3    # "inRange":Z
    .end local v8    # "skipTo":Z
    :cond_2
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineColor()I

    #@89
    move-result v11

    #@8a
    invoke-interface/range {p7 .. p8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@8d
    move-result v12

    #@8e
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineStyle()I

    #@91
    move-result v13

    #@92
    move-object/from16 v0, p1

    #@94
    invoke-interface {v0, v11, v12, v13}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->startLine(III)V

    #@97
    .line 363
    const/4 v5, 0x1

    #@98
    goto :goto_3

    #@99
    .restart local v3    # "inRange":Z
    :cond_3
    const/4 v11, 0x0

    #@9a
    .line 368
    aget v11, v9, v11

    #@9c
    const/4 v12, 0x1

    #@9d
    aget v12, v9, v12

    #@9f
    const/4 v13, 0x0

    #@a0
    aget v13, v10, v13

    #@a2
    const/4 v14, 0x1

    #@a3
    aget v14, v10, v14

    #@a5
    invoke-static {v11, v12, v13, v14, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->makeInRange(IIII[I)V

    #@a8
    goto :goto_4

    #@a9
    :cond_4
    const/4 v11, 0x0

    #@aa
    .line 372
    aget v11, v10, v11

    #@ac
    const/4 v12, 0x1

    #@ad
    aget v12, v10, v12

    #@af
    const/4 v13, 0x0

    #@b0
    aget v13, v9, v13

    #@b2
    const/4 v14, 0x1

    #@b3
    aget v14, v9, v14

    #@b5
    invoke-static {v11, v12, v13, v14, v10}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->makeInRange(IIII[I)V

    #@b8
    goto :goto_5

    #@b9
    .line 376
    :cond_5
    move-object/from16 v0, p1

    #@bb
    invoke-interface {v0, v9, v10, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->addLineSegment([I[IZ)V

    #@be
    goto :goto_6

    #@bf
    :cond_6
    const/4 v8, 0x1

    #@c0
    .line 383
    goto :goto_7

    #@c1
    .line 392
    .end local v3    # "inRange":Z
    .end local v6    # "outcode":I
    :cond_7
    invoke-interface/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->endLine()V

    #@c4
    goto/16 :goto_1
.end method

.method private renderPolygonFill(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 10
    .param p1, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "boundaryPixelXY"    # [[J
    .param p7, "poly"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    .param p8, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 407
    const/4 v6, 0x0

    #@1
    .line 409
    .local v6, "overlap":Z
    invoke-static/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getBoundaryCount(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;)I

    #@4
    move-result v0

    #@5
    .line 410
    .local v0, "boundaries":I
    new-array v1, v0, [[J

    #@7
    .local v1, "boundaryPixelXYOnScreen":[[J
    const/4 v7, 0x0

    #@8
    const/4 v8, 0x0

    #@9
    .line 411
    aget-object v8, p6, v8

    #@b
    invoke-static {p2, p3, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getPixelXYOnScreen(II[J)[J

    #@e
    move-result-object v8

    #@f
    aput-object v8, v1, v7

    #@11
    const/4 v7, 0x0

    #@12
    .line 415
    aget-object v7, v1, v7

    #@14
    const/4 v8, 0x0

    #@15
    aget-wide v8, v7, v8

    #@17
    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@1a
    move-result v7

    #@1b
    const/4 v8, 0x0

    #@1c
    aget-object v8, v1, v8

    #@1e
    const/4 v9, 0x0

    #@1f
    aget-wide v8, v8, v9

    #@21
    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@24
    move-result v8

    #@25
    invoke-static {p4, p5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    #@28
    move-result v4

    #@29
    .line 418
    .local v4, "lastOutcode":I
    move v2, v4

    #@2a
    .local v2, "cumulativeOutcode":I
    const/4 v3, 0x1

    #@2b
    .local v3, "i":I
    :goto_0
    const/4 v7, 0x0

    #@2c
    .line 420
    aget-object v7, v1, v7

    #@2e
    array-length v7, v7

    #@2f
    if-lt v3, v7, :cond_0

    #@31
    :goto_1
    const/16 v7, 0xf

    #@33
    .line 443
    if-eq v2, v7, :cond_2

    #@35
    .line 447
    :goto_2
    if-nez v6, :cond_3

    #@37
    .line 457
    :goto_3
    return-void

    #@38
    :cond_0
    const/4 v7, 0x0

    #@39
    .line 423
    aget-object v7, v1, v7

    #@3b
    aget-wide v8, v7, v3

    #@3d
    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getX(J)I

    #@40
    move-result v7

    #@41
    const/4 v8, 0x0

    #@42
    aget-object v8, v1, v8

    #@44
    aget-wide v8, v8, v3

    #@46
    invoke-static {v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getY(J)I

    #@49
    move-result v8

    #@4a
    invoke-static {p4, p5, v7, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->outcode(IIII)I

    #@4d
    move-result v5

    #@4e
    .line 426
    .local v5, "outcode":I
    and-int v7, v4, v5

    #@50
    if-eqz v7, :cond_1

    #@52
    .line 433
    or-int/2addr v2, v5

    #@53
    .line 434
    move v4, v5

    #@54
    .line 420
    add-int/lit8 v3, v3, 0x1

    #@56
    goto :goto_0

    #@57
    .line 428
    :cond_1
    const/4 v6, 0x1

    #@58
    goto :goto_1

    #@59
    .line 444
    .end local v5    # "outcode":I
    :cond_2
    const/4 v6, 0x1

    #@5a
    goto :goto_2

    #@5b
    :cond_3
    const/4 v3, 0x1

    #@5c
    .line 450
    :goto_4
    if-lt v3, v0, :cond_4

    #@5e
    .line 454
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineColor()I

    #@61
    move-result v7

    #@62
    invoke-interface/range {p7 .. p8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getLineWidthForZoom(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@65
    move-result v8

    #@66
    invoke-interface/range {p7 .. p7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;->getFillColor()I

    #@69
    move-result v9

    #@6a
    invoke-interface {p1, v1, v7, v8, v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;->paintPolygon([[JIII)V

    #@6d
    goto :goto_3

    #@6e
    .line 451
    :cond_4
    aget-object v7, p6, v3

    #@70
    invoke-static {p2, p3, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getPixelXYOnScreen(II[J)[J

    #@73
    move-result-object v7

    #@74
    aput-object v7, v1, v3

    #@76
    .line 450
    add-int/lit8 v3, v3, 0x1

    #@78
    goto :goto_4
.end method


# virtual methods
.method public getImageVersion()I
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .local v0, "id":I
    const/4 v1, 0x0

    #@3
    .line 55
    .local v1, "p":I
    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@5
    array-length v2, v2

    #@6
    if-lt v1, v2, :cond_0

    #@8
    .line 63
    return v0

    #@9
    .line 56
    :cond_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@b
    aget-object v2, v2, v1

    #@d
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->isAvailable()Z

    #@10
    move-result v2

    #@11
    if-eqz v2, :cond_1

    #@13
    .line 60
    mul-int/lit8 v2, v0, 0x1d

    #@15
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@17
    aget-object v3, v3, v1

    #@19
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->getId()I

    #@1c
    move-result v3

    #@1d
    add-int v0, v2, v3

    #@1f
    .line 55
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 58
    :cond_1
    return v4
.end method

.method public render(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)V
    .locals 12
    .param p1, "painter"    # Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 190
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->getImageVersion()I

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 195
    move-object/from16 v0, p6

    #@8
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->precalculatePixels(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    #@b
    const/4 v11, 0x0

    #@c
    .line 198
    .local v11, "p":I
    :goto_0
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@e
    array-length v1, v1

    #@f
    if-lt v11, v1, :cond_1

    #@11
    .line 217
    return-void

    #@12
    .line 191
    .end local v11    # "p":I
    :cond_0
    return-void

    #@13
    .line 199
    .restart local v11    # "p":I
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@15
    aget-object v1, v1, v11

    #@17
    instance-of v1, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;

    #@19
    if-nez v1, :cond_2

    #@1b
    .line 203
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@1d
    aget-object v8, v1, v11

    #@1f
    check-cast v8, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;

    #@21
    .line 204
    .local v8, "renderablePoly":Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@23
    aget-object v1, v1, v11

    #@25
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;->isFilled()Z

    #@28
    move-result v1

    #@29
    if-nez v1, :cond_3

    #@2b
    const/4 v10, 0x0

    #@2c
    .line 210
    .local v10, "b":I
    :goto_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@2e
    aget-object v1, v1, v11

    #@30
    array-length v1, v1

    #@31
    if-lt v10, v1, :cond_4

    #@33
    .line 198
    .end local v8    # "renderablePoly":Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    .end local v10    # "b":I
    :goto_2
    add-int/lit8 v11, v11, 0x1

    #@35
    goto :goto_0

    #@36
    .line 200
    :cond_2
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->shapes:[Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableShape;

    #@38
    aget-object v7, v1, v11

    #@3a
    check-cast v7, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;

    #@3c
    move-object v1, p0

    #@3d
    move-object v2, p1

    #@3e
    move v3, p2

    #@3f
    move v4, p3

    #@40
    move/from16 v5, p4

    #@42
    move/from16 v6, p5

    #@44
    move-object/from16 v8, p6

    #@46
    invoke-direct/range {v1 .. v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderEllipse(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIIILandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderableEllipse;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    #@49
    goto :goto_2

    #@4a
    .line 206
    .restart local v8    # "renderablePoly":Landroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;
    :cond_3
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@4c
    aget-object v7, v1, v11

    #@4e
    move-object v1, p0

    #@4f
    move-object v2, p1

    #@50
    move v3, p2

    #@51
    move v4, p3

    #@52
    move/from16 v5, p4

    #@54
    move/from16 v6, p5

    #@56
    move-object/from16 v9, p6

    #@58
    invoke-direct/range {v1 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderPolygonFill(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    #@5b
    goto :goto_2

    #@5c
    .line 211
    .restart local v10    # "b":I
    :cond_4
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->polyBoundaryPixelXY:[[[J

    #@5e
    aget-object v1, v1, v11

    #@60
    aget-object v7, v1, v10

    #@62
    move-object v1, p0

    #@63
    move-object v2, p1

    #@64
    move v3, p2

    #@65
    move v4, p3

    #@66
    move/from16 v5, p4

    #@68
    move/from16 v6, p5

    #@6a
    move-object/from16 v9, p6

    #@6c
    invoke-direct/range {v1 .. v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer;->renderLine(Landroid_maps_conflict_avoidance/com/google/googlenav/ui/ShapeRenderer$Painter;IIII[JLandroid_maps_conflict_avoidance/com/google/googlenav/ui/RenderablePoly;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)V

    #@6f
    .line 210
    add-int/lit8 v10, v10, 0x1

    #@71
    goto :goto_1
.end method
