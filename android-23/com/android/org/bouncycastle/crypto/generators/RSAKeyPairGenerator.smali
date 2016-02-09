.class public Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 19
    const-wide/16 v0, 0x1

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@8
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p1, "bitlength"    # I
    .param p2, "e"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 155
    :cond_0
    new-instance v0, Ljava/math/BigInteger;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@4
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x1

    #@9
    invoke-direct {v0, p1, v2, v1}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    #@c
    .line 157
    .local v0, "p":Ljava/math/BigInteger;
    invoke-virtual {v0, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@f
    move-result-object v1

    #@10
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@12
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v1

    #@16
    if-nez v1, :cond_0

    #@18
    .line 162
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@1a
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    #@1d
    move-result v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@21
    move-result v1

    #@22
    if-eqz v1, :cond_0

    #@24
    .line 167
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@26
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@29
    move-result-object v1

    #@2a
    invoke-virtual {p2, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@2d
    move-result-object v1

    #@2e
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@30
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_0

    #@36
    .line 172
    return-object v0
.end method

.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 24

    #@0
    .prologue
    .line 30
    const/16 v21, 0x0

    #@2
    .line 31
    .local v21, "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    const/4 v12, 0x0

    #@3
    .line 33
    .end local v21    # "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .local v12, "done":Z
    :cond_0
    :goto_0
    if-nez v12, :cond_5

    #@5
    .line 40
    move-object/from16 v0, p0

    #@7
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@9
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getStrength()I

    #@c
    move-result v22

    #@d
    .line 41
    .local v22, "strength":I
    add-int/lit8 v2, v22, 0x1

    #@f
    div-int/lit8 v17, v2, 0x2

    #@11
    .line 42
    .local v17, "pbitlength":I
    sub-int v20, v22, v17

    #@13
    .line 43
    .local v20, "qbitlength":I
    div-int/lit8 v15, v22, 0x3

    #@15
    .line 44
    .local v15, "mindiffbits":I
    shr-int/lit8 v14, v22, 0x2

    #@17
    .line 46
    .local v14, "minWeight":I
    move-object/from16 v0, p0

    #@19
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@1b
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    #@1e
    move-result-object v4

    #@1f
    .line 51
    .local v4, "e":Ljava/math/BigInteger;
    move-object/from16 v0, p0

    #@21
    move/from16 v1, v17

    #@23
    invoke-virtual {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    #@26
    move-result-object v6

    #@27
    .line 58
    .local v6, "p":Ljava/math/BigInteger;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    #@29
    move/from16 v1, v20

    #@2b
    invoke-virtual {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    #@2e
    move-result-object v7

    #@2f
    .line 61
    .local v7, "q":Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@36
    move-result-object v11

    #@37
    .line 62
    .local v11, "diff":Ljava/math/BigInteger;
    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    #@3a
    move-result v2

    #@3b
    if-lt v2, v15, :cond_1

    #@3d
    .line 70
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@40
    move-result-object v3

    #@41
    .line 72
    .local v3, "n":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@44
    move-result v2

    #@45
    move/from16 v0, v22

    #@47
    if-eq v2, v0, :cond_2

    #@49
    .line 78
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@4c
    move-result-object v6

    #@4d
    goto :goto_1

    #@4e
    .line 88
    :cond_2
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@51
    move-result v2

    #@52
    if-ge v2, v14, :cond_3

    #@54
    .line 90
    move-object/from16 v0, p0

    #@56
    move/from16 v1, v17

    #@58
    invoke-virtual {v0, v1, v4}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;)Ljava/math/BigInteger;

    #@5b
    move-result-object v6

    #@5c
    goto :goto_1

    #@5d
    .line 97
    :cond_3
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    #@60
    move-result v2

    #@61
    if-gez v2, :cond_4

    #@63
    .line 99
    move-object/from16 v18, v6

    #@65
    .line 100
    .local v18, "phi":Ljava/math/BigInteger;
    move-object v6, v7

    #@66
    .line 101
    move-object/from16 v7, v18

    #@68
    .line 104
    .end local v18    # "phi":Ljava/math/BigInteger;
    :cond_4
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@6a
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@6d
    move-result-object v16

    #@6e
    .line 105
    .local v16, "pSub1":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@70
    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@73
    move-result-object v19

    #@74
    .line 106
    .local v19, "qSub1":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    #@76
    move-object/from16 v1, v19

    #@78
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@7b
    move-result-object v18

    #@7c
    .line 107
    .restart local v18    # "phi":Ljava/math/BigInteger;
    move-object/from16 v0, v16

    #@7e
    move-object/from16 v1, v19

    #@80
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@83
    move-result-object v2

    #@84
    move-object/from16 v0, v18

    #@86
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@89
    move-result-object v13

    #@8a
    .line 112
    .local v13, "lcm":Ljava/math/BigInteger;
    invoke-virtual {v4, v13}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@8d
    move-result-object v5

    #@8e
    .line 118
    .local v5, "d":Ljava/math/BigInteger;
    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    #@91
    move-result v2

    #@92
    move/from16 v0, v20

    #@94
    if-le v2, v0, :cond_0

    #@96
    move-object/from16 v0, v18

    #@98
    invoke-virtual {v4, v0}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9b
    move-result-object v2

    #@9c
    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@9f
    move-result v2

    #@a0
    if-eqz v2, :cond_0

    #@a2
    .line 124
    const/4 v12, 0x1

    #@a3
    .line 132
    move-object/from16 v0, v16

    #@a5
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@a8
    move-result-object v8

    #@a9
    .line 133
    .local v8, "dP":Ljava/math/BigInteger;
    move-object/from16 v0, v19

    #@ab
    invoke-virtual {v5, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@ae
    move-result-object v9

    #@af
    .line 134
    .local v9, "dQ":Ljava/math/BigInteger;
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b2
    move-result-object v10

    #@b3
    .line 136
    .local v10, "qInv":Ljava/math/BigInteger;
    new-instance v21, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@b5
    .line 137
    new-instance v23, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    #@b7
    const/4 v2, 0x0

    #@b8
    move-object/from16 v0, v23

    #@ba
    invoke-direct {v0, v2, v3, v4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V

    #@bd
    .line 138
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    #@bf
    invoke-direct/range {v2 .. v10}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@c2
    .line 136
    move-object/from16 v0, v21

    #@c4
    move-object/from16 v1, v23

    #@c6
    invoke-direct {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    #@c9
    .local v21, "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    goto/16 :goto_0

    #@cb
    .line 141
    .end local v3    # "n":Ljava/math/BigInteger;
    .end local v4    # "e":Ljava/math/BigInteger;
    .end local v5    # "d":Ljava/math/BigInteger;
    .end local v6    # "p":Ljava/math/BigInteger;
    .end local v7    # "q":Ljava/math/BigInteger;
    .end local v8    # "dP":Ljava/math/BigInteger;
    .end local v9    # "dQ":Ljava/math/BigInteger;
    .end local v10    # "qInv":Ljava/math/BigInteger;
    .end local v11    # "diff":Ljava/math/BigInteger;
    .end local v13    # "lcm":Ljava/math/BigInteger;
    .end local v14    # "minWeight":I
    .end local v15    # "mindiffbits":I
    .end local v16    # "pSub1":Ljava/math/BigInteger;
    .end local v17    # "pbitlength":I
    .end local v18    # "phi":Ljava/math/BigInteger;
    .end local v19    # "qSub1":Ljava/math/BigInteger;
    .end local v20    # "qbitlength":I
    .end local v21    # "result":Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .end local v22    # "strength":I
    :cond_5
    return-object v21
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    .line 25
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@2
    .end local p1    # "param":Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    #@4
    .line 23
    return-void
.end method
