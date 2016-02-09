.class public Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
.super Ljava/lang/Object;
.source "DHValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "counter"    # I

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 14
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    #@5
    .line 15
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    #@7
    .line 12
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 31
    instance-of v1, p1, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 33
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 36
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;

    #@9
    .line 38
    .local v0, "other":Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    #@b
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 40
    return v3

    #@10
    .line 43
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    #@12
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    #@14
    invoke-static {v1, v2}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    #@17
    move-result v1

    #@18
    return v1
.end method

.method public getCounter()I
    .locals 1

    #@0
    .prologue
    .line 20
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    #@2
    return v0
.end method

.method public getSeed()[B
    .locals 1

    #@0
    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 48
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->counter:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DHValidationParameters;->seed:[B

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@7
    move-result v1

    #@8
    xor-int/2addr v0, v1

    #@9
    return v0
.end method
