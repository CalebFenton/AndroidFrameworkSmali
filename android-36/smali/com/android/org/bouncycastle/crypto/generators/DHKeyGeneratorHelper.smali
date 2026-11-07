.class Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final blacklist INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 13
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    const-wide/16 v0, 0x1

    .line 15
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 16
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method blacklist calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6

    .line 24
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result p0

    if-eqz p0, :cond_19

    ushr-int/lit8 v0, p0, 0x2

    .line 31
    :cond_8
    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomBigInteger(ILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, p0, -0x1

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 32
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v1

    if-lt v1, v0, :cond_8

    return-object p1

    .line 39
    :cond_19
    sget-object p0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    .line 40
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v0

    if-eqz v0, :cond_2a

    .line 43
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_2b

    :cond_2a
    move-object v0, p0

    .line 46
    :goto_2b
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    if-nez v1, :cond_35

    .line 49
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    .line 51
    :cond_35
    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 53
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    ushr-int/lit8 p1, p1, 0x2

    .line 56
    :cond_3f
    invoke-static {v0, p0, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 57
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v2

    if-lt v2, p1, :cond_3f

    return-object v1
.end method

.method blacklist calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .registers 3

    .line 66
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method
