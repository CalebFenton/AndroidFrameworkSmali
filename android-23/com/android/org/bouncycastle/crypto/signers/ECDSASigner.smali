.class public Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/ECConstants;
.implements Lcom/android/org/bouncycastle/crypto/DSA;


# instance fields
.field private final kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 35
    new-instance v0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@a
    .line 33
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@0
    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@5
    .line 43
    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    #@0
    .prologue
    .line 177
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v1

    #@4
    .line 178
    .local v1, "log2n":I
    array-length v3, p2

    #@5
    mul-int/lit8 v2, v3, 0x8

    #@7
    .line 180
    .local v2, "messageBitLength":I
    new-instance v0, Ljava/math/BigInteger;

    #@9
    const/4 v3, 0x1

    #@a
    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@d
    .line 181
    .local v0, "e":Ljava/math/BigInteger;
    if-ge v1, v2, :cond_0

    #@f
    .line 183
    sub-int v3, v2, v1

    #@11
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    .line 185
    :cond_0
    return-object v0
.end method

.method protected createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    #@0
    .prologue
    .line 190
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    #@5
    return-object v0
.end method

.method public generateSignature([B)[Ljava/math/BigInteger;
    .locals 11
    .param p1, "message"    # [B

    #@0
    .prologue
    .line 87
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@2
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@5
    move-result-object v3

    #@6
    .line 88
    .local v3, "ec":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@9
    move-result-object v5

    #@a
    .line 89
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    #@d
    move-result-object v2

    #@e
    .line 90
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@10
    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@12
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@15
    move-result-object v1

    #@16
    .line 92
    .local v1, "d":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@18
    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    #@1b
    move-result v9

    #@1c
    if-eqz v9, :cond_1

    #@1e
    .line 94
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@20
    invoke-interface {v9, v5, v1, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@23
    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@26
    move-result-object v0

    #@27
    .line 111
    .local v0, "basePointMultiplier":Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :cond_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@29
    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    #@2c
    move-result-object v4

    #@2d
    .line 113
    .local v4, "k":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@30
    move-result-object v9

    #@31
    invoke-interface {v0, v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v9

    #@35
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@38
    move-result-object v6

    #@39
    .line 116
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3c
    move-result-object v9

    #@3d
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@40
    move-result-object v9

    #@41
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@44
    move-result-object v7

    #@45
    .line 118
    .local v7, "r":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    #@47
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v9

    #@4b
    if-nez v9, :cond_0

    #@4d
    .line 120
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@50
    move-result-object v9

    #@51
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@54
    move-result-object v10

    #@55
    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@58
    move-result-object v10

    #@59
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5c
    move-result-object v9

    #@5d
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@60
    move-result-object v8

    #@61
    .line 122
    .local v8, "s":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    #@63
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v9

    #@67
    if-nez v9, :cond_0

    #@69
    .line 124
    const/4 v9, 0x2

    #@6a
    new-array v9, v9, [Ljava/math/BigInteger;

    #@6c
    const/4 v10, 0x0

    #@6d
    aput-object v7, v9, v10

    #@6f
    const/4 v10, 0x1

    #@70
    aput-object v8, v9, v10

    #@72
    return-object v9

    #@73
    .line 98
    .end local v0    # "basePointMultiplier":Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .end local v4    # "k":Ljava/math/BigInteger;
    .end local v6    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v7    # "r":Ljava/math/BigInteger;
    .end local v8    # "s":Ljava/math/BigInteger;
    :cond_1
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@75
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    #@77
    invoke-interface {v9, v5, v10}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    #@7a
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
    .line 52
    const/4 v0, 0x0

    #@2
    .line 54
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_2

    #@4
    .line 56
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@6
    if-eqz v2, :cond_1

    #@8
    move-object v1, p2

    #@9
    .line 58
    check-cast v1, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@b
    .line 60
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@11
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@13
    .line 61
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@16
    move-result-object v0

    #@17
    .line 73
    .end local v0    # "providedRandom":Ljava/security/SecureRandom;
    .end local v1    # "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :goto_0
    if-eqz p1, :cond_0

    #@19
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

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
    invoke-virtual {p0, v2, v0}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    #@25
    move-result-object v2

    #@26
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    #@28
    .line 50
    return-void

    #@29
    .line 65
    .restart local v0    # "providedRandom":Ljava/security/SecureRandom;
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_1
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@2b
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@2d
    goto :goto_0

    #@2e
    .line 70
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@30
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@32
    goto :goto_0

    #@33
    .line 73
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
    .line 195
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
    const/4 v11, 0x0

    #@1
    .line 138
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@3
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@6
    move-result-object v4

    #@7
    .line 139
    .local v4, "ec":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@a
    move-result-object v5

    #@b
    .line 140
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    #@e
    move-result-object v3

    #@f
    .line 143
    .local v3, "e":Ljava/math/BigInteger;
    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    #@11
    invoke-virtual {p2, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@14
    move-result v10

    #@15
    if-ltz v10, :cond_0

    #@17
    invoke-virtual {p2, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1a
    move-result v10

    #@1b
    if-ltz v10, :cond_1

    #@1d
    .line 145
    :cond_0
    return v11

    #@1e
    .line 149
    :cond_1
    sget-object v10, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    #@20
    invoke-virtual {p3, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@23
    move-result v10

    #@24
    if-ltz v10, :cond_2

    #@26
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@29
    move-result v10

    #@2a
    if-ltz v10, :cond_3

    #@2c
    .line 151
    :cond_2
    return v11

    #@2d
    .line 154
    :cond_3
    invoke-virtual {p3, v5}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@30
    move-result-object v2

    #@31
    .line 156
    .local v2, "c":Ljava/math/BigInteger;
    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@34
    move-result-object v10

    #@35
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@38
    move-result-object v7

    #@39
    .line 157
    .local v7, "u1":Ljava/math/BigInteger;
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3c
    move-result-object v10

    #@3d
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@40
    move-result-object v8

    #@41
    .line 159
    .local v8, "u2":Ljava/math/BigInteger;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@44
    move-result-object v0

    #@45
    .line 160
    .local v0, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    iget-object v10, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@47
    check-cast v10, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@49
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4c
    move-result-object v1

    #@4d
    .line 162
    .local v1, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v0, v7, v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@54
    move-result-object v6

    #@55
    .line 165
    .local v6, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@58
    move-result v10

    #@59
    if-eqz v10, :cond_4

    #@5b
    .line 167
    return v11

    #@5c
    .line 170
    :cond_4
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5f
    move-result-object v10

    #@60
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@63
    move-result-object v10

    #@64
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@67
    move-result-object v9

    #@68
    .line 172
    .local v9, "v":Ljava/math/BigInteger;
    invoke-virtual {v9, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@6b
    move-result v10

    #@6c
    return v10
.end method
