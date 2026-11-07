.class public Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    sget-object v0, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .registers 2

    .line 54
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

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
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object p0

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/org/bouncycastle/util/Memoable;
    .registers 2

    .line 126
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object v0
.end method

.method protected blacklist cryptoServiceProperties()Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3

    const/16 v0, 0x100

    .line 148
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

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 95
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 96
    iget-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    add-int/lit8 p2, p2, 0x38

    invoke-static {v0, v1, p1, p2}, Lcom/android/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 98
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    const/16 p0, 0x40

    return p0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 75
    const-string p0, "SHA-512"

    return-object p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 0
    const/16 p0, 0x40

    return p0
.end method

.method public blacklist getEncodedState()[B
    .registers 3

    .line 138
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->getEncodedStateSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [B

    .line 139
    invoke-super {p0, v1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 141
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->purpose:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    int-to-byte p0, p0

    aput-byte p0, v1, v0

    return-object v1
.end method

.method public blacklist reset()V
    .registers 3

    .line 108
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    .line 114
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H1:J

    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    .line 115
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H2:J

    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    .line 116
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H3:J

    const-wide v0, -0x5ab00ac5a0e2c90fL

    .line 117
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H4:J

    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    .line 118
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H5:J

    const-wide v0, -0x64fa9773d4c193e1L

    .line 119
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H6:J

    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    .line 120
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H7:J

    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    .line 121
    iput-wide v0, p0, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->H8:J

    return-void
.end method

.method public blacklist reset(Lcom/android/org/bouncycastle/util/Memoable;)V
    .registers 2

    .line 131
    check-cast p1, Lcom/android/org/bouncycastle/crypto/digests/SHA512Digest;

    .line 133
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/digests/LongDigest;->copyIn(Lcom/android/org/bouncycastle/crypto/digests/LongDigest;)V

    return-void
.end method
