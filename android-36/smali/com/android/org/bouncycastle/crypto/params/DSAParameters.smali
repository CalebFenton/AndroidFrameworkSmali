.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
.super Ljava/lang/Object;
.source "DSAParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private blacklist g:Ljava/math/BigInteger;

.field private blacklist p:Ljava/math/BigInteger;

.field private blacklist q:Ljava/math/BigInteger;

.field private blacklist validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;


# direct methods
.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 4

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 25
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 26
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V
    .registers 5

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    .line 36
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    .line 37
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    .line 38
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 64
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 69
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    .line 71
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v0

    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p1

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const/4 p0, 0x1

    return p0

    :cond_2e
    return v1
.end method

.method public blacklist getG()Ljava/math/BigInteger;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getP()Ljava/math/BigInteger;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getQ()Ljava/math/BigInteger;
    .registers 1

    .line 48
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    return-object p0
.end method

.method public blacklist getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
    .registers 1

    .line 58
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 76
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
