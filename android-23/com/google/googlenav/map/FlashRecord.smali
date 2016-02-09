.class Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
.super Ljava/lang/Object;
.source "FlashRecord.java"


# static fields
.field private static final lastCacheDataLock:Ljava/lang/Object;

.field private static lastCachedData:[B

.field private static lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;


# instance fields
.field private final flashEntries:Ljava/util/Vector;

.field private recordId:I

.field private unverified:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 75
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    #@3
    .line 80
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@5
    .line 86
    new-instance v0, Ljava/lang/Object;

    #@7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    #@c
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 68
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    #@6
    const/4 v0, -0x1

    #@7
    .line 90
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@9
    .line 91
    new-instance v0, Ljava/util/Vector;

    #@b
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@e
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@10
    .line 92
    return-void
.end method

.method static clearDataCache()V
    .locals 2

    #@0
    .prologue
    .line 503
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    const/4 v0, 0x0

    #@4
    .line 504
    :try_start_0
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    #@6
    const/4 v0, 0x0

    #@7
    .line 505
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@9
    .line 506
    monitor-exit v1

    #@a
    .line 507
    return-void

    #@b
    .line 506
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    throw v0
.end method

.method private loadTileFromDataEntry([BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 9
    .param p1, "recordBlock"    # [B
    .param p2, "desiredTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v6, 0x0

    #@2
    .line 325
    .local v6, "result":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-nez p1, :cond_1

    #@4
    .line 327
    :cond_0
    return-object v8

    #@5
    .line 325
    :cond_1
    array-length v7, p1

    #@6
    if-eqz v7, :cond_0

    #@8
    .line 331
    :try_start_0
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/common/io/IoUtil;->createDataInputFromBytes([B)Ljava/io/DataInput;

    #@b
    move-result-object v1

    #@c
    .line 332
    .local v1, "dis":Ljava/io/DataInput;
    invoke-interface {v1}, Ljava/io/DataInput;->readUnsignedByte()I

    #@f
    move-result v3

    #@10
    .line 334
    .local v3, "entries":I
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@13
    move-result v7

    #@14
    if-ne v3, v7, :cond_3

    #@16
    const/4 v5, 0x0

    #@17
    .line 339
    .end local v6    # "result":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .local v5, "i":I
    :goto_0
    if-lt v5, v3, :cond_4

    #@19
    .line 358
    :cond_2
    const/4 v7, 0x0

    #@1a
    iput-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    #@1c
    .line 363
    .end local v1    # "dis":Ljava/io/DataInput;
    .end local v3    # "entries":I
    .end local v5    # "i":I
    :goto_1
    return-object v6

    #@1d
    .line 336
    .restart local v1    # "dis":Ljava/io/DataInput;
    .restart local v3    # "entries":I
    .restart local v6    # "result":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_3
    return-object v8

    #@1e
    .line 340
    .end local v6    # "result":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .restart local v5    # "i":I
    :cond_4
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@21
    move-result-object v0

    #@22
    .line 342
    .local v0, "currentTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    #@24
    if-nez v7, :cond_6

    #@26
    .line 350
    :cond_5
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@29
    move-result-object v7

    #@2a
    invoke-virtual {v7, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@2d
    move-result v7

    #@2e
    if-nez v7, :cond_7

    #@30
    .line 339
    :goto_2
    add-int/lit8 v5, v5, 0x1

    #@32
    goto :goto_0

    #@33
    .line 343
    :cond_6
    new-instance v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@35
    invoke-direct {v4, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;)V

    #@38
    .line 344
    .local v4, "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    iget-object v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@3a
    invoke-virtual {v7, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@3d
    move-result-object v7

    #@3e
    invoke-virtual {v4, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->equals(Ljava/lang/Object;)Z

    #@41
    move-result v7

    #@42
    if-nez v7, :cond_5

    #@44
    .line 346
    return-object v8

    #@45
    .line 351
    .end local v4    # "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    :cond_7
    move-object v6, v0

    #@46
    .line 352
    .local v6, "result":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    iget-boolean v7, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@48
    if-eqz v7, :cond_2

    #@4a
    goto :goto_2

    #@4b
    .line 361
    .end local v0    # "currentTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .end local v1    # "dis":Ljava/io/DataInput;
    .end local v3    # "entries":I
    .end local v5    # "i":I
    .end local v6    # "result":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :catch_0
    move-exception v2

    #@4c
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v7, "FLASH"

    #@4f
    .line 360
    invoke-static {v7, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@52
    goto :goto_1
.end method

.method public static readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .locals 7
    .param p0, "is"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 267
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedByte()I

    #@3
    move-result v0

    #@4
    .line 268
    .local v0, "entries":I
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    #@7
    move-result v4

    #@8
    .line 269
    .local v4, "recordIndex":I
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@a
    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;-><init>()V

    #@d
    .local v3, "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    const/4 v1, 0x0

    #@e
    .line 271
    .local v1, "entry":I
    :goto_0
    if-lt v1, v0, :cond_0

    #@10
    .line 277
    const/4 v5, 0x1

    #@11
    iput-boolean v5, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->unverified:Z

    #@13
    .line 278
    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@15
    .line 280
    return-object v3

    #@16
    .line 272
    :cond_0
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->readFromCatalog(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@19
    move-result-object v2

    #@1a
    .line 273
    .local v2, "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z

    #@1d
    move-result v5

    #@1e
    if-eqz v5, :cond_1

    #@20
    .line 271
    add-int/lit8 v1, v1, 0x1

    #@22
    goto :goto_0

    #@23
    .line 274
    :cond_1
    new-instance v5, Ljava/io/IOException;

    #@25
    const-string/jumbo v6, "FlashRecord full"

    #@28
    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v5
.end method


# virtual methods
.method public addEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;)Z
    .locals 2
    .param p1, "entry"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@0
    .prologue
    .line 102
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@3
    move-result v0

    #@4
    const/16 v1, 0xff

    #@6
    if-lt v0, v1, :cond_1

    #@8
    .line 104
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0

    #@a
    .line 102
    :cond_1
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@c
    const/4 v1, -0x1

    #@d
    if-ne v0, v1, :cond_0

    #@f
    .line 107
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@11
    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@14
    .line 108
    invoke-virtual {p1, p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->setFlashRecord(Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;)V

    #@17
    .line 109
    const/4 v0, 0x1

    #@18
    return v0
.end method

.method createDataEntry(Ljava/util/Hashtable;)[B
    .locals 8
    .param p1, "tileMap"    # Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 378
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    #@3
    const v6, 0x11940

    #@6
    invoke-direct {v0, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@9
    .line 380
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    #@b
    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    #@e
    .line 381
    .local v1, "dos":Ljava/io/DataOutputStream;
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@11
    move-result v5

    #@12
    .line 383
    .local v5, "numEntries":I
    invoke-virtual {v1, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    #@15
    const/4 v3, 0x0

    #@16
    .line 384
    .local v3, "i":I
    :goto_0
    if-lt v3, v5, :cond_0

    #@18
    .line 393
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@1b
    move-result-object v6

    #@1c
    return-object v6

    #@1d
    .line 385
    :cond_0
    invoke-virtual {p0, v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@20
    move-result-object v2

    #@21
    .line 386
    .local v2, "entry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@24
    move-result-object v6

    #@25
    invoke-virtual {p1, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v4

    #@29
    check-cast v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@2b
    .line 387
    .local v4, "mapTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    if-eqz v4, :cond_1

    #@2d
    .line 390
    invoke-virtual {v4, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->write(Ljava/io/DataOutput;)V

    #@30
    .line 384
    add-int/lit8 v3, v3, 0x1

    #@32
    goto :goto_0

    #@33
    .line 388
    :cond_1
    return-object v7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 226
    if-eq p0, p1, :cond_0

    #@4
    .line 229
    instance-of v5, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@6
    if-eqz v5, :cond_1

    #@8
    move-object v1, p1

    #@9
    .line 233
    check-cast v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@b
    .line 235
    .local v1, "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    iget v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@d
    iget v6, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@f
    if-ne v5, v6, :cond_2

    #@11
    .line 239
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@14
    move-result v3

    #@15
    .line 240
    .local v3, "numEntries":I
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@18
    move-result v5

    #@19
    if-ne v3, v5, :cond_3

    #@1b
    .line 244
    iget-object v4, v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@1d
    .local v4, "otherEntries":Ljava/util/Vector;
    const/4 v2, 0x0

    #@1e
    .line 245
    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_4

    #@20
    .line 252
    return v8

    #@21
    .line 227
    .end local v1    # "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    .end local v2    # "i":I
    .end local v3    # "numEntries":I
    .end local v4    # "otherEntries":Ljava/util/Vector;
    :cond_0
    return v8

    #@22
    .line 230
    :cond_1
    return v7

    #@23
    .line 236
    .restart local v1    # "flashRecord":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;
    :cond_2
    return v7

    #@24
    .line 241
    .restart local v3    # "numEntries":I
    :cond_3
    return v7

    #@25
    .line 246
    .restart local v2    # "i":I
    .restart local v4    # "otherEntries":Ljava/util/Vector;
    :cond_4
    iget-object v5, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@27
    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@2a
    move-result-object v0

    #@2b
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@2d
    .line 247
    .local v0, "flashEntry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v4, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    invoke-virtual {v0, v5}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v5

    #@35
    if-eqz v5, :cond_5

    #@37
    .line 245
    add-int/lit8 v2, v2, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 248
    :cond_5
    return v7
.end method

.method public getDataSize()I
    .locals 4

    #@0
    .prologue
    .line 147
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@5
    move-result v1

    #@6
    .local v1, "numEntries":I
    const/4 v2, 0x1

    #@7
    .local v2, "size":I
    const/4 v0, 0x0

    #@8
    .line 150
    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    #@a
    .line 154
    return v2

    #@b
    .line 151
    :cond_0
    invoke-virtual {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getByteSize()I

    #@12
    move-result v3

    #@13
    add-int/2addr v2, v3

    #@14
    .line 150
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0
.end method

.method public getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 1
    .param p1, "index"    # I

    #@0
    .prologue
    .line 131
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@8
    return-object v0
.end method

.method public getEntry(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    .locals 3
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 117
    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@3
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    #@6
    move-result v2

    #@7
    if-lt v1, v2, :cond_0

    #@9
    const/4 v2, 0x0

    #@a
    .line 124
    return-object v2

    #@b
    .line 118
    :cond_0
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@e
    move-result-object v0

    #@f
    .line 119
    .local v0, "entry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@12
    move-result-object v2

    #@13
    invoke-virtual {v2, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v2

    #@17
    if-nez v2, :cond_1

    #@19
    .line 117
    add-int/lit8 v1, v1, 0x1

    #@1b
    goto :goto_0

    #@1c
    .line 120
    :cond_1
    return-object v0
.end method

.method public getRecordId()I
    .locals 1

    #@0
    .prologue
    .line 163
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@2
    return v0
.end method

.method public getScore(J)J
    .locals 9
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 190
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    #@5
    move-result v2

    #@6
    .local v2, "numEntries":I
    const-wide/16 v4, 0x0

    #@8
    .line 193
    .local v4, "scores":J
    if-gtz v2, :cond_0

    #@a
    const-wide v6, 0x7fffffffffffffffL

    #@f
    .line 207
    return-wide v6

    #@10
    :cond_0
    const/4 v1, 0x0

    #@11
    .line 194
    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    #@13
    .line 204
    int-to-long v6, v2

    #@14
    div-long v6, v4, v6

    #@16
    return-wide v6

    #@17
    .line 195
    :cond_1
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@1a
    move-result-object v0

    #@1b
    .line 196
    .local v0, "entry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getTile()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->getLastAccessTime()J

    #@22
    move-result-wide v6

    #@23
    invoke-static {v3, p1, p2, v6, v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapService;->getScore(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;JJ)J

    #@26
    move-result-wide v6

    #@27
    add-long/2addr v4, v6

    #@28
    .line 194
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 257
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@2
    return v0
.end method

.method isSaved()Z
    .locals 2

    #@0
    .prologue
    .line 170
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x1

    #@8
    goto :goto_0
.end method

.method public loadTile(Ljava/lang/String;Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "desiredTile"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 414
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@3
    const/4 v2, -0x1

    #@4
    if-eq v1, v2, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    .line 422
    .local v0, "recordBlock":[B
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    #@9
    monitor-enter v2

    #@a
    .line 423
    :try_start_0
    sget-object v1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@c
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->equals(Ljava/lang/Object;)Z

    #@f
    move-result v1

    #@10
    if-nez v1, :cond_2

    #@12
    .line 426
    .end local v0    # "recordBlock":[B
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    .line 428
    if-eqz v0, :cond_3

    #@15
    .line 440
    :cond_0
    :goto_1
    if-eqz v0, :cond_4

    #@17
    .line 445
    invoke-direct {p0, v0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->loadTileFromDataEntry([BLandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@1a
    move-result-object v1

    #@1b
    return-object v1

    #@1c
    .line 416
    :cond_1
    return-object v3

    #@1d
    .line 424
    .restart local v0    # "recordBlock":[B
    :cond_2
    :try_start_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    #@1f
    .local v0, "recordBlock":[B
    goto :goto_0

    #@20
    .line 426
    .end local v0    # "recordBlock":[B
    :catchall_0
    move-exception v1

    #@21
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@22
    throw v1

    #@23
    .line 429
    :cond_3
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@2a
    move-result-object v1

    #@2b
    invoke-interface {v1, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->readBlock(Ljava/lang/String;)[B

    #@2e
    move-result-object v0

    #@2f
    .line 432
    .restart local v0    # "recordBlock":[B
    if-eqz v0, :cond_0

    #@31
    array-length v1, v0

    #@32
    if-eqz v1, :cond_0

    #@34
    .line 433
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCacheDataLock:Ljava/lang/Object;

    #@36
    monitor-enter v2

    #@37
    .line 434
    :try_start_2
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastCachedData:[B

    #@39
    .line 435
    sput-object p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->lastFlashRecord:Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;

    #@3b
    .line 436
    monitor-exit v2

    #@3c
    goto :goto_1

    #@3d
    :catchall_1
    move-exception v1

    #@3e
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@3f
    throw v1

    #@40
    .line 442
    .end local v0    # "recordBlock":[B
    :cond_4
    return-object v3
.end method

.method public numEntries()I
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->flashEntries:Ljava/util/Vector;

    #@2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method setUnsaved()V
    .locals 1

    #@0
    .prologue
    const/4 v0, -0x1

    #@1
    .line 179
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@3
    .line 180
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 221
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method writeRecord(Ljava/lang/String;I[B)V
    .locals 2
    .param p1, "blockName"    # Ljava/lang/String;
    .param p2, "recordId"    # I
    .param p3, "recordData"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore$PersistentStoreException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 463
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@2
    const/4 v1, -0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 468
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@c
    move-result-object v0

    #@d
    invoke-interface {v0, p3, p1}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->writeBlockX([BLjava/lang/String;)I

    #@10
    .line 471
    iput p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@12
    .line 472
    return-void

    #@13
    .line 464
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v1, "already saved"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0
.end method

.method public writeToCatalog(Ljava/io/DataOutput;)V
    .locals 5
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 293
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@2
    const/4 v4, -0x1

    #@3
    if-eq v3, v4, :cond_0

    #@5
    .line 297
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->numEntries()I

    #@8
    move-result v2

    #@9
    .line 299
    .local v2, "numEntries":I
    invoke-interface {p1, v2}, Ljava/io/DataOutput;->writeByte(I)V

    #@c
    .line 300
    iget v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->recordId:I

    #@e
    invoke-interface {p1, v3}, Ljava/io/DataOutput;->writeInt(I)V

    #@11
    const/4 v1, 0x0

    #@12
    .line 301
    .local v1, "index":I
    :goto_0
    if-lt v1, v2, :cond_1

    #@14
    .line 305
    return-void

    #@15
    .line 294
    .end local v1    # "index":I
    .end local v2    # "numEntries":I
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    #@17
    const-string/jumbo v4, "Can\'t write unsaved FlashRecord"

    #@1a
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1d
    throw v3

    #@1e
    .line 302
    .restart local v1    # "index":I
    .restart local v2    # "numEntries":I
    :cond_1
    invoke-virtual {p0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashRecord;->getEntry(I)Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;

    #@21
    move-result-object v0

    #@22
    .line 303
    .local v0, "entry":Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/FlashEntry;->writeToCatalog(Ljava/io/DataOutput;)V

    #@25
    .line 301
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_0
.end method
