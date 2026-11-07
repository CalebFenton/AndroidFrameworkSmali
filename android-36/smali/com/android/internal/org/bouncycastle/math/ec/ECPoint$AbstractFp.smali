.class public abstract Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.super Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 4
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 565
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 566
    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5
    .param p1, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 570
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)V

    .line 571
    return-void
.end method


# virtual methods
.method protected blacklist getCompressionYTilde()Z
    .registers 2

    .line 575
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getAffineYCoord()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    move-result v0

    return v0
.end method

.method protected blacklist satisfiesCurveEquation()Z
    .registers 10

    .line 580
    iget-object v0, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->x:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v0, "X":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v1, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->y:Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .local v1, "Y":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v2, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .local v2, "A":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->curve:Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 581
    .local v3, "B":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 583
    .local v4, "lhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getCurveCoordinateSystem()I

    move-result v5

    const/4 v6, 0x0

    packed-switch v5, :pswitch_data_7a

    .line 613
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string/jumbo v6, "unsupported coordinate system"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 603
    :pswitch_25
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v6

    .line 604
    .local v5, "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    if-nez v6, :cond_64

    .line 606
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .local v6, "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .local v7, "Z4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v6, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    .line 607
    .local v8, "Z6":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v2, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 608
    invoke-virtual {v3, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 609
    .end local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z4":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v8    # "Z6":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_64

    .line 589
    .end local v5    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_44
    iget-object v5, p0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->zs:[Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v5, v5, v6

    .line 590
    .restart local v5    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v6

    if-nez v6, :cond_64

    .line 592
    invoke-virtual {v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v6

    .restart local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v7

    .line 593
    .local v7, "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v4

    .line 594
    invoke-virtual {v2, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    .line 595
    invoke-virtual {v3, v7}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    .line 596
    .end local v6    # "Z2":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    .end local v7    # "Z3":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_64

    .line 586
    .end local v5    # "Z":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_63
    nop

    .line 616
    :cond_64
    :goto_64
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    .line 617
    .local v5, "rhs":Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    return v6

    nop

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_63
        :pswitch_44
        :pswitch_25
        :pswitch_25
        :pswitch_25
    .end packed-switch
.end method

.method public blacklist subtract(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    .registers 3
    .param p1, "b"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    .line 622
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 624
    return-object p0

    .line 628
    :cond_7
    invoke-virtual {p1}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractFp;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
