.class public Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "RSAKeyPairGenerator.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;


# instance fields
.field private blacklist param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x1

    .line 27
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

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

    const/16 v0, 0x600

    const/4 v1, 0x4

    const/16 v2, 0x64

    if-lt p0, v0, :cond_16

    if-gt p1, v2, :cond_b

    const/4 p0, 0x3

    return p0

    :cond_b
    const/16 p0, 0x80

    if-gt p1, p0, :cond_10

    return v1

    :cond_10
    add-int/lit8 p1, p1, -0x7f

    .line 220
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v1

    return p1

    :cond_16
    const/16 v0, 0x400

    const/4 v3, 0x5

    if-lt p0, v0, :cond_29

    if-gt p1, v2, :cond_1e

    return v1

    :cond_1e
    const/16 p0, 0x70

    if-gt p1, p0, :cond_23

    return v3

    :cond_23
    add-int/lit8 p1, p1, -0x6f

    .line 226
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, v3

    return p1

    :cond_29
    const/16 v0, 0x200

    const/16 v1, 0x50

    if-lt p0, v0, :cond_3c

    if-gt p1, v1, :cond_32

    return v3

    :cond_32
    const/4 p0, 0x7

    if-gt p1, v2, :cond_36

    return p0

    :cond_36
    add-int/lit8 p1, p1, -0x63

    .line 232
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    return p1

    :cond_3c
    const/16 p0, 0x28

    if-gt p1, v1, :cond_41

    return p0

    :cond_41
    add-int/lit8 p1, p1, -0x4f

    .line 237
    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    return p1
.end method


# virtual methods
.method protected blacklist chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 8

    const/4 v0, 0x0

    :goto_1
    mul-int/lit8 v1, p1, 0x5

    if-eq v0, v1, :cond_41

    .line 171
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 173
    invoke-virtual {v1, p2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    goto :goto_3d

    .line 178
    :cond_1d
    invoke-virtual {v1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v2

    if-gez v2, :cond_28

    goto :goto_3d

    .line 183
    :cond_28
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->isProbablePrime(Ljava/math/BigInteger;)Z

    move-result v2

    if-nez v2, :cond_2f

    goto :goto_3d

    .line 188
    :cond_2f
    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    :goto_3d
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_40
    return-object v1

    .line 196
    :cond_41
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "unable to generate prime number for RSA key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .registers 26

    move-object/from16 v0, p0

    .line 46
    iget-object v1, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 47
    div-int/lit8 v2, v2, 0x2

    sub-int v3, v1, v2

    .line 49
    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v5, v4, -0x64

    .line 51
    div-int/lit8 v6, v1, 0x3

    if-ge v5, v6, :cond_17

    move v5, v6

    :cond_17
    shr-int/lit8 v6, v1, 0x2

    const-wide/16 v7, 0x2

    .line 59
    invoke-static {v7, v8}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v4

    .line 61
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v8, v1, -0x1

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    .line 63
    invoke-virtual {v7, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    :goto_31
    if-nez v11, :cond_d2

    .line 69
    iget-object v12, v0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v12}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v15

    .line 71
    invoke-virtual {v0, v2, v15, v8}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    .line 78
    :goto_3d
    invoke-virtual {v0, v3, v15, v8}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 81
    invoke-virtual {v13, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v14}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v14

    .line 82
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-lt v10, v5, :cond_55

    invoke-virtual {v14, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gtz v10, :cond_5a

    :cond_55
    move/from16 v23, v1

    const/4 v10, 0x0

    goto/16 :goto_cc

    .line 90
    :cond_5a
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v14

    .line 92
    invoke-virtual {v14}, Ljava/math/BigInteger;->bitLength()I

    move-result v10

    if-eq v10, v1, :cond_69

    .line 98
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->max(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    goto :goto_3d

    .line 108
    :cond_69
    invoke-static {v14}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v10

    if-ge v10, v6, :cond_74

    .line 110
    invoke-virtual {v0, v2, v15, v8}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->chooseRandomPrime(ILjava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    goto :goto_3d

    .line 117
    :cond_74
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v10

    if-gez v10, :cond_7f

    move-object/from16 v24, v13

    move-object v13, v12

    move-object/from16 v12, v24

    .line 124
    :cond_7f
    sget-object v10, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 125
    invoke-virtual {v13, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    move/from16 v23, v1

    .line 126
    invoke-virtual {v0, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 132
    invoke-virtual {v15, v1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 134
    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v16

    if-gtz v16, :cond_a6

    :goto_a1
    move-object/from16 v0, p0

    move/from16 v1, v23

    goto :goto_31

    .line 148
    :cond_a6
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v19

    .line 149
    invoke-virtual {v1, v10}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v20

    .line 150
    invoke-static {v12, v13}, Lcom/android/org/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v21

    .line 152
    new-instance v9, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {v0, v10, v14, v15, v11}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    move-object/from16 v18, v13

    new-instance v13, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    const/16 v22, 0x1

    move-object/from16 v16, v1

    move-object/from16 v17, v12

    invoke-direct/range {v13 .. v22}, Lcom/android/org/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Z)V

    invoke-direct {v9, v0, v13}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    goto :goto_a1

    :goto_cc
    move-object/from16 v0, p0

    move/from16 v1, v23

    goto/16 :goto_3d

    :cond_d2
    return-object v9
.end method

.method public blacklist init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .registers 5

    .line 33
    move-object v0, p1

    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    iput-object v0, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    .line 35
    new-instance p0, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getStrength()I

    move-result p1

    invoke-static {p1}, Lcom/android/org/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityForFF(I)I

    move-result p1

    const/4 v0, 0x0

    sget-object v1, Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;->KEYGEN:Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;

    const-string v2, "RSAKeyGen"

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/android/org/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lcom/android/org/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lcom/android/org/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method protected blacklist isProbablePrime(Ljava/math/BigInteger;)Z
    .registers 4

    .line 201
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;->getCertainty()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->getNumberOfIterations(II)I

    move-result v0

    .line 206
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/Primes;->hasAnySmallFactors(Ljava/math/BigInteger;)Z

    move-result v1

    if-nez v1, :cond_22

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/generators/RSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/RSAKeyGenerationParameters;

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object p0

    invoke-static {p1, p0, v0}, Lcom/android/org/bouncycastle/math/Primes;->isMRProbablePrime(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Z

    move-result p0

    if-eqz p0, :cond_22

    const/4 p0, 0x1

    return p0

    :cond_22
    const/4 p0, 0x0

    return p0
.end method
