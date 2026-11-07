.class Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;
.source "WNafUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$includeNegated:Z

.field final synthetic blacklist val$minWidth:I

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(IZLcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECCurve;)V
    .registers 5

    .line 419
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .registers 7

    if-eqz p1, :cond_28

    .line 581
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-lt v0, p2, :cond_28

    .line 582
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p2

    invoke-direct {p0, p2, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result p2

    if-eqz p2, :cond_28

    if-eqz p4, :cond_26

    .line 583
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z

    move-result p0

    if-eqz p0, :cond_28

    :cond_26
    const/4 p0, 0x1

    return p0

    :cond_28
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Z
    .registers 3

    if-eqz p1, :cond_7

    .line 588
    array-length p0, p1

    if-lt p0, p2, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 15

    .line 422
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    goto :goto_9

    :cond_8
    move-object p1, v1

    .line 424
    :goto_9
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    const/16 v2, 0x10

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v3, 0x2

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v4, v0, -0x2

    const/4 v5, 0x1

    shl-int v4, v5, v4

    .line 427
    iget-boolean v6, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {p0, p1, v0, v4, v6}, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 429
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    return-object p1

    .line 433
    :cond_27
    new-instance v4, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    if-eqz p1, :cond_49

    .line 440
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v6

    .line 441
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    .line 443
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v6

    .line 444
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    .line 446
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    .line 447
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    .line 448
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_4c

    :cond_49
    move-object p1, v1

    move-object v6, p1

    move-object v7, v6

    .line 451
    :goto_4c
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v8

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    add-int/lit8 v2, v0, -0x2

    shl-int v2, v5, v2

    const/4 v8, 0x0

    if-nez v6, :cond_65

    .line 457
    invoke-static {}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$sfgetEMPTY_POINTS()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move v9, v8

    goto :goto_66

    .line 461
    :cond_65
    array-length v9, v6

    :goto_66
    if-ge v9, v2, :cond_103

    .line 466
    invoke-static {v6, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    if-ne v2, v5, :cond_78

    .line 470
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v6, v8

    goto/16 :goto_103

    :cond_78
    if-nez v9, :cond_80

    .line 477
    iget-object v10, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    aput-object v10, v6, v8

    move v10, v5

    goto :goto_81

    :cond_80
    move v10, v9

    :goto_81
    if-ne v2, v3, :cond_8d

    .line 485
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v6, v5

    goto/16 :goto_fc

    :cond_8d
    add-int/lit8 v5, v10, -0x1

    .line 489
    aget-object v5, v6, v5

    if-nez p1, :cond_ef

    .line 492
    aget-object p1, v6, v8

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    .line 505
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v11

    if-nez v11, :cond_ef

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v11}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v11

    if-eqz v11, :cond_ef

    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v11

    const/16 v12, 0x40

    if-lt v11, v12, :cond_ef

    .line 507
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v11

    if-eq v11, v3, :cond_c0

    const/4 v3, 0x3

    if-eq v11, v3, :cond_c0

    const/4 v3, 0x4

    if-eq v11, v3, :cond_c0

    goto :goto_ef

    .line 513
    :cond_c0
    invoke-virtual {p1, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 514
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 515
    invoke-virtual {v12}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v12

    .line 514
    invoke-virtual {v3, v11, v12}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    .line 517
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v12

    .line 518
    invoke-virtual {v5, v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    invoke-virtual {v5, v12}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    if-nez v9, :cond_f0

    .line 522
    aput-object v5, v6, v8

    goto :goto_f0

    :cond_ef
    :goto_ef
    move-object v3, p1

    :cond_f0
    :goto_f0
    if-ge v10, v2, :cond_fc

    add-int/lit8 v11, v10, 0x1

    .line 536
    invoke-virtual {v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v6, v10

    move v10, v11

    goto :goto_f0

    .line 543
    :cond_fc
    :goto_fc
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    sub-int v5, v2, v9

    invoke-virtual {v3, v6, v9, v5, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 547
    :cond_103
    :goto_103
    iget-boolean p0, p0, Lcom/android/org/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz p0, :cond_120

    if-nez v7, :cond_10c

    .line 553
    new-array v7, v2, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    goto :goto_113

    .line 557
    :cond_10c
    array-length v8, v7

    if-ge v8, v2, :cond_113

    .line 560
    invoke-static {v7, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->-$$Nest$smresizeTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;I)[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v7

    :cond_113
    :goto_113
    if-ge v8, v2, :cond_120

    .line 566
    aget-object p0, v6, v8

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    aput-object p0, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_113

    .line 571
    :cond_120
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 572
    invoke-virtual {v4, v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 573
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 574
    invoke-virtual {v4, v0}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    return-object v4
.end method
