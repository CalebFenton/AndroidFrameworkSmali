.class public Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "RSAKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final blacklist validated:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;


# instance fields
.field private blacklist exponent:Ljava/math/BigInteger;

.field private blacklist modulus:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-direct {v0}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;-><init>()V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    .line 20
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    .line 27
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5
    .param p1, "isPrivate"    # Z
    .param p2, "modulus"    # Ljava/math/BigInteger;
    .param p3, "exponent"    # Ljava/math/BigInteger;

    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    .line 38
    return-void
.end method

.method public constructor blacklist <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 7
    .param p1, "isPrivate"    # Z
    .param p2, "modulus"    # Ljava/math/BigInteger;
    .param p3, "exponent"    # Ljava/math/BigInteger;
    .param p4, "isInternal"    # Z

    .line 46
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 48
    if-nez p1, :cond_16

    .line 50
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    goto :goto_16

    .line 52
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA publicExponent is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_16
    :goto_16
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {v0, p2}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result v0

    if-eqz v0, :cond_20

    move-object v0, p2

    goto :goto_24

    :cond_20
    invoke-direct {p0, p2, p4}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->validate(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object v0

    :goto_24
    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    .line 57
    iput-object p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    .line 58
    return-void
.end method

.method private static blacklist getMRIterations(I)I
    .registers 2
    .param p0, "bits"    # I

    .line 113
    const/16 v0, 0x600

    if-lt p0, v0, :cond_6

    const/4 v0, 0x3

    goto :goto_14

    .line 114
    :cond_6
    const/16 v0, 0x400

    if-lt p0, v0, :cond_c

    const/4 v0, 0x4

    goto :goto_14

    .line 115
    :cond_c
    const/16 v0, 0x200

    if-lt p0, v0, :cond_12

    const/4 v0, 0x7

    goto :goto_14

    .line 116
    :cond_12
    const/16 v0, 0x32

    :goto_14
    nop

    .line 117
    .local v0, "iterations":I
    return v0
.end method

.method private blacklist validate(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;
    .registers 10
    .param p1, "modulus"    # Ljava/math/BigInteger;
    .param p2, "isInternal"    # Z

    .line 62
    if-eqz p2, :cond_8

    .line 64
    sget-object v0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {v0, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    .line 66
    return-object p1

    .line 69
    :cond_8
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_74

    .line 76
    const-string v0, "com.android.internal.org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 78
    return-object p1

    .line 81
    :cond_19
    const-string v0, "com.android.internal.org.bouncycastle.rsa.max_size"

    const/16 v1, 0x3c00

    invoke-static {v0, v1}, Lcom/android/internal/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v0

    .line 83
    .local v0, "maxBitLength":I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    .line 84
    .local v1, "modBitLength":I
    if-lt v0, v1, :cond_6c

    .line 89
    sget-object v2, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    sget-object v3, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 94
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 95
    .local v2, "bits":I
    const-string v3, "com.android.internal.org.bouncycastle.rsa.max_mr_tests"

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->getMRIterations(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result v3

    .line 97
    .local v3, "iterations":I
    if-lez v3, :cond_5e

    .line 99
    invoke-static {}, Lcom/android/internal/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-static {p1, v4, v3}, Lcom/android/internal/org/bouncycastle/math/Primes;->enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;

    move-result-object v4

    .line 100
    .local v4, "mr":Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    invoke-virtual {v4}, Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;->isProvablyComposite()Z

    move-result v5

    if-eqz v5, :cond_56

    goto :goto_5e

    .line 102
    :cond_56
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "RSA modulus is not composite"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 106
    .end local v4    # "mr":Lcom/android/internal/org/bouncycastle/math/Primes$MROutput;
    :cond_5e
    :goto_5e
    sget-object v4, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {v4, p1}, Lcom/android/internal/org/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    .line 108
    return-object p1

    .line 91
    .end local v2    # "bits":I
    .end local v3    # "iterations":I
    :cond_64
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "RSA modulus has a small prime factor"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 86
    :cond_6c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "modulus value out of range"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 71
    .end local v0    # "maxBitLength":I
    .end local v1    # "modBitLength":I
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RSA modulus is even"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist getExponent()Ljava/math/BigInteger;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method
