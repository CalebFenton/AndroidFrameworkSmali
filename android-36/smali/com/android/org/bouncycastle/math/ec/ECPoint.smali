.class public abstract Lcom/android/org/bouncycastle/math/ec/ECPoint;
.super Ljava/lang/Object;
.source "ECPoint.java"


# static fields
.field protected static final blacklist EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# instance fields
.field protected blacklist curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

.field protected blacklist preCompTable:Ljava/util/Hashtable;

.field protected blacklist x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

.field protected blacklist zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x0

    .line 16
    new-array v0, v0, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 5

    .line 59
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method protected constructor blacklist <init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .registers 6

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->preCompTable:Ljava/util/Hashtable;

    .line 64
    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    .line 65
    iput-object p2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 66
    iput-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 67
    iput-object p4, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-void
.end method

.method protected static blacklist getInitialZCoords(Lcom/android/org/bouncycastle/math/ec/ECCurve;)[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    if-nez p0, :cond_4

    const/4 v0, 0x0

    goto :goto_8

    .line 21
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v0

    :goto_8
    if-eqz v0, :cond_3e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3e

    .line 32
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_39

    const/4 v2, 0x2

    if-eq v0, v2, :cond_39

    const/4 v2, 0x3

    if-eq v0, v2, :cond_34

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2b

    const/4 p0, 0x6

    if-ne v0, p0, :cond_23

    goto :goto_39

    .line 45
    :cond_23
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "unknown coordinate system"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_2b
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    filled-new-array {v1, p0}, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    .line 41
    :cond_34
    filled-new-array {v1, v1, v1}, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    .line 39
    :cond_39
    :goto_39
    filled-new-array {v1}, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0

    .line 27
    :cond_3e
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method


# virtual methods
.method public abstract blacklist add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method protected blacklist checkNormalized()V
    .registers 2

    .line 192
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isNormalized()Z

    move-result p0

    if-eqz p0, :cond_7

    return-void

    .line 194
    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "point not in normal form"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected blacklist createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 284
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method protected abstract blacklist detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z
    .registers 11

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 383
    :cond_4
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_11

    move v4, v3

    goto :goto_12

    :cond_11
    move v4, v0

    :goto_12
    if-nez v2, :cond_16

    move v5, v3

    goto :goto_17

    :cond_16
    move v5, v0

    .line 385
    :goto_17
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v6

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v7

    if-nez v6, :cond_6e

    if-eqz v7, :cond_24

    goto :goto_6e

    :cond_24
    if-eqz v4, :cond_29

    if-eqz v5, :cond_29

    goto :goto_50

    :cond_29
    if-eqz v4, :cond_30

    .line 399
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    goto :goto_50

    :cond_30
    if-eqz v5, :cond_37

    .line 403
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_50

    .line 405
    :cond_37
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result v2

    if-nez v2, :cond_3e

    return v0

    .line 413
    :cond_3e
    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p1

    filled-new-array {p0, p1}, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 416
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    .line 418
    aget-object p1, p0, v0

    .line 419
    aget-object p0, p0, v3

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    .line 422
    :goto_50
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6d

    return v3

    :cond_6d
    return v0

    :cond_6e
    :goto_6e
    if-eqz v6, :cond_7d

    if-eqz v7, :cond_7d

    if-nez v4, :cond_7c

    if-nez v5, :cond_7c

    .line 389
    invoke-virtual {v1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    move-result p0

    if-eqz p0, :cond_7d

    :cond_7c
    return v3

    :cond_7d
    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 432
    :cond_4
    instance-of v0, p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    if-nez v0, :cond_a

    const/4 p0, 0x0

    return p0

    .line 437
    :cond_a
    check-cast p1, Lcom/android/org/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->equals(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Z

    move-result p0

    return p0
.end method

.method public blacklist getAffineXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 112
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 113
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getAffineYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 124
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->checkNormalized()V

    .line 125
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    return-object p0
.end method

.method protected abstract blacklist getCompressionYTilde()Z
.end method

.method public blacklist getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 1

    .line 93
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    return-object p0
.end method

.method protected blacklist getCurveCoordinateSystem()I
    .registers 1

    .line 101
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result p0

    return p0
.end method

.method public final blacklist getDetachedPoint()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 88
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->detach()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getEncoded(Z)[B
    .registers 6

    .line 487
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 489
    new-array p0, v1, [B

    return-object p0

    .line 492
    :cond_a
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 494
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    const/4 v2, 0x0

    if-eqz p1, :cond_2e

    .line 498
    array-length p1, v0

    add-int/2addr p1, v1

    new-array p1, p1, [B

    .line 499
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCompressionYTilde()Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x3

    goto :goto_26

    :cond_25
    const/4 p0, 0x2

    :goto_26
    int-to-byte p0, p0

    aput-byte p0, p1, v2

    .line 500
    array-length p0, v0

    invoke-static {v0, v2, p1, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    .line 504
    :cond_2e
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object p0

    .line 506
    array-length p1, v0

    array-length v3, p0

    add-int/2addr p1, v3

    add-int/2addr p1, v1

    new-array p1, p1, [B

    const/4 v3, 0x4

    .line 507
    aput-byte v3, p1, v2

    .line 508
    array-length v3, v0

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 509
    array-length v0, v0

    add-int/2addr v0, v1

    array-length v1, p0

    invoke-static {p0, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1
.end method

.method public final blacklist getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 177
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public final blacklist getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 182
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method protected final blacklist getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 187
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public blacklist getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 140
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public blacklist getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 1

    .line 155
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0
.end method

.method public blacklist getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 3

    if-ltz p1, :cond_b

    .line 160
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, p0

    if-lt p1, v0, :cond_8

    goto :goto_b

    :cond_8
    aget-object p0, p0, p1

    return-object p0

    :cond_b
    :goto_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public blacklist getZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 4

    .line 165
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, p0

    if-nez v0, :cond_8

    .line 168
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->EMPTY_ZS:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    return-object p0

    .line 170
    :cond_8
    new-array v1, v0, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v2, 0x0

    .line 171
    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 442
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    goto :goto_d

    .line 443
    :cond_8
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->hashCode()I

    move-result v0

    not-int v0, v0

    .line 445
    :goto_d
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 449
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    .line 451
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    xor-int/2addr v0, v1

    .line 452
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    mul-int/lit16 p0, p0, 0x101

    xor-int/2addr p0, v0

    return p0

    :cond_2e
    return v0
.end method

.method blacklist implIsValid(ZZ)Z
    .registers 6

    .line 304
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 309
    :cond_8
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECPoint;ZZ)V

    const-string p1, "bc_validity"

    invoke-virtual {v0, p0, p1, v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lcom/android/org/bouncycastle/math/ec/PreCompCallback;)Lcom/android/org/bouncycastle/math/ec/PreCompInfo;

    move-result-object p0

    check-cast p0, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;

    .line 345
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0
.end method

.method public blacklist isInfinity()Z
    .registers 3

    .line 289
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->x:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->y:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    if-eqz v0, :cond_18

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v0, p0

    const/4 v1, 0x0

    if-lez v0, :cond_17

    aget-object p0, p0, v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result p0

    if-eqz p0, :cond_17

    goto :goto_18

    :cond_17
    return v1

    :cond_18
    :goto_18
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isNormalized()Z
    .registers 3

    .line 200
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1c

    .line 204
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 205
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result p0

    if-eqz p0, :cond_1b

    goto :goto_1c

    :cond_1b
    return v0

    :cond_1c
    :goto_1c
    const/4 p0, 0x1

    return p0
.end method

.method public blacklist isValid()Z
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 294
    invoke-virtual {p0, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result p0

    return p0
.end method

.method blacklist isValidPartial()Z
    .registers 2

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p0, v0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z

    move-result p0

    return p0
.end method

.method public blacklist multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 3

    .line 555
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECMultiplier;->multiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist normalize()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_43

    .line 221
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    if-eqz v0, :cond_43

    const/4 v1, 0x5

    if-eq v0, v1, :cond_43

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->isOne()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_43

    .line 236
    :cond_1c
    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    if-eqz v1, :cond_3b

    .line 251
    invoke-static {}, Lcom/android/org/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v1

    .line 252
    iget-object v2, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v2, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->randomFieldElementMult(Ljava/security/SecureRandom;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    .line 253
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 238
    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Detached points must be in affine coordinates"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    :goto_43
    return-object p0
.end method

.method blacklist normalize(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 261
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurveCoordinateSystem()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_29

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1c

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    goto :goto_29

    .line 277
    :cond_14
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "not a projective coordinate system"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 272
    :cond_1c
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->square()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    .line 273
    invoke-virtual {p0, v0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0

    .line 266
    :cond_29
    :goto_29
    invoke-virtual {p0, p1, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->createScaledPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method protected abstract blacklist satisfiesCurveEquation()Z
.end method

.method protected blacklist satisfiesOrder()Z
    .registers 3

    .line 74
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_10

    return v1

    .line 79
    :cond_10
    iget-object v0, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->curve:Lcom/android/org/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 83
    invoke-static {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result p0

    if-eqz p0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return p0

    :cond_25
    :goto_25
    return v1
.end method

.method public blacklist scaleX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 350
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 352
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleXNegateY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 357
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 359
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleY(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 364
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 366
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist scaleYNegateX(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 371
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 373
    :cond_7
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->negate()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawZCoords()[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p0

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist threeTimes()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 545
    invoke-virtual {p0, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method

.method public blacklist timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    if-ltz p1, :cond_c

    :goto_2
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_b

    .line 531
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    goto :goto_2

    :cond_b
    return-object p0

    .line 525
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "\'e\' cannot be negative"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 460
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 462
    const-string p0, "INF"

    return-object p0

    .line 465
    :cond_9
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v1, 0x28

    .line 466
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 467
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/16 v1, 0x2c

    .line 468
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 469
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 470
    :goto_27
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    array-length v3, v3

    if-ge v2, v3, :cond_39

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 473
    iget-object v3, p0, Lcom/android/org/bouncycastle/math/ec/ECPoint;->zs:[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_39
    const/16 p0, 0x29

    .line 475
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 476
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public abstract blacklist twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;
.end method

.method public blacklist twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 2

    .line 540
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    return-object p0
.end method
