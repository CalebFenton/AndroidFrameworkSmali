.class public Lcom/android/internal/org/bouncycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source "X9IntegerConverter.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;)I
    .registers 3
    .param p1, "c"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    .line 25
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist getByteLength(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)I
    .registers 3
    .param p1, "fe"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public blacklist integerToBytes(Ljava/math/BigInteger;I)[B
    .registers 8
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "qLength"    # I

    .line 51
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 53
    .local v0, "bytes":[B
    array-length v1, v0

    const/4 v2, 0x0

    if-ge p2, v1, :cond_12

    .line 55
    new-array v1, p2, [B

    .line 57
    .local v1, "tmp":[B
    array-length v3, v0

    array-length v4, v1

    sub-int/2addr v3, v4

    array-length v4, v1

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-object v1

    .line 61
    .end local v1    # "tmp":[B
    :cond_12
    array-length v1, v0

    if-le p2, v1, :cond_1f

    .line 63
    new-array v1, p2, [B

    .line 65
    .restart local v1    # "tmp":[B
    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 67
    return-object v1

    .line 70
    .end local v1    # "tmp":[B
    :cond_1f
    return-object v0
.end method
