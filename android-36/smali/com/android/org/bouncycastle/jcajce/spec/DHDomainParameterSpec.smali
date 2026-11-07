.class public Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;
.super Ljavax/crypto/spec/DHParameterSpec;
.source "DHDomainParameterSpec.java"


# instance fields
.field private final blacklist j:Ljava/math/BigInteger;

.field private final blacklist m:I

.field private final blacklist q:Ljava/math/BigInteger;

.field private blacklist validationParameters:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 9

    .line 31
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    .line 32
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object p0

    iput-object p0, v0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->validationParameters:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .line 71
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .registers 7

    .line 86
    invoke-direct {p0, p1, p3, p6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 87
    iput-object p2, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->q:Ljava/math/BigInteger;

    .line 88
    iput-object p4, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->j:Ljava/math/BigInteger;

    .line 89
    iput p5, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->m:I

    return-void
.end method


# virtual methods
.method public blacklist getDomainParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 9

    .line 129
    new-instance v0, Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->q:Ljava/math/BigInteger;

    iget v4, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->m:I

    invoke-virtual {p0}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->j:Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->validationParameters:Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    invoke-direct/range {v0 .. v7}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 1

    .line 99
    iget-object p0, p0, Lcom/android/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->q:Ljava/math/BigInteger;

    return-object p0
.end method
