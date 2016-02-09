.class public abstract Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;
.super Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;
.source "BaseTileRequest.java"


# instance fields
.field protected final createTime:J

.field private final requestType:I

.field private stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

.field private textSize:I

.field private writeLatency:I


# direct methods
.method protected constructor <init>(IB)V
    .locals 4
    .param p1, "requestType"    # I
    .param p2, "flags"    # B

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/datarequest/BaseDataRequest;-><init>()V

    #@3
    .line 34
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@6
    move-result-object v1

    #@7
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@a
    move-result-object v1

    #@b
    invoke-interface {v1}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    #@11
    .line 50
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    #@13
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v2, "tile-"

    #@1b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    const/4 v2, 0x1

    #@20
    shl-int/2addr v2, p2

    #@21
    invoke-static {v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2c
    move-result-object v0

    #@2d
    .line 54
    .local v0, "stopwatchName":Ljava/lang/String;
    new-instance v1, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    #@2f
    const-string/jumbo v2, "t"

    #@32
    const/16 v3, 0x16

    #@34
    invoke-direct {v1, v0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;-><init>(Ljava/lang/String;Ljava/lang/String;S)V

    #@37
    iput-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    #@39
    .line 56
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    #@3b
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->start()V

    #@3e
    .line 57
    return-void
.end method

.method private static formatTileTypesForLog(I)Ljava/lang/String;
    .locals 2
    .param p0, "tileTypes"    # I

    #@0
    .prologue
    .line 205
    new-instance v0, Ljava/util/Vector;

    #@2
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    #@5
    .line 206
    .local v0, "result":Ljava/util/Vector;
    and-int/lit8 v1, p0, 0x4

    #@7
    if-nez v1, :cond_0

    #@9
    .line 209
    :goto_0
    and-int/lit8 v1, p0, 0x8

    #@b
    if-nez v1, :cond_1

    #@d
    .line 213
    :goto_1
    and-int/lit8 v1, p0, 0x40

    #@f
    if-nez v1, :cond_2

    #@11
    .line 217
    :goto_2
    and-int/lit16 v1, p0, 0x80

    #@13
    if-nez v1, :cond_3

    #@15
    .line 221
    :goto_3
    and-int/lit8 v1, p0, 0x10

    #@17
    if-nez v1, :cond_4

    #@19
    :goto_4
    const-string/jumbo v1, ","

    #@1c
    .line 224
    invoke-static {v0, v1}, Landroid_maps_conflict_avoidance/com/google/common/util/text/TextUtil;->join(Ljava/util/Vector;Ljava/lang/String;)Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    return-object v1

    #@21
    :cond_0
    const-string/jumbo v1, "m"

    #@24
    .line 207
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@27
    goto :goto_0

    #@28
    :cond_1
    const-string/jumbo v1, "s"

    #@2b
    .line 210
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@2e
    goto :goto_1

    #@2f
    :cond_2
    const-string/jumbo v1, "h"

    #@32
    .line 214
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@35
    goto :goto_2

    #@36
    :cond_3
    const-string/jumbo v1, "n"

    #@39
    .line 218
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@3c
    goto :goto_3

    #@3d
    :cond_4
    const-string/jumbo v1, "t"

    #@40
    .line 222
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    #@43
    goto :goto_4
.end method

.method private readImageData(Ljava/io/DataInput;)[B
    .locals 2
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 190
    invoke-interface {p1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@3
    move-result v1

    #@4
    .line 191
    .local v1, "tileSize":I
    new-array v0, v1, [B

    #@6
    .line 194
    .local v0, "imageBytes":[B
    invoke-interface {p1, v0}, Ljava/io/DataInput;->readFully([B)V

    #@9
    .line 195
    return-object v0
.end method


# virtual methods
.method public getRequestType()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    #@2
    return v0
.end method

.method protected abstract handleEndOfResponse(I)V
.end method

.method protected abstract processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readResponseData(Ljava/io/DataInput;)Z
    .locals 19
    .param p1, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/16 v16, 0x0

    #@2
    .line 100
    .local v16, "tileIndex":I
    :try_start_0
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
    move-result-wide v10

    #@e
    .line 101
    .local v10, "now":J
    move-object/from16 v0, p0

    #@10
    iget-wide v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    #@12
    sub-long v2, v10, v2

    #@14
    long-to-int v4, v2

    #@15
    .line 102
    .local v4, "firstByteLatency":I
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@18
    move-result v15

    #@19
    .line 103
    .local v15, "tileEdition":I
    move-object/from16 v0, p0

    #@1b
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    #@1d
    move-object/from16 v0, p0

    #@1f
    invoke-virtual {v0, v15, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->setTileEditionAndTextSize(II)V

    #@22
    const/4 v6, 0x0

    #@23
    .local v6, "tileCount":I
    const/4 v7, 0x0

    #@24
    .local v7, "totalSize":I
    const/16 v17, 0x0

    #@26
    .line 108
    .local v17, "tileTypes":I
    move-object/from16 v0, p0

    #@28
    iget v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    #@2a
    const/16 v3, 0x1a

    #@2c
    if-eq v2, v3, :cond_1

    #@2e
    :goto_0
    const/16 v16, 0x0

    #@30
    .line 121
    :goto_1
    move/from16 v0, v16

    #@32
    if-lt v0, v6, :cond_3

    #@34
    .line 147
    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@37
    move-result-object v2

    #@38
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@3b
    move-result-object v2

    #@3c
    invoke-interface {v2}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@3f
    move-result-wide v12

    #@40
    .line 148
    .local v12, "now2":J
    move-object/from16 v0, p0

    #@42
    iget-wide v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    #@44
    sub-long v2, v12, v2

    #@46
    long-to-int v5, v2

    #@47
    .line 150
    .local v5, "lastByteLatency":I
    move-object/from16 v0, p0

    #@49
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->stopwatchStatsTile:Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;

    #@4b
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/util/StopwatchStats;->stop()V

    #@4e
    .line 152
    invoke-static/range {v17 .. v17}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->formatTileTypesForLog(I)Ljava/lang/String;

    #@51
    move-result-object v2

    #@52
    move-object/from16 v0, p0

    #@54
    iget v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    #@56
    invoke-static/range {v2 .. v7}, Landroid_maps_conflict_avoidance/com/google/googlenav/GmmLogger;->logTimingTileLatency(Ljava/lang/String;IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@59
    .line 158
    move-object/from16 v0, p0

    #@5b
    move/from16 v1, v16

    #@5d
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    #@60
    const/4 v2, 0x1

    #@61
    return v2

    #@62
    .line 112
    .end local v5    # "lastByteLatency":I
    .end local v12    # "now2":J
    :cond_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    #@65
    move-result v14

    #@66
    .line 113
    .local v14, "responseCode":I
    if-nez v14, :cond_2

    #@68
    .line 117
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedShort()I

    #@6b
    move-result v6

    #@6c
    goto :goto_0

    #@6d
    .line 115
    :cond_2
    new-instance v2, Ljava/io/IOException;

    #@6f
    new-instance v3, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v18, "Server returned: "

    #@77
    move-object/from16 v0, v18

    #@79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v3

    #@7d
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@80
    move-result-object v3

    #@81
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v3

    #@85
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@88
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@89
    .line 156
    .end local v4    # "firstByteLatency":I
    .end local v6    # "tileCount":I
    .end local v7    # "totalSize":I
    .end local v10    # "now":J
    .end local v14    # "responseCode":I
    .end local v15    # "tileEdition":I
    .end local v17    # "tileTypes":I
    :catchall_0
    move-exception v2

    #@8a
    .line 158
    move-object/from16 v0, p0

    #@8c
    move/from16 v1, v16

    #@8e
    invoke-virtual {v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->handleEndOfResponse(I)V

    #@91
    .line 155
    throw v2

    #@92
    .line 123
    .restart local v4    # "firstByteLatency":I
    .restart local v6    # "tileCount":I
    .restart local v7    # "totalSize":I
    .restart local v10    # "now":J
    .restart local v15    # "tileEdition":I
    .restart local v17    # "tileTypes":I
    :cond_3
    :try_start_2
    invoke-static/range {p1 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@95
    move-result-object v9

    #@96
    .line 124
    .local v9, "location":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-direct/range {p0 .. p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->readImageData(Ljava/io/DataInput;)[B

    #@99
    move-result-object v8

    #@9a
    .line 125
    .local v8, "imageBytes":[B
    move-object/from16 v0, p0

    #@9c
    move/from16 v1, v16

    #@9e
    invoke-virtual {v0, v1, v9, v8}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->processDownloadedTile(ILandroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)Z

    #@a1
    move-result v2

    #@a2
    if-nez v2, :cond_0

    #@a4
    .line 134
    array-length v2, v8

    #@a5
    add-int/2addr v7, v2

    #@a6
    .line 142
    invoke-virtual {v9}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->getFlags()B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a9
    move-result v2

    #@aa
    const/4 v3, 0x1

    #@ab
    shl-int v2, v3, v2

    #@ad
    or-int v17, v17, v2

    #@af
    .line 121
    add-int/lit8 v16, v16, 0x1

    #@b1
    goto/16 :goto_1
.end method

.method protected abstract setTileEditionAndTextSize(II)V
.end method

.method protected writeRequestForTiles([Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Ljava/io/DataOutput;)V
    .locals 8
    .param p1, "tileList"    # [Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->requestType:I

    #@2
    const/16 v7, 0x1a

    #@4
    if-eq v6, v7, :cond_0

    #@6
    :goto_0
    const/4 v2, 0x0

    #@7
    .line 89
    .local v2, "i":I
    :goto_1
    array-length v6, p1

    #@8
    if-lt v2, v6, :cond_2

    #@a
    .line 93
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@d
    move-result-object v6

    #@e
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@11
    move-result-object v6

    #@12
    invoke-interface {v6}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->relativeTimeMillis()J

    #@15
    move-result-wide v4

    #@16
    .line 94
    .local v4, "now":J
    iget-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->createTime:J

    #@18
    sub-long v6, v4, v6

    #@1a
    long-to-int v6, v6

    #@1b
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->writeLatency:I

    #@1d
    .line 95
    return-void

    #@1e
    .line 71
    .end local v2    # "i":I
    .end local v4    # "now":J
    :cond_0
    array-length v6, p1

    #@1f
    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    #@22
    .line 72
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTextSize()I

    #@25
    move-result v6

    #@26
    iput v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    #@28
    .line 73
    iget v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/BaseTileRequest;->textSize:I

    #@2a
    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    #@2d
    const/16 v6, 0x100

    #@2f
    .line 74
    invoke-interface {p2, v6}, Ljava/io/DataOutput;->writeShort(I)V

    #@32
    const-wide/16 v0, 0xa2f

    #@34
    .line 83
    .local v0, "format":J
    sget-object v6, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->INSTANCE:Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;

    #@36
    invoke-virtual {v6}, Landroid_maps_conflict_avoidance/com/google/googlenav/labs/LocalLanguageTileLab;->isActive()Z

    #@39
    move-result v6

    #@3a
    if-nez v6, :cond_1

    #@3c
    .line 86
    :goto_2
    invoke-interface {p2, v0, v1}, Ljava/io/DataOutput;->writeLong(J)V

    #@3f
    goto :goto_0

    #@40
    .line 84
    :cond_1
    const-wide/16 v0, 0x2a2f

    #@42
    goto :goto_2

    #@43
    .line 90
    .end local v0    # "format":J
    .restart local v2    # "i":I
    :cond_2
    aget-object v3, p1, v2

    #@45
    .line 91
    .local v3, "tile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-virtual {v3, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    #@48
    .line 89
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1
.end method
