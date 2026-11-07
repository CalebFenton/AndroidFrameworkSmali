.class public Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist H5:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x50

    .line 23
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 31
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x50

    .line 23
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5

    .line 52
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x50

    .line 23
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v0, 0x10

    .line 54
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const/16 v0, 0x14

    .line 55
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const/16 v0, 0x18

    .line 56
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const/16 v0, 0x1c

    .line 57
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const/16 v0, 0x20

    .line 58
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/16 v0, 0x24

    .line 60
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/4 v0, 0x0

    .line 61
    :goto_3a
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v0, v1, :cond_4d

    .line 63
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x28

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    :cond_4d
    return-void
.end method

.method private blacklist copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 6

    .line 69
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 70
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 71
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 72
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 73
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 75
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 76
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    return-void
.end method

.method private blacklist f(III)I
    .registers 4

    .line 0
    and-int p0, p1, p2

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist g(III)I
    .registers 4

    .line 0
    or-int p0, p2, p3

    and-int/2addr p0, p1

    and-int p1, p2, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist h(III)I
    .registers 4

    .line 0
    xor-int p0, p1, p2

    xor-int/2addr p0, p3

    return p0
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 321
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5

    .line 123
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    .line 125
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 126
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 127
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 128
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 129
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 p2, p2, 0x10

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 131
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    const/16 p0, 0x14

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 81
    const-string p0, "SHA-1"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x14

    return p0
.end method

