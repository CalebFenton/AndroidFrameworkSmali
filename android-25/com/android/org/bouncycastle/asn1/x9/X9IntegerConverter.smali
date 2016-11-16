.class public Lcom/android/org/bouncycastle/asn1/x9/X9IntegerConverter;
.super Ljava/lang/Object;
.source "X9IntegerConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public getByteLength(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I
    .locals 1
    .param p1, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 13
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x7

    #@6
    div-int/lit8 v0, v0, 0x8

    #@8
    return v0
.end method

.method public getByteLength(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)I
    .locals 1
    .param p1, "fe"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 19
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    #@3
    move-result v0

    #@4
    add-int/lit8 v0, v0, 0x7

    #@6
    div-int/lit8 v0, v0, 0x8

    #@8
    return v0
.end method

.method public integerToBytes(Ljava/math/BigInteger;I)[B
    .locals 5
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "qLength"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 26
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    #@4
    move-result-object v0

    #@5
    .line 28
    .local v0, "bytes":[B
    array-length v2, v0

    #@6
    if-ge p2, v2, :cond_0

    #@8
    .line 30
    new-array v1, p2, [B

    #@a
    .line 32
    .local v1, "tmp":[B
    array-length v2, v0

    #@b
    array-length v3, v1

    #@c
    sub-int/2addr v2, v3

    #@d
    array-length v3, v1

    #@e
    invoke-static {v0, v2, v1, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@11
    .line 34
    return-object v1

    #@12
    .line 36
    .end local v1    # "tmp":[B
    :cond_0
    array-length v2, v0

    #@13
    if-le p2, v2, :cond_1

    #@15
    .line 38
    new-array v1, p2, [B

    #@17
    .line 40
    .restart local v1    # "tmp":[B
    array-length v2, v1

    #@18
    array-length v3, v0

    #@19
    sub-int/2addr v2, v3

    #@1a
    array-length v3, v0

    #@1b
    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    #@1e
    .line 42
    return-object v1

    #@1f
    .line 45
    .end local v1    # "tmp":[B
    :cond_1
    return-object v0
.end method
