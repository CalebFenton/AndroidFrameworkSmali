.class public Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
.super Ljava/lang/Object;
.source "MapTile.java"


# static fields
.field private static final CJPG_HEADER:[B

.field protected static final LAYER_DATA_HEADER:[B

.field private static loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private static textSize:I

.field private static final unicolorTiles:Ljava/util/Hashtable;


# instance fields
.field private baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private completePaintCount:I

.field private data:[B

.field private firstPaintTime:J

.field private hasScaledImage:Z

.field private imageVersion:I

.field private isBaseMapImageRecyclable:Z

.field private isMapImageRecyclable:Z

.field private isPreCached:Z

.field private final isTemp:Z

.field private lastAccessTime:J

.field private lastPaintTime:J

.field private layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

.field private final location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

.field private mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

.field private requested:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x3

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    const/4 v2, 0x1

    #@5
    .line 41
    new-instance v0, Ljava/util/Hashtable;

    #@7
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    #@a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    #@c
    .line 69
    sput v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    #@e
    .line 72
    new-array v0, v6, [B

    #@10
    const/16 v1, 0x43

    #@12
    aput-byte v1, v0, v3

    #@14
    const/16 v1, 0x4a

    #@16
    aput-byte v1, v0, v2

    #@18
    const/16 v1, 0x50

    #@1a
    aput-byte v1, v0, v4

    #@1c
    const/16 v1, 0x47

    #@1e
    aput-byte v1, v0, v5

    #@20
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->CJPG_HEADER:[B

    #@22
    const/4 v0, 0x5

    #@23
    .line 76
    new-array v0, v0, [B

    #@25
    const/16 v1, 0x4c

    #@27
    aput-byte v1, v0, v3

    #@29
    const/16 v1, 0x54

    #@2b
    aput-byte v1, v0, v2

    #@2d
    const/16 v1, 0x49

    #@2f
    aput-byte v1, v0, v4

    #@31
    const/16 v1, 0x50

    #@33
    aput-byte v1, v0, v5

    #@35
    const/16 v1, 0xa

    #@37
    aput-byte v1, v0, v6

    #@39
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    #@3b
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    .locals 1
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "tempImage"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@0
    .prologue
    .line 223
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@4
    .line 224
    return-void
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .locals 4
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "tempImage"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .param p3, "isTemp"    # Z

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 181
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    #@6
    .line 189
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    #@8
    .line 190
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    #@a
    .line 240
    invoke-static {p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V

    #@d
    .line 241
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@f
    .line 242
    iput-boolean p3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    #@11
    .line 243
    invoke-direct {p0, p2, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@14
    .line 244
    if-nez p2, :cond_0

    #@16
    move v0, v1

    #@17
    :goto_0
    iput-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@19
    const-wide/16 v2, 0x0

    #@1b
    .line 245
    iput-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    #@1d
    .line 246
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@1f
    .line 247
    return-void

    #@20
    :cond_0
    const/4 v0, 0x1

    #@21
    .line 244
    goto :goto_0
.end method

.method public constructor <init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)V
    .locals 3
    .param p1, "location"    # Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .param p2, "imageData"    # [B

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 181
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    #@6
    .line 189
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    #@8
    .line 190
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    #@a
    .line 256
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@c
    .line 257
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    #@e
    const-wide/16 v0, 0x0

    #@10
    .line 258
    iput-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    #@12
    .line 259
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@14
    .line 260
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setData([B)V

    #@17
    .line 261
    return-void
.end method

.method private static createTempImages()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x100

    #@2
    .line 713
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    #@9
    move-result-object v1

    #@a
    .local v1, "factory":Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    :try_start_0
    const-string/jumbo v2, "/loading_tile_android.png"

    #@d
    .line 720
    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@10
    move-result-object v2

    #@11
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@13
    .line 721
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@15
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@17
    .line 734
    :goto_0
    return-void

    #@18
    .line 733
    :catch_0
    move-exception v0

    #@19
    .line 731
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    #@1a
    invoke-interface {v1, v3, v3, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@1d
    move-result-object v2

    #@1e
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@20
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@22
    const-string/jumbo v2, "MAP"

    #@25
    .line 732
    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    goto :goto_0
.end method

.method private static equalBytes([BI[B)Z
    .locals 4
    .param p0, "src"    # [B
    .param p1, "srcOffset"    # I
    .param p2, "reference"    # [B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 741
    array-length v1, p0

    #@2
    array-length v2, p2

    #@3
    add-int/2addr v2, p1

    #@4
    if-lt v1, v2, :cond_0

    #@6
    const/4 v0, 0x0

    #@7
    .line 744
    .local v0, "i":I
    :goto_0
    array-length v1, p2

    #@8
    if-lt v0, v1, :cond_1

    #@a
    .line 749
    const/4 v1, 0x1

    #@b
    return v1

    #@c
    .line 742
    .end local v0    # "i":I
    :cond_0
    return v3

    #@d
    .line 745
    .restart local v0    # "i":I
    :cond_1
    add-int v1, p1, v0

    #@f
    aget-byte v1, p0, v1

    #@11
    aget-byte v2, p2, v0

    #@13
    if-ne v1, v2, :cond_2

    #@15
    .line 744
    add-int/lit8 v0, v0, 0x1

    #@17
    goto :goto_0

    #@18
    .line 746
    :cond_2
    return v3
.end method

.method private extractLayerTileAndImageData()[B
    .locals 14

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 402
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@3
    .line 406
    .local v3, "imageData":[B
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@5
    sget-object v12, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    #@7
    invoke-static {v11, v13, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->equalBytes([BI[B)Z

    #@a
    move-result v11

    #@b
    if-nez v11, :cond_0

    #@d
    .line 446
    :goto_0
    return-object v3

    #@e
    .line 408
    :cond_0
    :try_start_0
    sget-object v11, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->LAYER_DATA_HEADER:[B

    #@10
    array-length v7, v11

    #@11
    .local v7, "offset":I
    const/4 v11, 0x4

    #@12
    .line 410
    new-array v9, v11, [B

    #@14
    .line 411
    .local v9, "sizeBytes":[B
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@16
    const/4 v12, 0x0

    #@17
    array-length v13, v9

    #@18
    invoke-static {v11, v7, v9, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1b
    .line 413
    invoke-static {v9}, Landroid_maps_conflict_avoidance/com/google/common/util/ConversionUtil;->byteArrayToInt([B)I

    #@1e
    move-result v8

    #@1f
    .line 414
    .local v8, "size":I
    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    #@22
    move-result v6

    #@23
    .line 416
    .local v6, "layerDataSize":I
    add-int/lit8 v7, v7, 0x4

    #@25
    .line 417
    new-instance v4, Ljava/io/ByteArrayInputStream;

    #@27
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@29
    invoke-direct {v4, v11, v7, v6}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@2c
    .line 419
    .local v4, "is":Ljava/io/InputStream;
    add-int/2addr v7, v6

    #@2d
    .line 420
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@2f
    array-length v11, v11

    #@30
    sub-int/2addr v11, v7

    #@31
    new-array v3, v11, [B

    #@33
    .line 421
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@35
    const/4 v12, 0x0

    #@36
    array-length v13, v3

    #@37
    invoke-static {v11, v7, v3, v12, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3a
    .line 423
    if-ltz v8, :cond_1

    #@3c
    .line 428
    :goto_1
    new-instance v10, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@3e
    sget-object v11, Landroid_maps_conflict_avoidance/com/google/googlenav/proto/GmmMessageTypes;->LAYER_TILE_INFO_PROTO:Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;

    #@40
    invoke-direct {v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBufType;)V

    #@43
    .line 429
    .local v10, "tileInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    invoke-virtual {v10, v4}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@46
    const/4 v11, 0x3

    #@47
    .line 432
    invoke-virtual {v10, v11}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getCount(I)I

    #@4a
    move-result v1

    #@4b
    .line 433
    .local v1, "areasNum":I
    new-array v0, v1, [Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@4d
    .local v0, "areas":[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    const/4 v5, 0x0

    #@4e
    .line 434
    .local v5, "j":I
    :goto_2
    if-lt v5, v1, :cond_2

    #@50
    .line 439
    new-instance v11, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@52
    iget-object v12, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@54
    invoke-direct {v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;)V

    #@57
    iput-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@59
    .line 440
    iget-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@5b
    invoke-virtual {v11, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;->setLayerTileData([Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@5e
    goto :goto_0

    #@5f
    .line 444
    .end local v0    # "areas":[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    .end local v1    # "areasNum":I
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "j":I
    .end local v6    # "layerDataSize":I
    .end local v7    # "offset":I
    .end local v8    # "size":I
    .end local v9    # "sizeBytes":[B
    .end local v10    # "tileInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :catch_0
    move-exception v2

    #@60
    .local v2, "e":Ljava/io/IOException;
    const/4 v11, 0x0

    #@61
    .line 442
    iput-object v11, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;

    #@63
    const-string/jumbo v11, "IOException reading layer data"

    #@66
    .line 443
    invoke-static {v11, v2}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logQuietThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@69
    goto :goto_0

    #@6a
    .line 424
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v4    # "is":Ljava/io/InputStream;
    .restart local v6    # "layerDataSize":I
    .restart local v7    # "offset":I
    .restart local v8    # "size":I
    .restart local v9    # "sizeBytes":[B
    :cond_1
    :try_start_1
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    #@6d
    move-result-object v4

    #@6e
    goto :goto_1

    #@6f
    .line 435
    .restart local v0    # "areas":[Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;
    .restart local v1    # "areasNum":I
    .restart local v5    # "j":I
    .restart local v10    # "tileInfo":Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;
    :cond_2
    new-instance v11, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;

    #@71
    const/4 v12, 0x3

    #@72
    invoke-virtual {v10, v12, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;

    #@75
    move-result-object v12

    #@76
    invoke-direct {v11, v12}, Landroid_maps_conflict_avoidance/com/google/googlenav/layer/ClickableArea;-><init>(Landroid_maps_conflict_avoidance/com/google/common/io/protocol/ProtoBuf;)V

    #@79
    aput-object v11, v0, v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    #@7b
    .line 434
    add-int/lit8 v5, v5, 0x1

    #@7d
    goto :goto_2
.end method

.method private static getImageFromCjpg([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 4
    .param p0, "data"    # [B

    #@0
    .prologue
    .line 810
    :try_start_0
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/image/compression/jpeg/JpegUtil;->uncompactJpeg([B)[B

    #@3
    move-result-object p0

    #@4
    .line 811
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    #@b
    move-result-object v1

    #@c
    const/4 v2, 0x0

    #@d
    array-length v3, p0

    #@e
    invoke-interface {v1, p0, v2, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@11
    move-result-object v1

    #@12
    return-object v1

    #@13
    :catch_0
    move-exception v0

    #@14
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "MAP"

    #@17
    .line 814
    invoke-static {v1, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@1a
    .line 815
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method private static getImageFromUnicolor([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 14
    .param p0, "unicolorData"    # [B

    #@0
    .prologue
    const/16 v13, 0x100

    #@2
    const/4 v12, 0x0

    #@3
    .line 777
    array-length v10, p0

    #@4
    const/4 v11, 0x3

    #@5
    if-lt v10, v11, :cond_1

    #@7
    .line 781
    aget-byte v10, p0, v12

    #@9
    and-int/lit16 v8, v10, 0xff

    #@b
    .local v8, "red":I
    const/4 v10, 0x1

    #@c
    .line 782
    aget-byte v10, p0, v10

    #@e
    and-int/lit16 v5, v10, 0xff

    #@10
    .local v5, "green":I
    const/4 v10, 0x2

    #@11
    .line 783
    aget-byte v10, p0, v10

    #@13
    and-int/lit16 v0, v10, 0xff

    #@15
    .line 784
    .local v0, "blue":I
    shl-int/lit8 v10, v8, 0x10

    #@17
    shl-int/lit8 v11, v5, 0x8

    #@19
    or-int/2addr v10, v11

    #@1a
    or-int v1, v10, v0

    #@1c
    .line 785
    .local v1, "color":I
    new-instance v2, Ljava/lang/Integer;

    #@1e
    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    #@21
    .line 786
    .local v2, "colorKey":Ljava/lang/Integer;
    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    #@23
    invoke-virtual {v10, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v9

    #@27
    check-cast v9, Ljava/lang/ref/WeakReference;

    #@29
    .line 787
    .local v9, "ref":Ljava/lang/ref/WeakReference;
    if-nez v9, :cond_2

    #@2b
    .line 793
    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@2e
    move-result-object v10

    #@2f
    invoke-virtual {v10}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    #@32
    move-result-object v3

    #@33
    .line 794
    .local v3, "factory":Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    invoke-interface {v3, v13, v13, v12}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(IIZ)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@36
    move-result-object v7

    #@37
    .line 795
    .local v7, "img":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    invoke-interface {v7}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getGraphics()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;

    #@3a
    move-result-object v4

    #@3b
    .line 796
    .local v4, "gcs":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    invoke-interface {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->setColor(I)V

    #@3e
    .line 797
    invoke-interface {v4, v12, v12, v13, v13}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;->fillRect(IIII)V

    #@41
    .line 798
    sget-object v10, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->unicolorTiles:Ljava/util/Hashtable;

    #@43
    new-instance v11, Ljava/lang/ref/WeakReference;

    #@45
    invoke-direct {v11, v7}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@48
    invoke-virtual {v10, v2, v11}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@4b
    .line 799
    return-object v7

    #@4c
    .line 779
    .end local v0    # "blue":I
    .end local v1    # "color":I
    .end local v2    # "colorKey":Ljava/lang/Integer;
    .end local v3    # "factory":Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    .end local v4    # "gcs":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleGraphics;
    .end local v5    # "green":I
    .end local v7    # "img":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v8    # "red":I
    .end local v9    # "ref":Ljava/lang/ref/WeakReference;
    :cond_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@4f
    move-result-object v10

    #@50
    return-object v10

    #@51
    .line 788
    .restart local v0    # "blue":I
    .restart local v1    # "color":I
    .restart local v2    # "colorKey":Ljava/lang/Integer;
    .restart local v5    # "green":I
    .restart local v8    # "red":I
    .restart local v9    # "ref":Ljava/lang/ref/WeakReference;
    :cond_2
    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@54
    move-result-object v6

    #@55
    check-cast v6, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@57
    .line 789
    .local v6, "image":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    if-eqz v6, :cond_0

    #@59
    .line 790
    return-object v6
.end method

.method private static getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x100

    #@2
    .line 757
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v2}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    #@9
    move-result-object v1

    #@a
    .line 758
    .local v1, "factory":Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 770
    :goto_0
    sget-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@10
    return-object v2

    #@11
    :cond_0
    :try_start_0
    const-string/jumbo v2, "/no_tile_256.png"

    #@14
    .line 761
    invoke-interface {v1, v2}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createUnscaledImage(Ljava/lang/String;)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@17
    move-result-object v2

    #@18
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a
    goto :goto_0

    #@1b
    .line 767
    :catch_0
    move-exception v0

    #@1c
    .line 765
    .local v0, "e":Ljava/io/IOException;
    invoke-interface {v1, v3, v3}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage(II)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@1f
    move-result-object v2

    #@20
    sput-object v2, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@22
    const-string/jumbo v2, "MAP"

    #@25
    .line 766
    invoke-static {v2, v0}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@28
    goto :goto_0
.end method

.method private getTempImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 1

    #@0
    .prologue
    .line 621
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 622
    :cond_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->createTempImages()V

    #@7
    .line 625
    :goto_0
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isTemp:Z

    #@9
    if-nez v0, :cond_2

    #@b
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@d
    :goto_1
    return-object v0

    #@e
    .line 621
    :cond_1
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->loadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@10
    if-eqz v0, :cond_0

    #@12
    goto :goto_0

    #@13
    .line 625
    :cond_2
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notLoadingImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@15
    goto :goto_1
.end method

.method public static getTextSize()I
    .locals 1

    #@0
    .prologue
    .line 851
    sget v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    #@2
    return v0
.end method

.method public static read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    .locals 4
    .param p0, "dis"    # Ljava/io/DataInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 651
    invoke-static {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->read(Ljava/io/DataInput;)Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@3
    move-result-object v2

    #@4
    .line 652
    .local v2, "location":Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    invoke-interface {p0}, Ljava/io/DataInput;->readUnsignedShort()I

    #@7
    move-result v1

    #@8
    .line 653
    .local v1, "length":I
    new-array v0, v1, [B

    #@a
    .line 654
    .local v0, "data":[B
    invoke-interface {p0, v0}, Ljava/io/DataInput;->readFully([B)V

    #@d
    .line 656
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@f
    invoke-direct {v3, v2, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;-><init>(Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;[B)V

    #@12
    return-object v3
.end method

.method private setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .locals 1
    .param p1, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .param p2, "isRecyclable"    # Z

    #@0
    .prologue
    .line 502
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 505
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@6
    .line 506
    iput-boolean p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    #@8
    .line 507
    return-void

    #@9
    .line 502
    :cond_1
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isBaseMapImageRecyclable:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 503
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@f
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->recycle()V

    #@12
    goto :goto_0
.end method

.method private setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    .locals 1
    .param p1, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .param p2, "isRecyclable"    # Z

    #@0
    .prologue
    .line 489
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@2
    if-nez v0, :cond_1

    #@4
    .line 492
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@6
    .line 493
    iput-boolean p2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    #@8
    .line 494
    return-void

    #@9
    .line 489
    :cond_1
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 490
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@f
    invoke-interface {v0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->recycle()V

    #@12
    goto :goto_0
.end method

.method public static setTextSize(I)V
    .locals 0
    .param p0, "desiredTextSize"    # I

    #@0
    .prologue
    .line 843
    sput p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->textSize:I

    #@2
    .line 844
    return-void
.end method

.method private static verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V
    .locals 3
    .param p0, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@0
    .prologue
    const/16 v1, 0x100

    #@2
    .line 515
    if-nez p0, :cond_0

    #@4
    .line 520
    :goto_0
    return-void

    #@5
    .line 515
    :cond_0
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getHeight()I

    #@8
    move-result v0

    #@9
    if-eq v0, v1, :cond_2

    #@b
    .line 517
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@d
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    const-string/jumbo v2, "wrong image size: "

    #@15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getWidth()I

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, " "

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getHeight()I

    #@2b
    move-result v2

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 515
    :cond_2
    invoke-interface {p0}, Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;->getWidth()I

    #@3b
    move-result v0

    #@3c
    if-ne v0, v1, :cond_1

    #@3e
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized compact()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 283
    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 284
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@9
    if-nez v0, :cond_2

    #@b
    .line 287
    :goto_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@d
    if-nez v0, :cond_3

    #@f
    :goto_1
    const/4 v0, 0x0

    #@10
    .line 290
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@12
    const/4 v0, 0x0

    #@13
    .line 291
    iput-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->layerTile:Landroid_maps_conflict_avoidance/com/google/googlenav/map/LayerTile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@15
    :goto_2
    monitor-exit p0

    #@16
    .line 293
    return-void

    #@17
    .line 283
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getRequested()Z

    #@1a
    move-result v0

    #@1b
    if-eqz v0, :cond_0

    #@1d
    goto :goto_2

    #@1e
    :cond_2
    const/4 v0, 0x0

    #@1f
    .line 285
    const/4 v1, 0x0

    #@20
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@23
    goto :goto_0

    #@24
    :catchall_0
    move-exception v0

    #@25
    monitor-exit p0

    #@26
    throw v0

    #@27
    :cond_3
    const/4 v0, 0x0

    #@28
    .line 288
    const/4 v1, 0x0

    #@29
    :try_start_2
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@2c
    goto :goto_1
.end method

.method protected declared-synchronized createImage()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    monitor-enter p0

    #@2
    .line 365
    :try_start_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@4
    if-nez v3, :cond_1

    #@6
    .line 367
    :cond_0
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->extractLayerTileAndImageData()[B

    #@9
    move-result-object v1

    #@a
    .line 375
    .local v1, "imageData":[B
    array-length v3, v1

    #@b
    if-eqz v3, :cond_2

    #@d
    .line 378
    array-length v3, v1

    #@e
    const/4 v4, 0x3

    #@f
    if-eq v3, v4, :cond_3

    #@11
    const/4 v3, 0x0

    #@12
    .line 381
    sget-object v4, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->CJPG_HEADER:[B

    #@14
    invoke-static {v1, v3, v4}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->equalBytes([BI[B)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_4

    #@1a
    .line 385
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getImageFactory()Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;

    #@21
    move-result-object v3

    #@22
    const/4 v4, 0x0

    #@23
    array-length v5, v1

    #@24
    invoke-interface {v3, v1, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/graphics/ImageFactory;->createImage([BII)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@27
    move-result-object v0

    #@28
    .line 387
    .local v0, "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    const/4 v2, 0x1

    #@29
    :goto_0
    const/4 v3, 0x0

    #@2a
    .line 389
    invoke-virtual {p0, v0, v3, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V

    #@2d
    .line 391
    const/4 v3, 0x0

    #@2e
    iput-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .end local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v1    # "imageData":[B
    :goto_1
    monitor-exit p0

    #@31
    .line 393
    return-void

    #@32
    .line 365
    :cond_1
    :try_start_1
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@34
    if-nez v3, :cond_0

    #@36
    goto :goto_1

    #@37
    .line 376
    .restart local v1    # "imageData":[B
    :cond_2
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getNotAvailableImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@3a
    move-result-object v0

    #@3b
    .line 377
    .restart local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    const/4 v2, 0x0

    #@3c
    .local v2, "isRecyclable":Z
    goto :goto_0

    #@3d
    .line 379
    .end local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v2    # "isRecyclable":Z
    :cond_3
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageFromUnicolor([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@40
    move-result-object v0

    #@41
    .line 380
    .restart local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    const/4 v2, 0x0

    #@42
    .restart local v2    # "isRecyclable":Z
    goto :goto_0

    #@43
    .line 382
    .end local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v2    # "isRecyclable":Z
    :cond_4
    invoke-static {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImageFromCjpg([B)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@46
    move-result-object v0

    #@47
    .line 383
    .restart local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    sget-object v3, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->notAvailableImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    if-ne v0, v3, :cond_5

    #@4b
    .local v2, "isRecyclable":Z
    :goto_2
    goto :goto_0

    #@4c
    .end local v2    # "isRecyclable":Z
    :cond_5
    const/4 v2, 0x1

    #@4d
    goto :goto_2

    #@4e
    .end local v0    # "createdImage":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .end local v1    # "imageData":[B
    :catchall_0
    move-exception v3

    #@4f
    monitor-exit p0

    #@50
    throw v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 661
    if-eq p0, p1, :cond_1

    #@4
    .line 664
    instance-of v3, p1, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@6
    if-eqz v3, :cond_2

    #@8
    move-object v0, p1

    #@9
    .line 668
    check-cast v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;

    #@b
    .line 669
    .local v0, "imageTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@d
    if-eqz v3, :cond_3

    #@f
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@11
    iget-object v2, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@13
    invoke-virtual {v1, v2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->equals(Ljava/lang/Object;)Z

    #@16
    move-result v1

    #@17
    :cond_0
    :goto_0
    return v1

    #@18
    .line 662
    .end local v0    # "imageTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_1
    return v2

    #@19
    .line 665
    :cond_2
    return v1

    #@1a
    .line 669
    .restart local v0    # "imageTile":Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;
    :cond_3
    iget-object v3, v0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@1c
    if-nez v3, :cond_0

    #@1e
    move v1, v2

    #@1f
    goto :goto_0
.end method

.method public getCompletePaintCount()I
    .locals 1

    #@0
    .prologue
    .line 352
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    #@2
    return v0
.end method

.method public getDataSize()I
    .locals 1

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@8
    array-length v0, v0

    #@9
    goto :goto_0
.end method

.method public getFirstPaintTime()J
    .locals 2

    #@0
    .prologue
    .line 344
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    #@2
    return-wide v0
.end method

.method public getImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 2

    #@0
    .prologue
    const-wide/high16 v0, -0x8000000000000000L

    #@2
    .line 558
    invoke-virtual {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getImage(J)Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .locals 7
    .param p1, "accessTime"    # J

    #@0
    .prologue
    .line 574
    const/4 v1, 0x0

    #@1
    .line 576
    .local v1, "handleOutOfMemory":Z
    monitor-enter p0

    #@2
    const-wide/high16 v4, -0x8000000000000000L

    #@4
    .line 577
    cmp-long v3, p1, v4

    #@6
    if-nez v3, :cond_1

    #@8
    .line 578
    :try_start_0
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {v3}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getClock()Landroid_maps_conflict_avoidance/com/google/common/Clock;

    #@f
    move-result-object v3

    #@10
    invoke-interface {v3}, Landroid_maps_conflict_avoidance/com/google/common/Clock;->currentTimeMillis()J

    #@13
    move-result-wide v4

    #@14
    iput-wide v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    #@16
    .line 585
    :goto_0
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@18
    if-nez v3, :cond_2

    #@1a
    :cond_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@1d
    move-result v3

    #@1e
    if-nez v3, :cond_3

    #@20
    .line 596
    :goto_1
    iget-object v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@22
    if-eqz v3, :cond_4

    #@24
    .line 600
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@26
    .line 602
    .local v2, "returnValue":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :goto_2
    monitor-exit p0

    #@27
    .line 603
    if-nez v1, :cond_5

    #@29
    .line 607
    :goto_3
    return-object v2

    #@2a
    .line 580
    .end local v2    # "returnValue":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :cond_1
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    #@2c
    goto :goto_0

    #@2d
    .line 602
    :catchall_0
    move-exception v3

    #@2e
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    throw v3

    #@30
    .line 585
    :cond_2
    :try_start_1
    iget-boolean v3, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    if-nez v3, :cond_0

    #@34
    goto :goto_1

    #@35
    .line 588
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->createImage()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@38
    goto :goto_1

    #@39
    .line 593
    :catch_0
    move-exception v0

    #@3a
    .line 592
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    const/4 v1, 0x1

    #@3b
    goto :goto_1

    #@3c
    .line 598
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_4
    :try_start_3
    invoke-direct {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->getTempImage()Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@3f
    move-result-object v2

    #@40
    .restart local v2    # "returnValue":Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    goto :goto_2

    #@41
    .line 605
    :cond_5
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->handleOutOfMemory()V

    #@44
    goto :goto_3
.end method

.method public getImageVersion()I
    .locals 1

    #@0
    .prologue
    .line 541
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@2
    return v0
.end method

.method public getIsPreCached()Z
    .locals 1

    #@0
    .prologue
    .line 825
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isPreCached:Z

    #@2
    return v0
.end method

.method public getLastAccessTime()J
    .locals 2

    #@0
    .prologue
    .line 307
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    #@2
    return-wide v0
.end method

.method public getLocation()Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;
    .locals 1

    #@0
    .prologue
    .line 275
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    return-object v0
.end method

.method public getRequested()Z
    .locals 1

    #@0
    .prologue
    .line 833
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    #@2
    return v0
.end method

.method public hasImage()Z
    .locals 1

    #@0
    .prologue
    .line 303
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public hasRenderedImage()Z
    .locals 3

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 707
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@3
    if-nez v1, :cond_1

    #@5
    :cond_0
    :goto_0
    return v0

    #@6
    :cond_1
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@8
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@a
    if-eq v1, v2, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public hasScaledImage()Z
    .locals 1

    #@0
    .prologue
    .line 549
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 675
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@8
    invoke-virtual {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->hashCode()I

    #@b
    move-result v0

    #@c
    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    #@0
    .prologue
    .line 297
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@2
    if-nez v0, :cond_0

    #@4
    const/4 v0, 0x0

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x1

    #@7
    goto :goto_0
.end method

.method public removeScaledImage()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 264
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 268
    :goto_0
    return-void

    #@6
    .line 265
    :cond_0
    iput-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@8
    const/4 v0, 0x0

    #@9
    .line 266
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@c
    goto :goto_0
.end method

.method public restoreBaseImage()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 532
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->baseMapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@3
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@6
    .line 533
    iput v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@8
    .line 534
    return-void
.end method

.method public declared-synchronized setData([B)V
    .locals 2
    .param p1, "data"    # [B

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 688
    :try_start_0
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isComplete()Z

    #@4
    move-result v0

    #@5
    if-nez v0, :cond_0

    #@7
    const/4 v0, 0x0

    #@8
    .line 691
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@a
    .line 692
    iput-object p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@c
    const/4 v0, 0x0

    #@d
    .line 696
    const/4 v1, 0x0

    #@e
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@11
    .line 697
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    if-eqz v0, :cond_1

    #@15
    :goto_0
    monitor-exit p0

    #@16
    .line 700
    return-void

    #@17
    .line 689
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    #@19
    const-string/jumbo v1, "Tile already complete"

    #@1c
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1f
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0

    #@23
    :cond_1
    const/4 v0, 0x0

    #@24
    .line 698
    const/4 v1, 0x0

    #@25
    :try_start_2
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@28
    goto :goto_0
.end method

.method public setImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;IZ)V
    .locals 0
    .param p1, "image"    # Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;
    .param p2, "imageVersion"    # I
    .param p3, "isRecyclable"    # Z

    #@0
    .prologue
    .line 461
    invoke-static {p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->verifyTileDimensions(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;)V

    #@3
    .line 462
    invoke-direct {p0, p1, p3}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@6
    .line 463
    invoke-virtual {p0, p2}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setImageVersion(I)V

    #@9
    .line 464
    return-void
.end method

.method public setImageVersion(I)V
    .locals 3
    .param p1, "imageVersion"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 472
    if-eqz p1, :cond_0

    #@3
    .line 480
    :goto_0
    iput p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->imageVersion:I

    #@5
    .line 481
    return-void

    #@6
    .line 473
    :cond_0
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->mapImage:Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;

    #@8
    iget-boolean v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    #@a
    invoke-direct {p0, v0, v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->setBaseMapImage(Landroid_maps_conflict_avoidance/com/google/common/graphics/GoogleImage;Z)V

    #@d
    .line 478
    iput-boolean v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->isMapImageRecyclable:Z

    #@f
    goto :goto_0
.end method

.method public final setLastAccessTime(J)V
    .locals 1
    .param p1, "lastAccessTime"    # J

    #@0
    .prologue
    .line 311
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastAccessTime:J

    #@2
    .line 312
    return-void
.end method

.method public setPaint(JJ)V
    .locals 9
    .param p1, "mapPaintTime"    # J
    .param p3, "lastMapPaintTime"    # J

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    .line 327
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    #@5
    if-eqz v1, :cond_3

    #@7
    .line 331
    :cond_0
    :goto_0
    iget-wide v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    #@9
    cmp-long v0, v0, v6

    #@b
    if-nez v0, :cond_1

    #@d
    .line 332
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    #@f
    .line 334
    :cond_1
    iput-wide p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    #@11
    .line 337
    invoke-virtual {p0}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasImage()Z

    #@14
    move-result v0

    #@15
    if-nez v0, :cond_5

    #@17
    .line 341
    :cond_2
    :goto_1
    return-void

    #@18
    .line 327
    :cond_3
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    #@1a
    cmp-long v1, v2, p3

    #@1c
    if-eqz v1, :cond_0

    #@1e
    iget-wide v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->lastPaintTime:J

    #@20
    sub-long v2, p1, v2

    #@22
    const-wide/16 v4, 0x7d0

    #@24
    cmp-long v1, v2, v4

    #@26
    if-gtz v1, :cond_4

    #@28
    const/4 v0, 0x1

    #@29
    :cond_4
    if-nez v0, :cond_0

    #@2b
    .line 329
    iput-wide v6, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->firstPaintTime:J

    #@2d
    goto :goto_0

    #@2e
    .line 337
    :cond_5
    iget-boolean v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->hasScaledImage:Z

    #@30
    if-nez v0, :cond_2

    #@32
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    #@34
    const v1, 0x7fffffff

    #@37
    if-ge v0, v1, :cond_2

    #@39
    .line 339
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    #@3b
    add-int/lit8 v0, v0, 0x1

    #@3d
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->completePaintCount:I

    #@3f
    goto :goto_1
.end method

.method public setRequested(Z)V
    .locals 0
    .param p1, "requested"    # Z

    #@0
    .prologue
    .line 829
    iput-boolean p1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->requested:Z

    #@2
    .line 830
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@7
    invoke-virtual {v1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->toString()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    move-result-object v1

    #@f
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@11
    if-nez v0, :cond_0

    #@13
    const-string/jumbo v0, "B?"

    #@16
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    return-object v0

    #@1f
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@21
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@24
    const-string/jumbo v2, "B"

    #@27
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v0

    #@2b
    iget-object v2, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@2d
    array-length v2, v2

    #@2e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@31
    move-result-object v0

    #@32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35
    move-result-object v0

    #@36
    goto :goto_0
.end method

.method public write(Ljava/io/DataOutput;)V
    .locals 1
    .param p1, "dos"    # Ljava/io/DataOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 636
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->location:Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;

    #@2
    invoke-virtual {v0, p1}, Landroid_maps_conflict_avoidance/com/google/googlenav/map/Tile;->write(Ljava/io/DataOutput;)V

    #@5
    .line 637
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@7
    array-length v0, v0

    #@8
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeShort(I)V

    #@b
    .line 638
    iget-object v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/map/MapTile;->data:[B

    #@d
    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    #@10
    .line 639
    return-void
.end method
