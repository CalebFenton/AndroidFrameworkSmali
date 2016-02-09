.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;
.super Lcom/android/org/bouncycastle/math/ec/ECPoint;
.source "ECPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractFp"
.end annotation


# direct methods
.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 532
    invoke-direct {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 530
    return-void
.end method

.method protected constructor <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 0
    .param p1, "curve"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p2, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 537
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@3
    .line 535
    return-void
.end method


# virtual methods
.method protected getCompressionYTilde()Z
    .locals 1

    #@0
    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected satisfiesCurveEquation()Z
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 547
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    .local v2, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5
    .local v3, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@7
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a
    move-result-object v0

    #@b
    .local v0, "A":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@d
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@10
    move-result-object v1

    #@11
    .line 548
    .local v1, "B":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@14
    move-result-object v9

    #@15
    .line 550
    .local v9, "lhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->getCurveCoordinateSystem()I

    #@18
    move-result v11

    #@19
    packed-switch v11, :pswitch_data_0

    #@1c
    .line 580
    new-instance v11, Ljava/lang/IllegalStateException;

    #@1e
    const-string/jumbo v12, "unsupported coordinate system"

    #@21
    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@24
    throw v11

    #@25
    .line 556
    :pswitch_0
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    aget-object v4, v11, v12

    #@29
    .line 557
    .local v4, "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@2c
    move-result v11

    #@2d
    if-nez v11, :cond_0

    #@2f
    .line 559
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    move-result-object v5

    #@33
    .local v5, "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v6

    #@37
    .line 560
    .local v6, "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3a
    move-result-object v9

    #@3b
    .line 561
    invoke-virtual {v0, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    move-result-object v0

    #@3f
    .line 562
    invoke-virtual {v1, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@42
    move-result-object v1

    #@43
    .line 583
    .end local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v5    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v6    # "Z3":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    :pswitch_1
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v11

    #@47
    invoke-virtual {v11, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    move-result-object v11

    #@4b
    invoke-virtual {v11, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4e
    move-result-object v11

    #@4f
    invoke-virtual {v11, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@52
    move-result-object v10

    #@53
    .line 584
    .local v10, "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->equals(Ljava/lang/Object;)Z

    #@56
    move-result v11

    #@57
    return v11

    #@58
    .line 570
    .end local v10    # "rhs":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :pswitch_2
    iget-object v11, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5a
    aget-object v4, v11, v12

    #@5c
    .line 571
    .restart local v4    # "Z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@5f
    move-result v11

    #@60
    if-nez v11, :cond_0

    #@62
    .line 573
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@65
    move-result-object v5

    #@66
    .restart local v5    # "Z2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@69
    move-result-object v7

    #@6a
    .local v7, "Z4":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@6d
    move-result-object v8

    #@6e
    .line 574
    .local v8, "Z6":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@71
    move-result-object v0

    #@72
    .line 575
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@75
    move-result-object v1

    #@76
    goto :goto_0

    #@77
    .line 550
    nop

    #@78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "b"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 589
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 591
    return-object p0

    #@7
    .line 595
    :cond_0
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractFp;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method
