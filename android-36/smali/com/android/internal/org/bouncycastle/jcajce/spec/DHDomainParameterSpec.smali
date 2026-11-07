.class public Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;
.super Ljavax/crypto/spec/DHParameterSpec;
.source "DHDomainParameterSpec.java"


# instance fields
.field private final blacklist j:Ljava/math/BigInteger;

.field private final blacklist m:I

.field private final blacklist q:Ljava/math/BigInteger;

.field private blacklist validationParameters:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;


# direct methods
.method public constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 9
    .param p1, "domainParameters"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 31
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getG()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getJ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getM()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getL()I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    .line 32
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->getValidationParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->validationParameters:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 10
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    .line 44
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "p":Ljava/math/BigInteger;
    .end local p2    # "q":Ljava/math/BigInteger;
    .end local p3    # "g":Ljava/math/BigInteger;
    .local v1, "p":Ljava/math/BigInteger;
    .local v2, "q":Ljava/math/BigInteger;
    .local v3, "g":Ljava/math/BigInteger;
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 45
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 11
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "l"    # I

    .line 57
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .end local p1    # "p":Ljava/math/BigInteger;
    .end local p2    # "q":Ljava/math/BigInteger;
    .end local p3    # "g":Ljava/math/BigInteger;
    .end local p4    # "l":I
    .local v1, "p":Ljava/math/BigInteger;
    .local v2, "q":Ljava/math/BigInteger;
    .local v3, "g":Ljava/math/BigInteger;
    .local v5, "l":I
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .registers 13
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "l"    # I

    .line 71
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    .end local p1    # "p":Ljava/math/BigInteger;
    .end local p2    # "q":Ljava/math/BigInteger;
    .end local p3    # "g":Ljava/math/BigInteger;
    .end local p4    # "j":Ljava/math/BigInteger;
    .end local p5    # "l":I
    .local v1, "p":Ljava/math/BigInteger;
    .local v2, "q":Ljava/math/BigInteger;
    .local v3, "g":Ljava/math/BigInteger;
    .local v4, "j":Ljava/math/BigInteger;
    .local v6, "l":I
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V

    .line 72
    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;II)V
    .registers 7
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "j"    # Ljava/math/BigInteger;
    .param p5, "m"    # I
    .param p6, "l"    # I

    .line 86
    invoke-direct {p0, p1, p3, p6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 87
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->q:Ljava/math/BigInteger;

    .line 88
    iput-object p4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->j:Ljava/math/BigInteger;

    .line 89
    iput p5, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->m:I

    .line 90
    return-void
.end method


# virtual methods
.method public blacklist getDomainParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .registers 9

    .line 129
    new-instance v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->q:Ljava/math/BigInteger;

    iget v4, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->m:I

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->getL()I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->j:Ljava/math/BigInteger;

    iget-object v7, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->validationParameters:Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;IILjava/math/BigInteger;Lcom/android/internal/org/bouncycastle/crypto/params/DHValidationParameters;)V

    return-object v0
.end method

.method public blacklist getJ()Ljava/math/BigInteger;
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->j:Ljava/math/BigInteger;

    return-object v0
.end method

.method public blacklist getM()I
    .registers 2

    .line 119
    iget v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->m:I

    return v0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/jcajce/spec/DHDomainParameterSpec;->q:Ljava/math/BigInteger;

    return-object v0
.end method
