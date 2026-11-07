.class public Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;
.super Ljava/lang/Object;
.source "RSABlindedEngine.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 23
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    return-void
.end method

.method private blacklist processInput(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 11
    .param p1, "input"    # Ljava/math/BigInteger;

    .line 121
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_41

    .line 123
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 125
    .local v0, "crtKey":Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    .line 126
    .local v1, "e":Ljava/math/BigInteger;
    if-eqz v1, :cond_41

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    .line 130
    .local v2, "m":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v4, v5}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v3

    .line 131
    .local v3, "r":Ljava/math/BigInteger;
    invoke-virtual {v3, v1, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 132
    .local v4, "blind":Ljava/math/BigInteger;
    invoke-static {v2, v3}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 134
    .local v5, "unblind":Ljava/math/BigInteger;
    invoke-virtual {v4, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 135
    .local v6, "blindedInput":Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v7, v6}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 136
    .local v7, "blindedResult":Ljava/math/BigInteger;
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    return-object v8

    .line 140
    .end local v0    # "crtKey":Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v1    # "e":Ljava/math/BigInteger;
    .end local v2    # "m":Ljava/math/BigInteger;
    .end local v3    # "r":Ljava/math/BigInteger;
    .end local v4    # "blind":Ljava/math/BigInteger;
    .end local v5    # "unblind":Ljava/math/BigInteger;
    .end local v6    # "blindedInput":Ljava/math/BigInteger;
    .end local v7    # "blindedResult":Ljava/math/BigInteger;
    :cond_41
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result v0

    return v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V

    .line 41
    instance-of v0, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 43
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 45
    .local v0, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 47
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v2, v2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v2, :cond_22

    .line 49
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    goto :goto_24

    .line 53
    :cond_22
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    .line 55
    .end local v0    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    :goto_24
    goto :goto_39

    .line 58
    :cond_25
    move-object v0, p2

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 60
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v0, v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_37

    .line 62
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    goto :goto_39

    .line 66
    :cond_37
    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    .line 69
    :goto_39
    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 7
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object v0

    .line 115
    .local v0, "input":Ljava/math/BigInteger;
    invoke-direct {p0, v0}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->processInput(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 116
    .local v1, "result":Ljava/math/BigInteger;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v2, v1}, Lcom/android/internal/org/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object v2

    return-object v2

    .line 111
    .end local v0    # "input":Ljava/math/BigInteger;
    .end local v1    # "result":Ljava/math/BigInteger;
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
