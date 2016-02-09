.class public Ljava/security/spec/RSAOtherPrimeInfo;
.super Ljava/lang/Object;
.source "RSAOtherPrimeInfo.java"


# instance fields
.field private final crtCoefficient:Ljava/math/BigInteger;

.field private final prime:Ljava/math/BigInteger;

.field private final primeExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "prime"    # Ljava/math/BigInteger;
    .param p2, "primeExponent"    # Ljava/math/BigInteger;
    .param p3, "crtCoefficient"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 51
    if-nez p1, :cond_0

    #@5
    .line 52
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "prime == null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 54
    :cond_0
    if-nez p2, :cond_1

    #@10
    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "primeExponent == null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 57
    :cond_1
    if-nez p3, :cond_2

    #@1b
    .line 58
    new-instance v0, Ljava/lang/NullPointerException;

    #@1d
    const-string/jumbo v1, "crtCoefficient == null"

    #@20
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@23
    throw v0

    #@24
    .line 60
    :cond_2
    iput-object p1, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    #@26
    .line 61
    iput-object p2, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    #@28
    .line 62
    iput-object p3, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    #@2a
    .line 50
    return-void
.end method


# virtual methods
.method public final getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 71
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->crtCoefficient:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public final getExponent()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->primeExponent:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public final getPrime()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 80
    iget-object v0, p0, Ljava/security/spec/RSAOtherPrimeInfo;->prime:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method
