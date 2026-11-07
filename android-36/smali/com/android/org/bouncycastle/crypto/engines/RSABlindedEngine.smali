.class public Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;
.super Ljava/lang/Object;
.source "RSABlindedEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

.field private blacklist key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 23
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    return-void
.end method

.method private blacklist processInput(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 7

    .line 121
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    instance-of v1, v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v1, :cond_3d

    .line 123
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    .line 125
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_3d

    .line 128
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    .line 130
    sget-object v2, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    invoke-static {v2, v3, v4}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    .line 131
    invoke-virtual {v2, v1, v0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 132
    invoke-static {v0, v2}, Lcom/android/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 134
    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 135
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 136
    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 140
    :cond_3d
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public blacklist getInputBlockSize()I
    .registers 1

    .line 80
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist getOutputBlockSize()I
    .registers 1

    .line 92
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    move-result p0

    return p0
.end method

.method public blacklist init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    .line 41
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    const/4 v0, 0x0

    if-eqz p1, :cond_22

    .line 43
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 45
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    move-result-object p1

    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 47
    instance-of p1, p1, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz p1, :cond_1f

    .line 49
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    return-void

    .line 53
    :cond_1f
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    return-void

    .line 58
    :cond_22
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    .line 60
    instance-of p1, p2, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz p1, :cond_31

    .line 62
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    return-void

    .line 66
    :cond_31
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public blacklist processBlock([BII)[B
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    if-eqz v0, :cond_15

    .line 114
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    move-result-object p1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->processInput(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 116
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0

    .line 111
    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "RSA engine not initialised"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
