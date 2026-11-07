.class Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final blacklist INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    .line 15
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    .line 16
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method


# virtual methods
.method blacklist calculatePrivate(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 11
    .param p1, "dhParams"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 24
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v0

    .line 26
    .local v0, "limit":I
    if-eqz v0, :cond_1a

    .line 28
    ushr-int/lit8 v1, v0, 0x2

    .line 31
    .local v1, "minWeight":I
    :goto_8
    invoke-static {v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 32
    .local v2, "x":Ljava/math/BigInteger;
    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v3

    if-lt v3, v1, :cond_19

    .line 34
    return-object v2

    .line 36
    .end local v2    # "x":Ljava/math/BigInteger;
    :cond_19
    goto :goto_8

    .line 39
    .end local v1    # "minWeight":I
    :cond_1a
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    .line 40
    .local v1, "min":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v2

    .line 41
    .local v2, "m":I
    if-eqz v2, :cond_2a

    .line 43
    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v4, v2, -0x1

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 46
    :cond_2a
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v3

    .line 47
    .local v3, "q":Ljava/math/BigInteger;
    if-nez v3, :cond_34

    .line 49
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v3

    .line 51
    :cond_34
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 53
    .local v4, "max":Ljava/math/BigInteger;
    invoke-virtual {v4}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    ushr-int/lit8 v5, v5, 0x2

    .line 56
    .local v5, "minWeight":I
    :goto_40
    invoke-static {v1, v4, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v6

    .line 57
    .local v6, "x":Ljava/math/BigInteger;
    invoke-static {v6}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v7

    if-lt v7, v5, :cond_4b

    .line 59
    return-object v6

    .line 61
    .end local v6    # "x":Ljava/math/BigInteger;
    :cond_4b
    goto :goto_40
.end method

.method blacklist calculatePublic(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 5
    .param p1, "dhParams"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .param p2, "x"    # Ljava/math/BigInteger;

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
