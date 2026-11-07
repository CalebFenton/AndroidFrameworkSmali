.class public Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "MD4Digest.java"


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

    .line 30
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    .line 31
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;)V
    .registers 3

    .line 40
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x10

    .line 23
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    .line 42
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;)V

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
    or-int p0, p2, p3

    and-int/2addr p0, p1

    and-int p1, p2, p3

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

.method private blacklist copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;)V
    .registers 6

    .line 47
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 49
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 50
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 51
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 52
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 54
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

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

    .line 98
    aput-byte p0, p2, p3

    add-int/lit8 p0, p3, 0x1

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v0, v0

    .line 99
    aput-byte v0, p2, p0

    add-int/lit8 p0, p3, 0x2

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v0, v0

    .line 100
    aput-byte v0, p2, p0

    add-int/lit8 p3, p3, 0x3

    ushr-int/lit8 p0, p1, 0x18

    int-to-byte p0, p0

    .line 101
    aput-byte p0, p2, p3

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 285
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5

    .line 108
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    .line 110
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 111
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 112
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 113
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/lit8 p2, p2, 0xc

    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->unpackWord(I[BI)V

    .line 115
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->reset()V

    const/16 p0, 0x10

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 60
    const-string p0, "MD4"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x10

    return p0
.end method

.method protected blacklist processBlock()V
    .registers 24

    move-object/from16 v0, p0

    .line 203
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 204
    iget v2, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 205
    iget v3, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 206
    iget v4, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 211
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v5

    add-int/2addr v1, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v1, v5

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 212
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v7

    add-int/2addr v4, v7

    iget-object v7, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    add-int/2addr v4, v7

    const/4 v7, 0x7

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 213
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v9

    add-int/2addr v3, v9

    iget-object v9, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    add-int/2addr v3, v9

    const/16 v9, 0xb

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 214
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v11

    add-int/2addr v2, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v5

    add-int/2addr v2, v11

    const/16 v11, 0x13

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 215
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v13, 0x4

    aget v12, v12, v13

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 216
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v14, 0x5

    aget v12, v12, v14

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 217
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/4 v15, 0x6

    aget v12, v12, v15

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 218
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 219
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v16, 0x8

    aget v12, v12, v16

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 220
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    move/from16 v17, v8

    const/16 v8, 0x9

    aget v12, v12, v8

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 221
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v18, 0xa

    aget v12, v12, v18

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 222
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v9

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 223
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v19, 0xc

    aget v12, v12, v19

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 224
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    move/from16 v20, v10

    const/16 v10, 0xd

    aget v12, v12, v10

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 225
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    const/16 v21, 0xe

    aget v12, v12, v21

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 226
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->F(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    move/from16 v22, v7

    const/16 v7, 0xf

    aget v12, v12, v7

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 231
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v6

    add-int/2addr v1, v11

    const v11, 0x5a827999

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 232
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 233
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v16

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 234
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v19

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 235
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 236
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 237
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 238
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v10

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 239
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v20

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 240
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 241
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v18

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 242
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v21

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 243
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v5

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 244
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v22

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v14}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 245
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v9

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 246
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->G(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v7

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 251
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v11

    add-int/2addr v1, v11

    iget-object v11, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v11, v11, v6

    add-int/2addr v1, v11

    const v11, 0x6ed9eba1

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 252
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v16

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 253
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 254
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v19

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 255
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v20

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 256
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v18

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 257
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 258
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v21

    add-int/2addr v2, v12

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 259
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v1, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v1, v12

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 260
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v4, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v4, v12

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 261
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v3, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v3, v12

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 262
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v12

    add-int/2addr v2, v12

    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v10, v12, v10

    add-int/2addr v2, v10

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 263
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v10

    add-int/2addr v1, v10

    iget-object v10, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v10, v10, v5

    add-int/2addr v1, v10

    add-int/2addr v1, v11

    invoke-direct {v0, v1, v5}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v1

    .line 264
    invoke-direct {v0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v5, v5, v9

    add-int/2addr v4, v5

    add-int/2addr v4, v11

    invoke-direct {v0, v4, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v4

    .line 265
    invoke-direct {v0, v4, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v3, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v5, v5, v22

    add-int/2addr v3, v5

    add-int/2addr v3, v11

    invoke-direct {v0, v3, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v3

    .line 266
    invoke-direct {v0, v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H(III)I

    move-result v5

    add-int/2addr v2, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    aget v5, v5, v7

    add-int/2addr v2, v5

    add-int/2addr v2, v11

    invoke-direct {v0, v2, v7}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->rotateLeft(II)I

    move-result v2

    .line 268
    iget v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    add-int/2addr v5, v1

    iput v5, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    .line 269
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    .line 270
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    .line 271
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    .line 276
    iput v6, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    move v1, v6

    .line 277
    :goto_307
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_311

    .line 279
    aput v6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_307

    :cond_311
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 5

    .line 84
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 86
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    .line 89
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    long-to-int v0, p1

    aput v0, p0, v1

    const/16 v0, 0x20

    ushr-long/2addr p1, v0

    long-to-int p1, p1

    const/16 p2, 0xf

    .line 90
    aput p1, p0, p2

    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 9

    .line 72
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

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

    .line 77
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->processBlock()V

    :cond_2f
    return-void
.end method

.method public blacklist reset()V
    .registers 5

    .line 125
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, 0x67452301

    .line 127
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H1:I

    const v0, -0x10325477

    .line 128
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H2:I

    const v0, -0x67452302

    .line 129
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H3:I

    const v0, 0x10325476

    .line 130
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->H4:I

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->xOff:I

    move v1, v0

    .line 134
    :goto_1b
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_25

    .line 136
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_25
    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 290
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;

    .line 292
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD4Digest;)V

    return-void
.end method
