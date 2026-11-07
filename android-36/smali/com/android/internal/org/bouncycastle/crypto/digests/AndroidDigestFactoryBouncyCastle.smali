.class public Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryBouncyCastle;
.super Ljava/lang/Object;
.source "AndroidDigestFactoryBouncyCastle.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/digests/AndroidDigestFactoryInterface;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getMD5()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 27
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/MD5Digest;-><init>()V

    return-object v0
.end method

.method public blacklist getSHA1()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 30
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA1Digest;-><init>()V

    return-object v0
.end method

.method public blacklist getSHA224()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 33
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA224Digest;-><init>()V

    return-object v0
.end method

.method public blacklist getSHA256()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 36
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    return-object v0
.end method

.method public blacklist getSHA384()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 39
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    return-object v0
.end method

.method public blacklist getSHA512()Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .registers 2

    .line 42
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    return-object v0
.end method
