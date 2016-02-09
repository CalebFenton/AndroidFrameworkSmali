.class public Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;
.super Ljava/lang/Object;
.source "RSABlindedEngine.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricBlockCipher;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

.field private key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 20
    const-wide/16 v0, 0x1

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    #@8
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@a
    .line 17
    return-void
.end method


# virtual methods
.method public getInputBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getInputBlockSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getOutputBlockSize()I
    .locals 1

    #@0
    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->getOutputBlockSize()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 2
    .param p1, "forEncryption"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    .line 36
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@2
    invoke-virtual {v1, p1, p2}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V

    #@5
    .line 38
    instance-of v1, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@7
    if-eqz v1, :cond_0

    #@9
    move-object v0, p2

    #@a
    .line 40
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@c
    .line 42
    .local v0, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@12
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@14
    .line 43
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@17
    move-result-object v1

    #@18
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    #@1a
    .line 34
    .end local v0    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    return-void

    #@1b
    .line 47
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_0
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@1d
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@1f
    .line 48
    new-instance v1, Ljava/security/SecureRandom;

    #@21
    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    #@24
    iput-object v1, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    #@26
    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 12
    .param p1, "in"    # [B
    .param p2, "inOff"    # I
    .param p3, "inLen"    # I

    #@0
    .prologue
    .line 90
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@2
    if-nez v9, :cond_0

    #@4
    .line 92
    new-instance v9, Ljava/lang/IllegalStateException;

    #@6
    const-string/jumbo v10, "RSA engine not initialised"

    #@9
    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@c
    throw v9

    #@d
    .line 95
    :cond_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@f
    invoke-virtual {v9, p1, p2, p3}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->convertInput([BII)Ljava/math/BigInteger;

    #@12
    move-result-object v3

    #@13
    .line 98
    .local v3, "input":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@15
    instance-of v9, v9, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@17
    if-eqz v9, :cond_2

    #@19
    .line 100
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->key:Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@1b
    check-cast v4, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@1d
    .line 102
    .local v4, "k":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    #@20
    move-result-object v2

    #@21
    .line 103
    .local v2, "e":Ljava/math/BigInteger;
    if-eqz v2, :cond_1

    #@23
    .line 105
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    #@26
    move-result-object v5

    #@27
    .line 106
    .local v5, "m":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    #@29
    sget-object v10, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->ONE:Ljava/math/BigInteger;

    #@2b
    invoke-virtual {v5, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2e
    move-result-object v10

    #@2f
    iget-object v11, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->random:Ljava/security/SecureRandom;

    #@31
    invoke-static {v9, v10, v11}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@34
    move-result-object v6

    #@35
    .line 108
    .local v6, "r":Ljava/math/BigInteger;
    invoke-virtual {v6, v2, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@38
    move-result-object v9

    #@39
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@40
    move-result-object v0

    #@41
    .line 109
    .local v0, "blindedInput":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@43
    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@46
    move-result-object v1

    #@47
    .line 111
    .local v1, "blindedResult":Ljava/math/BigInteger;
    invoke-virtual {v6, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4a
    move-result-object v7

    #@4b
    .line 112
    .local v7, "rInv":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4e
    move-result-object v9

    #@4f
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@52
    move-result-object v8

    #@53
    .line 124
    .end local v0    # "blindedInput":Ljava/math/BigInteger;
    .end local v1    # "blindedResult":Ljava/math/BigInteger;
    .end local v2    # "e":Ljava/math/BigInteger;
    .end local v4    # "k":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v5    # "m":Ljava/math/BigInteger;
    .end local v6    # "r":Ljava/math/BigInteger;
    .end local v7    # "rInv":Ljava/math/BigInteger;
    .local v8, "result":Ljava/math/BigInteger;
    :goto_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@55
    invoke-virtual {v9, v8}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->convertOutput(Ljava/math/BigInteger;)[B

    #@58
    move-result-object v9

    #@59
    return-object v9

    #@5a
    .line 116
    .end local v8    # "result":Ljava/math/BigInteger;
    .restart local v2    # "e":Ljava/math/BigInteger;
    .restart local v4    # "k":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@5c
    invoke-virtual {v9, v3}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5f
    move-result-object v8

    #@60
    .restart local v8    # "result":Ljava/math/BigInteger;
    goto :goto_0

    #@61
    .line 121
    .end local v2    # "e":Ljava/math/BigInteger;
    .end local v4    # "k":Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;
    .end local v8    # "result":Ljava/math/BigInteger;
    :cond_2
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/engines/RSABlindedEngine;->core:Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;

    #@63
    invoke-virtual {v9, v3}, Lcom/android/org/bouncycastle/crypto/engines/RSACoreEngine;->processBlock(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@66
    move-result-object v8

    #@67
    .restart local v8    # "result":Ljava/math/BigInteger;
    goto :goto_0
.end method
