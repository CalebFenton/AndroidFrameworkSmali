.class public Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA384Digest.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4

    .line 66
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->values()[Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->restoreState([B)V

    .line 70
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 124
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;)V

    return-object v0
.end method

.method protected blacklist cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3

    const/16 v0, 0x100

    .line 146
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lcom/android/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/org/bouncycastle/crypto/Digest;ILcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    return-object p0
.end method

.method public blacklist doFinal([BI)I
    .registers 6

    .line 87
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->finish()V

    .line 89
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 90
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 91
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 92
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 93
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 94
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    add-int/lit8 p2, p2, 0x28

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 96
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;->reset()V

    const/16 p0, 0x30

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 75
    const-string p0, "SHA-384"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x30

    return p0
.end method

.method public blacklist getEncodedState()[B
    .registers 3

    .line 136
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->getEncodedStateSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 137
    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 139
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public blacklist reset()V
    .registers 3

    .line 106
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, -0x344462a23efa6128L    # -6.771107636816954E56

    .line 112
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const-wide v0, 0x629a292a367cd507L    # 9.641589608180943E166

    .line 113
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const-wide v0, -0x6ea6fea5cf8f22e9L    # -4.222163200156129E-225

    .line 114
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const-wide v0, 0x152fecd8f70e5939L

    .line 115
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const-wide v0, 0x67332667ffc00b31L    # 1.3331733573491853E189

    .line 116
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const-wide v0, -0x714bb57897a7eaefL    # -7.790218494879152E-238

    .line 117
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const-wide v0, -0x24f3d1f29b067059L    # -3.9066766103558855E130

    .line 118
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const-wide v0, 0x47b5481dbefa4fa4L    # 2.8288236605994657E37

    .line 119
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 129
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/SHA384Digest;

    .line 131
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method
