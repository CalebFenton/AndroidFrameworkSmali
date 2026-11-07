.class public Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;
.super Ljava/lang/Object;
.source "ECDSASigner.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;
.implements Lcom/android/internal/org/bouncycastle/crypto/DSAExt;


# instance fields
.field private final blacklist kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

.field private blacklist key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

.field private blacklist random:Ljava/security/SecureRandom;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/RandomDSAKCalculator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 42
    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;)V
    .registers 2
    .param p1, "kCalculator"    # Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    .line 52
    return-void
.end method


# virtual methods
.method protected blacklist calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;
    .registers 7
    .param p1, "n"    # Ljava/math/BigInteger;
    .param p2, "message"    # [B

    .line 226
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 227
    .local v0, "log2n":I
    array-length v1, p2

    mul-int/lit8 v1, v1, 0x8

    .line 229
    .local v1, "messageBitLength":I
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 230
    .local v2, "e":Ljava/math/BigInteger;
    if-ge v0, v1, :cond_15

    .line 232
    sub-int v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 234
    :cond_15
    return-object v2
.end method

.method protected blacklist createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 239
    new-instance v0, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    return-object v0
.end method

.method public blacklist generateSignature([B)[Ljava/math/BigInteger;
    .registers 11
    .param p1, "message"    # [B

    .line 100
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    .line 101
    .local v0, "ec":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v1

    .line 102
    .local v1, "n":Ljava/math/BigInteger;
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v2

    .line 103
    .local v2, "e":Ljava/math/BigInteger;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v3, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v3

    .line 105
    .local v3, "d":Ljava/math/BigInteger;
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 107
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v4, v1, v3, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    goto :goto_2b

    .line 111
    :cond_24
    iget-object v4, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    invoke-interface {v4, v1, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->init(Ljava/math/BigInteger;Ljava/security/SecureRandom;)V

    .line 116
    :goto_2b
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->createBasePointMultiplier()Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v4

    .line 124
    .local v4, "basePointMultiplier":Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;
    :cond_2f
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->nextK()Ljava/math/BigInteger;

    move-result-object v5

    .line 126
    .local v5, "k":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-interface {v4, v6, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 129
    .local v6, "p":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 131
    .local v6, "r":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 133
    invoke-static {v1, v5}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v3, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 135
    .local v5, "s":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v5, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2f

    .line 137
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/math/BigInteger;

    const/4 v8, 0x0

    aput-object v6, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    return-object v7
.end method

.method protected blacklist getDenominator(ILcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4
    .param p1, "coordinateSystem"    # I
    .param p2, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 244
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_14

    .line 255
    :pswitch_4
    const/4 v0, 0x0

    return-object v0

    .line 253
    :pswitch_6
    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    .line 249
    :pswitch_f
    invoke-virtual {p2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    return-object v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_f
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public blacklist getOrder()Ljava/math/BigInteger;
    .registers 2

    .line 86
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public blacklist init(ZLcom/android/internal/org/bouncycastle/crypto/CipherParameters;)V
    .registers 6
    .param p1, "forSigning"    # Z
    .param p2, "param"    # Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    .line 58
    const/4 v0, 0x0

    .line 60
    .local v0, "providedRandom":Ljava/security/SecureRandom;
    if-eqz p1, :cond_1d

    .line 62
    instance-of v1, p2, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v1, :cond_17

    .line 64
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;

    .line 66
    .local v1, "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    .line 67
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 68
    .end local v1    # "rParam":Lcom/android/internal/org/bouncycastle/crypto/params/ParametersWithRandom;
    goto :goto_22

    .line 71
    :cond_17
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    goto :goto_22

    .line 76
    :cond_1d
    move-object v1, p2

    check-cast v1, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    .line 79
    :goto_22
    const-string v1, "ECDSA"

    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-static {v1, v2, p1}, Lcom/android/internal/org/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;Z)Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 81
    if-eqz p1, :cond_39

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->kCalculator:Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;

    invoke-interface {v1}, Lcom/android/internal/org/bouncycastle/crypto/signers/DSAKCalculator;->isDeterministic()Z

    move-result v1

    if-nez v1, :cond_39

    const/4 v1, 0x1

    goto :goto_3a

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->random:Ljava/security/SecureRandom;

    .line 82
    return-void
.end method

.method protected blacklist initSecureRandom(ZLjava/security/SecureRandom;)Ljava/security/SecureRandom;
    .registers 4
    .param p1, "needed"    # Z
    .param p2, "provided"    # Ljava/security/SecureRandom;

    .line 261
    if-eqz p1, :cond_7

    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return-object v0
.end method

.method public blacklist verifySignature([BLjava/math/BigInteger;Ljava/math/BigInteger;)Z
    .registers 22
    .param p1, "message"    # [B
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "s"    # Ljava/math/BigInteger;

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v3

    .line 152
    .local v3, "ec":Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    .line 153
    .local v4, "n":Ljava/math/BigInteger;
    move-object/from16 v5, p1

    invoke-virtual {v0, v4, v5}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->calculateE(Ljava/math/BigInteger;[B)Ljava/math/BigInteger;

    move-result-object v6

    .line 156
    .local v6, "e":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    const/4 v8, 0x0

    if-ltz v7, :cond_c7

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_29

    move/from16 v16, v8

    goto/16 :goto_c9

    .line 162
    :cond_29
    sget-object v7, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_c4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-ltz v7, :cond_3b

    move/from16 v16, v8

    goto/16 :goto_c6

    .line 167
    :cond_3b
    invoke-static {v4, v2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverseVar(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 169
    .local v7, "c":Ljava/math/BigInteger;
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 170
    .local v9, "u1":Ljava/math/BigInteger;
    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 172
    .local v10, "u2":Ljava/math/BigInteger;
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/ECDomainParameters;->getG()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v11

    .line 173
    .local v11, "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    iget-object v12, v0, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->key:Lcom/android/internal/org/bouncycastle/crypto/params/ECKeyParameters;

    check-cast v12, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v12}, Lcom/android/internal/org/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    .line 175
    .local v12, "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v11, v9, v12, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v13

    .line 178
    .local v13, "point":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v14

    if-eqz v14, :cond_66

    .line 180
    return v8

    .line 196
    :cond_66
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v14

    .line 197
    .local v14, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    if-eqz v14, :cond_af

    .line 199
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v15

    .line 200
    .local v15, "cofactor":Ljava/math/BigInteger;
    if-eqz v15, :cond_af

    move/from16 v16, v8

    sget-object v8, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->EIGHT:Ljava/math/BigInteger;

    invoke-virtual {v15, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v8

    if-gtz v8, :cond_af

    .line 202
    invoke-virtual {v14}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v8

    invoke-virtual {v0, v8, v13}, Lcom/android/internal/org/bouncycastle/crypto/signers/ECDSASigner;->getDenominator(ILcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 203
    .local v8, "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v8, :cond_af

    invoke-virtual {v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v17

    if-nez v17, :cond_af

    .line 205
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 206
    .end local p2    # "r":Ljava/math/BigInteger;
    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .local v1, "r":Ljava/math/BigInteger;
    :goto_90
    invoke-virtual {v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->isValidFieldElement(Ljava/math/BigInteger;)Z

    move-result v17

    if-eqz v17, :cond_ae

    .line 208
    invoke-virtual {v14, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 209
    .local v2, "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a7

    .line 211
    const/16 v16, 0x1

    return v16

    .line 213
    :cond_a7
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 214
    .end local v2    # "R":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    move-object/from16 v2, p3

    goto :goto_90

    .line 215
    :cond_ae
    return v16

    .line 220
    .end local v0    # "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v1    # "r":Ljava/math/BigInteger;
    .end local v8    # "D":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v15    # "cofactor":Ljava/math/BigInteger;
    .restart local p2    # "r":Ljava/math/BigInteger;
    :cond_af
    invoke-virtual {v13}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 221
    .local v0, "v":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 162
    .end local v0    # "v":Ljava/math/BigInteger;
    .end local v7    # "c":Ljava/math/BigInteger;
    .end local v9    # "u1":Ljava/math/BigInteger;
    .end local v10    # "u2":Ljava/math/BigInteger;
    .end local v11    # "G":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v12    # "Q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v13    # "point":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .end local v14    # "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    :cond_c4
    move/from16 v16, v8

    .line 164
    :goto_c6
    return v16

    .line 156
    :cond_c7
    move/from16 v16, v8

    .line 158
    :goto_c9
    return v16
.end method
