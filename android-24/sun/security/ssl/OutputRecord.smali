.class Lsun/security/ssl/OutputRecord;
.super Ljava/io/ByteArrayOutputStream;
.source "OutputRecord.java"

# interfaces
.implements Lsun/security/ssl/Record;


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static V3toV2CipherMap1:[I

.field private static V3toV2CipherMap3:[I

.field static final debug:Lsun/security/ssl/Debug;


# instance fields
.field private final contentType:B

.field private firstMessage:Z

.field private handshakeHash:Lsun/security/ssl/HandshakeHash;

.field private helloVersion:Lsun/security/ssl/ProtocolVersion;

.field private lastHashed:I

.field protocolVersion:Lsun/security/ssl/ProtocolVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xb

    #@2
    const-class v0, Lsun/security/ssl/OutputRecord;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    sput-boolean v0, Lsun/security/ssl/OutputRecord;->-assertionsDisabled:Z

    #@d
    .line 67
    const-string/jumbo v0, "ssl"

    #@10
    invoke-static {v0}, Lsun/security/ssl/Debug;->getInstance(Ljava/lang/String;)Lsun/security/ssl/Debug;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    #@16
    .line 484
    new-array v0, v1, [I

    #@18
    fill-array-data v0, :array_0

    #@1b
    .line 483
    sput-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    #@1d
    .line 486
    new-array v0, v1, [I

    #@1f
    fill-array-data v0, :array_1

    #@22
    .line 485
    sput-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    #@24
    .line 51
    return-void

    #@25
    :cond_0
    const/4 v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 484
    nop

    #@28
    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x2
        0x1
        -0x1
        0x4
        0x5
        -0x1
        0x6
        0x7
    .end array-data

    #@42
    .line 486
    :array_1
    .array-data 4
        -0x1
        -0x1
        -0x1
        0x80
        0x80
        -0x1
        0x80
        0x80
        -0x1
        0x40
        0xc0
    .end array-data
.end method

.method constructor <init>(B)V
    .locals 1
    .param p1, "type"    # B

    #@0
    .prologue
    .line 86
    invoke-static {p1}, Lsun/security/ssl/OutputRecord;->recordSize(B)I

    #@3
    move-result v0

    #@4
    invoke-direct {p0, p1, v0}, Lsun/security/ssl/OutputRecord;-><init>(BI)V

    #@7
    .line 85
    return-void
.end method

.method constructor <init>(BI)V
    .locals 1
    .param p1, "type"    # B
    .param p2, "size"    # I

    #@0
    .prologue
    .line 76
    invoke-direct {p0, p2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    #@3
    .line 77
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT:Lsun/security/ssl/ProtocolVersion;

    #@5
    iput-object v0, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@7
    .line 78
    sget-object v0, Lsun/security/ssl/ProtocolVersion;->DEFAULT_HELLO:Lsun/security/ssl/ProtocolVersion;

    #@9
    iput-object v0, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@b
    .line 79
    const/4 v0, 0x1

    #@c
    iput-boolean v0, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    #@e
    .line 80
    const/4 v0, 0x5

    #@f
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@11
    .line 81
    iput-byte p1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@13
    .line 82
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@15
    iput v0, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@17
    .line 75
    return-void
.end method

.method private V3toV2CipherSuite(BB)I
    .locals 4
    .param p1, "byte1"    # B
    .param p2, "byte2"    # B

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 500
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@3
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@5
    add-int/lit8 v2, v1, 0x1

    #@7
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@9
    aput-byte v3, v0, v1

    #@b
    .line 501
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@d
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@f
    add-int/lit8 v2, v1, 0x1

    #@11
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@13
    aput-byte p1, v0, v1

    #@15
    .line 502
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@17
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@1d
    aput-byte p2, v0, v1

    #@1f
    .line 504
    and-int/lit16 v0, p2, 0xff

    #@21
    const/16 v1, 0xa

    #@23
    if-gt v0, v1, :cond_0

    #@25
    .line 505
    sget-object v0, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    #@27
    aget v0, v0, p2

    #@29
    const/4 v1, -0x1

    #@2a
    if-ne v0, v1, :cond_1

    #@2c
    .line 506
    :cond_0
    const/4 v0, 0x3

    #@2d
    return v0

    #@2e
    .line 509
    :cond_1
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@30
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@32
    add-int/lit8 v2, v1, 0x1

    #@34
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@36
    sget-object v2, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap1:[I

    #@38
    aget v2, v2, p2

    #@3a
    int-to-byte v2, v2

    #@3b
    aput-byte v2, v0, v1

    #@3d
    .line 510
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@3f
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@41
    add-int/lit8 v2, v1, 0x1

    #@43
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@45
    aput-byte v3, v0, v1

    #@47
    .line 511
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@49
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@4b
    add-int/lit8 v2, v1, 0x1

    #@4d
    iput v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@4f
    sget-object v2, Lsun/security/ssl/OutputRecord;->V3toV2CipherMap3:[I

    #@51
    aget v2, v2, p2

    #@53
    int-to-byte v2, v2

    #@54
    aput-byte v2, v0, v1

    #@56
    .line 513
    const/4 v0, 0x6

    #@57
    return v0
.end method

.method private V3toV2ClientHello([B)V
    .locals 21
    .param p1, "v3Msg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    #@0
    .prologue
    .line 416
    const/16 v16, 0x22

    #@2
    .line 417
    .local v16, "v3SessionIdLenOffset":I
    aget-byte v15, p1, v16

    #@4
    .line 418
    .local v15, "v3SessionIdLen":I
    add-int/lit8 v12, v15, 0x23

    #@6
    .line 419
    .local v12, "v3CipherSpecLenOffset":I
    aget-byte v17, p1, v12

    #@8
    move/from16 v0, v17

    #@a
    and-int/lit16 v0, v0, 0xff

    #@c
    move/from16 v17, v0

    #@e
    shl-int/lit8 v17, v17, 0x8

    #@10
    .line 420
    add-int/lit8 v18, v12, 0x1

    #@12
    aget-byte v18, p1, v18

    #@14
    move/from16 v0, v18

    #@16
    and-int/lit16 v0, v0, 0xff

    #@18
    move/from16 v18, v0

    #@1a
    .line 419
    add-int v11, v17, v18

    #@1c
    .line 421
    .local v11, "v3CipherSpecLen":I
    div-int/lit8 v7, v11, 0x2

    #@1e
    .line 429
    .local v7, "cipherSpecs":I
    add-int/lit8 v13, v12, 0x2

    #@20
    .line 430
    .local v13, "v3CipherSpecOffset":I
    const/4 v10, 0x0

    #@21
    .line 431
    .local v10, "v2CipherSpecLen":I
    const/16 v17, 0xb

    #@23
    move/from16 v0, v17

    #@25
    move-object/from16 v1, p0

    #@27
    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    #@29
    .line 432
    const/4 v8, 0x0

    #@2a
    .line 433
    .local v8, "containsRenegoInfoSCSV":Z
    const/4 v9, 0x0

    #@2b
    .local v9, "i":I
    move v14, v13

    #@2c
    .end local v13    # "v3CipherSpecOffset":I
    .local v14, "v3CipherSpecOffset":I
    :goto_0
    if-ge v9, v7, :cond_1

    #@2e
    .line 436
    add-int/lit8 v13, v14, 0x1

    #@30
    .end local v14    # "v3CipherSpecOffset":I
    .restart local v13    # "v3CipherSpecOffset":I
    aget-byte v5, p1, v14

    #@32
    .line 437
    .local v5, "byte1":B
    add-int/lit8 v14, v13, 0x1

    #@34
    .end local v13    # "v3CipherSpecOffset":I
    .restart local v14    # "v3CipherSpecOffset":I
    aget-byte v6, p1, v13

    #@36
    .line 438
    .local v6, "byte2":B
    move-object/from16 v0, p0

    #@38
    invoke-direct {v0, v5, v6}, Lsun/security/ssl/OutputRecord;->V3toV2CipherSuite(BB)I

    #@3b
    move-result v17

    #@3c
    add-int v10, v10, v17

    #@3e
    .line 439
    if-nez v8, :cond_0

    #@40
    .line 440
    if-nez v5, :cond_0

    #@42
    const/16 v17, -0x1

    #@44
    move/from16 v0, v17

    #@46
    if-ne v6, v0, :cond_0

    #@48
    .line 441
    const/4 v8, 0x1

    #@49
    .line 433
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@4b
    goto :goto_0

    #@4c
    .line 445
    .end local v5    # "byte1":B
    .end local v6    # "byte2":B
    :cond_1
    if-nez v8, :cond_2

    #@4e
    .line 446
    const/16 v17, 0x0

    #@50
    const/16 v18, -0x1

    #@52
    move-object/from16 v0, p0

    #@54
    move/from16 v1, v17

    #@56
    move/from16 v2, v18

    #@58
    invoke-direct {v0, v1, v2}, Lsun/security/ssl/OutputRecord;->V3toV2CipherSuite(BB)I

    #@5b
    move-result v17

    #@5c
    add-int v10, v10, v17

    #@5e
    .line 453
    :cond_2
    move-object/from16 v0, p0

    #@60
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@62
    move-object/from16 v17, v0

    #@64
    const/16 v18, 0x1

    #@66
    const/16 v19, 0x2

    #@68
    aput-byte v18, v17, v19

    #@6a
    .line 454
    move-object/from16 v0, p0

    #@6c
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@6e
    move-object/from16 v17, v0

    #@70
    const/16 v18, 0x0

    #@72
    aget-byte v18, p1, v18

    #@74
    const/16 v19, 0x3

    #@76
    aput-byte v18, v17, v19

    #@78
    .line 455
    move-object/from16 v0, p0

    #@7a
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@7c
    move-object/from16 v17, v0

    #@7e
    const/16 v18, 0x1

    #@80
    aget-byte v18, p1, v18

    #@82
    const/16 v19, 0x4

    #@84
    aput-byte v18, v17, v19

    #@86
    .line 456
    move-object/from16 v0, p0

    #@88
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@8a
    move-object/from16 v17, v0

    #@8c
    ushr-int/lit8 v18, v10, 0x8

    #@8e
    move/from16 v0, v18

    #@90
    int-to-byte v0, v0

    #@91
    move/from16 v18, v0

    #@93
    const/16 v19, 0x5

    #@95
    aput-byte v18, v17, v19

    #@97
    .line 457
    move-object/from16 v0, p0

    #@99
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@9b
    move-object/from16 v17, v0

    #@9d
    int-to-byte v0, v10

    #@9e
    move/from16 v18, v0

    #@a0
    const/16 v19, 0x6

    #@a2
    aput-byte v18, v17, v19

    #@a4
    .line 458
    move-object/from16 v0, p0

    #@a6
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@a8
    move-object/from16 v17, v0

    #@aa
    const/16 v18, 0x0

    #@ac
    const/16 v19, 0x7

    #@ae
    aput-byte v18, v17, v19

    #@b0
    .line 459
    move-object/from16 v0, p0

    #@b2
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@b4
    move-object/from16 v17, v0

    #@b6
    const/16 v18, 0x0

    #@b8
    const/16 v19, 0x8

    #@ba
    aput-byte v18, v17, v19

    #@bc
    .line 460
    move-object/from16 v0, p0

    #@be
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@c0
    move-object/from16 v17, v0

    #@c2
    const/16 v18, 0x0

    #@c4
    const/16 v19, 0x9

    #@c6
    aput-byte v18, v17, v19

    #@c8
    .line 461
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@cc
    move-object/from16 v17, v0

    #@ce
    const/16 v18, 0x20

    #@d0
    const/16 v19, 0xa

    #@d2
    aput-byte v18, v17, v19

    #@d4
    .line 466
    move-object/from16 v0, p0

    #@d6
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@d8
    move-object/from16 v17, v0

    #@da
    move-object/from16 v0, p0

    #@dc
    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    #@de
    move/from16 v18, v0

    #@e0
    const/16 v19, 0x2

    #@e2
    const/16 v20, 0x20

    #@e4
    move-object/from16 v0, p1

    #@e6
    move/from16 v1, v19

    #@e8
    move-object/from16 v2, v17

    #@ea
    move/from16 v3, v18

    #@ec
    move/from16 v4, v20

    #@ee
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@f1
    .line 467
    move-object/from16 v0, p0

    #@f3
    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    #@f5
    move/from16 v17, v0

    #@f7
    add-int/lit8 v17, v17, 0x20

    #@f9
    move/from16 v0, v17

    #@fb
    move-object/from16 v1, p0

    #@fd
    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    #@ff
    .line 472
    move-object/from16 v0, p0

    #@101
    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    #@103
    move/from16 v17, v0

    #@105
    add-int/lit8 v17, v17, -0x2

    #@107
    move/from16 v0, v17

    #@109
    move-object/from16 v1, p0

    #@10b
    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    #@10d
    .line 473
    move-object/from16 v0, p0

    #@10f
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@111
    move-object/from16 v17, v0

    #@113
    move-object/from16 v0, p0

    #@115
    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    #@117
    move/from16 v18, v0

    #@119
    ushr-int/lit8 v18, v18, 0x8

    #@11b
    move/from16 v0, v18

    #@11d
    int-to-byte v0, v0

    #@11e
    move/from16 v18, v0

    #@120
    const/16 v19, 0x0

    #@122
    aput-byte v18, v17, v19

    #@124
    .line 474
    move-object/from16 v0, p0

    #@126
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@128
    move-object/from16 v17, v0

    #@12a
    const/16 v18, 0x0

    #@12c
    aget-byte v19, v17, v18

    #@12e
    move/from16 v0, v19

    #@130
    or-int/lit16 v0, v0, 0x80

    #@132
    move/from16 v19, v0

    #@134
    move/from16 v0, v19

    #@136
    int-to-byte v0, v0

    #@137
    move/from16 v19, v0

    #@139
    aput-byte v19, v17, v18

    #@13b
    .line 475
    move-object/from16 v0, p0

    #@13d
    iget-object v0, v0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@13f
    move-object/from16 v17, v0

    #@141
    move-object/from16 v0, p0

    #@143
    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    #@145
    move/from16 v18, v0

    #@147
    move/from16 v0, v18

    #@149
    int-to-byte v0, v0

    #@14a
    move/from16 v18, v0

    #@14c
    const/16 v19, 0x1

    #@14e
    aput-byte v18, v17, v19

    #@150
    .line 476
    move-object/from16 v0, p0

    #@152
    iget v0, v0, Ljava/io/ByteArrayOutputStream;->count:I

    #@154
    move/from16 v17, v0

    #@156
    add-int/lit8 v17, v17, 0x2

    #@158
    move/from16 v0, v17

    #@15a
    move-object/from16 v1, p0

    #@15c
    iput v0, v1, Ljava/io/ByteArrayOutputStream;->count:I

    #@15e
    .line 415
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 1
    .param p1, "minCapacity"    # I

    #@0
    .prologue
    .line 243
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@2
    array-length v0, v0

    #@3
    if-le p1, v0, :cond_0

    #@5
    .line 244
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@7
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@d
    .line 241
    :cond_0
    return-void
.end method

.method private hashInternal([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 155
    sget-object v2, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    #@2
    if-eqz v2, :cond_0

    #@4
    const-string/jumbo v2, "data"

    #@7
    invoke-static {v2}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 157
    :try_start_0
    new-instance v1, Lsun/misc/HexDumpEncoder;

    #@f
    invoke-direct {v1}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@12
    .line 159
    .local v1, "hd":Lsun/misc/HexDumpEncoder;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@14
    new-instance v3, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v4, "[write] MD5 and SHA1 hashes:  len = "

    #@1c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@2b
    .line 161
    new-instance v2, Ljava/io/ByteArrayInputStream;

    #@2d
    .line 162
    iget v3, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@2f
    .line 161
    invoke-direct {v2, p1, v3, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    #@32
    .line 162
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@34
    .line 161
    invoke-virtual {v1, v2, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@37
    .line 166
    .end local v1    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_0
    :goto_0
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@39
    iget v3, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@3b
    invoke-virtual {v2, p1, v3, p3}, Lsun/security/ssl/HandshakeHash;->update([BII)V

    #@3e
    .line 167
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@40
    iput v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@42
    .line 154
    return-void

    #@43
    .line 163
    :catch_0
    move-exception v0

    #@44
    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method private static recordSize(B)I
    .locals 1
    .param p0, "type"    # B

    #@0
    .prologue
    .line 94
    const/16 v0, 0x14

    #@2
    if-eq p0, v0, :cond_0

    #@4
    const/16 v0, 0x15

    #@6
    if-ne p0, v0, :cond_1

    #@8
    .line 95
    :cond_0
    const/16 v0, 0x21b

    #@a
    return v0

    #@b
    .line 97
    :cond_1
    const/16 v0, 0x4219

    #@d
    return v0
.end method

.method private useV2Hello()Z
    .locals 4

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 399
    iget-boolean v2, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    #@4
    if-eqz v2, :cond_1

    #@6
    .line 400
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;

    #@8
    sget-object v3, Lsun/security/ssl/ProtocolVersion;->SSL20Hello:Lsun/security/ssl/ProtocolVersion;

    #@a
    if-ne v2, v3, :cond_1

    #@c
    .line 401
    iget-byte v2, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@e
    const/16 v3, 0x16

    #@10
    if-ne v2, v3, :cond_1

    #@12
    .line 402
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@14
    const/4 v3, 0x5

    #@15
    aget-byte v2, v2, v3

    #@17
    if-ne v2, v0, :cond_1

    #@19
    .line 403
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@1b
    const/16 v3, 0x2b

    #@1d
    aget-byte v2, v2, v3

    #@1f
    if-nez v2, :cond_0

    #@21
    .line 399
    :goto_0
    return v0

    #@22
    :cond_0
    move v0, v1

    #@23
    .line 403
    goto :goto_0

    #@24
    :cond_1
    move v0, v1

    #@25
    .line 399
    goto :goto_0
.end method


# virtual methods
.method addMAC(Lsun/security/ssl/MAC;)V
    .locals 7
    .param p1, "signer"    # Lsun/security/ssl/MAC;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 202
    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@3
    const/16 v1, 0x16

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 203
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    #@a
    .line 205
    :cond_0
    invoke-virtual {p1}, Lsun/security/ssl/MAC;->MAClen()I

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 206
    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@12
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@14
    .line 207
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@16
    add-int/lit8 v4, v0, -0x5

    #@18
    const/4 v3, 0x5

    #@19
    move-object v0, p1

    #@1a
    .line 206
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/MAC;->compute(B[BIIZ)[B

    #@1d
    move-result-object v6

    #@1e
    .line 208
    .local v6, "hash":[B
    invoke-virtual {p0, v6}, Ljava/io/OutputStream;->write([B)V

    #@21
    .line 196
    .end local v6    # "hash":[B
    :cond_1
    return-void
.end method

.method final availableDataBytes()I
    .locals 2

    #@0
    .prologue
    .line 226
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@2
    add-int/lit8 v0, v1, -0x5

    #@4
    .line 227
    .local v0, "dataSize":I
    rsub-int v1, v0, 0x4000

    #@6
    return v1
.end method

.method final contentType()B
    .locals 1

    #@0
    .prologue
    .line 252
    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@2
    return v0
.end method

.method doHashes()V
    .locals 3

    #@0
    .prologue
    .line 143
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@2
    iget v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@4
    sub-int v0, v1, v2

    #@6
    .line 145
    .local v0, "len":I
    if-lez v0, :cond_0

    #@8
    .line 146
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@a
    iget v2, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@c
    invoke-direct {p0, v1, v2, v0}, Lsun/security/ssl/OutputRecord;->hashInternal([BII)V

    #@f
    .line 147
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@11
    iput v1, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@13
    .line 142
    :cond_0
    return-void
.end method

.method encrypt(Lsun/security/ssl/CipherBox;)V
    .locals 3
    .param p1, "box"    # Lsun/security/ssl/CipherBox;

    #@0
    .prologue
    const/4 v2, 0x5

    #@1
    .line 216
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@3
    add-int/lit8 v0, v1, -0x5

    #@5
    .line 217
    .local v0, "len":I
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@7
    invoke-virtual {p1, v1, v2, v0}, Lsun/security/ssl/CipherBox;->encrypt([BII)I

    #@a
    move-result v1

    #@b
    add-int/lit8 v1, v1, 0x5

    #@d
    iput v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@f
    .line 215
    return-void
.end method

.method isAlert(B)Z
    .locals 4
    .param p1, "description"    # B

    #@0
    .prologue
    const/4 v3, 0x6

    #@1
    const/4 v0, 0x0

    #@2
    .line 184
    iget v1, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@4
    if-le v1, v3, :cond_1

    #@6
    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@8
    const/16 v2, 0x15

    #@a
    if-ne v1, v2, :cond_1

    #@c
    .line 185
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@e
    aget-byte v1, v1, v3

    #@10
    if-ne v1, p1, :cond_0

    #@12
    const/4 v0, 0x1

    #@13
    :cond_0
    return v0

    #@14
    .line 188
    :cond_1
    return v0
.end method

.method isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 175
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@2
    const/4 v1, 0x5

    #@3
    if-ne v0, v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    invoke-super {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@4
    .line 121
    const/4 v0, 0x5

    #@5
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@7
    .line 122
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@9
    iput v0, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 119
    return-void

    #@d
    :catchall_0
    move-exception v0

    #@e
    monitor-exit p0

    #@f
    throw v0
.end method

.method setHandshakeHash(Lsun/security/ssl/HandshakeHash;)V
    .locals 2
    .param p1, "handshakeHash"    # Lsun/security/ssl/HandshakeHash;

    #@0
    .prologue
    .line 131
    sget-boolean v0, Lsun/security/ssl/OutputRecord;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    iget-byte v0, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@6
    const/16 v1, 0x16

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0

    #@15
    .line 132
    :cond_1
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@17
    .line 130
    return-void
.end method

.method declared-synchronized setHelloVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "helloVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 112
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->helloVersion:Lsun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 111
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method declared-synchronized setVersion(Lsun/security/ssl/ProtocolVersion;)V
    .locals 1
    .param p1, "protocolVersion"    # Lsun/security/ssl/ProtocolVersion;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iput-object p1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    .line 104
    return-void

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method

.method write(Ljava/io/OutputStream;ZLjava/io/ByteArrayOutputStream;)V
    .locals 9
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "holdRecord"    # Z
    .param p3, "heldRecordBuffer"    # Ljava/io/ByteArrayOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x0

    #@2
    .line 271
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@4
    const/4 v1, 0x5

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 272
    return-void

    #@8
    .line 275
    :cond_0
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@a
    add-int/lit8 v7, v0, -0x5

    #@c
    .line 277
    .local v7, "length":I
    if-gez v7, :cond_1

    #@e
    .line 278
    new-instance v0, Ljavax/net/ssl/SSLException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "output record size too small: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 282
    :cond_1
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    #@2a
    if-eqz v0, :cond_5

    #@2c
    .line 283
    const-string/jumbo v0, "record"

    #@2f
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@32
    move-result v0

    #@33
    if-nez v0, :cond_2

    #@35
    const-string/jumbo v0, "handshake"

    #@38
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@3b
    move-result v0

    #@3c
    .line 282
    if-eqz v0, :cond_5

    #@3e
    .line 284
    :cond_2
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    #@40
    if-eqz v0, :cond_3

    #@42
    const-string/jumbo v0, "record"

    #@45
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@48
    move-result v0

    #@49
    if-nez v0, :cond_4

    #@4b
    .line 285
    :cond_3
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@4e
    move-result v0

    #@4f
    const/16 v1, 0x14

    #@51
    if-ne v0, v1, :cond_5

    #@53
    .line 286
    :cond_4
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@55
    new-instance v1, Ljava/lang/StringBuilder;

    #@57
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@61
    move-result-object v2

    #@62
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v1

    #@66
    .line 288
    const-string/jumbo v2, ", WRITE: "

    #@69
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v1

    #@6d
    .line 288
    iget-object v2, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@6f
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v1

    #@73
    .line 289
    const-string/jumbo v2, " "

    #@76
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v1

    #@7a
    .line 289
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->contentType()B

    #@7d
    move-result v2

    #@7e
    invoke-static {v2}, Lsun/security/ssl/InputRecord;->contentName(I)Ljava/lang/String;

    #@81
    move-result-object v2

    #@82
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v1

    #@86
    .line 290
    const-string/jumbo v2, ", length = "

    #@89
    .line 286
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v1

    #@8d
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@90
    move-result-object v1

    #@91
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v1

    #@95
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@98
    .line 298
    :cond_5
    iget-boolean v0, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    #@9a
    if-eqz v0, :cond_7

    #@9c
    invoke-direct {p0}, Lsun/security/ssl/OutputRecord;->useV2Hello()Z

    #@9f
    move-result v0

    #@a0
    if-eqz v0, :cond_7

    #@a2
    .line 299
    add-int/lit8 v0, v7, -0x4

    #@a4
    new-array v8, v0, [B

    #@a6
    .line 300
    .local v8, "v3Msg":[B
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@a8
    array-length v1, v8

    #@a9
    const/16 v2, 0x9

    #@ab
    invoke-static {v0, v2, v8, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@ae
    .line 301
    invoke-direct {p0, v8}, Lsun/security/ssl/OutputRecord;->V3toV2ClientHello([B)V

    #@b1
    .line 302
    iget-object v0, p0, Lsun/security/ssl/OutputRecord;->handshakeHash:Lsun/security/ssl/HandshakeHash;

    #@b3
    invoke-virtual {v0}, Lsun/security/ssl/HandshakeHash;->reset()V

    #@b6
    .line 303
    iput v4, p0, Lsun/security/ssl/OutputRecord;->lastHashed:I

    #@b8
    .line 304
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->doHashes()V

    #@bb
    .line 305
    sget-object v0, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    #@bd
    if-eqz v0, :cond_6

    #@bf
    const-string/jumbo v0, "record"

    #@c2
    invoke-static {v0}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@c5
    move-result v0

    #@c6
    if-eqz v0, :cond_6

    #@c8
    .line 306
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@ca
    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    #@cc
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@cf
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@d2
    move-result-object v2

    #@d3
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    #@d6
    move-result-object v2

    #@d7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@da
    move-result-object v1

    #@db
    .line 308
    const-string/jumbo v2, ", WRITE: SSLv2 client hello message"

    #@de
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e1
    move-result-object v1

    #@e2
    .line 309
    const-string/jumbo v2, ", length = "

    #@e5
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e8
    move-result-object v1

    #@e9
    .line 309
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@eb
    add-int/lit8 v2, v2, -0x2

    #@ed
    .line 307
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@f0
    move-result-object v1

    #@f1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f4
    move-result-object v1

    #@f5
    .line 306
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@f8
    .line 321
    .end local v8    # "v3Msg":[B
    :cond_6
    :goto_0
    iput-boolean v3, p0, Lsun/security/ssl/OutputRecord;->firstMessage:Z

    #@fa
    .line 330
    const/4 v5, 0x0

    #@fb
    .line 331
    .local v5, "debugOffset":I
    if-eqz p2, :cond_8

    #@fd
    .line 339
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@ff
    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@101
    move-object v0, p0

    #@102
    move-object v1, p3

    #@103
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/OutputRecord;->writeBuffer(Ljava/io/OutputStream;[BIII)V

    #@106
    .line 366
    :goto_1
    invoke-virtual {p0}, Lsun/security/ssl/OutputRecord;->reset()V

    #@109
    .line 266
    return-void

    #@10a
    .line 315
    .end local v5    # "debugOffset":I
    :cond_7
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@10c
    iget-byte v1, p0, Lsun/security/ssl/OutputRecord;->contentType:B

    #@10e
    aput-byte v1, v0, v3

    #@110
    .line 316
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@112
    iget-object v1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@114
    iget-byte v1, v1, Lsun/security/ssl/ProtocolVersion;->major:B

    #@116
    const/4 v2, 0x1

    #@117
    aput-byte v1, v0, v2

    #@119
    .line 317
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@11b
    iget-object v1, p0, Lsun/security/ssl/OutputRecord;->protocolVersion:Lsun/security/ssl/ProtocolVersion;

    #@11d
    iget-byte v1, v1, Lsun/security/ssl/ProtocolVersion;->minor:B

    #@11f
    aput-byte v1, v0, v4

    #@121
    .line 318
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@123
    shr-int/lit8 v1, v7, 0x8

    #@125
    int-to-byte v1, v1

    #@126
    const/4 v2, 0x3

    #@127
    aput-byte v1, v0, v2

    #@129
    .line 319
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@12b
    int-to-byte v1, v7

    #@12c
    const/4 v2, 0x4

    #@12d
    aput-byte v1, v0, v2

    #@12f
    goto :goto_0

    #@130
    .line 343
    .restart local v5    # "debugOffset":I
    :cond_8
    if-eqz p3, :cond_9

    #@132
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    #@135
    move-result v0

    #@136
    if-lez v0, :cond_9

    #@138
    .line 344
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->size()I

    #@13b
    move-result v6

    #@13c
    .line 347
    .local v6, "heldLen":I
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@13e
    add-int/2addr v0, v6

    #@13f
    invoke-direct {p0, v0}, Lsun/security/ssl/OutputRecord;->ensureCapacity(I)V

    #@142
    .line 350
    iget-object v0, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@144
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@146
    iget v2, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@148
    invoke-static {v0, v3, v1, v6, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@14b
    .line 354
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@14e
    move-result-object v0

    #@14f
    iget-object v1, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@151
    .line 353
    invoke-static {v0, v3, v1, v3, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@154
    .line 355
    iget v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@156
    add-int/2addr v0, v6

    #@157
    iput v0, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@159
    .line 358
    invoke-virtual {p3}, Ljava/io/ByteArrayOutputStream;->reset()V

    #@15c
    .line 361
    move v5, v6

    #@15d
    .line 363
    .end local v6    # "heldLen":I
    :cond_9
    iget-object v2, p0, Ljava/io/ByteArrayOutputStream;->buf:[B

    #@15f
    iget v4, p0, Ljava/io/ByteArrayOutputStream;->count:I

    #@161
    move-object v0, p0

    #@162
    move-object v1, p1

    #@163
    invoke-virtual/range {v0 .. v5}, Lsun/security/ssl/OutputRecord;->writeBuffer(Ljava/io/OutputStream;[BIII)V

    #@166
    goto :goto_1
.end method

.method writeBuffer(Ljava/io/OutputStream;[BIII)V
    .locals 6
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "buf"    # [B
    .param p3, "off"    # I
    .param p4, "len"    # I
    .param p5, "debugOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 377
    invoke-virtual {p1, p2, p3, p4}, Ljava/io/OutputStream;->write([BII)V

    #@3
    .line 378
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    #@6
    .line 381
    sget-object v3, Lsun/security/ssl/OutputRecord;->debug:Lsun/security/ssl/Debug;

    #@8
    if-eqz v3, :cond_0

    #@a
    const-string/jumbo v3, "packet"

    #@d
    invoke-static {v3}, Lsun/security/ssl/Debug;->isOn(Ljava/lang/String;)Z

    #@10
    move-result v3

    #@11
    if-eqz v3, :cond_0

    #@13
    .line 383
    :try_start_0
    new-instance v2, Lsun/misc/HexDumpEncoder;

    #@15
    invoke-direct {v2}, Lsun/misc/HexDumpEncoder;-><init>()V

    #@18
    .line 385
    .local v2, "hd":Lsun/misc/HexDumpEncoder;
    add-int v3, p3, p5

    #@1a
    sub-int v4, p4, p5

    #@1c
    .line 384
    invoke-static {p2, v3, v4}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    #@1f
    move-result-object v0

    #@20
    .line 387
    .local v0, "bb":Ljava/nio/ByteBuffer;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@22
    new-instance v4, Ljava/lang/StringBuilder;

    #@24
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@27
    const-string/jumbo v5, "[Raw write]: length = "

    #@2a
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v4

    #@2e
    .line 388
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    #@31
    move-result v5

    #@32
    .line 387
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@39
    move-result-object v4

    #@3a
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3d
    .line 389
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@3f
    invoke-virtual {v2, v0, v3}, Lsun/misc/CharacterEncoder;->encodeBuffer(Ljava/nio/ByteBuffer;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 375
    .end local v0    # "bb":Ljava/nio/ByteBuffer;
    .end local v2    # "hd":Lsun/misc/HexDumpEncoder;
    :cond_0
    :goto_0
    return-void

    #@43
    .line 390
    :catch_0
    move-exception v1

    #@44
    .local v1, "e":Ljava/io/IOException;
    goto :goto_0
.end method
