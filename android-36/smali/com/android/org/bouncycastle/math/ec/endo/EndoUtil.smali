.class public abstract Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;
.super Ljava/lang/Object;
.source "EndoUtil.java"


# direct methods
.method private static blacklist calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;
    .registers 4

    .line 67
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 68
    :goto_9
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 p1, p2, -0x1

    .line 69
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    .line 70
    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    if-eqz p1, :cond_23

    .line 73
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :cond_23
    if-eqz v0, :cond_29

    .line 75
    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    :cond_29
    return-object p0
.end method

.method public static blacklist decomposeScalar(Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;Ljava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 6

    .line 21
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getBits()I

    move-result v0

    .line 22
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getG1()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v1

    .line 23
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getG2()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {p1, v2, v0}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil;->calculateB(Ljava/math/BigInteger;Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v0

    .line 25
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV1A()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV2A()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 26
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV1B()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/ScalarSplitParameters;->getV2B()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x2

    .line 28
    new-array v0, v0, [Ljava/math/BigInteger;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p0, v0, p1

    return-object v0
.end method

.method public static blacklist mapPoint(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 33
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 35
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;

    invoke-direct {v1, p0, p1}, Lcom/android/org/bouncycastle/math/ec/endo/EndoUtil$1;-><init>(Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    const-string p0, "bc_endo"

    invoke-virtual {v0, p1, p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;

    .line 62
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/endo/EndoPreCompInfo;->getMappedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
