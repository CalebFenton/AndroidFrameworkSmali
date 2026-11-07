.class public Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;
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
.method public blacklist getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I
    .registers 2

    .line 37
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result p0

    add-int/lit8 p0, p0, 0x7

    div-int/lit8 p0, p0, 0x8

    return p0
.end method

.method public blacklist integerToBytes(Ljava/math/BigInteger;I)[B
    .registers 5

    .line 51
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p0

    .line 53
    array-length p1, p0

    const/4 v0, 0x0

    if-ge p2, p1, :cond_10

    .line 55
    new-array p1, p2, [B

    .line 57
    array-length v1, p0

    sub-int/2addr v1, p2

    invoke-static {p0, v1, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 61
    :cond_10
    array-length p1, p0

    if-le p2, p1, :cond_1c

    .line 63
    new-array p1, p2, [B

    .line 65
    array-length v1, p0

    sub-int/2addr p2, v1

    array-length v1, p0

    invoke-static {p0, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_1c
    return-object p0
.end method
