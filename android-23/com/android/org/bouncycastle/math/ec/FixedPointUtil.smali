.class public Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"


# static fields
.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_fixed_point"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I
    .locals 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@3
    move-result-object v0

    #@4
    .line 12
    .local v0, "order":Ljava/math/BigInteger;
    if-nez v0, :cond_0

    #@6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@9
    move-result v1

    #@a
    add-int/lit8 v1, v1, 0x1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    #@10
    move-result v1

    #@11
    goto :goto_0
.end method

.method public static getFixedPointPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .locals 1
    .param p0, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@0
    .prologue
    .line 17
    if-eqz p0, :cond_0

    #@2
    instance-of v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 19
    check-cast p0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    #@8
    .end local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    return-object p0

    #@9
    .line 22
    .restart local p0    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_0
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    #@b
    invoke-direct {v0}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    #@e
    return-object v0
.end method

.method public static precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;I)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    .locals 14
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "minWidth"    # I

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 27
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@5
    move-result-object v2

    #@6
    .line 29
    .local v2, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    shl-int v7, v13, p1

    #@8
    .line 30
    .local v7, "n":I
    const-string/jumbo v11, "bc_fixed_point"

    #@b
    invoke-virtual {v2, p0, v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@e
    move-result-object v11

    #@f
    invoke-static {v11}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getFixedPointPreCompInfo(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    #@12
    move-result-object v5

    #@13
    .line 31
    .local v5, "info":Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@16
    move-result-object v6

    #@17
    .line 33
    .local v6, "lookupTable":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v6, :cond_0

    #@19
    array-length v11, v6

    #@1a
    if-ge v11, v7, :cond_4

    #@1c
    .line 35
    :cond_0
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    #@1f
    move-result v1

    #@20
    .line 36
    .local v1, "bits":I
    add-int v11, v1, p1

    #@22
    add-int/lit8 v11, v11, -0x1

    #@24
    div-int v3, v11, p1

    #@26
    .line 38
    .local v3, "d":I
    new-array v9, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@28
    .line 39
    .local v9, "pow2Table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aput-object p0, v9, v12

    #@2a
    .line 40
    const/4 v4, 0x1

    #@2b
    .local v4, "i":I
    :goto_0
    if-ge v4, p1, :cond_1

    #@2d
    .line 42
    add-int/lit8 v11, v4, -0x1

    #@2f
    aget-object v11, v9, v11

    #@31
    invoke-virtual {v11, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v11

    #@35
    aput-object v11, v9, v4

    #@37
    .line 40
    add-int/lit8 v4, v4, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 45
    :cond_1
    invoke-virtual {v2, v9}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@3d
    .line 47
    new-array v6, v7, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3f
    .line 48
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@42
    move-result-object v11

    #@43
    aput-object v11, v6, v12

    #@45
    .line 50
    add-int/lit8 v0, p1, -0x1

    #@47
    .local v0, "bit":I
    :goto_1
    if-ltz v0, :cond_3

    #@49
    .line 52
    aget-object v8, v9, v0

    #@4b
    .line 54
    .local v8, "pow2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    shl-int v10, v13, v0

    #@4d
    .line 55
    .local v10, "step":I
    move v4, v10

    #@4e
    :goto_2
    if-ge v4, v7, :cond_2

    #@50
    .line 57
    sub-int v11, v4, v10

    #@52
    aget-object v11, v6, v11

    #@54
    invoke-virtual {v11, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@57
    move-result-object v11

    #@58
    aput-object v11, v6, v4

    #@5a
    .line 55
    shl-int/lit8 v11, v10, 0x1

    #@5c
    add-int/2addr v4, v11

    #@5d
    goto :goto_2

    #@5e
    .line 50
    :cond_2
    add-int/lit8 v0, v0, -0x1

    #@60
    goto :goto_1

    #@61
    .line 61
    .end local v8    # "pow2":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "step":I
    :cond_3
    invoke-virtual {v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@64
    .line 63
    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@67
    .line 64
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    #@6a
    .line 66
    const-string/jumbo v11, "bc_fixed_point"

    #@6d
    invoke-virtual {v2, p0, v11, v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    #@70
    .line 69
    .end local v0    # "bit":I
    .end local v1    # "bits":I
    .end local v3    # "d":I
    .end local v4    # "i":I
    .end local v9    # "pow2Table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_4
    return-object v5
.end method
