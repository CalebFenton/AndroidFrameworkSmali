.class public abstract Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private blacklist params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor blacklist <init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 3

    .line 17
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 19
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    .line 30
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 35
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    .line 37
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-nez p0, :cond_15

    .line 39
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object p0

    if-nez p0, :cond_14

    const/4 p0, 0x1

    return p0

    :cond_14
    return v1

    .line 43
    :cond_15
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public blacklist getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .registers 1

    .line 24
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 49
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;->isPrivate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 51
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    if-eqz p0, :cond_10

    .line 53
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0

    :cond_10
    return v0
.end method
