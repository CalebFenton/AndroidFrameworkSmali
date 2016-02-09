.class public Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;
.super Ljava/lang/Object;
.source "DSAKeyPairGenerator.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# static fields
.field private static final ONE:Ljava/math/BigInteger;


# instance fields
.field private param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 25
    const-wide/16 v0, 0x1

    #@2
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@5
    move-result-object v0

    #@6
    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@8
    .line 22
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "p"    # Ljava/math/BigInteger;
    .param p1, "g"    # Ljava/math/BigInteger;
    .param p2, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 67
    invoke-virtual {p1, p2, p0}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;
    .locals 4
    .param p0, "q"    # Ljava/math/BigInteger;
    .param p1, "random"    # Ljava/security/SecureRandom;

    #@0
    .prologue
    .line 50
    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v2

    #@4
    ushr-int/lit8 v0, v2, 0x2

    #@6
    .line 57
    .local v0, "minWeight":I
    :cond_0
    sget-object v2, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@8
    sget-object v3, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->ONE:Ljava/math/BigInteger;

    #@a
    invoke-virtual {p0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@d
    move-result-object v3

    #@e
    invoke-static {v2, v3, p1}, Lcom/android/org/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@11
    move-result-object v1

    #@12
    .line 58
    .local v1, "x":Ljava/math/BigInteger;
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getNafWeight(Ljava/math/BigInteger;)I

    #@15
    move-result v2

    #@16
    if-lt v2, v0, :cond_0

    #@18
    .line 60
    return-object v1
.end method


# virtual methods
.method public generateKeyPair()Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    #@0
    .prologue
    .line 37
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@2
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@5
    move-result-object v0

    #@6
    .line 39
    .local v0, "dsaParams":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@9
    move-result-object v3

    #@a
    iget-object v4, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    #@f
    move-result-object v4

    #@10
    invoke-static {v3, v4}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->generatePrivateKey(Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    #@13
    move-result-object v1

    #@14
    .line 40
    .local v1, "x":Ljava/math/BigInteger;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@1b
    move-result-object v4

    #@1c
    invoke-static {v3, v4, v1}, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->calculatePublicKey(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1f
    move-result-object v2

    #@20
    .line 42
    .local v2, "y":Ljava/math/BigInteger;
    new-instance v3, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;

    #@22
    .line 43
    new-instance v4, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;

    #@24
    invoke-direct {v4, v2, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPublicKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@27
    .line 44
    new-instance v5, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;

    #@29
    invoke-direct {v5, v1, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAParameters;)V

    #@2c
    .line 42
    invoke-direct {v3, v4, v5}, Lcom/android/org/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    #@2f
    return-object v3
.end method

.method public init(Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0
    .param p1, "param"    # Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;

    #@0
    .prologue
    .line 32
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@2
    .end local p1    # "param":Lcom/android/org/bouncycastle/crypto/KeyGenerationParameters;
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DSAKeyPairGenerator;->param:Lcom/android/org/bouncycastle/crypto/params/DSAKeyGenerationParameters;

    #@4
    .line 30
    return-void
.end method
