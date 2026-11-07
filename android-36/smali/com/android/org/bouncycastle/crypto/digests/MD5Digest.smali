.class public Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "MD5Digest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    .line 21
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 29
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V
    .registers 3

    .line 54
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    .line 21
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5

    .line 34
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x10

    .line 21
    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 36
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const/16 v0, 0x14

    .line 37
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const/16 v0, 0x18

    .line 38
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const/16 v0, 0x1c

    .line 39
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/16 v0, 0x20

    .line 41
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/4 v0, 0x0

    .line 42
    :goto_30
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v0, v1, :cond_43

    .line 44
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x24

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    :cond_43
    return-void
.end method

.method private blacklist F(III)I
    .registers 4

    .line 0
    and-int p0, p1, p2

    not-int p1, p1

    and-int/2addr p1, p3

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist G(III)I
    .registers 4

    .line 0
    and-int p0, p1, p3

    not-int p1, p3

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist H(III)I
    .registers 4

    .line 0
    xor-int p0, p1, p2

    xor-int/2addr p0, p3

    return p0
.end method

.method private blacklist K(III)I
    .registers 4

    .line 0
    not-int p0, p3

    or-int/2addr p0, p1

    xor-int/2addr p0, p2

    return p0
.end method

.method private blacklist copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V
    .registers 6

    .line 61
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 63
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 64
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 65
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 66
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 68
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    return-void
.end method

