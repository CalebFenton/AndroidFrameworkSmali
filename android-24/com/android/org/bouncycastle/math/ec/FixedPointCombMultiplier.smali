.class public Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "FixedPointCombMultiplier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected getWidthForCombSize(I)I
    .locals 1
    .param p1, "combSize"    # I

    #@0
    .prologue
    .line 55
    const/16 v0, 0x101

    #@2
    if-le p1, v0, :cond_0

    #@4
    const/4 v0, 0x6

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x5

    #@7
    goto :goto_0
.end method

.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 15
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 9
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v2

    #@4
    .line 10
    .local v2, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    #@7
    move-result v10

    #@8
    .line 12
    .local v10, "size":I
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    #@b
    move-result v13

    #@c
    if-le v13, v10, :cond_0

    #@e
    .line 20
    new-instance v13, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v14, "fixed-point comb doesn\'t support scalars larger than the curve order"

    #@13
    invoke-direct {v13, v14}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v13

    #@17
    .line 23
    :cond_0
    invoke-virtual {p0, v10}, Lcom/android/org/bouncycastle/math/ec/FixedPointCombMultiplier;->getWidthForCombSize(I)I

    #@1a
    move-result v9

    #@1b
    .line 25
    .local v9, "minWidth":I
    move-object/from16 v0, p1

    #@1d
    invoke-static {v0, v9}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    #@20
    move-result-object v6

    #@21
    .line 26
    .local v6, "info":Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@24
    move-result-object v8

    #@25
    .line 27
    .local v8, "lookupTable":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    #@28
    move-result v12

    #@29
    .line 29
    .local v12, "width":I
    add-int v13, v10, v12

    #@2b
    add-int/lit8 v13, v13, -0x1

    #@2d
    div-int v3, v13, v12

    #@2f
    .line 31
    .local v3, "d":I
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@32
    move-result-object v1

    #@33
    .line 33
    .local v1, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    mul-int v13, v3, v12

    #@35
    add-int/lit8 v11, v13, -0x1

    #@37
    .line 34
    .local v11, "top":I
    const/4 v4, 0x0

    #@38
    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_3

    #@3a
    .line 36
    const/4 v5, 0x0

    #@3b
    .line 38
    .local v5, "index":I
    sub-int v7, v11, v4

    #@3d
    .local v7, "j":I
    :goto_1
    if-ltz v7, :cond_2

    #@3f
    .line 40
    shl-int/lit8 v5, v5, 0x1

    #@41
    .line 41
    move-object/from16 v0, p2

    #@43
    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->testBit(I)Z

    #@46
    move-result v13

    #@47
    if-eqz v13, :cond_1

    #@49
    .line 43
    or-int/lit8 v5, v5, 0x1

    #@4b
    .line 38
    :cond_1
    sub-int/2addr v7, v3

    #@4c
    goto :goto_1

    #@4d
    .line 47
    :cond_2
    aget-object v13, v8, v5

    #@4f
    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@52
    move-result-object v1

    #@53
    .line 34
    add-int/lit8 v4, v4, 0x1

    #@55
    goto :goto_0

    #@56
    .line 50
    .end local v5    # "index":I
    .end local v7    # "j":I
    :cond_3
    return-object v1
.end method
