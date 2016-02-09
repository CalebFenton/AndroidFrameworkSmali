.class public Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
.super Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;
.source "DHPublicKeyParameters.java"


# instance fields
.field private y:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DHParameters;)V
    .locals 1
    .param p1, "y"    # Ljava/math/BigInteger;
    .param p2, "params"    # Lcom/android/org/bouncycastle/crypto/params/DHParameters;

    #@0
    .prologue
    .line 14
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, v0, p2}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;-><init>(ZLcom/android/org/bouncycastle/crypto/params/DHParameters;)V

    #@4
    .line 16
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    #@6
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 32
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 34
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 37
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;

    #@9
    .line 39
    .local v0, "other":Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->getY()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v1

    #@19
    :cond_1
    return v1
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHPublicKeyParameters;->y:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@5
    move-result v0

    #@6
    invoke-super {p0}, Lcom/android/org/bouncycastle/crypto/params/DHKeyParameters;->hashCode()I

    #@9
    move-result v1

    #@a
    xor-int/2addr v0, v1

    #@b
    return v0
.end method
