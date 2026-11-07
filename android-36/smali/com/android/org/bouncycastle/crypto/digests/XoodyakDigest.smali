.class public Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;
.super Ljava/lang/Object;
.source "XoodyakDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Digest;


# instance fields
.field private final blacklist MAXROUNDS:I

.field private final blacklist NCOLUMS:I

.field private final blacklist NLANES:I

.field private final blacklist NROWS:I

.field private final blacklist PhaseDown:I

.field private final blacklist PhaseUp:I

.field private final blacklist RC:[I

.field private blacklist Rabsorb:I

.field private final blacklist Rhash:I

.field private final blacklist TAGLEN:I

.field private final blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private final blacklist f_bPrime:I

.field private blacklist mode:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field private blacklist phase:I

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    .line 27
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->f_bPrime:I

    const/16 v1, 0x10

    .line 28
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Rhash:I

    const/4 v2, 0x1

    .line 29
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->PhaseDown:I

    const/4 v2, 0x2

    .line 30
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->PhaseUp:I

    const/16 v2, 0xc

    .line 31
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->NLANES:I

    const/4 v3, 0x3

    .line 32
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->NROWS:I

    const/4 v3, 0x4

    .line 33
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->NCOLUMS:I

    .line 34
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->MAXROUNDS:I

    .line 35
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->TAGLEN:I

    .line 36
    new-array v1, v2, [I

    fill-array-data v1, :array_36

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    .line 38
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 48
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    .line 49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

    return-void

    nop

    :array_36
    .array-data 4
        0x58
        0x38
        0x3c0
        0xd0
        0x120
        0x14
        0x60
        0x2c
        0x380
        0xf0
        0x1a0
        0x12
    .end array-data
.end method

.method private blacklist ROTL32(II)I
    .registers 3

    .line 0
    and-int/lit8 p0, p2, 0x1f

    shl-int p0, p1, p0

    rsub-int/lit8 p2, p2, 0x20

    and-int/lit8 p2, p2, 0x1f

    ushr-int/2addr p1, p2

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Up([BIII)V
    .registers 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 124
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v3, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-eq v2, v3, :cond_15

    .line 126
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    :cond_15
    const/16 v2, 0xc

    .line 128
    new-array v3, v2, [I

    .line 129
    iget-object v4, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, v2}, Lcom/android/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 131
    new-array v4, v2, [I

    const/4 v6, 0x4

    .line 132
    new-array v7, v6, [I

    .line 133
    new-array v8, v6, [I

    move v9, v5

    :goto_27
    const/4 v10, 0x2

    if-ge v9, v2, :cond_124

    move v11, v5

    :goto_2b
    const/4 v12, 0x1

    if-ge v11, v6, :cond_47

    .line 139
    invoke-direct {v0, v11, v5}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v3, v13

    invoke-direct {v0, v11, v12}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v12

    aget v12, v3, v12

    xor-int/2addr v12, v13

    invoke-direct {v0, v11, v10}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v3, v13

    xor-int/2addr v12, v13

    aput v12, v7, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2b

    :cond_47
    move v11, v5

    :goto_48
    const/4 v13, 0x3

    if-ge v11, v6, :cond_61

    add-int/lit8 v14, v11, 0x3

    and-int/2addr v13, v14

    .line 143
    aget v13, v7, v13

    const/4 v14, 0x5

    .line 144
    invoke-direct {v0, v13, v14}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v14

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v13

    xor-int/2addr v13, v14

    aput v13, v8, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_48

    :cond_61
    move v11, v5

    :goto_62
    if-ge v11, v6, :cond_79

    move v14, v5

    :goto_65
    if-ge v14, v13, :cond_76

    .line 150
    invoke-direct {v0, v11, v14}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v16, v3, v15

    aget v17, v8, v11

    xor-int v16, v16, v17

    aput v16, v3, v15

    add-int/lit8 v14, v14, 0x1

    goto :goto_65

    :cond_76
    add-int/lit8 v11, v11, 0x1

    goto :goto_62

    :cond_79
    move v11, v5

    :goto_7a
    if-ge v11, v6, :cond_ad

    .line 156
    invoke-direct {v0, v11, v5}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v5}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 157
    invoke-direct {v0, v11, v12}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    add-int/lit8 v15, v11, 0x3

    invoke-direct {v0, v15, v12}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 158
    invoke-direct {v0, v11, v10}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v10}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    const/16 v2, 0xb

    invoke-direct {v0, v15, v2}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v2

    aput v2, v4, v14

    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0xc

    goto :goto_7a

    .line 161
    :cond_ad
    aget v2, v4, v5

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    aget v11, v11, v9

    xor-int/2addr v2, v11

    aput v2, v4, v5

    move v2, v5

    :goto_b7
    if-ge v2, v6, :cond_e4

    move v11, v5

    :goto_ba
    if-ge v11, v13, :cond_df

    .line 167
    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v4, v15

    add-int/lit8 v13, v11, 0x1

    invoke-direct {v0, v2, v13}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v17

    aget v10, v4, v17

    not-int v10, v10

    add-int/lit8 v11, v11, 0x2

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v4, v11

    and-int/2addr v10, v11

    xor-int/2addr v10, v15

    aput v10, v3, v14

    move v11, v13

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_ba

    :cond_df
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_b7

    :cond_e4
    move v2, v5

    :goto_e5
    if-ge v2, v6, :cond_11b

    .line 173
    invoke-direct {v0, v2, v5}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v5}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v3, v11

    aput v11, v4, v10

    .line 174
    invoke-direct {v0, v2, v12}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v12}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v3, v11

    invoke-direct {v0, v11, v12}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v11

    aput v11, v4, v10

    const/4 v10, 0x2

    .line 175
    invoke-direct {v0, v2, v10}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    add-int/lit8 v13, v2, 0x2

    invoke-direct {v0, v13, v10}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v10, v3, v13

    const/16 v13, 0x8

    invoke-direct {v0, v10, v13}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v10

    aput v10, v4, v11

    add-int/lit8 v2, v2, 0x1

    goto :goto_e5

    :cond_11b
    const/16 v2, 0xc

    .line 177
    invoke-static {v4, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_27

    .line 179
    :cond_124
    iget-object v4, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v3, v5, v2, v4, v5}, Lcom/android/org/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    const/4 v10, 0x2

    .line 180
    iput v10, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    if-eqz v1, :cond_137

    .line 183
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v5, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_137
    return-void
.end method

.method private blacklist index(II)I
    .registers 3

    .line 200
    rem-int/lit8 p2, p2, 0x3

    mul-int/lit8 p2, p2, 0x4

    rem-int/lit8 p1, p1, 0x4

    add-int/2addr p2, p1

    return p2
.end method


# virtual methods
.method blacklist Down([BIII)V
    .registers 9

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_13

    .line 191
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_1

    .line 193
    :cond_13
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte p2, p1, p3

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    int-to-byte p2, p2

    aput-byte p2, p1, p3

    const/16 p2, 0x2f

    .line 194
    aget-byte p3, p1, p2

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v2, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-ne v1, v2, :cond_28

    and-int/lit8 p4, p4, 0x1

    :cond_28
    xor-int/2addr p3, p4

    int-to-byte p3, p3

    aput-byte p3, p1, p2

    .line 195
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    return-void
.end method

.method public blacklist doFinal([BI)I
    .registers 11

    add-int/lit8 v0, p2, 0x20

    .line 84
    array-length v1, p1

    if-gt v0, v1, :cond_3d

    .line 88
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    move v4, v2

    .line 95
    :goto_14
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v5, v6, :cond_1d

    .line 97
    invoke-direct {p0, v7, v2, v2, v2}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 99
    :cond_1d
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 100
    invoke-virtual {p0, v0, v4, v5, v3}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    add-int/2addr v4, v5

    sub-int/2addr v1, v5

    if-nez v1, :cond_3b

    const/16 v0, 0x40

    const/16 v1, 0x10

    .line 106
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 107
    invoke-virtual {p0, v7, v2, v2, v2}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    add-int/2addr p2, v1

    .line 108
    invoke-direct {p0, p1, p2, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    const/16 p0, 0x20

    return p0

    :cond_3b
    move v3, v2

    goto :goto_14

    .line 86
    :cond_3d
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer is too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 55
    const-string p0, "Xoodyak Hash"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x20

    return p0
.end method

.method public blacklist reset()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x2

    .line 116
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 117
    sget-object v0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const/16 v0, 0x10

    .line 118
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    .line 119
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .registers 2

    .line 67
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist update([BII)V
    .registers 6

    add-int v0, p2, p3

    .line 73
    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 77
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    .line 75
    :cond_b
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
