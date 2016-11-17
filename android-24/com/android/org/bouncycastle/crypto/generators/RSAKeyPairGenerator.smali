.class public Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private iterations:I

.field private param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


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
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@8
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static getNumberOfIterations(II)I
    .locals 6
    .param p0, "bits"    # I
    .param p1, "certainty"    # I

    #@0
    .prologue
    const/16 v3, 0x28

    #@2
    const/4 v2, 0x7

    #@3
    const/16 v5, 0x64

    #@5
    const/4 v1, 0x5

    #@6
    const/4 v0, 0x4

    #@7
    .line 207
    const/16 v4, 0x600

    #@9
    if-lt p0, v4, :cond_2

    #@b
    .line 209
    if-gt p1, v5, :cond_1

    #@d
    const/4 v0, 0x3

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    .line 210
    :cond_1
    const/16 v1, 0x80

    #@11
    if-le p1, v1, :cond_0

    #@13
    .line 211
    add-int/lit8 v0, p1, -0x80

    #@15
    add-int/lit8 v0, v0, 0x1

    #@17
    div-int/lit8 v0, v0, 0x2

    #@19
    add-int/lit8 v0, v0, 0x4

    #@1b
    goto :goto_0

    #@1c
    .line 213
    :cond_2
    const/16 v4, 0x400

    #@1e
    if-lt p0, v4, :cond_5

    #@20
    .line 215
    if-gt p1, v5, :cond_3

    #@22
    :goto_1
    return v0

    #@23
    .line 216
    :cond_3
    const/16 v0, 0x70

    #@25
    if-gt p1, v0, :cond_4

    #@27
    move v0, v1

    #@28
    goto :goto_1

    #@29
    .line 217
    :cond_4
    add-int/lit8 v0, p1, -0x70

    #@2b
    add-int/lit8 v0, v0, 0x1

    #@2d
    div-int/lit8 v0, v0, 0x2

    #@2f
    add-int/lit8 v0, v0, 0x5

    #@31
    goto :goto_1

    #@32
    .line 219
    :cond_5
    const/16 v0, 0x200

    #@34
    if-lt p0, v0, :cond_8

    #@36
    .line 221
    const/16 v0, 0x50

    #@38
    if-gt p1, v0, :cond_6

    #@3a
    :goto_2
    return v1

    #@3b
    .line 222
    :cond_6
    if-gt p1, v5, :cond_7

    #@3d
    move v1, v2

    #@3e
    goto :goto_2

    #@3f
    .line 223
    :cond_7
    add-int/lit8 v0, p1, -0x64

    #@41
    add-int/lit8 v0, v0, 0x1

    #@43
    div-int/lit8 v0, v0, 0x2

    #@45
    add-int/lit8 v1, v0, 0x7

    #@47
    goto :goto_2

    #@48
    .line 227
    :cond_8
    const/16 v0, 0x50

    #@4a
    if-gt p1, v0, :cond_9

    #@4c
    move v0, v3

    #@4d
    :goto_3
    return v0

    #@4e
    .line 228
    :cond_9
    add-int/lit8 v0, p1, -0x50

    #@50
    add-int/lit8 v0, v0, 0x1

    #@52
    div-int/lit8 v0, v0, 0x2

    #@54
    add-int/lit8 v0, v0, 0x28

    #@56
    goto :goto_3
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;
    .param p3, "sqrdBound"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 162
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    mul-int/lit8 v2, p1, 0x5

    #@3
    if-eq v0, v2, :cond_2

    #@5
    .line 164
    new-instance v1, Ljava/math/BigInteger;

    #@7
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@9
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@c
    move-result-object v2

    #@d
    const/4 v3, 0x1

    #@e
    invoke-direct {v1, p1, v3, v2}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    #@11
    .line 166
    .local v1, "p":Ljava/math/BigInteger;
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@14
    move-result-object v2

    #@15
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@17
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v2

    #@1b
    if-eqz v2, :cond_1

    #@1d
    .line 162
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@1f
    goto :goto_0

    #@20
    .line 171
    :cond_1
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@27
    move-result v2

    #@28
    if-ltz v2, :cond_0

    #@2a
    .line 176
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    #@2d
    move-result v2

    #@2e
    if-eqz v2, :cond_0

    #@30
    .line 181
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@32
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@39
    move-result-object v2

    #@3a
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@3c
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_0

    #@42
    .line 186
    return-object v1

    #@43
    .line 189
    .end local v1    # "p":Ljava/math/BigInteger;
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@45
    const-string/jumbo v3, "unable to generate prime number for RSA key"

    #@48
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4b
    throw v2
