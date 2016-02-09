.class public Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "SHA1Digest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/digests/EncodableDigest;


# static fields
.field private static final DIGEST_LENGTH:I = 0x14

.field private static final Y1:I = 0x5a827999

.field private static final Y2:I = 0x6ed9eba1

.field private static final Y3:I = -0x70e44324

.field private static final Y4:I = -0x359d3e2a


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private H5:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    #@3
    .line 20
    const/16 v0, 0x50

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@9
    .line 28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    #@c
    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@0
    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@3
    .line 20
    const/16 v0, 0x50

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@9
    .line 39
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    #@c
    .line 35
    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "encodedState"    # [B

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>([B)V

    #@3
    .line 20
    const/16 v1, 0x50

    #@5
    new-array v1, v1, [I

    #@7
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@9
    .line 46
    const/16 v1, 0x10

    #@b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@e
    move-result v1

    #@f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@11
    .line 47
    const/16 v1, 0x14

    #@13
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@16
    move-result v1

    #@17
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@19
    .line 48
    const/16 v1, 0x18

    #@1b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@1e
    move-result v1

    #@1f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@21
    .line 49
    const/16 v1, 0x1c

    #@23
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@26
    move-result v1

    #@27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@29
    .line 50
    const/16 v1, 0x20

    #@2b
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@2e
    move-result v1

    #@2f
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@31
    .line 52
    const/16 v1, 0x24

    #@33
    invoke-static {p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@36
    move-result v1

    #@37
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@39
    .line 53
    const/4 v0, 0x0

    #@3a
    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@3c
    if-eq v0, v1, :cond_0

    #@3e
    .line 55
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@40
    mul-int/lit8 v2, v0, 0x4

    #@42
    add-int/lit8 v2, v2, 0x28

    #@44
    invoke-static {p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    #@47
    move-result v2

    #@48
    aput v2, v1, v0

    #@4a
    .line 53
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 42
    :cond_0
    return-void
.end method

.method private copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 61
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@3
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@5
    .line 62
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@7
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@9
    .line 63
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@b
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@d
    .line 64
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@f
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@11
    .line 65
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@13
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@15
    .line 67
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@17
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@19
    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@1b
    array-length v2, v2

    #@1c
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1f
    .line 68
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@21
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@23
    .line 59
    return-void
.end method

.method private f(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 161
    and-int v0, p1, p2

    #@2
    not-int v1, p1

    #@3
    and-int/2addr v1, p3

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method private g(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 177
    and-int v0, p1, p2

    #@2
    and-int v1, p1, p3

    #@4
    or-int/2addr v0, v1

    #@5
    and-int v1, p2, p3

    #@7
    or-int/2addr v0, v1

    #@8
    return v0
.end method

.method private h(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 169
    xor-int v0, p1, p2

    #@2
    xor-int/2addr v0, p3

    #@3
    return v0
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    #@0
    .prologue
    .line 313
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    #@5
    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->finish()V

    #@3
    .line 117
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@5
    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@8
    .line 118
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@a
    add-int/lit8 v1, p2, 0x4

    #@c
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@f
    .line 119
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@11
    add-int/lit8 v1, p2, 0x8

    #@13
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@16
    .line 120
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@18
    add-int/lit8 v1, p2, 0xc

    #@1a
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@1d
    .line 121
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@1f
    add-int/lit8 v1, p2, 0x10

    #@21
    invoke-static {v0, p1, v1}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@24
    .line 123
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->reset()V

    #@27
    .line 125
    const/16 v0, 0x14

    #@29
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "SHA-1"

    #@3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 78
    const/16 v0, 0x14

    #@2
    return v0
.end method

.method public getEncodedState()[B
    .locals 4

    #@0
    .prologue
    .line 326
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@2
    mul-int/lit8 v2, v2, 0x4

    #@4
    add-int/lit8 v2, v2, 0x28

    #@6
    new-array v1, v2, [B

    #@8
    .line 328
    .local v1, "state":[B
    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->populateState([B)V

    #@b
    .line 330
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@d
    const/16 v3, 0x10

    #@f
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@12
    .line 331
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@14
    const/16 v3, 0x14

    #@16
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@19
    .line 332
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@1b
    const/16 v3, 0x18

    #@1d
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@20
    .line 333
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@22
    const/16 v3, 0x1c

    #@24
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@27
    .line 334
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@29
    const/16 v3, 0x20

    #@2b
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@2e
    .line 335
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@30
    const/16 v3, 0x24

    #@32
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@35
    .line 337
    const/4 v0, 0x0

    #@36
    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@38
    if-eq v0, v2, :cond_0

    #@3a
    .line 339
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@3c
    aget v2, v2, v0

    #@3e
    mul-int/lit8 v3, v0, 0x4

    #@40
    add-int/lit8 v3, v3, 0x28

    #@42
    invoke-static {v2, v1, v3}, Lcom/android/org/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    #@45
    .line 337
    add-int/lit8 v0, v0, 0x1

    #@47
    goto :goto_0

    #@48
    .line 342
    :cond_0
    return-object v1
.end method

.method protected processBlock()V
    .locals 13

    #@0
    .prologue
    .line 185
    const/16 v5, 0x10

    #@2
    .local v5, "i":I
    :goto_0
    const/16 v10, 0x50

    #@4
    if-ge v5, v10, :cond_0

    #@6
    .line 187
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@8
    add-int/lit8 v11, v5, -0x3

    #@a
    aget v10, v10, v11

    #@c
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@e
    add-int/lit8 v12, v5, -0x8

    #@10
    aget v11, v11, v12

    #@12
    xor-int/2addr v10, v11

    #@13
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@15
    add-int/lit8 v12, v5, -0xe

    #@17
    aget v11, v11, v12

    #@19
    xor-int/2addr v10, v11

    #@1a
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@1c
    add-int/lit8 v12, v5, -0x10

    #@1e
    aget v11, v11, v12

    #@20
    xor-int v9, v10, v11

    #@22
    .line 188
    .local v9, "t":I
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@24
    shl-int/lit8 v11, v9, 0x1

    #@26
    ushr-int/lit8 v12, v9, 0x1f

    #@28
    or-int/2addr v11, v12

    #@29
    aput v11, v10, v5

    #@2b
    .line 185
    add-int/lit8 v5, v5, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 194
    .end local v9    # "t":I
    :cond_0
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@30
    .line 195
    .local v0, "A":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@32
    .line 196
    .local v1, "B":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@34
    .line 197
    .local v2, "C":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@36
    .line 198
    .local v3, "D":I
    iget v4, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@38
    .line 203
    .local v4, "E":I
    const/4 v6, 0x0

    #@39
    .line 205
    .local v6, "idx":I
    const/4 v8, 0x0

    #@3a
    .local v8, "j":I
    move v7, v6

    #@3b
    .end local v6    # "idx":I
    .local v7, "idx":I
    :goto_1
    const/4 v10, 0x4

    #@3c
    if-ge v8, v10, :cond_1

    #@3e
    .line 209
    shl-int/lit8 v10, v0, 0x5

    #@40
    ushr-int/lit8 v11, v0, 0x1b

    #@42
    or-int/2addr v10, v11

    #@43
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    #@46
    move-result v11

    #@47
    add-int/2addr v10, v11

    #@48
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@4a
    add-int/lit8 v6, v7, 0x1

    #@4c
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@4e
    add-int/2addr v10, v11

    #@4f
    const v11, 0x5a827999

    #@52
    add-int/2addr v10, v11

    #@53
    add-int/2addr v4, v10

    #@54
    .line 210
    shl-int/lit8 v10, v1, 0x1e

    #@56
    ushr-int/lit8 v11, v1, 0x2

    #@58
    or-int v1, v10, v11

    #@5a
    .line 212
    shl-int/lit8 v10, v4, 0x5

    #@5c
    ushr-int/lit8 v11, v4, 0x1b

    #@5e
    or-int/2addr v10, v11

    #@5f
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    #@62
    move-result v11

    #@63
    add-int/2addr v10, v11

    #@64
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@66
    add-int/lit8 v7, v6, 0x1

    #@68
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@6a
    add-int/2addr v10, v11

    #@6b
    const v11, 0x5a827999

    #@6e
    add-int/2addr v10, v11

    #@6f
    add-int/2addr v3, v10

    #@70
    .line 213
    shl-int/lit8 v10, v0, 0x1e

    #@72
    ushr-int/lit8 v11, v0, 0x2

    #@74
    or-int v0, v10, v11

    #@76
    .line 215
    shl-int/lit8 v10, v3, 0x5

    #@78
    ushr-int/lit8 v11, v3, 0x1b

    #@7a
    or-int/2addr v10, v11

    #@7b
    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    #@7e
    move-result v11

    #@7f
    add-int/2addr v10, v11

    #@80
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@82
    add-int/lit8 v6, v7, 0x1

    #@84
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@86
    add-int/2addr v10, v11

    #@87
    const v11, 0x5a827999

    #@8a
    add-int/2addr v10, v11

    #@8b
    add-int/2addr v2, v10

    #@8c
    .line 216
    shl-int/lit8 v10, v4, 0x1e

    #@8e
    ushr-int/lit8 v11, v4, 0x2

    #@90
    or-int v4, v10, v11

    #@92
    .line 218
    shl-int/lit8 v10, v2, 0x5

    #@94
    ushr-int/lit8 v11, v2, 0x1b

    #@96
    or-int/2addr v10, v11

    #@97
    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    #@9a
    move-result v11

    #@9b
    add-int/2addr v10, v11

    #@9c
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@9e
    add-int/lit8 v7, v6, 0x1

    #@a0
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@a2
    add-int/2addr v10, v11

    #@a3
    const v11, 0x5a827999

    #@a6
    add-int/2addr v10, v11

    #@a7
    add-int/2addr v1, v10

    #@a8
    .line 219
    shl-int/lit8 v10, v3, 0x1e

    #@aa
    ushr-int/lit8 v11, v3, 0x2

    #@ac
    or-int v3, v10, v11

    #@ae
    .line 221
    shl-int/lit8 v10, v1, 0x5

    #@b0
    ushr-int/lit8 v11, v1, 0x1b

    #@b2
    or-int/2addr v10, v11

    #@b3
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->f(III)I

    #@b6
    move-result v11

    #@b7
    add-int/2addr v10, v11

    #@b8
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@ba
    add-int/lit8 v6, v7, 0x1

    #@bc
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@be
    add-int/2addr v10, v11

    #@bf
    const v11, 0x5a827999

    #@c2
    add-int/2addr v10, v11

    #@c3
    add-int/2addr v0, v10

    #@c4
    .line 222
    shl-int/lit8 v10, v2, 0x1e

    #@c6
    ushr-int/lit8 v11, v2, 0x2

    #@c8
    or-int v2, v10, v11

    #@ca
    .line 205
    add-int/lit8 v8, v8, 0x1

    #@cc
    move v7, v6

    #@cd
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_1

    #@cf
    .line 228
    :cond_1
    const/4 v8, 0x0

    #@d0
    :goto_2
    const/4 v10, 0x4

    #@d1
    if-ge v8, v10, :cond_2

    #@d3
    .line 232
    shl-int/lit8 v10, v0, 0x5

    #@d5
    ushr-int/lit8 v11, v0, 0x1b

    #@d7
    or-int/2addr v10, v11

    #@d8
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@db
    move-result v11

    #@dc
    add-int/2addr v10, v11

    #@dd
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@df
    add-int/lit8 v6, v7, 0x1

    #@e1
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@e3
    add-int/2addr v10, v11

    #@e4
    const v11, 0x6ed9eba1

    #@e7
    add-int/2addr v10, v11

    #@e8
    add-int/2addr v4, v10

    #@e9
    .line 233
    shl-int/lit8 v10, v1, 0x1e

    #@eb
    ushr-int/lit8 v11, v1, 0x2

    #@ed
    or-int v1, v10, v11

    #@ef
    .line 235
    shl-int/lit8 v10, v4, 0x5

    #@f1
    ushr-int/lit8 v11, v4, 0x1b

    #@f3
    or-int/2addr v10, v11

    #@f4
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@f7
    move-result v11

    #@f8
    add-int/2addr v10, v11

    #@f9
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@fb
    add-int/lit8 v7, v6, 0x1

    #@fd
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@ff
    add-int/2addr v10, v11

    #@100
    const v11, 0x6ed9eba1

    #@103
    add-int/2addr v10, v11

    #@104
    add-int/2addr v3, v10

    #@105
    .line 236
    shl-int/lit8 v10, v0, 0x1e

    #@107
    ushr-int/lit8 v11, v0, 0x2

    #@109
    or-int v0, v10, v11

    #@10b
    .line 238
    shl-int/lit8 v10, v3, 0x5

    #@10d
    ushr-int/lit8 v11, v3, 0x1b

    #@10f
    or-int/2addr v10, v11

    #@110
    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@113
    move-result v11

    #@114
    add-int/2addr v10, v11

    #@115
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@117
    add-int/lit8 v6, v7, 0x1

    #@119
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@11b
    add-int/2addr v10, v11

    #@11c
    const v11, 0x6ed9eba1

    #@11f
    add-int/2addr v10, v11

    #@120
    add-int/2addr v2, v10

    #@121
    .line 239
    shl-int/lit8 v10, v4, 0x1e

    #@123
    ushr-int/lit8 v11, v4, 0x2

    #@125
    or-int v4, v10, v11

    #@127
    .line 241
    shl-int/lit8 v10, v2, 0x5

    #@129
    ushr-int/lit8 v11, v2, 0x1b

    #@12b
    or-int/2addr v10, v11

    #@12c
    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@12f
    move-result v11

    #@130
    add-int/2addr v10, v11

    #@131
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@133
    add-int/lit8 v7, v6, 0x1

    #@135
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@137
    add-int/2addr v10, v11

    #@138
    const v11, 0x6ed9eba1

    #@13b
    add-int/2addr v10, v11

    #@13c
    add-int/2addr v1, v10

    #@13d
    .line 242
    shl-int/lit8 v10, v3, 0x1e

    #@13f
    ushr-int/lit8 v11, v3, 0x2

    #@141
    or-int v3, v10, v11

    #@143
    .line 244
    shl-int/lit8 v10, v1, 0x5

    #@145
    ushr-int/lit8 v11, v1, 0x1b

    #@147
    or-int/2addr v10, v11

    #@148
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@14b
    move-result v11

    #@14c
    add-int/2addr v10, v11

    #@14d
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@14f
    add-int/lit8 v6, v7, 0x1

    #@151
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@153
    add-int/2addr v10, v11

    #@154
    const v11, 0x6ed9eba1

    #@157
    add-int/2addr v10, v11

    #@158
    add-int/2addr v0, v10

    #@159
    .line 245
    shl-int/lit8 v10, v2, 0x1e

    #@15b
    ushr-int/lit8 v11, v2, 0x2

    #@15d
    or-int v2, v10, v11

    #@15f
    .line 228
    add-int/lit8 v8, v8, 0x1

    #@161
    move v7, v6

    #@162
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_2

    #@164
    .line 251
    :cond_2
    const/4 v8, 0x0

    #@165
    :goto_3
    const/4 v10, 0x4

    #@166
    if-ge v8, v10, :cond_3

    #@168
    .line 255
    shl-int/lit8 v10, v0, 0x5

    #@16a
    ushr-int/lit8 v11, v0, 0x1b

    #@16c
    or-int/2addr v10, v11

    #@16d
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    #@170
    move-result v11

    #@171
    add-int/2addr v10, v11

    #@172
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@174
    add-int/lit8 v6, v7, 0x1

    #@176
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@178
    add-int/2addr v10, v11

    #@179
    const v11, -0x70e44324

    #@17c
    add-int/2addr v10, v11

    #@17d
    add-int/2addr v4, v10

    #@17e
    .line 256
    shl-int/lit8 v10, v1, 0x1e

    #@180
    ushr-int/lit8 v11, v1, 0x2

    #@182
    or-int v1, v10, v11

    #@184
    .line 258
    shl-int/lit8 v10, v4, 0x5

    #@186
    ushr-int/lit8 v11, v4, 0x1b

    #@188
    or-int/2addr v10, v11

    #@189
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    #@18c
    move-result v11

    #@18d
    add-int/2addr v10, v11

    #@18e
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@190
    add-int/lit8 v7, v6, 0x1

    #@192
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@194
    add-int/2addr v10, v11

    #@195
    const v11, -0x70e44324

    #@198
    add-int/2addr v10, v11

    #@199
    add-int/2addr v3, v10

    #@19a
    .line 259
    shl-int/lit8 v10, v0, 0x1e

    #@19c
    ushr-int/lit8 v11, v0, 0x2

    #@19e
    or-int v0, v10, v11

    #@1a0
    .line 261
    shl-int/lit8 v10, v3, 0x5

    #@1a2
    ushr-int/lit8 v11, v3, 0x1b

    #@1a4
    or-int/2addr v10, v11

    #@1a5
    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    #@1a8
    move-result v11

    #@1a9
    add-int/2addr v10, v11

    #@1aa
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@1ac
    add-int/lit8 v6, v7, 0x1

    #@1ae
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@1b0
    add-int/2addr v10, v11

    #@1b1
    const v11, -0x70e44324

    #@1b4
    add-int/2addr v10, v11

    #@1b5
    add-int/2addr v2, v10

    #@1b6
    .line 262
    shl-int/lit8 v10, v4, 0x1e

    #@1b8
    ushr-int/lit8 v11, v4, 0x2

    #@1ba
    or-int v4, v10, v11

    #@1bc
    .line 264
    shl-int/lit8 v10, v2, 0x5

    #@1be
    ushr-int/lit8 v11, v2, 0x1b

    #@1c0
    or-int/2addr v10, v11

    #@1c1
    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    #@1c4
    move-result v11

    #@1c5
    add-int/2addr v10, v11

    #@1c6
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@1c8
    add-int/lit8 v7, v6, 0x1

    #@1ca
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@1cc
    add-int/2addr v10, v11

    #@1cd
    const v11, -0x70e44324

    #@1d0
    add-int/2addr v10, v11

    #@1d1
    add-int/2addr v1, v10

    #@1d2
    .line 265
    shl-int/lit8 v10, v3, 0x1e

    #@1d4
    ushr-int/lit8 v11, v3, 0x2

    #@1d6
    or-int v3, v10, v11

    #@1d8
    .line 267
    shl-int/lit8 v10, v1, 0x5

    #@1da
    ushr-int/lit8 v11, v1, 0x1b

    #@1dc
    or-int/2addr v10, v11

    #@1dd
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->g(III)I

    #@1e0
    move-result v11

    #@1e1
    add-int/2addr v10, v11

    #@1e2
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@1e4
    add-int/lit8 v6, v7, 0x1

    #@1e6
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@1e8
    add-int/2addr v10, v11

    #@1e9
    const v11, -0x70e44324

    #@1ec
    add-int/2addr v10, v11

    #@1ed
    add-int/2addr v0, v10

    #@1ee
    .line 268
    shl-int/lit8 v10, v2, 0x1e

    #@1f0
    ushr-int/lit8 v11, v2, 0x2

    #@1f2
    or-int v2, v10, v11

    #@1f4
    .line 251
    add-int/lit8 v8, v8, 0x1

    #@1f6
    move v7, v6

    #@1f7
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_3

    #@1f9
    .line 274
    :cond_3
    const/4 v8, 0x0

    #@1fa
    :goto_4
    const/4 v10, 0x3

    #@1fb
    if-gt v8, v10, :cond_4

    #@1fd
    .line 278
    shl-int/lit8 v10, v0, 0x5

    #@1ff
    ushr-int/lit8 v11, v0, 0x1b

    #@201
    or-int/2addr v10, v11

    #@202
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@205
    move-result v11

    #@206
    add-int/2addr v10, v11

    #@207
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@209
    add-int/lit8 v6, v7, 0x1

    #@20b
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@20d
    add-int/2addr v10, v11

    #@20e
    const v11, -0x359d3e2a    # -3715189.5f

    #@211
    add-int/2addr v10, v11

    #@212
    add-int/2addr v4, v10

    #@213
    .line 279
    shl-int/lit8 v10, v1, 0x1e

    #@215
    ushr-int/lit8 v11, v1, 0x2

    #@217
    or-int v1, v10, v11

    #@219
    .line 281
    shl-int/lit8 v10, v4, 0x5

    #@21b
    ushr-int/lit8 v11, v4, 0x1b

    #@21d
    or-int/2addr v10, v11

    #@21e
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@221
    move-result v11

    #@222
    add-int/2addr v10, v11

    #@223
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@225
    add-int/lit8 v7, v6, 0x1

    #@227
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@229
    add-int/2addr v10, v11

    #@22a
    const v11, -0x359d3e2a    # -3715189.5f

    #@22d
    add-int/2addr v10, v11

    #@22e
    add-int/2addr v3, v10

    #@22f
    .line 282
    shl-int/lit8 v10, v0, 0x1e

    #@231
    ushr-int/lit8 v11, v0, 0x2

    #@233
    or-int v0, v10, v11

    #@235
    .line 284
    shl-int/lit8 v10, v3, 0x5

    #@237
    ushr-int/lit8 v11, v3, 0x1b

    #@239
    or-int/2addr v10, v11

    #@23a
    invoke-direct {p0, v4, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@23d
    move-result v11

    #@23e
    add-int/2addr v10, v11

    #@23f
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@241
    add-int/lit8 v6, v7, 0x1

    #@243
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@245
    add-int/2addr v10, v11

    #@246
    const v11, -0x359d3e2a    # -3715189.5f

    #@249
    add-int/2addr v10, v11

    #@24a
    add-int/2addr v2, v10

    #@24b
    .line 285
    shl-int/lit8 v10, v4, 0x1e

    #@24d
    ushr-int/lit8 v11, v4, 0x2

    #@24f
    or-int v4, v10, v11

    #@251
    .line 287
    shl-int/lit8 v10, v2, 0x5

    #@253
    ushr-int/lit8 v11, v2, 0x1b

    #@255
    or-int/2addr v10, v11

    #@256
    invoke-direct {p0, v3, v4, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@259
    move-result v11

    #@25a
    add-int/2addr v10, v11

    #@25b
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@25d
    add-int/lit8 v7, v6, 0x1

    #@25f
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    aget v11, v11, v6

    #@261
    add-int/2addr v10, v11

    #@262
    const v11, -0x359d3e2a    # -3715189.5f

    #@265
    add-int/2addr v10, v11

    #@266
    add-int/2addr v1, v10

    #@267
    .line 288
    shl-int/lit8 v10, v3, 0x1e

    #@269
    ushr-int/lit8 v11, v3, 0x2

    #@26b
    or-int v3, v10, v11

    #@26d
    .line 290
    shl-int/lit8 v10, v1, 0x5

    #@26f
    ushr-int/lit8 v11, v1, 0x1b

    #@271
    or-int/2addr v10, v11

    #@272
    invoke-direct {p0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->h(III)I

    #@275
    move-result v11

    #@276
    add-int/2addr v10, v11

    #@277
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@279
    add-int/lit8 v6, v7, 0x1

    #@27b
    .end local v7    # "idx":I
    .restart local v6    # "idx":I
    aget v11, v11, v7

    #@27d
    add-int/2addr v10, v11

    #@27e
    const v11, -0x359d3e2a    # -3715189.5f

    #@281
    add-int/2addr v10, v11

    #@282
    add-int/2addr v0, v10

    #@283
    .line 291
    shl-int/lit8 v10, v2, 0x1e

    #@285
    ushr-int/lit8 v11, v2, 0x2

    #@287
    or-int v2, v10, v11

    #@289
    .line 274
    add-int/lit8 v8, v8, 0x1

    #@28b
    move v7, v6

    #@28c
    .end local v6    # "idx":I
    .restart local v7    # "idx":I
    goto/16 :goto_4

    #@28e
    .line 295
    :cond_4
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@290
    add-int/2addr v10, v0

    #@291
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@293
    .line 296
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@295
    add-int/2addr v10, v1

    #@296
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@298
    .line 297
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@29a
    add-int/2addr v10, v2

    #@29b
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@29d
    .line 298
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@29f
    add-int/2addr v10, v3

    #@2a0
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@2a2
    .line 299
    iget v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@2a4
    add-int/2addr v10, v4

    #@2a5
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@2a7
    .line 304
    const/4 v10, 0x0

    #@2a8
    iput v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@2aa
    .line 305
    const/4 v5, 0x0

    #@2ab
    :goto_5
    const/16 v10, 0x10

    #@2ad
    if-ge v5, v10, :cond_5

    #@2af
    .line 307
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@2b1
    const/4 v11, 0x0

    #@2b2
    aput v11, v10, v5

    #@2b4
    .line 305
    add-int/lit8 v5, v5, 0x1

    #@2b6
    goto :goto_5

    #@2b7
    .line 180
    :cond_5
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    #@0
    .prologue
    const/16 v4, 0xe

    #@2
    .line 102
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@4
    if-le v0, v4, :cond_0

    #@6
    .line 104
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    #@9
    .line 107
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@b
    const/16 v1, 0x20

    #@d
    ushr-long v2, p1, v1

    #@f
    long-to-int v1, v2

    #@10
    aput v1, v0, v4

    #@12
    .line 108
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

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
    .line 100
    return-void
.end method

.method protected processWord([BI)V
    .locals 3
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    .line 87
    aget-byte v1, p1, p2

    #@2
    shl-int/lit8 v0, v1, 0x18

    #@4
    .line 88
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
    .line 89
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
    .line 90
    add-int/lit8 p2, p2, 0x1

    #@18
    aget-byte v1, p1, p2

    #@1a
    and-int/lit16 v1, v1, 0xff

    #@1c
    or-int/2addr v0, v1

    #@1d
    .line 91
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@1f
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@21
    aput v0, v1, v2

    #@23
    .line 93
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@25
    add-int/lit8 v1, v1, 0x1

    #@27
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@29
    const/16 v2, 0x10

    #@2b
    if-ne v1, v2, :cond_0

    #@2d
    .line 95
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->processBlock()V

    #@30
    .line 83
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 133
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    #@4
    .line 135
    const v1, 0x67452301

    #@7
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H1:I

    #@9
    .line 136
    const v1, -0x10325477

    #@c
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H2:I

    #@e
    .line 137
    const v1, -0x67452302

    #@11
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H3:I

    #@13
    .line 138
    const v1, 0x10325476

    #@16
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H4:I

    #@18
    .line 139
    const v1, -0x3c2d1e10

    #@1b
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->H5:I

    #@1d
    .line 141
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->xOff:I

    #@1f
    .line 142
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@22
    array-length v1, v1

    #@23
    if-eq v0, v1, :cond_0

    #@25
    .line 144
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->X:[I

    #@27
    aput v2, v1, v0

    #@29
    .line 142
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 131
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
    .line 318
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;

    #@3
    .line 320
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@6
    .line 321
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/SHA1Digest;)V

    #@9
    .line 316
    return-void
.end method
