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

.method private static multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 11
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "u"    # [B
    .param p2, "preCompInfo"    # Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@0
    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    #@6
    .line 77
    .local v1, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@9
    move-result-object v10

    #@a
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@d
    move-result-object v10

    #@e
    invoke-virtual {v10}, Ljava/lang/Number;->byteValue()B

    #@11
    move-result v0

    #@12
    .line 80
    .local v0, "a":B
    if-eqz p2, :cond_0

    #@14
    instance-of v10, p2, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    #@16
    if-eqz v10, :cond_0

    #@18
    .line 90
    nop

    #@19
    nop

    #@1a
    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    invoke-virtual {p2}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@1d
    move-result-object v4

    #@1e
    .line 94
    .local v4, "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :goto_0
    array-length v10, v4

    #@1f
    new-array v5, v10, [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@21
    .line 95
    .local v5, "puNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v2, 0x0

    #@22
    .local v2, "i":I
    :goto_1
    array-length v10, v4

    #@23
    if-ge v2, v10, :cond_1

    #@25
    .line 97
    aget-object v10, v4, v2

    #@27
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2a
    move-result-object v10

    #@2b
    check-cast v10, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@2d
    aput-object v10, v5, v2

    #@2f
    .line 95
    add-int/lit8 v2, v2, 0x1

    #@31
    goto :goto_1

    #@32
    .line 82
    .end local v2    # "i":I
    .end local v4    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .end local v5    # "puNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .restart local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    :cond_0
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@35
    move-result-object v4

    #@36
    .line 84
    .restart local v4    # "pu":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    new-instance v3, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;

    #@38
    invoke-direct {v3}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;-><init>()V

    #@3b
    .line 85
    .local v3, "pre":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;->setPreComp([Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)V

    #@3e
    .line 86
    const-string/jumbo v10, "bc_wtnaf"

    #@41
    invoke-virtual {v1, p0, v10, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->setPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)V

    #@44
    goto :goto_0

    #@45
    .line 102
    .end local v3    # "pre":Lcom/android/org/bouncycastle/math/ec/WTauNafPreCompInfo;
    .end local p2    # "preCompInfo":Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .restart local v2    # "i":I
    .restart local v5    # "puNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_1
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v10}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4c
    move-result-object v6

    #@4d
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@4f
    .line 104
    .local v6, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v7, 0x0

    #@50
    .line 105
    .local v7, "tauCount":I
    array-length v10, p1

    #@51
    add-int/lit8 v2, v10, -0x1

    #@53
    :goto_2
    if-ltz v2, :cond_4

    #@55
    .line 107
    add-int/lit8 v7, v7, 0x1

    #@57
    .line 108
    aget-byte v8, p1, v2

    #@59
    .line 109
    .local v8, "ui":I
    if-eqz v8, :cond_2

    #@5b
    .line 111
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@5e
    move-result-object v6

    #@5f
    .line 112
    const/4 v7, 0x0

    #@60
    .line 114
    if-lez v8, :cond_3

    #@62
    ushr-int/lit8 v10, v8, 0x1

    #@64
    aget-object v9, v4, v10

    #@66
    .line 115
    .local v9, "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    invoke-virtual {v6, v9}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@69
    move-result-object v6

    #@6a
    .end local v6    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    check-cast v6, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@6c
    .line 105
    .end local v9    # "x":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v6    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    #@6e
    goto :goto_2

    #@6f
    .line 114
    :cond_3
    neg-int v10, v8

    #@70
    ushr-int/lit8 v10, v10, 0x1

    #@72
    aget-object v9, v5, v10

    #@74
    goto :goto_3

    #@75
    .line 118
    .end local v8    # "ui":I
    :cond_4
    if-lez v7, :cond_5

    #@77
    .line 120
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@7a
    move-result-object v6

    #@7b
    .line 122
    :cond_5
    return-object v6
.end method

.method private multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 7
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
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
    invoke-static {p1, v6, p3}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[BLcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

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
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@6
    const-string/jumbo v5, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    #@9
    invoke-direct {v0, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    :cond_0
    move-object v6, p1

    #@e
    .line 30
    nop

    #@f
    nop

    #@10
    .line 31
    .local v6, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@13
    move-result-object v11

    #@14
    check-cast v11, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    #@16
    .line 32
    .local v11, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    #@19
    move-result v1

    #@1a
    .line 33
    .local v1, "m":I
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@1d
    move-result-object v0

    #@1e
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/Number;->byteValue()B

    #@25
    move-result v2

    #@26
    .line 34
    .local v2, "a":B
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    #@29
    move-result v4

    #@2a
    .line 35
    .local v4, "mu":B
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

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
    invoke-virtual {v11, v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    #@3b
    move-result-object v8

    #@3c
    move-object v5, p0

    #@3d
    move v9, v2

    #@3e
    move v10, v4

    #@3f
    invoke-direct/range {v5 .. v10}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ZTauElement;Lcom/android/org/bouncycastle/math/ec/PreCompInfo;BB)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    #@42
    move-result-object v0

    #@43
    return-object v0
.end method
