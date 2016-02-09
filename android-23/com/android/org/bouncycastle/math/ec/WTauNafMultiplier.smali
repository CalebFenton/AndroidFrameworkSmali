.class public Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WTauNafMultiplier.java"


# static fields
.field static final PRECOMP_NAME:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    #@3
    return-void
.end method

.method private static multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 8
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p1, "u"    # [B
    .param p2, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@0
    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@6
    .line 77
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v7

    #@a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@d
    move-result-object v7

    #@e
    invoke-virtual {v7}, Ljava/math/BigInteger;->byteValue()B

    #@11
    move-result v0

    #@12
    .line 80
    .local v0, "a":B
    if-eqz p2, :cond_1

    #@14
    instance-of v7, p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    #@16
    if-eqz v7, :cond_1

    #@18
    .line 90
    check-cast p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    #@1a
    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@1d
    move-result-object v4

    #@1e
    .line 94
    .local v4, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    :goto_0
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@21
    move-result-object v7

    #@22
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@25
    move-result-object v5

    #@26
    check-cast v5, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@28
    .line 95
    .local v5, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    array-length v7, p1

    #@29
    add-int/lit8 v2, v7, -0x1

    #@2b
    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_3

    #@2d
    .line 97
    invoke-static {v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tau(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@30
    move-result-object v5

    #@31
    .line 98
    aget-byte v6, p1, v2

    #@33
    .line 99
    .local v6, "ui":B
    if-eqz v6, :cond_0

    #@35
    .line 101
    if-lez v6, :cond_2

    #@37
    .line 103
    aget-object v7, v4, v6

    #@39
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->addSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@3c
    move-result-object v5

    #@3d
    .line 95
    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    #@3f
    goto :goto_1

    #@40
    .line 82
    .end local v2    # "i":I
    .end local v4    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .end local v5    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .end local v6    # "ui":B
    .restart local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_1
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@43
    move-result-object v4

    #@44
    .line 84
    .restart local v4    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    #@46
    invoke-direct {v3}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    #@49
    .line 85
    .local v3, "pre":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)V

    #@4c
    .line 86
    const-string/jumbo v7, "bc_wtnaf"

    #@4f
    invoke-virtual {v1, p0, v7, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    #@52
    goto :goto_0

    #@53
    .line 107
    .end local v3    # "pre":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .restart local v2    # "i":I
    .restart local v5    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .restart local v6    # "ui":B
    :cond_2
    neg-int v7, v6

    #@54
    aget-object v7, v4, v7

    #@56
    invoke-virtual {v5, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->subtractSimple(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@59
    move-result-object v5

    #@5a
    goto :goto_2

    #@5b
    .line 112
    .end local v6    # "ui":B
    :cond_3
    return-object v5
.end method

.method private multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .locals 7
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    .param p2, "lambda"    # Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .param p3, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .param p4, "a"    # B
    .param p5, "mu"    # B

    #@0
    .prologue
    const/4 v2, 0x4

    #@1
    .line 55
    if-nez p4, :cond_0

    #@3
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@5
    .line 57
    .local v5, "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    :goto_0
    invoke-static {p5, v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    #@8
    move-result-object v4

    #@9
    .line 60
    .local v4, "tw":Ljava/math/BigInteger;
    const-wide/16 v0, 0x10

    #@b
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    #@e
    move-result-object v3

    #@f
    move v0, p5

    #@10
    move-object v1, p2

    #@11
    .line 59
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;BLjava/math/BigInteger;Ljava/math/BigInteger;[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B

    #@14
    move-result-object v6

    #@15
    .line 62
    .local v6, "u":[B
    invoke-static {p1, v6, p3}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 55
    .end local v4    # "tw":Ljava/math/BigInteger;
    .end local v5    # "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .end local v6    # "u":[B
    :cond_0
    sget-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@1c
    .restart local v5    # "alpha":[Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    goto :goto_0
.end method


# virtual methods
.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 12
    .param p1, "point"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 24
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "Only ECPoint.F2m can be used in WTauNafMultiplier"

    #@9
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_0
    move-object v6, p1

    #@e
    .line 30
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@10
    .line 31
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@13
    move-result-object v11

    #@14
    check-cast v11, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@16
    .line 32
    .local v11, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getM()I

    #@19
    move-result v1

    #@1a
    .line 33
    .local v1, "m":I
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/math/BigInteger;->byteValue()B

    #@25
    move-result v2

    #@26
    .line 34
    .local v2, "a":B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getMu()B

    #@29
    move-result v4

    #@2a
    .line 35
    .local v4, "mu":B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getSi()[Ljava/math/BigInteger;

    #@2d
    move-result-object v3

    #@2e
    .line 37
    .local v3, "s":[Ljava/math/BigInteger;
    const/16 v5, 0xa

    #@30
    move-object v0, p2

    #@31
    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->partModReduction(Ljava/math/BigInteger;IB[Ljava/math/BigInteger;BB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    #@34
    move-result-object v7

    #@35
    .line 39
    .local v7, "rho":Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    const-string/jumbo v0, "bc_wtnaf"

    #@38
    invoke-virtual {v11, v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@3b
    move-result-object v8

    #@3c
    move-object v5, p0

    #@3d
    move v9, v2

    #@3e
    move v10, v4

    #@3f
    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
