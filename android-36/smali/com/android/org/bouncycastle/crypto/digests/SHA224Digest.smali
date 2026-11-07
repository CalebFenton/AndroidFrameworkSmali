.class public Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA224Digest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field static final blacklist K:[I


# instance fields
.field private blacklist H1:I

.field private blacklist H2:I

.field private blacklist H3:I

.field private blacklist H4:I

.field private blacklist H5:I

.field private blacklist H6:I

.field private blacklist H7:I

.field private blacklist H8:I

.field private blacklist X:[I

.field private blacklist xOff:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/16 v0, 0x40

    .line 318
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    return-void

    :array_a
    .array-data 4
        0x428a2f98
        0x71374491
        -0x4a3f0431
        -0x164a245b
        0x3956c25b
        0x59f111f1
        -0x6dc07d5c    # -6.043E-28f
        -0x54e3a12b
        -0x27f85568
        0x12835b01
        0x243185be
        0x550c7dc3
        0x72be5d74
        -0x7f214e02
        -0x6423f959
        -0x3e640e8c
        -0x1b64963f
        -0x1041b87a
        0xfc19dc6
        0x240ca1cc
        0x2de92c6f
        0x4a7484aa    # 4006186.5f
        0x5cb0a9dc
        0x76f988da
        -0x67c1aeae
        -0x57ce3993
        -0x4ffcd838
        -0x40a68039
        -0x391ff40d
        -0x2a586eb9
        0x6ca6351
        0x14292967
        0x27b70a85
        0x2e1b2138
        0x4d2c6dfc    # 1.8080557E8f
        0x53380d13
        0x650a7354
        0x766a0abb
        -0x7e3d36d2
        -0x6d8dd37b
        -0x5d40175f
        -0x57e599b5
        -0x3db47490
        -0x3893ae5d
        -0x2e6d17e7
        -0x2966f9dc
        -0xbf1ca7b
        0x106aa070
        0x19a4c116
        0x1e376c08
        0x2748774c
        0x34b0bcb5
        0x391c0cb3
        0x4ed8aa4a    # 1.8175194E9f
        0x5b9cca4f
        0x682e6ff3
        0x748f82ee
        0x78a5636f
        -0x7b3787ec
        -0x7338fdf8
        -0x6f410006
        -0x5baf9315
        -0x41065c09
        -0x398e870e
    .end array-data
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    const/16 v0, 0x40

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 38
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V
    .registers 3

    .line 47
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    const/16 v0, 0x40

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    .line 49
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->doCopy(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 5

    .line 76
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    const/16 v0, 0x40

    .line 30
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v0, 0x10

    .line 78
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    const/16 v0, 0x14

    .line 79
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    const/16 v0, 0x18

    .line 80
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    const/16 v0, 0x1c

    .line 81
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    const/16 v0, 0x20

    .line 82
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    const/16 v0, 0x24

    .line 83
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    const/16 v0, 0x28

    .line 84
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    const/16 v0, 0x2c

    .line 85
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    const/16 v0, 0x30

    .line 87
    invoke-static {p1, v0}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    const/4 v0, 0x0

    .line 88
    :goto_52
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-eq v0, v1, :cond_65

    .line 90
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    mul-int/lit8 v2, v0, 0x4

    add-int/lit8 v2, v2, 0x34

    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_65
    return-void
.end method

.method private blacklist Ch(III)I
    .registers 4

    .line 0
    and-int p0, p1, p2

    not-int p1, p1

    and-int/2addr p1, p3

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Maj(III)I
    .registers 4

    .line 0
    and-int p0, p1, p2

    and-int/2addr p1, p3

    xor-int/2addr p0, p1

    and-int p1, p2, p3

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Sum0(I)I
    .registers 4

    .line 0
    ushr-int/lit8 p0, p1, 0x2

    shl-int/lit8 v0, p1, 0x1e

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0xd

    shl-int/lit8 v1, p1, 0x13

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x16

    shl-int/lit8 p1, p1, 0xa

    or-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Sum1(I)I
    .registers 4

    .line 0
    ushr-int/lit8 p0, p1, 0x6

    shl-int/lit8 v0, p1, 0x1a

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0xb

    shl-int/lit8 v1, p1, 0x15

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x19

    shl-int/lit8 p1, p1, 0x7

    or-int/2addr p1, v0

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Theta0(I)I
    .registers 4

    .line 0
    ushr-int/lit8 p0, p1, 0x7

    shl-int/lit8 v0, p1, 0x19

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x12

    shl-int/lit8 v1, p1, 0xe

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 p1, p1, 0x3

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist Theta1(I)I
    .registers 4

    .line 0
    ushr-int/lit8 p0, p1, 0x11

    shl-int/lit8 v0, p1, 0xf

    or-int/2addr p0, v0

    ushr-int/lit8 v0, p1, 0x13

    shl-int/lit8 v1, p1, 0xd

    or-int/2addr v0, v1

    xor-int/2addr p0, v0

    ushr-int/lit8 p1, p1, 0xa

    xor-int/2addr p0, p1

    return p0
.end method

.method private blacklist doCopy(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V
    .registers 6

    .line 54
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    .line 56
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 57
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 58
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 59
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 60
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 61
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 62
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 63
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 65
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 66
    iget p1, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    iput p1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 330
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 5

    .line 138
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->finish()V

    .line 140
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 141
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    add-int/lit8 v1, p2, 0x4

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 142
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    add-int/lit8 v1, p2, 0x8

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 143
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    add-int/lit8 v1, p2, 0xc

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 144
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    add-int/lit8 v1, p2, 0x10

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 145
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    add-int/lit8 v1, p2, 0x14

    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 146
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    add-int/lit8 p2, p2, 0x18

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 148
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    const/16 p0, 0x1c

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 96
    const-string p0, "SHA-224"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x1c

    return p0
.end method

.method public blacklist getEncodedState()[B
    .registers 5

    .line 342
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x34

    new-array v0, v0, [B

    .line 344
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    .line 346
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    const/16 v2, 0x10

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 347
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    const/16 v2, 0x14

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 348
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    const/16 v2, 0x18

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 349
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    const/16 v2, 0x1c

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 350
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    const/16 v2, 0x20

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 351
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    const/16 v2, 0x24

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 352
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    const/16 v2, 0x28

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 353
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    const/16 v2, 0x2c

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    .line 354
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    const/16 v2, 0x30

    invoke-static {v1, v0, v2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/4 v1, 0x0

    .line 356
    :goto_4b
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-eq v1, v2, :cond_5d

    .line 358
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v2, v2, v1

    mul-int/lit8 v3, v1, 0x4

    add-int/lit8 v3, v3, 0x34

    invoke-static {v2, v0, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    :cond_5d
    return-object v0
.end method

.method protected blacklist processBlock()V
    .registers 19

    move-object/from16 v0, p0

    const/16 v2, 0x10

    :goto_4
    const/16 v3, 0x3f

    if-gt v2, v3, :cond_2e

    .line 186
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v4, v2, -0x2

    aget v4, v3, v4

    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Theta1(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v6, v2, -0x7

    aget v6, v5, v6

    add-int/2addr v4, v6

    add-int/lit8 v6, v2, -0xf

    aget v5, v5, v6

    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Theta0(I)I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    add-int/lit8 v6, v2, -0x10

    aget v5, v5, v6

    add-int/2addr v4, v5

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 192
    :cond_2e
    iget v2, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 193
    iget v3, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 194
    iget v4, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 195
    iget v5, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 196
    iget v6, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 197
    iget v7, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 198
    iget v8, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 199
    iget v9, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    const/4 v10, 0x0

    move v11, v10

    move v12, v11

    :goto_41
    const/16 v13, 0x8

    if-ge v11, v13, :cond_148

    .line 206
    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v14

    invoke-direct {v0, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v15

    add-int/2addr v14, v15

    sget-object v15, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    aget v16, v15, v12

    add-int v14, v14, v16

    move/from16 v16, v13

    iget-object v13, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v13, v13, v12

    add-int/2addr v14, v13

    add-int/2addr v9, v14

    add-int/2addr v5, v9

    .line 208
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v13

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v14

    add-int/2addr v13, v14

    add-int/2addr v9, v13

    add-int/lit8 v13, v12, 0x1

    .line 212
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v14

    invoke-direct {v0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v17

    add-int v14, v14, v17

    aget v17, v15, v13

    add-int v14, v14, v17

    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v1, v13

    add-int/2addr v14, v1

    add-int/2addr v8, v14

    add-int/2addr v4, v8

    .line 214
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v9, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v8, v1

    add-int/lit8 v1, v12, 0x2

    .line 218
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v13

    invoke-direct {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v7, v13

    add-int/2addr v3, v7

    .line 220
    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v8, v9, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v7, v1

    add-int/lit8 v1, v12, 0x3

    .line 224
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v13

    invoke-direct {v0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v6, v13

    add-int/2addr v2, v6

    .line 226
    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v6, v1

    add-int/lit8 v1, v12, 0x4

    .line 230
    invoke-direct {v0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v13

    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v5, v13

    add-int/2addr v9, v5

    .line 232
    invoke-direct {v0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v6, v7, v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v5, v1

    add-int/lit8 v1, v12, 0x5

    .line 236
    invoke-direct {v0, v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v13

    invoke-direct {v0, v9, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v4, v13

    add-int/2addr v8, v4

    .line 238
    invoke-direct {v0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v4, v1

    add-int/lit8 v1, v12, 0x6

    .line 242
    invoke-direct {v0, v8}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v13

    invoke-direct {v0, v8, v9, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v3, v13

    add-int/2addr v7, v3

    .line 244
    invoke-direct {v0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v3, v1

    add-int/lit8 v1, v12, 0x7

    .line 248
    invoke-direct {v0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    move-result v13

    invoke-direct {v0, v7, v8, v9}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    move-result v14

    add-int/2addr v13, v14

    aget v14, v15, v1

    add-int/2addr v13, v14

    iget-object v14, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aget v1, v14, v1

    add-int/2addr v13, v1

    add-int/2addr v2, v13

    add-int/2addr v6, v2

    .line 250
    invoke-direct {v0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    move-result v1

    invoke-direct {v0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    move-result v13

    add-int/2addr v1, v13

    add-int/2addr v2, v1

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_41

    .line 254
    :cond_148
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    .line 255
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    .line 256
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    add-int/2addr v1, v4

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    .line 257
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    add-int/2addr v1, v5

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    .line 258
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    add-int/2addr v1, v6

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    .line 259
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    add-int/2addr v1, v7

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    .line 260
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    .line 261
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    add-int/2addr v1, v9

    iput v1, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    .line 266
    iput v10, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    move v2, v10

    const/16 v1, 0x10

    :goto_175
    if-ge v2, v1, :cond_17e

    .line 269
    iget-object v3, v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    aput v10, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_175

    :cond_17e
    return-void
.end method

.method protected blacklist processLength(J)V
    .registers 7

    .line 125
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    const/16 v1, 0xe

    if-le v0, v1, :cond_9

    .line 127
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    .line 130
    :cond_9
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    const/16 v0, 0x20

    ushr-long v2, p1, v0

    long-to-int v0, v2

    aput v0, p0, v1

    const/16 v0, 0xf

    long-to-int p1, p1

    .line 131
    aput p1, p0, v0

    return-void
.end method

.method protected blacklist processWord([BI)V
    .registers 6

    .line 110
    aget-byte v0, p1, p2

    shl-int/lit8 v0, v0, 0x18

    add-int/lit8 v1, p2, 0x1

    .line 111
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0x10

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    .line 112
    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 p2, p2, 0x3

    .line 113
    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v0

    .line 114
    iget-object p2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    aput p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    .line 116
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    if-ne v0, v2, :cond_2d

    .line 118
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    :cond_2d
    return-void
.end method

.method public blacklist reset()V
    .registers 5

    .line 158
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    const v0, -0x3efa6128

    .line 163
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    const v0, 0x367cd507

    .line 164
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    const v0, 0x3070dd17

    .line 165
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    const v0, -0x8f1a6c7

    .line 166
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    const v0, -0x3ff4cf

    .line 167
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    const v0, 0x68581511

    .line 168
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    const v0, 0x64f98fa7

    .line 169
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    const v0, -0x4105b05c

    .line 170
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    const/4 v0, 0x0

    .line 172
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    move v1, v0

    .line 173
    :goto_2f
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    array-length v3, v2

    if-eq v1, v3, :cond_39

    .line 175
    aput v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_39
    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 335
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    .line 337
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->doCopy(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    return-void
.end method
