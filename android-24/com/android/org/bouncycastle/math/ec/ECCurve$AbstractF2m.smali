.class public abstract Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve;
.source "ECCurve.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/bouncycastle/math/ec/ECCurve;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "AbstractF2m"
.end annotation


# instance fields
.field private si:[Ljava/math/BigInteger;


# direct methods
.method protected constructor <init>(IIII)V
    .locals 1
    .param p1, "m"    # I
    .param p2, "k1"    # I
    .param p3, "k2"    # I
    .param p4, "k3"    # I

    #@0
    .prologue
    .line 703
    invoke-static {p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;-><init>(Lcom/android/org/bouncycastle/math/field/FiniteField;)V

    #@7
    .line 669
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    #@a
    .line 701
    return-void
.end method

.method private static buildField(IIII)Lcom/android/org/bouncycastle/math/field/FiniteField;
    .locals 5
    .param p0, "m"    # I
    .param p1, "k1"    # I
    .param p2, "k2"    # I
    .param p3, "k3"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x1

    #@3
    const/4 v1, 0x0

    #@4
    .line 673
    if-nez p1, :cond_0

    #@6
    .line 675
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "k1 must be > 0"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 678
    :cond_0
    if-nez p2, :cond_2

    #@11
    .line 680
    if-eqz p3, :cond_1

    #@13
    .line 682
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "k3 must be 0 if k2 == 0"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 685
    :cond_1
    new-array v0, v4, [I

    #@1e
    aput v1, v0, v1

    #@20
    aput p1, v0, v2

    #@22
    aput p0, v0, v3

    #@24
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@27
    move-result-object v0

    #@28
    return-object v0

    #@29
    .line 688
    :cond_2
    if-gt p2, p1, :cond_3

    #@2b
    .line 690
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@2d
    const-string/jumbo v1, "k2 must be > k1"

    #@30
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@33
    throw v0

    #@34
    .line 693
    :cond_3
    if-gt p3, p2, :cond_4

    #@36
    .line 695
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@38
    const-string/jumbo v1, "k3 must be > k2"

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 698
    :cond_4
    const/4 v0, 0x5

    #@40
    new-array v0, v0, [I

    #@42
    aput v1, v0, v1

    #@44
    aput p1, v0, v2

    #@46
    aput p2, v0, v3

    #@48
    aput p3, v0, v4

    #@4a
    const/4 v1, 0x4

    #@4b
    aput p0, v0, v1

    #@4d
    invoke-static {v0}, Lcom/android/org/bouncycastle/math/field/FiniteFields;->getBinaryExtensionField([I)Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@50
    move-result-object v0

    #@51
    return-object v0
.end method

.method public static inverse(I[ILjava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1
    .param p0, "m"    # I
    .param p1, "ks"    # [I
    .param p2, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 661
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@2
    invoke-direct {v0, p2}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    #@5
    invoke-virtual {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;->modInverse(I[I)Lcom/android/org/bouncycastle/math/ec/LongArray;

    #@8
    move-result-object v0

    #@9
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->toBigInteger()Ljava/math/BigInteger;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method private solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .locals 11
    .param p1, "beta"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    .line 819
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@3
    move-result v9

    #@4
    if-eqz v9, :cond_0

    #@6
    .line 821
    return-object p1

    #@7
    .line 824
    :cond_0
    sget-object v9, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    #@9
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@c
    move-result-object v8

    #@d
    .line 826
    .local v8, "zeroElement":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@10
    move-result v2

    #@11
    .line 827
    .local v2, "m":I
    new-instance v3, Ljava/util/Random;

    #@13
    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    #@16
    .line 830
    .local v3, "rand":Ljava/util/Random;
    :cond_1
    new-instance v9, Ljava/math/BigInteger;

    #@18
    invoke-direct {v9, v2, v3}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    #@1b
    invoke-virtual {p0, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1e
    move-result-object v4

    #@1f
    .line 831
    .local v4, "t":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v7, v8

    #@20
    .line 832
    .local v7, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move-object v5, p1

    #@21
    .line 833
    .local v5, "w":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v1, 0x1

    #@22
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    #@24
    .line 835
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@27
    move-result-object v6

    #@28
    .line 836
    .local v6, "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2b
    move-result-object v9

    #@2c
    invoke-virtual {v6, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2f
    move-result-object v10

    #@30
    invoke-virtual {v9, v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@33
    move-result-object v7

    #@34
    .line 837
    invoke-virtual {v6, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@37
    move-result-object v5

    #@38
    .line 833
    add-int/lit8 v1, v1, 0x1

    #@3a
    goto :goto_0

    #@3b
    .line 839
    .end local v6    # "w2":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@3e
    move-result v9

    #@3f
    if-nez v9, :cond_3

    #@41
    .line 841
    const/4 v9, 0x0

    #@42
    return-object v9

    #@43
    .line 843
    :cond_3
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@46
    move-result-object v9

    #@47
    invoke-virtual {v9, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4a
    move-result-object v0

    #@4b
    .line 845
    .local v0, "gamma":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@4e
    move-result v9

    #@4f
    if-nez v9, :cond_1

    #@51
    .line 847
    return-object v7
.end method


# virtual methods
.method public createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 5
    .param p1, "x"    # Ljava/math/BigInteger;
    .param p2, "y"    # Ljava/math/BigInteger;
    .param p3, "withCompression"    # Z

    #@0
    .prologue
    .line 713
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    move-result-object v0

    #@4
    .local v0, "X":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@7
    move-result-object v1

    #@8
    .line 715
    .local v1, "Y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@b
    move-result v2

    #@c
    .line 717
    .local v2, "coord":I
    packed-switch v2, :pswitch_data_0

    #@f
    .line 753
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, v1, p3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@12
    move-result-object v3

    #@13
    return-object v3

    #@14
    .line 722
    :pswitch_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_1

    #@1a
    .line 724
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    move-result-object v3

    #@1e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@21
    move-result-object v4

    #@22
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@25
    move-result v3

    #@26
    if-nez v3, :cond_0

    #@28
    .line 726
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@2a
    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@2d
    throw v3

    #@2e
    .line 743
    :cond_1
    invoke-virtual {v1, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->divide(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@31
    move-result-object v3

    #@32
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@35
    move-result-object v1

    #@36
    goto :goto_0

    #@37
    .line 717
    nop

    #@38
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected decompressPoint(ILjava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p1, "yTilde"    # I
    .param p2, "X1"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    .line 767
    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4
    move-result-object v1

    #@5
    .local v1, "x":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    const/4 v2, 0x0

    #@6
    .line 768
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@9
    move-result v4

    #@a
    if-eqz v4, :cond_1

    #@c
    .line 770
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@f
    move-result-object v4

    #@10
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->sqrt()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@13
    move-result-object v2

    #@14
    .line 800
    .end local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_0
    :goto_0
    if-nez v2, :cond_4

    #@16
    .line 802
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@18
    const-string/jumbo v5, "Invalid point compression"

    #@1b
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v4

    #@1f
    .line 774
    .restart local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_1
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@26
    move-result-object v4

    #@27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getB()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2a
    move-result-object v6

    #@2b
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2e
    move-result-object v4

    #@2f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@32
    move-result-object v6

    #@33
    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@36
    move-result-object v4

    #@37
    invoke-virtual {v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3a
    move-result-object v0

    #@3b
    .line 775
    .local v0, "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    invoke-direct {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->solveQuadraticEquation(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3e
    move-result-object v3

    #@3f
    .line 776
    .local v3, "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    if-eqz v3, :cond_0

    #@41
    .line 778
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->testBitZero()Z

    #@44
    move-result v6

    #@45
    if-ne p1, v5, :cond_3

    #@47
    move v4, v5

    #@48
    :goto_1
    if-eq v6, v4, :cond_2

    #@4a
    .line 780
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->addOne()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@4d
    move-result-object v3

    #@4e
    .line 783
    :cond_2
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    #@51
    move-result v4

    #@52
    packed-switch v4, :pswitch_data_0

    #@55
    .line 793
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@58
    move-result-object v2

    #@59
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@5a
    .line 778
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_3
    const/4 v4, 0x0

    #@5b
    goto :goto_1

    #@5c
    .line 788
    :pswitch_0
    invoke-virtual {v3, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->add(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@5f
    move-result-object v2

    #@60
    .local v2, "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    goto :goto_0

    #@61
    .line 805
    .end local v0    # "beta":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v2    # "y":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .end local v3    # "z":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_4
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Z)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@64
    move-result-object v4

    #@65
    return-object v4

    #@66
    .line 783
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method declared-synchronized getSi()[Ljava/math/BigInteger;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 859
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;

    #@b
    .line 861
    :cond_0
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->si:[Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    monitor-exit p0

    #@e
    return-object v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit p0

    #@11
    throw v0
.end method

.method public isKoblitz()Z
    .locals 1

    #@0
    .prologue
    .line 870
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    #@2
    if-eqz v0, :cond_1

    #@4
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    #@6
    if-eqz v0, :cond_1

    #@8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_1

    #@10
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@12
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    #@15
    move-result v0

    #@16
    if-nez v0, :cond_0

    #@18
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1a
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    #@1d
    move-result v0

    #@1e
    :goto_0
    return v0

    #@1f
    :cond_0
    const/4 v0, 0x1

    #@20
    goto :goto_0

    #@21
    :cond_1
    const/4 v0, 0x0

    #@22
    goto :goto_0
.end method

.method public isValidFieldElement(Ljava/math/BigInteger;)Z
    .locals 3
    .param p1, "x"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 708
    if-eqz p1, :cond_0

    #@3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@6
    move-result v1

    #@7
    if-ltz v1, :cond_0

    #@9
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    #@c
    move-result v1

    #@d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@10
    move-result v2

    #@11
    if-gt v1, v2, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    :cond_0
    return v0
.end method
