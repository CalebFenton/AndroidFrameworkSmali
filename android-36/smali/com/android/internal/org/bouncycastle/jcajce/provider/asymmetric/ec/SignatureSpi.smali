.class public Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.super Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA512;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA384;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA256;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA224;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSAnone;,
        Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA;
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;)V
    .registers 4
    .param p1, "digest"    # Lcom/android/internal/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/internal/org/bouncycastle/crypto/DSAExt;
    .param p3, "encoding"    # Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;-><init>(Lcom/android/internal/org/bouncycastle/crypto/Digest;Lcom/android/internal/org/bouncycastle/crypto/DSAExt;Lcom/android/internal/org/bouncycastle/crypto/signers/DSAEncoding;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected whitelist test-api engineGetParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .line 71
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whitelist test-api engineInitSign(Ljava/security/PrivateKey;)V
    .registers 7
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 55
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 57
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 59
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 61
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    new-instance v3, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    invoke-direct {v3, v0, v4}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    invoke-interface {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    goto :goto_20

    .line 65
    :cond_1b
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 67
    :goto_20
    return-void
.end method

.method protected whitelist test-api engineInitVerify(Ljava/security/PublicKey;)V
    .registers 5
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/ECUtils;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    .line 47
    .local v0, "param":Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->digest:Lcom/android/internal/org/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/Digest;->reset()V

    .line 48
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lcom/android/internal/org/bouncycastle/crypto/DSAExt;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Lcom/android/internal/org/bouncycastle/crypto/DSAExt;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 49
    return-void
.end method
