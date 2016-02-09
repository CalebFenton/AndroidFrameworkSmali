.class public Lcom/android/org/bouncycastle/crypto/signers/DSASigner;
.super Ljava/lang/Object;
.source "DSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/DSA;


# instance fields
.field private final kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    new-instance v0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@a
    .line 29
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@0
    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@5
    .line 39
    return-void
.end method

.method private calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 5
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 148
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v1

    #@6
    array-length v2, p2

    #@7
    mul-int/lit8 v2, v2, 0x8

    #@9
    if-lt v1, v2, :cond_0

    #@b
    .line 150
    new-instance v1, Ljava/math/BigInteger;

    #@d
    invoke-direct {v1, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@10
    return-object v1

    #@11
    .line 154
    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@14
    move-result v1

    #@15
    div-int/lit8 v1, v1, 0x8

    #@17
    new-array v0, v1, [B

    #@19
    .line 156
    .local v0, "trunc":[B
    array-length v1, v0

    #@1a
    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1d
    .line 158
    new-instance v1, Ljava/math/BigInteger;

    #@1f
    invoke-direct {v1, v4, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    #@22
    return-object v1
.end method


# virtual methods
.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 9
    .param p1, "message"    # [B

    #@0
    .prologue
    .line 82
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@2
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@5
    move-result-object v2

    #@6
    .line 83
    .local v2, "params":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    .line 84
    .local v3, "q":Ljava/math/BigInteger;
    invoke-direct {p0, v3, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    #@d
    move-result-object v1

    #@e
    .line 85
    .local v1, "m":Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@10
    check-cast v7, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@12
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;->getX()Ljava/math/BigInteger;

    #@15
    move-result-object v6

    #@16
    .line 87
    .local v6, "x":Ljava/math/BigInteger;
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@18
    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_0

    #@1e
    .line 89
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@20
    invoke-interface {v7, v3, v6, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@23
    .line 96
    :goto_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@25
    invoke-interface {v7}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    #@28
    move-result-object v0

    #@29
    .line 98
    .local v0, "k":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@2c
    move-result-object v7

    #@2d
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@30
    move-result-object v8

    #@31
    invoke-virtual {v7, v0, v8}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@34
    move-result-object v7

    #@35
    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@38
    move-result-object v4

    #@39
    .line 100
    .local v4, "r":Ljava/math/BigInteger;
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3c
    move-result-object v7

    #@3d
    invoke-virtual {v6, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@40
    move-result-object v8

    #@41
    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@44
    move-result-object v8

    #@45
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@48
    move-result-object v0

    #@49
    .line 102
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4c
    move-result-object v5

    #@4d
    .line 104
    .local v5, "s":Ljava/math/BigInteger;
    const/4 v7, 0x2

    #@4e
    new-array v7, v7, [Ljava/math/BigInteger;

    #@50
    const/4 v8, 0x0

    #@51
    aput-object v4, v7, v8

    #@53
    const/4 v8, 0x1

    #@54
    aput-object v5, v7, v8

    #@56
    return-object v7

    #@57
    .line 93
    .end local v0    # "k":Ljava/math/BigInteger;
    .end local v4    # "r":Ljava/math/BigInteger;
    .end local v5    # "s":Ljava/math/BigInteger;
    :cond_0
    iget-object v7, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@59
    iget-object v8, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    #@5b
    invoke-interface {v7, v3, v8}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    #@5e
    goto :goto_0
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 48
    const/4 v0, 0x0

    #@2
    .line 50
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_2

    #@4
    .line 52
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@6
    if-eqz v2, :cond_1

    #@8
    move-object v1, p2

    #@9
    .line 54
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@b
    .line 56
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@11
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@13
    .line 57
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@16
    move-result-object v0

    #@17
    .line 69
    .end local v0    # "providedRandom":Ljava/security/SecureRandom;
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p1, :cond_0

    #@19
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@1b
    invoke-interface {v2}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_3

    #@21
    :cond_0
    move v2, v3

    #@22
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->random:Ljava/security/SecureRandom;

    #@28
    .line 46
    return-void

    #@29
    .line 61
    .restart local v0    # "providedRandom":Ljava/security/SecureRandom;
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@2b
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@2d
    goto :goto_0

    #@2e
    .line 66
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@30
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@32
    goto :goto_0

    #@33
    .line 69
    .end local v0    # "providedRandom":Ljava/security/SecureRandom;
    :cond_3
    const/4 v2, 0x1

    #@34
    goto :goto_1
.end method

.method protected initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .locals 1
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 164
    if-nez p1, :cond_1

    #@3
    move-object p2, v0

    #@4
    .end local p2    # "provided":Ljava/security/SecureRandom;
    :cond_0
    :goto_0
    return-object p2

    #@5
    .restart local p2    # "provided":Ljava/security/SecureRandom;
    :cond_1
    if-nez p2, :cond_0

    #@7
    new-instance p2, Ljava/security/SecureRandom;

    #@9
    .end local p2    # "provided":Ljava/security/SecureRandom;
    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    #@c
    goto :goto_0
.end method

.method public verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .locals 12
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 117
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@2
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@5
    move-result-object v2

    #@6
    .line 118
    .local v2, "params":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    .line 119
    .local v3, "q":Ljava/math/BigInteger;
    invoke-direct {p0, v3, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    #@d
    move-result-object v0

    #@e
    .line 120
    .local v0, "m":Ljava/math/BigInteger;
    const-wide/16 v10, 0x0

    #@10
    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@13
    move-result-object v8

    #@14
    .line 122
    .local v8, "zero":Ljava/math/BigInteger;
    invoke-virtual {v8, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@17
    move-result v9

    #@18
    if-gez v9, :cond_0

    #@1a
    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1d
    move-result v9

    #@1e
    if-gtz v9, :cond_1

    #@20
    .line 124
    :cond_0
    const/4 v9, 0x0

    #@21
    return v9

    #@22
    .line 127
    :cond_1
    invoke-virtual {v8, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@25
    move-result v9

    #@26
    if-gez v9, :cond_2

    #@28
    invoke-virtual {v3, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@2b
    move-result v9

    #@2c
    if-gtz v9, :cond_3

    #@2e
    .line 129
    :cond_2
    const/4 v9, 0x0

    #@2f
    return v9

    #@30
    .line 132
    :cond_3
    invoke-virtual {p3, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@33
    move-result-object v7

    #@34
    .line 134
    .local v7, "w":Ljava/math/BigInteger;
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@37
    move-result-object v9

    #@38
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3b
    move-result-object v4

    #@3c
    .line 135
    .local v4, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3f
    move-result-object v9

    #@40
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@43
    move-result-object v5

    #@44
    .line 137
    .local v5, "u2":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@47
    move-result-object v1

    #@48
    .line 138
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@4b
    move-result-object v9

    #@4c
    invoke-virtual {v9, v4, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4f
    move-result-object v4

    #@50
    .line 139
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/DSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/DSAKeyParameters;

    #@52
    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@54
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;->getY()Ljava/math/BigInteger;

    #@57
    move-result-object v9

    #@58
    invoke-virtual {v9, v5, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5b
    move-result-object v5

    #@5c
    .line 141
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5f
    move-result-object v9

    #@60
    invoke-virtual {v9, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@63
    move-result-object v9

    #@64
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@67
    move-result-object v6

    #@68
    .line 143
    .local v6, "v":Ljava/math/BigInteger;
    invoke-virtual {v6, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v9

    #@6c
    return v9
.end method
