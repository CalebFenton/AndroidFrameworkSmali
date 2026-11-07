.class abstract Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;
.super Ljava/lang/Object;
.source "DHParametersHelper.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist TWO:Ljava/math/BigInteger;

.field private static final blacklist logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 15
    const-class v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    const-wide/16 v0, 0x1

    .line 17
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    const-wide/16 v0, 0x2

    .line 18
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method static blacklist generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .registers 13

    .line 28
    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    const-string v1, "Generating safe primes. This may take a long time."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-int/lit8 v2, p0, -0x1

    const/4 v3, 0x2

    ushr-int/2addr p0, v3

    const/4 v4, 0x0

    move v5, v4

    :goto_11
    const/4 v6, 0x1

    add-int/2addr v5, v6

    .line 40
    invoke-static {v2, v3, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v7

    .line 43
    invoke-virtual {v7, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    sget-object v9, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 45
    invoke-virtual {v8, p1}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_28

    goto :goto_11

    :cond_28
    if-le p1, v3, :cond_33

    add-int/lit8 v9, p1, -0x2

    .line 50
    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-nez v9, :cond_33

    goto :goto_11

    .line 61
    :cond_33
    invoke-static {v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v9

    if-ge v9, p0, :cond_3a

    goto :goto_11

    .line 69
    :cond_3a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sub-long/2addr p0, v0

    .line 71
    sget-object p2, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Generated safe primes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " tries took "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    new-array p0, v3, [Ljava/math/BigInteger;

    aput-object v8, p0, v4

    aput-object v7, p0, v6

    return-object p0
.end method

.method static blacklist selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 5

    .line 84
    sget-object p1, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 102
    :cond_6
    sget-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-static {v0, p1, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 104
    invoke-virtual {v1, v0, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return-object v0
.end method
