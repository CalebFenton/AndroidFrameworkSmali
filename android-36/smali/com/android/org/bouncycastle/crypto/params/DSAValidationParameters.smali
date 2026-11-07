.class public Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;
.super Ljava/lang/Object;
.source "DSAValidationParameters.java"


# instance fields
.field private blacklist counter:I

.field private blacklist seed:[B

.field private blacklist usageIndex:I


# direct methods
.method public constructor blacklist <init>([BI)V
    .registers 4

    const/4 v0, -0x1

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;-><init>([BII)V

    return-void
.end method

.method public constructor blacklist <init>([BII)V
    .registers 4

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {p1}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    .line 28
    iput p2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    .line 29
    iput p3, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->usageIndex:I

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5

    .line 55
    instance-of v0, p1, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 60
    :cond_6
    check-cast p1, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;

    .line 62
    iget v0, p1, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget v2, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    if-eq v0, v2, :cond_f

    return v1

    .line 67
    :cond_f
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    iget-object p1, p1, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {p0, p1}, Lcom/android/org/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result p0

    return p0
.end method

.method public blacklist getCounter()I
    .registers 1

    .line 34
    iget p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    return p0
.end method

.method public blacklist getSeed()[B
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 49
    iget v0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->counter:I

    iget-object p0, p0, Lcom/android/org/bouncycastle/crypto/params/DSAValidationParameters;->seed:[B

    invoke-static {p0}, Lcom/android/org/bouncycastle/util/Arrays;->hashCode([B)I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
