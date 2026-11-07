.class public Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;
.super Ljava/lang/Object;
.source "PhotonBeetleDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/Digest;


# instance fields
.field private blacklist D:I

.field private blacklist DSquare:I

.field private blacklist Dq:I

.field private blacklist Dr:I

.field private final blacklist INITIAL_RATE_INBYTES:I

.field private blacklist LAST_THREE_BITS_OFFSET:I

.field private blacklist MixColMatrix:[[B

.field private blacklist RATE_INBYTES:I

.field private blacklist RC:[[B

.field private blacklist ROUND:I

.field private blacklist S:I

.field private blacklist SQUEEZE_RATE_INBYTES:I

.field private blacklist STATE_INBYTES:I

.field private blacklist S_1:I

.field private blacklist TAG_INBYTES:I

.field private blacklist buffer:Ljava/io/ByteArrayOutputStream;

.field private blacklist sbox:[B

.field private blacklist state:[B

.field private blacklist state_2d:[[B


# direct methods
.method public constructor blacklist <init>()V
    .registers 16

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x10

    .line 26
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->INITIAL_RATE_INBYTES:I

    const/4 v1, 0x4

    .line 27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    .line 28
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    const/16 v2, 0x20

    .line 29
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    .line 30
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    const/4 v3, 0x5

    .line 31
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    const/16 v3, 0xc

    .line 32
    iput v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    const/16 v4, 0x8

    .line 33
    iput v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    const/4 v5, 0x3

    .line 34
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    const/4 v6, 0x7

    .line 35
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    const/16 v6, 0x40

    .line 36
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    .line 37
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    .line 38
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    const/4 v1, 0x1

    const/4 v5, 0x2

    .line 39
    new-array v6, v3, [B

    fill-array-data v6, :array_ae

    const/4 v14, 0x0

    new-array v7, v3, [B

    fill-array-data v7, :array_b8

    new-array v8, v3, [B

    fill-array-data v8, :array_c2

    new-array v9, v3, [B

    fill-array-data v9, :array_cc

    new-array v10, v3, [B

    fill-array-data v10, :array_d6

    new-array v11, v3, [B

    fill-array-data v11, :array_e0

    new-array v12, v3, [B

    fill-array-data v12, :array_ea

    new-array v13, v3, [B

    fill-array-data v13, :array_f4

    filled-new-array/range {v6 .. v13}, [[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    .line 49
    new-array v6, v4, [B

    fill-array-data v6, :array_fe

    new-array v7, v4, [B

    fill-array-data v7, :array_106

    new-array v8, v4, [B

    fill-array-data v8, :array_10e

    new-array v9, v4, [B

    fill-array-data v9, :array_116

    new-array v10, v4, [B

    fill-array-data v10, :array_11e

    new-array v11, v4, [B

    fill-array-data v11, :array_126

    new-array v12, v4, [B

    fill-array-data v12, :array_12e

    new-array v13, v4, [B

    fill-array-data v13, :array_136

    filled-new-array/range {v6 .. v13}, [[B

    move-result-object v3

    iput-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    .line 60
    new-array v0, v0, [B

    fill-array-data v0, :array_13e

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    .line 64
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    .line 65
    new-array v0, v5, [I

    aput v4, v0, v1

    aput v4, v0, v14

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    return-void

    nop

    :array_ae
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xet
        0xdt
        0xbt
        0x6t
        0xct
        0x9t
        0x2t
        0x5t
        0xat
    .end array-data

    :array_b8
    .array-data 1
        0x0t
        0x2t
        0x6t
        0xft
        0xct
        0xat
        0x7t
        0xdt
        0x8t
        0x3t
        0x4t
        0xbt
    .end array-data

    :array_c2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0xdt
        0xet
        0x8t
        0x5t
        0xft
        0xat
        0x1t
        0x6t
        0x9t
    .end array-data

    :array_cc
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x9t
        0xat
        0xct
        0x1t
        0xbt
        0xet
        0x5t
        0x2t
        0xdt
    .end array-data

    :array_d6
    .array-data 1
        0xet
        0xct
        0x8t
        0x1t
        0x2t
        0x4t
        0x9t
        0x3t
        0x6t
        0xdt
        0xat
        0x5t
    .end array-data

    :array_e0
    .array-data 1
        0xft
        0xdt
        0x9t
        0x0t
        0x3t
        0x5t
        0x8t
        0x2t
        0x7t
        0xct
        0xbt
        0x4t
    .end array-data

    :array_ea
    .array-data 1
        0xdt
        0xft
        0xbt
        0x2t
        0x1t
        0x7t
        0xat
        0x0t
        0x5t
        0xet
        0x9t
        0x6t
    .end array-data

    :array_f4
    .array-data 1
        0x9t
        0xbt
        0xft
        0x6t
        0x5t
        0x3t
        0xet
        0x4t
        0x1t
        0xat
        0xdt
        0x2t
    .end array-data

    :array_fe
    .array-data 1
        0x2t
        0x4t
        0x2t
        0xbt
        0x2t
        0x8t
        0x5t
        0x6t
    .end array-data

    :array_106
    .array-data 1
        0xct
        0x9t
        0x8t
        0xdt
        0x7t
        0x7t
        0x5t
        0x2t
    .end array-data

    :array_10e
    .array-data 1
        0x4t
        0x4t
        0xdt
        0xdt
        0x9t
        0x4t
        0xdt
        0x9t
    .end array-data

    :array_116
    .array-data 1
        0x1t
        0x6t
        0x5t
        0x1t
        0xct
        0xdt
        0xft
        0xet
    .end array-data

    :array_11e
    .array-data 1
        0xft
        0xct
        0x9t
        0xdt
        0xet
        0x5t
        0xet
        0xdt
    .end array-data

    :array_126
    .array-data 1
        0x9t
        0xet
        0x5t
        0xft
        0x4t
        0xct
        0x9t
        0x6t
    .end array-data

    :array_12e
    .array-data 1
        0xct
        0x2t
        0x2t
        0xat
        0x3t
        0x1t
        0x1t
        0xet
    .end array-data

    :array_136
    .array-data 1
        0xft
        0x1t
        0xdt
        0xat
        0x5t
        0xat
        0x2t
        0x3t
    .end array-data

    :array_13e
    .array-data 1
        0xct
        0x5t
        0x6t
        0xbt
        0x9t
        0x0t
        0xat
        0xdt
        0x3t
        0xet
        0xft
        0x8t
        0x4t
        0x7t
        0x1t
        0x2t
    .end array-data
.end method


# virtual methods
.method blacklist PHOTON_Permutation()V
    .registers 13

    const/4 v0, 0x0

    move v1, v0

    .line 155
    :goto_2
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v1, v2, :cond_26

    .line 157
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v3, v1, v3

    aget-object v2, v2, v3

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v3, v1

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    shr-int/lit8 v5, v1, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v1, 0x1

    mul-int/lit8 v5, v5, 0x4

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_26
    move v1, v0

    .line 159
    :goto_27
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    if-ge v1, v2, :cond_e9

    move v2, v0

    .line 162
    :goto_2c
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_43

    .line 164
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v3, v3, v2

    aget-byte v4, v3, v0

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_43
    move v2, v0

    .line 167
    :goto_44
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_5f

    move v3, v0

    .line 169
    :goto_49
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v3, v4, :cond_5c

    .line 171
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v2

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    aget-byte v6, v4, v3

    aget-byte v5, v5, v6

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_49

    :cond_5c
    add-int/lit8 v2, v2, 0x1

    goto :goto_44

    :cond_5f
    const/4 v2, 0x1

    move v3, v2

    .line 175
    :goto_61
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v3, v4, :cond_89

    .line 177
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v5, v0, v6, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v5, v5, v3

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v6, v3

    invoke-static {v4, v3, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 179
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v5, v5, v3

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v6, v3

    invoke-static {v4, v0, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_61

    :cond_89
    move v3, v0

    .line 182
    :goto_8a
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v3, v4, :cond_e5

    move v4, v0

    .line 184
    :goto_8f
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v4, v5, :cond_d0

    move v5, v0

    move v6, v5

    .line 187
    :goto_95
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v5, v7, :cond_c9

    .line 189
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    aget-object v7, v7, v4

    aget-byte v7, v7, v5

    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v8, v8, v5

    aget-byte v8, v8, v3

    move v9, v0

    move v10, v9

    .line 190
    :goto_a7
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    if-ge v9, v11, :cond_c2

    ushr-int v11, v8, v9

    and-int/2addr v11, v2

    if-eqz v11, :cond_b1

    xor-int/2addr v10, v7

    .line 196
    :cond_b1
    iget v11, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    ushr-int v11, v7, v11

    and-int/2addr v11, v2

    if-eqz v11, :cond_bd

    shl-int/lit8 v7, v7, 0x1

    xor-int/lit8 v7, v7, 0x3

    goto :goto_bf

    :cond_bd
    shl-int/lit8 v7, v7, 0x1

    :goto_bf
    add-int/lit8 v9, v9, 0x1

    goto :goto_a7

    :cond_c2
    and-int/lit8 v7, v10, 0xf

    xor-int/2addr v6, v7

    int-to-byte v6, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    .line 208
    :cond_c9
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aput-byte v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_d0
    move v4, v0

    .line 210
    :goto_d1
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v4, v5, :cond_e2

    .line 212
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v6, v6, v4

    aput-byte v6, v5, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_d1

    :cond_e2
    add-int/lit8 v3, v3, 0x1

    goto :goto_8a

    :cond_e5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_27

    .line 216
    :cond_e9
    :goto_e9
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v0, v1, :cond_115

    .line 218
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    ushr-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v5, v0, v4

    aget-object v5, v3, v5

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int v7, v0, v6

    aget-byte v5, v5, v7

    and-int/lit8 v5, v5, 0xf

    ushr-int v4, v0, v4

    aget-object v3, v3, v4

    add-int/lit8 v4, v0, 0x1

    and-int/2addr v4, v6

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_e9

    :cond_115
    return-void
.end method

.method public blacklist doFinal([BI)I
    .registers 14

    add-int/lit8 v0, p2, 0x20

    .line 99
    array-length v1, p1

    if-gt v0, v1, :cond_b5

    .line 103
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 104
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_20

    .line 107
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v1, v3

    aget-byte v4, v0, v1

    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v3, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto/16 :goto_9a

    :cond_20
    const/4 v4, 0x2

    const/16 v5, 0x10

    if-gt v1, v5, :cond_48

    .line 111
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2, v6, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v1, v5, :cond_34

    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v6, v0, v1

    xor-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v0, v1

    .line 116
    :cond_34
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v6, v3

    aget-byte v7, v0, v6

    if-ge v1, v5, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int v1, v3, v1

    xor-int/2addr v1, v7

    int-to-byte v1, v1

    aput-byte v1, v0, v6

    goto :goto_9a

    .line 120
    :cond_48
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v0, v2, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, -0x10

    .line 122
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    add-int v7, v1, v6

    sub-int/2addr v7, v3

    div-int/2addr v7, v6

    move v6, v2

    :goto_56
    add-int/lit8 v8, v7, -0x1

    if-ge v6, v8, :cond_6a

    .line 126
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 127
    iget v8, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int v9, v6, v8

    add-int/2addr v9, v5

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v8, v0, v9, v10, v2}, Lcom/android/org/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_56

    .line 129
    :cond_6a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 130
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int v8, v6, v7

    sub-int v8, v1, v8

    mul-int/2addr v6, v7

    add-int/2addr v6, v5

    .line 131
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v8, v0, v6, v5, v2}, Lcom/android/org/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    .line 132
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    if-ge v8, v0, :cond_86

    .line 134
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v6, v5, v8

    xor-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 136
    :cond_86
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    sub-int/2addr v6, v3

    aget-byte v7, v5, v6

    rem-int/2addr v1, v0

    if-nez v1, :cond_91

    goto :goto_92

    :cond_91
    move v3, v4

    :goto_92
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int v0, v3, v0

    xor-int/2addr v0, v7

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    .line 138
    :goto_9a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 139
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    .line 141
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    add-int/2addr p2, v1

    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    sub-int/2addr v3, v1

    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 142
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return p0

    .line 101
    :cond_b5
    new-instance p0, Lcom/android/org/bouncycastle/crypto/OutputLengthException;

    const-string p1, "output buffer is too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 71
    const-string p0, "Photon-Beetle Hash"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 77
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return p0
.end method

.method public blacklist reset()V
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 149
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public blacklist update(B)V
    .registers 2

    .line 83
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public blacklist update([BII)V
    .registers 6

    add-int v0, p2, p3

    .line 89
    array-length v1, p1

    if-gt v0, v1, :cond_b

    .line 93
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void

    .line 91
    :cond_b
    new-instance p0, Lcom/android/org/bouncycastle/crypto/DataLengthException;

    const-string p1, "input buffer too short"

    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
