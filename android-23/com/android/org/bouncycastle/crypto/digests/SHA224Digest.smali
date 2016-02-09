.class public Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA224Digest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x1c

.field static final K:[I


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private H6:I

.field private H7:I

.field private H8:I

.field private X:[I

.field private xOff:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 310
    const/16 v0, 0x40

    #@2
    new-array v0, v0, [I

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@9
    .line 19
    return-void

    #@a
    .line 310
    :array_0
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
        0x4d2c6dfc    # 1.80805568E8f
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
        0x4ed8aa4a    # 1.81751936E9f
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

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    #@3
    .line 27
    const/16 v0, 0x40

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@9
    .line 35
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    #@c
    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@3
    .line 27
    const/16 v0, 0x40

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@9
    .line 46
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->doCopy(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    #@c
    .line 42
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encodedState"    # [B

    #@0
    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    #@3
    .line 27
    const/16 v1, 0x40

    #@5
    new-array v1, v1, [I

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@9
    .line 70
    const/16 v1, 0x10

    #@b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@11
    .line 71
    const/16 v1, 0x14

    #@13
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@19
    .line 72
    const/16 v1, 0x18

    #@1b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@21
    .line 73
    const/16 v1, 0x1c

    #@23
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@26
    move-result v1

    #@27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@29
    .line 74
    const/16 v1, 0x20

    #@2b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@31
    .line 75
    const/16 v1, 0x24

    #@33
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@36
    move-result v1

    #@37
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@39
    .line 76
    const/16 v1, 0x28

    #@3b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@3e
    move-result v1

    #@3f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@41
    .line 77
    const/16 v1, 0x2c

    #@43
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@46
    move-result v1

    #@47
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@49
    .line 79
    const/16 v1, 0x30

    #@4b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@4e
    move-result v1

    #@4f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@51
    .line 80
    const/4 v0, 0x0

    #@52
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@54
    if-eq v0, v1, :cond_0

    #@56
    .line 82
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@58
    mul-int/lit8 v2, v0, 0x4

    #@5a
    add-int/lit8 v2, v2, 0x34

    #@5c
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@5f
    move-result v2

    #@60
    aput v2, v1, v0

    #@62
    .line 80
    add-int/lit8 v0, v0, 0x1

    #@64
    goto :goto_0

    #@65
    .line 66
    :cond_0
    return-void
.end method

.method private Ch(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 271
    and-int v0, p1, p2

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v1, p3

    #@4
    xor-int/2addr v0, v1

    #@5
    return v0
.end method

.method private Maj(III)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "z"    # I

    #@0
    .prologue
    .line 279
    and-int v0, p1, p2

    #@2
    and-int v1, p1, p3

    #@4
    xor-int/2addr v0, v1

    #@5
    and-int v1, p2, p3

    #@7
    xor-int/2addr v0, v1

    #@8
    return v0
.end method

.method private Sum0(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    .line 285
    ushr-int/lit8 v0, p1, 0x2

    #@2
    shl-int/lit8 v1, p1, 0x1e

    #@4
    or-int/2addr v0, v1

    #@5
    ushr-int/lit8 v1, p1, 0xd

    #@7
    shl-int/lit8 v2, p1, 0x13

    #@9
    or-int/2addr v1, v2

    #@a
    xor-int/2addr v0, v1

    #@b
    ushr-int/lit8 v1, p1, 0x16

    #@d
    shl-int/lit8 v2, p1, 0xa

    #@f
    or-int/2addr v1, v2

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method private Sum1(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    .line 291
    ushr-int/lit8 v0, p1, 0x6

    #@2
    shl-int/lit8 v1, p1, 0x1a

    #@4
    or-int/2addr v0, v1

    #@5
    ushr-int/lit8 v1, p1, 0xb

    #@7
    shl-int/lit8 v2, p1, 0x15

    #@9
    or-int/2addr v1, v2

    #@a
    xor-int/2addr v0, v1

    #@b
    ushr-int/lit8 v1, p1, 0x19

    #@d
    shl-int/lit8 v2, p1, 0x7

    #@f
    or-int/2addr v1, v2

    #@10
    xor-int/2addr v0, v1

    #@11
    return v0
.end method

.method private Theta0(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    .line 297
    ushr-int/lit8 v0, p1, 0x7

    #@2
    shl-int/lit8 v1, p1, 0x19

    #@4
    or-int/2addr v0, v1

    #@5
    ushr-int/lit8 v1, p1, 0x12

    #@7
    shl-int/lit8 v2, p1, 0xe

    #@9
    or-int/2addr v1, v2

    #@a
    xor-int/2addr v0, v1

    #@b
    ushr-int/lit8 v1, p1, 0x3

    #@d
    xor-int/2addr v0, v1

    #@e
    return v0
.end method

.method private Theta1(I)I
    .locals 3
    .param p1, "x"    # I

    #@0
    .prologue
    .line 303
    ushr-int/lit8 v0, p1, 0x11

    #@2
    shl-int/lit8 v1, p1, 0xf

    #@4
    or-int/2addr v0, v1

    #@5
    ushr-int/lit8 v1, p1, 0x13

    #@7
    shl-int/lit8 v2, p1, 0xd

    #@9
    or-int/2addr v1, v2

    #@a
    xor-int/2addr v0, v1

    #@b
    ushr-int/lit8 v1, p1, 0xa

    #@d
    xor-int/2addr v0, v1

    #@e
    return v0
.end method

.method private doCopy(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 51
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@4
    .line 53
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@6
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@8
    .line 54
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@c
    .line 55
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@e
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@10
    .line 56
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@12
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@14
    .line 57
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@16
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@18
    .line 58
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@1a
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@1c
    .line 59
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@1e
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@20
    .line 60
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@22
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@24
    .line 62
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@26
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@28
    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@2a
    array-length v2, v2

    #@2b
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@2e
    .line 63
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@30
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@32
    .line 49
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    #@0
    .prologue
    .line 322
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    #@5
    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->finish()V

    #@3
    .line 132
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@5
    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@8
    .line 133
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@a
    add-int/lit8 v1, p2, 0x4

    #@c
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@f
    .line 134
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@11
    add-int/lit8 v1, p2, 0x8

    #@13
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@16
    .line 135
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@18
    add-int/lit8 v1, p2, 0xc

    #@1a
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@1d
    .line 136
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@1f
    add-int/lit8 v1, p2, 0x10

    #@21
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@24
    .line 137
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@26
    add-int/lit8 v1, p2, 0x14

    #@28
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@2b
    .line 138
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@2d
    add-int/lit8 v1, p2, 0x18

    #@2f
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@32
    .line 140
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->reset()V

    #@35
    .line 142
    const/16 v0, 0x1c

    #@37
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 88
    const-string/jumbo v0, "SHA-224"

    #@3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 93
    const/16 v0, 0x1c

    #@2
    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    #@0
    .prologue
    .line 334
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@2
    mul-int/lit8 v2, v2, 0x4

    #@4
    add-int/lit8 v2, v2, 0x34

    #@6
    new-array v1, v2, [B

    #@8
    .line 336
    .local v1, "state":[B
    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    #@b
    .line 338
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@d
    const/16 v3, 0x10

    #@f
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@12
    .line 339
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@14
    const/16 v3, 0x14

    #@16
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@19
    .line 340
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@1b
    const/16 v3, 0x18

    #@1d
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@20
    .line 341
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@22
    const/16 v3, 0x1c

    #@24
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@27
    .line 342
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@29
    const/16 v3, 0x20

    #@2b
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@2e
    .line 343
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@30
    const/16 v3, 0x24

    #@32
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@35
    .line 344
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@37
    const/16 v3, 0x28

    #@39
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@3c
    .line 345
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@3e
    const/16 v3, 0x2c

    #@40
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@43
    .line 346
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@45
    const/16 v3, 0x30

    #@47
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@4a
    .line 348
    const/4 v0, 0x0

    #@4b
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@4d
    if-eq v0, v2, :cond_0

    #@4f
    .line 350
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@51
    aget v2, v2, v0

    #@53
    mul-int/lit8 v3, v0, 0x4

    #@55
    add-int/lit8 v3, v3, 0x34

    #@57
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@5a
    .line 348
    add-int/lit8 v0, v0, 0x1

    #@5c
    goto :goto_0

    #@5d
    .line 353
    :cond_0
    return-object v1
.end method

.method protected processBlock()V
    .locals 15

    #@0
    .prologue
    const/4 v14, 0x0

    #@1
    .line 176
    const/16 v9, 0x10

    #@3
    .local v9, "t":I
    :goto_0
    const/16 v10, 0x3f

    #@5
    if-gt v9, v10, :cond_0

    #@7
    .line 178
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@9
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@b
    add-int/lit8 v12, v9, -0x2

    #@d
    aget v11, v11, v12

    #@f
    invoke-direct {p0, v11}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Theta1(I)I

    #@12
    move-result v11

    #@13
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@15
    add-int/lit8 v13, v9, -0x7

    #@17
    aget v12, v12, v13

    #@19
    add-int/2addr v11, v12

    #@1a
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@1c
    add-int/lit8 v13, v9, -0xf

    #@1e
    aget v12, v12, v13

    #@20
    invoke-direct {p0, v12}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Theta0(I)I

    #@23
    move-result v12

    #@24
    add-int/2addr v11, v12

    #@25
    iget-object v12, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@27
    add-int/lit8 v13, v9, -0x10

    #@29
    aget v12, v12, v13

    #@2b
    add-int/2addr v11, v12

    #@2c
    aput v11, v10, v9

    #@2e
    .line 176
    add-int/lit8 v9, v9, 0x1

    #@30
    goto :goto_0

    #@31
    .line 184
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@33
    .line 185
    .local v0, "a":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@35
    .line 186
    .local v1, "b":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@37
    .line 187
    .local v2, "c":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@39
    .line 188
    .local v3, "d":I
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@3b
    .line 189
    .local v4, "e":I
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@3d
    .line 190
    .local v5, "f":I
    iget v6, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@3f
    .line 191
    .local v6, "g":I
    iget v7, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@41
    .line 194
    .local v7, "h":I
    const/4 v9, 0x0

    #@42
    .line 195
    const/4 v8, 0x0

    #@43
    .local v8, "i":I
    :goto_1
    const/16 v10, 0x8

    #@45
    if-ge v8, v10, :cond_1

    #@47
    .line 198
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@4a
    move-result v10

    #@4b
    invoke-direct {p0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@4e
    move-result v11

    #@4f
    add-int/2addr v10, v11

    #@50
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@52
    aget v11, v11, v9

    #@54
    add-int/2addr v10, v11

    #@55
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@57
    aget v11, v11, v9

    #@59
    add-int/2addr v10, v11

    #@5a
    add-int/2addr v7, v10

    #@5b
    .line 199
    add-int/2addr v3, v7

    #@5c
    .line 200
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@5f
    move-result v10

    #@60
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@63
    move-result v11

    #@64
    add-int/2addr v10, v11

    #@65
    add-int/2addr v7, v10

    #@66
    .line 201
    add-int/lit8 v9, v9, 0x1

    #@68
    .line 204
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@6b
    move-result v10

    #@6c
    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@6f
    move-result v11

    #@70
    add-int/2addr v10, v11

    #@71
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@73
    aget v11, v11, v9

    #@75
    add-int/2addr v10, v11

    #@76
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@78
    aget v11, v11, v9

    #@7a
    add-int/2addr v10, v11

    #@7b
    add-int/2addr v6, v10

    #@7c
    .line 205
    add-int/2addr v2, v6

    #@7d
    .line 206
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@80
    move-result v10

    #@81
    invoke-direct {p0, v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@84
    move-result v11

    #@85
    add-int/2addr v10, v11

    #@86
    add-int/2addr v6, v10

    #@87
    .line 207
    add-int/lit8 v9, v9, 0x1

    #@89
    .line 210
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@8c
    move-result v10

    #@8d
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@90
    move-result v11

    #@91
    add-int/2addr v10, v11

    #@92
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@94
    aget v11, v11, v9

    #@96
    add-int/2addr v10, v11

    #@97
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@99
    aget v11, v11, v9

    #@9b
    add-int/2addr v10, v11

    #@9c
    add-int/2addr v5, v10

    #@9d
    .line 211
    add-int/2addr v1, v5

    #@9e
    .line 212
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@a1
    move-result v10

    #@a2
    invoke-direct {p0, v6, v7, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@a5
    move-result v11

    #@a6
    add-int/2addr v10, v11

    #@a7
    add-int/2addr v5, v10

    #@a8
    .line 213
    add-int/lit8 v9, v9, 0x1

    #@aa
    .line 216
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@ad
    move-result v10

    #@ae
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@b1
    move-result v11

    #@b2
    add-int/2addr v10, v11

    #@b3
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@b5
    aget v11, v11, v9

    #@b7
    add-int/2addr v10, v11

    #@b8
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@ba
    aget v11, v11, v9

    #@bc
    add-int/2addr v10, v11

    #@bd
    add-int/2addr v4, v10

    #@be
    .line 217
    add-int/2addr v0, v4

    #@bf
    .line 218
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@c2
    move-result v10

    #@c3
    invoke-direct {p0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@c6
    move-result v11

    #@c7
    add-int/2addr v10, v11

    #@c8
    add-int/2addr v4, v10

    #@c9
    .line 219
    add-int/lit8 v9, v9, 0x1

    #@cb
    .line 222
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@ce
    move-result v10

    #@cf
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@d2
    move-result v11

    #@d3
    add-int/2addr v10, v11

    #@d4
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@d6
    aget v11, v11, v9

    #@d8
    add-int/2addr v10, v11

    #@d9
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@db
    aget v11, v11, v9

    #@dd
    add-int/2addr v10, v11

    #@de
    add-int/2addr v3, v10

    #@df
    .line 223
    add-int/2addr v7, v3

    #@e0
    .line 224
    invoke-direct {p0, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@e3
    move-result v10

    #@e4
    invoke-direct {p0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@e7
    move-result v11

    #@e8
    add-int/2addr v10, v11

    #@e9
    add-int/2addr v3, v10

    #@ea
    .line 225
    add-int/lit8 v9, v9, 0x1

    #@ec
    .line 228
    invoke-direct {p0, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@ef
    move-result v10

    #@f0
    invoke-direct {p0, v7, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@f3
    move-result v11

    #@f4
    add-int/2addr v10, v11

    #@f5
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@f7
    aget v11, v11, v9

    #@f9
    add-int/2addr v10, v11

    #@fa
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@fc
    aget v11, v11, v9

    #@fe
    add-int/2addr v10, v11

    #@ff
    add-int/2addr v2, v10

    #@100
    .line 229
    add-int/2addr v6, v2

    #@101
    .line 230
    invoke-direct {p0, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@104
    move-result v10

    #@105
    invoke-direct {p0, v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@108
    move-result v11

    #@109
    add-int/2addr v10, v11

    #@10a
    add-int/2addr v2, v10

    #@10b
    .line 231
    add-int/lit8 v9, v9, 0x1

    #@10d
    .line 234
    invoke-direct {p0, v6}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@110
    move-result v10

    #@111
    invoke-direct {p0, v6, v7, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@114
    move-result v11

    #@115
    add-int/2addr v10, v11

    #@116
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@118
    aget v11, v11, v9

    #@11a
    add-int/2addr v10, v11

    #@11b
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@11d
    aget v11, v11, v9

    #@11f
    add-int/2addr v10, v11

    #@120
    add-int/2addr v1, v10

    #@121
    .line 235
    add-int/2addr v5, v1

    #@122
    .line 236
    invoke-direct {p0, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@125
    move-result v10

    #@126
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@129
    move-result v11

    #@12a
    add-int/2addr v10, v11

    #@12b
    add-int/2addr v1, v10

    #@12c
    .line 237
    add-int/lit8 v9, v9, 0x1

    #@12e
    .line 240
    invoke-direct {p0, v5}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum1(I)I

    #@131
    move-result v10

    #@132
    invoke-direct {p0, v5, v6, v7}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Ch(III)I

    #@135
    move-result v11

    #@136
    add-int/2addr v10, v11

    #@137
    sget-object v11, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->K:[I

    #@139
    aget v11, v11, v9

    #@13b
    add-int/2addr v10, v11

    #@13c
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@13e
    aget v11, v11, v9

    #@140
    add-int/2addr v10, v11

    #@141
    add-int/2addr v0, v10

    #@142
    .line 241
    add-int/2addr v4, v0

    #@143
    .line 242
    invoke-direct {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Sum0(I)I

    #@146
    move-result v10

    #@147
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->Maj(III)I

    #@14a
    move-result v11

    #@14b
    add-int/2addr v10, v11

    #@14c
    add-int/2addr v0, v10

    #@14d
    .line 243
    add-int/lit8 v9, v9, 0x1

    #@14f
    .line 195
    add-int/lit8 v8, v8, 0x1

    #@151
    goto/16 :goto_1

    #@153
    .line 246
    :cond_1
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@155
    add-int/2addr v10, v0

    #@156
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@158
    .line 247
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@15a
    add-int/2addr v10, v1

    #@15b
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@15d
    .line 248
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@15f
    add-int/2addr v10, v2

    #@160
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@162
    .line 249
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@164
    add-int/2addr v10, v3

    #@165
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@167
    .line 250
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@169
    add-int/2addr v10, v4

    #@16a
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@16c
    .line 251
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@16e
    add-int/2addr v10, v5

    #@16f
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@171
    .line 252
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@173
    add-int/2addr v10, v6

    #@174
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@176
    .line 253
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@178
    add-int/2addr v10, v7

    #@179
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@17b
    .line 258
    iput v14, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@17d
    .line 259
    const/4 v8, 0x0

    #@17e
    :goto_2
    const/16 v10, 0x10

    #@180
    if-ge v8, v10, :cond_2

    #@182
    .line 261
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@184
    aput v14, v10, v8

    #@186
    .line 259
    add-int/lit8 v8, v8, 0x1

    #@188
    goto :goto_2

    #@189
    .line 171
    :cond_2
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    #@0
    .prologue
    const/16 v4, 0xe

    #@2
    .line 117
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@4
    if-le v0, v4, :cond_0

    #@6
    .line 119
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    #@9
    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@b
    const/16 v1, 0x20

    #@d
    ushr-long v2, p1, v1

    #@f
    long-to-int v1, v2

    #@10
    aput v1, v0, v4

    #@12
    .line 123
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@14
    const-wide/16 v2, -0x1

    #@16
    and-long/2addr v2, p1

    #@17
    long-to-int v1, v2

    #@18
    const/16 v2, 0xf

    #@1a
    aput v1, v0, v2

    #@1c
    .line 115
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    .line 102
    aget-byte v1, p1, p2

    #@2
    shl-int/lit8 v0, v1, 0x18

    #@4
    .line 103
    .local v0, "n":I
    add-int/lit8 p2, p2, 0x1

    #@6
    aget-byte v1, p1, p2

    #@8
    and-int/lit16 v1, v1, 0xff

    #@a
    shl-int/lit8 v1, v1, 0x10

    #@c
    or-int/2addr v0, v1

    #@d
    .line 104
    add-int/lit8 p2, p2, 0x1

    #@f
    aget-byte v1, p1, p2

    #@11
    and-int/lit16 v1, v1, 0xff

    #@13
    shl-int/lit8 v1, v1, 0x8

    #@15
    or-int/2addr v0, v1

    #@16
    .line 105
    add-int/lit8 p2, p2, 0x1

    #@18
    aget-byte v1, p1, p2

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 106
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@1f
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@21
    aput v0, v1, v2

    #@23
    .line 108
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@29
    const/16 v2, 0x10

    #@2b
    if-ne v1, v2, :cond_0

    #@2d
    .line 110
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->processBlock()V

    #@30
    .line 98
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 150
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    #@4
    .line 155
    const v1, -0x3efa6128

    #@7
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H1:I

    #@9
    .line 156
    const v1, 0x367cd507

    #@c
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H2:I

    #@e
    .line 157
    const v1, 0x3070dd17

    #@11
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H3:I

    #@13
    .line 158
    const v1, -0x8f1a6c7

    #@16
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H4:I

    #@18
    .line 159
    const v1, -0x3ff4cf

    #@1b
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H5:I

    #@1d
    .line 160
    const v1, 0x68581511

    #@20
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H6:I

    #@22
    .line 161
    const v1, 0x64f98fa7

    #@25
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H7:I

    #@27
    .line 162
    const v1, -0x4105b05c

    #@2a
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->H8:I

    #@2c
    .line 164
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->xOff:I

    #@2e
    .line 165
    const/4 v0, 0x0

    #@2f
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@31
    array-length v1, v1

    #@32
    if-eq v0, v1, :cond_0

    #@34
    .line 167
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->X:[I

    #@36
    aput v2, v1, v0

    #@38
    .line 165
    add-int/lit8 v0, v0, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 148
    :cond_0
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 327
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;

    #@3
    .line 329
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;->doCopy(Lcom/android/org/bouncycastle/crypto/digests/SHA224Digest;)V

    #@6
    .line 325
    return-void
.end method
