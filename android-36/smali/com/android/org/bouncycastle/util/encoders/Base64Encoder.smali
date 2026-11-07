.class public Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B

.field protected blacklist padding:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 14
    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    .line 30
    iput-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/16 v0, 0x80

    .line 35
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 52
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    return-void

    :array_1a
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private blacklist decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .registers 9

    .line 358
    iget-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base64 data"

    const/4 v2, 0x2

    if-ne p4, v0, :cond_28

    if-ne p5, v0, :cond_22

    .line 365
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p2, p0, p2

    .line 366
    aget-byte p0, p0, p3

    or-int p3, p2, p0

    if-ltz p3, :cond_1c

    shl-int/2addr p2, v2

    shr-int/lit8 p0, p0, 0x4

    or-int/2addr p0, p2

    .line 373
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x1

    return p0

    .line 370
    :cond_1c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 362
    :cond_22
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_28
    if-ne p5, v0, :cond_4c

    .line 379
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p2, p0, p2

    .line 380
    aget-byte p3, p0, p3

    .line 381
    aget-byte p0, p0, p4

    or-int p4, p2, p3

    or-int/2addr p4, p0

    if-ltz p4, :cond_46

    shl-int/2addr p2, v2

    shr-int/lit8 p4, p3, 0x4

    or-int/2addr p2, p4

    .line 388
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p2, p3, 0x4

    shr-int/2addr p0, v2

    or-int/2addr p0, p2

    .line 389
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    return v2

    .line 385
    :cond_46
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 395
    :cond_4c
    iget-object p0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte p2, p0, p2

    .line 396
    aget-byte p3, p0, p3

    .line 397
    aget-byte p4, p0, p4

    .line 398
    aget-byte p0, p0, p5

    or-int p5, p2, p3

    or-int/2addr p5, p4

    or-int/2addr p5, p0

    if-ltz p5, :cond_73

    shl-int/2addr p2, v2

    shr-int/lit8 p5, p3, 0x4

    or-int/2addr p2, p5

    .line 405
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p2, p3, 0x4

    shr-int/lit8 p3, p4, 0x2

    or-int/2addr p2, p3

    .line 406
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 p2, p4, 0x6

    or-int/2addr p0, p2

    .line 407
    invoke-virtual {p1, p0}, Ljava/io/OutputStream;->write(I)V

    const/4 p0, 0x3

    return p0

    .line 402
    :cond_73
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private blacklist ignore(C)Z
    .registers 2

    .line 0
    const/16 p0, 0xa

    if-eq p1, p0, :cond_13

    const/16 p0, 0xd

    if-eq p1, p0, :cond_13

    const/16 p0, 0x9

    if-eq p1, p0, :cond_13

    const/16 p0, 0x20

    if-ne p1, p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method private blacklist nextI(Ljava/lang/String;II)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_f

    .line 415
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_f
    return p2
.end method

