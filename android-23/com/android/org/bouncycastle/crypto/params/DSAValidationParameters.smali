.class public Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private counter:I

.field private seed:[B

.field private usageIndex:I


# direct methods
.method public constructor <init>([BI)V
    .locals 1
    .param p1, "seed"    # [B
    .param p2, "counter"    # I

    #@0
    .prologue
    .line 15
    const/4 v0, -0x1

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    #@4
    .line 13
    return-void
.end method

.method public constructor <init>([BII)V
    .locals 0
    .param p1, "seed"    # [B
    .param p2, "counter"    # I
    .param p3, "usageIndex"    # I

    #@0
    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 23
    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    #@5
    .line 24
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    #@7
    .line 25
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    #@9
    .line 21
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
    .line 51
    instance-of v1, p1, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 53
    return v3

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 56
    check-cast v0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    #@9
    .line 58
    .local v0, "other":Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
    iget v1, v0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    #@b
    iget v2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    #@d
    if-eq v1, v2, :cond_1

    #@f
    .line 60
    return v3

    #@10
    .line 63
    :cond_1
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    #@12
    iget-object v2, v0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

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
    .line 30
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    #@2
    return v0
.end method

.method public getSeed()[B
    .locals 1

    #@0
    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    #@2
    return-object v0
.end method

.method public getUsageIndex()I
    .locals 1

    #@0
    .prologue
    .line 40
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    #@2
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 45
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    #@4
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    #@7
    move-result v1

    #@8
    xor-int/2addr v0, v1

    #@9
    return v0
.end method
