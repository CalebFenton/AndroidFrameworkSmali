.class public Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;
.source "Base64Encoder.java"

# interfaces
.implements Lcom/android/org/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 13
    const/16 v0, 0x40

    #@5
    new-array v0, v0, [B

    #@7
    fill-array-data v0, :array_0

    #@a
    .line 12
    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@c
    .line 28
    const/16 v0, 0x3d

    #@e
    iput-byte v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    #@10
    .line 33
    const/16 v0, 0x80

    #@12
    new-array v0, v0, [B

    #@14
    iput-object v0, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@16
    .line 50
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    #@19
    .line 48
    return-void

    #@1a
    .line 13
    :array_0
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

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .locals 6
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

    #@0
    .prologue
    .line 273
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    #@2
    if-ne p4, v4, :cond_1

    #@4
    .line 275
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@6
    aget-byte v0, v4, p2

    #@8
    .line 276
    .local v0, "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@a
    aget-byte v1, v4, p3

    #@c
    .line 278
    .local v1, "b2":B
    or-int v4, v0, v1

    #@e
    if-gez v4, :cond_0

    #@10
    .line 280
    new-instance v4, Ljava/io/IOException;

    #@12
    const-string/jumbo v5, "invalid characters encountered at end of base64 data"

    #@15
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@18
    throw v4

    #@19
    .line 283
    :cond_0
    shl-int/lit8 v4, v0, 0x2

    #@1b
    shr-int/lit8 v5, v1, 0x4

    #@1d
    or-int/2addr v4, v5

    #@1e
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    #@21
    .line 285
    const/4 v4, 0x1

    #@22
    return v4

    #@23
    .line 287
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    :cond_1
    iget-byte v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    #@25
    if-ne p5, v4, :cond_3

    #@27
    .line 289
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@29
    aget-byte v0, v4, p2

    #@2b
    .line 290
    .restart local v0    # "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@2d
    aget-byte v1, v4, p3

    #@2f
    .line 291
    .restart local v1    # "b2":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@31
    aget-byte v2, v4, p4

    #@33
    .line 293
    .local v2, "b3":B
    or-int v4, v0, v1

    #@35
    or-int/2addr v4, v2

    #@36
    if-gez v4, :cond_2

    #@38
    .line 295
    new-instance v4, Ljava/io/IOException;

    #@3a
    const-string/jumbo v5, "invalid characters encountered at end of base64 data"

    #@3d
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@40
    throw v4

    #@41
    .line 298
    :cond_2
    shl-int/lit8 v4, v0, 0x2

    #@43
    shr-int/lit8 v5, v1, 0x4

    #@45
    or-int/2addr v4, v5

    #@46
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    #@49
    .line 299
    shl-int/lit8 v4, v1, 0x4

    #@4b
    shr-int/lit8 v5, v2, 0x2

    #@4d
    or-int/2addr v4, v5

    #@4e
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    #@51
    .line 301
    const/4 v4, 0x2

    #@52
    return v4

    #@53
    .line 305
    .end local v0    # "b1":B
    .end local v1    # "b2":B
    .end local v2    # "b3":B
    :cond_3
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@55
    aget-byte v0, v4, p2

    #@57
    .line 306
    .restart local v0    # "b1":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@59
    aget-byte v1, v4, p3

    #@5b
    .line 307
    .restart local v1    # "b2":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@5d
    aget-byte v2, v4, p4

    #@5f
    .line 308
    .restart local v2    # "b3":B
    iget-object v4, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@61
    aget-byte v3, v4, p5

    #@63
    .line 310
    .local v3, "b4":B
    or-int v4, v0, v1

    #@65
    or-int/2addr v4, v2

    #@66
    or-int/2addr v4, v3

    #@67
    if-gez v4, :cond_4

    #@69
    .line 312
    new-instance v4, Ljava/io/IOException;

    #@6b
    const-string/jumbo v5, "invalid characters encountered at end of base64 data"

    #@6e
    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@71
    throw v4

    #@72
    .line 315
    :cond_4
    shl-int/lit8 v4, v0, 0x2

    #@74
    shr-int/lit8 v5, v1, 0x4

    #@76
    or-int/2addr v4, v5

    #@77
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    #@7a
    .line 316
    shl-int/lit8 v4, v1, 0x4

    #@7c
    shr-int/lit8 v5, v2, 0x2

    #@7e
    or-int/2addr v4, v5

    #@7f
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    #@82
    .line 317
    shl-int/lit8 v4, v2, 0x6

    #@84
    or-int/2addr v4, v3

    #@85
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    #@88
    .line 319
    const/4 v4, 0x3

    #@89
    return v4
.end method

.method private ignore(C)Z
    .locals 2
    .param p1, "c"    # C

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 122
    const/16 v1, 0xa

    #@3
    if-eq p1, v1, :cond_0

    #@5
    const/16 v1, 0xd

    #@7
    if-ne p1, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/16 v1, 0x9

    #@c
    if-eq p1, v1, :cond_0

    #@e
    const/16 v1, 0x20

    #@10
    if-eq p1, v1, :cond_0

    #@12
    const/4 v0, 0x0

    #@13
    goto :goto_0
.end method

.method private nextI(Ljava/lang/String;II)I
    .locals 1
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "i"    # I
    .param p3, "finish"    # I

    #@0
    .prologue
    .line 325
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    #@5
    move-result v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    .line 327
    add-int/lit8 p2, p2, 0x1

    #@e
    goto :goto_0

    #@f
    .line 329
    :cond_0
    return p2
.end method

.method private nextI([BII)I
    .locals 1
    .param p1, "data"    # [B
    .param p2, "i"    # I
    .param p3, "finish"    # I

    #@0
    .prologue
    .line 195
    :goto_0
    if-ge p2, p3, :cond_0

    #@2
    aget-byte v0, p1, p2

    #@4
    int-to-char v0, v0

    #@5
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    .line 197
    add-int/lit8 p2, p2, 0x1

    #@d
    goto :goto_0

    #@e
    .line 199
    :cond_0
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 17
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 214
    const/16 v16, 0x0

    #@2
    .line 216
    .local v16, "length":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    #@5
    move-result v12

    #@6
    .line 218
    .local v12, "end":I
    :goto_0
    if-lez v12, :cond_0

    #@8
    .line 220
    add-int/lit8 v2, v12, -0x1

    #@a
    move-object/from16 v0, p1

    #@c
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@f
    move-result v2

    #@10
    move-object/from16 v0, p0

    #@12
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_1

    #@18
    .line 228
    :cond_0
    const/4 v14, 0x0

    #@19
    .line 229
    .local v14, "i":I
    add-int/lit8 v13, v12, -0x4

    #@1b
    .line 231
    .local v13, "finish":I
    move-object/from16 v0, p0

    #@1d
    move-object/from16 v1, p1

    #@1f
    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    #@22
    move-result v14

    #@23
    move v15, v14

    #@24
    .line 233
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_1
    if-ge v15, v13, :cond_3

    #@26
    .line 235
    move-object/from16 v0, p0

    #@28
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@2a
    add-int/lit8 v14, v15, 0x1

    #@2c
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p1

    #@2e
    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    #@31
    move-result v3

    #@32
    aget-byte v8, v2, v3

    #@34
    .line 237
    .local v8, "b1":B
    move-object/from16 v0, p0

    #@36
    move-object/from16 v1, p1

    #@38
    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    #@3b
    move-result v14

    #@3c
    .line 239
    move-object/from16 v0, p0

    #@3e
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@40
    add-int/lit8 v15, v14, 0x1

    #@42
    .end local v14    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p1

    #@44
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@47
    move-result v3

    #@48
    aget-byte v9, v2, v3

    #@4a
    .line 241
    .local v9, "b2":B
    move-object/from16 v0, p0

    #@4c
    move-object/from16 v1, p1

    #@4e
    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    #@51
    move-result v14

    #@52
    .line 243
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    #@54
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@56
    add-int/lit8 v15, v14, 0x1

    #@58
    .end local v14    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p1

    #@5a
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@5d
    move-result v3

    #@5e
    aget-byte v10, v2, v3

    #@60
    .line 245
    .local v10, "b3":B
    move-object/from16 v0, p0

    #@62
    move-object/from16 v1, p1

    #@64
    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    #@67
    move-result v14

    #@68
    .line 247
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@6c
    add-int/lit8 v15, v14, 0x1

    #@6e
    .end local v14    # "i":I
    .restart local v15    # "i":I
    move-object/from16 v0, p1

    #@70
    invoke-virtual {v0, v14}, Ljava/lang/String;->charAt(I)C

    #@73
    move-result v3

    #@74
    aget-byte v11, v2, v3

    #@76
    .line 249
    .local v11, "b4":B
    or-int v2, v8, v9

    #@78
    or-int/2addr v2, v10

    #@79
    or-int/2addr v2, v11

    #@7a
    if-gez v2, :cond_2

    #@7c
    .line 251
    new-instance v2, Ljava/io/IOException;

    #@7e
    const-string/jumbo v3, "invalid characters encountered in base64 data"

    #@81
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@84
    throw v2

    #@85
    .line 225
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    .end local v13    # "finish":I
    .end local v15    # "i":I
    :cond_1
    add-int/lit8 v12, v12, -0x1

    #@87
    goto/16 :goto_0

    #@89
    .line 254
    .restart local v8    # "b1":B
    .restart local v9    # "b2":B
    .restart local v10    # "b3":B
    .restart local v11    # "b4":B
    .restart local v13    # "finish":I
    .restart local v15    # "i":I
    :cond_2
    shl-int/lit8 v2, v8, 0x2

    #@8b
    shr-int/lit8 v3, v9, 0x4

    #@8d
    or-int/2addr v2, v3

    #@8e
    move-object/from16 v0, p2

    #@90
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    #@93
    .line 255
    shl-int/lit8 v2, v9, 0x4

    #@95
    shr-int/lit8 v3, v10, 0x2

    #@97
    or-int/2addr v2, v3

    #@98
    move-object/from16 v0, p2

    #@9a
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    #@9d
    .line 256
    shl-int/lit8 v2, v10, 0x6

    #@9f
    or-int/2addr v2, v11

    #@a0
    move-object/from16 v0, p2

    #@a2
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    #@a5
    .line 258
    add-int/lit8 v16, v16, 0x3

    #@a7
    .line 260
    move-object/from16 v0, p0

    #@a9
    move-object/from16 v1, p1

    #@ab
    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    #@ae
    move-result v14

    #@af
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move v15, v14

    #@b0
    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto/16 :goto_1

    #@b2
    .line 263
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    :cond_3
    add-int/lit8 v2, v12, -0x4

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@b9
    move-result v4

    #@ba
    add-int/lit8 v2, v12, -0x3

    #@bc
    move-object/from16 v0, p1

    #@be
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@c1
    move-result v5

    #@c2
    add-int/lit8 v2, v12, -0x2

    #@c4
    move-object/from16 v0, p1

    #@c6
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@c9
    move-result v6

    #@ca
    add-int/lit8 v2, v12, -0x1

    #@cc
    move-object/from16 v0, p1

    #@ce
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    #@d1
    move-result v7

    #@d2
    move-object/from16 v2, p0

    #@d4
    move-object/from16 v3, p2

    #@d6
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    #@d9
    move-result v2

    #@da
    add-int v16, v16, v2

    #@dc
    .line 265
    return v16
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 17
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 139
    const/16 v16, 0x0

    #@2
    .line 141
    .local v16, "outLen":I
    add-int v12, p2, p3

    #@4
    .line 143
    .local v12, "end":I
    :goto_0
    move/from16 v0, p2

    #@6
    if-le v12, v0, :cond_0

    #@8
    .line 145
    add-int/lit8 v2, v12, -0x1

    #@a
    aget-byte v2, p1, v2

    #@c
    int-to-char v2, v2

    #@d
    move-object/from16 v0, p0

    #@f
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    #@12
    move-result v2

    #@13
    if-nez v2, :cond_1

    #@15
    .line 153
    :cond_0
    move/from16 v14, p2

    #@17
    .line 154
    .local v14, "i":I
    add-int/lit8 v13, v12, -0x4

    #@19
    .line 156
    .local v13, "finish":I
    move-object/from16 v0, p0

    #@1b
    move-object/from16 v1, p1

    #@1d
    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    #@20
    move-result v14

    #@21
    move v15, v14

    #@22
    .line 158
    .end local v14    # "i":I
    .local v15, "i":I
    :goto_1
    if-ge v15, v13, :cond_3

    #@24
    .line 160
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@28
    add-int/lit8 v14, v15, 0x1

    #@2a
    .end local v15    # "i":I
    .restart local v14    # "i":I
    aget-byte v3, p1, v15

    #@2c
    aget-byte v8, v2, v3

    #@2e
    .line 162
    .local v8, "b1":B
    move-object/from16 v0, p0

    #@30
    move-object/from16 v1, p1

    #@32
    invoke-direct {v0, v1, v14, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    #@35
    move-result v14

    #@36
    .line 164
    move-object/from16 v0, p0

    #@38
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@3a
    add-int/lit8 v15, v14, 0x1

    #@3c
    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    #@3e
    aget-byte v9, v2, v3

    #@40
    .line 166
    .local v9, "b2":B
    move-object/from16 v0, p0

    #@42
    move-object/from16 v1, p1

    #@44
    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    #@47
    move-result v14

    #@48
    .line 168
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    #@4a
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@4c
    add-int/lit8 v15, v14, 0x1

    #@4e
    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    #@50
    aget-byte v10, v2, v3

    #@52
    .line 170
    .local v10, "b3":B
    move-object/from16 v0, p0

    #@54
    move-object/from16 v1, p1

    #@56
    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    #@59
    move-result v14

    #@5a
    .line 172
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move-object/from16 v0, p0

    #@5c
    iget-object v2, v0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@5e
    add-int/lit8 v15, v14, 0x1

    #@60
    .end local v14    # "i":I
    .restart local v15    # "i":I
    aget-byte v3, p1, v14

    #@62
    aget-byte v11, v2, v3

    #@64
    .line 174
    .local v11, "b4":B
    or-int v2, v8, v9

    #@66
    or-int/2addr v2, v10

    #@67
    or-int/2addr v2, v11

    #@68
    if-gez v2, :cond_2

    #@6a
    .line 176
    new-instance v2, Ljava/io/IOException;

    #@6c
    const-string/jumbo v3, "invalid characters encountered in base64 data"

    #@6f
    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    #@72
    throw v2

    #@73
    .line 150
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    .end local v13    # "finish":I
    .end local v15    # "i":I
    :cond_1
    add-int/lit8 v12, v12, -0x1

    #@75
    goto :goto_0

    #@76
    .line 179
    .restart local v8    # "b1":B
    .restart local v9    # "b2":B
    .restart local v10    # "b3":B
    .restart local v11    # "b4":B
    .restart local v13    # "finish":I
    .restart local v15    # "i":I
    :cond_2
    shl-int/lit8 v2, v8, 0x2

    #@78
    shr-int/lit8 v3, v9, 0x4

    #@7a
    or-int/2addr v2, v3

    #@7b
    move-object/from16 v0, p4

    #@7d
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    #@80
    .line 180
    shl-int/lit8 v2, v9, 0x4

    #@82
    shr-int/lit8 v3, v10, 0x2

    #@84
    or-int/2addr v2, v3

    #@85
    move-object/from16 v0, p4

    #@87
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    #@8a
    .line 181
    shl-int/lit8 v2, v10, 0x6

    #@8c
    or-int/2addr v2, v11

    #@8d
    move-object/from16 v0, p4

    #@8f
    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    #@92
    .line 183
    add-int/lit8 v16, v16, 0x3

    #@94
    .line 185
    move-object/from16 v0, p0

    #@96
    move-object/from16 v1, p1

    #@98
    invoke-direct {v0, v1, v15, v13}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    #@9b
    move-result v14

    #@9c
    .end local v15    # "i":I
    .restart local v14    # "i":I
    move v15, v14

    #@9d
    .end local v14    # "i":I
    .restart local v15    # "i":I
    goto :goto_1

    #@9e
    .line 188
    .end local v8    # "b1":B
    .end local v9    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    :cond_3
    add-int/lit8 v2, v12, -0x4

    #@a0
    aget-byte v2, p1, v2

    #@a2
    int-to-char v4, v2

    #@a3
    add-int/lit8 v2, v12, -0x3

    #@a5
    aget-byte v2, p1, v2

    #@a7
    int-to-char v5, v2

    #@a8
    add-int/lit8 v2, v12, -0x2

    #@aa
    aget-byte v2, p1, v2

    #@ac
    int-to-char v6, v2

    #@ad
    add-int/lit8 v2, v12, -0x1

    #@af
    aget-byte v2, p1, v2

    #@b1
    int-to-char v7, v2

    #@b2
    move-object/from16 v2, p0

    #@b4
    move-object/from16 v3, p4

    #@b6
    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    #@b9
    move-result v2

    #@ba
    add-int v16, v16, v2

    #@bc
    .line 190
    return v16
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 15
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 65
    rem-int/lit8 v11, p3, 0x3

    #@2
    .line 66
    .local v11, "modulus":I
    sub-int v9, p3, v11

    #@4
    .line 69
    .local v9, "dataLength":I
    move/from16 v10, p2

    #@6
    .local v10, "i":I
    :goto_0
    add-int v12, p2, v9

    #@8
    if-ge v10, v12, :cond_0

    #@a
    .line 71
    aget-byte v12, p1, v10

    #@c
    and-int/lit16 v1, v12, 0xff

    #@e
    .line 72
    .local v1, "a1":I
    add-int/lit8 v12, v10, 0x1

    #@10
    aget-byte v12, p1, v12

    #@12
    and-int/lit16 v2, v12, 0xff

    #@14
    .line 73
    .local v2, "a2":I
    add-int/lit8 v12, v10, 0x2

    #@16
    aget-byte v12, p1, v12

    #@18
    and-int/lit16 v3, v12, 0xff

    #@1a
    .line 75
    .local v3, "a3":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@1c
    ushr-int/lit8 v13, v1, 0x2

    #@1e
    and-int/lit8 v13, v13, 0x3f

    #@20
    aget-byte v12, v12, v13

    #@22
    move-object/from16 v0, p4

    #@24
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@27
    .line 76
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@29
    shl-int/lit8 v13, v1, 0x4

    #@2b
    ushr-int/lit8 v14, v2, 0x4

    #@2d
    or-int/2addr v13, v14

    #@2e
    and-int/lit8 v13, v13, 0x3f

    #@30
    aget-byte v12, v12, v13

    #@32
    move-object/from16 v0, p4

    #@34
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@37
    .line 77
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@39
    shl-int/lit8 v13, v2, 0x2

    #@3b
    ushr-int/lit8 v14, v3, 0x6

    #@3d
    or-int/2addr v13, v14

    #@3e
    and-int/lit8 v13, v13, 0x3f

    #@40
    aget-byte v12, v12, v13

    #@42
    move-object/from16 v0, p4

    #@44
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@47
    .line 78
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@49
    and-int/lit8 v13, v3, 0x3f

    #@4b
    aget-byte v12, v12, v13

    #@4d
    move-object/from16 v0, p4

    #@4f
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@52
    .line 69
    add-int/lit8 v10, v10, 0x3

    #@54
    goto :goto_0

    #@55
    .line 87
    .end local v1    # "a1":I
    .end local v2    # "a2":I
    .end local v3    # "a3":I
    :cond_0
    packed-switch v11, :pswitch_data_0

    #@58
    .line 116
    :goto_1
    :pswitch_0
    div-int/lit8 v12, v9, 0x3

    #@5a
    mul-int/lit8 v13, v12, 0x4

    #@5c
    if-nez v11, :cond_1

    #@5e
    const/4 v12, 0x0

    #@5f
    :goto_2
    add-int/2addr v12, v13

    #@60
    return v12

    #@61
    .line 92
    :pswitch_1
    add-int v12, p2, v9

    #@63
    aget-byte v12, p1, v12

    #@65
    and-int/lit16 v7, v12, 0xff

    #@67
    .line 93
    .local v7, "d1":I
    ushr-int/lit8 v12, v7, 0x2

    #@69
    and-int/lit8 v4, v12, 0x3f

    #@6b
    .line 94
    .local v4, "b1":I
    shl-int/lit8 v12, v7, 0x4

    #@6d
    and-int/lit8 v5, v12, 0x3f

    #@6f
    .line 96
    .local v5, "b2":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@71
    aget-byte v12, v12, v4

    #@73
    move-object/from16 v0, p4

    #@75
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@78
    .line 97
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@7a
    aget-byte v12, v12, v5

    #@7c
    move-object/from16 v0, p4

    #@7e
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@81
    .line 98
    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    #@83
    move-object/from16 v0, p4

    #@85
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@88
    .line 99
    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    #@8a
    move-object/from16 v0, p4

    #@8c
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@8f
    goto :goto_1

    #@90
    .line 102
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v7    # "d1":I
    :pswitch_2
    add-int v12, p2, v9

    #@92
    aget-byte v12, p1, v12

    #@94
    and-int/lit16 v7, v12, 0xff

    #@96
    .line 103
    .restart local v7    # "d1":I
    add-int v12, p2, v9

    #@98
    add-int/lit8 v12, v12, 0x1

    #@9a
    aget-byte v12, p1, v12

    #@9c
    and-int/lit16 v8, v12, 0xff

    #@9e
    .line 105
    .local v8, "d2":I
    ushr-int/lit8 v12, v7, 0x2

    #@a0
    and-int/lit8 v4, v12, 0x3f

    #@a2
    .line 106
    .restart local v4    # "b1":I
    shl-int/lit8 v12, v7, 0x4

    #@a4
    ushr-int/lit8 v13, v8, 0x4

    #@a6
    or-int/2addr v12, v13

    #@a7
    and-int/lit8 v5, v12, 0x3f

    #@a9
    .line 107
    .restart local v5    # "b2":I
    shl-int/lit8 v12, v8, 0x2

    #@ab
    and-int/lit8 v6, v12, 0x3f

    #@ad
    .line 109
    .local v6, "b3":I
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@af
    aget-byte v12, v12, v4

    #@b1
    move-object/from16 v0, p4

    #@b3
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@b6
    .line 110
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@b8
    aget-byte v12, v12, v5

    #@ba
    move-object/from16 v0, p4

    #@bc
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@bf
    .line 111
    iget-object v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@c1
    aget-byte v12, v12, v6

    #@c3
    move-object/from16 v0, p4

    #@c5
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@c8
    .line 112
    iget-byte v12, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->padding:B

    #@ca
    move-object/from16 v0, p4

    #@cc
    invoke-virtual {v0, v12}, Ljava/io/OutputStream;->write(I)V

    #@cf
    goto :goto_1

    #@d0
    .line 116
    .end local v4    # "b1":I
    .end local v5    # "b2":I
    .end local v6    # "b3":I
    .end local v7    # "d1":I
    .end local v8    # "d2":I
    :cond_1
    const/4 v12, 0x4

    #@d1
    goto :goto_2

    #@d2
    .line 87
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    #@0
    .prologue
    .line 37
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 39
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@8
    const/4 v2, -0x1

    #@9
    aput-byte v2, v1, v0

    #@b
    .line 37
    add-int/lit8 v0, v0, 0x1

    #@d
    goto :goto_0

    #@e
    .line 42
    :cond_0
    const/4 v0, 0x0

    #@f
    :goto_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@11
    array-length v1, v1

    #@12
    if-ge v0, v1, :cond_1

    #@14
    .line 44
    iget-object v1, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    #@16
    iget-object v2, p0, Lcom/android/org/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    #@18
    aget-byte v2, v2, v0

    #@1a
    int-to-byte v3, v0

    #@1b
    aput-byte v3, v1, v2

    #@1d
    .line 42
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_1

    #@20
    .line 35
    :cond_1
    return-void
.end method
