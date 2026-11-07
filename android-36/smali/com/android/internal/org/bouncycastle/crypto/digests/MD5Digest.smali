.class public Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;
.source "MD5Digest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x10

.field private static final blacklist S11:I = 0x7

.field private static final blacklist S12:I = 0xc

.field private static final blacklist S13:I = 0x11

.field private static final blacklist S14:I = 0x16

.field private static final blacklist S21:I = 0x5

.field private static final blacklist S22:I = 0x9

.field private static final blacklist S23:I = 0xe

.field private static final blacklist S24:I = 0x14

.field private static final blacklist S31:I = 0x4

.field private static final blacklist S32:I = 0xb

.field private static final blacklist S33:I = 0x10

.field private static final blacklist S34:I = 0x17

.field private static final blacklist S41:I = 0x6

.field private static final blacklist S42:I = 0xa

.field private static final blacklist S43:I = 0xf

.field private static final blacklist S44:I = 0x15


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
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 29
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    .line 30
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 21
    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 56
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5
    .param p1, "encodedState"    # [B

    .line 34
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    .line 21
    const/16 v0, 0x10

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    .line 36
    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 37
    const/16 v0, 0x14

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 38
    const/16 v0, 0x18

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 39
    const/16 v0, 0x1c

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 41
    const/16 v0, 0x20

    invoke-static {p1, v0}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 42
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_30
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v0, v1, :cond_43

    .line 44
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x24

    invoke-static {p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    .line 42
    add-int/lit8 v0, v0, 0x1

    goto :goto_30

    .line 46
    .end local v0    # "i":I
    :cond_43
    return-void
.end method

.method private blacklist F(III)I
    .registers 6
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 204
    and-int v0, p1, p2

    not-int v1, p1

    and-int/2addr v1, p3

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist G(III)I
    .registers 6
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 212
    and-int v0, p1, p3

    not-int v1, p3

    and-int/2addr v1, p2

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist H(III)I
    .registers 5
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 220
    xor-int v0, p1, p2

    xor-int/2addr v0, p3

    return v0
.end method

.method private blacklist K(III)I
    .registers 5
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    .line 228
    not-int v0, p3

    or-int/2addr v0, p1

    xor-int/2addr v0, p2

    return v0
.end method

.method private blacklist copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;)V
    .registers 6
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;

    .line 61
    invoke-super {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 63
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 64
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 65
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 66
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 68
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v0, p1, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 70
    return-void
.end method

.method private blacklist rotateLeft(II)I
    .registers 5
    .param p1, "x"    # I
    .param p2, "n"    # I

    .line 193
    shl-int v0, p1, p2

    rsub-int/lit8 v1, p2, 0x20

    ushr-int v1, p1, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private blacklist unpackWord(I[BI)V
    .registers 6
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    .line 112
    int-to-byte v0, p1

    aput-byte v0, p2, p3

    .line 113
    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 114
    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 115
    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    .line 116
    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    .line 335
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->finish()V

    .line 124
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 125
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 126
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 127
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    .line 129
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    .line 131
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 74
    const-string v0, "MD5"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 79
    const/16 v0, 0x10

    return v0
.end method

.method public blacklist getEncodedState()[B
    .registers 5

    .line 347
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x24

    new-array v0, v0, [B

    .line 349
    .local v0, "state":[B
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 351
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 352
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 353
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 354
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 355
    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 357
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2f
    iget v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-eq v1, v2, :cond_41

    .line 359
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x24

    invoke-static {v2, v0, v3}, Lcom/android/internal/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 357
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    .line 362
    .end local v1    # "i":I
    :cond_41
    return-object v0
.end method

.method protected blacklist processBlock()V
    .registers 26

    .line 233
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 234
    .local v1, "a":I
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 235
    .local v2, "b":I
    iget v3, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 236
    .local v3, "c":I
    iget v4, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 241
    .local v4, "d":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    add-int/2addr v5, v6

    const v6, -0x28955b88

    add-int/2addr v5, v6

    const/4 v6, 0x7

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 242
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    add-int/2addr v1, v8

    const v8, -0x173848aa

    add-int/2addr v1, v8

    const/16 v8, 0xc

    invoke-direct {v0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 243
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, 0x242070db

    add-int/2addr v4, v10

    const/16 v10, 0x11

    invoke-direct {v0, v4, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 244
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v13, 0x3

    aget v12, v12, v13

    add-int/2addr v3, v12

    const v12, -0x3e423112

    add-int/2addr v3, v12

    const/16 v12, 0x16

    invoke-direct {v0, v3, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 245
    .end local v2    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    add-int/2addr v2, v14

    const v14, -0xa83f051

    add-int/2addr v2, v14

    invoke-direct {v0, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 246
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v16, v9

    const/4 v9, 0x5

    aget v14, v14, v9

    add-int/2addr v5, v14

    const v14, 0x4787c62a

    add-int/2addr v5, v14

    invoke-direct {v0, v5, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 247
    .end local v1    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v17, v11

    const/4 v11, 0x6

    aget v14, v14, v11

    add-int/2addr v1, v14

    const v14, -0x57cfb9ed

    add-int/2addr v1, v14

    invoke-direct {v0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 248
    .end local v4    # "c":I
    .local v1, "c":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v14, v14, v6

    add-int/2addr v4, v14

    const v14, -0x2b96aff

    add-int/2addr v4, v14

    invoke-direct {v0, v4, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 249
    .end local v3    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v18, 0x8

    aget v14, v14, v18

    add-int/2addr v3, v14

    const v14, 0x698098d8

    add-int/2addr v3, v14

    invoke-direct {v0, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 250
    .end local v2    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v19, v13

    const/16 v13, 0x9

    aget v14, v14, v13

    add-int/2addr v2, v14

    const v14, -0x74bb0851

    add-int/2addr v2, v14

    invoke-direct {v0, v2, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 251
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v20, v7

    const/16 v7, 0xa

    aget v14, v14, v7

    add-int/2addr v5, v14

    const v14, -0xa44f

    add-int/2addr v5, v14

    invoke-direct {v0, v5, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 252
    .end local v1    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v21, v7

    const/16 v7, 0xb

    aget v14, v14, v7

    add-int/2addr v1, v14

    const v14, -0x76a32842

    add-int/2addr v1, v14

    invoke-direct {v0, v1, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 253
    .end local v4    # "b":I
    .local v1, "b":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v14, v14, v8

    add-int/2addr v4, v14

    const v14, 0x6b901122

    add-int/2addr v4, v14

    invoke-direct {v0, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 254
    .end local v3    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v22, 0xd

    aget v14, v14, v22

    add-int/2addr v3, v14

    const v14, -0x2678e6d

    add-int/2addr v3, v14

    invoke-direct {v0, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 255
    .end local v2    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v14, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    move/from16 v23, v6

    const/16 v6, 0xe

    aget v14, v14, v6

    add-int/2addr v2, v14

    const v14, -0x5986bc72

    add-int/2addr v2, v14

    invoke-direct {v0, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 256
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v14, 0xf

    aget v10, v10, v14

    add-int/2addr v5, v10

    const v10, 0x49b40821

    add-int/2addr v5, v10

    invoke-direct {v0, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 261
    .end local v1    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v16

    add-int/2addr v1, v10

    const v10, -0x9e1da9e

    add-int/2addr v1, v10

    invoke-direct {v0, v1, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 262
    .end local v4    # "a":I
    .local v1, "a":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v11

    add-int/2addr v4, v10

    const v10, -0x3fbf4cc0

    add-int/2addr v4, v10

    invoke-direct {v0, v4, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 263
    .end local v3    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v7

    add-int/2addr v3, v10

    const v10, 0x265e5a51

    add-int/2addr v3, v10

    invoke-direct {v0, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 264
    .end local v2    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v20

    add-int/2addr v2, v10

    const v10, -0x16493856

    add-int/2addr v2, v10

    const/16 v10, 0x14

    invoke-direct {v0, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 265
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v9

    add-int/2addr v5, v12

    const v12, -0x29d0efa3

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 266
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v21

    add-int/2addr v1, v12

    const v12, 0x2441453

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 267
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v14

    add-int/2addr v4, v12

    const v12, -0x275e197f

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 268
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v15

    add-int/2addr v3, v12

    const v12, -0x182c0438

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 269
    .end local v2    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v13

    add-int/2addr v2, v12

    const v12, 0x21e1cde6

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 270
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v6

    add-int/2addr v5, v12

    const v12, -0x3cc8f82a

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 271
    .end local v1    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v19

    add-int/2addr v1, v12

    const v12, -0xb2af279

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 272
    .end local v4    # "c":I
    .local v1, "c":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v18

    add-int/2addr v4, v12

    const v12, 0x455a14ed

    add-int/2addr v4, v12

    invoke-direct {v0, v4, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 273
    .end local v3    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v22

    add-int/2addr v3, v12

    const v12, -0x561c16fb

    add-int/2addr v3, v12

    invoke-direct {v0, v3, v9}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 274
    .end local v2    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v17

    add-int/2addr v2, v12

    const v12, -0x3105c08

    add-int/2addr v2, v12

    invoke-direct {v0, v2, v13}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 275
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v23

    add-int/2addr v5, v12

    const v12, 0x676f02d9

    add-int/2addr v5, v12

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 276
    .end local v1    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v8

    add-int/2addr v1, v12

    const v12, -0x72d5b376

    add-int/2addr v1, v12

    invoke-direct {v0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 281
    .end local v4    # "b":I
    .local v1, "b":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v9

    add-int/2addr v4, v10

    const v10, -0x5c6be

    add-int/2addr v4, v10

    invoke-direct {v0, v4, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 282
    .end local v3    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v18

    add-int/2addr v3, v10

    const v10, -0x788e097f

    add-int/2addr v3, v10

    invoke-direct {v0, v3, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 283
    .end local v2    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v10, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v10, v10, v7

    add-int/2addr v2, v10

    const v10, 0x6d9d6122

    add-int/2addr v2, v10

    const/16 v10, 0x10

    invoke-direct {v0, v2, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 284
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v12, v12, v6

    add-int/2addr v5, v12

    const v12, -0x21ac7f4

    add-int/2addr v5, v12

    const/16 v12, 0x17

    invoke-direct {v0, v5, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 285
    .end local v1    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v1

    add-int/2addr v1, v4

    move/from16 v24, v6

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v16

    add-int/2addr v1, v6

    const v6, -0x5b4115bc

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 286
    .end local v4    # "a":I
    .local v1, "a":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v15

    add-int/2addr v4, v6

    const v6, 0x4bdecfa9    # 2.9204306E7f

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 287
    .end local v3    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v23

    add-int/2addr v3, v6

    const v6, -0x944b4a0

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 288
    .end local v2    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v21

    add-int/2addr v2, v6

    const v6, -0x41404390

    add-int/2addr v2, v6

    invoke-direct {v0, v2, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 289
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v22

    add-int/2addr v5, v6

    const v6, 0x289b7ec6

    add-int/2addr v5, v6

    invoke-direct {v0, v5, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 290
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v20

    add-int/2addr v1, v6

    const v6, -0x155ed806

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 291
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v19

    add-int/2addr v4, v6

    const v6, -0x2b10cf7b

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 292
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v11

    add-int/2addr v3, v6

    const v6, 0x4881d05    # 3.2000097E-36f

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 293
    .end local v2    # "b":I
    .local v3, "b":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v13

    add-int/2addr v2, v6

    const v6, -0x262b2fc7

    add-int/2addr v2, v6

    invoke-direct {v0, v2, v15}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 294
    .end local v5    # "a":I
    .local v2, "a":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v8

    add-int/2addr v5, v6

    const v6, -0x1924661b

    add-int/2addr v5, v6

    invoke-direct {v0, v5, v7}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 295
    .end local v1    # "d":I
    .local v5, "d":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v14

    add-int/2addr v1, v6

    const v6, 0x1fa27cf8

    add-int/2addr v1, v6

    invoke-direct {v0, v1, v10}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 296
    .end local v4    # "c":I
    .local v1, "c":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v17

    add-int/2addr v4, v6

    const v6, -0x3b53a99b

    add-int/2addr v4, v6

    invoke-direct {v0, v4, v12}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 301
    .end local v3    # "b":I
    .local v4, "b":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v20

    add-int/2addr v3, v6

    const v6, -0xbd6ddbc

    add-int/2addr v3, v6

    invoke-direct {v0, v3, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 302
    .end local v2    # "a":I
    .local v3, "a":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v23

    add-int/2addr v2, v6

    const v6, 0x432aff97

    add-int/2addr v2, v6

    move/from16 v6, v21

    invoke-direct {v0, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 303
    .end local v5    # "d":I
    .local v2, "d":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v24

    add-int/2addr v5, v6

    const v6, -0x546bdc59

    add-int/2addr v5, v6

    invoke-direct {v0, v5, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 304
    .end local v1    # "c":I
    .local v5, "c":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v6, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v6, v6, v9

    add-int/2addr v1, v6

    const v6, -0x36c5fc7

    add-int/2addr v1, v6

    const/16 v6, 0x15

    invoke-direct {v0, v1, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 305
    .end local v4    # "b":I
    .local v1, "b":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v9, v8

    add-int/2addr v4, v8

    const v8, 0x655b59c3

    add-int/2addr v4, v8

    invoke-direct {v0, v4, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 306
    .end local v3    # "a":I
    .local v4, "a":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v19

    add-int/2addr v3, v8

    const v8, -0x70f3336e

    add-int/2addr v3, v8

    const/16 v8, 0xa

    invoke-direct {v0, v3, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 307
    .end local v2    # "d":I
    .local v3, "d":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v9, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v9, v9, v8

    add-int/2addr v2, v9

    const v8, -0x100b83

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 308
    .end local v5    # "c":I
    .local v2, "c":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v16

    add-int/2addr v5, v8

    const v8, -0x7a7ba22f

    add-int/2addr v5, v8

    invoke-direct {v0, v5, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 309
    .end local v1    # "b":I
    .local v5, "b":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v18

    add-int/2addr v1, v8

    const v8, 0x6fa87e4f

    add-int/2addr v1, v8

    invoke-direct {v0, v1, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 310
    .end local v4    # "a":I
    .local v1, "a":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v14

    add-int/2addr v4, v8

    const v8, -0x1d31920

    add-int/2addr v4, v8

    const/16 v8, 0xa

    invoke-direct {v0, v4, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 311
    .end local v3    # "d":I
    .local v4, "d":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v11

    add-int/2addr v3, v8

    const v8, -0x5cfebcec

    add-int/2addr v3, v8

    invoke-direct {v0, v3, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 312
    .end local v2    # "c":I
    .local v3, "c":I
    invoke-direct {v0, v3, v4, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v2

    add-int/2addr v2, v5

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v22

    add-int/2addr v2, v8

    const v8, 0x4e0811a1    # 5.707142E8f

    add-int/2addr v2, v8

    invoke-direct {v0, v2, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v2

    add-int/2addr v2, v3

    .line 313
    .end local v5    # "b":I
    .local v2, "b":I
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v5

    add-int/2addr v5, v1

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v8, v8, v15

    add-int/2addr v5, v8

    const v8, -0x8ac817e

    add-int/2addr v5, v8

    invoke-direct {v0, v5, v11}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v5

    add-int/2addr v5, v2

    .line 314
    .end local v1    # "a":I
    .local v5, "a":I
    invoke-direct {v0, v5, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v1

    add-int/2addr v1, v4

    iget-object v8, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v8, v7

    add-int/2addr v1, v7

    const v7, -0x42c50dcb

    add-int/2addr v1, v7

    const/16 v8, 0xa

    invoke-direct {v0, v1, v8}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v1

    add-int/2addr v1, v5

    .line 315
    .end local v4    # "d":I
    .local v1, "d":I
    invoke-direct {v0, v1, v5, v2}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v4

    add-int/2addr v4, v3

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v17

    add-int/2addr v4, v7

    const v7, 0x2ad7d2bb

    add-int/2addr v4, v7

    invoke-direct {v0, v4, v14}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v4

    add-int/2addr v4, v1

    .line 316
    .end local v3    # "c":I
    .local v4, "c":I
    invoke-direct {v0, v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    move-result v3

    add-int/2addr v3, v2

    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aget v7, v7, v13

    add-int/2addr v3, v7

    const v7, -0x14792c6f

    add-int/2addr v3, v7

    invoke-direct {v0, v3, v6}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    move-result v3

    add-int/2addr v3, v4

    .line 318
    .end local v2    # "b":I
    .local v3, "b":I
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 319
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    add-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 320
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    add-int/2addr v2, v4

    iput v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 321
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 326
    move/from16 v2, v20

    iput v2, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 327
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_51d
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v7, v7

    if-eq v6, v7, :cond_529

    .line 329
    iget-object v7, v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aput v2, v7, v6

    .line 327
    add-int/lit8 v6, v6, 0x1

    goto :goto_51d

    .line 331
    .end local v6    # "i":I
    :cond_529
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7
    .param p1, "bitLength"    # J

    .line 98
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 103
    :cond_9
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const-wide/16 v2, -0x1

    and-long/2addr v2, p1

    long-to-int v2, v2

    aput v2, v0, v1

    .line 104
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    const/16 v1, 0x20

    ushr-long v1, p1, v1

    long-to-int v1, v1

    const/16 v2, 0xf

    aput v1, v0, v2

    .line 105
    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 8
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    iget v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    aget-byte v2, p1, p2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, p2, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x10

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 89
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    if-ne v0, v4, :cond_31

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    .line 93
    :cond_31
    return-void
.end method

.method public blacklist reset()V
    .registers 4

    .line 139
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    .line 141
    const v0, 0x67452301

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    .line 142
    const v0, -0x10325477

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    .line 143
    const v0, -0x67452302

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    .line 144
    const v0, 0x10325476

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    .line 148
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1b
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    array-length v2, v2

    if-eq v1, v2, :cond_27

    .line 150
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    aput v0, v2, v1

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 152
    .end local v1    # "i":I
    :cond_27
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 340
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;

    .line 342
    .local v0, "d":Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;)V

    .line 343
    return-void
.end method
