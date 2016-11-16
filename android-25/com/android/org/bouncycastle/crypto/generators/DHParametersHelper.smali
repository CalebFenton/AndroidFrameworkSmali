.class Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;
.super Ljava/lang/Object;
.source "DHParametersHelper.java"


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 15
    const-class v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    #@9
    move-result-object v0

    #@a
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    #@c
    .line 18
    const-wide/16 v0, 0x1

    #@e
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    #@14
    .line 19
    const-wide/16 v0, 0x2

    #@16
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@19
    move-result-object v0

    #@1a
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    #@1c
    .line 12
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;
    .locals 16
    .param p0, "size"    # I
    .param p1, "certainty"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 29
    sget-object v13, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    #@2
    const-string/jumbo v14, "Generating safe primes. This may take a long time."

    #@5
    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    #@8
    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@b
    move-result-wide v10

    #@c
    .line 31
    .local v10, "start":J
    const/4 v12, 0x0

    #@d
    .line 34
    .local v12, "tries":I
    add-int/lit8 v9, p0, -0x1

    #@f
    .line 35
    .local v9, "qLength":I
    ushr-int/lit8 v6, p0, 0x2

    #@11
    .line 40
    .local v6, "minWeight":I
    :cond_0
    add-int/lit8 v12, v12, 0x1

    #@13
    .line 42
    new-instance v8, Ljava/math/BigInteger;

    #@15
    const/4 v13, 0x2

    #@16
    move-object/from16 v0, p2

    #@18
    invoke-direct {v8, v9, v13, v0}, Ljava/math/BigInteger;-><init>(IILjava/util/Random;)V

    #@1b
    .line 45
    .local v8, "q":Ljava/math/BigInteger;
    const/4 v13, 0x1

    #@1c
    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@1f
    move-result-object v13

    #@20
    sget-object v14, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    #@22
    invoke-virtual {v13, v14}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@25
    move-result-object v7

    #@26
    .line 47
    .local v7, "p":Ljava/math/BigInteger;
    move/from16 v0, p1

    #@28
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@2b
    move-result v13

    #@2c
    if-eqz v13, :cond_0

    #@2e
    .line 52
    const/4 v13, 0x2

    #@2f
    move/from16 v0, p1

    #@31
    if-le v0, v13, :cond_1

    #@33
    add-int/lit8 v13, p1, -0x2

    #@35
    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    #@38
    move-result v13

    #@39
    if-eqz v13, :cond_0

    #@3b
    .line 63
    :cond_1
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@3e
    move-result v13

    #@3f
    if-lt v13, v6, :cond_0

    #@41
    .line 71
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@44
    move-result-wide v4

    #@45
    .line 72
    .local v4, "end":J
    sub-long v2, v4, v10

    #@47
    .line 73
    .local v2, "duration":J
    sget-object v13, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->logger:Ljava/util/logging/Logger;

    #@49
    new-instance v14, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    const-string/jumbo v15, "Generated safe primes: "

    #@51
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v14

    #@55
    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@58
    move-result-object v14

    #@59
    const-string/jumbo v15, " tries took "

    #@5c
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v14

    #@60
    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@63
    move-result-object v14

    #@64
    const-string/jumbo v15, "ms"

    #@67
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v14

    #@6b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@6e
    move-result-object v14

    #@6f
    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    #@72
    .line 76
    const/4 v13, 0x2

    #@73
    new-array v13, v13, [Ljava/math/BigInteger;

    #@75
    const/4 v14, 0x0

    #@76
    aput-object v7, v13, v14

    #@78
    const/4 v14, 0x1

    #@79
    aput-object v8, v13, v14

    #@7b
    return-object v13
.end method

.method static selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 86
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    #@2
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@5
    move-result-object v2

    #@6
    .line 104
    .local v2, "pMinusTwo":Ljava/math/BigInteger;
    :cond_0
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    #@8
    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    .line 106
    .local v1, "h":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->TWO:Ljava/math/BigInteger;

    #@e
    invoke-virtual {v1, v3, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@11
    move-result-object v0

    #@12
    .line 108
    .local v0, "g":Ljava/math/BigInteger;
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->ONE:Ljava/math/BigInteger;

    #@14
    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v3

    #@18
    if-nez v3, :cond_0

    #@1a
    .line 111
    return-object v0
.end method
