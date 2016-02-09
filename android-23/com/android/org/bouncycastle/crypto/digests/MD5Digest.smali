.class public Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;
.source "MD5Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x10

.field private static final S11:I = 0x7

.field private static final S12:I = 0xc

.field private static final S13:I = 0x11

.field private static final S14:I = 0x16

.field private static final S21:I = 0x5

.field private static final S22:I = 0x9

.field private static final S23:I = 0xe

.field private static final S24:I = 0x14

.field private static final S31:I = 0x4

.field private static final S32:I = 0xb

.field private static final S33:I = 0x10

.field private static final S34:I = 0x17

.field private static final S41:I = 0x6

.field private static final S42:I = 0xa

.field private static final S43:I = 0xf

.field private static final S44:I = 0x15


# instance fields
.field private H1:I

.field private H2:I

.field private H3:I

.field private H4:I

.field private X:[I

.field private xOff:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>()V

    #@3
    .line 16
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@9
    .line 24
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    #@c
    .line 22
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V
    .locals 1
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@0
    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@3
    .line 16
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [I

    #@7
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@9
    .line 35
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    #@c
    .line 31
    return-void
.end method

.method private F(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 183
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

.method private G(III)I
    .locals 2
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 191
    and-int v0, p1, p3

    #@2
    not-int v1, p3

    #@3
    and-int/2addr v1, p2

    #@4
    or-int/2addr v0, v1

    #@5
    return v0
.end method

.method private H(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 199
    xor-int v0, p1, p2

    #@2
    xor-int/2addr v0, p3

    #@3
    return v0
.end method

.method private K(III)I
    .locals 1
    .param p1, "u"    # I
    .param p2, "v"    # I
    .param p3, "w"    # I

    #@0
    .prologue
    .line 207
    not-int v0, p3

    #@1
    or-int/2addr v0, p1

    #@2
    xor-int/2addr v0, p2

    #@3
    return v0
.end method

.method private copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V
    .locals 4
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 40
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;)V

    #@4
    .line 42
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@6
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@8
    .line 43
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@a
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@c
    .line 44
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@e
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@10
    .line 45
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@12
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@14
    .line 47
    iget-object v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@16
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@18
    iget-object v2, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@1a
    array-length v2, v2

    #@1b
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@1e
    .line 48
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@20
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@22
    .line 38
    return-void
.end method

.method private rotateLeft(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "n"    # I

    #@0
    .prologue
    .line 172
    shl-int v0, p1, p2

    #@2
    rsub-int/lit8 v1, p2, 0x20

    #@4
    ushr-int v1, p1, v1

    #@6
    or-int/2addr v0, v1

    #@7
    return v0
.end method

.method private unpackWord(I[BI)V
    .locals 2
    .param p1, "word"    # I
    .param p2, "out"    # [B
    .param p3, "outOff"    # I

    #@0
    .prologue
    .line 91
    int-to-byte v0, p1

    #@1
    aput-byte v0, p2, p3

    #@3
    .line 92
    add-int/lit8 v0, p3, 0x1

    #@5
    ushr-int/lit8 v1, p1, 0x8

    #@7
    int-to-byte v1, v1

    #@8
    aput-byte v1, p2, v0

    #@a
    .line 93
    add-int/lit8 v0, p3, 0x2

    #@c
    ushr-int/lit8 v1, p1, 0x10

    #@e
    int-to-byte v1, v1

    #@f
    aput-byte v1, p2, v0

    #@11
    .line 94
    add-int/lit8 v0, p3, 0x3

    #@13
    ushr-int/lit8 v1, p1, 0x18

    #@15
    int-to-byte v1, v1

    #@16
    aput-byte v1, p2, v0

    #@18
    .line 89
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    #@0
    .prologue
    .line 314
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    #@5
    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->finish()V

    #@3
    .line 103
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@5
    invoke-direct {p0, v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    #@8
    .line 104
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@a
    add-int/lit8 v1, p2, 0x4

    #@c
    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    #@f
    .line 105
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@11
    add-int/lit8 v1, p2, 0x8

    #@13
    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    #@16
    .line 106
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@18
    add-int/lit8 v1, p2, 0xc

    #@1a
    invoke-direct {p0, v0, p1, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->unpackWord(I[BI)V

    #@1d
    .line 108
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->reset()V

    #@20
    .line 110
    const/16 v0, 0x10

    #@22
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 53
    const-string/jumbo v0, "MD5"

    #@3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 58
    const/16 v0, 0x10

    #@2
    return v0
.end method

.method protected processBlock()V
    .locals 13

    #@0
    .prologue
    const/16 v12, 0x9

    #@2
    const/4 v11, 0x7

    #@3
    const/4 v10, 0x6

    #@4
    const/4 v9, 0x5

    #@5
    const/4 v8, 0x4

    #@6
    .line 212
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@8
    .line 213
    .local v0, "a":I
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@a
    .line 214
    .local v1, "b":I
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@c
    .line 215
    .local v2, "c":I
    iget v3, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@e
    .line 220
    .local v3, "d":I
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@11
    move-result v5

    #@12
    add-int/2addr v5, v0

    #@13
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@15
    const/4 v7, 0x0

    #@16
    aget v6, v6, v7

    #@18
    add-int/2addr v5, v6

    #@19
    const v6, -0x28955b88

    #@1c
    add-int/2addr v5, v6

    #@1d
    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@20
    move-result v5

    #@21
    add-int v0, v5, v1

    #@23
    .line 221
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@26
    move-result v5

    #@27
    add-int/2addr v5, v3

    #@28
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@2a
    const/4 v7, 0x1

    #@2b
    aget v6, v6, v7

    #@2d
    add-int/2addr v5, v6

    #@2e
    const v6, -0x173848aa

    #@31
    add-int/2addr v5, v6

    #@32
    const/16 v6, 0xc

    #@34
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@37
    move-result v5

    #@38
    add-int v3, v5, v0

    #@3a
    .line 222
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@3d
    move-result v5

    #@3e
    add-int/2addr v5, v2

    #@3f
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@41
    const/4 v7, 0x2

    #@42
    aget v6, v6, v7

    #@44
    add-int/2addr v5, v6

    #@45
    const v6, 0x242070db

    #@48
    add-int/2addr v5, v6

    #@49
    const/16 v6, 0x11

    #@4b
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@4e
    move-result v5

    #@4f
    add-int v2, v5, v3

    #@51
    .line 223
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@54
    move-result v5

    #@55
    add-int/2addr v5, v1

    #@56
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@58
    const/4 v7, 0x3

    #@59
    aget v6, v6, v7

    #@5b
    add-int/2addr v5, v6

    #@5c
    const v6, -0x3e423112

    #@5f
    add-int/2addr v5, v6

    #@60
    const/16 v6, 0x16

    #@62
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@65
    move-result v5

    #@66
    add-int v1, v5, v2

    #@68
    .line 224
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@6b
    move-result v5

    #@6c
    add-int/2addr v5, v0

    #@6d
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@6f
    aget v6, v6, v8

    #@71
    add-int/2addr v5, v6

    #@72
    const v6, -0xa83f051

    #@75
    add-int/2addr v5, v6

    #@76
    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@79
    move-result v5

    #@7a
    add-int v0, v5, v1

    #@7c
    .line 225
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@7f
    move-result v5

    #@80
    add-int/2addr v5, v3

    #@81
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@83
    aget v6, v6, v9

    #@85
    add-int/2addr v5, v6

    #@86
    const v6, 0x4787c62a

    #@89
    add-int/2addr v5, v6

    #@8a
    const/16 v6, 0xc

    #@8c
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@8f
    move-result v5

    #@90
    add-int v3, v5, v0

    #@92
    .line 226
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@95
    move-result v5

    #@96
    add-int/2addr v5, v2

    #@97
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@99
    aget v6, v6, v10

    #@9b
    add-int/2addr v5, v6

    #@9c
    const v6, -0x57cfb9ed

    #@9f
    add-int/2addr v5, v6

    #@a0
    const/16 v6, 0x11

    #@a2
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@a5
    move-result v5

    #@a6
    add-int v2, v5, v3

    #@a8
    .line 227
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@ab
    move-result v5

    #@ac
    add-int/2addr v5, v1

    #@ad
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@af
    aget v6, v6, v11

    #@b1
    add-int/2addr v5, v6

    #@b2
    const v6, -0x2b96aff

    #@b5
    add-int/2addr v5, v6

    #@b6
    const/16 v6, 0x16

    #@b8
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@bb
    move-result v5

    #@bc
    add-int v1, v5, v2

    #@be
    .line 228
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@c1
    move-result v5

    #@c2
    add-int/2addr v5, v0

    #@c3
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@c5
    const/16 v7, 0x8

    #@c7
    aget v6, v6, v7

    #@c9
    add-int/2addr v5, v6

    #@ca
    const v6, 0x698098d8

    #@cd
    add-int/2addr v5, v6

    #@ce
    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@d1
    move-result v5

    #@d2
    add-int v0, v5, v1

    #@d4
    .line 229
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@d7
    move-result v5

    #@d8
    add-int/2addr v5, v3

    #@d9
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@db
    aget v6, v6, v12

    #@dd
    add-int/2addr v5, v6

    #@de
    const v6, -0x74bb0851

    #@e1
    add-int/2addr v5, v6

    #@e2
    const/16 v6, 0xc

    #@e4
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@e7
    move-result v5

    #@e8
    add-int v3, v5, v0

    #@ea
    .line 230
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@ed
    move-result v5

    #@ee
    add-int/2addr v5, v2

    #@ef
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@f1
    const/16 v7, 0xa

    #@f3
    aget v6, v6, v7

    #@f5
    add-int/2addr v5, v6

    #@f6
    const v6, -0xa44f

    #@f9
    add-int/2addr v5, v6

    #@fa
    const/16 v6, 0x11

    #@fc
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@ff
    move-result v5

    #@100
    add-int v2, v5, v3

    #@102
    .line 231
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@105
    move-result v5

    #@106
    add-int/2addr v5, v1

    #@107
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@109
    const/16 v7, 0xb

    #@10b
    aget v6, v6, v7

    #@10d
    add-int/2addr v5, v6

    #@10e
    const v6, -0x76a32842

    #@111
    add-int/2addr v5, v6

    #@112
    const/16 v6, 0x16

    #@114
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@117
    move-result v5

    #@118
    add-int v1, v5, v2

    #@11a
    .line 232
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@11d
    move-result v5

    #@11e
    add-int/2addr v5, v0

    #@11f
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@121
    const/16 v7, 0xc

    #@123
    aget v6, v6, v7

    #@125
    add-int/2addr v5, v6

    #@126
    const v6, 0x6b901122

    #@129
    add-int/2addr v5, v6

    #@12a
    invoke-direct {p0, v5, v11}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@12d
    move-result v5

    #@12e
    add-int v0, v5, v1

    #@130
    .line 233
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@133
    move-result v5

    #@134
    add-int/2addr v5, v3

    #@135
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@137
    const/16 v7, 0xd

    #@139
    aget v6, v6, v7

    #@13b
    add-int/2addr v5, v6

    #@13c
    const v6, -0x2678e6d

    #@13f
    add-int/2addr v5, v6

    #@140
    const/16 v6, 0xc

    #@142
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@145
    move-result v5

    #@146
    add-int v3, v5, v0

    #@148
    .line 234
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@14b
    move-result v5

    #@14c
    add-int/2addr v5, v2

    #@14d
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@14f
    const/16 v7, 0xe

    #@151
    aget v6, v6, v7

    #@153
    add-int/2addr v5, v6

    #@154
    const v6, -0x5986bc72

    #@157
    add-int/2addr v5, v6

    #@158
    const/16 v6, 0x11

    #@15a
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@15d
    move-result v5

    #@15e
    add-int v2, v5, v3

    #@160
    .line 235
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->F(III)I

    #@163
    move-result v5

    #@164
    add-int/2addr v5, v1

    #@165
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@167
    const/16 v7, 0xf

    #@169
    aget v6, v6, v7

    #@16b
    add-int/2addr v5, v6

    #@16c
    const v6, 0x49b40821

    #@16f
    add-int/2addr v5, v6

    #@170
    const/16 v6, 0x16

    #@172
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@175
    move-result v5

    #@176
    add-int v1, v5, v2

    #@178
    .line 240
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@17b
    move-result v5

    #@17c
    add-int/2addr v5, v0

    #@17d
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@17f
    const/4 v7, 0x1

    #@180
    aget v6, v6, v7

    #@182
    add-int/2addr v5, v6

    #@183
    const v6, -0x9e1da9e

    #@186
    add-int/2addr v5, v6

    #@187
    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@18a
    move-result v5

    #@18b
    add-int v0, v5, v1

    #@18d
    .line 241
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@190
    move-result v5

    #@191
    add-int/2addr v5, v3

    #@192
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@194
    aget v6, v6, v10

    #@196
    add-int/2addr v5, v6

    #@197
    const v6, -0x3fbf4cc0

    #@19a
    add-int/2addr v5, v6

    #@19b
    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@19e
    move-result v5

    #@19f
    add-int v3, v5, v0

    #@1a1
    .line 242
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@1a4
    move-result v5

    #@1a5
    add-int/2addr v5, v2

    #@1a6
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@1a8
    const/16 v7, 0xb

    #@1aa
    aget v6, v6, v7

    #@1ac
    add-int/2addr v5, v6

    #@1ad
    const v6, 0x265e5a51

    #@1b0
    add-int/2addr v5, v6

    #@1b1
    const/16 v6, 0xe

    #@1b3
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@1b6
    move-result v5

    #@1b7
    add-int v2, v5, v3

    #@1b9
    .line 243
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@1bc
    move-result v5

    #@1bd
    add-int/2addr v5, v1

    #@1be
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@1c0
    const/4 v7, 0x0

    #@1c1
    aget v6, v6, v7

    #@1c3
    add-int/2addr v5, v6

    #@1c4
    const v6, -0x16493856

    #@1c7
    add-int/2addr v5, v6

    #@1c8
    const/16 v6, 0x14

    #@1ca
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@1cd
    move-result v5

    #@1ce
    add-int v1, v5, v2

    #@1d0
    .line 244
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@1d3
    move-result v5

    #@1d4
    add-int/2addr v5, v0

    #@1d5
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@1d7
    aget v6, v6, v9

    #@1d9
    add-int/2addr v5, v6

    #@1da
    const v6, -0x29d0efa3

    #@1dd
    add-int/2addr v5, v6

    #@1de
    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@1e1
    move-result v5

    #@1e2
    add-int v0, v5, v1

    #@1e4
    .line 245
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@1e7
    move-result v5

    #@1e8
    add-int/2addr v5, v3

    #@1e9
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@1eb
    const/16 v7, 0xa

    #@1ed
    aget v6, v6, v7

    #@1ef
    add-int/2addr v5, v6

    #@1f0
    const v6, 0x2441453

    #@1f3
    add-int/2addr v5, v6

    #@1f4
    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@1f7
    move-result v5

    #@1f8
    add-int v3, v5, v0

    #@1fa
    .line 246
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@1fd
    move-result v5

    #@1fe
    add-int/2addr v5, v2

    #@1ff
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@201
    const/16 v7, 0xf

    #@203
    aget v6, v6, v7

    #@205
    add-int/2addr v5, v6

    #@206
    const v6, -0x275e197f

    #@209
    add-int/2addr v5, v6

    #@20a
    const/16 v6, 0xe

    #@20c
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@20f
    move-result v5

    #@210
    add-int v2, v5, v3

    #@212
    .line 247
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@215
    move-result v5

    #@216
    add-int/2addr v5, v1

    #@217
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@219
    aget v6, v6, v8

    #@21b
    add-int/2addr v5, v6

    #@21c
    const v6, -0x182c0438

    #@21f
    add-int/2addr v5, v6

    #@220
    const/16 v6, 0x14

    #@222
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@225
    move-result v5

    #@226
    add-int v1, v5, v2

    #@228
    .line 248
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@22b
    move-result v5

    #@22c
    add-int/2addr v5, v0

    #@22d
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@22f
    aget v6, v6, v12

    #@231
    add-int/2addr v5, v6

    #@232
    const v6, 0x21e1cde6

    #@235
    add-int/2addr v5, v6

    #@236
    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@239
    move-result v5

    #@23a
    add-int v0, v5, v1

    #@23c
    .line 249
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@23f
    move-result v5

    #@240
    add-int/2addr v5, v3

    #@241
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@243
    const/16 v7, 0xe

    #@245
    aget v6, v6, v7

    #@247
    add-int/2addr v5, v6

    #@248
    const v6, -0x3cc8f82a

    #@24b
    add-int/2addr v5, v6

    #@24c
    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@24f
    move-result v5

    #@250
    add-int v3, v5, v0

    #@252
    .line 250
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@255
    move-result v5

    #@256
    add-int/2addr v5, v2

    #@257
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@259
    const/4 v7, 0x3

    #@25a
    aget v6, v6, v7

    #@25c
    add-int/2addr v5, v6

    #@25d
    const v6, -0xb2af279

    #@260
    add-int/2addr v5, v6

    #@261
    const/16 v6, 0xe

    #@263
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@266
    move-result v5

    #@267
    add-int v2, v5, v3

    #@269
    .line 251
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@26c
    move-result v5

    #@26d
    add-int/2addr v5, v1

    #@26e
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@270
    const/16 v7, 0x8

    #@272
    aget v6, v6, v7

    #@274
    add-int/2addr v5, v6

    #@275
    const v6, 0x455a14ed

    #@278
    add-int/2addr v5, v6

    #@279
    const/16 v6, 0x14

    #@27b
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@27e
    move-result v5

    #@27f
    add-int v1, v5, v2

    #@281
    .line 252
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@284
    move-result v5

    #@285
    add-int/2addr v5, v0

    #@286
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@288
    const/16 v7, 0xd

    #@28a
    aget v6, v6, v7

    #@28c
    add-int/2addr v5, v6

    #@28d
    const v6, -0x561c16fb

    #@290
    add-int/2addr v5, v6

    #@291
    invoke-direct {p0, v5, v9}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@294
    move-result v5

    #@295
    add-int v0, v5, v1

    #@297
    .line 253
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@29a
    move-result v5

    #@29b
    add-int/2addr v5, v3

    #@29c
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@29e
    const/4 v7, 0x2

    #@29f
    aget v6, v6, v7

    #@2a1
    add-int/2addr v5, v6

    #@2a2
    const v6, -0x3105c08

    #@2a5
    add-int/2addr v5, v6

    #@2a6
    invoke-direct {p0, v5, v12}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@2a9
    move-result v5

    #@2aa
    add-int v3, v5, v0

    #@2ac
    .line 254
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@2af
    move-result v5

    #@2b0
    add-int/2addr v5, v2

    #@2b1
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@2b3
    aget v6, v6, v11

    #@2b5
    add-int/2addr v5, v6

    #@2b6
    const v6, 0x676f02d9

    #@2b9
    add-int/2addr v5, v6

    #@2ba
    const/16 v6, 0xe

    #@2bc
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@2bf
    move-result v5

    #@2c0
    add-int v2, v5, v3

    #@2c2
    .line 255
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->G(III)I

    #@2c5
    move-result v5

    #@2c6
    add-int/2addr v5, v1

    #@2c7
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@2c9
    const/16 v7, 0xc

    #@2cb
    aget v6, v6, v7

    #@2cd
    add-int/2addr v5, v6

    #@2ce
    const v6, -0x72d5b376

    #@2d1
    add-int/2addr v5, v6

    #@2d2
    const/16 v6, 0x14

    #@2d4
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@2d7
    move-result v5

    #@2d8
    add-int v1, v5, v2

    #@2da
    .line 260
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@2dd
    move-result v5

    #@2de
    add-int/2addr v5, v0

    #@2df
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@2e1
    aget v6, v6, v9

    #@2e3
    add-int/2addr v5, v6

    #@2e4
    const v6, -0x5c6be

    #@2e7
    add-int/2addr v5, v6

    #@2e8
    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@2eb
    move-result v5

    #@2ec
    add-int v0, v5, v1

    #@2ee
    .line 261
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@2f1
    move-result v5

    #@2f2
    add-int/2addr v5, v3

    #@2f3
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@2f5
    const/16 v7, 0x8

    #@2f7
    aget v6, v6, v7

    #@2f9
    add-int/2addr v5, v6

    #@2fa
    const v6, -0x788e097f

    #@2fd
    add-int/2addr v5, v6

    #@2fe
    const/16 v6, 0xb

    #@300
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@303
    move-result v5

    #@304
    add-int v3, v5, v0

    #@306
    .line 262
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@309
    move-result v5

    #@30a
    add-int/2addr v5, v2

    #@30b
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@30d
    const/16 v7, 0xb

    #@30f
    aget v6, v6, v7

    #@311
    add-int/2addr v5, v6

    #@312
    const v6, 0x6d9d6122

    #@315
    add-int/2addr v5, v6

    #@316
    const/16 v6, 0x10

    #@318
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@31b
    move-result v5

    #@31c
    add-int v2, v5, v3

    #@31e
    .line 263
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@321
    move-result v5

    #@322
    add-int/2addr v5, v1

    #@323
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@325
    const/16 v7, 0xe

    #@327
    aget v6, v6, v7

    #@329
    add-int/2addr v5, v6

    #@32a
    const v6, -0x21ac7f4

    #@32d
    add-int/2addr v5, v6

    #@32e
    const/16 v6, 0x17

    #@330
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@333
    move-result v5

    #@334
    add-int v1, v5, v2

    #@336
    .line 264
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@339
    move-result v5

    #@33a
    add-int/2addr v5, v0

    #@33b
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@33d
    const/4 v7, 0x1

    #@33e
    aget v6, v6, v7

    #@340
    add-int/2addr v5, v6

    #@341
    const v6, -0x5b4115bc

    #@344
    add-int/2addr v5, v6

    #@345
    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@348
    move-result v5

    #@349
    add-int v0, v5, v1

    #@34b
    .line 265
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@34e
    move-result v5

    #@34f
    add-int/2addr v5, v3

    #@350
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@352
    aget v6, v6, v8

    #@354
    add-int/2addr v5, v6

    #@355
    const v6, 0x4bdecfa9    # 2.9204306E7f

    #@358
    add-int/2addr v5, v6

    #@359
    const/16 v6, 0xb

    #@35b
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@35e
    move-result v5

    #@35f
    add-int v3, v5, v0

    #@361
    .line 266
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@364
    move-result v5

    #@365
    add-int/2addr v5, v2

    #@366
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@368
    aget v6, v6, v11

    #@36a
    add-int/2addr v5, v6

    #@36b
    const v6, -0x944b4a0

    #@36e
    add-int/2addr v5, v6

    #@36f
    const/16 v6, 0x10

    #@371
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@374
    move-result v5

    #@375
    add-int v2, v5, v3

    #@377
    .line 267
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@37a
    move-result v5

    #@37b
    add-int/2addr v5, v1

    #@37c
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@37e
    const/16 v7, 0xa

    #@380
    aget v6, v6, v7

    #@382
    add-int/2addr v5, v6

    #@383
    const v6, -0x41404390

    #@386
    add-int/2addr v5, v6

    #@387
    const/16 v6, 0x17

    #@389
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@38c
    move-result v5

    #@38d
    add-int v1, v5, v2

    #@38f
    .line 268
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@392
    move-result v5

    #@393
    add-int/2addr v5, v0

    #@394
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@396
    const/16 v7, 0xd

    #@398
    aget v6, v6, v7

    #@39a
    add-int/2addr v5, v6

    #@39b
    const v6, 0x289b7ec6

    #@39e
    add-int/2addr v5, v6

    #@39f
    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@3a2
    move-result v5

    #@3a3
    add-int v0, v5, v1

    #@3a5
    .line 269
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@3a8
    move-result v5

    #@3a9
    add-int/2addr v5, v3

    #@3aa
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@3ac
    const/4 v7, 0x0

    #@3ad
    aget v6, v6, v7

    #@3af
    add-int/2addr v5, v6

    #@3b0
    const v6, -0x155ed806

    #@3b3
    add-int/2addr v5, v6

    #@3b4
    const/16 v6, 0xb

    #@3b6
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@3b9
    move-result v5

    #@3ba
    add-int v3, v5, v0

    #@3bc
    .line 270
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@3bf
    move-result v5

    #@3c0
    add-int/2addr v5, v2

    #@3c1
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@3c3
    const/4 v7, 0x3

    #@3c4
    aget v6, v6, v7

    #@3c6
    add-int/2addr v5, v6

    #@3c7
    const v6, -0x2b10cf7b

    #@3ca
    add-int/2addr v5, v6

    #@3cb
    const/16 v6, 0x10

    #@3cd
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@3d0
    move-result v5

    #@3d1
    add-int v2, v5, v3

    #@3d3
    .line 271
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@3d6
    move-result v5

    #@3d7
    add-int/2addr v5, v1

    #@3d8
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@3da
    aget v6, v6, v10

    #@3dc
    add-int/2addr v5, v6

    #@3dd
    const v6, 0x4881d05    # 3.2000097E-36f

    #@3e0
    add-int/2addr v5, v6

    #@3e1
    const/16 v6, 0x17

    #@3e3
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@3e6
    move-result v5

    #@3e7
    add-int v1, v5, v2

    #@3e9
    .line 272
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@3ec
    move-result v5

    #@3ed
    add-int/2addr v5, v0

    #@3ee
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@3f0
    aget v6, v6, v12

    #@3f2
    add-int/2addr v5, v6

    #@3f3
    const v6, -0x262b2fc7

    #@3f6
    add-int/2addr v5, v6

    #@3f7
    invoke-direct {p0, v5, v8}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@3fa
    move-result v5

    #@3fb
    add-int v0, v5, v1

    #@3fd
    .line 273
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@400
    move-result v5

    #@401
    add-int/2addr v5, v3

    #@402
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@404
    const/16 v7, 0xc

    #@406
    aget v6, v6, v7

    #@408
    add-int/2addr v5, v6

    #@409
    const v6, -0x1924661b

    #@40c
    add-int/2addr v5, v6

    #@40d
    const/16 v6, 0xb

    #@40f
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@412
    move-result v5

    #@413
    add-int v3, v5, v0

    #@415
    .line 274
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@418
    move-result v5

    #@419
    add-int/2addr v5, v2

    #@41a
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@41c
    const/16 v7, 0xf

    #@41e
    aget v6, v6, v7

    #@420
    add-int/2addr v5, v6

    #@421
    const v6, 0x1fa27cf8

    #@424
    add-int/2addr v5, v6

    #@425
    const/16 v6, 0x10

    #@427
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@42a
    move-result v5

    #@42b
    add-int v2, v5, v3

    #@42d
    .line 275
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H(III)I

    #@430
    move-result v5

    #@431
    add-int/2addr v5, v1

    #@432
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@434
    const/4 v7, 0x2

    #@435
    aget v6, v6, v7

    #@437
    add-int/2addr v5, v6

    #@438
    const v6, -0x3b53a99b

    #@43b
    add-int/2addr v5, v6

    #@43c
    const/16 v6, 0x17

    #@43e
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@441
    move-result v5

    #@442
    add-int v1, v5, v2

    #@444
    .line 280
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@447
    move-result v5

    #@448
    add-int/2addr v5, v0

    #@449
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@44b
    const/4 v7, 0x0

    #@44c
    aget v6, v6, v7

    #@44e
    add-int/2addr v5, v6

    #@44f
    const v6, -0xbd6ddbc

    #@452
    add-int/2addr v5, v6

    #@453
    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@456
    move-result v5

    #@457
    add-int v0, v5, v1

    #@459
    .line 281
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@45c
    move-result v5

    #@45d
    add-int/2addr v5, v3

    #@45e
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@460
    aget v6, v6, v11

    #@462
    add-int/2addr v5, v6

    #@463
    const v6, 0x432aff97

    #@466
    add-int/2addr v5, v6

    #@467
    const/16 v6, 0xa

    #@469
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@46c
    move-result v5

    #@46d
    add-int v3, v5, v0

    #@46f
    .line 282
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@472
    move-result v5

    #@473
    add-int/2addr v5, v2

    #@474
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@476
    const/16 v7, 0xe

    #@478
    aget v6, v6, v7

    #@47a
    add-int/2addr v5, v6

    #@47b
    const v6, -0x546bdc59

    #@47e
    add-int/2addr v5, v6

    #@47f
    const/16 v6, 0xf

    #@481
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@484
    move-result v5

    #@485
    add-int v2, v5, v3

    #@487
    .line 283
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@48a
    move-result v5

    #@48b
    add-int/2addr v5, v1

    #@48c
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@48e
    aget v6, v6, v9

    #@490
    add-int/2addr v5, v6

    #@491
    const v6, -0x36c5fc7

    #@494
    add-int/2addr v5, v6

    #@495
    const/16 v6, 0x15

    #@497
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@49a
    move-result v5

    #@49b
    add-int v1, v5, v2

    #@49d
    .line 284
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@4a0
    move-result v5

    #@4a1
    add-int/2addr v5, v0

    #@4a2
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@4a4
    const/16 v7, 0xc

    #@4a6
    aget v6, v6, v7

    #@4a8
    add-int/2addr v5, v6

    #@4a9
    const v6, 0x655b59c3

    #@4ac
    add-int/2addr v5, v6

    #@4ad
    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@4b0
    move-result v5

    #@4b1
    add-int v0, v5, v1

    #@4b3
    .line 285
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@4b6
    move-result v5

    #@4b7
    add-int/2addr v5, v3

    #@4b8
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@4ba
    const/4 v7, 0x3

    #@4bb
    aget v6, v6, v7

    #@4bd
    add-int/2addr v5, v6

    #@4be
    const v6, -0x70f3336e

    #@4c1
    add-int/2addr v5, v6

    #@4c2
    const/16 v6, 0xa

    #@4c4
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@4c7
    move-result v5

    #@4c8
    add-int v3, v5, v0

    #@4ca
    .line 286
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@4cd
    move-result v5

    #@4ce
    add-int/2addr v5, v2

    #@4cf
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@4d1
    const/16 v7, 0xa

    #@4d3
    aget v6, v6, v7

    #@4d5
    add-int/2addr v5, v6

    #@4d6
    const v6, -0x100b83

    #@4d9
    add-int/2addr v5, v6

    #@4da
    const/16 v6, 0xf

    #@4dc
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@4df
    move-result v5

    #@4e0
    add-int v2, v5, v3

    #@4e2
    .line 287
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@4e5
    move-result v5

    #@4e6
    add-int/2addr v5, v1

    #@4e7
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@4e9
    const/4 v7, 0x1

    #@4ea
    aget v6, v6, v7

    #@4ec
    add-int/2addr v5, v6

    #@4ed
    const v6, -0x7a7ba22f

    #@4f0
    add-int/2addr v5, v6

    #@4f1
    const/16 v6, 0x15

    #@4f3
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@4f6
    move-result v5

    #@4f7
    add-int v1, v5, v2

    #@4f9
    .line 288
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@4fc
    move-result v5

    #@4fd
    add-int/2addr v5, v0

    #@4fe
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@500
    const/16 v7, 0x8

    #@502
    aget v6, v6, v7

    #@504
    add-int/2addr v5, v6

    #@505
    const v6, 0x6fa87e4f

    #@508
    add-int/2addr v5, v6

    #@509
    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@50c
    move-result v5

    #@50d
    add-int v0, v5, v1

    #@50f
    .line 289
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@512
    move-result v5

    #@513
    add-int/2addr v5, v3

    #@514
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@516
    const/16 v7, 0xf

    #@518
    aget v6, v6, v7

    #@51a
    add-int/2addr v5, v6

    #@51b
    const v6, -0x1d31920

    #@51e
    add-int/2addr v5, v6

    #@51f
    const/16 v6, 0xa

    #@521
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@524
    move-result v5

    #@525
    add-int v3, v5, v0

    #@527
    .line 290
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@52a
    move-result v5

    #@52b
    add-int/2addr v5, v2

    #@52c
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@52e
    aget v6, v6, v10

    #@530
    add-int/2addr v5, v6

    #@531
    const v6, -0x5cfebcec

    #@534
    add-int/2addr v5, v6

    #@535
    const/16 v6, 0xf

    #@537
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@53a
    move-result v5

    #@53b
    add-int v2, v5, v3

    #@53d
    .line 291
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@540
    move-result v5

    #@541
    add-int/2addr v5, v1

    #@542
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@544
    const/16 v7, 0xd

    #@546
    aget v6, v6, v7

    #@548
    add-int/2addr v5, v6

    #@549
    const v6, 0x4e0811a1    # 5.7071418E8f

    #@54c
    add-int/2addr v5, v6

    #@54d
    const/16 v6, 0x15

    #@54f
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@552
    move-result v5

    #@553
    add-int v1, v5, v2

    #@555
    .line 292
    invoke-direct {p0, v1, v2, v3}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@558
    move-result v5

    #@559
    add-int/2addr v5, v0

    #@55a
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@55c
    aget v6, v6, v8

    #@55e
    add-int/2addr v5, v6

    #@55f
    const v6, -0x8ac817e

    #@562
    add-int/2addr v5, v6

    #@563
    invoke-direct {p0, v5, v10}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@566
    move-result v5

    #@567
    add-int v0, v5, v1

    #@569
    .line 293
    invoke-direct {p0, v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@56c
    move-result v5

    #@56d
    add-int/2addr v5, v3

    #@56e
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@570
    const/16 v7, 0xb

    #@572
    aget v6, v6, v7

    #@574
    add-int/2addr v5, v6

    #@575
    const v6, -0x42c50dcb

    #@578
    add-int/2addr v5, v6

    #@579
    const/16 v6, 0xa

    #@57b
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@57e
    move-result v5

    #@57f
    add-int v3, v5, v0

    #@581
    .line 294
    invoke-direct {p0, v3, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@584
    move-result v5

    #@585
    add-int/2addr v5, v2

    #@586
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@588
    const/4 v7, 0x2

    #@589
    aget v6, v6, v7

    #@58b
    add-int/2addr v5, v6

    #@58c
    const v6, 0x2ad7d2bb

    #@58f
    add-int/2addr v5, v6

    #@590
    const/16 v6, 0xf

    #@592
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@595
    move-result v5

    #@596
    add-int v2, v5, v3

    #@598
    .line 295
    invoke-direct {p0, v2, v3, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->K(III)I

    #@59b
    move-result v5

    #@59c
    add-int/2addr v5, v1

    #@59d
    iget-object v6, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@59f
    aget v6, v6, v12

    #@5a1
    add-int/2addr v5, v6

    #@5a2
    const v6, -0x14792c6f

    #@5a5
    add-int/2addr v5, v6

    #@5a6
    const/16 v6, 0x15

    #@5a8
    invoke-direct {p0, v5, v6}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->rotateLeft(II)I

    #@5ab
    move-result v5

    #@5ac
    add-int v1, v5, v2

    #@5ae
    .line 297
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@5b0
    add-int/2addr v5, v0

    #@5b1
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@5b3
    .line 298
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@5b5
    add-int/2addr v5, v1

    #@5b6
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@5b8
    .line 299
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@5ba
    add-int/2addr v5, v2

    #@5bb
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@5bd
    .line 300
    iget v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@5bf
    add-int/2addr v5, v3

    #@5c0
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@5c2
    .line 305
    const/4 v5, 0x0

    #@5c3
    iput v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@5c5
    .line 306
    const/4 v4, 0x0

    #@5c6
    .local v4, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@5c8
    array-length v5, v5

    #@5c9
    if-eq v4, v5, :cond_0

    #@5cb
    .line 308
    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@5cd
    const/4 v6, 0x0

    #@5ce
    aput v6, v5, v4

    #@5d0
    .line 306
    add-int/lit8 v4, v4, 0x1

    #@5d2
    goto :goto_0

    #@5d3
    .line 210
    :cond_0
    return-void
.end method

.method protected processLength(J)V
    .locals 5
    .param p1, "bitLength"    # J

    #@0
    .prologue
    const/16 v4, 0xe

    #@2
    .line 77
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@4
    if-le v0, v4, :cond_0

    #@6
    .line 79
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    #@9
    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@b
    const-wide/16 v2, -0x1

    #@d
    and-long/2addr v2, p1

    #@e
    long-to-int v1, v2

    #@f
    aput v1, v0, v4

    #@11
    .line 83
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@13
    const/16 v1, 0x20

    #@15
    ushr-long v2, p1, v1

    #@17
    long-to-int v1, v2

    #@18
    const/16 v2, 0xf

    #@1a
    aput v1, v0, v2

    #@1c
    .line 75
    return-void
.end method

.method protected processWord([BI)V
    .locals 4
    .param p1, "in"    # [B
    .param p2, "inOff"    # I

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@2
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@4
    add-int/lit8 v2, v1, 0x1

    #@6
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@8
    aget-byte v2, p1, p2

    #@a
    and-int/lit16 v2, v2, 0xff

    #@c
    add-int/lit8 v3, p2, 0x1

    #@e
    aget-byte v3, p1, v3

    #@10
    and-int/lit16 v3, v3, 0xff

    #@12
    shl-int/lit8 v3, v3, 0x8

    #@14
    or-int/2addr v2, v3

    #@15
    .line 66
    add-int/lit8 v3, p2, 0x2

    #@17
    aget-byte v3, p1, v3

    #@19
    and-int/lit16 v3, v3, 0xff

    #@1b
    shl-int/lit8 v3, v3, 0x10

    #@1d
    .line 65
    or-int/2addr v2, v3

    #@1e
    .line 66
    add-int/lit8 v3, p2, 0x3

    #@20
    aget-byte v3, p1, v3

    #@22
    and-int/lit16 v3, v3, 0xff

    #@24
    shl-int/lit8 v3, v3, 0x18

    #@26
    .line 65
    or-int/2addr v2, v3

    #@27
    aput v2, v0, v1

    #@29
    .line 68
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@2b
    const/16 v1, 0x10

    #@2d
    if-ne v0, v1, :cond_0

    #@2f
    .line 70
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->processBlock()V

    #@32
    .line 63
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 118
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/GeneralDigest;->reset()V

    #@4
    .line 120
    const v1, 0x67452301

    #@7
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H1:I

    #@9
    .line 121
    const v1, -0x10325477

    #@c
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H2:I

    #@e
    .line 122
    const v1, -0x67452302

    #@11
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H3:I

    #@13
    .line 123
    const v1, 0x10325476

    #@16
    iput v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->H4:I

    #@18
    .line 125
    iput v2, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->xOff:I

    #@1a
    .line 127
    const/4 v0, 0x0

    #@1b
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@1d
    array-length v1, v1

    #@1e
    if-eq v0, v1, :cond_0

    #@20
    .line 129
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->X:[I

    #@22
    aput v2, v1, v0

    #@24
    .line 127
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 116
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
    .line 319
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;

    #@3
    .line 321
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/MD5Digest;)V

    #@6
    .line 317
    return-void
.end method