.end method

.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 30

    #@0
    .prologue
    .line 33
    const/16 v25, 0x0

    #@2
    .line 34
    .local v25, "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    const/4 v15, 0x0

    #@3
    .line 39
    .local v15, "done":Z
    move-object/from16 v0, p0

    #@5
    iget-object v4, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@7
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    #@a
    move-result v27

    #@b
    .line 40
    .local v27, "strength":I
    add-int/lit8 v4, v27, 0x1

    #@d
    div-int/lit8 v22, v4, 0x2

    #@f
    .line 41
    .local v22, "pbitlength":I
    sub-int v24, v27, v22

    #@11
    .line 42
    .local v24, "qbitlength":I
    div-int/lit8 v4, v27, 0x2

    #@13
    add-int/lit8 v20, v4, -0x64

    #@15
    .line 44
    .local v20, "mindiffbits":I
    div-int/lit8 v4, v27, 0x3

    #@17
    move/from16 v0, v20

    #@19
    if-ge v0, v4, :cond_0

    #@1b
    .line 46
    div-int/lit8 v20, v27, 0x3

    #@1d
    .line 49
    :cond_0
    shr-int/lit8 v19, v27, 0x2

    #@1f
    .line 52
    .local v19, "minWeight":I
    const-wide/16 v28, 0x2

    #@21
    invoke-static/range {v28 .. v29}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@24
    move-result-object v4

    #@25
    div-int/lit8 v28, v27, 0x2

    #@27
    move/from16 v0, v28

    #@29
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    #@2c
    move-result-object v13

    #@2d
    .line 54
    .local v13, "dLowerBound":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@2f
    add-int/lit8 v28, v27, -0x1

    #@31
    move/from16 v0, v28

    #@33
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@36
    move-result-object v26

    #@37
    .line 56
    .local v26, "squaredBound":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@39
    move/from16 v0, v20

    #@3b
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@3e
    move-result-object v18

    #@3f
    .line 58
    .end local v25    # "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local v18, "minDiff":Ljava/math/BigInteger;
    :cond_1
    :goto_0
    if-nez v15, :cond_6

    #@41
    .line 62
    move-object/from16 v0, p0

    #@43
    iget-object v4, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@45
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    #@48
    move-result-object v6

    #@49
    .line 64
    .local v6, "e":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@4b
    move/from16 v1, v22

    #@4d
    move-object/from16 v2, v26

    #@4f
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@52
    move-result-object v8

    #@53
    .line 71
    .local v8, "p":Ljava/math/BigInteger;
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    #@55
    move/from16 v1, v24

    #@57
    move-object/from16 v2, v26

    #@59
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5c
    move-result-object v9

    #@5d
    .line 74
    .local v9, "q":Ljava/math/BigInteger;
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@60
    move-result-object v4

    #@61
    invoke-virtual {v4}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@64
    move-result-object v14

    #@65
    .line 75
    .local v14, "diff":Ljava/math/BigInteger;
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    #@68
    move-result v4

    #@69
    move/from16 v0, v20

    #@6b
    if-lt v4, v0, :cond_2

    #@6d
    move-object/from16 v0, v18

    #@6f
    invoke-virtual {v14, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@72
    move-result v4

    #@73
    if-lez v4, :cond_2

    #@75
    .line 83
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@78
    move-result-object v5

    #@79
    .line 85
    .local v5, "n":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    #@7c
    move-result v4

    #@7d
    move/from16 v0, v27

    #@7f
    if-eq v4, v0, :cond_3

    #@81
    .line 91
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@84
    move-result-object v8

    #@85
    goto :goto_1

    #@86
    .line 101
    :cond_3
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@89
    move-result v4

    #@8a
    move/from16 v0, v19

    #@8c
    if-ge v4, v0, :cond_4

    #@8e
    .line 103
    move-object/from16 v0, p0

    #@90
    move/from16 v1, v22

    #@92
    move-object/from16 v2, v26

    #@94
    invoke-virtual {v0, v1, v6, v2}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@97
    move-result-object v8

    #@98
    goto :goto_1

    #@99
    .line 110
    :cond_4
    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@9c
    move-result v4

    #@9d
    if-gez v4, :cond_5

    #@9f
    .line 112
    move-object/from16 v16, v8

    #@a1
    .line 113
    .local v16, "gcd":Ljava/math/BigInteger;
    move-object v8, v9

    #@a2
    .line 114
    move-object/from16 v9, v16

    #@a4
    .line 117
    .end local v16    # "gcd":Ljava/math/BigInteger;
    :cond_5
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@a6
    invoke-virtual {v8, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a9
    move-result-object v21

    #@aa
    .line 118
    .local v21, "pSub1":Ljava/math/BigInteger;
    sget-object v4, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@ac
    invoke-virtual {v9, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@af
    move-result-object v23

    #@b0
    .line 119
    .local v23, "qSub1":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    #@b2
    move-object/from16 v1, v23

    #@b4
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b7
    move-result-object v16

    #@b8
    .line 120
    .restart local v16    # "gcd":Ljava/math/BigInteger;
    move-object/from16 v0, v21

    #@ba
    move-object/from16 v1, v16

    #@bc
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@bf
    move-result-object v4

    #@c0
    move-object/from16 v0, v23

    #@c2
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@c5
    move-result-object v17

    #@c6
    .line 125
    .local v17, "lcm":Ljava/math/BigInteger;
    move-object/from16 v0, v17

    #@c8
    invoke-virtual {v6, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@cb
    move-result-object v7

    #@cc
    .line 127
    .local v7, "d":Ljava/math/BigInteger;
    invoke-virtual {v7, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@cf
    move-result v4

    #@d0
    if-lez v4, :cond_1

    #@d2
    .line 133
    const/4 v15, 0x1

    #@d3
    .line 141
    move-object/from16 v0, v21

    #@d5
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d8
    move-result-object v10

    #@d9
    .line 142
    .local v10, "dP":Ljava/math/BigInteger;
    move-object/from16 v0, v23

    #@db
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@de
    move-result-object v11

    #@df
    .line 143
    .local v11, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@e2
    move-result-object v12

    #@e3
    .line 145
    .local v12, "qInv":Ljava/math/BigInteger;
    new-instance v25, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@e5
    .line 146
    new-instance v28, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@e7
    const/4 v4, 0x0

    #@e8
    move-object/from16 v0, v28

    #@ea
    invoke-direct {v0, v4, v5, v6}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@ed
    .line 147
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@ef
    invoke-direct/range {v4 .. v12}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@f2
    .line 145
    move-object/from16 v0, v25

    #@f4
    move-object/from16 v1, v28

    #@f6
    invoke-direct {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    #@f9
    .local v25, "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    goto/16 :goto_0

    #@fb
    .line 150
    .end local v5    # "n":Ljava/math/BigInteger;
    .end local v6    # "e":Ljava/math/BigInteger;
    .end local v7    # "d":Ljava/math/BigInteger;
    .end local v8    # "p":Ljava/math/BigInteger;
    .end local v9    # "q":Ljava/math/BigInteger;
    .end local v10    # "dP":Ljava/math/BigInteger;
    .end local v11    # "dQ":Ljava/math/BigInteger;
    .end local v12    # "qInv":Ljava/math/BigInteger;
    .end local v14    # "diff":Ljava/math/BigInteger;
    .end local v16    # "gcd":Ljava/math/BigInteger;
    .end local v17    # "lcm":Ljava/math/BigInteger;
    .end local v21    # "pSub1":Ljava/math/BigInteger;
    .end local v23    # "qSub1":Ljava/math/BigInteger;
    .end local v25    # "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    :cond_6
    return-object v25
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 2
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    .line 27
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@2
    .end local p1    # "param":Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@4
    .line 28
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@6
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    #@9
    move-result v0

    #@a
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@c
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    #@f
    move-result v1

    #@10
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    #@13
    move-result v0

    #@14
    iput v0, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->iterations:I

    #@16
    .line 25
    return-void
.end method

.method protected isProbablePrime(Ljava/math/BigInteger;)Z
    .locals 2
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 197
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@b
    move-result-object v0

    #@c
    iget v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->iterations:I

    #@e
    invoke-static {p1, v0, v1}, Lcom/android/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    #@11
    move-result v0

    #@12
    :goto_0
    return v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0
.end method
