.class public Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
.super Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
.source "ECCurve.java"


# instance fields
.field private blacklist infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

.field private blacklist k1:I

.field private blacklist k2:I

.field private blacklist k3:I

.field private blacklist m:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetm(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return p0
.end method

.method protected constructor blacklist <init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 9

    .line 1268
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1270
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1271
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1272
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1273
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1274
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    .line 1275
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    .line 1277
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 1278
    iput-object p5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1279
    iput-object p6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    .line 1280
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public constructor blacklist <init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 9

    .line 1251
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;-><init>(IIII)V

    .line 1253
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    .line 1254
    iput p2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    .line 1255
    iput p3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    .line 1256
    iput p4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    .line 1257
    iput-object p7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    .line 1258
    iput-object p8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    .line 1260
    new-instance p1, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    .line 1261
    invoke-virtual {p0, p5}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    .line 1262
    invoke-virtual {p0, p6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object p1

    iput-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    const/4 p1, 0x6

    .line 1263
    iput p1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->coord:I

    return-void
.end method

.method public constructor blacklist <init>(IILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 16

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1183
    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-void
.end method


# virtual methods
.method protected blacklist cloneCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .registers 10

    .line 1285
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    iget v3, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v4, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    iget-object v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->a:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v6, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->b:Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    iget-object v7, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->order:Ljava/math/BigInteger;

    iget-object v8, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve;->cofactor:Ljava/math/BigInteger;

    invoke-direct/range {v0 .. v8}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;-><init>(IIIILcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public blacklist createCacheSafeLookupTable([Lcom/android/org/bouncycastle/math/ec/ECPoint;II)Lcom/android/org/bouncycastle/math/ec/ECLookupTable;
    .registers 11

    .line 1377
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    add-int/lit8 v0, v0, 0x3f

    ushr-int/lit8 v4, v0, 0x6

    .line 1378
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isTrinomial()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    new-array v0, v2, [I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v2, v0, v3

    :goto_15
    move-object v6, v0

    goto :goto_27

    :cond_17
    const/4 v0, 0x3

    new-array v0, v0, [I

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput v5, v0, v3

    iget v5, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    aput v5, v0, v2

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    aput v2, v0, v1

    goto :goto_15

    :goto_27
    mul-int v0, p3, v4

    mul-int/2addr v0, v1

    .line 1380
    new-array v5, v0, [J

    move v0, v3

    :goto_2d
    if-ge v3, p3, :cond_4e

    add-int v1, p2, v3

    .line 1385
    aget-object v1, p1, v1

    .line 1386
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawXCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, v2, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v2, v5, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v0, v4

    .line 1387
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getRawYCoord()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    check-cast v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;->x:Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-virtual {v1, v5, v0}, Lcom/android/org/bouncycastle/math/ec/LongArray;->copyTo([JI)V

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 1391
    :cond_4e
    new-instance v1, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;

    move-object v2, p0

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m$1;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V

    return-object v1
.end method

.method protected blacklist createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;
    .registers 2

    .line 1303
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1305
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;

    invoke-direct {p0}, Lcom/android/org/bouncycastle/math/ec/WTauNafMultiplier;-><init>()V

    return-object p0

    .line 1308
    :cond_c
    invoke-super {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->createDefaultMultiplier()Lcom/android/org/bouncycastle/math/ec/ECMultiplier;

    move-result-object p0

    return-object p0
.end method

.method protected blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 4

    .line 1332
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method protected blacklist createRawPoint(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 5

    .line 1337
    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;-><init>(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;Lcom/android/org/bouncycastle/math/ec/ECFieldElement;[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    return-object v0
.end method

.method public blacklist fromBigInteger(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .registers 8

    if-eqz p1, :cond_39

    .line 1318
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_39

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iget v1, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    if-gt v0, v1, :cond_39

    .line 1323
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    iget v2, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    or-int v3, v0, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_21

    .line 1324
    new-array v0, v5, [I

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput p0, v0, v4

    goto :goto_2e

    :cond_21
    const/4 v3, 0x3

    .line 1325
    new-array v3, v3, [I

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k1:I

    aput p0, v3, v4

    aput v0, v3, v5

    const/4 p0, 0x2

    aput v2, v3, p0

    move-object v0, v3

    .line 1327
    :goto_2e
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;

    new-instance v2, Lcom/android/org/bouncycastle/math/ec/LongArray;

    invoke-direct {v2, p1}, Lcom/android/org/bouncycastle/math/ec/LongArray;-><init>(Ljava/math/BigInteger;)V

    invoke-direct {p0, v1, v0, v2}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILcom/android/org/bouncycastle/math/ec/LongArray;)V

    return-object p0

    .line 1320
    :cond_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "x value invalid in F2m field element"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist getFieldSize()I
    .registers 1

    .line 1313
    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->m:I

    return p0
.end method

.method public blacklist getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .registers 1

    .line 1342
    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->infinity:Lcom/android/org/bouncycastle/math/ec/ECPoint$F2m;

    return-object p0
.end method

.method public blacklist isTrinomial()Z
    .registers 2

    .line 1357
    iget v0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k2:I

    if-nez v0, :cond_a

    iget p0, p0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->k3:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    return p0

    :cond_a
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist supportsCoordinateSystem(I)Z
    .registers 3

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_9

    if-eq p1, p0, :cond_9

    const/4 v0, 0x6

    if-eq p1, v0, :cond_9

    const/4 p0, 0x0

    :cond_9
    return p0
.end method
