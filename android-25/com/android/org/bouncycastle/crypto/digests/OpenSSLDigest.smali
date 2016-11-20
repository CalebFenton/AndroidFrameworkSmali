.class public Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;
.super Ljava/lang/Object;
.source "OpenSSLDigest.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$MD5;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA1;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA224;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA256;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA384;,
        Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest$SHA512;
    }
.end annotation


# instance fields
.field private final byteSize:I

.field private final delegate:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "byteSize"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    :try_start_0
    const-string/jumbo v1, "AndroidOpenSSL"

    #@6
    invoke-static {p1, v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/MessageDigest;

    #@9
    move-result-object v1

    #@a
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@c
    .line 36
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    .line 33
    return-void

    #@f
    .line 37
    :catch_0
    move-exception v0

    #@10
    .line 38
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    #@12
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@15
    throw v1
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3
    .param p1, "out"    # [B
    .param p2, "outOff"    # I

    #@0
    .prologue
    .line 68
    :try_start_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@2
    array-length v2, p1

    #@3
    sub-int/2addr v2, p2

    #@4
    invoke-virtual {v1, p1, p2, v2}, Ljava/security/MessageDigest;->digest([BII)I
    :try_end_0
    .catch Ljava/security/DigestException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    move-result v1

    #@8
    return v1

    #@9
    .line 69
    :catch_0
    move-exception v0

    #@a
    .line 70
    .local v0, "e":Ljava/security/DigestException;
    new-instance v1, Ljava/lang/RuntimeException;

    #@c
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    #@f
    throw v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    #@0
    .prologue
    .line 51
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->byteSize:I

    #@2
    return v0
.end method

.method public getDigestSize()I
    .locals 1

    #@0
    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public reset()V
    .locals 1

    #@0
    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    #@5
    .line 54
    return-void
.end method

.method public update(B)V
    .locals 1
    .param p1, "in"    # B

    #@0
    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    #@5
    .line 58
    return-void
.end method

.method public update([BII)V
    .locals 1
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "len"    # I

    #@0
    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/digests/OpenSSLDigest;->delegate:Ljava/security/MessageDigest;

    #@2
    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    #@5
    .line 62
    return-void
.end method
