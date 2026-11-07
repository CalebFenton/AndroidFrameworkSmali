.class public Lcom/android/org/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/DSAExt;


# instance fields
.field private final blacklist kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private blacklist key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    return-void
.end method

.method private blacklist calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .registers 5

    .line 160
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    const/4 v1, 0x1

    if-lt p0, v0, :cond_10

    .line 162
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0

    .line 166
    :cond_10
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x8

    new-array p1, p0, [B

    const/4 v0, 0x0

    .line 168
    invoke-static {p2, v0, p1, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    new-instance p0, Ljava/math/BigInteger;

    invoke-direct {p0, v1, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object p0
.end method

.method private blacklist getRandomizer(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5

    const/4 p0, 0x7

    .line 184
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    const-wide/16 v0, 0x80

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist generateSignature([B)[Ljava/math/BigInteger;
    .registers 8

    .line 93
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 95
    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 96
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast v3, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    move-result-object v3

    .line 98
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v1, v3, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_2b

    .line 104
    :cond_24
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {p1, v1, v4}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 107
    :goto_2b
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object p1

    .line 110
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    invoke-direct {p0, v1, v5}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->getRandomizer(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v4, p0, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 112
    invoke-static {v1, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    const/4 v0, 0x2

    .line 116
    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    return-object v0
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 5

    if-eqz p1, :cond_1a

    .line 56
    instance-of v0, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_15

    .line 58
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 60
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    .line 61
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p2

    goto :goto_1f

    .line 65
    :cond_15
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    goto :goto_1e

    .line 70
    :cond_1a
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    :goto_1e
    const/4 p2, 0x0

    .line 73
    :goto_1f
    const-string v0, "DSA"

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-static {v0, v1, p1}, Lcom/android/org/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;Z)Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    if-eqz p1, :cond_36

    .line 75
    iget-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result p1

    if-nez p1, :cond_36

    const/4 p1, 0x1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    invoke-virtual {p0, p1, p2}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method protected blacklist initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .registers 3

    if-eqz p1, :cond_7

    .line 176
    invoke-static {p2}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 9

    .line 129
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    .line 131
    invoke-direct {p0, v1, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object p1

    const-wide/16 v2, 0x0

    .line 132
    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .line 134
    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    const/4 v4, 0x0

    if-gez v3, :cond_6c

    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gtz v3, :cond_22

    goto :goto_6c

    .line 139
    :cond_22
    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_6c

    invoke-virtual {v1, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gtz v2, :cond_2f

    goto :goto_6c

    .line 144
    :cond_2f
    invoke-static {v1, p3}, Lcom/android/org/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 146
    invoke-virtual {p1, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 147
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p3

    .line 149
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v2

    .line 150
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 151
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    check-cast p0, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p3, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 153
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 155
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_6c
    :goto_6c
    return v4
.end method