.method private blacklist nextI([BII)I
    .registers 5

    :goto_0
    if-ge p2, p3, :cond_e

    .line 247
    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_e

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_e
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/16 v3, 0x36

    .line 266
    new-array v4, v3, [B

    .line 270
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    :goto_e
    if-lez v5, :cond_20

    add-int/lit8 v6, v5, -0x1

    .line 274
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_1d

    goto :goto_20

    :cond_1d
    add-int/lit8 v5, v5, -0x1

    goto :goto_e

    :cond_20
    :goto_20
    const/4 v6, 0x0

    if-nez v5, :cond_24

    return v6

    :cond_24
    move v7, v5

    move v8, v6

    :goto_26
    if-lez v7, :cond_3c

    const/4 v9, 0x4

    if-eq v8, v9, :cond_3c

    add-int/lit8 v9, v7, -0x1

    .line 293
    invoke-virtual {v1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v9

    if-nez v9, :cond_39

    add-int/lit8 v8, v8, 0x1

    :cond_39
    add-int/lit8 v7, v7, -0x1

    goto :goto_26

    .line 301
    :cond_3c
    invoke-direct {v0, v1, v6, v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v8

    move v9, v6

    move v10, v9

    :goto_42
    if-ge v8, v7, :cond_b1

    .line 305
    iget-object v11, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v8

    aget-byte v8, v11, v8

    .line 307
    invoke-direct {v0, v1, v12, v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v11

    .line 309
    iget-object v12, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v11, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    aget-byte v11, v12, v11

    .line 311
    invoke-direct {v0, v1, v13, v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v12

    .line 313
    iget-object v13, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v12, 0x1

    invoke-virtual {v1, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget-byte v12, v13, v12

    .line 315
    invoke-direct {v0, v1, v14, v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v13

    .line 317
    iget-object v14, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v13, 0x1

    invoke-virtual {v1, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    aget-byte v13, v14, v13

    or-int v14, v8, v11

    or-int/2addr v14, v12

    or-int/2addr v14, v13

    if-ltz v14, :cond_a9

    add-int/lit8 v14, v9, 0x1

    shl-int/lit8 v8, v8, 0x2

    shr-int/lit8 v16, v11, 0x4

    or-int v8, v8, v16

    int-to-byte v8, v8

    .line 324
    aput-byte v8, v4, v9

    add-int/lit8 v8, v9, 0x2

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v16, v12, 0x2

    or-int v11, v11, v16

    int-to-byte v11, v11

    .line 325
    aput-byte v11, v4, v14

    add-int/lit8 v9, v9, 0x3

    shl-int/lit8 v11, v12, 0x6

    or-int/2addr v11, v13

    int-to-byte v11, v11

    .line 326
    aput-byte v11, v4, v8

    add-int/lit8 v10, v10, 0x3

    if-ne v9, v3, :cond_a4

    .line 331
    invoke-virtual {v2, v4}, Ljava/io/OutputStream;->write([B)V

    move v9, v6

    .line 335
    :cond_a4
    invoke-direct {v0, v1, v15, v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v8

    goto :goto_42

    .line 321
    :cond_a9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    if-lez v9, :cond_b6

    .line 340
    invoke-virtual {v2, v4, v6, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 343
    :cond_b6
    invoke-direct {v0, v1, v8, v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    .line 344
    invoke-direct {v0, v1, v4, v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v6, v4, 0x1

    .line 345
    invoke-direct {v0, v1, v6, v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v6

    add-int/lit8 v7, v6, 0x1

    .line 346
    invoke-direct {v0, v1, v7, v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    .line 348
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v10, v0

    return v10
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    const/16 v4, 0x36

    .line 157
    new-array v5, v4, [B

    add-int v6, v2, p3

    :goto_e
    if-le v6, v2, :cond_1f

    add-int/lit8 v7, v6, -0x1

    .line 165
    aget-byte v7, v1, v7

    int-to-char v7, v7

    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v7

    if-nez v7, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v6, v6, -0x1

    goto :goto_e

    :cond_1f
    :goto_1f
    const/4 v7, 0x0

    if-nez v6, :cond_23

    return v7

    :cond_23
    move v8, v6

    move v9, v7

    :goto_25
    if-le v8, v2, :cond_3a

    const/4 v10, 0x4

    if-eq v9, v10, :cond_3a

    add-int/lit8 v10, v8, -0x1

    .line 184
    aget-byte v10, v1, v10

    int-to-char v10, v10

    invoke-direct {v0, v10}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v10

    if-nez v10, :cond_37

    add-int/lit8 v9, v9, 0x1

    :cond_37
    add-int/lit8 v8, v8, -0x1

    goto :goto_25

    .line 192
    :cond_3a
    invoke-direct {v0, v1, v2, v8}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    move v9, v7

    move v10, v9

    :goto_40
    if-ge v2, v8, :cond_a7

    .line 196
    iget-object v11, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v12, v2, 0x1

    aget-byte v2, v1, v2

    aget-byte v2, v11, v2

    .line 198
    invoke-direct {v0, v1, v12, v8}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v11

    .line 200
    iget-object v12, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v11, 0x1

    aget-byte v11, v1, v11

    aget-byte v11, v12, v11

    .line 202
    invoke-direct {v0, v1, v13, v8}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v12

    .line 204
    iget-object v13, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v12, 0x1

    aget-byte v12, v1, v12

    aget-byte v12, v13, v12

    .line 206
    invoke-direct {v0, v1, v14, v8}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v13

    .line 208
    iget-object v14, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v13, 0x1

    aget-byte v13, v1, v13

    aget-byte v13, v14, v13

    or-int v14, v2, v11

    or-int/2addr v14, v12

    or-int/2addr v14, v13

    if-ltz v14, :cond_9f

    add-int/lit8 v14, v9, 0x1

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v16, v11, 0x4

    or-int v2, v2, v16

    int-to-byte v2, v2

    .line 215
    aput-byte v2, v5, v9

    add-int/lit8 v2, v9, 0x2

    shl-int/lit8 v11, v11, 0x4

    shr-int/lit8 v16, v12, 0x2

    or-int v11, v11, v16

    int-to-byte v11, v11

    .line 216
    aput-byte v11, v5, v14

    add-int/lit8 v9, v9, 0x3

    shl-int/lit8 v11, v12, 0x6

    or-int/2addr v11, v13

    int-to-byte v11, v11

    .line 217
    aput-byte v11, v5, v2

    if-ne v9, v4, :cond_98

    .line 221
    invoke-virtual {v3, v5}, Ljava/io/OutputStream;->write([B)V

    move v9, v7

    :cond_98
    add-int/lit8 v10, v10, 0x3

    .line 227
    invoke-direct {v0, v1, v15, v8}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    goto :goto_40

    .line 212
    :cond_9f
    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a7
    if-lez v9, :cond_ac

    .line 232
    invoke-virtual {v3, v5, v7, v9}, Ljava/io/OutputStream;->write([BII)V

    .line 235
    :cond_ac
    invoke-direct {v0, v1, v2, v6}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    .line 236
    invoke-direct {v0, v1, v4, v6}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    .line 237
    invoke-direct {v0, v1, v5, v6}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    .line 238
    invoke-direct {v0, v1, v7, v6}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v6

    .line 240
    aget-byte v2, v1, v2

    int-to-char v2, v2

    aget-byte v4, v1, v4

    int-to-char v4, v4

    aget-byte v5, v1, v5

    int-to-char v5, v5

    aget-byte v1, v1, v6

    int-to-char v1, v1

    move/from16 v17, v5

    move v5, v1

    move-object v1, v3

    move v3, v4

    move/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int/2addr v10, v0

    return v10
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13

    const/4 v0, 0x0

    if-gez p3, :cond_4

    return v0

    :cond_4
    const/16 v1, 0x48

    .line 124
    new-array v6, v1, [B

    move v4, p2

    move p2, p3

    :goto_a
    if-lez p2, :cond_20

    const/16 v1, 0x36

    .line 128
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .line 129
    invoke-virtual/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result p0

    .line 130
    invoke-virtual {p4, v6, v0, p0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v4, v5

    sub-int/2addr p2, v5

    move-object p0, v2

    goto :goto_a

    :cond_20
    add-int/lit8 p3, p3, 0x2

    .line 134
    div-int/lit8 p3, p3, 0x3

    mul-int/lit8 p3, p3, 0x4

    return p3
.end method

.method public blacklist encode([BII[BI)I
    .registers 18

    add-int v0, p2, p3

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    move v2, p2

    move/from16 v3, p5

    :goto_7
    if-ge v2, v0, :cond_47

    add-int/lit8 v4, v2, 0x1

    .line 63
    aget-byte v5, p1, v2

    add-int/lit8 v6, v2, 0x2

    .line 64
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, v2, 0x3

    .line 65
    aget-byte v6, p1, v6

    and-int/lit16 v7, v6, 0xff

    add-int/lit8 v8, v3, 0x1

    .line 67
    iget-object v9, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v10, v5, 0x2

    and-int/lit8 v10, v10, 0x3f

    aget-byte v10, v9, v10

    aput-byte v10, p4, v3

    add-int/lit8 v10, v3, 0x2

    shl-int/lit8 v5, v5, 0x4

    ushr-int/lit8 v11, v4, 0x4

    or-int/2addr v5, v11

    and-int/lit8 v5, v5, 0x3f

    .line 68
    aget-byte v5, v9, v5

    aput-byte v5, p4, v8

    add-int/lit8 v5, v3, 0x3

    shl-int/2addr v4, v1

    ushr-int/lit8 v7, v7, 0x6

    or-int/2addr v4, v7

    and-int/lit8 v4, v4, 0x3f

    .line 69
    aget-byte v4, v9, v4

    aput-byte v4, p4, v10

    add-int/lit8 v3, v3, 0x4

    and-int/lit8 v4, v6, 0x3f

    .line 70
    aget-byte v4, v9, v4

    aput-byte v4, p4, v5

    goto :goto_7

    :cond_47
    sub-int p2, v2, p2

    sub-int p2, p3, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_84

    if-eq p2, v1, :cond_51

    goto :goto_a8

    :cond_51
    add-int/lit8 p2, v2, 0x1

    .line 87
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    .line 88
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, v3, 0x1

    .line 90
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v4, v0, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v2, v4

    aput-byte v4, p4, v3

    add-int/lit8 v4, v3, 0x2

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v5, p1, 0x4

    or-int/2addr v0, v5

    and-int/lit8 v0, v0, 0x3f

    .line 91
    aget-byte v0, v2, v0

    aput-byte v0, p4, p2

    add-int/lit8 p2, v3, 0x3

    shl-int/2addr p1, v1

    and-int/lit8 p1, p1, 0x3f

    .line 92
    aget-byte p1, v2, p1

    aput-byte p1, p4, v4

    add-int/lit8 v3, v3, 0x4

    .line 93
    iget-byte p0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte p0, p4, p2

    goto :goto_a8

    .line 77
    :cond_84
    aget-byte p1, p1, v2

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 p2, v3, 0x1

    .line 79
    iget-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v0, v1

    aput-byte v1, p4, v3

    add-int/lit8 v1, v3, 0x2

    shl-int/lit8 p1, p1, 0x4

    and-int/lit8 p1, p1, 0x3f

    .line 80
    aget-byte p1, v0, p1

    aput-byte p1, p4, p2

    add-int/lit8 p1, v3, 0x3

    .line 81
    iget-byte p0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte p0, p4, v1

    add-int/lit8 v3, v3, 0x4

    .line 82
    aput-byte p0, p4, p1

    :goto_a8
    sub-int v3, v3, p5

    return v3
.end method

.method public blacklist getEncodedLength(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x2

    .line 103
    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 39
    :goto_2
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v3, v2

    if-ge v1, v3, :cond_d

    const/4 v3, -0x1

    .line 41
    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 44
    :cond_d
    :goto_d
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v2, v1

    if-ge v0, v2, :cond_1c

    .line 46
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_1c
    return-void
.end method
