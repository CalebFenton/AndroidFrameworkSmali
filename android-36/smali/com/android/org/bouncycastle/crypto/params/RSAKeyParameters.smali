.class public Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "RSAKeyParameters.java"


# static fields
.field private static final blacklist ONE:Ljava/math/BigInteger;

.field private static final blacklist SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

.field private static final blacklist validated:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;


# instance fields
.field private blacklist exponent:Ljava/math/BigInteger;

.field private blacklist modulus:Ljava/math/BigInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 17
    new-instance v0, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    invoke-direct {v0}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;-><init>()V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    .line 20
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8138e8a0fcf3a4e84a771d40fd305d7f4aa59306d7251de54d98af8fe95729a1f73d893fa424cd2edc8636a6c3285e022b0e3866a565ae8108eed8591cd4fe8d2ce86165a978d719ebf647f362d33fca29cd179fb42401cbaf3df0c614056f9c8f3cfd51e474afb6bc6974f78db8aba8e9e517fded658591ab7502bd41849462f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    const-wide/16 v0, 0x1

    .line 27
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 5

    const/4 v0, 0x0

    .line 37
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;-><init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V

    return-void
.end method

.method public constructor blacklist <init>(ZLjava/math/BigInteger;Ljava/math/BigInteger;Z)V
    .registers 5

    .line 46
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    if-nez p1, :cond_16

    .line 50
    invoke-virtual {p3}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_e

    goto :goto_16

    .line 52
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA publicExponent is even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 56
    :cond_16
    :goto_16
    sget-object p1, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p1, p2}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->contains(Ljava/math/BigInteger;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-direct {p0, p2, p4}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->validate(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;

    move-result-object p2

    :goto_23
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    .line 57
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-void
.end method

.method private static blacklist getMRIterations(I)I
    .registers 2

    .line 0
    const/16 v0, 0x600

    if-lt p0, v0, :cond_6

    const/4 p0, 0x3

    return p0

    :cond_6
    const/16 v0, 0x400

    if-lt p0, v0, :cond_c

    const/4 p0, 0x4

    return p0

    :cond_c
    const/16 v0, 0x200

    if-lt p0, v0, :cond_12

    const/4 p0, 0x7

    return p0

    :cond_12
    const/16 p0, 0x32

    return p0
.end method

.method private blacklist validate(Ljava/math/BigInteger;Z)Ljava/math/BigInteger;
    .registers 3

    if-eqz p2, :cond_8

    .line 64
    sget-object p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    return-object p1

    .line 69
    :cond_8
    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_74

    .line 76
    const-string p0, "com.android.org.bouncycastle.rsa.allow_unsafe_mod"

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Properties;->isOverrideSet(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_19

    return-object p1

    .line 81
    :cond_19
    const-string p0, "com.android.org.bouncycastle.rsa.max_size"

    const/16 p2, 0x3c00

    invoke-static {p0, p2}, Lcom/android/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result p0

    .line 83
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    if-lt p0, p2, :cond_6c

    .line 89
    sget-object p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->SMALL_PRIMES_PRODUCT:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sget-object p2, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_64

    .line 94
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    div-int/lit8 p0, p0, 0x2

    .line 95
    const-string p2, "com.android.org.bouncycastle.rsa.max_mr_tests"

    invoke-static {p0}, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->getMRIterations(I)I

    move-result p0

    invoke-static {p2, p0}, Lcom/android/org/bouncycastle/util/Properties;->asInteger(Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_5e

    .line 99
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/android/org/bouncycastle/math/Primes;->enhancedMRProbablePrimeTest(Ljava/math/BigInteger;Ljava/security/SecureRandom;I)Lcom/android/org/bouncycastle/math/Primes$MROutput;

    move-result-object p0

    .line 100
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/Primes$MROutput;->isProvablyComposite()Z

    move-result p0

    if-eqz p0, :cond_56

    goto :goto_5e

    .line 102
    :cond_56
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus is not composite"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 106
    :cond_5e
    :goto_5e
    sget-object p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->validated:Lcom/android/org/bouncycastle/util/BigIntegers$Cache;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/util/BigIntegers$Cache;->add(Ljava/math/BigInteger;)V

    return-object p1

    .line 91
    :cond_64
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus has a small prime factor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 86
    :cond_6c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "modulus value out of range"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 71
    :cond_74
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "RSA modulus is even"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public blacklist getExponent()Ljava/math/BigInteger;
    .registers 1

    .line 127
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->exponent:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getModulus()Ljava/math/BigInteger;
    .registers 1

    .line 122
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/RSAKeyParameters;->modulus:Ljava/math/BigInteger;

    return-object p0
.end method
