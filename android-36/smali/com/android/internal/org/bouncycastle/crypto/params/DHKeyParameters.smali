.class public Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;
.super Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private blacklist params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor blacklist <init>(ZLcom/android/internal/org/bouncycastle/crypto/params/DHParameters;)V
    .registers 3
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 17
    invoke-direct {p0, p1}, Lcom/android/internal/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    .line 19
    iput-object p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    .line 20
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 30
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 32
    return v1

    .line 35
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;

    .line 37
    .local v0, "dhKey":Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    if-nez v2, :cond_15

    .line 39
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    if-nez v2, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1

    .line 43
    :cond_15
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public blacklist getParameters()Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 49
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 51
    .local v0, "code":I
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    if-eqz v1, :cond_11

    .line 53
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/crypto/params/DHParameters;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 56
    :cond_11
    return v0
.end method
