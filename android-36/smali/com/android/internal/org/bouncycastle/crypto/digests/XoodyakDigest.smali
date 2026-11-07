.class public Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;
.super Ljava/lang/Object;
.source "XoodyakDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    }
.end annotation


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

.field private blacklist mode:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field private blacklist phase:I

.field private blacklist state:[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 5

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x30

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->f_bPrime:I

    .line 28
    const/16 v1, 0x10

    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Rhash:I

    .line 29
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->PhaseDown:I

    .line 30
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->PhaseUp:I

    .line 31
    const/16 v2, 0xc

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->NLANES:I

    .line 32
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->NROWS:I

    .line 33
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->NCOLUMS:I

    .line 34
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->MAXROUNDS:I

    .line 35
    iput v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->TAGLEN:I

    .line 36
    new-array v1, v2, [I

    fill-array-data v1, :array_36

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    .line 38
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 48
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

    .line 50
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
    .registers 5
    .param p1, "a"    # I
    .param p2, "offset"    # I

    .line 205
    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    rsub-int/lit8 v1, p2, 0x20

    and-int/lit8 v1, v1, 0x1f

    ushr-int v1, p1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private blacklist Up([BIII)V
    .registers 23
    .param p1, "Yi"    # [B
    .param p2, "YiOff"    # I
    .param p3, "YiLen"    # I
    .param p4, "Cu"    # I

    .line 124
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-eq v2, v3, :cond_15

    .line 126
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v3, 0x2f

    aget-byte v4, v2, v3

    xor-int v4, v4, p4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 128
    :cond_15
    const/16 v2, 0xc

    new-array v3, v2, [I

    .line 129
    .local v3, "a":[I
    iget-object v4, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    array-length v5, v3

    const/4 v6, 0x0

    invoke-static {v4, v6, v3, v6, v5}, Lcom/android/internal/org/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    .line 131
    new-array v4, v2, [I

    .line 132
    .local v4, "b":[I
    const/4 v5, 0x4

    new-array v7, v5, [I

    .line 133
    .local v7, "p":[I
    new-array v8, v5, [I

    .line 134
    .local v8, "e":[I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_28
    const/4 v10, 0x2

    if-ge v9, v2, :cond_127

    .line 137
    const/4 v11, 0x0

    .local v11, "x":I
    :goto_2c
    const/4 v12, 0x1

    if-ge v11, v5, :cond_48

    .line 139
    invoke-direct {v0, v11, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v3, v13

    invoke-direct {v0, v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v12

    aget v12, v3, v12

    xor-int/2addr v12, v13

    invoke-direct {v0, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v3, v13

    xor-int/2addr v12, v13

    aput v12, v7, v11

    .line 137
    add-int/lit8 v11, v11, 0x1

    goto :goto_2c

    .line 141
    :cond_48
    const/4 v11, 0x0

    :goto_49
    const/4 v13, 0x3

    if-ge v11, v5, :cond_62

    .line 143
    add-int/lit8 v14, v11, 0x3

    and-int/2addr v13, v14

    aget v13, v7, v13

    .line 144
    .local v13, "y":I
    const/4 v14, 0x5

    invoke-direct {v0, v13, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v14

    const/16 v15, 0xe

    invoke-direct {v0, v13, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v15

    xor-int/2addr v14, v15

    aput v14, v8, v11

    .line 141
    add-int/lit8 v11, v11, 0x1

    goto :goto_49

    .line 146
    .end local v13    # "y":I
    :cond_62
    const/4 v11, 0x0

    :goto_63
    if-ge v11, v5, :cond_7a

    .line 148
    const/4 v14, 0x0

    .local v14, "y":I
    :goto_66
    if-ge v14, v13, :cond_77

    .line 150
    invoke-direct {v0, v11, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v16, v3, v15

    aget v17, v8, v11

    xor-int v16, v16, v17

    aput v16, v3, v15

    .line 148
    add-int/lit8 v14, v14, 0x1

    goto :goto_66

    .line 146
    :cond_77
    add-int/lit8 v11, v11, 0x1

    goto :goto_63

    .line 154
    .end local v14    # "y":I
    :cond_7a
    const/4 v11, 0x0

    :goto_7b
    if-ge v11, v5, :cond_ae

    .line 156
    invoke-direct {v0, v11, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 157
    invoke-direct {v0, v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    add-int/lit8 v15, v11, 0x3

    invoke-direct {v0, v15, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    aput v15, v4, v14

    .line 158
    invoke-direct {v0, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v11, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v3, v15

    const/16 v2, 0xb

    invoke-direct {v0, v15, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v2

    aput v2, v4, v14

    .line 154
    add-int/lit8 v11, v11, 0x1

    const/16 v2, 0xc

    goto :goto_7b

    .line 161
    :cond_ae
    aget v2, v4, v6

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    aget v14, v14, v9

    xor-int/2addr v2, v14

    aput v2, v4, v6

    .line 163
    const/4 v2, 0x0

    .end local v11    # "x":I
    .local v2, "x":I
    :goto_b8
    if-ge v2, v5, :cond_e6

    .line 165
    const/4 v11, 0x0

    .local v11, "y":I
    :goto_bb
    if-ge v11, v13, :cond_e1

    .line 167
    invoke-direct {v0, v2, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v14

    invoke-direct {v0, v2, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v15

    aget v15, v4, v15

    add-int/lit8 v13, v11, 0x1

    invoke-direct {v0, v2, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v13, v4, v13

    not-int v13, v13

    add-int/lit8 v10, v11, 0x2

    invoke-direct {v0, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    aget v10, v4, v10

    and-int/2addr v10, v13

    xor-int/2addr v10, v15

    aput v10, v3, v14

    .line 165
    add-int/lit8 v11, v11, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_bb

    .line 163
    :cond_e1
    add-int/lit8 v2, v2, 0x1

    const/4 v10, 0x2

    const/4 v13, 0x3

    goto :goto_b8

    .line 171
    .end local v11    # "y":I
    :cond_e6
    const/4 v2, 0x0

    :goto_e7
    if-ge v2, v5, :cond_11d

    .line 173
    invoke-direct {v0, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v3, v11

    aput v11, v4, v10

    .line 174
    invoke-direct {v0, v2, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v10

    invoke-direct {v0, v2, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    aget v11, v3, v11

    invoke-direct {v0, v11, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v11

    aput v11, v4, v10

    .line 175
    const/4 v10, 0x2

    invoke-direct {v0, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v11

    add-int/lit8 v13, v2, 0x2

    invoke-direct {v0, v13, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v13

    aget v10, v3, v13

    const/16 v13, 0x8

    invoke-direct {v0, v10, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v10

    aput v10, v4, v11

    .line 171
    add-int/lit8 v2, v2, 0x1

    goto :goto_e7

    .line 177
    :cond_11d
    const/16 v10, 0xc

    invoke-static {v4, v6, v3, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    add-int/lit8 v9, v9, 0x1

    move v2, v10

    goto/16 :goto_28

    .line 179
    .end local v2    # "x":I
    .end local v9    # "i":I
    :cond_127
    array-length v2, v3

    iget-object v5, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-static {v3, v6, v2, v5, v6}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    .line 180
    const/4 v10, 0x2

    iput v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 181
    if-eqz v1, :cond_13c

    .line 183
    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    move/from16 v5, p2

    move/from16 v9, p3

    invoke-static {v2, v6, v1, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_140

    .line 181
    :cond_13c
    move/from16 v5, p2

    move/from16 v9, p3

    .line 185
    :goto_140
    return-void
.end method

.method private blacklist index(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 200
    rem-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method blacklist Down([BIII)V
    .registers 11
    .param p1, "Xi"    # [B
    .param p2, "XiOff"    # I
    .param p3, "XiLen"    # I
    .param p4, "Cd"    # I

    .line 189
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, p3, :cond_13

    .line 191
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v2, v1, v0

    add-int/lit8 v3, p2, 0x1

    .end local p2    # "XiOff":I
    .local v3, "XiOff":I
    aget-byte p2, p1, p2

    xor-int/2addr p2, v2

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    .line 189
    add-int/lit8 v0, v0, 0x1

    move p2, v3

    goto :goto_1

    .line 193
    .end local v0    # "i":I
    .end local v3    # "XiOff":I
    .restart local p2    # "XiOff":I
    :cond_13
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v1, v0, p3

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    .line 194
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v1, 0x2f

    aget-byte v3, v0, v1

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v5, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-ne v4, v5, :cond_2b

    and-int/lit8 v4, p4, 0x1

    goto :goto_2c

    :cond_2b
    move v4, p4

    :goto_2c
    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 195
    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 196
    return-void
.end method

.method public blacklist doFinal([BI)I
    .registers 12
    .param p1, "output"    # [B
    .param p2, "outOff"    # I

    .line 84
    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-gt v0, v1, :cond_3d

    .line 88
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 89
    .local v0, "input":[B
    const/4 v1, 0x0

    .line 90
    .local v1, "inOff":I
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    .line 91
    .local v2, "len":I
    const/4 v3, 0x3

    .line 95
    .local v3, "Cd":I
    :cond_13
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1d

    .line 97
    invoke-direct {p0, v6, v7, v7, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 99
    :cond_1d
    iget v4, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 100
    .local v4, "splitLen":I
    invoke-virtual {p0, v0, v1, v4, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    .line 101
    const/4 v3, 0x0

    .line 102
    add-int/2addr v1, v4

    .line 103
    sub-int/2addr v2, v4

    .line 105
    if-nez v2, :cond_13

    .line 106
    const/16 v5, 0x40

    const/16 v8, 0x10

    invoke-direct {p0, p1, p2, v8, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 107
    invoke-virtual {p0, v6, v7, v7, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    .line 108
    add-int/lit8 v5, p2, 0x10

    invoke-direct {p0, p1, v5, v8, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    .line 109
    const/16 v5, 0x20

    return v5

    .line 86
    .end local v0    # "input":[B
    .end local v1    # "inOff":I
    .end local v2    # "len":I
    .end local v3    # "Cd":I
    .end local v4    # "splitLen":I
    :cond_3d
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 55
    const-string v0, "Xoodyak Hash"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 61
    const/16 v0, 0x20

    return v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 115
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->fill([BB)V

    .line 116
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    .line 117
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    .line 118
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    .line 119
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 120
    return-void
.end method

.method public blacklist update(B)V
    .registers 3
    .param p1, "input"    # B

    .line 67
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 68
    return-void
.end method

.method public blacklist update([BII)V
    .registers 6
    .param p1, "input"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 73
    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 77
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 79
    return-void

    .line 75
    :cond_b
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
