.class public Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private blacklist counter:I

.field private blacklist seed:[B

.field private blacklist usageIndex:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 4
    .param p1, "seed"    # [B
    .param p2, "counter"    # I

    .line 19
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    .line 20
    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 5
    .param p1, "seed"    # [B
    .param p2, "counter"    # I
    .param p3, "usageIndex"    # I

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    .line 28
    iput p2, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    .line 29
    iput p3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    .line 30
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 57
    return v1

    .line 60
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 62
    .local v0, "other":Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;
    iget v2, v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v3, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-eq v2, v3, :cond_10

    .line 64
    return v1

    .line 67
    :cond_10
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object v2, v0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1, v2}, Lcom/android/internal/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v1

    return v1
.end method

.method public blacklist getCounter()I
    .registers 2

    .line 34
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return v0
.end method

.method public blacklist getSeed()[B
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUsageIndex()I
    .registers 2

    .line 44
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 49
    iget v0, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
