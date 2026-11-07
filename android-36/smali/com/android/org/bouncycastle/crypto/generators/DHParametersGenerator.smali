.class public Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;
.super Ljava/lang/Object;
.source "DHParametersGenerator.java"


# static fields
.field private static final blacklist TWO:Ljava/math/BigInteger;


# instance fields
.field private blacklist certainty:I

.field private blacklist random:Ljava/security/SecureRandom;

.field private blacklist size:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    .line 18
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist generateParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 9

    .line 49
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    iget v1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->generateSafePrimes(IILjava/security/SecureRandom;)[Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x0

    .line 51
    aget-object v3, v0, v1

    const/4 v1, 0x1

    .line 52
    aget-object v5, v0, v1

    .line 53
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v3, v5, p0}, Lcom/android/org/bouncycastle/crypto/generators/DHParametersHelper;->selectGenerator(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    .line 55
    new-instance v2, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    sget-object v6, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->TWO:Ljava/math/BigInteger;

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v2
.end method

.method public blacklist init(IILjava/security/SecureRandom;)V
    .registers 4

    .line 32
    iput p1, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->size:I

    .line 33
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->certainty:I

    .line 34
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/generators/DHParametersGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method
