.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;
.super Ljava/security/MessageDigest;
.source "BCMessageDigest.java"


# instance fields
.field protected blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field protected blacklist digestSize:I


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;)V
    .registers 3
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 23
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/MessageDigest;-><init>(Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 26
    invoke-interface {p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    .line 27
    return-void
.end method


# virtual methods
.method public whitelist test-api engineDigest([BII)I
    .registers 6
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/DigestException;
        }
    .end annotation

    .line 76
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    if-lt p3, v0, :cond_1a

    .line 78
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    if-lt v0, v1, :cond_12

    .line 81
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 83
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return v0

    .line 79
    :cond_12
    new-instance v0, Ljava/security/DigestException;

    const-string v1, "insufficient space in the output buffer to store the digest"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1a
    new-instance v0, Ljava/security/DigestException;

    const-string/jumbo v1, "partial digests not returned"

    invoke-direct {v0, v1}, Ljava/security/DigestException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api engineDigest()[B
    .registers 4

    .line 67
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    new-array v0, v0, [B

    .line 69
    .local v0, "digestBytes":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 71
    return-object v0
.end method

.method public whitelist test-api engineGetDigestLength()I
    .registers 2

    .line 62
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digestSize:I

    return v0
.end method

.method public whitelist test-api engineReset()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 44
    return-void
.end method

.method public whitelist test-api engineUpdate(B)V
    .registers 3
    .param p1, "input"    # B

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 50
    return-void
.end method

.method public whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .line 57
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/digest/BCMessageDigest;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 58
    return-void
.end method