.method public blacklist getEncodedState()[B
    .registers 5

    .line 334
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x28

    new-array v0, v0, [B

    .line 336
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 338
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 339
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 340
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 341
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 342
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 343
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v1, 0x0

    .line 345
    :goto_36
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v1, v2, :cond_48

    .line 347
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x28

    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    :cond_48
    return-object v0
.end method

.method protected blacklist processBlock()V
    .registers 16

    const/16 v0, 0x10

    move v1, v0

    :goto_3
    const/16 v2, 0x50

    if-ge v1, v2, :cond_26

    .line 195
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v3, v1, -0x3

    aget v3, v2, v3

    add-int/lit8 v4, v1, -0x8

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0xe

    aget v4, v2, v4

    xor-int/2addr v3, v4

    add-int/lit8 v4, v1, -0x10

    aget v4, v2, v4

    xor-int/2addr v3, v4

    shl-int/lit8 v4, v3, 0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    .line 196
    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 202
    :cond_26
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 203
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 204
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 205
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 206
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :goto_33
    const/4 v9, 0x4

    if-ge v7, v9, :cond_b5

    shl-int/lit8 v9, v1, 0x5

    ushr-int/lit8 v10, v1, 0x1b

    or-int/2addr v9, v10

    .line 217
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v8

    add-int/2addr v9, v10

    const v10, 0x5a827999

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v12, v5, 0x1b

    or-int/2addr v9, v12

    .line 220
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v12

    add-int/2addr v9, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x2

    aget v11, v12, v11

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    shl-int/lit8 v9, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v9, v11

    .line 223
    invoke-direct {p0, v5, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x3

    aget v11, v11, v13

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v9, v11

    .line 226
    invoke-direct {p0, v4, v5, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x4

    aget v11, v11, v12

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    shl-int/lit8 v9, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v9

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v9, v11

    .line 229
    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v11, v11, v13

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v1, v9

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_33

    :cond_b5
    move v7, v6

    :goto_b6
    if-ge v7, v9, :cond_136

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    .line 240
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v8

    add-int/2addr v10, v11

    const v11, 0x6ed9eba1

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v13, v5, 0x1b

    or-int/2addr v10, v13

    .line 243
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v13

    add-int/2addr v10, v13

    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x2

    aget v12, v13, v12

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v12, v4, 0x1b

    or-int/2addr v10, v12

    .line 246
    invoke-direct {p0, v5, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x3

    aget v12, v12, v14

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v12, v3, 0x1b

    or-int/2addr v10, v12

    .line 249
    invoke-direct {p0, v4, v5, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x4

    aget v12, v12, v13

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v10

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v12, v2, 0x1b

    or-int/2addr v10, v12

    .line 252
    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v12, v12, v14

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_b6

    :cond_136
    move v7, v6

    :goto_137
    if-ge v7, v9, :cond_1b7

    shl-int/lit8 v10, v1, 0x5

    ushr-int/lit8 v11, v1, 0x1b

    or-int/2addr v10, v11

    .line 263
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v11

    add-int/2addr v10, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x1

    aget v11, v11, v8

    add-int/2addr v10, v11

    const v11, -0x70e44324

    add-int/2addr v10, v11

    add-int/2addr v5, v10

    shl-int/lit8 v10, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v10

    shl-int/lit8 v10, v5, 0x5

    ushr-int/lit8 v13, v5, 0x1b

    or-int/2addr v10, v13

    .line 266
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v13

    add-int/2addr v10, v13

    iget-object v13, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x2

    aget v12, v13, v12

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v4, v10

    shl-int/lit8 v10, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v10

    shl-int/lit8 v10, v4, 0x5

    ushr-int/lit8 v12, v4, 0x1b

    or-int/2addr v10, v12

    .line 269
    invoke-direct {p0, v5, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x3

    aget v12, v12, v14

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v3, v10

    shl-int/lit8 v10, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v10

    shl-int/lit8 v10, v3, 0x5

    ushr-int/lit8 v12, v3, 0x1b

    or-int/2addr v10, v12

    .line 272
    invoke-direct {p0, v4, v5, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v14, v8, 0x4

    aget v12, v12, v13

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v2, v10

    shl-int/lit8 v10, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v10

    shl-int/lit8 v10, v2, 0x5

    ushr-int/lit8 v12, v2, 0x1b

    or-int/2addr v10, v12

    .line 275
    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v12

    add-int/2addr v10, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v12, v12, v14

    add-int/2addr v10, v12

    add-int/2addr v10, v11

    add-int/2addr v1, v10

    shl-int/lit8 v10, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_137

    :cond_1b7
    move v7, v6

    :goto_1b8
    const/4 v9, 0x3

    if-gt v7, v9, :cond_23a

    shl-int/lit8 v9, v1, 0x5

    ushr-int/lit8 v10, v1, 0x1b

    or-int/2addr v9, v10

    .line 286
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v8, 0x1

    aget v10, v10, v8

    add-int/2addr v9, v10

    const v10, -0x359d3e2a    # -3715189.5f

    add-int/2addr v9, v10

    add-int/2addr v5, v9

    shl-int/lit8 v9, v2, 0x1e

    ushr-int/lit8 v2, v2, 0x2

    or-int/2addr v2, v9

    shl-int/lit8 v9, v5, 0x5

    ushr-int/lit8 v12, v5, 0x1b

    or-int/2addr v9, v12

    .line 289
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v12

    add-int/2addr v9, v12

    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x2

    aget v11, v12, v11

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v4, v9

    shl-int/lit8 v9, v1, 0x1e

    ushr-int/lit8 v1, v1, 0x2

    or-int/2addr v1, v9

    shl-int/lit8 v9, v4, 0x5

    ushr-int/lit8 v11, v4, 0x1b

    or-int/2addr v9, v11

    .line 292
    invoke-direct {p0, v5, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v12, v8, 0x3

    aget v11, v11, v13

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v3, v9

    shl-int/lit8 v9, v5, 0x1e

    ushr-int/lit8 v5, v5, 0x2

    or-int/2addr v5, v9

    shl-int/lit8 v9, v3, 0x5

    ushr-int/lit8 v11, v3, 0x1b

    or-int/2addr v9, v11

    .line 295
    invoke-direct {p0, v4, v5, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v13, v8, 0x4

    aget v11, v11, v12

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v2, v9

    shl-int/lit8 v9, v4, 0x1e

    ushr-int/lit8 v4, v4, 0x2

    or-int/2addr v4, v9

    shl-int/lit8 v9, v2, 0x5

    ushr-int/lit8 v11, v2, 0x1b

    or-int/2addr v9, v11

    .line 298
    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v11

    add-int/2addr v9, v11

    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v8, v8, 0x5

    aget v11, v11, v13

    add-int/2addr v9, v11

    add-int/2addr v9, v10

    add-int/2addr v1, v9

    shl-int/lit8 v9, v3, 0x1e

    ushr-int/lit8 v3, v3, 0x2

    or-int/2addr v3, v9

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1b8

    .line 303
    :cond_23a
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v7, v1

    iput v7, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 304
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 305
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 306
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 307
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v1, v5

    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 312
    iput v6, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    move v1, v6

    :goto_256
    if-ge v1, v0, :cond_25f

    .line 315
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_256

    :cond_25f
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7

    .line 110
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 112
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 115
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    .line 116
    aput p1, p0, v0

    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 6

    .line 95
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 96
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 97
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 98
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 99
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 101
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-ne v0, v2, :cond_2d

    .line 103
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    :cond_2d
    return-void
.end method

.method public blacklist reset()V
    .registers 5

    .line 141
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    .line 143
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const v0, -0x10325477

    .line 144
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const v0, -0x67452302

    .line 145
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const v0, 0x10325476

    .line 146
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const v0, -0x3c2d1e10

    .line 147
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/4 v0, 0x0

    .line 149
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    move v1, v0

    .line 150
    :goto_20
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_2a

    .line 152
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_2a
    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 326
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    .line 328
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 329
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    return-void
.end method
