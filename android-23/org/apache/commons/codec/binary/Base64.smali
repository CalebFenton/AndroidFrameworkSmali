.class public Lorg/apache/commons/codec/binary/Base64;
.super Ljava/lang/Object;
.source "Base64.java"

# interfaces
.implements Lorg/apache/commons/codec/BinaryEncoder;
.implements Lorg/apache/commons/codec/BinaryDecoder;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static final BASELENGTH:I = 0xff

.field static final CHUNK_SEPARATOR:[B

.field static final CHUNK_SIZE:I = 0x4c

.field static final EIGHTBIT:I = 0x8

.field static final FOURBYTE:I = 0x4

.field static final LOOKUPLENGTH:I = 0x40

.field static final PAD:B = 0x3dt

.field static final SIGN:I = -0x80

.field static final SIXTEENBIT:I = 0x10

.field static final TWENTYFOURBITGROUP:I = 0x18

.field private static base64Alphabet:[B

.field private static lookUpBase64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0x3f

    #@2
    const/16 v7, 0x3e

    #@4
    const/16 v6, 0x30

    #@6
    const/16 v5, 0x2f

    #@8
    const/16 v4, 0x2b

    #@a
    .line 58
    const-string/jumbo v2, "\r\n"

    #@d
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    #@10
    move-result-object v2

    #@11
    sput-object v2, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@13
    .line 102
    const/16 v2, 0xff

    #@15
    new-array v2, v2, [B

    #@17
    sput-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@19
    .line 103
    const/16 v2, 0x40

    #@1b
    new-array v2, v2, [B

    #@1d
    sput-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@1f
    .line 107
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    const/16 v2, 0xff

    #@22
    if-ge v0, v2, :cond_0

    #@24
    .line 108
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@26
    const/4 v3, -0x1

    #@27
    aput-byte v3, v2, v0

    #@29
    .line 107
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 110
    :cond_0
    const/16 v0, 0x5a

    #@2e
    :goto_1
    const/16 v2, 0x41

    #@30
    if-lt v0, v2, :cond_1

    #@32
    .line 111
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@34
    add-int/lit8 v3, v0, -0x41

    #@36
    int-to-byte v3, v3

    #@37
    aput-byte v3, v2, v0

    #@39
    .line 110
    add-int/lit8 v0, v0, -0x1

    #@3b
    goto :goto_1

    #@3c
    .line 113
    :cond_1
    const/16 v0, 0x7a

    #@3e
    :goto_2
    const/16 v2, 0x61

    #@40
    if-lt v0, v2, :cond_2

    #@42
    .line 114
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@44
    add-int/lit8 v3, v0, -0x61

    #@46
    add-int/lit8 v3, v3, 0x1a

    #@48
    int-to-byte v3, v3

    #@49
    aput-byte v3, v2, v0

    #@4b
    .line 113
    add-int/lit8 v0, v0, -0x1

    #@4d
    goto :goto_2

    #@4e
    .line 116
    :cond_2
    const/16 v0, 0x39

    #@50
    :goto_3
    if-lt v0, v6, :cond_3

    #@52
    .line 117
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@54
    add-int/lit8 v3, v0, -0x30

    #@56
    add-int/lit8 v3, v3, 0x34

    #@58
    int-to-byte v3, v3

    #@59
    aput-byte v3, v2, v0

    #@5b
    .line 116
    add-int/lit8 v0, v0, -0x1

    #@5d
    goto :goto_3

    #@5e
    .line 120
    :cond_3
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@60
    aput-byte v7, v2, v4

    #@62
    .line 121
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@64
    aput-byte v8, v2, v5

    #@66
    .line 123
    const/4 v0, 0x0

    #@67
    :goto_4
    const/16 v2, 0x19

    #@69
    if-gt v0, v2, :cond_4

    #@6b
    .line 124
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@6d
    add-int/lit8 v3, v0, 0x41

    #@6f
    int-to-byte v3, v3

    #@70
    aput-byte v3, v2, v0

    #@72
    .line 123
    add-int/lit8 v0, v0, 0x1

    #@74
    goto :goto_4

    #@75
    .line 127
    :cond_4
    const/16 v0, 0x1a

    #@77
    const/4 v1, 0x0

    #@78
    .local v1, "j":I
    :goto_5
    const/16 v2, 0x33

    #@7a
    if-gt v0, v2, :cond_5

    #@7c
    .line 128
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@7e
    add-int/lit8 v3, v1, 0x61

    #@80
    int-to-byte v3, v3

    #@81
    aput-byte v3, v2, v0

    #@83
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@85
    add-int/lit8 v1, v1, 0x1

    #@87
    goto :goto_5

    #@88
    .line 131
    :cond_5
    const/16 v0, 0x34

    #@8a
    const/4 v1, 0x0

    #@8b
    :goto_6
    const/16 v2, 0x3d

    #@8d
    if-gt v0, v2, :cond_6

    #@8f
    .line 132
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@91
    add-int/lit8 v3, v1, 0x30

    #@93
    int-to-byte v3, v3

    #@94
    aput-byte v3, v2, v0

    #@96
    .line 131
    add-int/lit8 v0, v0, 0x1

    #@98
    add-int/lit8 v1, v1, 0x1

    #@9a
    goto :goto_6

    #@9b
    .line 135
    :cond_6
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@9d
    aput-byte v4, v2, v7

    #@9f
    .line 136
    sget-object v2, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@a1
    aput-byte v5, v2, v8

    #@a3
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 15
    .param p0, "base64Data"    # [B

    #@0
    .prologue
    .line 379
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardNonBase64([B)[B

    #@3
    move-result-object p0

    #@4
    .line 382
    array-length v12, p0

    #@5
    if-nez v12, :cond_0

    #@7
    .line 383
    const/4 v12, 0x0

    #@8
    new-array v12, v12, [B

    #@a
    return-object v12

    #@b
    .line 386
    :cond_0
    array-length v12, p0

    #@c
    div-int/lit8 v11, v12, 0x4

    #@e
    .line 387
    .local v11, "numberQuadruple":I
    const/4 v5, 0x0

    #@f
    .line 388
    .local v5, "decodedData":[B
    const/4 v0, 0x0

    #@10
    .local v0, "b1":B
    const/4 v1, 0x0

    #@11
    .local v1, "b2":B
    const/4 v2, 0x0

    #@12
    .local v2, "b3":B
    const/4 v3, 0x0

    #@13
    .local v3, "b4":B
    const/4 v9, 0x0

    #@14
    .local v9, "marker0":B
    const/4 v10, 0x0

    #@15
    .line 392
    .local v10, "marker1":B
    const/4 v6, 0x0

    #@16
    .line 393
    .local v6, "encodedIndex":I
    const/4 v4, 0x0

    #@17
    .line 396
    .local v4, "dataIndex":I
    array-length v8, p0

    #@18
    .line 398
    .local v8, "lastData":I
    :cond_1
    add-int/lit8 v12, v8, -0x1

    #@1a
    aget-byte v12, p0, v12

    #@1c
    const/16 v13, 0x3d

    #@1e
    if-ne v12, v13, :cond_2

    #@20
    .line 399
    add-int/lit8 v8, v8, -0x1

    #@22
    if-nez v8, :cond_1

    #@24
    .line 400
    const/4 v12, 0x0

    #@25
    new-array v12, v12, [B

    #@27
    return-object v12

    #@28
    .line 403
    :cond_2
    sub-int v12, v8, v11

    #@2a
    new-array v5, v12, [B

    #@2c
    .line 406
    .local v5, "decodedData":[B
    const/4 v7, 0x0

    #@2d
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    .end local v9    # "marker0":B
    .end local v10    # "marker1":B
    .local v7, "i":I
    :goto_0
    if-ge v7, v11, :cond_6

    #@2f
    .line 407
    mul-int/lit8 v4, v7, 0x4

    #@31
    .line 408
    add-int/lit8 v12, v4, 0x2

    #@33
    aget-byte v9, p0, v12

    #@35
    .line 409
    .local v9, "marker0":B
    add-int/lit8 v12, v4, 0x3

    #@37
    aget-byte v10, p0, v12

    #@39
    .line 411
    .local v10, "marker1":B
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@3b
    aget-byte v13, p0, v4

    #@3d
    aget-byte v0, v12, v13

    #@3f
    .line 412
    .local v0, "b1":B
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@41
    add-int/lit8 v13, v4, 0x1

    #@43
    aget-byte v13, p0, v13

    #@45
    aget-byte v1, v12, v13

    #@47
    .line 414
    .local v1, "b2":B
    const/16 v12, 0x3d

    #@49
    if-eq v9, v12, :cond_4

    #@4b
    const/16 v12, 0x3d

    #@4d
    if-eq v10, v12, :cond_4

    #@4f
    .line 416
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@51
    aget-byte v2, v12, v9

    #@53
    .line 417
    .local v2, "b3":B
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@55
    aget-byte v3, v12, v10

    #@57
    .line 419
    .local v3, "b4":B
    shl-int/lit8 v12, v0, 0x2

    #@59
    shr-int/lit8 v13, v1, 0x4

    #@5b
    or-int/2addr v12, v13

    #@5c
    int-to-byte v12, v12

    #@5d
    aput-byte v12, v5, v6

    #@5f
    .line 420
    add-int/lit8 v12, v6, 0x1

    #@61
    .line 421
    and-int/lit8 v13, v1, 0xf

    #@63
    shl-int/lit8 v13, v13, 0x4

    #@65
    shr-int/lit8 v14, v2, 0x2

    #@67
    and-int/lit8 v14, v14, 0xf

    #@69
    or-int/2addr v13, v14

    #@6a
    int-to-byte v13, v13

    #@6b
    .line 420
    aput-byte v13, v5, v12

    #@6d
    .line 422
    add-int/lit8 v12, v6, 0x2

    #@6f
    shl-int/lit8 v13, v2, 0x6

    #@71
    or-int/2addr v13, v3

    #@72
    int-to-byte v13, v13

    #@73
    aput-byte v13, v5, v12

    #@75
    .line 434
    .end local v2    # "b3":B
    .end local v3    # "b4":B
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x3

    #@77
    .line 406
    add-int/lit8 v7, v7, 0x1

    #@79
    goto :goto_0

    #@7a
    .line 423
    :cond_4
    const/16 v12, 0x3d

    #@7c
    if-ne v9, v12, :cond_5

    #@7e
    .line 425
    shl-int/lit8 v12, v0, 0x2

    #@80
    shr-int/lit8 v13, v1, 0x4

    #@82
    or-int/2addr v12, v13

    #@83
    int-to-byte v12, v12

    #@84
    aput-byte v12, v5, v6

    #@86
    goto :goto_1

    #@87
    .line 426
    :cond_5
    const/16 v12, 0x3d

    #@89
    if-ne v10, v12, :cond_3

    #@8b
    .line 428
    sget-object v12, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@8d
    aget-byte v2, v12, v9

    #@8f
    .line 430
    .restart local v2    # "b3":B
    shl-int/lit8 v12, v0, 0x2

    #@91
    shr-int/lit8 v13, v1, 0x4

    #@93
    or-int/2addr v12, v13

    #@94
    int-to-byte v12, v12

    #@95
    aput-byte v12, v5, v6

    #@97
    .line 431
    add-int/lit8 v12, v6, 0x1

    #@99
    .line 432
    and-int/lit8 v13, v1, 0xf

    #@9b
    shl-int/lit8 v13, v13, 0x4

    #@9d
    shr-int/lit8 v14, v2, 0x2

    #@9f
    and-int/lit8 v14, v14, 0xf

    #@a1
    or-int/2addr v13, v14

    #@a2
    int-to-byte v13, v13

    #@a3
    .line 431
    aput-byte v13, v5, v12

    #@a5
    goto :goto_1

    #@a6
    .line 436
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    .end local v9    # "marker0":B
    .end local v10    # "marker1":B
    :cond_6
    return-object v5
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 479
    array-length v5, p0

    #@2
    new-array v2, v5, [B

    #@4
    .line 480
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    #@5
    .line 482
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v5, p0

    #@7
    if-ge v3, v5, :cond_1

    #@9
    .line 483
    aget-byte v5, p0, v3

    #@b
    invoke-static {v5}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    #@e
    move-result v5

    #@f
    if-eqz v5, :cond_0

    #@11
    .line 484
    add-int/lit8 v1, v0, 0x1

    #@13
    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    #@15
    aput-byte v5, v2, v0

    #@17
    move v0, v1

    #@18
    .line 482
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    #@1a
    goto :goto_0

    #@1b
    .line 488
    :cond_1
    new-array v4, v0, [B

    #@1d
    .line 490
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@20
    .line 492
    return-object v4
.end method

.method static discardWhitespace([B)[B
    .locals 7
    .param p0, "data"    # [B

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 447
    array-length v5, p0

    #@2
    new-array v2, v5, [B

    #@4
    .line 448
    .local v2, "groomedData":[B
    const/4 v0, 0x0

    #@5
    .line 450
    .local v0, "bytesCopied":I
    const/4 v3, 0x0

    #@6
    .local v3, "i":I
    :goto_0
    array-length v5, p0

    #@7
    if-ge v3, v5, :cond_0

    #@9
    .line 451
    aget-byte v5, p0, v3

    #@b
    sparse-switch v5, :sswitch_data_0

    #@e
    .line 458
    add-int/lit8 v1, v0, 0x1

    #@10
    .end local v0    # "bytesCopied":I
    .local v1, "bytesCopied":I
    aget-byte v5, p0, v3

    #@12
    aput-byte v5, v2, v0

    #@14
    move v0, v1

    #@15
    .line 450
    .end local v1    # "bytesCopied":I
    .restart local v0    # "bytesCopied":I
    :sswitch_0
    add-int/lit8 v3, v3, 0x1

    #@17
    goto :goto_0

    #@18
    .line 462
    :cond_0
    new-array v4, v0, [B

    #@1a
    .line 464
    .local v4, "packedData":[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1d
    .line 466
    return-object v4

    #@1e
    .line 451
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method public static encodeBase64([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    #@0
    .prologue
    .line 183
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static encodeBase64([BZ)[B
    .locals 27
    .param p0, "binaryData"    # [B
    .param p1, "isChunked"    # Z

    #@0
    .prologue
    .line 238
    move-object/from16 v0, p0

    #@2
    array-length v0, v0

    #@3
    move/from16 v23, v0

    #@5
    mul-int/lit8 v16, v23, 0x8

    #@7
    .line 239
    .local v16, "lengthDataBits":I
    rem-int/lit8 v12, v16, 0x18

    #@9
    .line 240
    .local v12, "fewerThan24bits":I
    div-int/lit8 v19, v16, 0x18

    #@b
    .line 241
    .local v19, "numberTriplets":I
    const/4 v9, 0x0

    #@c
    .line 242
    .local v9, "encodedData":[B
    const/4 v10, 0x0

    #@d
    .line 243
    .local v10, "encodedDataLength":I
    const/16 v17, 0x0

    #@f
    .line 245
    .local v17, "nbrChunks":I
    if-eqz v12, :cond_2

    #@11
    .line 247
    add-int/lit8 v23, v19, 0x1

    #@13
    mul-int/lit8 v10, v23, 0x4

    #@15
    .line 256
    :goto_0
    if-eqz p1, :cond_0

    #@17
    .line 259
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@19
    move-object/from16 v0, v23

    #@1b
    array-length v0, v0

    #@1c
    move/from16 v23, v0

    #@1e
    if-nez v23, :cond_3

    #@20
    const/16 v17, 0x0

    #@22
    .line 260
    :goto_1
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@24
    move-object/from16 v0, v23

    #@26
    array-length v0, v0

    #@27
    move/from16 v23, v0

    #@29
    mul-int v23, v23, v17

    #@2b
    add-int v10, v10, v23

    #@2d
    .line 263
    :cond_0
    new-array v9, v10, [B

    #@2f
    .line 265
    .local v9, "encodedData":[B
    const/4 v14, 0x0

    #@30
    .local v14, "k":B
    const/4 v15, 0x0

    #@31
    .local v15, "l":B
    const/4 v4, 0x0

    #@32
    .local v4, "b1":B
    const/4 v5, 0x0

    #@33
    .local v5, "b2":B
    const/4 v6, 0x0

    #@34
    .line 267
    .local v6, "b3":B
    const/4 v11, 0x0

    #@35
    .line 268
    .local v11, "encodedIndex":I
    const/4 v8, 0x0

    #@36
    .line 269
    .local v8, "dataIndex":I
    const/4 v13, 0x0

    #@37
    .line 270
    .local v13, "i":I
    const/16 v18, 0x4c

    #@39
    .line 271
    .local v18, "nextSeparatorIndex":I
    const/4 v7, 0x0

    #@3a
    .line 274
    .local v7, "chunksSoFar":I
    const/4 v13, 0x0

    #@3b
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v14    # "k":B
    .end local v15    # "l":B
    :goto_2
    move/from16 v0, v19

    #@3d
    if-ge v13, v0, :cond_7

    #@3f
    .line 275
    mul-int/lit8 v8, v13, 0x3

    #@41
    .line 276
    aget-byte v4, p0, v8

    #@43
    .line 277
    .local v4, "b1":B
    add-int/lit8 v23, v8, 0x1

    #@45
    aget-byte v5, p0, v23

    #@47
    .line 278
    .local v5, "b2":B
    add-int/lit8 v23, v8, 0x2

    #@49
    aget-byte v6, p0, v23

    #@4b
    .line 282
    .local v6, "b3":B
    and-int/lit8 v23, v5, 0xf

    #@4d
    move/from16 v0, v23

    #@4f
    int-to-byte v15, v0

    #@50
    .line 283
    .local v15, "l":B
    and-int/lit8 v23, v4, 0x3

    #@52
    move/from16 v0, v23

    #@54
    int-to-byte v14, v0

    #@55
    .line 286
    .local v14, "k":B
    and-int/lit8 v23, v4, -0x80

    #@57
    if-nez v23, :cond_4

    #@59
    shr-int/lit8 v23, v4, 0x2

    #@5b
    move/from16 v0, v23

    #@5d
    int-to-byte v0, v0

    #@5e
    move/from16 v20, v0

    #@60
    .line 288
    .local v20, "val1":B
    :goto_3
    and-int/lit8 v23, v5, -0x80

    #@62
    if-nez v23, :cond_5

    #@64
    shr-int/lit8 v23, v5, 0x4

    #@66
    move/from16 v0, v23

    #@68
    int-to-byte v0, v0

    #@69
    move/from16 v21, v0

    #@6b
    .line 290
    .local v21, "val2":B
    :goto_4
    and-int/lit8 v23, v6, -0x80

    #@6d
    if-nez v23, :cond_6

    #@6f
    shr-int/lit8 v23, v6, 0x6

    #@71
    move/from16 v0, v23

    #@73
    int-to-byte v0, v0

    #@74
    move/from16 v22, v0

    #@76
    .line 292
    .local v22, "val3":B
    :goto_5
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@78
    aget-byte v23, v23, v20

    #@7a
    aput-byte v23, v9, v11

    #@7c
    .line 296
    add-int/lit8 v23, v11, 0x1

    #@7e
    .line 297
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@80
    shl-int/lit8 v25, v14, 0x4

    #@82
    or-int v25, v25, v21

    #@84
    aget-byte v24, v24, v25

    #@86
    .line 296
    aput-byte v24, v9, v23

    #@88
    .line 298
    add-int/lit8 v23, v11, 0x2

    #@8a
    .line 299
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@8c
    shl-int/lit8 v25, v15, 0x2

    #@8e
    or-int v25, v25, v22

    #@90
    aget-byte v24, v24, v25

    #@92
    .line 298
    aput-byte v24, v9, v23

    #@94
    .line 300
    add-int/lit8 v23, v11, 0x3

    #@96
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@98
    and-int/lit8 v25, v6, 0x3f

    #@9a
    aget-byte v24, v24, v25

    #@9c
    aput-byte v24, v9, v23

    #@9e
    .line 302
    add-int/lit8 v11, v11, 0x4

    #@a0
    .line 305
    if-eqz p1, :cond_1

    #@a2
    .line 307
    move/from16 v0, v18

    #@a4
    if-ne v11, v0, :cond_1

    #@a6
    .line 309
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@a8
    .line 313
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@aa
    move-object/from16 v0, v24

    #@ac
    array-length v0, v0

    #@ad
    move/from16 v24, v0

    #@af
    .line 310
    const/16 v25, 0x0

    #@b1
    .line 308
    move-object/from16 v0, v23

    #@b3
    move/from16 v1, v25

    #@b5
    move/from16 v2, v24

    #@b7
    invoke-static {v0, v1, v9, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@ba
    .line 314
    add-int/lit8 v7, v7, 0x1

    #@bc
    .line 316
    add-int/lit8 v23, v7, 0x1

    #@be
    mul-int/lit8 v23, v23, 0x4c

    #@c0
    .line 317
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@c2
    move-object/from16 v0, v24

    #@c4
    array-length v0, v0

    #@c5
    move/from16 v24, v0

    #@c7
    mul-int v24, v24, v7

    #@c9
    .line 316
    add-int v18, v23, v24

    #@cb
    .line 318
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@cd
    move-object/from16 v0, v23

    #@cf
    array-length v0, v0

    #@d0
    move/from16 v23, v0

    #@d2
    add-int v11, v11, v23

    #@d4
    .line 274
    :cond_1
    add-int/lit8 v13, v13, 0x1

    #@d6
    goto/16 :goto_2

    #@d8
    .line 250
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v7    # "chunksSoFar":I
    .end local v8    # "dataIndex":I
    .end local v11    # "encodedIndex":I
    .end local v13    # "i":I
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v18    # "nextSeparatorIndex":I
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    .end local v22    # "val3":B
    .local v9, "encodedData":[B
    :cond_2
    mul-int/lit8 v10, v19, 0x4

    #@da
    goto/16 :goto_0

    #@dc
    .line 259
    :cond_3
    int-to-float v0, v10

    #@dd
    move/from16 v23, v0

    #@df
    const/high16 v24, 0x42980000    # 76.0f

    #@e1
    div-float v23, v23, v24

    #@e3
    move/from16 v0, v23

    #@e5
    float-to-double v0, v0

    #@e6
    move-wide/from16 v24, v0

    #@e8
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->ceil(D)D

    #@eb
    move-result-wide v24

    #@ec
    move-wide/from16 v0, v24

    #@ee
    double-to-int v0, v0

    #@ef
    move/from16 v17, v0

    #@f1
    goto/16 :goto_1

    #@f3
    .line 286
    .restart local v4    # "b1":B
    .restart local v5    # "b2":B
    .restart local v6    # "b3":B
    .restart local v7    # "chunksSoFar":I
    .restart local v8    # "dataIndex":I
    .local v9, "encodedData":[B
    .restart local v11    # "encodedIndex":I
    .restart local v13    # "i":I
    .restart local v14    # "k":B
    .restart local v15    # "l":B
    .restart local v18    # "nextSeparatorIndex":I
    :cond_4
    shr-int/lit8 v23, v4, 0x2

    #@f5
    move/from16 v0, v23

    #@f7
    xor-int/lit16 v0, v0, 0xc0

    #@f9
    move/from16 v23, v0

    #@fb
    move/from16 v0, v23

    #@fd
    int-to-byte v0, v0

    #@fe
    move/from16 v20, v0

    #@100
    .restart local v20    # "val1":B
    goto/16 :goto_3

    #@102
    .line 288
    :cond_5
    shr-int/lit8 v23, v5, 0x4

    #@104
    move/from16 v0, v23

    #@106
    xor-int/lit16 v0, v0, 0xf0

    #@108
    move/from16 v23, v0

    #@10a
    move/from16 v0, v23

    #@10c
    int-to-byte v0, v0

    #@10d
    move/from16 v21, v0

    #@10f
    .restart local v21    # "val2":B
    goto/16 :goto_4

    #@111
    .line 290
    :cond_6
    shr-int/lit8 v23, v6, 0x6

    #@113
    move/from16 v0, v23

    #@115
    xor-int/lit16 v0, v0, 0xfc

    #@117
    move/from16 v23, v0

    #@119
    move/from16 v0, v23

    #@11b
    int-to-byte v0, v0

    #@11c
    move/from16 v22, v0

    #@11e
    .restart local v22    # "val3":B
    goto/16 :goto_5

    #@120
    .line 324
    .end local v4    # "b1":B
    .end local v5    # "b2":B
    .end local v6    # "b3":B
    .end local v14    # "k":B
    .end local v15    # "l":B
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    .end local v22    # "val3":B
    :cond_7
    mul-int/lit8 v8, v13, 0x3

    #@122
    .line 326
    const/16 v23, 0x8

    #@124
    move/from16 v0, v23

    #@126
    if-ne v12, v0, :cond_b

    #@128
    .line 327
    aget-byte v4, p0, v8

    #@12a
    .line 328
    .restart local v4    # "b1":B
    and-int/lit8 v23, v4, 0x3

    #@12c
    move/from16 v0, v23

    #@12e
    int-to-byte v14, v0

    #@12f
    .line 332
    .restart local v14    # "k":B
    and-int/lit8 v23, v4, -0x80

    #@131
    if-nez v23, :cond_a

    #@133
    shr-int/lit8 v23, v4, 0x2

    #@135
    move/from16 v0, v23

    #@137
    int-to-byte v0, v0

    #@138
    move/from16 v20, v0

    #@13a
    .line 333
    .restart local v20    # "val1":B
    :goto_6
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@13c
    aget-byte v23, v23, v20

    #@13e
    aput-byte v23, v9, v11

    #@140
    .line 334
    add-int/lit8 v23, v11, 0x1

    #@142
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@144
    shl-int/lit8 v25, v14, 0x4

    #@146
    aget-byte v24, v24, v25

    #@148
    aput-byte v24, v9, v23

    #@14a
    .line 335
    add-int/lit8 v23, v11, 0x2

    #@14c
    const/16 v24, 0x3d

    #@14e
    aput-byte v24, v9, v23

    #@150
    .line 336
    add-int/lit8 v23, v11, 0x3

    #@152
    const/16 v24, 0x3d

    #@154
    aput-byte v24, v9, v23

    #@156
    .line 356
    .end local v4    # "b1":B
    .end local v14    # "k":B
    .end local v20    # "val1":B
    :cond_8
    :goto_7
    if-eqz p1, :cond_9

    #@158
    .line 358
    move/from16 v0, v17

    #@15a
    if-ge v7, v0, :cond_9

    #@15c
    .line 360
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@15e
    .line 363
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@160
    move-object/from16 v0, v24

    #@162
    array-length v0, v0

    #@163
    move/from16 v24, v0

    #@165
    sub-int v24, v10, v24

    #@167
    .line 364
    sget-object v25, Lorg/apache/commons/codec/binary/Base64;->CHUNK_SEPARATOR:[B

    #@169
    move-object/from16 v0, v25

    #@16b
    array-length v0, v0

    #@16c
    move/from16 v25, v0

    #@16e
    .line 361
    const/16 v26, 0x0

    #@170
    .line 359
    move-object/from16 v0, v23

    #@172
    move/from16 v1, v26

    #@174
    move/from16 v2, v24

    #@176
    move/from16 v3, v25

    #@178
    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@17b
    .line 368
    :cond_9
    return-object v9

    #@17c
    .line 332
    .restart local v4    # "b1":B
    .restart local v14    # "k":B
    :cond_a
    shr-int/lit8 v23, v4, 0x2

    #@17e
    move/from16 v0, v23

    #@180
    xor-int/lit16 v0, v0, 0xc0

    #@182
    move/from16 v23, v0

    #@184
    move/from16 v0, v23

    #@186
    int-to-byte v0, v0

    #@187
    move/from16 v20, v0

    #@189
    .restart local v20    # "val1":B
    goto :goto_6

    #@18a
    .line 337
    .end local v4    # "b1":B
    .end local v14    # "k":B
    .end local v20    # "val1":B
    :cond_b
    const/16 v23, 0x10

    #@18c
    move/from16 v0, v23

    #@18e
    if-ne v12, v0, :cond_8

    #@190
    .line 339
    aget-byte v4, p0, v8

    #@192
    .line 340
    .restart local v4    # "b1":B
    add-int/lit8 v23, v8, 0x1

    #@194
    aget-byte v5, p0, v23

    #@196
    .line 341
    .restart local v5    # "b2":B
    and-int/lit8 v23, v5, 0xf

    #@198
    move/from16 v0, v23

    #@19a
    int-to-byte v15, v0

    #@19b
    .line 342
    .restart local v15    # "l":B
    and-int/lit8 v23, v4, 0x3

    #@19d
    move/from16 v0, v23

    #@19f
    int-to-byte v14, v0

    #@1a0
    .line 345
    .restart local v14    # "k":B
    and-int/lit8 v23, v4, -0x80

    #@1a2
    if-nez v23, :cond_c

    #@1a4
    shr-int/lit8 v23, v4, 0x2

    #@1a6
    move/from16 v0, v23

    #@1a8
    int-to-byte v0, v0

    #@1a9
    move/from16 v20, v0

    #@1ab
    .line 347
    .restart local v20    # "val1":B
    :goto_8
    and-int/lit8 v23, v5, -0x80

    #@1ad
    if-nez v23, :cond_d

    #@1af
    shr-int/lit8 v23, v5, 0x4

    #@1b1
    move/from16 v0, v23

    #@1b3
    int-to-byte v0, v0

    #@1b4
    move/from16 v21, v0

    #@1b6
    .line 349
    .restart local v21    # "val2":B
    :goto_9
    sget-object v23, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@1b8
    aget-byte v23, v23, v20

    #@1ba
    aput-byte v23, v9, v11

    #@1bc
    .line 350
    add-int/lit8 v23, v11, 0x1

    #@1be
    .line 351
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@1c0
    shl-int/lit8 v25, v14, 0x4

    #@1c2
    or-int v25, v25, v21

    #@1c4
    aget-byte v24, v24, v25

    #@1c6
    .line 350
    aput-byte v24, v9, v23

    #@1c8
    .line 352
    add-int/lit8 v23, v11, 0x2

    #@1ca
    sget-object v24, Lorg/apache/commons/codec/binary/Base64;->lookUpBase64Alphabet:[B

    #@1cc
    shl-int/lit8 v25, v15, 0x2

    #@1ce
    aget-byte v24, v24, v25

    #@1d0
    aput-byte v24, v9, v23

    #@1d2
    .line 353
    add-int/lit8 v23, v11, 0x3

    #@1d4
    const/16 v24, 0x3d

    #@1d6
    aput-byte v24, v9, v23

    #@1d8
    goto/16 :goto_7

    #@1da
    .line 345
    .end local v20    # "val1":B
    .end local v21    # "val2":B
    :cond_c
    shr-int/lit8 v23, v4, 0x2

    #@1dc
    move/from16 v0, v23

    #@1de
    xor-int/lit16 v0, v0, 0xc0

    #@1e0
    move/from16 v23, v0

    #@1e2
    move/from16 v0, v23

    #@1e4
    int-to-byte v0, v0

    #@1e5
    move/from16 v20, v0

    #@1e7
    .restart local v20    # "val1":B
    goto :goto_8

    #@1e8
    .line 347
    :cond_d
    shr-int/lit8 v23, v5, 0x4

    #@1ea
    move/from16 v0, v23

    #@1ec
    xor-int/lit16 v0, v0, 0xf0

    #@1ee
    move/from16 v23, v0

    #@1f0
    move/from16 v0, v23

    #@1f2
    int-to-byte v0, v0

    #@1f3
    move/from16 v21, v0

    #@1f5
    .restart local v21    # "val2":B
    goto :goto_9
.end method

.method public static encodeBase64Chunked([B)[B
    .locals 1
    .param p0, "binaryData"    # [B

    #@0
    .prologue
    .line 194
    const/4 v0, 0x1

    #@1
    invoke-static {p0, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static isArrayByteBase64([B)Z
    .locals 5
    .param p0, "arrayOctect"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 159
    invoke-static {p0}, Lorg/apache/commons/codec/binary/Base64;->discardWhitespace([B)[B

    #@5
    move-result-object p0

    #@6
    .line 161
    array-length v1, p0

    #@7
    .line 162
    .local v1, "length":I
    if-nez v1, :cond_0

    #@9
    .line 165
    return v4

    #@a
    .line 167
    :cond_0
    const/4 v0, 0x0

    #@b
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    #@d
    .line 168
    aget-byte v2, p0, v0

    #@f
    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->isBase64(B)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 169
    return v3

    #@16
    .line 167
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 172
    :cond_2
    return v4
.end method

.method private static isBase64(B)Z
    .locals 3
    .param p0, "octect"    # B

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 140
    const/16 v0, 0x3d

    #@3
    if-ne p0, v0, :cond_0

    #@5
    .line 141
    return v2

    #@6
    .line 142
    :cond_0
    sget-object v0, Lorg/apache/commons/codec/binary/Base64;->base64Alphabet:[B

    #@8
    aget-byte v0, v0, p0

    #@a
    const/4 v1, -0x1

    #@b
    if-ne v0, v1, :cond_1

    #@d
    .line 143
    const/4 v0, 0x0

    #@e
    return v0

    #@f
    .line 145
    :cond_1
    return v2
.end method


# virtual methods
.method public decode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/DecoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 211
    instance-of v0, p1, [B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 212
    new-instance v0, Lorg/apache/commons/codec/DecoderException;

    #@6
    const-string/jumbo v1, "Parameter supplied to Base64 decode is not a byte[]"

    #@9
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/DecoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 214
    :cond_0
    check-cast p1, [B

    #@f
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->decode([B)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public decode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    #@0
    .prologue
    .line 225
    invoke-static {p1}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public encode(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "pObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/codec/EncoderException;
        }
    .end annotation

    #@0
    .prologue
    .line 511
    instance-of v0, p1, [B

    #@2
    if-nez v0, :cond_0

    #@4
    .line 512
    new-instance v0, Lorg/apache/commons/codec/EncoderException;

    #@6
    .line 513
    const-string/jumbo v1, "Parameter supplied to Base64 encode is not a byte[]"

    #@9
    .line 512
    invoke-direct {v0, v1}, Lorg/apache/commons/codec/EncoderException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 515
    :cond_0
    check-cast p1, [B

    #@f
    .end local p1    # "pObject":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/commons/codec/binary/Base64;->encode([B)[B

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public encode([B)[B
    .locals 1
    .param p1, "pArray"    # [B

    #@0
    .prologue
    .line 526
    const/4 v0, 0x0

    #@1
    invoke-static {p1, v0}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([BZ)[B

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method
