.class public final Lcom/android/internal/location/altitude/GeoidMap;
.super Ljava/lang/Object;
.source "GeoidMap.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/location/altitude/GeoidMap$TileFunction;
    }
.end annotation


# static fields
.field private static final blacklist EXPIRATION_DISTANCE_PARAMS_LOCK:Ljava/lang/Object;

.field private static final blacklist EXPIRATION_DISTANCE_PREFIX:Ljava/lang/String; = "expiration-distance"

.field private static final blacklist GEOID_HEIGHT_PARAMS_LOCK:Ljava/lang/Object;

.field private static final blacklist GEOID_HEIGHT_PREFIX:Ljava/lang/String; = "geoid-height"

.field private static blacklist sExpirationDistanceParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

.field private static blacklist sGeoidHeightParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;


# instance fields
.field private final blacklist mExpirationDistanceCacheTiles:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGeoidHeightCacheTiles:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/location/altitude/GeoidMap;->GEOID_HEIGHT_PARAMS_LOCK:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/location/altitude/GeoidMap;->EXPIRATION_DISTANCE_PARAMS_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Landroid/util/LruCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/location/altitude/GeoidMap;->mGeoidHeightCacheTiles:Landroid/util/LruCache;

    .line 80
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/location/altitude/GeoidMap;->mExpirationDistanceCacheTiles:Landroid/util/LruCache;

    return-void
.end method

