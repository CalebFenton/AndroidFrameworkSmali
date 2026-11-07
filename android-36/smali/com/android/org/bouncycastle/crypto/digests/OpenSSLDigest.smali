.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;


# instance fields
.field private final blacklist byteSize:I

.field private final blacklist delegate:Ljava/security/MessageDigest;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_3
    const-string v0, "AndroidOpenSSL"

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    .line 38
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 40
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 4

    .line 70
    :try_start_0
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0, p1, p2, v0}, Ljava/security/MessageDigest;->digest([BII)I

    move-result p0
    :try_end_8
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 1

    .line 45
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getByteLength()I
    .registers 1

    .line 53
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I

    return p0
.end method

.method public blacklist getDigestSize()I
    .registers 1

    .line 49
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result p0

    return p0
.end method

.method public blacklist reset()V
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0}, Ljava/security/MessageDigest;->reset()V

    return-void
.end method

.method public blacklist update(B)V
    .registers 2

    .line 61
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public blacklist update([BII)V
    .registers 4

    .line 65
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {p0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
