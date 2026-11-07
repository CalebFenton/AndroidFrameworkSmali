.class public Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;
.super Ljava/lang/Object;
.source "Base32Encoder.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/util/encoders/Encoder;


# static fields
.field private static final blacklist DEAULT_ENCODING_TABLE:[B

.field private static final blacklist DEFAULT_PADDING:B = 0x3dt


# instance fields
.field private final blacklist decodingTable:[B

.field private final blacklist encodingTable:[B

.field private final blacklist padding:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 17
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->DEAULT_ENCODING_TABLE:[B

    return-void

    :array_a
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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    .line 53
    sget-object v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->DEAULT_ENCODING_TABLE:[B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    .line 54
    const/16 v0, 0x3d

    iput-byte v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->initialiseDecodingTable()V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>([BB)V
    .registers 5
    .param p1, "encodingTable"    # [B
    .param p2, "padding"    # B

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    .line 67
    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1a

    .line 72
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    .line 73
    iput-byte p2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->initialiseDecodingTable()V

    .line 76
    return-void

    .line 69
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding table needs to be length 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist decodeLastBlock(Ljava/io/OutputStream;CCCCCCCC)I
    .registers 27
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "c1"    # C
    .param p3, "c2"    # C
    .param p4, "c3"    # C
    .param p5, "c4"    # C
    .param p6, "c5"    # C
    .param p7, "c6"    # C
    .param p8, "c7"    # C
    .param p9, "c8"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    iget-byte v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    const-string v9, "invalid characters encountered at end of base32 data"

    if-ne v7, v8, :cond_11f

    .line 348
    iget-byte v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq v6, v8, :cond_78

    .line 350
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v8, v8, p2

    .line 351
    .local v8, "b1":B
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v10, v10, p3

    .line 352
    .local v10, "b2":B
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v11, v11, v2

    .line 353
    .local v11, "b3":B
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v12, v12, v3

    .line 354
    .local v12, "b4":B
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v13, v13, v4

    .line 355
    .local v13, "b5":B
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v14, v14, v5

    .line 356
    .local v14, "b6":B
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v15, v15, v6

    .line 358
    .local v15, "b7":B
    or-int v16, v8, v10

    or-int v16, v16, v11

    or-int v16, v16, v12

    or-int v16, v16, v13

    or-int v16, v16, v14

    or-int v16, v16, v15

    if-ltz v16, :cond_72

    .line 363
    shl-int/lit8 v9, v8, 0x3

    shr-int/lit8 v16, v10, 0x2

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 364
    shl-int/lit8 v9, v10, 0x6

    shl-int/lit8 v16, v11, 0x1

    or-int v9, v9, v16

    shr-int/lit8 v16, v12, 0x4

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 365
    shl-int/lit8 v9, v12, 0x4

    shr-int/lit8 v16, v13, 0x1

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 366
    shl-int/lit8 v9, v13, 0x7

    shl-int/lit8 v16, v14, 0x2

    or-int v9, v9, v16

    shr-int/lit8 v16, v15, 0x3

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 368
    const/4 v9, 0x4

    return v9

    .line 360
    :cond_72
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    .end local v8    # "b1":B
    .end local v10    # "b2":B
    .end local v11    # "b3":B
    .end local v12    # "b4":B
    .end local v13    # "b5":B
    .end local v14    # "b6":B
    .end local v15    # "b7":B
    :cond_78
    iget-byte v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-ne v5, v6, :cond_119

    .line 375
    iget-byte v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq v4, v6, :cond_be

    .line 377
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v6, v6, p2

    .line 378
    .local v6, "b1":B
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v8, v8, p3

    .line 379
    .local v8, "b2":B
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v10, v10, v2

    .line 380
    .local v10, "b3":B
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v11, v11, v3

    .line 381
    .local v11, "b4":B
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v12, v12, v4

    .line 383
    .local v12, "b5":B
    or-int v13, v6, v8

    or-int/2addr v13, v10

    or-int/2addr v13, v11

    or-int/2addr v13, v12

    if-ltz v13, :cond_b8

    .line 388
    shl-int/lit8 v9, v6, 0x3

    shr-int/lit8 v13, v8, 0x2

    or-int/2addr v9, v13

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 389
    shl-int/lit8 v9, v8, 0x6

    shl-int/lit8 v13, v10, 0x1

    or-int/2addr v9, v13

    shr-int/lit8 v13, v11, 0x4

    or-int/2addr v9, v13

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 390
    shl-int/lit8 v9, v11, 0x4

    shr-int/lit8 v13, v12, 0x1

    or-int/2addr v9, v13

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 392
    const/4 v9, 0x3

    return v9

    .line 385
    :cond_b8
    new-instance v13, Ljava/io/IOException;

    invoke-direct {v13, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 395
    .end local v6    # "b1":B
    .end local v8    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    .end local v12    # "b5":B
    :cond_be
    iget-byte v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq v3, v6, :cond_f3

    .line 397
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v6, v6, p2

    .line 398
    .restart local v6    # "b1":B
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v8, v8, p3

    .line 399
    .restart local v8    # "b2":B
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v10, v10, v2

    .line 400
    .restart local v10    # "b3":B
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v11, v11, v3

    .line 402
    .restart local v11    # "b4":B
    or-int v12, v6, v8

    or-int/2addr v12, v10

    or-int/2addr v12, v11

    if-ltz v12, :cond_ed

    .line 407
    shl-int/lit8 v9, v6, 0x3

    shr-int/lit8 v12, v8, 0x2

    or-int/2addr v9, v12

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 408
    shl-int/lit8 v9, v8, 0x6

    shl-int/lit8 v12, v10, 0x1

    or-int/2addr v9, v12

    shr-int/lit8 v12, v11, 0x4

    or-int/2addr v9, v12

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 410
    const/4 v9, 0x2

    return v9

    .line 404
    :cond_ed
    new-instance v12, Ljava/io/IOException;

    invoke-direct {v12, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 413
    .end local v6    # "b1":B
    .end local v8    # "b2":B
    .end local v10    # "b3":B
    .end local v11    # "b4":B
    :cond_f3
    iget-byte v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-ne v2, v6, :cond_113

    .line 418
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v6, v6, p2

    .line 419
    .restart local v6    # "b1":B
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v8, v8, p3

    .line 421
    .restart local v8    # "b2":B
    or-int v10, v6, v8

    if-ltz v10, :cond_10d

    .line 426
    shl-int/lit8 v9, v6, 0x3

    shr-int/lit8 v10, v8, 0x2

    or-int/2addr v9, v10

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 428
    const/4 v9, 0x1

    return v9

    .line 423
    :cond_10d
    new-instance v10, Ljava/io/IOException;

    invoke-direct {v10, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 415
    .end local v6    # "b1":B
    .end local v8    # "b2":B
    :cond_113
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 372
    :cond_119
    new-instance v6, Ljava/io/IOException;

    invoke-direct {v6, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 432
    :cond_11f
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v6, v6, p2

    .line 433
    .restart local v6    # "b1":B
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v8, v8, p3

    .line 434
    .restart local v8    # "b2":B
    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v10, v10, v2

    .line 435
    .restart local v10    # "b3":B
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v11, v11, v3

    .line 436
    .restart local v11    # "b4":B
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v12, v12, v4

    .line 437
    .restart local v12    # "b5":B
    iget-object v13, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v13, v13, v5

    .line 438
    .local v13, "b6":B
    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v14, v14, p8

    .line 439
    .local v14, "b7":B
    iget-object v15, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v15, v15, v7

    .line 441
    .local v15, "b8":B
    or-int v16, v6, v8

    or-int v16, v16, v10

    or-int v16, v16, v11

    or-int v16, v16, v12

    or-int v16, v16, v13

    or-int v16, v16, v14

    or-int v16, v16, v15

    if-ltz v16, :cond_183

    .line 446
    shl-int/lit8 v9, v6, 0x3

    shr-int/lit8 v16, v8, 0x2

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 447
    shl-int/lit8 v9, v8, 0x6

    shl-int/lit8 v16, v10, 0x1

    or-int v9, v9, v16

    shr-int/lit8 v16, v11, 0x4

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 448
    shl-int/lit8 v9, v11, 0x4

    shr-int/lit8 v16, v12, 0x1

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 449
    shl-int/lit8 v9, v12, 0x7

    shl-int/lit8 v16, v13, 0x2

    or-int v9, v9, v16

    shr-int/lit8 v16, v14, 0x3

    or-int v9, v9, v16

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 450
    shl-int/lit8 v9, v14, 0x5

    or-int/2addr v9, v15

    invoke-virtual {v1, v9}, Ljava/io/OutputStream;->write(I)V

    .line 452
    const/4 v9, 0x5

    return v9

    .line 443
    :cond_183
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist encodeBlock([BI[BI)V
    .registers 14
    .param p1, "inBuf"    # [B
    .param p2, "inPos"    # I
    .param p3, "outBuf"    # [B
    .param p4, "outPos"    # I

    .line 131
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "inPos":I
    .local v0, "inPos":I
    aget-byte p2, p1, p2

    .line 132
    .local p2, "a1":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "inPos":I
    .local v1, "inPos":I
    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    .line 133
    .local v0, "a2":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "inPos":I
    .local v2, "inPos":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    .line 134
    .local v1, "a3":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "inPos":I
    .local v3, "inPos":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 135
    .local v2, "a4":I
    aget-byte v4, p1, v3

    and-int/lit16 v4, v4, 0xff

    .line 137
    .local v4, "a5":I
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outPos":I
    .local v5, "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v7, p2, 0x3

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, p4

    .line 138
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outPos":I
    .restart local p4    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v7, p2, 0x2

    ushr-int/lit8 v8, v0, 0x6

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, v5

    .line 139
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outPos":I
    .restart local v5    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v0, 0x1

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, p4

    .line 140
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outPos":I
    .restart local p4    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v7, v0, 0x4

    ushr-int/lit8 v8, v1, 0x4

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, v5

    .line 141
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outPos":I
    .restart local v5    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v7, v1, 0x1

    ushr-int/lit8 v8, v2, 0x7

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, p4

    .line 142
    add-int/lit8 p4, v5, 0x1

    .end local v5    # "outPos":I
    .restart local p4    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, v5

    .line 143
    add-int/lit8 v5, p4, 0x1

    .end local p4    # "outPos":I
    .restart local v5    # "outPos":I
    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v7, v2, 0x3

    ushr-int/lit8 v8, v4, 0x5

    or-int/2addr v7, v8

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, p4

    .line 144
    iget-object p4, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    and-int/lit8 v6, v4, 0x1f

    aget-byte p4, p4, v6

    aput-byte p4, p3, v5

    .line 145
    return-void
.end method

.method private blacklist ignore(C)Z
    .registers 3
    .param p1, "c"    # C

    .line 186
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

.method private blacklist nextI([BII)I
    .registers 5
    .param p1, "data"    # [B
    .param p2, "i"    # I
    .param p3, "finish"    # I

    .line 317
    nop

    :goto_1
    if-ge p2, p3, :cond_f

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 319
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 321
    :cond_f
    return p2
.end method


# virtual methods
.method public blacklist decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .registers 6
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 336
    .local v0, "bytes":[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2, p2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decode([BIILjava/io/OutputStream;)I

    move-result v1

    return v1
.end method

.method public blacklist decode([BIILjava/io/OutputStream;)I
    .registers 31
    .param p1, "data"    # [B
    .param p2, "off"    # I
    .param p3, "length"    # I
    .param p4, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 203
    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move/from16 v11, p2

    move-object/from16 v1, p4

    const/16 v2, 0x37

    new-array v12, v2, [B

    .line 204
    .local v12, "outBuffer":[B
    const/4 v2, 0x0

    .line 205
    .local v2, "bufOff":I
    const/4 v3, 0x0

    .line 207
    .local v3, "outLen":I
    add-int v4, v11, p3

    move v13, v4

    .line 209
    .local v13, "end":I
    :goto_11
    if-le v13, v11, :cond_22

    .line 211
    add-int/lit8 v4, v13, -0x1

    aget-byte v4, v10, v4

    int-to-char v4, v4

    invoke-direct {v0, v4}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_1f

    .line 213
    goto :goto_22

    .line 216
    :cond_1f
    add-int/lit8 v13, v13, -0x1

    goto :goto_11

    .line 220
    :cond_22
    :goto_22
    const/4 v4, 0x0

    if-nez v13, :cond_26

    .line 222
    return v4

    .line 225
    :cond_26
    const/4 v5, 0x0

    .line 226
    .local v5, "i":I
    move v6, v13

    move v14, v6

    .line 228
    .local v14, "finish":I
    :goto_29
    if-le v14, v11, :cond_3f

    const/16 v6, 0x8

    if-eq v5, v6, :cond_3f

    .line 230
    add-int/lit8 v6, v14, -0x1

    aget-byte v6, v10, v6

    int-to-char v6, v6

    invoke-direct {v0, v6}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 232
    add-int/lit8 v5, v5, 0x1

    .line 235
    :cond_3c
    add-int/lit8 v14, v14, -0x1

    goto :goto_29

    .line 238
    :cond_3f
    invoke-direct {v0, v10, v11, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v5

    move v15, v2

    move/from16 v16, v3

    move v2, v5

    .line 240
    .end local v3    # "outLen":I
    .end local v5    # "i":I
    .local v2, "i":I
    .local v15, "bufOff":I
    .local v16, "outLen":I
    :goto_47
    if-ge v2, v14, :cond_11a

    .line 242
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .restart local v5    # "i":I
    aget-byte v2, v10, v2

    aget-byte v2, v3, v2

    .line 244
    .local v2, "b1":B
    invoke-direct {v0, v10, v5, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v3

    .line 246
    .end local v5    # "i":I
    .local v3, "i":I
    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v6, v3, 0x1

    .end local v3    # "i":I
    .local v6, "i":I
    aget-byte v3, v10, v3

    aget-byte v3, v5, v3

    .line 248
    .local v3, "b2":B
    invoke-direct {v0, v10, v6, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v5

    .line 250
    .end local v6    # "i":I
    .restart local v5    # "i":I
    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v7, v5, 0x1

    .end local v5    # "i":I
    .local v7, "i":I
    aget-byte v5, v10, v5

    aget-byte v5, v6, v5

    .line 252
    .local v5, "b3":B
    invoke-direct {v0, v10, v7, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v6

    .line 254
    .end local v7    # "i":I
    .restart local v6    # "i":I
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v8, v6, 0x1

    .end local v6    # "i":I
    .local v8, "i":I
    aget-byte v6, v10, v6

    aget-byte v6, v7, v6

    .line 256
    .local v6, "b4":B
    invoke-direct {v0, v10, v8, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v7

    .line 258
    .end local v8    # "i":I
    .restart local v7    # "i":I
    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v9, v7, 0x1

    .end local v7    # "i":I
    .local v9, "i":I
    aget-byte v7, v10, v7

    aget-byte v7, v8, v7

    .line 260
    .local v7, "b5":B
    invoke-direct {v0, v10, v9, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v8

    .line 262
    .end local v9    # "i":I
    .restart local v8    # "i":I
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v4, v8, 0x1

    .end local v8    # "i":I
    .local v4, "i":I
    aget-byte v8, v10, v8

    aget-byte v8, v9, v8

    .line 264
    .local v8, "b6":B
    invoke-direct {v0, v10, v4, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v4

    .line 266
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    move/from16 v18, v2

    .end local v2    # "b1":B
    .local v18, "b1":B
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "i":I
    .local v2, "i":I
    aget-byte v4, v10, v4

    aget-byte v4, v9, v4

    .line 268
    .local v4, "b7":B
    invoke-direct {v0, v10, v2, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v2

    .line 270
    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    move/from16 v19, v2

    .end local v2    # "i":I
    .local v19, "i":I
    add-int/lit8 v2, v19, 0x1

    .end local v19    # "i":I
    .restart local v2    # "i":I
    aget-byte v19, v10, v19

    aget-byte v9, v9, v19

    .line 272
    .local v9, "b8":B
    or-int v19, v18, v3

    or-int v19, v19, v5

    or-int v19, v19, v6

    or-int v19, v19, v7

    or-int v19, v19, v8

    or-int v19, v19, v4

    or-int v19, v19, v9

    if-ltz v19, :cond_10e

    .line 277
    add-int/lit8 v19, v15, 0x1

    .end local v15    # "bufOff":I
    .local v19, "bufOff":I
    shl-int/lit8 v20, v18, 0x3

    shr-int/lit8 v21, v3, 0x2

    move/from16 v22, v3

    .end local v3    # "b2":B
    .local v22, "b2":B
    or-int v3, v20, v21

    int-to-byte v3, v3

    aput-byte v3, v12, v15

    .line 278
    add-int/lit8 v3, v19, 0x1

    .end local v19    # "bufOff":I
    .local v3, "bufOff":I
    shl-int/lit8 v15, v22, 0x6

    shl-int/lit8 v20, v5, 0x1

    or-int v15, v15, v20

    shr-int/lit8 v20, v6, 0x4

    or-int v15, v15, v20

    int-to-byte v15, v15

    aput-byte v15, v12, v19

    .line 279
    add-int/lit8 v15, v3, 0x1

    .end local v3    # "bufOff":I
    .restart local v15    # "bufOff":I
    shl-int/lit8 v19, v6, 0x4

    shr-int/lit8 v20, v7, 0x1

    move/from16 v21, v3

    .local v21, "bufOff":I
    or-int v3, v19, v20

    int-to-byte v3, v3

    aput-byte v3, v12, v21

    .line 280
    .end local v21    # "bufOff":I
    add-int/lit8 v3, v15, 0x1

    .end local v15    # "bufOff":I
    .restart local v3    # "bufOff":I
    shl-int/lit8 v19, v7, 0x7

    shl-int/lit8 v20, v8, 0x2

    or-int v19, v19, v20

    shr-int/lit8 v20, v4, 0x3

    move/from16 v21, v3

    .end local v3    # "bufOff":I
    .restart local v21    # "bufOff":I
    or-int v3, v19, v20

    int-to-byte v3, v3

    aput-byte v3, v12, v15

    .line 281
    add-int/lit8 v3, v21, 0x1

    .end local v21    # "bufOff":I
    .restart local v3    # "bufOff":I
    shl-int/lit8 v15, v4, 0x5

    or-int/2addr v15, v9

    int-to-byte v15, v15

    aput-byte v15, v12, v21

    .line 283
    array-length v15, v12

    if-ne v3, v15, :cond_104

    .line 285
    invoke-virtual {v1, v12}, Ljava/io/OutputStream;->write([B)V

    .line 286
    const/4 v3, 0x0

    move v15, v3

    goto :goto_105

    .line 283
    :cond_104
    move v15, v3

    .line 289
    .end local v3    # "bufOff":I
    .restart local v15    # "bufOff":I
    :goto_105
    add-int/lit8 v16, v16, 0x5

    .line 291
    invoke-direct {v0, v10, v2, v14}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v2

    const/4 v4, 0x0

    goto/16 :goto_47

    .line 274
    .end local v22    # "b2":B
    .local v3, "b2":B
    :cond_10e
    move/from16 v22, v3

    .end local v3    # "b2":B
    .restart local v22    # "b2":B
    new-instance v3, Ljava/io/IOException;

    move/from16 v19, v2

    .end local v2    # "i":I
    .local v19, "i":I
    const-string v2, "invalid characters encountered in base32 data"

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 294
    .end local v4    # "b7":B
    .end local v5    # "b3":B
    .end local v6    # "b4":B
    .end local v7    # "b5":B
    .end local v8    # "b6":B
    .end local v9    # "b8":B
    .end local v18    # "b1":B
    .end local v19    # "i":I
    .end local v22    # "b2":B
    .restart local v2    # "i":I
    :cond_11a
    if-lez v15, :cond_120

    .line 296
    const/4 v3, 0x0

    invoke-virtual {v1, v12, v3, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 299
    :cond_120
    invoke-direct {v0, v10, v2, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v17

    .line 300
    .local v17, "e0":I
    add-int/lit8 v3, v17, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v18

    .line 301
    .local v18, "e1":I
    add-int/lit8 v3, v18, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v19

    .line 302
    .local v19, "e2":I
    add-int/lit8 v3, v19, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v20

    .line 303
    .local v20, "e3":I
    add-int/lit8 v3, v20, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v21

    .line 304
    .local v21, "e4":I
    add-int/lit8 v3, v21, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v22

    .line 305
    .local v22, "e5":I
    add-int/lit8 v3, v22, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v23

    .line 306
    .local v23, "e6":I
    add-int/lit8 v3, v23, 0x1

    invoke-direct {v0, v10, v3, v13}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v24

    .line 308
    .local v24, "e7":I
    aget-byte v3, v10, v17

    int-to-char v3, v3

    aget-byte v4, v10, v18

    int-to-char v4, v4

    aget-byte v5, v10, v19

    int-to-char v5, v5

    aget-byte v6, v10, v20

    int-to-char v6, v6

    aget-byte v7, v10, v21

    int-to-char v7, v7

    aget-byte v8, v10, v22

    int-to-char v8, v8

    aget-byte v9, v10, v23

    int-to-char v9, v9

    aget-byte v0, v10, v24

    int-to-char v0, v0

    move/from16 v25, v2

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move v8, v9

    move v9, v0

    move-object/from16 v0, p0

    .end local v2    # "i":I
    .local v25, "i":I
    invoke-direct/range {v0 .. v9}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCCCCCC)I

    move-result v2

    add-int v16, v16, v2

    .line 312
    return v16
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

    .line 165
    const/4 v0, 0x0

    if-gez p3, :cond_4

    .line 167
    return v0

    .line 170
    :cond_4
    const/16 v1, 0x48

    new-array v6, v1, [B

    .line 171
    .local v6, "tmp":[B
    move v1, p3

    move v4, p2

    .line 172
    .end local p2    # "off":I
    .local v1, "remaining":I
    .local v4, "off":I
    :goto_a
    if-lez v1, :cond_20

    .line 174
    const/16 p2, 0x2d

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 175
    .local v5, "inLen":I
    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    .end local p1    # "buf":[B
    .local v3, "buf":[B
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encode([BII[BI)I

    move-result p1

    .line 176
    .local p1, "outLen":I
    invoke-virtual {p4, v6, v0, p1}, Ljava/io/OutputStream;->write([BII)V

    .line 177
    add-int/2addr v4, v5

    .line 178
    sub-int/2addr v1, v5

    .line 179
    .end local v5    # "inLen":I
    .end local p1    # "outLen":I
    move-object p1, v3

    goto :goto_a

    .line 180
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
    .registers 13
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

    .line 80
    move v0, p2

    .line 81
    .local v0, "inPos":I
    add-int v1, p2, p3

    add-int/lit8 v1, v1, -0x4

    .line 82
    .local v1, "inEnd":I
    move v2, p5

    .line 84
    .local v2, "outPos":I
    :goto_6
    if-ge v0, v1, :cond_10

    .line 86
    invoke-direct {p0, p1, v0, p4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodeBlock([BI[BI)V

    .line 87
    add-int/lit8 v0, v0, 0x5

    .line 88
    add-int/lit8 v2, v2, 0x8

    goto :goto_6

    .line 91
    :cond_10
    sub-int v3, v0, p2

    sub-int v3, p3, v3

    .line 92
    .local v3, "extra":I
    if-lez v3, :cond_7e

    .line 94
    const/4 v4, 0x5

    new-array v4, v4, [B

    .line 95
    .local v4, "in":[B
    const/4 v5, 0x0

    invoke-static {p1, v0, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    invoke-direct {p0, v4, v5, p4, v2}, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodeBlock([BI[BI)V

    .line 97
    packed-switch v3, :pswitch_data_82

    goto :goto_7c

    .line 119
    :pswitch_24
    add-int/lit8 v5, v2, 0x7

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    goto :goto_7c

    .line 114
    :pswitch_2b
    add-int/lit8 v5, v2, 0x5

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 115
    add-int/lit8 v5, v2, 0x6

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 116
    add-int/lit8 v5, v2, 0x7

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 117
    goto :goto_7c

    .line 108
    :pswitch_3e
    add-int/lit8 v5, v2, 0x4

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 109
    add-int/lit8 v5, v2, 0x5

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 110
    add-int/lit8 v5, v2, 0x6

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 111
    add-int/lit8 v5, v2, 0x7

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 112
    goto :goto_7c

    .line 100
    :pswitch_57
    add-int/lit8 v5, v2, 0x2

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 101
    add-int/lit8 v5, v2, 0x3

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 102
    add-int/lit8 v5, v2, 0x4

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 103
    add-int/lit8 v5, v2, 0x5

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 104
    add-int/lit8 v5, v2, 0x6

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 105
    add-int/lit8 v5, v2, 0x7

    iget-byte v6, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v6, p4, v5

    .line 106
    nop

    .line 123
    :goto_7c
    add-int/lit8 v2, v2, 0x8

    .line 126
    .end local v4    # "in":[B
    :cond_7e
    sub-int v4, v2, p5

    return v4

    nop

    :pswitch_data_82
    .packed-switch 0x1
        :pswitch_57
        :pswitch_3e
        :pswitch_2b
        :pswitch_24
    .end packed-switch
.end method

.method public blacklist getEncodedLength(I)I
    .registers 3
    .param p1, "inputLength"    # I

    .line 149
    add-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getMaxDecodedLength(I)I
    .registers 3
    .param p1, "inputLength"    # I

    .line 154
    div-int/lit8 v0, p1, 0x8

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method protected blacklist initialiseDecodingTable()V
    .registers 5

    .line 37
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 39
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    .end local v0    # "i":I
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_f
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    array-length v1, v1

    if-ge v0, v1, :cond_20

    .line 44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    aget-byte v2, v2, v0

    int-to-byte v3, v0

    aput-byte v3, v1, v2

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 46
    .end local v0    # "i":I
    :cond_20
    return-void
.end method