.method private static blacklist getCacheKey(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)J
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J

    .line 133
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method private static blacklist getDiskToken(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)Ljava/lang/String;
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J

    .line 138
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->diskTileS2Level:I

    invoke-static {p1, p2, v0}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getParent(JI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getToken(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getExpirationDistanceParams(Landroid/content/Context;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    sget-object v0, Lcom/android/internal/location/altitude/GeoidMap;->EXPIRATION_DISTANCE_PARAMS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_3
    sget-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sExpirationDistanceParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v1, :cond_f

    .line 106
    const-string v1, "expiration-distance"

    invoke-static {p0, v1}, Lcom/android/internal/location/altitude/GeoidMap;->parseParams(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v1

    sput-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sExpirationDistanceParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    .line 108
    :cond_f
    sget-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sExpirationDistanceParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    monitor-exit v0

    return-object v1

    .line 109
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public static blacklist getGeoidHeightParams()Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 2

    .line 127
    sget-object v0, Lcom/android/internal/location/altitude/GeoidMap;->GEOID_HEIGHT_PARAMS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_3
    sget-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sGeoidHeightParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    monitor-exit v0

    return-object v1

    .line 129
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public static blacklist getGeoidHeightParams(Landroid/content/Context;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    sget-object v0, Lcom/android/internal/location/altitude/GeoidMap;->GEOID_HEIGHT_PARAMS_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_3
    sget-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sGeoidHeightParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    if-nez v1, :cond_f

    .line 90
    const-string v1, "geoid-height"

    invoke-static {p0, v1}, Lcom/android/internal/location/altitude/GeoidMap;->parseParams(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v1

    sput-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sGeoidHeightParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    .line 92
    :cond_f
    sget-object v1, Lcom/android/internal/location/altitude/GeoidMap;->sGeoidHeightParams:Lcom/android/internal/location/altitude/nano/MapParamsProto;

    monitor-exit v0

    return-object v1

    .line 93
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method

.method private static blacklist getIndexX(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J
    .param p3, "width"    # I

    .line 243
    invoke-static {p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getI(J)I

    move-result v0

    invoke-static {p0, v0, p3}, Lcom/android/internal/location/altitude/GeoidMap;->getIndexXOrY(Lcom/android/internal/location/altitude/nano/MapParamsProto;II)I

    move-result v0

    return v0
.end method

.method private static blacklist getIndexXOrY(Lcom/android/internal/location/altitude/nano/MapParamsProto;II)I
    .registers 4
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "iOrJ"    # I
    .param p2, "widthOrHeight"    # I

    .line 252
    iget v0, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    rsub-int/lit8 v0, v0, 0x1e

    shr-int v0, p1, v0

    rem-int/2addr v0, p2

    return v0
.end method

.method private static blacklist getIndexY(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I
    .registers 5
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellId"    # J
    .param p3, "height"    # I

    .line 248
    invoke-static {p1, p2}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getJ(J)I

    move-result v0

    invoke-static {p0, v0, p3}, Lcom/android/internal/location/altitude/GeoidMap;->getIndexXOrY(Lcom/android/internal/location/altitude/nano/MapParamsProto;II)I

    move-result v0

    return v0
.end method

.method private static blacklist getMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z
    .registers 10
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "tileFunction"    # Lcom/android/internal/location/altitude/GeoidMap$TileFunction;
    .param p2, "s2CellIds"    # [J
    .param p3, "mapValuesMeters"    # [D

    .line 336
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/location/altitude/GeoidMap;->getUnitIntervalValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z

    move-result v0

    .line 337
    .local v0, "allFound":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    array-length v2, p3

    if-ge v1, v2, :cond_19

    .line 339
    aget-wide v2, p3, v1

    iget-wide v4, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelAMeters:D

    mul-double/2addr v2, v4

    aput-wide v2, p3, v1

    .line 340
    aget-wide v2, p3, v1

    iget-wide v4, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->modelBMeters:D

    add-double/2addr v2, v4

    aput-wide v2, p3, v1

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 342
    .end local v1    # "i":I
    :cond_19
    return v0
.end method

.method private static blacklist getUnitIntervalValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z
    .registers 12
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "tileFunction"    # Lcom/android/internal/location/altitude/GeoidMap$TileFunction;
    .param p2, "s2CellIds"    # [J
    .param p3, "values"    # [D

    .line 149
    array-length v0, p2

    .line 151
    .local v0, "len":I
    new-array v1, v0, [Lcom/android/internal/location/altitude/nano/S2TileProto;

    .line 152
    .local v1, "tiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4
    if-ge v2, v0, :cond_19

    .line 153
    aget-wide v3, p2, v2

    invoke-static {p0, v3, v4}, Lcom/android/internal/location/altitude/GeoidMap;->getCacheKey(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)J

    move-result-wide v3

    .line 154
    .local v3, "cacheKey":J
    invoke-interface {p1, v3, v4}, Lcom/android/internal/location/altitude/GeoidMap$TileFunction;->getTile(J)Lcom/android/internal/location/altitude/nano/S2TileProto;

    move-result-object v5

    aput-object v5, v1, v2

    .line 155
    const-wide/high16 v5, 0x7ff8000000000000L    # Double.NaN

    aput-wide v5, p3, v2

    .line 152
    .end local v3    # "cacheKey":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 158
    .end local v2    # "i":I
    :cond_19
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1a
    if-ge v2, v0, :cond_35

    .line 159
    aget-object v3, v1, v2

    if-eqz v3, :cond_32

    aget-wide v3, p3, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v3

    if-nez v3, :cond_29

    .line 160
    goto :goto_32

    .line 163
    :cond_29
    invoke-static {p0, p2, v1, v2, p3}, Lcom/android/internal/location/altitude/GeoidMap;->mergeByteBufferValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 164
    invoke-static {p0, p2, v1, v2, p3}, Lcom/android/internal/location/altitude/GeoidMap;->mergeByteJpegValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 165
    invoke-static {p0, p2, v1, v2, p3}, Lcom/android/internal/location/altitude/GeoidMap;->mergeBytePngValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 158
    :cond_32
    :goto_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 168
    .end local v2    # "i":I
    :cond_35
    const/4 v2, 0x1

    .line 169
    .local v2, "allFound":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    if-ge v3, v0, :cond_54

    .line 170
    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_43

    .line 171
    const/4 v2, 0x0

    goto :goto_51

    .line 173
    :cond_43
    aget-wide v4, p3, v3

    double-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    const-wide v6, 0x406fe00000000000L    # 255.0

    div-double/2addr v4, v6

    aput-wide v4, p3, v3

    .line 169
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 176
    .end local v3    # "i":I
    :cond_54
    return v2
.end method

.method static synthetic blacklist lambda$loadFromCacheAndDisk$0([J[Lcom/android/internal/location/altitude/nano/S2TileProto;J)Lcom/android/internal/location/altitude/nano/S2TileProto;
    .registers 7
    .param p0, "cacheKeys"    # [J
    .param p1, "loadedTiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p2, "cacheKey"    # J

    .line 392
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    if-ge v0, v1, :cond_10

    .line 393
    aget-wide v1, p0, v0

    cmp-long v1, v1, p2

    if-nez v1, :cond_d

    .line 394
    aget-object v1, p1, v0

    return-object v1

    .line 392
    :cond_d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 397
    .end local v0    # "i":I
    :cond_10
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic blacklist lambda$mergeFromDiskTile$1(Lcom/android/internal/location/altitude/nano/S2TileProto;J)Lcom/android/internal/location/altitude/nano/S2TileProto;
    .registers 3
    .param p0, "diskTile"    # Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p1, "cacheKey"    # J

    .line 413
    return-object p0
.end method

.method private static blacklist loadFromCacheAndDisk(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[JLandroid/util/LruCache;Ljava/lang/String;)Lcom/android/internal/location/altitude/GeoidMap$TileFunction;
    .registers 19
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s2CellIds"    # [J
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/location/altitude/nano/MapParamsProto;",
            "Landroid/content/Context;",
            "[J",
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/internal/location/altitude/GeoidMap$TileFunction;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    .local p3, "cacheTiles":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Long;Lcom/android/internal/location/altitude/nano/S2TileProto;>;"
    move-object/from16 v1, p2

    array-length v2, v1

    .line 353
    .local v2, "len":I
    new-array v5, v2, [J

    .line 354
    .local v5, "cacheKeys":[J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_6
    if-ge v0, v2, :cond_13

    .line 355
    aget-wide v3, v1, v0

    invoke-static {p0, v3, v4}, Lcom/android/internal/location/altitude/GeoidMap;->getCacheKey(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)J

    move-result-wide v3

    aput-wide v3, v5, v0

    .line 354
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 359
    .end local v0    # "i":I
    :cond_13
    new-array v8, v2, [Lcom/android/internal/location/altitude/nano/S2TileProto;

    .line 360
    .local v8, "loadedTiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    new-array v6, v2, [Ljava/lang/String;

    .line 361
    .local v6, "diskTokens":[Ljava/lang/String;
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_18
    if-ge v0, v2, :cond_53

    .line 362
    aget-object v3, v6, v0

    if-eqz v3, :cond_21

    .line 363
    move-object/from16 v9, p3

    goto :goto_50

    .line 365
    :cond_21
    aget-wide v3, v5, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    move-object/from16 v9, p3

    invoke-virtual {v9, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/location/altitude/nano/S2TileProto;

    aput-object v3, v8, v0

    .line 366
    aget-wide v3, v5, v0

    invoke-static {p0, v3, v4}, Lcom/android/internal/location/altitude/GeoidMap;->getDiskToken(Lcom/android/internal/location/altitude/nano/MapParamsProto;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v0

    .line 369
    add-int/lit8 v3, v0, 0x1

    .local v3, "j":I
    :goto_3b
    if-ge v3, v2, :cond_50

    .line 370
    aget-wide v10, v5, v3

    aget-wide v12, v5, v0

    cmp-long v4, v10, v12

    if-nez v4, :cond_4d

    .line 371
    aget-object v4, v8, v0

    aput-object v4, v8, v3

    .line 372
    aget-object v4, v6, v0

    aput-object v4, v6, v3

    .line 369
    :cond_4d
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 361
    .end local v3    # "j":I
    :cond_50
    :goto_50
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    :cond_53
    move-object/from16 v9, p3

    .line 378
    .end local v0    # "i":I
    const/4 v0, 0x0

    move v7, v0

    .local v7, "i":I
    :goto_57
    if-ge v7, v2, :cond_b6

    .line 379
    aget-object v0, v8, v7

    if-eqz v0, :cond_60

    .line 380
    move-object/from16 v10, p4

    goto :goto_a4

    .line 384
    :cond_60
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "geoid_map/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v10, p4

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-disk-tile-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v6, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".pb"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 386
    .local v3, "is":Ljava/io/InputStream;
    :try_start_93
    invoke-virtual {v3}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/location/altitude/nano/S2TileProto;->parseFrom([B)Lcom/android/internal/location/altitude/nano/S2TileProto;

    move-result-object v4
    :try_end_9b
    .catchall {:try_start_93 .. :try_end_9b} :catchall_a9

    .line 387
    .local v4, "tile":Lcom/android/internal/location/altitude/nano/S2TileProto;
    if-eqz v3, :cond_a0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 388
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_a0
    move-object v3, p0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/location/altitude/GeoidMap;->mergeFromDiskTile(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/nano/S2TileProto;[J[Ljava/lang/String;I[Lcom/android/internal/location/altitude/nano/S2TileProto;Landroid/util/LruCache;)V

    .line 378
    .end local v4    # "tile":Lcom/android/internal/location/altitude/nano/S2TileProto;
    :goto_a4
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v9, p3

    goto :goto_57

    .line 384
    .restart local v3    # "is":Ljava/io/InputStream;
    :catchall_a9
    move-exception v0

    move-object v4, v0

    if-eqz v3, :cond_b5

    :try_start_ad
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b0
    .catchall {:try_start_ad .. :try_end_b0} :catchall_b1

    goto :goto_b5

    :catchall_b1
    move-exception v0

    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_b5
    :goto_b5
    throw v4

    .line 378
    .end local v3    # "is":Ljava/io/InputStream;
    :cond_b6
    move-object/from16 v10, p4

    .line 391
    .end local v7    # "i":I
    new-instance v0, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda0;

    invoke-direct {v0, v5, v8}, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda0;-><init>([J[Lcom/android/internal/location/altitude/nano/S2TileProto;)V

    return-object v0
.end method

.method private static blacklist mergeByteBufferValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 19
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J
    .param p2, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "tileIndex"    # I
    .param p4, "values"    # [D

    .line 183
    move-object/from16 v0, p2

    aget-object v1, v0, p3

    iget-object v1, v1, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteBuffer:[B

    .line 184
    .local v1, "bytes":[B
    if-eqz v1, :cond_61

    array-length v2, v1

    if-nez v2, :cond_c

    goto :goto_61

    .line 188
    :cond_c
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 189
    .local v2, "byteBuffer":Ljava/nio/ByteBuffer;
    iget v3, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 190
    .local v3, "tileS2Level":I
    mul-int/lit8 v4, v3, 0x2

    add-int/lit8 v4, v4, 0x3

    .line 192
    .local v4, "numBitsLeftOfTile":I
    move/from16 v5, p3

    .local v5, "i":I
    :goto_27
    array-length v6, v0

    if-ge v5, v6, :cond_60

    .line 193
    aget-object v6, v0, v5

    aget-object v7, v0, p3

    if-eq v6, v7, :cond_31

    .line 194
    goto :goto_5d

    .line 197
    :cond_31
    aget-wide v6, p1, v5

    const-wide/16 v8, -0x1

    ushr-long/2addr v8, v4

    and-long/2addr v6, v8

    .line 198
    .local v6, "maskedS2CellId":J
    iget v8, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    rsub-int/lit8 v8, v8, 0x1e

    mul-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    .line 199
    .local v8, "numBitsRightOfMap":I
    ushr-long v9, v6, v8

    long-to-int v9, v9

    .line 200
    .local v9, "bufferIndex":I
    aget-wide v10, p4, v5

    invoke-static {v10, v11}, Ljava/lang/Double;->isNaN(D)Z

    move-result v10

    if-eqz v10, :cond_4d

    const-wide/16 v10, 0x0

    goto :goto_4f

    :cond_4d
    aget-wide v10, p4, v5

    :goto_4f
    aput-wide v10, p4, v5

    .line 201
    aget-wide v10, p4, v5

    invoke-virtual {v2, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v12

    and-int/lit16 v12, v12, 0xff

    int-to-double v12, v12

    add-double/2addr v10, v12

    aput-wide v10, p4, v5

    .line 192
    .end local v6    # "maskedS2CellId":J
    .end local v8    # "numBitsRightOfMap":I
    .end local v9    # "bufferIndex":I
    :goto_5d
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    .line 203
    .end local v5    # "i":I
    :cond_60
    return-void

    .line 185
    .end local v2    # "byteBuffer":Ljava/nio/ByteBuffer;
    .end local v3    # "tileS2Level":I
    .end local v4    # "numBitsLeftOfTile":I
    :cond_61
    :goto_61
    return-void
.end method

.method private static blacklist mergeByteImageValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[B[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 14
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "bytes"    # [B
    .param p2, "s2CellIds"    # [J
    .param p3, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p4, "tileIndex"    # I
    .param p5, "values"    # [D

    .line 222
    if-eqz p1, :cond_4d

    array-length v0, p1

    if-nez v0, :cond_6

    goto :goto_4d

    .line 225
    :cond_6
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 226
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_f

    .line 227
    return-void

    .line 230
    :cond_f
    move v1, p4

    .local v1, "i":I
    :goto_10
    array-length v2, p3

    if-ge v1, v2, :cond_4c

    .line 231
    aget-object v2, p3, v1

    aget-object v3, p3, p4

    if-eq v2, v3, :cond_1a

    .line 232
    goto :goto_49

    .line 235
    :cond_1a
    aget-wide v2, p5, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_25

    const-wide/16 v2, 0x0

    goto :goto_27

    :cond_25
    aget-wide v2, p5, v1

    :goto_27
    aput-wide v2, p5, v1

    .line 236
    aget-wide v2, p5, v1

    aget-wide v4, p2, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {p0, v4, v5, v6}, Lcom/android/internal/location/altitude/GeoidMap;->getIndexX(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I

    move-result v4

    aget-wide v5, p2, v1

    .line 237
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {p0, v5, v6, v7}, Lcom/android/internal/location/altitude/GeoidMap;->getIndexY(Lcom/android/internal/location/altitude/nano/MapParamsProto;JI)I

    move-result v5

    .line 236
    invoke-virtual {v0, v4, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-double v4, v4

    add-double/2addr v2, v4

    aput-wide v2, p5, v1

    .line 230
    :goto_49
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 239
    .end local v1    # "i":I
    :cond_4c
    return-void

    .line 223
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_4d
    :goto_4d
    return-void
.end method

.method private static blacklist mergeByteJpegValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 12
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J
    .param p2, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "tileIndex"    # I
    .param p4, "values"    # [D

    .line 208
    aget-object v0, p2, p3

    iget-object v2, v0, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteJpeg:[B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p0    # "params":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .end local p1    # "s2CellIds":[J
    .end local p2    # "tiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    .end local p3    # "tileIndex":I
    .end local p4    # "values":[D
    .local v1, "params":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .local v3, "s2CellIds":[J
    .local v4, "tiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    .local v5, "tileIndex":I
    .local v6, "values":[D
    invoke-static/range {v1 .. v6}, Lcom/android/internal/location/altitude/GeoidMap;->mergeByteImageValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[B[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 210
    return-void
.end method

.method private static blacklist mergeBytePngValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V
    .registers 12
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J
    .param p2, "tiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p3, "tileIndex"    # I
    .param p4, "values"    # [D

    .line 215
    aget-object v0, p2, p3

    iget-object v2, v0, Lcom/android/internal/location/altitude/nano/S2TileProto;->bytePng:[B

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    .end local p0    # "params":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .end local p1    # "s2CellIds":[J
    .end local p2    # "tiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    .end local p3    # "tileIndex":I
    .end local p4    # "values":[D
    .local v1, "params":Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .local v3, "s2CellIds":[J
    .local v4, "tiles":[Lcom/android/internal/location/altitude/nano/S2TileProto;
    .local v5, "tileIndex":I
    .local v6, "values":[D
    invoke-static/range {v1 .. v6}, Lcom/android/internal/location/altitude/GeoidMap;->mergeByteImageValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;[B[J[Lcom/android/internal/location/altitude/nano/S2TileProto;I[D)V

    .line 216
    return-void
.end method

.method private static blacklist mergeFromDiskTile(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/nano/S2TileProto;[J[Ljava/lang/String;I[Lcom/android/internal/location/altitude/nano/S2TileProto;Landroid/util/LruCache;)V
    .registers 24
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "diskTile"    # Lcom/android/internal/location/altitude/nano/S2TileProto;
    .param p2, "cacheKeys"    # [J
    .param p3, "diskTokens"    # [Ljava/lang/String;
    .param p4, "diskTokenIndex"    # I
    .param p5, "loadedTiles"    # [Lcom/android/internal/location/altitude/nano/S2TileProto;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/location/altitude/nano/MapParamsProto;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            "[J[",
            "Ljava/lang/String;",
            "I[",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    .local p6, "cacheTiles":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Long;Lcom/android/internal/location/altitude/nano/S2TileProto;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    array-length v2, v1

    .line 406
    .local v2, "len":I
    iget v3, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    iget v4, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->cacheTileS2Level:I

    sub-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    const/4 v4, 0x1

    shl-int v3, v4, v3

    .line 409
    .local v3, "numMapCellsPerCacheTile":I
    new-array v4, v3, [J

    .line 410
    .local v4, "s2CellIds":[J
    new-array v5, v3, [D

    .line 413
    .local v5, "values":[D
    new-instance v6, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda2;

    move-object/from16 v7, p1

    invoke-direct {v6, v7}, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/location/altitude/nano/S2TileProto;)V

    .line 414
    .local v6, "diskTileFunction":Lcom/android/internal/location/altitude/GeoidMap$TileFunction;
    move/from16 v8, p4

    .local v8, "i":I
    :goto_1c
    if-ge v8, v2, :cond_b5

    .line 415
    aget-object v9, p3, v8

    aget-object v10, p3, p4

    invoke-static {v9, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_af

    aget-object v9, p5, v8

    if-eqz v9, :cond_30

    .line 417
    move-object/from16 v13, p6

    goto/16 :goto_b1

    .line 421
    :cond_30
    aget-wide v9, v1, v8

    iget v11, v0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    invoke-static {v9, v10, v11}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getTraversalStart(JI)J

    move-result-wide v9

    .line 422
    .local v9, "s2CellId":J
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_39
    if-ge v11, v3, :cond_44

    .line 423
    aput-wide v9, v4, v11

    .line 424
    invoke-static {v9, v10}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getTraversalNext(J)J

    move-result-wide v9

    .line 422
    add-int/lit8 v11, v11, 0x1

    goto :goto_39

    .line 427
    .end local v11    # "j":I
    :cond_44
    invoke-static {v0, v6, v4, v5}, Lcom/android/internal/location/altitude/GeoidMap;->getUnitIntervalValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z

    move-result v11

    if-eqz v11, :cond_92

    .line 431
    new-instance v11, Lcom/android/internal/location/altitude/nano/S2TileProto;

    invoke-direct {v11}, Lcom/android/internal/location/altitude/nano/S2TileProto;-><init>()V

    aput-object v11, p5, v8

    .line 432
    aget-object v11, p5, v8

    new-array v12, v3, [B

    iput-object v12, v11, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteBuffer:[B

    .line 433
    const/4 v11, 0x0

    .restart local v11    # "j":I
    :goto_58
    if-ge v11, v3, :cond_71

    .line 434
    aget-object v12, p5, v8

    iget-object v12, v12, Lcom/android/internal/location/altitude/nano/S2TileProto;->byteBuffer:[B

    aget-wide v13, v5, v11

    const-wide v15, 0x406fe00000000000L    # 255.0

    mul-double/2addr v13, v15

    invoke-static {v13, v14}, Ljava/lang/Math;->round(D)J

    move-result-wide v13

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v12, v11

    .line 433
    add-int/lit8 v11, v11, 0x1

    goto :goto_58

    .line 438
    .end local v11    # "j":I
    :cond_71
    add-int/lit8 v11, v8, 0x1

    .restart local v11    # "j":I
    :goto_73
    if-ge v11, v2, :cond_84

    .line 439
    aget-wide v12, v1, v11

    aget-wide v14, v1, v8

    cmp-long v12, v12, v14

    if-nez v12, :cond_81

    .line 440
    aget-object v12, p5, v8

    aput-object v12, p5, v11

    .line 438
    :cond_81
    add-int/lit8 v11, v11, 0x1

    goto :goto_73

    .line 445
    .end local v11    # "j":I
    :cond_84
    aget-wide v11, v1, v8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aget-object v12, p5, v8

    move-object/from16 v13, p6

    invoke-virtual {v13, v11, v12}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b1

    .line 428
    :cond_92
    move-object/from16 v13, p6

    new-instance v11, Ljava/io/IOException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Corrupted disk tile of disk token: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    aget-object v14, p3, v8

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 415
    .end local v9    # "s2CellId":J
    :cond_af
    move-object/from16 v13, p6

    .line 414
    :goto_b1
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1c

    :cond_b5
    move-object/from16 v13, p6

    .line 447
    .end local v8    # "i":I
    return-void
.end method

.method private static blacklist parseParams(Landroid/content/Context;Ljava/lang/String;)Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "geoid_map/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-params.pb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 117
    .local v0, "is":Ljava/io/InputStream;
    :try_start_25
    invoke-virtual {v0}, Ljava/io/InputStream;->readAllBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/location/altitude/nano/MapParamsProto;->parseFrom([B)Lcom/android/internal/location/altitude/nano/MapParamsProto;

    move-result-object v1
    :try_end_2d
    .catchall {:try_start_25 .. :try_end_2d} :catchall_33

    .line 118
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 117
    :cond_32
    return-object v1

    .line 115
    :catchall_33
    move-exception v1

    if-eqz v0, :cond_3e

    :try_start_36
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_3e

    :catchall_3a
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    throw v1
.end method

.method private static blacklist readMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[JLandroid/util/LruCache;Ljava/lang/String;)[D
    .registers 9
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "s2CellIds"    # [J
    .param p4, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/location/altitude/nano/MapParamsProto;",
            "Landroid/content/Context;",
            "[J",
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Lcom/android/internal/location/altitude/nano/S2TileProto;",
            ">;",
            "Ljava/lang/String;",
            ")[D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 299
    .local p3, "cacheTiles":Landroid/util/LruCache;, "Landroid/util/LruCache<Ljava/lang/Long;Lcom/android/internal/location/altitude/nano/S2TileProto;>;"
    invoke-static {p0, p2}, Lcom/android/internal/location/altitude/GeoidMap;->validate(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)V

    .line 300
    array-length v0, p2

    new-array v0, v0, [D

    .line 301
    .local v0, "mapValuesMeters":[D
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;

    invoke-direct {v1, p3}, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;-><init>(Landroid/util/LruCache;)V

    invoke-static {p0, v1, p2, v0}, Lcom/android/internal/location/altitude/GeoidMap;->getMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 302
    return-object v0

    .line 305
    :cond_15
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/location/altitude/GeoidMap;->loadFromCacheAndDisk(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[JLandroid/util/LruCache;Ljava/lang/String;)Lcom/android/internal/location/altitude/GeoidMap$TileFunction;

    move-result-object v1

    .line 307
    .local v1, "loadedTiles":Lcom/android/internal/location/altitude/GeoidMap$TileFunction;
    invoke-static {p0, v1, p2, v0}, Lcom/android/internal/location/altitude/GeoidMap;->getMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 308
    return-object v0

    .line 310
    :cond_20
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Unable to calculate geoid heights from raw assets."

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static blacklist validate(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)V
    .registers 10
    .param p0, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p1, "s2CellIds"    # [J

    .line 260
    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, v1, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v3

    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 261
    array-length v0, p1

    move v1, v3

    :goto_e
    if-ge v1, v0, :cond_23

    aget-wide v4, p1, v1

    .line 262
    .local v4, "s2CellId":J
    invoke-static {v4, v5}, Lcom/android/internal/location/geometry/S2CellIdUtils;->getLevel(J)I

    move-result v6

    iget v7, p0, Lcom/android/internal/location/altitude/nano/MapParamsProto;->mapS2Level:I

    if-ne v6, v7, :cond_1c

    move v6, v2

    goto :goto_1d

    :cond_1c
    move v6, v3

    :goto_1d
    invoke-static {v6}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 261
    .end local v4    # "s2CellId":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 264
    :cond_23
    return-void
.end method


# virtual methods
.method public blacklist readExpirationDistances(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)[D
    .registers 6
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "s2CellIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/android/internal/location/altitude/GeoidMap;->mExpirationDistanceCacheTiles:Landroid/util/LruCache;

    const-string v1, "expiration-distance"

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/internal/location/altitude/GeoidMap;->readMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[JLandroid/util/LruCache;Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[J)[D
    .registers 6
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "s2CellIds"    # [J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/android/internal/location/altitude/GeoidMap;->mGeoidHeightCacheTiles:Landroid/util/LruCache;

    const-string v1, "geoid-height"

    invoke-static {p1, p2, p3, v0, v1}, Lcom/android/internal/location/altitude/GeoidMap;->readMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Landroid/content/Context;[JLandroid/util/LruCache;Ljava/lang/String;)[D

    move-result-object v0

    return-object v0
.end method

.method public blacklist readGeoidHeights(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)[D
    .registers 6
    .param p1, "params"    # Lcom/android/internal/location/altitude/nano/MapParamsProto;
    .param p2, "s2CellIds"    # [J

    .line 320
    invoke-static {p1, p2}, Lcom/android/internal/location/altitude/GeoidMap;->validate(Lcom/android/internal/location/altitude/nano/MapParamsProto;[J)V

    .line 321
    array-length v0, p2

    new-array v0, v0, [D

    .line 322
    .local v0, "heightsMeters":[D
    iget-object v1, p0, Lcom/android/internal/location/altitude/GeoidMap;->mGeoidHeightCacheTiles:Landroid/util/LruCache;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/internal/location/altitude/GeoidMap$$ExternalSyntheticLambda1;-><init>(Landroid/util/LruCache;)V

    invoke-static {p1, v2, p2, v0}, Lcom/android/internal/location/altitude/GeoidMap;->getMapValues(Lcom/android/internal/location/altitude/nano/MapParamsProto;Lcom/android/internal/location/altitude/GeoidMap$TileFunction;[J[D)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 323
    return-object v0

    .line 325
    :cond_17
    const/4 v1, 0x0

    return-object v1
.end method
