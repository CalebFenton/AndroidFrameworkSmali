.class Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;
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
    const-class v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    .line 17
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    .line 18
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .registers 20
    .param p0, "size"    # I
    .param p1, "certainty"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 28
    move/from16 v0, p1

    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    const-string v2, "Generating safe primes. This may take a long time."

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 30
    .local v1, "start":J
    const/4 v3, 0x0

    .line 33
    .local v3, "tries":I
    add-int/lit8 v4, p0, -0x1

    .line 34
    .local v4, "qLength":I
    ushr-int/lit8 v5, p0, 0x2

    .line 39
    .local v5, "minWeight":I
    :goto_12
    const/4 v6, 0x1

    add-int/2addr v3, v6

    .line 40
    const/4 v7, 0x2

    move-object/from16 v8, p2

    invoke-static {v4, v7, v8}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomPrime(IILjava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v9

    .line 43
    .local v9, "q":Ljava/math/BigInteger;
    invoke-virtual {v9, v6}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v10

    sget-object v11, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 45
    .local v10, "p":Ljava/math/BigInteger;
    invoke-virtual {v10, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-nez v11, :cond_2c

    .line 47
    goto :goto_12

    .line 50
    :cond_2c
    if-le v0, v7, :cond_37

    add-int/lit8 v11, v0, -0x2

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v11

    if-nez v11, :cond_37

    .line 52
    goto :goto_12

    .line 61
    :cond_37
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    move-result v11

    if-ge v11, v5, :cond_3e

    .line 63
    goto :goto_12

    .line 69
    :cond_3e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 70
    .local v11, "end":J
    sub-long v13, v11, v1

    .line 71
    .local v13, "duration":J
    sget-object v15, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    move/from16 v16, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Generated safe primes: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " tries took "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 74
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/math/BigInteger;

    const/4 v7, 0x0

    aput-object v10, v6, v7

    aput-object v9, v6, v16

    return-object v6
.end method

.method static blacklist selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .registers 6
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    .line 84
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 102
    .local v0, "pMinusTwo":Ljava/math/BigInteger;
    :cond_6
    sget-object v1, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-static {v1, v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v1

    .line 104
    .local v1, "h":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 106
    .local v1, "g":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 109
    return-object v1
.end method
