.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.source "ECFieldElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 496
    invoke-direct {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist halfTrace()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .registers 7

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 501
    .local v0, "m":I
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_33

    .line 512
    add-int/lit8 v1, v0, 0x1

    ushr-int/lit8 v1, v1, 0x1

    .line 513
    .local v1, "n":I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1f

    .line 514
    .local v2, "k":I
    const/4 v3, 0x1

    .line 516
    .local v3, "nk":I
    move-object v4, p0

    .line 517
    .local v4, "ht":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_14
    :goto_14
    if-lez v2, :cond_32

    .line 519
    shl-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 520
    add-int/lit8 v2, v2, -0x1

    ushr-int v3, v1, v2

    .line 521
    and-int/lit8 v5, v3, 0x1

    if-eqz v5, :cond_14

    .line 523
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    goto :goto_14

    .line 527
    :cond_32
    return-object v4

    .line 503
    .end local v1    # "n":I
    .end local v2    # "k":I
    .end local v3    # "nk":I
    .end local v4    # "ht":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_33
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Half-trace only defined for odd m"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist hasFastTrace()Z
    .registers 2

    .line 532
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist trace()I
    .registers 7

    .line 537
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement$AbstractF2m;->getFieldSize()I

    move-result v0

    .line 545
    .local v0, "m":I
    invoke-static {v0}, Lcom/android/internal/org/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1f

    .line 546
    .local v1, "k":I
    const/4 v2, 0x1

    .line 548
    .local v2, "mk":I
    move-object v3, p0

    .line 549
    .local v3, "tr":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :cond_c
    :goto_c
    if-lez v1, :cond_27

    .line 551
    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->squarePow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 552
    add-int/lit8 v1, v1, -0x1

    ushr-int v2, v0, v1

    .line 553
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_c

    .line 555
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    goto :goto_c

    .line 559
    :cond_27
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 561
    const/4 v4, 0x0

    return v4

    .line 563
    :cond_2f
    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v4

    if-eqz v4, :cond_37

    .line 565
    const/4 v4, 0x1

    return v4

    .line 567
    :cond_37
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Internal error in trace calculation"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
