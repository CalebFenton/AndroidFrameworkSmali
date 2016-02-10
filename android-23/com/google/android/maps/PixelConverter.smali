.class final Lcom/google/android/maps/PixelConverter;
.super Ljava/lang/Object;
.source "PixelConverter.java"

# interfaces
.implements Lcom/google/android/maps/Projection;


# instance fields
.field private final mInverse:Landroid/graphics/Matrix;

.field private final mMap:Landroid/com/google/googlenav/map/Map;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private final mTempFloats:[F

.field private final mTempPoint:Landroid/com/google/common/geom/Point;


# direct methods
.method constructor <init>(Landroid/com/google/googlenav/map/Map;)V
    .locals 1
    .param p1, "map"    # Landroid/com/google/googlenav/map/Map;

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@a
    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@11
    .line 37
    const/4 v0, 0x2

    #@12
    new-array v0, v0, [F

    #@14
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@16
    .line 39
    new-instance v0, Landroid/com/google/common/geom/Point;

    #@18
    invoke-direct {v0}, Landroid/com/google/common/geom/Point;-><init>()V

    #@1b
    .line 38
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@1d
    .line 42
    iput-object p1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@1f
    .line 43
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@21
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@24
    .line 44
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@26
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@29
    .line 41
    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/PixelConverter;)V
    .locals 1
    .param p1, "pc"    # Lcom/google/android/maps/PixelConverter;

    #@0
    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    #@5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@8
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@a
    .line 36
    new-instance v0, Landroid/graphics/Matrix;

    #@c
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@f
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@11
    .line 37
    const/4 v0, 0x2

    #@12
    new-array v0, v0, [F

    #@14
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@16
    .line 39
    new-instance v0, Landroid/com/google/common/geom/Point;

    #@18
    invoke-direct {v0}, Landroid/com/google/common/geom/Point;-><init>()V

    #@1b
    .line 38
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@1d
    .line 48
    iget-object v0, p1, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@1f
    iput-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@21
    .line 47
    return-void
.end method

.method private transformTempPoint()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 118
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@4
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@6
    iget v1, v1, Landroid/com/google/common/geom/Point;->x:I

    #@8
    int-to-float v1, v1

    #@9
    aput v1, v0, v2

    #@b
    .line 119
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@d
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@f
    iget v1, v1, Landroid/com/google/common/geom/Point;->y:I

    #@11
    int-to-float v1, v1

    #@12
    aput v1, v0, v3

    #@14
    .line 120
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@16
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@18
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@1b
    .line 121
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@1d
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@1f
    aget v1, v1, v2

    #@21
    float-to-int v1, v1

    #@22
    iput v1, v0, Landroid/com/google/common/geom/Point;->x:I

    #@24
    .line 122
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@26
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@28
    aget v1, v1, v3

    #@2a
    float-to-int v1, v1

    #@2b
    iput v1, v0, Landroid/com/google/common/geom/Point;->y:I

    #@2d
    .line 117
    return-void
.end method


# virtual methods
.method public fromPixels(II)Lcom/google/android/maps/GeoPoint;
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 84
    iget-object v7, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@2
    monitor-enter v7

    #@3
    .line 85
    :try_start_0
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@5
    int-to-float v8, p1

    #@6
    const/4 v9, 0x0

    #@7
    aput v8, v6, v9

    #@9
    .line 86
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@b
    int-to-float v8, p2

    #@c
    const/4 v9, 0x1

    #@d
    aput v8, v6, v9

    #@f
    .line 87
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@11
    iget-object v8, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@13
    invoke-virtual {v6, v8}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@16
    .line 88
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@18
    const/4 v8, 0x0

    #@19
    aget v6, v6, v8

    #@1b
    float-to-int p1, v6

    #@1c
    .line 89
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mTempFloats:[F

    #@1e
    const/4 v8, 0x1

    #@1f
    aget v6, v6, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    float-to-int p2, v6

    #@22
    monitor-exit v7

    #@23
    .line 91
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@25
    invoke-virtual {v6}, Landroid/com/google/googlenav/map/Map;->getCenterPoint()Landroid/com/google/map/MapPoint;

    #@28
    move-result-object v0

    #@29
    .line 92
    .local v0, "centerPoint":Landroid/com/google/map/MapPoint;
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@2b
    invoke-virtual {v6, v0}, Landroid/com/google/googlenav/map/Map;->getPointXY(Landroid/com/google/map/MapPoint;)Landroid/com/google/common/geom/Point;

    #@2e
    move-result-object v1

    #@2f
    .line 93
    .local v1, "centerXY":Landroid/com/google/common/geom/Point;
    iget v6, v1, Landroid/com/google/common/geom/Point;->x:I

    #@31
    sub-int v2, p1, v6

    #@33
    .line 94
    .local v2, "dx":I
    iget v6, v1, Landroid/com/google/common/geom/Point;->y:I

    #@35
    sub-int v3, p2, v6

    #@37
    .line 95
    .local v3, "dy":I
    iget-object v6, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@39
    invoke-virtual {v6}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v0, v2, v3, v6}, Landroid/com/google/map/MapPoint;->pixelOffset(IILandroid/com/google/map/Zoom;)Landroid/com/google/map/MapPoint;

    #@40
    move-result-object v5

    #@41
    .line 96
    .local v5, "tapPoint":Landroid/com/google/map/MapPoint;
    new-instance v4, Lcom/google/android/maps/GeoPoint;

    #@43
    invoke-direct {v4, v5}, Lcom/google/android/maps/GeoPoint;-><init>(Landroid/com/google/map/MapPoint;)V

    #@46
    .line 97
    .local v4, "point":Lcom/google/android/maps/GeoPoint;
    return-object v4

    #@47
    .line 84
    .end local v0    # "centerPoint":Landroid/com/google/map/MapPoint;
    .end local v1    # "centerXY":Landroid/com/google/common/geom/Point;
    .end local v2    # "dx":I
    .end local v3    # "dy":I
    .end local v4    # "point":Lcom/google/android/maps/GeoPoint;
    .end local v5    # "tapPoint":Landroid/com/google/map/MapPoint;
    :catchall_0
    move-exception v6

    #@48
    monitor-exit v7

    #@49
    throw v6
.end method

.method getInverseMatrix()Landroid/graphics/Matrix;
    .locals 1

    #@0
    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@2
    return-object v0
.end method

.method public metersToEquatorPixels(F)F
    .locals 3
    .param p1, "meters"    # F

    #@0
    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@2
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@4
    invoke-virtual {v1}, Landroid/com/google/googlenav/map/Map;->getZoom()Landroid/com/google/map/Zoom;

    #@7
    move-result-object v1

    #@8
    float-to-int v2, p1

    #@9
    invoke-virtual {v1, v2}, Landroid/com/google/map/Zoom;->getPixelsForDistance(I)I

    #@c
    move-result v1

    #@d
    int-to-float v1, v1

    #@e
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRadius(F)F

    #@11
    move-result v0

    #@12
    return v0
.end method

.method resetMatrix()V
    .locals 1

    #@0
    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@5
    .line 163
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@7
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    #@a
    .line 161
    return-void
.end method

.method setMatricesFrom(Lcom/google/android/maps/PixelConverter;)V
    .locals 2
    .param p1, "pc"    # Lcom/google/android/maps/PixelConverter;

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@2
    iget-object v1, p1, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@4
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@7
    .line 53
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@9
    iget-object v1, p1, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@b
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    #@e
    .line 51
    return-void
.end method

.method setMatrix(Landroid/graphics/Matrix;FLcom/google/android/maps/GeoPoint;FF)V
    .locals 6
    .param p1, "animationState"    # Landroid/graphics/Matrix;
    .param p2, "scale"    # F
    .param p3, "fixed"    # Lcom/google/android/maps/GeoPoint;
    .param p4, "fixedX"    # F
    .param p5, "fixedY"    # F

    #@0
    .prologue
    .line 142
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@2
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    #@5
    .line 144
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@7
    monitor-enter v3

    #@8
    .line 145
    :try_start_0
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@a
    invoke-virtual {p3}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid/com/google/map/MapPoint;

    #@d
    move-result-object v4

    #@e
    iget-object v5, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@10
    invoke-virtual {v2, v4, v5}, Landroid/com/google/googlenav/map/Map;->getPointXY(Landroid/com/google/map/MapPoint;Landroid/com/google/common/geom/Point;)V

    #@13
    .line 146
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@15
    iget-object v4, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@17
    iget v4, v4, Landroid/com/google/common/geom/Point;->x:I

    #@19
    neg-int v4, v4

    #@1a
    int-to-float v4, v4

    #@1b
    iget-object v5, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@1d
    iget v5, v5, Landroid/com/google/common/geom/Point;->y:I

    #@1f
    neg-int v5, v5

    #@20
    int-to-float v5, v5

    #@21
    invoke-virtual {v2, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@24
    .line 147
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@26
    invoke-virtual {v2, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    #@29
    .line 148
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@2b
    invoke-virtual {v2, p4, p5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@2e
    .line 149
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@30
    iget v2, v2, Landroid/com/google/common/geom/Point;->x:I

    #@32
    int-to-float v2, v2

    #@33
    sub-float v0, v2, p4

    #@35
    .line 150
    .local v0, "correctionX":F
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@37
    iget v2, v2, Landroid/com/google/common/geom/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@39
    int-to-float v2, v2

    #@3a
    sub-float v1, v2, p5

    #@3c
    .local v1, "correctionY":F
    monitor-exit v3

    #@3d
    .line 152
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@40
    .line 153
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@42
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    #@45
    .line 156
    iget-object v2, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@47
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mInverse:Landroid/graphics/Matrix;

    #@49
    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    #@4c
    move-result v2

    #@4d
    if-nez v2, :cond_0

    #@4f
    .line 157
    const-string/jumbo v2, "PixelConverter"

    #@52
    new-instance v3, Ljava/lang/StringBuilder;

    #@54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@57
    const-string/jumbo v4, "Setting singular matrix "

    #@5a
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v3

    #@5e
    iget-object v4, p0, Lcom/google/android/maps/PixelConverter;->mMatrix:Landroid/graphics/Matrix;

    #@60
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v3

    #@64
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@67
    move-result-object v3

    #@68
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@6b
    .line 141
    :cond_0
    return-void

    #@6c
    .line 144
    .end local v0    # "correctionX":F
    .end local v1    # "correctionY":F
    :catchall_0
    move-exception v2

    #@6d
    monitor-exit v3

    #@6e
    throw v2
.end method

.method public toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 1
    .param p1, "in"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "out"    # Landroid/graphics/Point;

    #@0
    .prologue
    .line 61
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/maps/PixelConverter;->toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method toPixels(Lcom/google/android/maps/GeoPoint;Landroid/graphics/Point;Z)Landroid/graphics/Point;
    .locals 4
    .param p1, "in"    # Lcom/google/android/maps/GeoPoint;
    .param p2, "out"    # Landroid/graphics/Point;
    .param p3, "transform"    # Z

    #@0
    .prologue
    .line 69
    if-nez p2, :cond_0

    #@2
    new-instance p2, Landroid/graphics/Point;

    #@4
    .end local p2    # "out":Landroid/graphics/Point;
    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    #@7
    .line 70
    .restart local p2    # "out":Landroid/graphics/Point;
    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@9
    monitor-enter v1

    #@a
    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mMap:Landroid/com/google/googlenav/map/Map;

    #@c
    invoke-virtual {p1}, Lcom/google/android/maps/GeoPoint;->getMapPoint()Landroid/com/google/map/MapPoint;

    #@f
    move-result-object v2

    #@10
    iget-object v3, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@12
    invoke-virtual {v0, v2, v3}, Landroid/com/google/googlenav/map/Map;->getPointXY(Landroid/com/google/map/MapPoint;Landroid/com/google/common/geom/Point;)V

    #@15
    .line 72
    if-eqz p3, :cond_1

    #@17
    invoke-direct {p0}, Lcom/google/android/maps/PixelConverter;->transformTempPoint()V

    #@1a
    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@1c
    iget v0, v0, Landroid/com/google/common/geom/Point;->x:I

    #@1e
    iput v0, p2, Landroid/graphics/Point;->x:I

    #@20
    .line 74
    iget-object v0, p0, Lcom/google/android/maps/PixelConverter;->mTempPoint:Landroid/com/google/common/geom/Point;

    #@22
    iget v0, v0, Landroid/com/google/common/geom/Point;->y:I

    #@24
    iput v0, p2, Landroid/graphics/Point;->y:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    monitor-exit v1

    #@27
    .line 75
    return-object p2

    #@28
    .line 70
    :catchall_0
    move-exception v0

    #@29
    monitor-exit v1

    #@2a
    throw v0
.end method
