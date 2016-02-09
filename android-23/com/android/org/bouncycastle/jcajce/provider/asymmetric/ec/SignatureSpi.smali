.class public Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;
.super Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;
.source "SignatureSpi.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSAnone;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA224;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA256;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA384;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$ecDSA512;,
        Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi$StdDSAEncoder;
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V
    .locals 0
    .param p1, "digest"    # Lcom/android/org/bouncycastle/crypto/Digest;
    .param p2, "signer"    # Lcom/android/org/bouncycastle/crypto/DSA;
    .param p3, "encoder"    # Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;

    #@0
    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSABase;-><init>(Lcom/android/org/bouncycastle/crypto/Digest;Lcom/android/org/bouncycastle/crypto/DSA;Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/DSAEncoder;)V

    #@3
    .line 43
    return-void
.end method


# virtual methods
.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 61
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePrivateKeyParameter(Ljava/security/PrivateKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@4
    move-result-object v0

    #@5
    .line 63
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@7
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@a
    .line 65
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    #@c
    if-eqz v1, :cond_0

    #@e
    .line 67
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@10
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@12
    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->appRandom:Ljava/security/SecureRandom;

    #@14
    invoke-direct {v2, v0, v3}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;-><init>(Lcom/android/org/bouncycastle/crypto/CipherParameters;Ljava/security/SecureRandom;)V

    #@17
    invoke-interface {v1, v4, v2}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@1a
    .line 59
    :goto_0
    return-void

    #@1b
    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@1d
    invoke-interface {v1, v4, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@20
    goto :goto_0
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    #@0
    .prologue
    .line 51
    invoke-static {p1}, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/util/ECUtil;->generatePublicKeyParameter(Ljava/security/PublicKey;)Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    #@3
    move-result-object v0

    #@4
    .line 53
    .local v0, "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->digest:Lcom/android/org/bouncycastle/crypto/Digest;

    #@6
    invoke-interface {v1}, Lcom/android/org/bouncycastle/crypto/Digest;->reset()V

    #@9
    .line 54
    iget-object v1, p0, Lcom/android/org/bouncycastle/jcajce/provider/asymmetric/ec/SignatureSpi;->signer:Lcom/android/org/bouncycastle/crypto/DSA;

    #@b
    const/4 v2, 0x0

    #@c
    invoke-interface {v1, v2, v0}, Lcom/android/org/bouncycastle/crypto/DSA;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@f
    .line 49
    return-void
.end method
