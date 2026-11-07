.class public Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 27
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist getNumberOfIterations(II)I
    .registers 6
    .param p0, "bits"    # I
    .param p1, "certainty"    # I

    .line 216
    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_18

    .line 218
    if-gt p1, v2, :cond_b

    const/4 v1, 0x3

    goto :goto_17

    .line 219
    :cond_b
    const/16 v0, 0x80

    if-gt p1, v0, :cond_10

    goto :goto_17

    .line 220
    :cond_10
    add-int/lit8 v0, p1, -0x80

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    .line 218
    :goto_17
    return v1

    .line 222
    :cond_18
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_2f

    .line 224
    if-gt p1, v2, :cond_20

    goto :goto_2e

    .line 225
    :cond_20
    const/16 v0, 0x70

    if-gt p1, v0, :cond_26

    move v1, v3

    goto :goto_2e

    .line 226
    :cond_26
    add-int/lit8 v0, p1, -0x70

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v1, v0, 0x5

    .line 224
    :goto_2e
    return v1

    .line 228
    :cond_2f
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_44

    .line 230
    if-gt p1, v1, :cond_38

    goto :goto_43

    .line 231
    :cond_38
    const/4 v3, 0x7

    if-gt p1, v2, :cond_3c

    goto :goto_43

    .line 232
    :cond_3c
    add-int/lit8 v0, p1, -0x64

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v3, v0

    .line 230
    :goto_43
    return v3

    .line 236
    :cond_44
    const/16 v0, 0x28

    if-gt p1, v1, :cond_49

    goto :goto_50

    .line 237
    :cond_49
    add-int/lit8 v1, p1, -0x50

    add-int/lit8 v1, v1, 0x1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 236
    :goto_50
    return v0
.end method


