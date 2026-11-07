.class public Ljava/util/Base64$Encoder;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Encoder"
.end annotation


# static fields
.field private static final greylist-max-o CRLF:[B

.field private static final greylist-max-o MIMELINEMAX:I = 0x4c

.field static final greylist-max-o RFC2045:Ljava/util/Base64$Encoder;

.field static final greylist-max-o RFC4648:Ljava/util/Base64$Encoder;

.field static final greylist-max-o RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

.field private static final greylist-max-o toBase64:[C

.field private static final greylist-max-o toBase64URL:[C


# instance fields
.field private final greylist-max-o doPadding:Z

.field private final greylist-max-o isURL:Z

.field private final greylist-max-o linemax:I

.field private final greylist-max-o newline:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgettoBase64()[C
    .registers 1

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgettoBase64URL()[C
    .registers 1

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 5

    .line 217
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_3c

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 230
    const/16 v0, 0x40

    new-array v0, v0, [C

    fill-array-data v0, :array_80

    sput-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    .line 239
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_c4

    sput-object v0, Ljava/util/Base64$Encoder;->CRLF:[B

    .line 241
    new-instance v0, Ljava/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648:Ljava/util/Base64$Encoder;

    .line 242
    new-instance v0, Ljava/util/Base64$Encoder;

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {v0, v4, v1, v2, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC4648_URLSAFE:Ljava/util/Base64$Encoder;

    .line 243
    new-instance v0, Ljava/util/Base64$Encoder;

    const/4 v1, 0x0

    sget-object v2, Ljava/util/Base64$Encoder;->CRLF:[B

    const/16 v3, 0x4c

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    sput-object v0, Ljava/util/Base64$Encoder;->RFC2045:Ljava/util/Base64$Encoder;

    return-void

    nop

    :array_3c
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data

    :array_80
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2ds
        0x5fs
    .end array-data

    :array_c4
    .array-data 1
        0xdt
        0xat
    .end array-data
.end method

.method private constructor greylist-max-o <init>(Z[BIZ)V
    .registers 5
    .param p1, "isURL"    # Z
    .param p2, "newline"    # [B
    .param p3, "linemax"    # I
    .param p4, "doPadding"    # Z

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-boolean p1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    .line 207
    iput-object p2, p0, Ljava/util/Base64$Encoder;->newline:[B

    .line 208
    iput p3, p0, Ljava/util/Base64$Encoder;->linemax:I

    .line 209
    iput-boolean p4, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    .line 210
    return-void
.end method

.method synthetic constructor blacklist <init>(Z[BIZLjava/util/Base64-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-void
.end method

.method private greylist-max-o encode0([BII[B)I
    .registers 19
    .param p1, "src"    # [B
    .param p2, "off"    # I
    .param p3, "end"    # I
    .param p4, "dst"    # [B

    .line 435
    move/from16 v0, p3

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_b

    :cond_9
    sget-object v1, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 436
    .local v1, "base64":[C
    :goto_b
    move/from16 v2, p2

    .line 437
    .local v2, "sp":I
    sub-int v3, v0, p2

    div-int/lit8 v3, v3, 0x3

    mul-int/lit8 v3, v3, 0x3

    .line 438
    .local v3, "slen":I
    add-int v4, p2, v3

    .line 439
    .local v4, "sl":I
    iget v5, p0, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v5, :cond_27

    iget v5, p0, Ljava/util/Base64$Encoder;->linemax:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v5, v5, 0x3

    if-le v3, v5, :cond_27

    .line 440
    iget v5, p0, Ljava/util/Base64$Encoder;->linemax:I

    div-int/lit8 v5, v5, 0x4

    mul-int/lit8 v3, v5, 0x3

    .line 441
    :cond_27
    const/4 v5, 0x0

    move v8, v2

    move v11, v5

    .line 442
    .end local v2    # "sp":I
    .local v8, "sp":I
    .local v11, "dp":I
    :goto_2a
    if-ge v8, v4, :cond_5a

    .line 443
    add-int v2, v8, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 444
    .local v9, "sl0":I
    iget-boolean v12, p0, Ljava/util/Base64$Encoder;->isURL:Z

    move-object v6, p0

    move-object v7, p1

    move-object/from16 v10, p4

    invoke-direct/range {v6 .. v12}, Ljava/util/Base64$Encoder;->encodeBlock([BII[BIZ)V

    .line 445
    sub-int v2, v9, v8

    div-int/lit8 v2, v2, 0x3

    mul-int/lit8 v2, v2, 0x4

    .line 446
    .local v2, "dlen":I
    add-int/2addr v11, v2

    .line 447
    move v8, v9

    .line 448
    iget v5, p0, Ljava/util/Base64$Encoder;->linemax:I

    if-ne v2, v5, :cond_59

    if-ge v8, v0, :cond_59

    .line 449
    iget-object v5, p0, Ljava/util/Base64$Encoder;->newline:[B

    array-length v7, v5

    const/4 v10, 0x0

    :goto_4d
    if-ge v10, v7, :cond_59

    aget-byte v12, v5, v10

    .line 450
    .local v12, "b":B
    add-int/lit8 v13, v11, 0x1

    .end local v11    # "dp":I
    .local v13, "dp":I
    aput-byte v12, p4, v11

    .line 449
    .end local v12    # "b":B
    add-int/lit8 v10, v10, 0x1

    move v11, v13

    goto :goto_4d

    .line 453
    .end local v2    # "dlen":I
    .end local v9    # "sl0":I
    .end local v13    # "dp":I
    .restart local v11    # "dp":I
    :cond_59
    goto :goto_2a

    .line 454
    :cond_5a
    if-ge v8, v0, :cond_b5

    .line 455
    add-int/lit8 v2, v8, 0x1

    .end local v8    # "sp":I
    .local v2, "sp":I
    aget-byte v5, p1, v8

    and-int/lit16 v5, v5, 0xff

    .line 456
    .local v5, "b0":I
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "dp":I
    .local v7, "dp":I
    shr-int/lit8 v8, v5, 0x2

    aget-char v8, v1, v8

    int-to-byte v8, v8

    aput-byte v8, p4, v11

    .line 457
    const/16 v8, 0x3d

    if-ne v2, v0, :cond_8a

    .line 458
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "dp":I
    .restart local v11    # "dp":I
    shl-int/lit8 v9, v5, 0x4

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v1, v9

    int-to-byte v9, v9

    aput-byte v9, p4, v7

    .line 459
    iget-boolean v7, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v7, :cond_88

    .line 460
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "dp":I
    .restart local v7    # "dp":I
    aput-byte v8, p4, v11

    .line 461
    add-int/lit8 v11, v7, 0x1

    .end local v7    # "dp":I
    .restart local v11    # "dp":I
    aput-byte v8, p4, v7

    move v8, v2

    goto :goto_b5

    .line 459
    :cond_88
    move v8, v2

    goto :goto_b5

    .line 464
    .end local v11    # "dp":I
    .restart local v7    # "dp":I
    :cond_8a
    add-int/lit8 v9, v2, 0x1

    .end local v2    # "sp":I
    .local v9, "sp":I
    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    .line 465
    .local v2, "b1":I
    add-int/lit8 v10, v7, 0x1

    .end local v7    # "dp":I
    .local v10, "dp":I
    shl-int/lit8 v11, v5, 0x4

    and-int/lit8 v11, v11, 0x3f

    shr-int/lit8 v12, v2, 0x4

    or-int/2addr v11, v12

    aget-char v11, v1, v11

    int-to-byte v11, v11

    aput-byte v11, p4, v7

    .line 466
    add-int/lit8 v11, v10, 0x1

    .end local v10    # "dp":I
    .restart local v11    # "dp":I
    shl-int/lit8 v7, v2, 0x2

    and-int/lit8 v7, v7, 0x3f

    aget-char v7, v1, v7

    int-to-byte v7, v7

    aput-byte v7, p4, v10

    .line 467
    iget-boolean v7, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-eqz v7, :cond_b4

    .line 468
    add-int/lit8 v7, v11, 0x1

    .end local v11    # "dp":I
    .restart local v7    # "dp":I
    aput-byte v8, p4, v11

    move v11, v7

    move v8, v9

    goto :goto_b5

    .line 467
    .end local v7    # "dp":I
    .restart local v11    # "dp":I
    :cond_b4
    move v8, v9

    .line 472
    .end local v2    # "b1":I
    .end local v5    # "b0":I
    .end local v9    # "sp":I
    .restart local v8    # "sp":I
    :cond_b5
    :goto_b5
    return v11
.end method

.method private blacklist encodeBlock([BII[BIZ)V
    .registers 13
    .param p1, "src"    # [B
    .param p2, "sp"    # I
    .param p3, "sl"    # I
    .param p4, "dst"    # [B
    .param p5, "dp"    # I
    .param p6, "isURL"    # Z

    .line 422
    if-eqz p6, :cond_5

    sget-object v0, Ljava/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_7

    :cond_5
    sget-object v0, Ljava/util/Base64$Encoder;->toBase64:[C

    .line 423
    .local v0, "base64":[C
    :goto_7
    move v1, p2

    .local v1, "sp0":I
    move v2, p5

    .local v2, "dp0":I
    :goto_9
    if-ge v1, p3, :cond_4f

    .line 424
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "sp0":I
    .local v3, "sp0":I
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "sp0":I
    .local v4, "sp0":I
    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "sp0":I
    .restart local v3    # "sp0":I
    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v1, v4

    .line 427
    .local v1, "bits":I
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dp0":I
    .local v4, "dp0":I
    ushr-int/lit8 v5, v1, 0x12

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 428
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "dp0":I
    .restart local v2    # "dp0":I
    ushr-int/lit8 v5, v1, 0xc

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 429
    add-int/lit8 v4, v2, 0x1

    .end local v2    # "dp0":I
    .restart local v4    # "dp0":I
    ushr-int/lit8 v5, v1, 0x6

    and-int/lit8 v5, v5, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v2

    .line 430
    add-int/lit8 v2, v4, 0x1

    .end local v4    # "dp0":I
    .restart local v2    # "dp0":I
    and-int/lit8 v5, v1, 0x3f

    aget-char v5, v0, v5

    int-to-byte v5, v5

    aput-byte v5, p4, v4

    .line 431
    .end local v1    # "bits":I
    move v1, v3

    goto :goto_9

    .line 432
    .end local v2    # "dp0":I
    .end local v3    # "sp0":I
    :cond_4f
    return-void
.end method

.method private final blacklist encodedOutLength(IZ)I
    .registers 7
    .param p1, "srclen"    # I
    .param p2, "throwOOME"    # Z

    .line 256
    const/4 v0, 0x0

    .line 258
    .local v0, "len":I
    :try_start_1
    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    const/4 v2, 0x4

    if-eqz v1, :cond_13

    .line 259
    const/4 v1, 0x2

    invoke-static {p1, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    invoke-static {v2, v1}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v1

    move v0, v1

    .end local v0    # "len":I
    .local v1, "len":I
    goto :goto_26

    .line 261
    .end local v1    # "len":I
    .restart local v0    # "len":I
    :cond_13
    rem-int/lit8 v1, p1, 0x3

    .line 262
    .local v1, "n":I
    div-int/lit8 v3, p1, 0x3

    invoke-static {v2, v3}, Ljava/lang/Math;->multiplyExact(II)I

    move-result v2

    if-nez v1, :cond_1f

    const/4 v3, 0x0

    goto :goto_21

    :cond_1f
    add-int/lit8 v3, v1, 0x1

    :goto_21
    invoke-static {v2, v3}, Ljava/lang/Math;->addExact(II)I

    move-result v2

    move v0, v2

    .line 264
    .end local v1    # "n":I
    :goto_26
    iget v1, p0, Ljava/util/Base64$Encoder;->linemax:I

    if-lez v1, :cond_38

    .line 265
    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Ljava/util/Base64$Encoder;->linemax:I

    div-int/2addr v1, v2

    iget-object v2, p0, Ljava/util/Base64$Encoder;->newline:[B

    array-length v2, v2

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->addExact(II)I

    move-result v1
    :try_end_37
    .catch Ljava/lang/ArithmeticException; {:try_start_1 .. :try_end_37} :catch_39

    move v0, v1

    .line 275
    :cond_38
    goto :goto_3d

    .line 267
    :catch_39
    move-exception v1

    .line 268
    .local v1, "ex":Ljava/lang/ArithmeticException;
    if-nez p2, :cond_3e

    .line 273
    const/4 v0, -0x1

    .line 276
    .end local v1    # "ex":Ljava/lang/ArithmeticException;
    :goto_3d
    return v0

    .line 269
    .restart local v1    # "ex":Ljava/lang/ArithmeticException;
    :cond_3e
    new-instance v2, Ljava/lang/OutOfMemoryError;

    const-string v3, "Encoded size is too large"

    invoke-direct {v2, v3}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api encode([B[B)I
    .registers 6
    .param p1, "src"    # [B
    .param p2, "dst"    # [B

    .line 318
    array-length v0, p1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/Base64$Encoder;->encodedOutLength(IZ)I

    move-result v0

    .line 319
    .local v0, "len":I
    array-length v2, p2

    if-lt v2, v0, :cond_12

    const/4 v2, -0x1

    if-eq v0, v2, :cond_12

    .line 322
    array-length v2, p1

    invoke-direct {p0, p1, v1, v2, p2}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v1

    return v1

    .line 320
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output byte array is too small for encoding all input bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api encode(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .registers 9
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;

    .line 363
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/Base64$Encoder;->encodedOutLength(IZ)I

    move-result v0

    .line 364
    .local v0, "len":I
    new-array v1, v0, [B

    .line 365
    .local v1, "dst":[B
    const/4 v2, 0x0

    .line 366
    .local v2, "ret":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 367
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    .line 368
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v4

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v4, v5

    .line 369
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v5

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    add-int/2addr v5, v6

    .line 367
    invoke-direct {p0, v3, v4, v5, v1}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 371
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_43

    .line 373
    :cond_34
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [B

    .line 374
    .local v3, "src":[B
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 375
    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {p0, v3, v4, v5, v1}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 377
    .end local v3    # "src":[B
    :goto_43
    array-length v3, v1

    if-eq v2, v3, :cond_4a

    .line 378
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    .line 379
    :cond_4a
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api encode([B)[B
    .registers 6
    .param p1, "src"    # [B

    .line 290
    array-length v0, p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/Base64$Encoder;->encodedOutLength(IZ)I

    move-result v0

    .line 291
    .local v0, "len":I
    new-array v1, v0, [B

    .line 292
    .local v1, "dst":[B
    const/4 v2, 0x0

    array-length v3, p1

    invoke-direct {p0, p1, v2, v3, v1}, Ljava/util/Base64$Encoder;->encode0([BII[B)I

    move-result v2

    .line 293
    .local v2, "ret":I
    array-length v3, v1

    if-eq v2, v3, :cond_16

    .line 294
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    return-object v3

    .line 295
    :cond_16
    return-object v1
.end method

.method public whitelist test-api encodeToString([B)Ljava/lang/String;
    .registers 6
    .param p1, "src"    # [B

    .line 344
    invoke-virtual {p0, p1}, Ljava/util/Base64$Encoder;->encode([B)[B

    move-result-object v0

    .line 345
    .local v0, "encoded":[B
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-direct {v1, v0, v2, v2, v3}, Ljava/lang/String;-><init>([BIII)V

    return-object v1
.end method

.method public whitelist test-api withoutPadding()Ljava/util/Base64$Encoder;
    .registers 6

    .line 415
    iget-boolean v0, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    if-nez v0, :cond_5

    .line 416
    return-object p0

    .line 417
    :cond_5
    new-instance v0, Ljava/util/Base64$Encoder;

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    iget-object v2, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v3, p0, Ljava/util/Base64$Encoder;->linemax:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/Base64$Encoder;-><init>(Z[BIZ)V

    return-object v0
.end method

.method public whitelist test-api wrap(Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 8
    .param p1, "os"    # Ljava/io/OutputStream;

    .line 397
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    new-instance v0, Ljava/util/Base64$EncOutputStream;

    iget-boolean v1, p0, Ljava/util/Base64$Encoder;->isURL:Z

    if-eqz v1, :cond_c

    sget-object v1, Ljava/util/Base64$Encoder;->toBase64URL:[C

    goto :goto_e

    :cond_c
    sget-object v1, Ljava/util/Base64$Encoder;->toBase64:[C

    :goto_e
    move-object v2, v1

    iget-object v3, p0, Ljava/util/Base64$Encoder;->newline:[B

    iget v4, p0, Ljava/util/Base64$Encoder;->linemax:I

    iget-boolean v5, p0, Ljava/util/Base64$Encoder;->doPadding:Z

    move-object v1, p1

    .end local p1    # "os":Ljava/io/OutputStream;
    .local v1, "os":Ljava/io/OutputStream;
    invoke-direct/range {v0 .. v5}, Ljava/util/Base64$EncOutputStream;-><init>(Ljava/io/OutputStream;[C[BIZ)V

    return-object v0
.end method
