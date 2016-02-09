.class public abstract Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lcom/android/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected digest:Lcom/android/org/bouncycastle/crypto/Digest;

.field protected encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

.field protected signer:Lcom/android/org/bouncycastle/crypto/DSA;


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .locals 0
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/org/bouncycastle/crypto/DSA;
    .param p3, "encoder"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@5
    .line 27
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@7
    .line 28
    iput-object p3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    #@9
    .line 24
    return-void
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "param"    # Ljava/lang/String;

    #@0
    .prologue
    .line 110
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 101
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    #@0
    .prologue
    .line 91
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    const-string/jumbo v1, "engineSetParameter unsupported"

    #@5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    #@8
    throw v0
.end method

.method protected engineSign()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 50
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v3

    #@7
    new-array v1, v3, [B

    #@9
    .line 52
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 56
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@10
    invoke-interface {v3, v1}, Lcom/android/org/bouncycastle/crypto/DSA;->generateSignature([B)[Ljava/math/BigInteger;

    #@13
    move-result-object v2

    #@14
    .line 58
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    #@16
    const/4 v4, 0x0

    #@17
    aget-object v4, v2, v4

    #@19
    const/4 v5, 0x1

    #@1a
    aget-object v5, v2, v5

    #@1c
    invoke-interface {v3, v4, v5}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v3

    #@20
    return-object v3

    #@21
    .line 61
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@22
    .line 62
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    #@24
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    #@27
    move-result-object v4

    #@28
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v3
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1}, Lcom/android/org/bouncycastle/crypto/Digest;->update(B)V

    #@5
    .line 33
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@2
    invoke-interface {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/Digest;->update([BII)V

    #@5
    .line 42
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 6
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 70
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@3
    invoke-interface {v3}, Lcom/android/org/bouncycastle/crypto/Digest;->getDigestSize()I

    #@6
    move-result v3

    #@7
    new-array v1, v3, [B

    #@9
    .line 72
    .local v1, "hash":[B
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@b
    invoke-interface {v3, v1, v4}, Lcom/android/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    #@e
    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoder:Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    #@10
    invoke-interface {v3, p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;->decode([B)[Ljava/math/BigInteger;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@13
    move-result-object v2

    #@14
    .line 85
    .local v2, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@16
    aget-object v4, v2, v4

    #@18
    const/4 v5, 0x1

    #@19
    aget-object v5, v2, v5

    #@1b
    invoke-interface {v3, v1, v4, v5}, Lcom/android/org/bouncycastle/crypto/DSA;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    #@1e
    move-result v3

    #@1f
    return v3

    #@20
    .line 81
    .end local v2    # "sig":[Ljava/math/BigInteger;
    :catch_0
    move-exception v0

    #@21
    .line 82
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/SignatureException;

    #@23
    const-string/jumbo v4, "error decoding signature bytes."

    #@26
    invoke-direct {v3, v4}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    #@29
    throw v3
.end method
