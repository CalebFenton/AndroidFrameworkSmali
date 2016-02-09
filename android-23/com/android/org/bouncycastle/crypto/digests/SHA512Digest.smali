.class public Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    #@3
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .locals 0
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    #@0
    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    #@3
    .line 34
    return-void
.end method

.method public constructor <init>([B)V
    .locals 0
    .param p1, "encodedState"    # [B

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>()V

    #@3
    .line 41
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->restoreState([B)V

    #@6
    .line 39
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    #@0
    .prologue
    .line 97
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V

    #@5
    return-object v0
.end method

.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    #@3
    .line 60
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    #@5
    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@8
    .line 61
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    #@a
    add-int/lit8 v2, p2, 0x8

    #@c
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@f
    .line 62
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    #@11
    add-int/lit8 v2, p2, 0x10

    #@13
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@16
    .line 63
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    #@18
    add-int/lit8 v2, p2, 0x18

    #@1a
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@1d
    .line 64
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    #@1f
    add-int/lit8 v2, p2, 0x20

    #@21
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@24
    .line 65
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    #@26
    add-int/lit8 v2, p2, 0x28

    #@28
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@2b
    .line 66
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    #@2d
    add-int/lit8 v2, p2, 0x30

    #@2f
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@32
    .line 67
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    #@34
    add-int/lit8 v2, p2, 0x38

    #@36
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@39
    .line 69
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    #@3c
    .line 71
    const/16 v0, 0x40

    #@3e
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "SHA-512"

    #@3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 51
    const/16 v0, 0x40

    #@2
    return v0
.end method

.method public getEncodedState()[B
    .locals 2

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->getEncodedStateSize()I

    #@3
    move-result v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 110
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    #@9
    .line 111
    return-object v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 79
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    #@3
    .line 85
    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    #@8
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    #@a
    .line 86
    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    #@f
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    #@11
    .line 87
    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    #@16
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    #@18
    .line 88
    const-wide v0, -0x5ab00ac5a0e2c90fL

    #@1d
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    #@1f
    .line 89
    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    #@24
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    #@26
    .line 90
    const-wide v0, -0x64fa9773d4c193e1L

    #@2b
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    #@2d
    .line 91
    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    #@32
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    #@34
    .line 92
    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    #@39
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    #@3b
    .line 77
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 102
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    #@3
    .line 104
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    #@6
    .line 100
    return-void
.end method
