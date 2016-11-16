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
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 37
    new-instance v0, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    #@5
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@a
    .line 35
    return-void
.end method

.method public constructor <init>(Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .locals 0
    .param p1, "kCalculator"    # Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 47
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@5
    .line 45
    return-void
.end method


# virtual methods
.method protected calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .locals 4
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    #@0
    .prologue
    .line 215
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v1

    #@4
    .line 216
    .local v1, "log2n":I
    array-length v3, p2

    #@5
    mul-int/lit8 v2, v3, 0x8

    #@7
    .line 218
    .local v2, "messageBitLength":I
    new-instance v0, Ljava/math/BigInteger;

    #@9
    const/4 v3, 0x1

    #@a
    invoke-direct {v0, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    #@d
    .line 219
    .local v0, "e":Ljava/math/BigInteger;
    if-ge v1, v2, :cond_0

    #@f
    .line 221
    sub-int v3, v2, v1

    #@11
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    .line 223
    :cond_0
    return-object v0
.end method

.method protected createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .locals 1

    #@0
    .prologue
    .line 228
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
    .line 89
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@2
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@5
    move-result-object v3

    #@6
    .line 90
    .local v3, "ec":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@9
    move-result-object v5

    #@a
    .line 91
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v5, p1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    #@d
    move-result-object v2

    #@e
    .line 92
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@10
    check-cast v9, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@12
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    #@15
    move-result-object v1

    #@16
    .line 94
    .local v1, "d":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@18
    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    #@1b
    move-result v9

    #@1c
    if-eqz v9, :cond_1

    #@1e
    .line 96
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@20
    invoke-interface {v9, v5, v1, p1}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    #@23
    .line 105
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    #@26
    move-result-object v0

    #@27
    .line 113
    .local v0, "basePointMultiplier":Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    :cond_0
    iget-object v9, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;

    #@29
    invoke-interface {v9}, Lcom/android/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    #@2c
    move-result-object v4

    #@2d
    .line 115
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
    .line 118
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
    .line 120
    .local v7, "r":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    #@47
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v9

    #@4b
    if-nez v9, :cond_0

    #@4d
    .line 122
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
    .line 124
    .local v8, "s":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    #@63
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@66
    move-result v9

    #@67
    if-nez v9, :cond_0

    #@69
    .line 126
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
    .line 100
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

.method protected getDenominator(ILcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 1
    .param p1, "coordinateSystem"    # I
    .param p2, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 233
    packed-switch p1, :pswitch_data_0

    #@4
    .line 244
    :pswitch_0
    const/4 v0, 0x0

    #@5
    return-object v0

    #@6
    .line 238
    :pswitch_1
    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v0

    #@a
    return-object v0

    #@b
    .line 242
    :pswitch_2
    invoke-virtual {p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public init(ZLcom/android/org/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 54
    const/4 v0, 0x0

    #@2
    .line 56
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_2

    #@4
    .line 58
    instance-of v2, p2, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;

    #@6
    if-eqz v2, :cond_1

    #@8
    move-object v1, p2

    #@9
    .line 60
    nop

    #@a
    nop

    #@b
    .line 62
    .local v1, "rParam":Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/org/bouncycastle/crypto/CipherParameters;

    #@e
    move-result-object v2

    #@f
    check-cast v2, Lcom/android/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    #@11
    iput-object v2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@13
    .line 63
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    #@16
    move-result-object v0

    #@17
    .line 75
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
    .line 52
    return-void

    #@29
    .line 67
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
    .line 72
    .restart local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    :cond_2
    check-cast p2, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@30
    .end local p2    # "param":Lcom/android/org/bouncycastle/crypto/CipherParameters;
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@32
    goto :goto_0

    #@33
    .line 75
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
    .line 250
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
    .locals 18
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 140
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@4
    move-object/from16 v17, v0

    #@6
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;

    #@9
    move-result-object v11

    #@a
    .line 141
    .local v11, "ec":Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    #@d
    move-result-object v12

    #@e
    .line 142
    .local v12, "n":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@10
    move-object/from16 v1, p1

    #@12
    invoke-virtual {v0, v12, v1}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    #@15
    move-result-object v10

    #@16
    .line 145
    .local v10, "e":Ljava/math/BigInteger;
    sget-object v17, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    #@18
    move-object/from16 v0, p2

    #@1a
    move-object/from16 v1, v17

    #@1c
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@1f
    move-result v17

    #@20
    if-ltz v17, :cond_0

    #@22
    move-object/from16 v0, p2

    #@24
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@27
    move-result v17

    #@28
    if-ltz v17, :cond_1

    #@2a
    .line 147
    :cond_0
    const/16 v17, 0x0

    #@2c
    return v17

    #@2d
    .line 151
    :cond_1
    sget-object v17, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    #@2f
    move-object/from16 v0, p3

    #@31
    move-object/from16 v1, v17

    #@33
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@36
    move-result v17

    #@37
    if-ltz v17, :cond_2

    #@39
    move-object/from16 v0, p3

    #@3b
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@3e
    move-result v17

    #@3f
    if-ltz v17, :cond_3

    #@41
    .line 153
    :cond_2
    const/16 v17, 0x0

    #@43
    return v17

    #@44
    .line 156
    :cond_3
    move-object/from16 v0, p3

    #@46
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@49
    move-result-object v7

    #@4a
    .line 158
    .local v7, "c":Ljava/math/BigInteger;
    invoke-virtual {v10, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4d
    move-result-object v17

    #@4e
    move-object/from16 v0, v17

    #@50
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@53
    move-result-object v14

    #@54
    .line 159
    .local v14, "u1":Ljava/math/BigInteger;
    move-object/from16 v0, p2

    #@56
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@59
    move-result-object v17

    #@5a
    move-object/from16 v0, v17

    #@5c
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5f
    move-result-object v15

    #@60
    .line 161
    .local v15, "u2":Ljava/math/BigInteger;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@63
    move-result-object v3

    #@64
    .line 162
    .local v3, "G":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    #@66
    iget-object v0, v0, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/org/bouncycastle/crypto/params/ECKeyParameters;

    #@68
    move-object/from16 v17, v0

    #@6a
    check-cast v17, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    #@6c
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6f
    move-result-object v4

    #@70
    .line 164
    .local v4, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v3, v14, v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@73
    move-result-object v13

    #@74
    .line 167
    .local v13, "point":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@77
    move-result v17

    #@78
    if-eqz v17, :cond_4

    #@7a
    .line 169
    const/16 v17, 0x0

    #@7c
    return v17

    #@7d
    .line 185
    :cond_4
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@80
    move-result-object v9

    #@81
    .line 186
    .local v9, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    if-eqz v9, :cond_5

    #@83
    .line 188
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    #@86
    move-result-object v8

    #@87
    .line 189
    .local v8, "cofactor":Ljava/math/BigInteger;
    if-eqz v8, :cond_5

    #@89
    sget-object v17, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->EIGHT:Ljava/math/BigInteger;

    #@8b
    move-object/from16 v0, v17

    #@8d
    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@90
    move-result v17

    #@91
    if-gtz v17, :cond_5

    #@93
    .line 191
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@96
    move-result v17

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v17

    #@9b
    invoke-virtual {v0, v1, v13}, Lcom/android/org/bouncycastle/crypto/signers/ECDSASigner;->getDenominator(ILcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9e
    move-result-object v2

    #@9f
    .line 192
    .local v2, "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v2, :cond_5

    #@a1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@a4
    move-result v17

    #@a5
    if-eqz v17, :cond_6

    #@a7
    .line 209
    .end local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "cofactor":Ljava/math/BigInteger;
    :cond_5
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@aa
    move-result-object v17

    #@ab
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@ae
    move-result-object v17

    #@af
    invoke-virtual/range {v17 .. v17}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@b2
    move-result-object v17

    #@b3
    move-object/from16 v0, v17

    #@b5
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b8
    move-result-object v16

    #@b9
    .line 210
    .local v16, "v":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    #@bb
    move-object/from16 v1, p2

    #@bd
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@c0
    move-result v17

    #@c1
    return v17

    #@c2
    .line 194
    .end local v16    # "v":Ljava/math/BigInteger;
    .restart local v2    # "D":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .restart local v8    # "cofactor":Ljava/math/BigInteger;
    :cond_6
    invoke-virtual {v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c5
    move-result-object v6

    #@c6
    .line 195
    .local v6, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :goto_0
    move-object/from16 v0, p2

    #@c8
    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->isValidFieldElement(Ljava/math/BigInteger;)Z

    #@cb
    move-result v17

    #@cc
    if-eqz v17, :cond_8

    #@ce
    .line 197
    move-object/from16 v0, p2

    #@d0
    invoke-virtual {v9, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d3
    move-result-object v17

    #@d4
    move-object/from16 v0, v17

    #@d6
    invoke-virtual {v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@d9
    move-result-object v5

    #@da
    .line 198
    .local v5, "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@dd
    move-result v17

    #@de
    if-eqz v17, :cond_7

    #@e0
    .line 200
    const/16 v17, 0x1

    #@e2
    return v17

    #@e3
    .line 202
    :cond_7
    move-object/from16 v0, p2

    #@e5
    invoke-virtual {v0, v12}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e8
    move-result-object p2

    #@e9
    goto :goto_0

    #@ea
    .line 204
    .end local v5    # "R":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_8
    const/16 v17, 0x0

    #@ec
    return v17
.end method