.method private blacklist rotateLeft(II)I
    .registers 3

    .line 0
    shl-int p0, p1, p2

    rsub-int/lit8 p2, p2, 0x20

    ushr-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private blacklist unpackWord(I[BI)V
    .registers 5

    int-to-byte p0, p1

    .line 112
    aput-byte p0, p2, p3

    add-int/lit8 p0, p3, 0x1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 113
    aput-byte v0, p2, p0

    add-int/lit8 p0, p3, 0x2

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 114
    aput-byte v0, p2, p0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p0, p1, 0x18

    int-to-byte p0, p0

    .line 115
    aput-byte p0, p2, p3

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 335
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5

    .line 122
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    .line 124
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 125
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 126
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 127
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 129
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    const/16 p0, 0x10

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 74
    const-string p0, "MD5"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x10

    return p0
.end method

.method public blacklist getEncodedState()[B
    .registers 5

    .line 347
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x24

    new-array v0, v0, [B

    .line 349
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 351
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 352
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 353
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 354
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 355
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v1, 0x0

    .line 357
    :goto_2f
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v1, v2, :cond_41

    .line 359
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x24

    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_41
    return-object v0
.end method

.method protected blacklist processBlock()V
    .registers 25

    move-object/from16 v0, p0

    .line 233
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 234
    iget v2, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 235
    iget v3, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 236
    iget v4, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 241
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const v5, -0x28955b88

    add-int/2addr v1, v5

    const/4 v5, 0x7

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 242
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const v7, -0x173848aa

    add-int/2addr v4, v7

    const/16 v7, 0xc

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 243
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const v9, 0x242070db

    add-int/2addr v3, v9

    const/16 v9, 0x11

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 244
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v12, 0x3

    aget v11, v11, v12

    add-int/2addr v2, v11

    const v11, -0x3e423112

    add-int/2addr v2, v11

    const/16 v11, 0x16

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 245
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v14, 0x4

    aget v13, v13, v14

    add-int/2addr v1, v13

    const v13, -0xa83f051

    add-int/2addr v1, v13

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 246
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v15, 0x5

    aget v13, v13, v15

    add-int/2addr v4, v13

    const v13, 0x4787c62a

    add-int/2addr v4, v13

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 247
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v16, v8

    const/4 v8, 0x6

    aget v13, v13, v8

    add-int/2addr v3, v13

    const v13, -0x57cfb9ed

    add-int/2addr v3, v13

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 248
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v13, v13, v5

    add-int/2addr v2, v13

    const v13, -0x2b96aff

    add-int/2addr v2, v13

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 249
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v17, 0x8

    aget v13, v13, v17

    add-int/2addr v1, v13

    const v13, 0x698098d8

    add-int/2addr v1, v13

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 250
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v18, v10

    const/16 v10, 0x9

    aget v13, v13, v10

    add-int/2addr v4, v13

    const v13, -0x74bb0851

    add-int/2addr v4, v13

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 251
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v19, v12

    const/16 v12, 0xa

    aget v13, v13, v12

    add-int/2addr v3, v13

    const v13, -0xa44f

    add-int/2addr v3, v13

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 252
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v2, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v20, v6

    const/16 v6, 0xb

    aget v13, v13, v6

    add-int/2addr v2, v13

    const v13, -0x76a32842

    add-int/2addr v2, v13

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 253
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v1, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v13, v13, v7

    add-int/2addr v1, v13

    const v13, 0x6b901122

    add-int/2addr v1, v13

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 254
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v4, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v21, 0xd

    aget v13, v13, v21

    add-int/2addr v4, v13

    const v13, -0x2678e6d

    add-int/2addr v4, v13

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 255
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v13

    add-int/2addr v3, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v22, v5

    const/16 v5, 0xe

    aget v13, v13, v5

    add-int/2addr v3, v13

    const v13, -0x5986bc72

    add-int/2addr v3, v13

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 256
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v13, 0xf

    aget v9, v9, v13

    add-int/2addr v2, v9

    const v9, 0x49b40821

    add-int/2addr v2, v9

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 261
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v16

    add-int/2addr v1, v9

    const v9, -0x9e1da9e

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v15}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 262
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v8

    add-int/2addr v4, v9

    const v9, -0x3fbf4cc0

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 263
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v6

    add-int/2addr v3, v9

    const v9, 0x265e5a51

    add-int/2addr v3, v9

    invoke-direct {v0, v3, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 264
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v9

    add-int/2addr v2, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v20

    add-int/2addr v2, v9

    const v9, -0x16493856

    add-int/2addr v2, v9

    const/16 v9, 0x14

    invoke-direct {v0, v2, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 265
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v15

    add-int/2addr v1, v11

    const v11, -0x29d0efa3

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 266
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v12

    add-int/2addr v4, v11

    const v11, 0x2441453

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 267
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v13

    add-int/2addr v3, v11

    const v11, -0x275e197f

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 268
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v14

    add-int/2addr v2, v11

    const v11, -0x182c0438

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 269
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v10

    add-int/2addr v1, v11

    const v11, 0x21e1cde6

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 270
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v5

    add-int/2addr v4, v11

    const v11, -0x3cc8f82a

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 271
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v19

    add-int/2addr v3, v11

    const v11, -0xb2af279

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 272
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v17

    add-int/2addr v2, v11

    const v11, 0x455a14ed

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 273
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v21

    add-int/2addr v1, v11

    const v11, -0x561c16fb

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v15}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 274
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v4, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v18

    add-int/2addr v4, v11

    const v11, -0x3105c08

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 275
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v3, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v22

    add-int/2addr v3, v11

    const v11, 0x676f02d9

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 276
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v7

    add-int/2addr v2, v11

    const v11, -0x72d5b376

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 281
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v15

    add-int/2addr v1, v9

    const v9, -0x5c6be

    add-int/2addr v1, v9

    invoke-direct {v0, v1, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 282
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v4, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v17

    add-int/2addr v4, v9

    const v9, -0x788e097f

    add-int/2addr v4, v9

    invoke-direct {v0, v4, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 283
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v6

    add-int/2addr v3, v9

    const v9, 0x6d9d6122

    add-int/2addr v3, v9

    const/16 v9, 0x10

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 284
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v11, v11, v5

    add-int/2addr v2, v11

    const v11, -0x21ac7f4

    add-int/2addr v2, v11

    const/16 v11, 0x17

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 285
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v23

    add-int v1, v1, v23

    move/from16 v23, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v16

    add-int/2addr v1, v5

    const v5, -0x5b4115bc

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 286
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v14

    add-int/2addr v4, v5

    const v5, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 287
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v22

    add-int/2addr v3, v5

    const v5, -0x944b4a0

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 288
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v12

    add-int/2addr v2, v5

    const v5, -0x41404390

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 289
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v21

    add-int/2addr v1, v5

    const v5, 0x289b7ec6

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 290
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v20

    add-int/2addr v4, v5

    const v5, -0x155ed806

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 291
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v19

    add-int/2addr v3, v5

    const v5, -0x2b10cf7b

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 292
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v8

    add-int/2addr v2, v5

    const v5, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 293
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v10

    add-int/2addr v1, v5

    const v5, -0x262b2fc7

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 294
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v7

    add-int/2addr v4, v5

    const v5, -0x1924661b

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 295
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v13

    add-int/2addr v3, v5

    const v5, 0x1fa27cf8

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 296
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v18

    add-int/2addr v2, v5

    const v5, -0x3b53a99b

    add-int/2addr v2, v5

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 301
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v20

    add-int/2addr v1, v5

    const v5, -0xbd6ddbc

    add-int/2addr v1, v5

    invoke-direct {v0, v1, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 302
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v22

    add-int/2addr v4, v5

    const v5, 0x432aff97

    add-int/2addr v4, v5

    invoke-direct {v0, v4, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 303
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v23

    add-int/2addr v3, v5

    const v5, -0x546bdc59

    add-int/2addr v3, v5

    invoke-direct {v0, v3, v13}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 304
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v5, v5, v15

    add-int/2addr v2, v5

    const v5, -0x36c5fc7

    add-int/2addr v2, v5

    const/16 v5, 0x15

    invoke-direct {v0, v2, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 305
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v9

    add-int/2addr v1, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v9, v7

    add-int/2addr v1, v7

    const v7, 0x655b59c3

    add-int/2addr v1, v7

    invoke-direct {v0, v1, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 306
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v19

    add-int/2addr v4, v7

    const v7, -0x70f3336e

    add-int/2addr v4, v7

    invoke-direct {v0, v4, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 307
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v12

    add-int/2addr v3, v7

    const v7, -0x100b83

    add-int/2addr v3, v7

    invoke-direct {v0, v3, v13}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 308
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v16

    add-int/2addr v2, v7

    const v7, -0x7a7ba22f

    add-int/2addr v2, v7

    invoke-direct {v0, v2, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 309
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v17

    add-int/2addr v1, v7

    const v7, 0x6fa87e4f

    add-int/2addr v1, v7

    invoke-direct {v0, v1, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 310
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v13

    add-int/2addr v4, v7

    const v7, -0x1d31920

    add-int/2addr v4, v7

    invoke-direct {v0, v4, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 311
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v3, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v8

    add-int/2addr v3, v7

    const v7, -0x5cfebcec

    add-int/2addr v3, v7

    invoke-direct {v0, v3, v13}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 312
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v2, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v21

    add-int/2addr v2, v7

    const v7, 0x4e0811a1    # 5.707142E8f

    add-int/2addr v2, v7

    invoke-direct {v0, v2, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 313
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v1, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v14

    add-int/2addr v1, v7

    const v7, -0x8ac817e

    add-int/2addr v1, v7

    invoke-direct {v0, v1, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v2

    .line 314
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v7, v6

    add-int/2addr v4, v6

    const v6, -0x42c50dcb

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 315
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v6

    add-int/2addr v3, v6

    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v18

    add-int/2addr v3, v6

    const v6, 0x2ad7d2bb

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v13}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 316
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v6

    add-int/2addr v2, v6

    iget-object v6, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v10

    add-int/2addr v2, v6

    const v6, -0x14792c6f

    add-int/2addr v2, v6

    invoke-direct {v0, v2, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 318
    iget v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 319
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 320
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 321
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    move/from16 v1, v20

    .line 326
    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    move v2, v1

    .line 327
    :goto_514
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v4, v3

    if-eq v2, v4, :cond_51e

    .line 329
    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_514

    :cond_51e
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 5

    .line 98
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 103
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    long-to-int v0, p1

    aput v0, p0, v1

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    const/16 p2, 0xf

    .line 104
    aput p1, p0, p2

    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 9

    .line 86
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, p2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    add-int/lit8 v4, p2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0x10

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    add-int/lit8 p2, p2, 0x3

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v3

    aput p1, v0, v1

    if-ne v2, v5, :cond_2f

    .line 91
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    :cond_2f
    return-void
.end method

.method public blacklist reset()V
    .registers 5

    .line 139
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    .line 141
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const v0, -0x10325477

    .line 142
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const v0, -0x67452302

    .line 143
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const v0, 0x10325476

    .line 144
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/4 v0, 0x0

    .line 146
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    move v1, v0

    .line 148
    :goto_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_25

    .line 150
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_25
    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 340
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    .line 342
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    return-void
.end method
