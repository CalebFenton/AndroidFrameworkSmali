.class public Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;
    }
.end annotation


# instance fields
.field private final blacklist byteSize:I

.field private final blacklist delegate:Ljava/security/MessageDigest;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "byteSize"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    :try_start_3
    const-string v0, "AndroidOpenSSL"

    invoke-static {p1, v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    .line 38
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_d} :catch_f

    .line 41
    nop

    .line 42
    return-void

    .line 39
    :catch_f
    move-exception v0

    .line 40
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public blacklist doFinal([BI)I
    .registers 5
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    array-length v1, p1

    sub-int/2addr v1, p2

    invoke-virtual {v0, p1, p2, v1}, Ljava/security/MessageDigest;->digest([BII)I

    move-result v0
    :try_end_8
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_8} :catch_9

    return v0

    .line 71
    :catch_9
    move-exception v0

    .line 72
    .local v0, "e":Ljava/security/DigestException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getAlgorithmName()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getByteLength()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I

    return v0
.end method

.method public blacklist getDigestSize()I
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    return v0
.end method

.method public blacklist reset()V
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    .line 58
    return-void
.end method

.method public blacklist update(B)V
    .registers 3
    .param p1, "in"    # B

    .line 61
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    .line 62
    return-void
.end method

.method public blacklist update([BII)V
    .registers 5
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    .line 65
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 66
    return-void
.end method
