.class public final Landroid/media/MediaPlayer$DrmInfo;
.super Ljava/lang/Object;
.source "MediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DrmInfo"
.end annotation


# instance fields
.field private greylist-max-o mapPssh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation
.end field

.field private greylist-max-o supportedSchemes:[Ljava/util/UUID;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mmakeCopy(Landroid/media/MediaPlayer$DrmInfo;)Landroid/media/MediaPlayer$DrmInfo;
    .registers 1

    invoke-direct {p0}, Landroid/media/MediaPlayer$DrmInfo;->makeCopy()Landroid/media/MediaPlayer$DrmInfo;

    move-result-object p0

    return-object p0
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 10
    .param p1, "parcel"    # Landroid/os/Parcel;

    .line 5431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DrmInfo("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->dataSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5434
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 5435
    .local v0, "psshsize":I
    new-array v2, v0, [B

    .line 5436
    .local v2, "pssh":[B
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 5438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DrmInfo() PSSH: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5439
    invoke-direct {p0, v2, v0}, Landroid/media/MediaPlayer$DrmInfo;->parsePSSH([BI)Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 5440
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5442
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 5443
    .local v3, "supportedDRMsCount":I
    new-array v4, v3, [Ljava/util/UUID;

    iput-object v4, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 5444
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_71
    if-ge v4, v3, :cond_a9

    .line 5445
    const/16 v5, 0x10

    new-array v5, v5, [B

    .line 5446
    .local v5, "uuid":[B
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->readByteArray([B)V

    .line 5448
    iget-object v6, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {p0, v5}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v7

    aput-object v7, v6, v4

    .line 5450
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DrmInfo() supportedScheme["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    aget-object v7, v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5444
    .end local v5    # "uuid":[B
    add-int/lit8 v4, v4, 0x1

    goto :goto_71

    .line 5454
    .end local v4    # "i":I
    :cond_a9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DrmInfo() Parcel psshsize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supportedDRMsCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5456
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/media/MediaPlayer-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/util/Map;[Ljava/util/UUID;)V
    .registers 3
    .param p2, "SupportedSchemes"    # [Ljava/util/UUID;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;[",
            "Ljava/util/UUID;",
            ")V"
        }
    .end annotation

    .line 5426
    .local p1, "Pssh":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5427
    iput-object p1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    .line 5428
    iput-object p2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    .line 5429
    return-void
.end method

.method private greylist-max-o arrToHex([B)Ljava/lang/String;
    .registers 7
    .param p1, "bytes"    # [B

    .line 5463
    const-string v0, "0x"

    .line 5464
    .local v0, "out":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    array-length v2, p1

    if-ge v1, v2, :cond_2a

    .line 5465
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%02x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5464
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 5468
    .end local v1    # "i":I
    :cond_2a
    return-object v0
.end method

.method private greylist-max-o bytesToUUID([B)Ljava/util/UUID;
    .registers 13
    .param p1, "uuid"    # [B

    .line 5472
    const-wide/16 v0, 0x0

    .local v0, "msb":J
    const-wide/16 v2, 0x0

    .line 5473
    .local v2, "lsb":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    const/16 v5, 0x8

    if-ge v4, v5, :cond_23

    .line 5474
    aget-byte v6, p1, v4

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    rsub-int/lit8 v10, v4, 0x7

    mul-int/2addr v10, v5

    shl-long/2addr v6, v10

    or-long/2addr v0, v6

    .line 5475
    add-int/lit8 v6, v4, 0x8

    aget-byte v6, p1, v6

    int-to-long v6, v6

    and-long/2addr v6, v8

    rsub-int/lit8 v8, v4, 0x7

    mul-int/2addr v8, v5

    shl-long v5, v6, v8

    or-long/2addr v2, v5

    .line 5473
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5478
    .end local v4    # "i":I
    :cond_23
    new-instance v4, Ljava/util/UUID;

    invoke-direct {v4, v0, v1, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    return-object v4
.end method

.method private greylist-max-o makeCopy()Landroid/media/MediaPlayer$DrmInfo;
    .registers 4

    .line 5459
    new-instance v0, Landroid/media/MediaPlayer$DrmInfo;

    iget-object v1, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    iget-object v2, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    invoke-direct {v0, v1, v2}, Landroid/media/MediaPlayer$DrmInfo;-><init>(Ljava/util/Map;[Ljava/util/UUID;)V

    return-object v0
.end method

.method private greylist-max-o parsePSSH([BI)Ljava/util/Map;
    .registers 22
    .param p1, "pssh"    # [B
    .param p2, "psshsize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 5482
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 5484
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    const/16 v3, 0x10

    .line 5485
    .local v3, "UUID_SIZE":I
    const/4 v4, 0x4

    .line 5487
    .local v4, "DATALEN_SIZE":I
    move/from16 v5, p2

    .line 5488
    .local v5, "len":I
    const/4 v6, 0x0

    .line 5489
    .local v6, "numentries":I
    const/4 v7, 0x0

    .line 5491
    .local v7, "i":I
    :goto_10
    if-lez v5, :cond_eb

    .line 5492
    const/4 v8, 0x0

    const-string v9, "MediaPlayer"

    const/16 v10, 0x10

    if-ge v5, v10, :cond_30

    .line 5493
    nop

    .line 5494
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    filled-new-array {v10, v11}, [Ljava/lang/Object;

    move-result-object v10

    .line 5493
    const-string v11, "parsePSSH: len is too short to parse UUID: (%d < 16) pssh: %d"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5495
    return-object v8

    .line 5498
    :cond_30
    add-int/lit8 v11, v7, 0x10

    invoke-static {v1, v7, v11}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 5499
    .local v11, "subset":[B
    invoke-direct {v0, v11}, Landroid/media/MediaPlayer$DrmInfo;->bytesToUUID([B)Ljava/util/UUID;

    move-result-object v12

    .line 5500
    .local v12, "uuid":Ljava/util/UUID;
    add-int/lit8 v7, v7, 0x10

    .line 5501
    add-int/lit8 v5, v5, -0x10

    .line 5504
    const/4 v13, 0x4

    if-ge v5, v13, :cond_58

    .line 5505
    nop

    .line 5506
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    filled-new-array {v10, v13}, [Ljava/lang/Object;

    move-result-object v10

    .line 5505
    const-string v13, "parsePSSH: len is too short to parse datalen: (%d < 4) pssh: %d"

    invoke-static {v13, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5507
    return-object v8

    .line 5510
    :cond_58
    add-int/lit8 v13, v7, 0x4

    invoke-static {v1, v7, v13}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    .line 5511
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v13

    sget-object v14, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v15, 0x3

    const/16 v16, 0x2

    const/16 v17, 0x0

    const/16 v18, 0x1

    if-ne v13, v14, :cond_87

    .line 5513
    aget-byte v13, v11, v15

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    aget-byte v14, v11, v16

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v10, v14, 0x10

    or-int/2addr v10, v13

    aget-byte v13, v11, v18

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    aget-byte v13, v11, v17

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v10, v13

    goto :goto_a0

    .line 5515
    :cond_87
    aget-byte v13, v11, v17

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x18

    aget-byte v14, v11, v18

    and-int/lit16 v14, v14, 0xff

    shl-int/lit8 v10, v14, 0x10

    or-int/2addr v10, v13

    aget-byte v13, v11, v16

    and-int/lit16 v13, v13, 0xff

    shl-int/lit8 v13, v13, 0x8

    or-int/2addr v10, v13

    aget-byte v13, v11, v15

    and-int/lit16 v13, v13, 0xff

    or-int/2addr v10, v13

    :goto_a0
    nop

    .line 5516
    .local v10, "datalen":I
    add-int/lit8 v7, v7, 0x4

    .line 5517
    add-int/lit8 v5, v5, -0x4

    .line 5519
    if-ge v5, v10, :cond_c2

    .line 5520
    nop

    .line 5521
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    .line 5520
    const-string v14, "parsePSSH: len is too short to parse data: (%d < %d) pssh: %d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5522
    return-object v8

    .line 5525
    :cond_c2
    add-int v8, v7, v10

    invoke-static {v1, v7, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    .line 5528
    .local v8, "data":[B
    add-int/2addr v7, v10

    .line 5529
    sub-int/2addr v5, v10

    .line 5531
    nop

    .line 5532
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-direct {v0, v8}, Landroid/media/MediaPlayer$DrmInfo;->arrToHex([B)Ljava/lang/String;

    move-result-object v14

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v13, v12, v14, v15}, [Ljava/lang/Object;

    move-result-object v13

    .line 5531
    const-string v14, "parsePSSH[%d]: <%s, %s> pssh: %d"

    invoke-static {v14, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v9, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5533
    add-int/lit8 v6, v6, 0x1

    .line 5534
    invoke-interface {v2, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5535
    .end local v8    # "data":[B
    .end local v10    # "datalen":I
    .end local v11    # "subset":[B
    .end local v12    # "uuid":Ljava/util/UUID;
    goto/16 :goto_10

    .line 5537
    :cond_eb
    return-object v2
.end method


# virtual methods
.method public whitelist getPssh()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 5414
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->mapPssh:Ljava/util/Map;

    return-object v0
.end method

.method public whitelist getSupportedSchemes()[Ljava/util/UUID;
    .registers 2

    .line 5423
    iget-object v0, p0, Landroid/media/MediaPlayer$DrmInfo;->supportedSchemes:[Ljava/util/UUID;

    return-object v0
.end method