# virtual methods
.method protected blacklist chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;
    .param p3, "sqrdBound"    # Ljava/math/BigInteger;

    .line 169
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_46

    .line 171
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 173
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 175
    goto :goto_42

    .line 178
    :cond_1d
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_28

    .line 180
    goto :goto_42

    .line 183
    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_2f

    .line 185
    goto :goto_42

    .line 188
    :cond_2f
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_45

    .line 190
    nop

    .line 169
    .end local v1    # "p":Ljava/math/BigInteger;
    :goto_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 193
    .restart local v1    # "p":Ljava/math/BigInteger;
    :cond_45
    return-object v1

    .line 196
    .end local v0    # "i":I
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_46
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unable to generate prime number for RSA key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist generateKeyPair()Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 29

    .line 40
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 41
    .local v1, "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    const/4 v2, 0x0

    .line 46
    .local v2, "done":Z
    iget-object v3, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    move-result v3

    .line 47
    .local v3, "strength":I
    add-int/lit8 v4, v3, 0x1

    div-int/lit8 v4, v4, 0x2

    .line 48
    .local v4, "pbitlength":I
    sub-int v5, v3, v4

    .line 49
    .local v5, "qbitlength":I
    div-int/lit8 v6, v3, 0x2

    add-int/lit8 v6, v6, -0x64

    .line 51
    .local v6, "mindiffbits":I
    div-int/lit8 v7, v3, 0x3

    if-ge v6, v7, :cond_1a

    .line 53
    div-int/lit8 v6, v3, 0x3

    .line 56
    :cond_1a
    shr-int/lit8 v7, v3, 0x2

    .line 59
    .local v7, "minWeight":I
    const-wide/16 v8, 0x2

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    div-int/lit8 v9, v3, 0x2

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 61
    .local v8, "dLowerBound":Ljava/math/BigInteger;
    sget-object v9, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v10, v3, -0x1

    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 63
    .local v9, "squaredBound":Ljava/math/BigInteger;
    sget-object v10, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 65
    .local v10, "minDiff":Ljava/math/BigInteger;
    :goto_36
    if-nez v2, :cond_104

    .line 69
    iget-object v11, v0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v11}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v14

    .line 71
    .local v14, "e":Ljava/math/BigInteger;
    invoke-virtual {v0, v4, v14, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 78
    .local v11, "p":Ljava/math/BigInteger;
    :goto_42
    invoke-virtual {v0, v5, v14, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 81
    .local v12, "q":Ljava/math/BigInteger;
    invoke-virtual {v12, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v13

    .line 82
    .local v13, "diff":Ljava/math/BigInteger;
    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v15

    if-lt v15, v6, :cond_f3

    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gtz v15, :cond_62

    .line 84
    move-object/from16 v22, v1

    move/from16 v16, v2

    move/from16 v27, v3

    goto/16 :goto_fa

    .line 90
    :cond_62
    move-object v15, v13

    .end local v13    # "diff":Ljava/math/BigInteger;
    .local v15, "diff":Ljava/math/BigInteger;
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 92
    .local v13, "n":Ljava/math/BigInteger;
    move-object/from16 v22, v1

    .end local v1    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local v22, "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    invoke-virtual {v13}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-eq v1, v3, :cond_76

    .line 98
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 99
    move-object/from16 v1, v22

    goto :goto_42

    .line 108
    :cond_76
    invoke-static {v13}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v1

    if-ge v1, v7, :cond_83

    .line 110
    invoke-virtual {v0, v4, v14, v9}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 111
    move-object/from16 v1, v22

    goto :goto_42

    .line 117
    .end local v15    # "diff":Ljava/math/BigInteger;
    :cond_83
    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_8c

    .line 119
    move-object v1, v11

    .line 120
    .local v1, "gcd":Ljava/math/BigInteger;
    move-object v11, v12

    .line 121
    move-object v12, v1

    .line 124
    .end local v1    # "gcd":Ljava/math/BigInteger;
    :cond_8c
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 125
    .local v1, "pSub1":Ljava/math/BigInteger;
    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    .line 126
    .local v15, "qSub1":Ljava/math/BigInteger;
    invoke-virtual {v1, v15}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 127
    .local v0, "gcd":Ljava/math/BigInteger;
    move/from16 v16, v2

    .end local v2    # "done":Z
    .local v16, "done":Z
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 132
    .local v2, "lcm":Ljava/math/BigInteger;
    move-object/from16 v23, v0

    .end local v0    # "gcd":Ljava/math/BigInteger;
    .local v23, "gcd":Ljava/math/BigInteger;
    invoke-virtual {v14, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 134
    .local v0, "d":Ljava/math/BigInteger;
    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v17

    if-gtz v17, :cond_ba

    .line 136
    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v1, v22

    goto/16 :goto_36

    .line 140
    :cond_ba
    const/16 v24, 0x1

    .line 148
    .end local v16    # "done":Z
    .local v24, "done":Z
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v18

    .line 149
    .local v18, "dP":Ljava/math/BigInteger;
    invoke-virtual {v0, v15}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 150
    .local v19, "dQ":Ljava/math/BigInteger;
    invoke-static {v11, v12}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 152
    .local v20, "qInv":Ljava/math/BigInteger;
    move-object/from16 v17, v0

    .end local v0    # "d":Ljava/math/BigInteger;
    .local v17, "d":Ljava/math/BigInteger;
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-object/from16 v25, v1

    .end local v1    # "pSub1":Ljava/math/BigInteger;
    .local v25, "pSub1":Ljava/math/BigInteger;
    new-instance v1, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;

    move-object/from16 v26, v2

    .end local v2    # "lcm":Ljava/math/BigInteger;
    .local v26, "lcm":Ljava/math/BigInteger;
    const/4 v2, 0x0

    move/from16 v27, v3

    .end local v3    # "strength":I
    .local v27, "strength":I
    const/4 v3, 0x1

    invoke-direct {v1, v2, v13, v14, v3}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    move-object v2, v15

    move-object/from16 v15, v17

    move-object/from16 v17, v12

    .end local v12    # "q":Ljava/math/BigInteger;
    .local v2, "qSub1":Ljava/math/BigInteger;
    .local v15, "d":Ljava/math/BigInteger;
    .local v17, "q":Ljava/math/BigInteger;
    new-instance v12, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    const/16 v21, 0x1

    move-object/from16 v16, v11

    .end local v11    # "p":Ljava/math/BigInteger;
    .local v16, "p":Ljava/math/BigInteger;
    invoke-direct/range {v12 .. v21}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-direct {v0, v1, v12}, Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    move-object v1, v0

    .line 155
    .end local v2    # "qSub1":Ljava/math/BigInteger;
    .end local v13    # "n":Ljava/math/BigInteger;
    .end local v14    # "e":Ljava/math/BigInteger;
    .end local v15    # "d":Ljava/math/BigInteger;
    .end local v16    # "p":Ljava/math/BigInteger;
    .end local v17    # "q":Ljava/math/BigInteger;
    .end local v18    # "dP":Ljava/math/BigInteger;
    .end local v19    # "dQ":Ljava/math/BigInteger;
    .end local v20    # "qInv":Ljava/math/BigInteger;
    .end local v22    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v23    # "gcd":Ljava/math/BigInteger;
    .end local v25    # "pSub1":Ljava/math/BigInteger;
    .end local v26    # "lcm":Ljava/math/BigInteger;
    .local v1, "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    move-object/from16 v0, p0

    move/from16 v2, v24

    move/from16 v3, v27

    goto/16 :goto_36

    .line 82
    .end local v24    # "done":Z
    .end local v27    # "strength":I
    .local v2, "done":Z
    .restart local v3    # "strength":I
    .restart local v11    # "p":Ljava/math/BigInteger;
    .restart local v12    # "q":Ljava/math/BigInteger;
    .local v13, "diff":Ljava/math/BigInteger;
    .restart local v14    # "e":Ljava/math/BigInteger;
    :cond_f3
    move-object/from16 v22, v1

    move/from16 v16, v2

    move/from16 v27, v3

    move-object v15, v13

    .line 78
    .end local v1    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v2    # "done":Z
    .end local v3    # "strength":I
    .end local v12    # "q":Ljava/math/BigInteger;
    .end local v13    # "diff":Ljava/math/BigInteger;
    .local v16, "done":Z
    .restart local v22    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v27    # "strength":I
    :goto_fa
    move-object/from16 v0, p0

    move/from16 v2, v16

    move-object/from16 v1, v22

    move/from16 v3, v27

    goto/16 :goto_42

    .line 157
    .end local v11    # "p":Ljava/math/BigInteger;
    .end local v14    # "e":Ljava/math/BigInteger;
    .end local v16    # "done":Z
    .end local v22    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v27    # "strength":I
    .restart local v1    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v2    # "done":Z
    .restart local v3    # "strength":I
    :cond_104
    move-object/from16 v22, v1

    .end local v1    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .restart local v22    # "result":Lcom/android/internal/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    return-object v22
.end method

.method public blacklist init(Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 7
    .param p1, "param"    # Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 35
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v1

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v4, "RSAKeyGen"

    invoke-direct {v0, v4, v1, v2, v3}, Lcom/android/internal/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/internal/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/internal/org/bouncycastle/crypto/CryptoServiceProperties;)V

    .line 36
    return-void
.end method

.method protected blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 4
    .param p1, "x"    # Ljava/math/BigInteger;

    .line 201
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    .line 206
    .local v0, "iterations":I
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/internal/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result v1

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    goto :goto_23

    :cond_22
    const/4 v1, 0x0

    :goto_23
    return v1
.end method
