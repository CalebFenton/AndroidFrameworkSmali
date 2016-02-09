.class public Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;
.source "DHKeyParameters.java"


# instance fields
.field private params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;


# direct methods
.method protected constructor <init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 0
    .param p1, "isPrivate"    # Z
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@0
    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    #@3
    .line 15
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@5
    .line 11
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 26
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 28
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 31
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;

    #@9
    .line 33
    .local v0, "dhKey":Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@b
    if-nez v2, :cond_2

    #@d
    .line 35
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@10
    move-result-object v2

    #@11
    if-nez v2, :cond_1

    #@13
    const/4 v1, 0x1

    #@14
    :cond_1
    return v1

    #@15
    .line 39
    :cond_2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@17
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v1

    #@1f
    return v1
.end method

.method public getParameters()Lcom/android/org/bouncycastle/crypto/params/DHParameters;
    .locals 1

    #@0
    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->isPrivate()Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_1

    #@6
    const/4 v0, 0x0

    #@7
    .line 47
    .local v0, "code":I
    :goto_0
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@9
    if-eqz v1, :cond_0

    #@b
    .line 49
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->params:Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@d
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/crypto/params/DHParameters;->hashCode()I

    #@10
    move-result v1

    #@11
    xor-int/2addr v0, v1

    #@12
    .line 52
    :cond_0
    return v0

    #@13
    .line 45
    .end local v0    # "code":I
    :cond_1
    const/4 v0, 0x1

    #@14
    .restart local v0    # "code":I
    goto :goto_0
.end method
