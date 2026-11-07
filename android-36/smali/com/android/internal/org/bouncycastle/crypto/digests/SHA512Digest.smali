.class public Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;
.super Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;
.source "SHA512Digest.java"


# static fields
.field private static final blacklist DIGEST_LENGTH:I = 0x40


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 33
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 34
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V
    .registers 3
    .param p1, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 41
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 46
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;)V
    .registers 3
    .param p1, "t"    # Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    .line 54
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 57
    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 4
    .param p1, "encodedState"    # [B

    .line 66
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->values()[Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->restoreState([B)V

    .line 70
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 71
    return-void
.end method


# virtual methods
.method public blacklist copy()Lcom/android/internal/org/bouncycastle/util/Memoable;
    .registers 2

    .line 126
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0, p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;-><init>(Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;)V

    return-object v0
.end method

.method protected blacklist cryptoServiceProperties()Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 3

    .line 148
    const/16 v0, 0x100

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;ILcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public blacklist doFinal([BI)I
    .registers 6
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 87
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->finish()V

    .line 89
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    invoke-static {v0, v1, p1, p2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 90
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 91
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    add-int/lit8 v2, p2, 0x10

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 92
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    add-int/lit8 v2, p2, 0x18

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 93
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    add-int/lit8 v2, p2, 0x20

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 94
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    add-int/lit8 v2, p2, 0x28

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 95
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    add-int/lit8 v2, p2, 0x30

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 96
    iget-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    add-int/lit8 v2, p2, 0x38

    invoke-static {v0, v1, p1, v2}, Lcom/android/internal/org/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->reset()V

    .line 100
    const/16 v0, 0x40

    return v0
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "SHA-512"

    return-object v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 80
    const/16 v0, 0x40

    return v0
.end method

.method public blacklist getEncodedState()[B
    .registers 4

    .line 138
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->getEncodedStateSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 139
    .local v0, "encoded":[B
    invoke-super {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->populateState([B)V

    .line 141
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->purpose:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 143
    return-object v0
.end method

.method public blacklist reset()V
    .registers 3

    .line 108
    invoke-super {p0}, Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;->reset()V

    .line 114
    const-wide v0, 0x6a09e667f3bcc908L    # 6.344059688352415E202

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H1:J

    .line 115
    const-wide v0, -0x4498517a7b3558c5L    # -1.5671250923562117E-22

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H2:J

    .line 116
    const-wide v0, 0x3c6ef372fe94f82bL    # 1.342284505169847E-17

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H3:J

    .line 117
    const-wide v0, -0x5ab00ac5a0e2c90fL

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H4:J

    .line 118
    const-wide v0, 0x510e527fade682d1L    # 2.876275032471325E82

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H5:J

    .line 119
    const-wide v0, -0x64fa9773d4c193e1L

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H6:J

    .line 120
    const-wide v0, 0x1f83d9abfb41bd6bL    # 7.229011495228878E-157

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H7:J

    .line 121
    const-wide v0, 0x5be0cd19137e2179L    # 3.816167663240759E134

    iput-wide v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->H8:J

    .line 122
    return-void
.end method

.method public blacklist reset(Lcom/android/internal/org/bouncycastle/util/Memoable;)V
    .registers 3
    .param p1, "other"    # Lcom/android/internal/org/bouncycastle/util/Memoable;

    .line 131
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    .line 133
    .local v0, "d":Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;
    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;->copyIn(Lcom/android/internal/org/bouncycastle/crypto/digests/LongDigest;)V

    .line 134
    return-void
.end method
