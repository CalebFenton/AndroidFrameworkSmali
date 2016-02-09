.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Fp"
.end annotation


# static fields
.field private static final FP_DEFAULT_COORDS:I = 0x4


# instance fields
.field infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

.field q:Ljava/math/BigInteger;

.field r:Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 7
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v4, p4

    #@6
    move-object v6, v5

    #@7
    .line 556
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@a
    .line 554
    return-void
.end method

.method protected constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "r"    # Ljava/math/BigInteger;
    .param p3, "a"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "b"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p5, "order"    # Ljava/math/BigInteger;
    .param p6, "cofactor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 561
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    #@4
    .line 563
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    #@6
    .line 564
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    #@8
    .line 565
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@a
    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@d
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@f
    .line 567
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@11
    .line 568
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13
    .line 569
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    #@15
    .line 570
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    #@17
    .line 571
    const/4 v0, 0x4

    #@18
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    #@1a
    .line 559
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-object v2, p2

    #@4
    move-object v3, p3

    #@5
    move-object v5, v4

    #@6
    .line 536
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@9
    .line 534
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 2
    .param p1, "q"    # Ljava/math/BigInteger;
    .param p2, "a"    # Ljava/math/BigInteger;
    .param p3, "b"    # Ljava/math/BigInteger;
    .param p4, "order"    # Ljava/math/BigInteger;
    .param p5, "cofactor"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 541
    invoke-direct {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    #@4
    .line 543
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    #@6
    .line 544
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;->calculateResidue(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    #@c
    .line 545
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@e
    invoke-direct {v0, p0, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@11
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@13
    .line 547
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@16
    move-result-object v0

    #@17
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@19
    .line 548
    invoke-virtual {p0, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1c
    move-result-object v0

    #@1d
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1f
    .line 549
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    #@21
    .line 550
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    #@23
    .line 551
    const/4 v0, 0x4

    #@24
    iput v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->coord:I

    #@26
    .line 539
    return-void
.end method


# virtual methods
.method protected cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .locals 7

    #@0
    .prologue
    .line 576
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    #@6
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@8
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a
    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->order:Ljava/math/BigInteger;

    #@c
    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->cofactor:Ljava/math/BigInteger;

    #@e
    invoke-direct/range {v0 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@11
    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 610
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@2
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@5
    return-object v0
.end method

.method protected createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "x"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p2, "y"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p3, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p4, "withCompression"    # Z

    #@0
    .prologue
    .line 615
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@2
    move-object v1, p0

    #@3
    move-object v2, p1

    #@4
    move-object v3, p2

    #@5
    move-object v4, p3

    #@6
    move v5, p4

    #@7
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@a
    return-object v0
.end method

.method public fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 605
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;

    #@2
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    #@4
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->r:Ljava/math/BigInteger;

    #@6
    invoke-direct {v0, v1, v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$Fp;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    #@9
    return-object v0
.end method

.method public getFieldSize()I
    .locals 1

    #@0
    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    #@2
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 1

    #@0
    .prologue
    .line 642
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@2
    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    .line 595
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->q:Ljava/math/BigInteger;

    #@2
    return-object v0
.end method

.method public importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 620
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@4
    move-result-object v0

    #@5
    if-eq p0, v0, :cond_0

    #@7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->getCoordinateSystem()I

    #@a
    move-result v0

    #@b
    const/4 v1, 0x2

    #@c
    if-ne v0, v1, :cond_0

    #@e
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    #@11
    move-result v0

    #@12
    if-eqz v0, :cond_1

    #@14
    .line 637
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractFp;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v0

    #@18
    return-object v0

    #@19
    .line 622
    :cond_1
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1c
    move-result-object v0

    #@1d
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@20
    move-result v0

    #@21
    packed-switch v0, :pswitch_data_0

    #@24
    goto :goto_0

    #@25
    .line 627
    :pswitch_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;

    #@27
    .line 628
    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@29
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@30
    move-result-object v2

    #@31
    .line 629
    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3a
    move-result-object v3

    #@3b
    .line 630
    const/4 v1, 0x1

    #@3c
    new-array v4, v1, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@40
    aget-object v1, v1, v5

    #@42
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@45
    move-result-object v1

    #@46
    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$Fp;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@49
    move-result-object v1

    #@4a
    aput-object v1, v4, v5

    #@4c
    .line 631
    iget-boolean v5, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;->withCompression:Z

    #@4e
    move-object v1, p0

    #@4f
    .line 627
    invoke-direct/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint$Fp;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)V

    #@52
    return-object v0

    #@53
    .line 622
    nop

    #@54
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public supportsCoordinateSystem(I)Z
    .locals 1
    .param p1, "coord"    # I

    #@0
    .prologue
    .line 581
    packed-switch p1, :pswitch_data_0

    #@3
    .line 589
    :pswitch_0
    const/4 v0, 0x0

    #@4
    return v0

    #@5
    .line 587
    :pswitch_1
    const/4 v0, 0x1

    #@6
    return v0

    #@7
    .line 581
    nop

    #@8
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
