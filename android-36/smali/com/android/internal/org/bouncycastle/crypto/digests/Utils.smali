.class Lcom/android/internal/org/bouncycastle/crypto/digests/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;ILcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 6
    .param p0, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "prfBitsOfSecurity"    # I
    .param p2, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2, p2}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultPropertiesWithPRF;-><init>(IILjava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method

.method static blacklist getDefaultProperties(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;
    .registers 5
    .param p0, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p1, "purpose"    # Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    .line 12
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    invoke-interface {p0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/digests/Utils$DefaultProperties;-><init>(ILjava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    return-object v0
.end method
