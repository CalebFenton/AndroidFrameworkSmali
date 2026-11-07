.class Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;
.super Ljava/lang/Object;
.source "FixedPointUtil.java"

# interfaces
.implements Lcom/android/org/bouncycastle/math/ec/PreCompCallback;


# instance fields
.field final synthetic blacklist val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field final synthetic blacklist val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)V
    .registers 3

    .line 29
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist checkExisting(Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z
    .registers 3

    if-eqz p1, :cond_e

    .line 82
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lcom/android/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->checkTable(Lcom/android/org/bouncycastle/math/ec/ECLookupTable;I)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist checkTable(Lcom/android/org/bouncycastle/math/ec/ECLookupTable;I)Z
    .registers 3

    if-eqz p1, :cond_a

    .line 87
    invoke-interface {p1}, Lcom/android/org/bouncycastle/math/ec/ECLookupTable;->getSize()I

    move-result p0

    if-lt p0, p2, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public blacklist precompute(Lcom/android/org/bouncycastle/math/ec/PreCompInfo;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;
    .registers 12

    .line 32
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    .line 34
    :goto_8
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lcom/android/org/bouncycastle/math/ec/ECCurve;)I

    move-result v0

    const/16 v1, 0xfa

    if-le v0, v1, :cond_14

    const/4 v1, 0x6

    goto :goto_15

    :cond_14
    const/4 v1, 0x5

    :goto_15
    const/4 v2, 0x1

    shl-int v3, v2, v1

    .line 38
    invoke-direct {p0, p1, v3}, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->checkExisting(Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z

    move-result v4

    if-eqz v4, :cond_1f

    return-object p1

    :cond_1f
    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    .line 43
    div-int/2addr v0, v1

    add-int/lit8 p1, v1, 0x1

    .line 45
    new-array p1, p1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 46
    iget-object v4, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lcom/android/org/bouncycastle/math/ec/ECPoint;

    const/4 v5, 0x0

    aput-object v4, p1, v5

    move v4, v2

    :goto_2c
    if-ge v4, v1, :cond_3b

    add-int/lit8 v6, v4, -0x1

    .line 49
    aget-object v6, p1, v6

    invoke-virtual {v6, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    aput-object v6, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 53
    :cond_3b
    aget-object v0, p1, v5

    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, p1, v1

    .line 55
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 57
    new-array v0, v3, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    .line 58
    aget-object v4, p1, v5

    aput-object v4, v0, v5

    add-int/lit8 v4, v1, -0x1

    :goto_52
    if-ltz v4, :cond_6c

    .line 62
    aget-object v6, p1, v4

    shl-int v7, v2, v4

    move v8, v7

    :goto_59
    if-ge v8, v3, :cond_69

    sub-int v9, v8, v7

    .line 67
    aget-object v9, v0, v9

    invoke-virtual {v9, v6}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v0, v8

    shl-int/lit8 v9, v7, 0x1

    add-int/2addr v8, v9

    goto :goto_59

    :cond_69
    add-int/lit8 v4, v4, -0x1

    goto :goto_52

    .line 71
    :cond_6c
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 73
    new-instance v2, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {v2}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    .line 74
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setLookupTable(Lcom/android/org/bouncycastle/math/ec/ECLookupTable;)V

    .line 75
    aget-object p0, p1, v1

    invoke-virtual {v2, p0}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 76
    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    return-object v2
.end method
