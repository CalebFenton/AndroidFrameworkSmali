.class public Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
.super Ljava/lang/Object;
.source "DSAParameters.java"

# interfaces
.implements Lcom/android/org/bouncycastle/crypto/CipherParameters;


# instance fields
.field private g:Ljava/math/BigInteger;

.field private p:Ljava/math/BigInteger;

.field private q:Ljava/math/BigInteger;

.field private validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    #@5
    .line 21
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    #@7
    .line 22
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    #@9
    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;)V
    .locals 0
    .param p1, "p"    # Ljava/math/BigInteger;
    .param p2, "q"    # Ljava/math/BigInteger;
    .param p3, "g"    # Ljava/math/BigInteger;
    .param p4, "params"    # Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 31
    iput-object p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    #@5
    .line 32
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    #@7
    .line 33
    iput-object p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    #@9
    .line 34
    iput-object p4, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@b
    .line 29
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
    .line 60
    instance-of v2, p1, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@3
    if-nez v2, :cond_0

    #@5
    .line 62
    return v1

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 65
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;

    #@9
    .line 67
    .local v0, "pm":Lcom/android/org/bouncycastle/crypto/params/DSAParameters;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@c
    move-result-object v2

    #@d
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    #@f
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@12
    move-result v2

    #@13
    if-eqz v2, :cond_1

    #@15
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@18
    move-result-object v2

    #@19
    iget-object v3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    #@1b
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@24
    move-result-object v1

    #@25
    iget-object v2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    #@27
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@2a
    move-result v1

    #@2b
    :cond_1
    return v1
.end method

.method public getG()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->g:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->p:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public getValidationParameters()Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
    .locals 1

    #@0
    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->validation:Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getP()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    #@7
    move-result v0

    #@8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getQ()Ljava/math/BigInteger;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@f
    move-result v1

    #@10
    xor-int/2addr v0, v1

    #@11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/crypto/params/DSAParameters;->getG()Ljava/math/BigInteger;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    #@18
    move-result v1

    #@19
    xor-int/2addr v0, v1

    #@1a
    return v0
.end method
