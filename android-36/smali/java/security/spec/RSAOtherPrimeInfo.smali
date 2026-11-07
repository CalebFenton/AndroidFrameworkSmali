.class public Ljava/security/spec/RSAOtherPrimeInfo;
.super Ljava/lang/Object;
.source "RSAOtherPrimeInfo.java"


# instance fields
.field private greylist-max-o crtCoefficient:Ljava/math/BigInteger;

.field private greylist-max-o prime:Ljava/math/BigInteger;

.field private greylist-max-o primeExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor whitelist test-api <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 6
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeExponent"    # Ljava/math/BigInteger;
    .param p3, "crtCoefficient"    # Ljava/math/BigInteger;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    if-eqz p1, :cond_20

    .line 82
    if-eqz p2, :cond_18

    .line 86
    if-eqz p3, :cond_10

    .line 90
    iput-object p1, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    .line 91
    iput-object p2, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    .line 92
    iput-object p3, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    .line 93
    return-void

    .line 87
    :cond_10
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the crtCoefficient parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_18
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the primeExponent parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "the prime parameter must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final whitelist test-api getCrtCoefficient()Ljava/math/BigInteger;
    .registers 2

    .line 119
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final whitelist test-api getExponent()Ljava/math/BigInteger;
    .registers 2

    .line 110
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final whitelist test-api getPrime()Ljava/math/BigInteger;
    .registers 2

    .line 101
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    return-object v0
.end method
