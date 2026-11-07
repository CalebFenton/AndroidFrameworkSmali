.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final blacklist decodingTable:[B

.field protected final blacklist encodingTable:[B

.field protected blacklist padding:B


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_1a

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    .line 30
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    .line 35
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    .line 53
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
    .registers 12
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const-string v1, "invalid characters encountered at end of base64 data"

    if-ne p4, v0, :cond_2c

    .line 360
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v0, :cond_26

    .line 365
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    .line 366
    .local v0, "b1":B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    .line 368
    .local v2, "b2":B
    or-int v3, v0, v2

    if-ltz v3, :cond_20

    .line 373
    shl-int/lit8 v1, v0, 0x2

    shr-int/lit8 v3, v2, 0x4

    or-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 375
    const/4 v1, 0x1

    return v1

    .line 370
    :cond_20
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 362
    .end local v0    # "b1":B
    .end local v2    # "b2":B
    :cond_26
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_2c
    iget-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v0, :cond_59

    .line 379
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    .line 380
    .restart local v0    # "b1":B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    .line 381
    .restart local v2    # "b2":B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v3, p4

    .line 383
    .local v3, "b3":B
    or-int v4, v0, v2

    or-int/2addr v4, v3

    if-ltz v4, :cond_53

    .line 388
    shl-int/lit8 v1, v0, 0x2

    shr-int/lit8 v4, v2, 0x4

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 389
    shl-int/lit8 v1, v2, 0x4

    shr-int/lit8 v4, v3, 0x2

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 391
    const/4 v1, 0x2

    return v1

    .line 385
    :cond_53
    new-instance v4, Ljava/io/IOException;

    invoke-direct {v4, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    .end local v0    # "b1":B
    .end local v2    # "b2":B
    .end local v3    # "b3":B
    :cond_59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    .line 396
    .restart local v0    # "b1":B
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    .line 397
    .restart local v2    # "b2":B
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v3, p4

    .line 398
    .restart local v3    # "b3":B
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v4, v4, p5

    .line 400
    .local v4, "b4":B
    or-int v5, v0, v2

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    if-ltz v5, :cond_87

    .line 405
    shl-int/lit8 v1, v0, 0x2

    shr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 406
    shl-int/lit8 v1, v2, 0x4

    shr-int/lit8 v5, v3, 0x2

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 407
    shl-int/lit8 v1, v3, 0x6

    or-int/2addr v1, v4

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    .line 409
    const/4 v1, 0x3

    return v1

    .line 402
    :cond_87
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private blacklist ignore(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 140
    const/16 v0, 0xa

    if-eq p1, v0, :cond_13

    const/16 v0, 0xd

    if-eq p1, v0, :cond_13

    const/16 v0, 0x9

    if-eq p1, v0, :cond_13

    const/16 v0, 0x20

    if-ne p1, v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private blacklist nextI(Ljava/lang/String;II)I
    .registers 5
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 415
    nop

    :goto_1
    if-ge p2, p3, :cond_10

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 417
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 419
    :cond_10
    return p2
.end method

.method private blacklist nextI([BII)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 247
    nop

    :goto_1
    if-ge p2, p3, :cond_f

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 249
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 251
    :cond_f
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 21
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move-object/from16 v1, p2

    const/16 v2, 0x36

    new-array v7, v2, [B

    .line 267
    .local v7, "outBuffer":[B
    const/4 v2, 0x0

    .line 268
    .local v2, "bufOff":I
    const/4 v3, 0x0

    .line 270
    .local v3, "length":I
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v4

    move v8, v4

    .line 272
    .local v8, "end":I
    :goto_11
    if-lez v8, :cond_23

    .line 274
    add-int/lit8 v4, v8, -0x1

    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_20

    .line 276
    goto :goto_23

    .line 279
    :cond_20
    add-int/lit8 v8, v8, -0x1

    goto :goto_11

    .line 283
    :cond_23
    :goto_23
    const/4 v4, 0x0

    if-nez v8, :cond_27

    .line 285
    return v4

    .line 288
    :cond_27
    const/4 v5, 0x0

    .line 289
    .local v5, "i":I
    move v9, v8

    .line 291
    .local v9, "finish":I
    :goto_29
    if-lez v9, :cond_3f

    const/4 v10, 0x4

    if-eq v5, v10, :cond_3f

    .line 293
    add-int/lit8 v10, v9, -0x1

    invoke-virtual {v6, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-direct {v0, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v10

    if-nez v10, :cond_3c

    .line 295
    add-int/lit8 v5, v5, 0x1

    .line 298
    :cond_3c
    add-int/lit8 v9, v9, -0x1

    goto :goto_29

    .line 301
    :cond_3f
    invoke-direct {v0, v6, v4, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    move v10, v2

    move v11, v3

    move v12, v5

    .line 303
    .end local v2    # "bufOff":I
    .end local v3    # "length":I
    .end local v5    # "i":I
    .local v10, "bufOff":I
    .local v11, "length":I
    .local v12, "i":I
    :goto_46
    if-ge v12, v9, :cond_b9

    .line 305
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v12, 0x1

    .end local v12    # "i":I
    .local v3, "i":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v2, v2, v5

    .line 307
    .local v2, "b1":B
    invoke-direct {v0, v6, v3, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    .line 309
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v12, v3, 0x1

    .end local v3    # "i":I
    .restart local v12    # "i":I
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v5, v3

    .line 311
    .local v3, "b2":B
    invoke-direct {v0, v6, v12, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    .line 313
    .end local v12    # "i":I
    .restart local v5    # "i":I
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v5, 0x1

    .end local v5    # "i":I
    .local v13, "i":I
    invoke-virtual {v6, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v5, v12, v5

    .line 315
    .local v5, "b3":B
    invoke-direct {v0, v6, v13, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v12

    .line 317
    .end local v13    # "i":I
    .restart local v12    # "i":I
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "i":I
    .local v14, "i":I
    invoke-virtual {v6, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    aget-byte v12, v13, v12

    .line 319
    .local v12, "b4":B
    or-int v13, v2, v3

    or-int/2addr v13, v5

    or-int/2addr v13, v12

    if-ltz v13, :cond_b1

    .line 324
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "bufOff":I
    .local v13, "bufOff":I
    shl-int/lit8 v15, v2, 0x2

    shr-int/lit8 v16, v3, 0x4

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v7, v10

    .line 325
    add-int/lit8 v10, v13, 0x1

    .end local v13    # "bufOff":I
    .restart local v10    # "bufOff":I
    shl-int/lit8 v15, v3, 0x4

    shr-int/lit8 v16, v5, 0x2

    or-int v15, v15, v16

    int-to-byte v15, v15

    aput-byte v15, v7, v13

    .line 326
    add-int/lit8 v13, v10, 0x1

    .end local v10    # "bufOff":I
    .restart local v13    # "bufOff":I
    shl-int/lit8 v15, v5, 0x6

    or-int/2addr v15, v12

    int-to-byte v15, v15

    aput-byte v15, v7, v10

    .line 328
    add-int/lit8 v11, v11, 0x3

    .line 329
    array-length v10, v7

    if-ne v13, v10, :cond_aa

    .line 331
    invoke-virtual {v1, v7}, Ljava/io/OutputStream;->write([B)V

    .line 332
    const/4 v10, 0x0

    .end local v13    # "bufOff":I
    .restart local v10    # "bufOff":I
    goto :goto_ab

    .line 329
    .end local v10    # "bufOff":I
    .restart local v13    # "bufOff":I
    :cond_aa
    move v10, v13

    .line 335
    .end local v13    # "bufOff":I
    .restart local v10    # "bufOff":I
    :goto_ab
    invoke-direct {v0, v6, v14, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v13

    move v12, v13

    .end local v14    # "i":I
    .local v13, "i":I
    goto :goto_46

    .line 321
    .end local v13    # "i":I
    .restart local v14    # "i":I
    :cond_b1
    new-instance v4, Ljava/io/IOException;

    const-string v13, "invalid characters encountered in base64 data"

    invoke-direct {v4, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 338
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v5    # "b3":B
    .end local v14    # "i":I
    .local v12, "i":I
    :cond_b9
    if-lez v10, :cond_be

    .line 340
    invoke-virtual {v1, v7, v4, v10}, Ljava/io/OutputStream;->write([BII)V

    .line 343
    :cond_be
    invoke-direct {v0, v6, v12, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v13

    .line 344
    .local v13, "e0":I
    add-int/lit8 v2, v13, 0x1

    invoke-direct {v0, v6, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v14

    .line 345
    .local v14, "e1":I
    add-int/lit8 v2, v14, 0x1

    invoke-direct {v0, v6, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v15

    .line 346
    .local v15, "e2":I
    add-int/lit8 v2, v15, 0x1

    invoke-direct {v0, v6, v2, v8}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v2

    .line 348
    .local v2, "e3":I
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v4, v3

    invoke-virtual {v6, v14}, Ljava/lang/String;->charAt(I)C

    move-result v3

    move v5, v4

    invoke-virtual {v6, v15}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move/from16 v16, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move/from16 v17, v16

    move/from16 v16, v2

    move/from16 v2, v17

    .end local v2    # "e3":I
    .local v16, "e3":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int/2addr v11, v2

    .line 350
    return v11
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 23
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v1, p4

    const/16 v2, 0x36

    new-array v8, v2, [B

    .line 158
    .local v8, "outBuffer":[B
    const/4 v2, 0x0

    .line 159
    .local v2, "bufOff":I
    const/4 v3, 0x0

    .line 161
    .local v3, "outLen":I
    add-int v4, v7, p3

    move v9, v4

    .line 163
    .local v9, "end":I
    :goto_11
    if-le v9, v7, :cond_22

    .line 165
    add-int/lit8 v4, v9, -0x1

    aget-byte v4, v6, v4

    int-to-char v4, v4

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 167
    goto :goto_22

    .line 170
    :cond_1f
    add-int/lit8 v9, v9, -0x1

    goto :goto_11

    .line 174
    :cond_22
    :goto_22
    const/4 v4, 0x0

    if-nez v9, :cond_26

    .line 176
    return v4

    .line 179
    :cond_26
    const/4 v5, 0x0

    .line 180
    .local v5, "i":I
    move v10, v9

    .line 182
    .local v10, "finish":I
    :goto_28
    if-le v10, v7, :cond_3d

    const/4 v11, 0x4

    if-eq v5, v11, :cond_3d

    .line 184
    add-int/lit8 v11, v10, -0x1

    aget-byte v11, v6, v11

    int-to-char v11, v11

    invoke-direct {v0, v11}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v11

    if-nez v11, :cond_3a

    .line 186
    add-int/lit8 v5, v5, 0x1

    .line 189
    :cond_3a
    add-int/lit8 v10, v10, -0x1

    goto :goto_28

    .line 192
    :cond_3d
    invoke-direct {v0, v6, v7, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v5

    move v11, v2

    move v12, v3

    move v13, v5

    .line 194
    .end local v2    # "bufOff":I
    .end local v3    # "outLen":I
    .end local v5    # "i":I
    .local v11, "bufOff":I
    .local v12, "outLen":I
    .local v13, "i":I
    :goto_44
    if-ge v13, v10, :cond_af

    .line 196
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v13, 0x1

    .end local v13    # "i":I
    .local v3, "i":I
    aget-byte v5, v6, v13

    aget-byte v2, v2, v5

    .line 198
    .local v2, "b1":B
    invoke-direct {v0, v6, v3, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    .line 200
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v13, v3, 0x1

    .end local v3    # "i":I
    .restart local v13    # "i":I
    aget-byte v3, v6, v3

    aget-byte v3, v5, v3

    .line 202
    .local v3, "b2":B
    invoke-direct {v0, v6, v13, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v5

    .line 204
    .end local v13    # "i":I
    .restart local v5    # "i":I
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v14, v5, 0x1

    .end local v5    # "i":I
    .local v14, "i":I
    aget-byte v5, v6, v5

    aget-byte v5, v13, v5

    .line 206
    .local v5, "b3":B
    invoke-direct {v0, v6, v14, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v13

    .line 208
    .end local v14    # "i":I
    .restart local v13    # "i":I
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v15, v13, 0x1

    .end local v13    # "i":I
    .local v15, "i":I
    aget-byte v13, v6, v13

    aget-byte v13, v14, v13

    .line 210
    .local v13, "b4":B
    or-int v14, v2, v3

    or-int/2addr v14, v5

    or-int/2addr v14, v13

    if-ltz v14, :cond_a7

    .line 215
    add-int/lit8 v14, v11, 0x1

    .end local v11    # "bufOff":I
    .local v14, "bufOff":I
    shl-int/lit8 v16, v2, 0x2

    shr-int/lit8 v17, v3, 0x4

    or-int v4, v16, v17

    int-to-byte v4, v4

    aput-byte v4, v8, v11

    .line 216
    add-int/lit8 v4, v14, 0x1

    .end local v14    # "bufOff":I
    .local v4, "bufOff":I
    shl-int/lit8 v11, v3, 0x4

    shr-int/lit8 v16, v5, 0x2

    or-int v11, v11, v16

    int-to-byte v11, v11

    aput-byte v11, v8, v14

    .line 217
    add-int/lit8 v11, v4, 0x1

    .end local v4    # "bufOff":I
    .restart local v11    # "bufOff":I
    shl-int/lit8 v14, v5, 0x6

    or-int/2addr v14, v13

    int-to-byte v14, v14

    aput-byte v14, v8, v4

    .line 219
    array-length v4, v8

    if-ne v11, v4, :cond_9e

    .line 221
    invoke-virtual {v1, v8}, Ljava/io/OutputStream;->write([B)V

    .line 222
    const/4 v4, 0x0

    move v11, v4

    .line 225
    :cond_9e
    add-int/lit8 v12, v12, 0x3

    .line 227
    invoke-direct {v0, v6, v15, v10}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v4

    move v13, v4

    const/4 v4, 0x0

    .end local v15    # "i":I
    .local v4, "i":I
    goto :goto_44

    .line 212
    .end local v4    # "i":I
    .restart local v15    # "i":I
    :cond_a7
    new-instance v4, Ljava/io/IOException;

    const-string v14, "invalid characters encountered in base64 data"

    invoke-direct {v4, v14}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 230
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    .end local v5    # "b3":B
    .end local v15    # "i":I
    .local v13, "i":I
    :cond_af
    if-lez v11, :cond_b5

    .line 232
    const/4 v2, 0x0

    invoke-virtual {v1, v8, v2, v11}, Ljava/io/OutputStream;->write([BII)V

    .line 235
    :cond_b5
    invoke-direct {v0, v6, v13, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v14

    .line 236
    .local v14, "e0":I
    add-int/lit8 v2, v14, 0x1

    invoke-direct {v0, v6, v2, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v15

    .line 237
    .local v15, "e1":I
    add-int/lit8 v2, v15, 0x1

    invoke-direct {v0, v6, v2, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v16

    .line 238
    .local v16, "e2":I
    add-int/lit8 v2, v16, 0x1

    invoke-direct {v0, v6, v2, v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v17

    .line 240
    .local v17, "e3":I
    aget-byte v2, v6, v14

    int-to-char v2, v2

    aget-byte v3, v6, v15

    int-to-char v3, v3

    aget-byte v4, v6, v16

    int-to-char v4, v4

    aget-byte v5, v6, v17

    int-to-char v5, v5

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v2

    add-int/2addr v12, v2

    .line 242
    return v12
.end method

.method public blacklist encode([BIILjava/io/OutputStream;)I
    .registers 13
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    if-gez p3, :cond_4

    .line 121
    return v0

    .line 124
    :cond_4
    const/16 v1, 0x48

    new-array v6, v1, [B

    .line 125
    .local v6, "tmp":[B
    move v1, p3

    move v4, p2

    .line 126
    .end local p2    # "off":I
    .local v1, "remaining":I
    .local v4, "off":I
    :goto_a
    if-lez v1, :cond_20

    .line 128
    const/16 p2, 0x36

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 129
    .local v5, "inLen":I
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "buf":[B
    .local v3, "buf":[B
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result p1

    .line 130
    .local p1, "outLen":I
    invoke-virtual {p4, v6, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 131
    add-int/2addr v4, v5

    .line 132
    sub-int/2addr v1, v5

    .line 133
    .end local v5    # "inLen":I
    .end local p1    # "outLen":I
    move-object p1, v3

    goto :goto_a

    .line 134
    .end local v3    # "buf":[B
    .local p1, "buf":[B
    :cond_20
    move-object v3, p1

    .end local p1    # "buf":[B
    .restart local v3    # "buf":[B
    add-int/lit8 p1, p3, 0x2

    div-int/lit8 p1, p1, 0x3

    mul-int/lit8 p1, p1, 0x4

    return p1
.end method

.method public blacklist encode([BII[BI)I
    .registers 16
    .param p1, "inBuf"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I
    .param p4, "outBuf"    # [B
    .param p5, "outOff"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    move v0, p2

    .line 58
    .local v0, "inPos":I
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x2

    .line 59
    .local v1, "inEnd":I
    move v2, p5

    .line 61
    .local v2, "outPos":I
    :goto_6
    if-ge v0, v1, :cond_4e

    .line 63
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    .line 64
    .local v0, "a1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inPos":I
    .local v4, "inPos":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 65
    .local v3, "a2":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "inPos":I
    .local v5, "inPos":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    .line 67
    .local v4, "a3":I
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outPos":I
    .local v6, "outPos":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v8, v0, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v2

    .line 68
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outPos":I
    .restart local v2    # "outPos":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v8, v0, 0x4

    ushr-int/lit8 v9, v3, 0x4

    or-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v6

    .line 69
    add-int/lit8 v6, v2, 0x1

    .end local v2    # "outPos":I
    .restart local v6    # "outPos":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v8, v3, 0x2

    ushr-int/lit8 v9, v4, 0x6

    or-int/2addr v8, v9

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v2

    .line 70
    add-int/lit8 v2, v6, 0x1

    .end local v6    # "outPos":I
    .restart local v2    # "outPos":I
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v8, v4, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v6

    .line 71
    .end local v0    # "a1":I
    .end local v3    # "a2":I
    .end local v4    # "a3":I
    move v0, v5

    goto :goto_6

    .line 73
    .end local v5    # "inPos":I
    .local v0, "inPos":I
    :cond_4e
    sub-int v3, v0, p2

    sub-int v3, p3, v3

    packed-switch v3, :pswitch_data_c0

    goto :goto_bc

    .line 87
    :pswitch_56
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 88
    .local v0, "a1":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "inPos":I
    .local v4, "inPos":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    .line 90
    .local v3, "a2":I
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "outPos":I
    .local v5, "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v0, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, p4, v2

    .line 91
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "outPos":I
    .restart local v2    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v7, v0, 0x4

    ushr-int/lit8 v8, v3, 0x4

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, p4, v5

    .line 92
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "outPos":I
    .restart local v5    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v7, v3, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-byte v6, v6, v7

    aput-byte v6, p4, v2

    .line 93
    add-int/lit8 v2, v5, 0x1

    .end local v5    # "outPos":I
    .restart local v2    # "outPos":I
    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 94
    move v0, v4

    goto :goto_bc

    .line 77
    .end local v3    # "a2":I
    .end local v4    # "inPos":I
    .local v0, "inPos":I
    :pswitch_91
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "inPos":I
    .local v3, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 79
    .local v0, "a1":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "outPos":I
    .local v4, "outPos":I
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v6, v0, 0x2

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, p4, v2

    .line 80
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "outPos":I
    .restart local v2    # "outPos":I
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x3f

    aget-byte v5, v5, v6

    aput-byte v5, p4, v4

    .line 81
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "outPos":I
    .restart local v4    # "outPos":I
    iget-byte v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v5, p4, v2

    .line 82
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "outPos":I
    .restart local v2    # "outPos":I
    iget-byte v5, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v5, p4, v4

    .line 83
    move v0, v3

    .line 98
    .end local v3    # "inPos":I
    .local v0, "inPos":I
    :goto_bc
    sub-int v3, v2, p5

    return v3

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_91
        :pswitch_56
    .end packed-switch
.end method

.method public blacklist getEncodedLength(I)I
    .registers 3
    .param p1, "inputLength"    # I

    .line 103
    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public blacklist getMaxDecodedLength(I)I
    .registers 3
    .param p1, "inputLength"    # I

    .line 108
    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 41
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 44
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 46
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 48
    .end local v0    # "i":I
    :cond_20
    return-void
.end method
