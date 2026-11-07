.class public Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;
.super Ljava/lang/Object;
.source "DHBasicAgreement.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/BasicAgreement;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 26
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist calculateAgreement(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)Ljava/math/BigInteger;
    .registers 8
    .param p1, "pubKey"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 69
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    .line 71
    .local v0, "pub":Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    .line 76
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 78
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object v2

    .line 79
    .local v2, "peerY":Ljava/math/BigInteger;
    if-eqz v2, :cond_4a

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-lez v3, :cond_4a

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_4a

    .line 84
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 85
    .local v3, "result":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 90
    return-object v3

    .line 87
    :cond_42
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Shared key can\'t be 1"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 81
    .end local v3    # "result":Ljava/math/BigInteger;
    :cond_4a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Diffie-Hellman public key is weak"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 73
    .end local v1    # "p":Ljava/math/BigInteger;
    .end local v2    # "peerY":Ljava/math/BigInteger;
    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Diffie-Hellman public key has wrong parameters."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist getFieldSize()I
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 36
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_f

    .line 38
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 39
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 40
    .local v0, "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    goto :goto_12

    .line 43
    .end local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :cond_f
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;

    .line 46
    .restart local v0    # "kParam":Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
    :goto_12
    instance-of v1, v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    if-eqz v1, :cond_2f

    .line 51
    move-object v1, v0

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    .line 52
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->dhParams:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 54
    const-string v1, "DHB"

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/agreement/DHBasicAgreement;->key:Lcom/android/internal/org/bouncycastle/crypto/params/DHPrivateKeyParameters;

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 55
    return-void

    .line 48
    :cond_2f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "DHEngine expects DHPrivateKeyParameters"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
