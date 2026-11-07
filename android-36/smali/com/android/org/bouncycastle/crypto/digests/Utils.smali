.class abstract Lcom/android/org/bouncycastle/crypto/digests/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method static blacklist getDefaultProperties(Lcom/android/org/bouncycastle/crypto/Digest;ILcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lcom/android/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p1, p0, p2}, Lcom/android/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;-><init>(IILjava/lang/String;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method
