.class public Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;
.super Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"

# interfaces
.implements Lcom/android/internal/net/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x14

.field private static final blacklist Y1:I = 0x5a827999

.field private static final blacklist Y2:I = 0x6ed9eba1

.field private static final blacklist Y3:I = -0x70e44324

.field private static final blacklist Y4:I = -0x359d3e2a


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

    .line 28
    invoke-direct {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;)V

    .line 41
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "encodedState"    # [B

    .line 50
    invoke-direct {p0, p1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    .line 21
    const/16 v0, 0x50

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    .line 52
    const/16 v0, 0x10

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 53
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 54
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 55
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 56
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 58
    const/16 v0, 0x24

    invoke-static {p1, v0}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 59
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3a
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v0, v1, :cond_4d

    .line 61
    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x28

    invoke-static {p1, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 59
    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 63
    .end local v0    # "i":I
    :cond_4d
    return-void
.end method

.method private blacklist copyIn(Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;

    .line 67
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 68
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 69
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 70
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 71
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 73
    iget-object v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget-object v2, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 74
    iget v0, p1, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 75
    return-void
.end method

.method private blacklist f(III)I
    .registers 6
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 167
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist g(III)I
    .registers 6
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 183
    and-int v0, p1, p2

    and-int v1, p1, p3

    or-int/2addr v0, v1

    and-int v1, p2, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist h(III)I
    .registers 5
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 175
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/net/org/bouncycastle/util/Memoable;
    .registers 2

    .line 319
    new-instance v0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 121
    invoke-virtual {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    .line 123
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 124
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 125
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 126
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 127
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    .line 131
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 79
    const-string v0, "SHA-1"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 84
    const/16 v0, 0x14

    return v0
.end method

.method public blacklist getEncodedState()[B
    .registers 5

    .line 332
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x28

    new-array v0, v0, [B

    .line 334
    .local v0, "state":[B
    invoke-super {p0, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 336
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 337
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 338
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 339
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 340
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 341
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 343
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_36
    iget v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-eq v1, v2, :cond_48

    .line 345
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x28

    invoke-static {v2, v0, v3}, Lcom/android/internal/net/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 348
    .end local v1    # "i":I
    :cond_48
    return-object v0
.end method

.method protected blacklist processBlock()V
    .registers 13

    .line 191
    const/16 v0, 0x10

    .local v0, "i":I
    :goto_2
    const/16 v1, 0x50

    if-ge v0, v1, :cond_2d

    .line 193
    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v2, v0, -0x3

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0x8

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0xe

    aget v2, v2, v3

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v3, v0, -0x10

    aget v2, v2, v3

    xor-int/2addr v1, v2

    .line 194
    .local v1, "t":I
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    shl-int/lit8 v3, v1, 0x1

    ushr-int/lit8 v4, v1, 0x1f

    or-int/2addr v3, v4

    aput v3, v2, v0

    .line 191
    .end local v1    # "t":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 200
    .end local v0    # "i":I
    :cond_2d
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 201
    .local v0, "A":I
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 202
    .local v1, "B":I
    iget v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 203
    .local v2, "C":I
    iget v3, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 204
    .local v3, "D":I
    iget v4, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 209
    .local v4, "E":I
    const/4 v5, 0x0

    .line 211
    .local v5, "idx":I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_39
    const/4 v7, 0x4

    if-ge v6, v7, :cond_c1

    .line 215
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "idx":I
    .local v9, "idx":I
    aget v5, v8, v5

    add-int/2addr v7, v5

    const v5, 0x5a827999

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 216
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 218
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .local v10, "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 219
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 221
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 222
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 224
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 225
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 227
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 228
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 211
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto/16 :goto_39

    .line 234
    .end local v6    # "j":I
    .end local v9    # "idx":I
    .restart local v5    # "idx":I
    :cond_c1
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_c2
    if-ge v6, v7, :cond_149

    .line 238
    shl-int/lit8 v8, v0, 0x5

    ushr-int/lit8 v9, v0, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .restart local v10    # "idx":I
    aget v5, v9, v5

    add-int/2addr v8, v5

    const v5, 0x6ed9eba1

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 239
    shl-int/lit8 v8, v1, 0x1e

    ushr-int/lit8 v9, v1, 0x2

    or-int v1, v8, v9

    .line 241
    shl-int/lit8 v8, v4, 0x5

    ushr-int/lit8 v9, v4, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .local v11, "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 242
    shl-int/lit8 v8, v0, 0x1e

    ushr-int/lit8 v9, v0, 0x2

    or-int v0, v8, v9

    .line 244
    shl-int/lit8 v8, v3, 0x5

    ushr-int/lit8 v9, v3, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 245
    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v9, v4, 0x2

    or-int v4, v8, v9

    .line 247
    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    .line 248
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v9, v3, 0x2

    or-int v3, v8, v9

    .line 250
    shl-int/lit8 v8, v1, 0x5

    ushr-int/lit8 v9, v1, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    .line 251
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 234
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_c2

    .line 257
    .end local v6    # "j":I
    .end local v10    # "idx":I
    .restart local v5    # "idx":I
    :cond_149
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_14a
    if-ge v6, v7, :cond_1d1

    .line 261
    shl-int/lit8 v8, v0, 0x5

    ushr-int/lit8 v9, v0, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "idx":I
    .restart local v10    # "idx":I
    aget v5, v9, v5

    add-int/2addr v8, v5

    const v5, -0x70e44324

    add-int/2addr v8, v5

    add-int/2addr v4, v8

    .line 262
    shl-int/lit8 v8, v1, 0x1e

    ushr-int/lit8 v9, v1, 0x2

    or-int v1, v8, v9

    .line 264
    shl-int/lit8 v8, v4, 0x5

    ushr-int/lit8 v9, v4, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v3, v8

    .line 265
    shl-int/lit8 v8, v0, 0x1e

    ushr-int/lit8 v9, v0, 0x2

    or-int v0, v8, v9

    .line 267
    shl-int/lit8 v8, v3, 0x5

    ushr-int/lit8 v9, v3, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v2, v8

    .line 268
    shl-int/lit8 v8, v4, 0x1e

    ushr-int/lit8 v9, v4, 0x2

    or-int v4, v8, v9

    .line 270
    shl-int/lit8 v8, v2, 0x5

    ushr-int/lit8 v9, v2, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v11, v10, 0x1

    .end local v10    # "idx":I
    .restart local v11    # "idx":I
    aget v9, v9, v10

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v1, v8

    .line 271
    shl-int/lit8 v8, v3, 0x1e

    ushr-int/lit8 v9, v3, 0x2

    or-int v3, v8, v9

    .line 273
    shl-int/lit8 v8, v1, 0x5

    ushr-int/lit8 v9, v1, 0x1b

    or-int/2addr v8, v9

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    move-result v9

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v11, 0x1

    .end local v11    # "idx":I
    .restart local v10    # "idx":I
    aget v9, v9, v11

    add-int/2addr v8, v9

    add-int/2addr v8, v5

    add-int/2addr v0, v8

    .line 274
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v8, v2, 0x2

    or-int v2, v5, v8

    .line 257
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto/16 :goto_14a

    .line 280
    .end local v6    # "j":I
    .end local v10    # "idx":I
    .restart local v5    # "idx":I
    :cond_1d1
    const/4 v6, 0x0

    .restart local v6    # "j":I
    :goto_1d2
    const/4 v7, 0x3

    if-gt v6, v7, :cond_25a

    .line 284
    shl-int/lit8 v7, v0, 0x5

    ushr-int/lit8 v8, v0, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v9, v5, 0x1

    .end local v5    # "idx":I
    .restart local v9    # "idx":I
    aget v5, v8, v5

    add-int/2addr v7, v5

    const v5, -0x359d3e2a    # -3715189.5f

    add-int/2addr v7, v5

    add-int/2addr v4, v7

    .line 285
    shl-int/lit8 v7, v1, 0x1e

    ushr-int/lit8 v8, v1, 0x2

    or-int v1, v7, v8

    .line 287
    shl-int/lit8 v7, v4, 0x5

    ushr-int/lit8 v8, v4, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v3, v7

    .line 288
    shl-int/lit8 v7, v0, 0x1e

    ushr-int/lit8 v8, v0, 0x2

    or-int v0, v7, v8

    .line 290
    shl-int/lit8 v7, v3, 0x5

    ushr-int/lit8 v8, v3, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v4, v0, v1}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v2, v7

    .line 291
    shl-int/lit8 v7, v4, 0x1e

    ushr-int/lit8 v8, v4, 0x2

    or-int v4, v7, v8

    .line 293
    shl-int/lit8 v7, v2, 0x5

    ushr-int/lit8 v8, v2, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v3, v4, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v10, v9, 0x1

    .end local v9    # "idx":I
    .restart local v10    # "idx":I
    aget v8, v8, v9

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v1, v7

    .line 294
    shl-int/lit8 v7, v3, 0x1e

    ushr-int/lit8 v8, v3, 0x2

    or-int v3, v7, v8

    .line 296
    shl-int/lit8 v7, v1, 0x5

    ushr-int/lit8 v8, v1, 0x1b

    or-int/2addr v7, v8

    invoke-direct {p0, v2, v3, v4}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    move-result v8

    add-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "idx":I
    .restart local v9    # "idx":I
    aget v8, v8, v10

    add-int/2addr v7, v8

    add-int/2addr v7, v5

    add-int/2addr v0, v7

    .line 297
    shl-int/lit8 v5, v2, 0x1e

    ushr-int/lit8 v7, v2, 0x2

    or-int v2, v5, v7

    .line 280
    add-int/lit8 v6, v6, 0x1

    move v5, v9

    goto/16 :goto_1d2

    .line 301
    .end local v6    # "j":I
    .end local v9    # "idx":I
    .restart local v5    # "idx":I
    :cond_25a
    iget v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    add-int/2addr v6, v0

    iput v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 302
    iget v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 303
    iget v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 304
    iget v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 305
    iget v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 310
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 311
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_277
    const/16 v8, 0x10

    if-ge v7, v8, :cond_282

    .line 313
    iget-object v8, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v6, v8, v7

    .line 311
    add-int/lit8 v7, v7, 0x1

    goto :goto_277

    .line 315
    .end local v7    # "i":I
    :cond_282
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7
    .param p1, "bitLength"    # J

    .line 108
    iget v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 110
    invoke-virtual {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 113
    :cond_9
    iget-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    aput v2, v0, v1

    .line 114
    iget-object v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    const/16 v1, 0xf

    long-to-int v2, p1

    aput v2, v0, v1

    .line 115
    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 93
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    .line 94
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 95
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    .line 96
    add-int/lit8 p2, p2, 0x1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 97
    iget-object v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    iget v3, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    aput v0, v1, v3

    .line 99
    iget v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    if-ne v1, v2, :cond_2f

    .line 101
    invoke-virtual {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    .line 103
    :cond_2f
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 139
    invoke-super {p0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 141
    const v0, 0x67452301

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    .line 142
    const v0, -0x10325477

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    .line 143
    const v0, -0x67452302

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    .line 144
    const v0, 0x10325476

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    .line 145
    const v0, -0x3c2d1e10

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_20
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_2c

    .line 150
    iget-object v2, p0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    aput v0, v2, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 152
    .end local v1    # "i":I
    :cond_2c
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/net/org/bouncycastle/util/Memoable;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/net/org/bouncycastle/util/Memoable;

    .line 324
    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;

    .line 326
    .local v0, "d":Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;
    invoke-super {p0, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/net/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 327
    invoke-direct {p0, v0}, Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lcom/android/internal/net/org/bouncycastle/crypto/digests/SHA1Digest;)V

    .line 328
    return-void
.end method
