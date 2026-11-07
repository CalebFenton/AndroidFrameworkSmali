.class public abstract Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;
.super Ljava/security/SignatureSpi;
.source "DSABase.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;
.implements Lcom/android/internal/org/bouncycastle/asn1/x509/X509ObjectIdentifiers;


# instance fields
.field protected blacklist digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

.field protected blacklist encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

.field protected blacklist signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/internal/org/bouncycastle/crypto/DSAExt;
    .param p3, "encoding"    # Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    .line 30
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    .line 32
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    .line 33
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    .line 34
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "param"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 103
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSetParameter(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;

    .line 93
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "engineSetParameter unsupported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api engineSign()[B
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 55
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 56
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 60
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->generateSignature([B)[Ljava/math/BigInteger;

    move-result-object v1

    .line 62
    .local v1, "sig":[Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v4

    aget-object v2, v1, v2

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-interface {v3, v4, v2, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;->encode(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v2
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_26

    return-object v2

    .line 64
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_26
    move-exception v1

    .line 66
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected whitelist test-api engineUpdate(B)V
    .registers 3
    .param p1, "b"    # B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update(B)V

    .line 41
    return-void
.end method

.method protected whitelist test-api engineUpdate([BII)V
    .registers 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->update([BII)V

    .line 50
    return-void
.end method

.method protected whitelist test-api engineVerify([B)Z
    .registers 7
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    .line 75
    .local v0, "hash":[B
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->doFinal([BI)I

    .line 80
    :try_start_e
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->encoding:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v3}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v1, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;->decode(Ljava/math/BigInteger;[B)[Ljava/math/BigInteger;

    move-result-object v1
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1a} :catch_27

    .line 85
    .local v1, "sig":[Ljava/math/BigInteger;
    nop

    .line 87
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    aget-object v2, v1, v2

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-interface {v3, v0, v2, v4}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z

    move-result v2

    return v2

    .line 82
    .end local v1    # "sig":[Ljava/math/BigInteger;
    :catch_27
    move-exception v1

    .line 84
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "error decoding signature bytes."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
