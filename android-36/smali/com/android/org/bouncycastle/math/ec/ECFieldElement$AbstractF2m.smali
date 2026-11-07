.class public abstract Lcom/android/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 496
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist halfTrace()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 500
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_31

    const/4 v1, 0x1

    add-int/2addr v0, v1

    ushr-int/2addr v0, v1

    .line 513
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    move-object v3, p0

    move v4, v1

    :cond_13
    :goto_13
    if-lez v2, :cond_30

    shl-int/2addr v4, v1

    .line 519
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    add-int/lit8 v2, v2, -0x1

    ushr-int v4, v0, v2

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_13

    const/4 v5, 0x2

    .line 523
    invoke-virtual {v3, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_13

    :cond_30
    return-object v3

    .line 503
    :cond_31
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Half-trace only defined for odd m"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist hasFastTrace()Z
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist trace()I
    .registers 7

    .line 537
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getFieldSize()I

    move-result v0

    .line 545
    invoke-static {v0}, Lcom/android/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    const/4 v2, 0x1

    move-object v3, p0

    move v4, v2

    :cond_d
    :goto_d
    if-lez v1, :cond_28

    .line 551
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    ushr-int v4, v0, v1

    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_d

    .line 555
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_d

    .line 559
    :cond_28
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x0

    return p0

    .line 563
    :cond_30
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result p0

    if-eqz p0, :cond_37

    return v2

    .line 567
    :cond_37
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error in trace calculation"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
