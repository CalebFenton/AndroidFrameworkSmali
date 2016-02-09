.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
.super Ljava/lang/Object;
.source "Tile.java"


# static fields
.field private static final CACHE_SIZES:[I

.field private static tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private static tileObjectCacheSize:I


# instance fields
.field private final flags:B

.field private final hashCode:I

.field private final xIndex:I

.field private final yIndex:I

.field private final zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/16 v0, 0x8

    #@3
    .line 120
    new-array v0, v0, [I

    #@5
    const/4 v1, 0x0

    #@6
    const/16 v2, 0x83

    #@8
    aput v2, v0, v1

    #@a
    const/16 v1, 0x101

    #@c
    aput v1, v0, v3

    #@e
    const/4 v1, 0x2

    #@f
    const/16 v2, 0x209

    #@11
    aput v2, v0, v1

    #@13
    const/4 v1, 0x3

    #@14
    const/16 v2, 0x407

    #@16
    aput v2, v0, v1

    #@18
    const/4 v1, 0x4

    #@19
    const/16 v2, 0x805

    #@1b
    aput v2, v0, v1

    #@1d
    const/4 v1, 0x5

    #@1e
    const/16 v2, 0x1003

    #@20
    aput v2, v0, v1

    #@22
    const/4 v1, 0x6

    #@23
    const/16 v2, 0x2011

    #@25
    aput v2, v0, v1

    #@27
    const/4 v1, 0x7

    #@28
    const/16 v2, 0x401b

    #@2a
    aput v2, v0, v1

    #@2c
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    #@2e
    .line 155
    invoke-static {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->initializeTileObjectCache(I)V

    #@31
    .line 156
    return-void
.end method

.method private constructor <init>(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)V
    .locals 2
    .param p1, "flags"    # B
    .param p2, "xIndex"    # I
    .param p3, "yIndex"    # I
    .param p4, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .param p5, "hashCode"    # I

    #@0
    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 213
    if-eqz p4, :cond_0

    #@5
    .line 217
    int-to-byte v0, p1

    #@6
    iput-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@8
    .line 218
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@a
    .line 219
    iput p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@c
    .line 220
    iput-object p4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@e
    .line 221
    iput p5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode:I

    #@10
    .line 222
    return-void

    #@11
    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@13
    const-string/jumbo v1, "Zoom cannot be null"

    #@16
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v0
.end method

.method private static calculateHashCode(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)I
    .locals 2
    .param p0, "xIndex"    # I
    .param p1, "yIndex"    # I
    .param p2, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .param p3, "flags"    # I

    #@0
    .prologue
    .line 391
    mul-int/lit8 v0, p0, 0x1d

    #@2
    xor-int/2addr v0, p1

    #@3
    mul-int/lit8 v0, v0, 0x1d

    #@5
    invoke-virtual {p2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@8
    move-result v1

    #@9
    add-int/2addr v0, v1

    #@a
    shl-int/lit8 v0, v0, 0x8

    #@c
    add-int/2addr v0, p3

    #@d
    return v0
.end method

.method private static getCacheSizeFromMinCacheSize(I)I
    .locals 4
    .param p0, "minSize"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 138
    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    #@3
    array-length v2, v2

    #@4
    if-lt v0, v2, :cond_0

    #@6
    .line 145
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    #@8
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    #@a
    array-length v3, v3

    #@b
    add-int/lit8 v3, v3, -0x1

    #@d
    aget v2, v2, v3

    #@f
    return v2

    #@10
    .line 139
    :cond_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->CACHE_SIZES:[I

    #@12
    aget v1, v2, v0

    #@14
    .line 141
    .local v1, "prime":I
    if-ge v1, p0, :cond_1

    #@16
    .line 138
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 142
    :cond_1
    return v1
.end method

.method public static getSatType()B
    .locals 1

    #@0
    .prologue
    .line 226
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->isChinaVersion()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    const/4 v0, 0x6

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x3

    #@9
    goto :goto_0
.end method

.method public static getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 7
    .param p0, "flags"    # B
    .param p1, "xIndex"    # I
    .param p2, "yIndex"    # I
    .param p3, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 189
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@3
    move-result v1

    #@4
    div-int/lit16 v1, v1, 0x100

    #@6
    rem-int/2addr p1, v1

    #@7
    .line 190
    if-ltz p1, :cond_1

    #@9
    .line 194
    :goto_0
    invoke-static {p1, p2, p3, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->calculateHashCode(IILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)I

    #@c
    move-result v5

    #@d
    .line 195
    .local v5, "hashCode":I
    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    #@f
    rem-int v6, v5, v1

    #@11
    .line 196
    .local v6, "objectCacheIndex":I
    if-ltz v6, :cond_2

    #@13
    .line 199
    :goto_1
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@15
    aget-object v0, v1, v6

    #@17
    .line 200
    .local v0, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    if-nez v0, :cond_3

    #@19
    .line 207
    :cond_0
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@1b
    .end local v0    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    move v1, p0

    #@1c
    move v2, p1

    #@1d
    move v3, p2

    #@1e
    move-object v4, p3

    #@1f
    invoke-direct/range {v0 .. v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;-><init>(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;I)V

    #@22
    .line 208
    .restart local v0    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@24
    aput-object v0, v1, v6

    #@26
    .line 209
    return-object v0

    #@27
    .line 191
    .end local v0    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .end local v5    # "hashCode":I
    .end local v6    # "objectCacheIndex":I
    :cond_1
    invoke-virtual {p3}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@2a
    move-result v1

    #@2b
    div-int/lit16 v1, v1, 0x100

    #@2d
    add-int/2addr p1, v1

    #@2e
    goto :goto_0

    #@2f
    .line 197
    .restart local v5    # "hashCode":I
    .restart local v6    # "objectCacheIndex":I
    :cond_2
    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    #@31
    add-int/2addr v6, v1

    #@32
    goto :goto_1

    #@33
    .line 200
    .restart local v0    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_3
    iget-byte v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@35
    if-ne v1, p0, :cond_0

    #@37
    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@39
    if-ne v1, p1, :cond_0

    #@3b
    iget v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@3d
    if-ne v1, p2, :cond_0

    #@3f
    iget-object v1, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@41
    if-ne v1, p3, :cond_0

    #@43
    .line 205
    return-object v0
.end method

.method public static getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 3
    .param p0, "flags"    # B
    .param p1, "oldTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    .line 177
    iget v0, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@2
    iget v1, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@4
    iget-object v2, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@6
    invoke-static {p0, v0, v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getTile(BLandroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 2
    .param p0, "flags"    # B
    .param p1, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p2, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 166
    invoke-static {p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@3
    move-result v0

    #@4
    invoke-static {p1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@7
    move-result v1

    #@8
    invoke-static {p0, v0, v1, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getXTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 1
    .param p0, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 412
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getXPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@3
    move-result v0

    #@4
    div-int/lit16 v0, v0, 0x100

    #@6
    return v0
.end method

.method public static getYTileIndex(Landroid_maps_conflict_avoidance/com/google/map/MapPoint;Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I
    .locals 1
    .param p0, "point"    # Landroid_maps_conflict_avoidance/com/google/map/MapPoint;
    .param p1, "zoom"    # Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@0
    .prologue
    .line 424
    invoke-virtual {p0, p1}, Landroid_maps_conflict_avoidance/com/google/map/MapPoint;->getYPixel(Landroid_maps_conflict_avoidance/com/google/map/Zoom;)I

    #@3
    move-result v0

    #@4
    div-int/lit16 v0, v0, 0x100

    #@6
    return v0
.end method

.method public static initializeTileObjectCache(I)V
    .locals 2
    .param p0, "workingSetSize"    # I

    #@0
    .prologue
    .line 110
    mul-int/lit8 v0, p0, 0x6

    #@2
    .line 111
    .local v0, "minCacheSize":I
    invoke-static {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getCacheSizeFromMinCacheSize(I)I

    #@5
    move-result v1

    #@6
    sput v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    #@8
    .line 112
    sget v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCacheSize:I

    #@a
    new-array v1, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@c
    sput-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->tileObjectCache:[Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@e
    .line 113
    return-void
.end method

.method public static read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 5
    .param p0, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 347
    :try_start_0
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    #@3
    move-result v1

    #@4
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@7
    move-result v2

    #@8
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@b
    move-result v3

    #@c
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@f
    move-result v4

    #@10
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@13
    move-result-object v4

    #@14
    invoke-static {v1, v2, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    move-result-object v1

    #@18
    return-object v1

    #@19
    :catch_0
    move-exception v0

    #@1a
    .line 354
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    #@1c
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 374
    if-eq p0, p1, :cond_2

    #@4
    .line 377
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@6
    if-eqz v3, :cond_3

    #@8
    move-object v0, p1

    #@9
    .line 381
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@b
    .line 382
    .local v0, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@d
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@f
    if-eq v3, v4, :cond_4

    #@11
    :cond_0
    :goto_0
    move v1, v2

    #@12
    :cond_1
    return v1

    #@13
    .line 375
    .end local v0    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_2
    return v1

    #@14
    .line 378
    :cond_3
    return v2

    #@15
    .line 382
    .restart local v0    # "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_4
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@17
    iget v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@19
    if-ne v3, v4, :cond_0

    #@1b
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1d
    iget-object v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@1f
    if-ne v3, v4, :cond_0

    #@21
    iget-byte v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@23
    iget-byte v4, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@25
    if-eq v3, v4, :cond_1

    #@27
    goto :goto_0
.end method

.method public getFlags()B
    .locals 1

    #@0
    .prologue
    .line 238
    iget-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@2
    return v0
.end method

.method public getXIndex()I
    .locals 1

    #@0
    .prologue
    .line 245
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@2
    return v0
.end method

.method public getXPixelTopLeft()I
    .locals 1

    #@0
    .prologue
    .line 288
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@2
    mul-int/lit16 v0, v0, 0x100

    #@4
    return v0
.end method

.method public getYIndex()I
    .locals 1

    #@0
    .prologue
    .line 252
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@2
    return v0
.end method

.method public getYPixelTopLeft()I
    .locals 1

    #@0
    .prologue
    .line 295
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@2
    mul-int/lit16 v0, v0, 0x100

    #@4
    return v0
.end method

.method public getZoom()Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    .locals 1

    #@0
    .prologue
    .line 259
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@2
    return-object v0
.end method

.method public getZoomParent()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 7

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 304
    .local v0, "newTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    iget-object v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@3
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@6
    move-result v4

    #@7
    add-int/lit8 v4, v4, -0x1

    #@9
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoom(I)Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@c
    move-result-object v1

    #@d
    .line 306
    .local v1, "newZoom":Landroid_maps_conflict_avoidance/com/google/map/Zoom;
    if-nez v1, :cond_0

    #@f
    .line 322
    .end local v0    # "newTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :goto_0
    return-object v0

    #@10
    .line 307
    .restart local v0    # "newTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_0
    iget v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@12
    .line 308
    .local v2, "x":I
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@14
    .line 312
    .local v3, "y":I
    if-ltz v2, :cond_1

    #@16
    .line 315
    :goto_1
    if-ltz v3, :cond_2

    #@18
    .line 319
    :goto_2
    iget-byte v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@1a
    div-int/lit8 v5, v2, 0x2

    #@1c
    div-int/lit8 v6, v3, 0x2

    #@1e
    invoke-static {v4, v5, v6, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BIILandroid_maps_conflict_avoidance/com/google/map/Zoom;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@21
    move-result-object v0

    #@22
    .local v0, "newTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    goto :goto_0

    #@23
    .line 313
    .local v0, "newTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@25
    goto :goto_1

    #@26
    .line 316
    :cond_2
    add-int/lit8 v3, v3, -0x1

    #@28
    goto :goto_2
.end method

.method public final hashCode()I
    .locals 1

    #@0
    .prologue
    .line 387
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode:I

    #@2
    return v0
.end method

.method public notValid()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 400
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@3
    if-gez v1, :cond_1

    #@5
    :cond_0
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_1
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@9
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@b
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getEquatorPixels()I

    #@e
    move-result v2

    #@f
    div-int/lit16 v2, v2, 0x100

    #@11
    if-ge v1, v2, :cond_0

    #@13
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "("

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, ", "

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, ", "

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v0

    #@2c
    const-string/jumbo v1, ")"

    #@2f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v0

    #@37
    return-object v0
.end method

.method public toTraffic()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    #@0
    .prologue
    .line 329
    const/4 v0, 0x4

    #@1
    invoke-static {v0, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getTile(BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "os"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 367
    iget-byte v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->flags:B

    #@2
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    #@5
    .line 368
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->xIndex:I

    #@7
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@a
    .line 369
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->yIndex:I

    #@c
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    #@f
    .line 370
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->zoom:Landroid_maps_conflict_avoidance/com/google/map/Zoom;

    #@11
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/map/Zoom;->getZoomLevel()I

    #@14
    move-result v0

    #@15
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeByte(I)V

    #@18
    .line 371
    return-void
.end method
