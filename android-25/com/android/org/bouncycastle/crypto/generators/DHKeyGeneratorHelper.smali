.class Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;
.super Ljava/lang/Object;
.source "DHKeyGeneratorHelper.java"


# static fields
.field static final INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

.field private static final ONE:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 12
    new-instance v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    #@2
    invoke-direct {v0}, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;-><init>()V

    #@5
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->INSTANCE:Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;

    #@7
    .line 14
    const-wide/16 v0, 0x1

    #@9
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    #@f
    .line 15
    const-wide/16 v0, 0x2

    #@11
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@14
    move-result-object v0

    #@15
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    #@17
    .line 10
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method calculatePrivate(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 9
    .param p1, "dhParams"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .param p2, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    #@3
    move-result v0

    #@4
    .line 25
    .local v0, "limit":I
    if-eqz v0, :cond_1

    #@6
    .line 27
    ushr-int/lit8 v4, v0, 0x2

    #@8
    .line 30
    .local v4, "minWeight":I
    :cond_0
    new-instance v7, Ljava/math/BigInteger;

    #@a
    invoke-direct {v7, v0, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@d
    add-int/lit8 v8, v0, -0x1

    #@f
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    #@12
    move-result-object v6

    #@13
    .line 31
    .local v6, "x":Ljava/math/BigInteger;
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@16
    move-result v7

    #@17
    if-lt v7, v4, :cond_0

    #@19
    .line 33
    return-object v6

    #@1a
    .line 38
    .end local v4    # "minWeight":I
    .end local v6    # "x":Ljava/math/BigInteger;
    :cond_1
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    #@1c
    .line 39
    .local v3, "min":Ljava/math/BigInteger;
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getM()I

    #@1f
    move-result v1

    #@20
    .line 40
    .local v1, "m":I
    if-eqz v1, :cond_2

    #@22
    .line 42
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->ONE:Ljava/math/BigInteger;

    #@24
    add-int/lit8 v8, v1, -0x1

    #@26
    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    #@29
    move-result-object v3

    #@2a
    .line 45
    :cond_2
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    #@2d
    move-result-object v5

    #@2e
    .line 46
    .local v5, "q":Ljava/math/BigInteger;
    if-nez v5, :cond_3

    #@30
    .line 48
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@33
    move-result-object v5

    #@34
    .line 50
    :cond_3
    sget-object v7, Lcom/android/org/bouncycastle/crypto/generators/DHKeyGeneratorHelper;->TWO:Ljava/math/BigInteger;

    #@36
    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@39
    move-result-object v2

    #@3a
    .line 52
    .local v2, "max":Ljava/math/BigInteger;
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    #@3d
    move-result v7

    #@3e
    ushr-int/lit8 v4, v7, 0x2

    #@40
    .line 55
    .restart local v4    # "minWeight":I
    :cond_4
    invoke-static {v3, v2, p2}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@43
    move-result-object v6

    #@44
    .line 56
    .restart local v6    # "x":Ljava/math/BigInteger;
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@47
    move-result v7

    #@48
    if-lt v7, v4, :cond_4

    #@4a
    .line 58
    return-object v6
.end method

.method calculatePublic(Lcom/android/org/bouncycastle/crypto/params/DHParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2
    .param p1, "dhParams"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .param p2, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 65
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {v0, p2, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method
