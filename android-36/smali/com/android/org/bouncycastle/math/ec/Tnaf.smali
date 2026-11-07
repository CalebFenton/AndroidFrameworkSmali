.class abstract Lcom/android/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final blacklist MINUS_ONE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_THREE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_TWO:Ljava/math/BigInteger;

.field public static final blacklist alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha0Tnaf:[[B

.field public static final blacklist alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha1Tnaf:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 38

    .line 17
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    sput-object v1, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 18
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v2

    sput-object v2, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 19
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v2}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    sput-object v3, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 37
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    sget-object v4, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v5, v0, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v7, v3, v1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v9, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v11, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v11, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v13, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v13, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v15, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v15, v0, v0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v6, v2, v0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v8, v1, v4}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    move-object v10, v4

    const/4 v4, 0x0

    move-object/from16 v17, v6

    const/4 v6, 0x0

    move-object/from16 v19, v8

    const/4 v8, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v2

    move-object/from16 v2, v20

    filled-new-array/range {v4 .. v19}, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v4

    sput-object v4, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    const/4 v4, 0x1

    .line 53
    new-array v6, v4, [B

    const/4 v13, 0x0

    aput-byte v4, v6, v13

    const/4 v14, 0x3

    new-array v8, v14, [B

    fill-array-data v8, :array_f2

    new-array v10, v14, [B

    fill-array-data v10, :array_f8

    const/4 v11, 0x0

    const/4 v15, 0x4

    new-array v12, v15, [B

    fill-array-data v12, :array_fe

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    filled-new-array/range {v5 .. v12}, [[B

    move-result-object v5

    sput-object v5, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 61
    new-instance v5, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v5, v0, v2}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v6, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v6, v3, v0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v3, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v3, v1, v0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v7, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v7, v0, v0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v8, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v8, v1, v1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v9, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v9, v0, v1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-object/from16 v10, v21

    invoke-direct {v0, v10, v1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    new-instance v10, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v10, v1, v2}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    move-object/from16 v35, v0

    move-object/from16 v27, v3

    move-object/from16 v23, v5

    move-object/from16 v25, v6

    move-object/from16 v29, v7

    move-object/from16 v31, v8

    move-object/from16 v33, v9

    move-object/from16 v37, v10

    filled-new-array/range {v22 .. v37}, [Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    .line 77
    new-array v6, v4, [B

    aput-byte v4, v6, v13

    new-array v8, v14, [B

    fill-array-data v8, :array_104

    new-array v10, v14, [B

    fill-array-data v10, :array_10a

    new-array v12, v15, [B

    fill-array-data v12, :array_110

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    filled-new-array/range {v5 .. v12}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    nop

    :array_f2
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_f8
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_fe
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_104
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_10a
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_110
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method public static blacklist approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 8

    add-int/lit8 v0, p4, 0x5

    .line 291
    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    .line 292
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 294
    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 296
    invoke-virtual {p0, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 298
    invoke-virtual {p2, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 300
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    sub-int/2addr v0, p5

    .line 301
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    .line 302
    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p0

    if-eqz p0, :cond_31

    .line 305
    sget-object p0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {p1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 308
    :cond_31
    new-instance p0, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {p0, p1, p5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object p0
.end method

.method public static blacklist getLucas(BIZ)[Ljava/math/BigInteger;
    .registers 8

    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    .line 456
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_f
    if-eqz p2, :cond_19

    .line 462
    sget-object p2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    int-to-long v1, p0

    .line 463
    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_1d

    .line 467
    :cond_19
    sget-object p2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 468
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    :goto_1d
    move v2, v0

    :goto_1e
    if-ge v2, p1, :cond_36

    if-gez p0, :cond_27

    .line 477
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_28

    :cond_27
    move-object v3, v1

    .line 480
    :goto_28
    invoke-virtual {p2, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    move-object v4, v1

    move-object v1, p2

    move-object p2, v4

    goto :goto_1e

    :cond_36
    const/4 p0, 0x2

    .line 485
    new-array p0, p0, [Ljava/math/BigInteger;

    const/4 p1, 0x0

    aput-object p2, p0, p1

    aput-object v1, p0, v0

    return-object p0
.end method

.method public static blacklist getMu(I)B
    .registers 1

    .line 0
    if-nez p0, :cond_4

    const/4 p0, -0x1

    goto :goto_5

    :cond_4
    const/4 p0, 0x1

    :goto_5
    int-to-byte p0, p0

    return p0
.end method

.method public static blacklist getPreComp(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 8

    .line 813
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-nez p1, :cond_b

    .line 814
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_d

    :cond_b
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 816
    :goto_d
    array-length v1, p1

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    const/4 v2, 0x0

    .line 817
    aput-object p0, v1, v2

    .line 819
    array-length v2, p1

    const/4 v3, 0x3

    :goto_19
    if-ge v3, v2, :cond_28

    ushr-int/lit8 v4, v3, 0x1

    .line 822
    aget-object v5, p1, v3

    invoke-static {p0, v0, v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x2

    goto :goto_19

    .line 825
    :cond_28
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    return-object v1
.end method

.method protected static blacklist getShiftsForCofactor(Ljava/math/BigInteger;)I
    .registers 2

    if-eqz p0, :cond_16

    .line 560
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 564
    :cond_c
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x2

    return p0

    .line 570
    :cond_16
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "h (Cofactor) must be 2 or 4"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 6

    .line 540
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    .line 541
    invoke-static {p2}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result p2

    add-int/lit8 p0, p0, 0x3

    sub-int/2addr p0, p1

    const/4 p1, 0x0

    .line 543
    invoke-static {v0, p0, p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    .line 546
    aget-object v0, p0, p1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, p1

    .line 547
    aget-object v0, p0, v1

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    aput-object v0, p0, v1

    .line 550
    :cond_23
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 551
    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object p0

    const/4 p2, 0x2

    .line 553
    new-array p2, p2, [Ljava/math/BigInteger;

    aput-object v2, p2, p1

    aput-object p0, p2, v1

    return-object p2
.end method

.method public static blacklist getSi(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .registers 3

    .line 530
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 535
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getA()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 532
    :cond_1f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "si is defined for Koblitz curves only"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist getTw(BI)Ljava/math/BigInteger;
    .registers 5

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_14

    if-ne p0, v1, :cond_d

    const-wide/16 p0, 0x6

    .line 502
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_d
    const-wide/16 p0, 0xa

    .line 507
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_14
    const/4 v0, 0x0

    .line 513
    invoke-static {p0, p1, v0}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 514
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p1

    .line 515
    aget-object v2, p0, v1

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 516
    aget-object p0, p0, v0

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist multiplyFromTnaf(Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 8

    .line 681
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 682
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 684
    array-length v1, p2

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    if-ltz v1, :cond_2a

    add-int/lit8 v3, v3, 0x1

    .line 687
    aget-byte v4, p2, v1

    if-eqz v4, :cond_27

    .line 690
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    if-lez v4, :cond_1f

    move-object v3, p0

    goto :goto_20

    :cond_1f
    move-object v3, p1

    .line 694
    :goto_20
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move v3, v2

    :cond_27
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_2a
    if-lez v3, :cond_31

    .line 699
    invoke-virtual {v0, v3}, Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object p0

    return-object p0

    :cond_31
    return-object v0
.end method

.method public static blacklist norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .registers 5

    .line 92
    iget-object v0, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_20

    .line 103
    iget-object p0, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    :cond_20
    const/4 v2, -0x1

    if-ne p0, v2, :cond_3a

    .line 108
    iget-object p0, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p0

    iget-object v1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    iget-object p1, p1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 112
    :cond_3a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist partModReduction(Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 15

    .line 588
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v4

    .line 589
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne p3, v8, :cond_16

    .line 595
    aget-object v0, v6, v7

    aget-object v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_14
    move-object v9, v0

    goto :goto_1f

    .line 599
    :cond_16
    aget-object v0, v6, v7

    aget-object v1, v6, v8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_14

    .line 603
    :goto_1f
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_41

    .line 608
    sget-object v0, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 609
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 608
    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    :goto_3f
    move-object v2, p0

    goto :goto_48

    .line 613
    :cond_41
    invoke-static {p3, v4, v8}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object p0

    .line 614
    aget-object p0, p0, v8

    goto :goto_3f

    .line 617
    :goto_48
    aget-object v1, v6, v7

    move-object v0, p1

    move v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 618
    aget-object v1, v6, v8

    invoke-static/range {v0 .. v5}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 620
    invoke-static {p0, p1, p3}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    move-result-object p0

    .line 623
    iget-object p1, p0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    aget-object p2, v6, v8

    iget-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 624
    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    invoke-virtual {p2, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p2

    .line 623
    invoke-virtual {p1, p2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 627
    aget-object p2, v6, v8

    iget-object p3, p0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {p2, p3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p2

    aget-object p3, v6, v7

    iget-object p0, p0, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {p3, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 629
    new-instance p2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {p2, p1, p0}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2
.end method

.method public static blacklist round(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/org/bouncycastle/math/ec/ZTauElement;
    .registers 11

    .line 174
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v0

    .line 175
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    if-ne v1, v0, :cond_a8

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p2, v1, :cond_19

    if-ne p2, v0, :cond_11

    goto :goto_19

    .line 183
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "mu must be 1 or -1"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 186
    :cond_19
    :goto_19
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v2

    .line 187
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 189
    invoke-virtual {p0, v2}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 190
    invoke-virtual {p1, v3}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    .line 193
    invoke-virtual {p0, p0}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    if-ne p2, v1, :cond_34

    .line 196
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    goto :goto_38

    .line 201
    :cond_34
    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v4

    .line 206
    :goto_38
    invoke-virtual {p1, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 207
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p1

    if-ne p2, v1, :cond_4f

    .line 212
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    goto :goto_57

    .line 218
    :cond_4f
    invoke-virtual {p0, v5}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v5

    .line 219
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object p0

    .line 226
    :goto_57
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    const/4 v7, 0x0

    if-ltz v6, :cond_69

    .line 228
    sget-object v6, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v5, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v6

    if-gez v6, :cond_75

    goto :goto_71

    .line 240
    :cond_69
    sget-object v1, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-ltz v1, :cond_74

    :goto_71
    move v1, v7

    move v7, p2

    goto :goto_75

    :cond_74
    move v1, v7

    .line 247
    :cond_75
    :goto_75
    sget-object v6, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v6}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gez v4, :cond_87

    .line 249
    invoke-virtual {v5, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-ltz p0, :cond_90

    :goto_83
    neg-int p0, p2

    int-to-byte v7, p0

    :cond_85
    move v0, v1

    goto :goto_90

    .line 261
    :cond_87
    sget-object p1, Lcom/android/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    if-gez p0, :cond_85

    goto :goto_83

    :cond_90
    :goto_90
    int-to-long p0, v0

    .line 267
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    int-to-long p1, v7

    .line 268
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 269
    new-instance p2, Lcom/android/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {p2, p0, p1}, Lcom/android/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object p2

    .line 177
    :cond_a8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist tauAdicWNaf(BLcom/android/org/bouncycastle/math/ec/ZTauElement;II[Lcom/android/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 22

    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    goto :goto_13

    .line 722
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_13
    :goto_13
    invoke-static/range {p0 .. p1}, Lcom/android/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v3

    .line 728
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_24

    add-int/lit8 v3, v3, 0x4

    add-int v3, v3, p2

    goto :goto_26

    :cond_24
    add-int/lit8 v3, p2, 0x22

    .line 734
    :goto_26
    new-array v3, v3, [B

    shl-int v4, v2, p2

    sub-int/2addr v4, v2

    rsub-int/lit8 v5, p2, 0x20

    .line 741
    iget-object v6, v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 742
    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    const/4 v7, 0x0

    move v8, v7

    .line 746
    :goto_33
    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    const/16 v10, 0x3e

    if-gt v9, v10, :cond_87

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v9

    if-le v9, v10, :cond_42

    goto :goto_87

    .line 772
    :cond_42
    invoke-static {v6}, Lcom/android/org/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v6

    .line 773
    invoke-static {v1}, Lcom/android/org/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v9

    :goto_4a
    or-long v11, v6, v9

    const-wide/16 v13, 0x0

    cmp-long v1, v11, v13

    if-eqz v1, :cond_86

    const-wide/16 v11, 0x1

    and-long/2addr v11, v6

    cmp-long v1, v11, v13

    if-eqz v1, :cond_79

    long-to-int v1, v6

    long-to-int v11, v9

    mul-int v11, v11, p3

    add-int/2addr v1, v11

    and-int v11, v1, v4

    shl-int/2addr v1, v5

    shr-int/2addr v1, v5

    int-to-byte v1, v1

    .line 783
    aput-byte v1, v3, v8

    .line 784
    aget-object v1, p4, v11

    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v12, v1

    sub-long/2addr v6, v12

    .line 785
    aget-object v1, p4, v11

    iget-object v1, v1, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v11, v1

    sub-long/2addr v9, v11

    :cond_79
    add-int/lit8 v8, v8, 0x1

    shr-long/2addr v6, v2

    if-ne v0, v2, :cond_80

    add-long/2addr v9, v6

    goto :goto_81

    :cond_80
    sub-long/2addr v9, v6

    :goto_81
    neg-long v6, v6

    move-wide v15, v9

    move-wide v9, v6

    move-wide v6, v15

    goto :goto_4a

    :cond_86
    return-object v3

    .line 748
    :cond_87
    :goto_87
    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_af

    .line 750
    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v10

    mul-int v10, v10, p3

    add-int/2addr v9, v10

    and-int v10, v9, v4

    shl-int/2addr v9, v5

    shr-int/2addr v9, v5

    int-to-byte v9, v9

    .line 753
    aput-byte v9, v3, v8

    .line 754
    aget-object v9, p4, v10

    iget-object v9, v9, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v6, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 755
    aget-object v9, p4, v10

    iget-object v9, v9, Lcom/android/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_af
    add-int/lit8 v8, v8, 0x1

    .line 760
    invoke-virtual {v6, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    if-ne v0, v2, :cond_bc

    .line 763
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_c0

    .line 767
    :cond_bc
    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 769
    :goto_c0
    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    move-object v15, v6

    move-object v6, v1

    move-object v1, v15

    goto/16 :goto_33
.end method
