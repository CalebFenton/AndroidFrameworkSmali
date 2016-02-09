.class public Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# static fields
.field private static final DIGEST_LENGTH:I = 0x30


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

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .locals 0
    .param p1, "t"    # Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

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
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->restoreState([B)V

    #@6
    .line 39
    return-void
.end method


# virtual methods
.method public copy()Lcom/android/org/bouncycastle/util/Memoable;
    .locals 1

    #@0
    .prologue
    .line 95
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    #@2
    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->finish()V

    #@3
    .line 60
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    #@5
    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@8
    .line 61
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    #@a
    add-int/lit8 v2, p2, 0x8

    #@c
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@f
    .line 62
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    #@11
    add-int/lit8 v2, p2, 0x10

    #@13
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@16
    .line 63
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    #@18
    add-int/lit8 v2, p2, 0x18

    #@1a
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@1d
    .line 64
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    #@1f
    add-int/lit8 v2, p2, 0x20

    #@21
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@24
    .line 65
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    #@26
    add-int/lit8 v2, p2, 0x28

    #@28
    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    #@2b
    .line 67
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    #@2e
    .line 69
    const/16 v0, 0x30

    #@30
    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 46
    const-string/jumbo v0, "SHA-384"

    #@3
    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 51
    const/16 v0, 0x30

    #@2
    return v0
.end method

.method public getEncodedState()[B
    .locals 2

    #@0
    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->getEncodedStateSize()I

    #@3
    move-result v1

    #@4
    new-array v0, v1, [B

    #@6
    .line 108
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    #@9
    .line 109
    return-object v0
.end method

.method public reset()V
    .locals 2

    #@0
    .prologue
    .line 77
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    #@3
    .line 83
    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    #@8
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H1:J

    #@a
    .line 84
    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    #@f
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H2:J

    #@11
    .line 85
    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    #@16
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H3:J

    #@18
    .line 86
    const-wide v0, 0x152fecd8f70e5939L

    #@1d
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H4:J

    #@1f
    .line 87
    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    #@24
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H5:J

    #@26
    .line 88
    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    #@2b
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H6:J

    #@2d
    .line 89
    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    #@32
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H7:J

    #@34
    .line 90
    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    #@39
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->H8:J

    #@3b
    .line 75
    return-void
.end method

.method public reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .locals 1
    .param p1, "other"    # Lcom/android/org/bouncycastle/util/Memoable;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 100
    check-cast v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    #@3
    .line 102
    .local v0, "d":Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
    invoke-super {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    #@6
    .line 98
    return-void
.end method
