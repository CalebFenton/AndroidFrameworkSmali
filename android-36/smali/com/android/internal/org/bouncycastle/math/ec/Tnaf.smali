.class Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;
.super Ljava/lang/Object;
.source "Tnaf.java"


# static fields
.field private static final blacklist MINUS_ONE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_THREE:Ljava/math/BigInteger;

.field private static final blacklist MINUS_TWO:Ljava/math/BigInteger;

.field public static final blacklist WIDTH:B = 0x4t

.field public static final blacklist alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha0Tnaf:[[B

.field public static final blacklist alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

.field public static final blacklist alpha1Tnaf:[[B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 30

    .line 17
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    .line 18
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    .line 19
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    .line 37
    const/16 v0, 0x10

    new-array v1, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-instance v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v5, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v4, v5, v6}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v6, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v8, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v6, v7, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    aput-object v3, v1, v6

    new-instance v8, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v10, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v8, v9, v10}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v9, 0x5

    aput-object v8, v1, v9

    const/4 v8, 0x6

    aput-object v3, v1, v8

    new-instance v10, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v11, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v10, v11, v12}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/4 v11, 0x7

    aput-object v10, v1, v11

    const/16 v10, 0x8

    aput-object v3, v1, v10

    new-instance v12, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v13, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v14, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v12, v13, v14}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v13, 0x9

    aput-object v12, v1, v13

    const/16 v12, 0xa

    aput-object v3, v1, v12

    new-instance v14, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    move/from16 v16, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v14, v15, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xb

    aput-object v14, v1, v2

    const/16 v14, 0xc

    aput-object v3, v1, v14

    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move/from16 v17, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    move-object/from16 v18, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v15, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xd

    aput-object v15, v1, v2

    const/16 v3, 0xe

    aput-object v18, v1, v3

    new-instance v15, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move/from16 v19, v2

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    move/from16 v20, v3

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v15, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const/16 v2, 0xf

    aput-object v15, v1, v2

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 53
    new-array v1, v5, [B

    aput-byte v5, v1, v16

    new-array v3, v7, [B

    fill-array-data v3, :array_15e

    new-array v15, v7, [B

    fill-array-data v15, :array_164

    move/from16 v29, v2

    new-array v2, v6, [B

    fill-array-data v2, :array_16a

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, v1

    move-object/from16 v28, v2

    move-object/from16 v24, v3

    move-object/from16 v26, v15

    filled-new-array/range {v21 .. v28}, [[B

    move-result-object v1

    sput-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    .line 61
    new-array v0, v0, [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    aput-object v18, v0, v16

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v5

    aput-object v18, v0, v4

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v7

    aput-object v18, v0, v6

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v9

    aput-object v18, v0, v8

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v11

    aput-object v18, v0, v10

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v13

    aput-object v18, v0, v12

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v17

    aput-object v18, v0, v14

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->THREE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v19

    aput-object v18, v0, v20

    new-instance v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v1, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    aput-object v1, v0, v29

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1:[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 77
    new-array v9, v5, [B

    aput-byte v5, v9, v16

    new-array v11, v7, [B

    fill-array-data v11, :array_170

    new-array v13, v7, [B

    fill-array-data v13, :array_176

    new-array v15, v6, [B

    fill-array-data v15, :array_17c

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    filled-new-array/range {v8 .. v15}, [[B

    move-result-object v0

    sput-object v0, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    return-void

    :array_15e
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_164
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_16a
    .array-data 1
        -0x1t
        0x0t
        0x0t
        0x1t
    .end array-data

    :array_170
    .array-data 1
        -0x1t
        0x0t
        0x1t
    .end array-data

    :array_176
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data

    :array_17c
    .array-data 1
        -0x1t
        0x0t
        0x0t
        -0x1t
    .end array-data
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 14
    .param p0, "k"    # Ljava/math/BigInteger;
    .param p1, "s"    # Ljava/math/BigInteger;
    .param p2, "vm"    # Ljava/math/BigInteger;
    .param p3, "a"    # B
    .param p4, "m"    # I
    .param p5, "c"    # I

    .line 291
    add-int/lit8 v0, p4, 0x5

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p5

    .line 292
    .local v0, "_k":I
    sub-int v1, p4, v0

    add-int/lit8 v1, v1, -0x2

    add-int/2addr v1, p3

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 294
    .local v1, "ns":Ljava/math/BigInteger;
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 296
    .local v2, "gs":Ljava/math/BigInteger;
    invoke-virtual {v2, p4}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 298
    .local v3, "hs":Ljava/math/BigInteger;
    invoke-virtual {p2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 300
    .local v4, "js":Ljava/math/BigInteger;
    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 301
    .local v5, "gsPlusJs":Ljava/math/BigInteger;
    sub-int v6, v0, p5

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 302
    .local v6, "ls":Ljava/math/BigInteger;
    sub-int v7, v0, p5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v7

    if-eqz v7, :cond_34

    .line 305
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 308
    :cond_34
    new-instance v7, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    invoke-direct {v7, v6, p5}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v7
.end method

.method public static blacklist getLucas(BIZ)[Ljava/math/BigInteger;
    .registers 9
    .param p0, "mu"    # B
    .param p1, "k"    # I
    .param p2, "doV"    # Z

    .line 454
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    .line 456
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 460
    :cond_f
    :goto_f
    if-eqz p2, :cond_19

    .line 462
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    .line 463
    .local v1, "u0":Ljava/math/BigInteger;
    int-to-long v2, p0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    .local v2, "u1":Ljava/math/BigInteger;
    goto :goto_1d

    .line 467
    .end local v1    # "u0":Ljava/math/BigInteger;
    .end local v2    # "u1":Ljava/math/BigInteger;
    :cond_19
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 468
    .restart local v1    # "u0":Ljava/math/BigInteger;
    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 471
    .restart local v2    # "u1":Ljava/math/BigInteger;
    :goto_1d
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_1e
    if-ge v3, p1, :cond_34

    .line 474
    move-object v4, v2

    .line 475
    .local v4, "s":Ljava/math/BigInteger;
    if-gez p0, :cond_27

    .line 477
    invoke-virtual {v4}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v4

    .line 480
    :cond_27
    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    .line 481
    .local v5, "u2":Ljava/math/BigInteger;
    move-object v1, v2

    .line 482
    move-object v2, v5

    .line 471
    .end local v4    # "s":Ljava/math/BigInteger;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 485
    .end local v3    # "i":I
    .end local v5    # "u2":Ljava/math/BigInteger;
    :cond_34
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/math/BigInteger;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object v2, v3, v0

    return-object v3
.end method

.method public static blacklist getMu(I)B
    .registers 2
    .param p0, "curveA"    # I

    .line 435
    if-nez p0, :cond_4

    const/4 v0, -0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x1

    :goto_5
    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)B
    .registers 3
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 415
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 420
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 422
    const/4 v0, -0x1

    return v0

    .line 425
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 417
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No Koblitz curve (ABC), TNAF multiplication not possible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B
    .registers 2
    .param p0, "curveA"    # Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    .line 430
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->isZero()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, -0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x1

    :goto_9
    int-to-byte v0, v0

    return v0
.end method

.method public static blacklist getPreComp(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;B)[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 9
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "a"    # B

    .line 813
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 814
    .local v0, "pNeg":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    if-nez p1, :cond_b

    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha0Tnaf:[[B

    goto :goto_d

    :cond_b
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->alpha1Tnaf:[[B

    .line 816
    .local v1, "alphaTnaf":[[B
    :goto_d
    array-length v2, v1

    add-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v2, v2, 0x1

    new-array v2, v2, [Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 817
    .local v2, "pu":[Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 819
    array-length v3, v1

    .line 820
    .local v3, "precompLen":I
    const/4 v4, 0x3

    .local v4, "i":I
    :goto_19
    if-ge v4, v3, :cond_28

    .line 822
    ushr-int/lit8 v5, v4, 0x1

    aget-object v6, v1, v4

    invoke-static {p0, v0, v6}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v6

    aput-object v6, v2, v5

    .line 820
    add-int/lit8 v4, v4, 0x2

    goto :goto_19

    .line 825
    .end local v4    # "i":I
    :cond_28
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)V

    .line 827
    return-object v2
.end method

.method protected static blacklist getShiftsForCofactor(Ljava/math/BigInteger;)I
    .registers 3
    .param p0, "h"    # Ljava/math/BigInteger;

    .line 558
    if-eqz p0, :cond_16

    .line 560
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 562
    const/4 v0, 0x1

    return v0

    .line 564
    :cond_c
    sget-object v0, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 566
    const/4 v0, 0x2

    return v0

    .line 570
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h (Cofactor) must be 2 or 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;
    .registers 12
    .param p0, "fieldSize"    # I
    .param p1, "curveA"    # I
    .param p2, "cofactor"    # Ljava/math/BigInteger;

    .line 540
    invoke-static {p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v0

    .line 541
    .local v0, "mu":B
    invoke-static {p2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getShiftsForCofactor(Ljava/math/BigInteger;)I

    move-result v1

    .line 542
    .local v1, "shifts":I
    add-int/lit8 v2, p0, 0x3

    sub-int/2addr v2, p1

    .line 543
    .local v2, "index":I
    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v4

    .line 544
    .local v4, "ui":[Ljava/math/BigInteger;
    const/4 v5, 0x1

    if-ne v0, v5, :cond_23

    .line 546
    aget-object v6, v4, v3

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v3

    .line 547
    aget-object v6, v4, v5

    invoke-virtual {v6}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v6

    aput-object v6, v4, v5

    .line 550
    :cond_23
    sget-object v6, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v7, v4, v5

    invoke-virtual {v6, v7}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v6

    .line 551
    .local v6, "dividend0":Ljava/math/BigInteger;
    sget-object v7, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    aget-object v8, v4, v3

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v7

    .line 553
    .local v7, "dividend1":Ljava/math/BigInteger;
    const/4 v8, 0x2

    new-array v8, v8, [Ljava/math/BigInteger;

    aput-object v6, v8, v3

    aput-object v7, v8, v5

    return-object v8
.end method

.method public static blacklist getSi(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;)[Ljava/math/BigInteger;
    .registers 4
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 530
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 535
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getSi(IILjava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 532
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "si is defined for Koblitz curves only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist getTw(BI)Ljava/math/BigInteger;
    .registers 7
    .param p0, "mu"    # B
    .param p1, "w"    # I

    .line 498
    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_14

    .line 500
    if-ne p0, v1, :cond_d

    .line 502
    const-wide/16 v0, 0x6

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 507
    :cond_d
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 513
    :cond_14
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v2

    .line 514
    .local v2, "us":[Ljava/math/BigInteger;
    sget-object v3, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 515
    .local v3, "twoToW":Ljava/math/BigInteger;
    aget-object v4, v2, v1

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 516
    .local v4, "u1invert":Ljava/math/BigInteger;
    aget-object v0, v2, v0

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 10
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "pNeg"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p2, "u"    # [B

    .line 681
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    .line 682
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 683
    .local v1, "q":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    const/4 v2, 0x0

    .line 684
    .local v2, "tauCount":I
    array-length v3, p2

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_e
    if-ltz v3, :cond_2a

    .line 686
    add-int/lit8 v2, v2, 0x1

    .line 687
    aget-byte v4, p2, v3

    .line 688
    .local v4, "ui":B
    if-eqz v4, :cond_27

    .line 690
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    .line 691
    const/4 v2, 0x0

    .line 693
    if-lez v4, :cond_1f

    move-object v5, p0

    goto :goto_20

    :cond_1f
    move-object v5, p1

    .line 694
    .local v5, "x":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :goto_20
    invoke-virtual {v1, v5}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 684
    .end local v4    # "ui":B
    .end local v5    # "x":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;
    :cond_27
    add-int/lit8 v3, v3, -0x1

    goto :goto_e

    .line 697
    .end local v3    # "i":I
    :cond_2a
    if-lez v2, :cond_30

    .line 699
    invoke-virtual {v1, v2}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v1

    .line 701
    :cond_30
    return-object v1
.end method

.method public static blacklist multiplyRTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 7
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "k"    # Ljava/math/BigInteger;

    .line 642
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 643
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 644
    .local v1, "a":I
    invoke-static {v1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    .line 646
    .local v2, "mu":B
    int-to-byte v3, v1

    const/16 v4, 0xa

    invoke-static {v0, p1, v3, v2, v4}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->partModReduction(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v3

    .line 648
    .local v3, "rho":Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    invoke-static {p0, v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist multiplyTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 7
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 662
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lcom/android/internal/org/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;

    .line 663
    .local v0, "curve":Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    check-cast v1, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 664
    .local v1, "pNeg":Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    invoke-virtual {v0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getMu(Lcom/android/internal/org/bouncycastle/math/ec/ECFieldElement;)B

    move-result v2

    .line 665
    .local v2, "mu":B
    invoke-static {v2, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v3

    .line 667
    .local v3, "u":[B
    invoke-static {p0, v1, v3}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->multiplyFromTnaf(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v4

    return-object v4
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .registers 8
    .param p0, "mu"    # B
    .param p1, "u"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "v"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    .line 134
    invoke-virtual {p1, p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    .line 137
    .local v0, "s1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p1, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v1

    .line 140
    .local v1, "s2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {p2, p2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->multiply(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->shiftLeft(I)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 142
    .local v2, "s3":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne p0, v3, :cond_1c

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .local v3, "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_27

    .line 146
    .end local v3    # "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_1c
    const/4 v3, -0x1

    if-ne p0, v3, :cond_28

    .line 148
    invoke-virtual {v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v3

    .line 155
    .restart local v3    # "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_27
    return-object v3

    .line 152
    .end local v3    # "norm":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_28
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "mu must be 1 or -1"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static blacklist norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;
    .registers 5
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 92
    iget-object v0, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    iget-object v1, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 100
    .local v0, "s1":Ljava/math/BigInteger;
    const/4 v1, 0x1

    if-ne p0, v1, :cond_22

    .line 103
    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 105
    :cond_22
    const/4 v2, -0x1

    if-ne p0, v2, :cond_3c

    .line 108
    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 112
    :cond_3c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "mu must be 1 or -1"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static blacklist partModReduction(Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .registers 19
    .param p0, "curve"    # Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "a"    # B
    .param p3, "mu"    # B
    .param p4, "c"    # B

    .line 588
    move/from16 v0, p3

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getFieldSize()I

    move-result v5

    .line 589
    .local v5, "m":I
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getSi()[Ljava/math/BigInteger;

    move-result-object v7

    .line 593
    .local v7, "s":[Ljava/math/BigInteger;
    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_18

    .line 595
    aget-object v1, v7, v8

    aget-object v2, v7, v9

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v10, v1

    .local v1, "d0":Ljava/math/BigInteger;
    goto :goto_21

    .line 599
    .end local v1    # "d0":Ljava/math/BigInteger;
    :cond_18
    aget-object v1, v7, v8

    aget-object v2, v7, v9

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v10, v1

    .line 603
    .local v10, "d0":Ljava/math/BigInteger;
    :goto_21
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v1

    if-eqz v1, :cond_45

    .line 608
    sget-object v1, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 609
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getOrder()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECCurve$AbstractF2m;->getCofactor()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 608
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v3, v1

    .local v1, "vm":Ljava/math/BigInteger;
    goto :goto_4c

    .line 613
    .end local v1    # "vm":Ljava/math/BigInteger;
    :cond_45
    invoke-static {v0, v5, v9}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->getLucas(BIZ)[Ljava/math/BigInteger;

    move-result-object v1

    .line 614
    .local v1, "v":[Ljava/math/BigInteger;
    aget-object v2, v1, v9

    move-object v3, v2

    .line 617
    .end local v1    # "v":[Ljava/math/BigInteger;
    .local v3, "vm":Ljava/math/BigInteger;
    :goto_4c
    aget-object v2, v7, v8

    move-object v1, p1

    move/from16 v4, p2

    move/from16 v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    .line 618
    .local v11, "lambda0":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    aget-object v2, v7, v9

    invoke-static/range {v1 .. v6}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->approximateDivisionByN(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;BII)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 620
    .local v2, "lambda1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-static {v11, v2, v0}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    move-result-object v4

    .line 623
    .local v4, "q":Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    iget-object v6, v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    aget-object v12, v7, v9

    iget-object v13, v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 624
    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    .line 623
    invoke-virtual {v6, v12}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 627
    .local v6, "r0":Ljava/math/BigInteger;
    aget-object v9, v7, v9

    iget-object v12, v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    aget-object v8, v7, v8

    iget-object v12, v4, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 629
    .local v8, "r1":Ljava/math/BigInteger;
    new-instance v9, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v9, v6, v8}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v9
.end method

.method public static blacklist round(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;B)Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .registers 20
    .param p0, "lambda0"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p1, "lambda1"    # Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .param p2, "mu"    # B

    .line 174
    move/from16 v0, p2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v1

    .line 175
    .local v1, "scale":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->getScale()I

    move-result v2

    if-ne v2, v1, :cond_b8

    .line 181
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1b

    const/4 v3, -0x1

    if-ne v0, v3, :cond_13

    goto :goto_1b

    .line 183
    :cond_13
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mu must be 1 or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 186
    :cond_1b
    :goto_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v3

    .line 187
    .local v3, "f0":Ljava/math/BigInteger;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->round()Ljava/math/BigInteger;

    move-result-object v4

    .line 189
    .local v4, "f1":Ljava/math/BigInteger;
    move-object/from16 v5, p0

    invoke-virtual {v5, v3}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v6

    .line 190
    .local v6, "eta0":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    move-object/from16 v7, p1

    invoke-virtual {v7, v4}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Ljava/math/BigInteger;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v8

    .line 193
    .local v8, "eta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v6}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 194
    .local v9, "eta":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne v0, v2, :cond_3a

    .line 196
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    goto :goto_3e

    .line 201
    :cond_3a
    invoke-virtual {v9, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v9

    .line 206
    :goto_3e
    invoke-virtual {v8, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v10

    .line 207
    .local v10, "threeEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v10, v8}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v11

    .line 210
    .local v11, "fourEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    if-ne v0, v2, :cond_55

    .line 212
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 213
    .local v2, "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .local v12, "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    goto :goto_5d

    .line 218
    .end local v2    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v12    # "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :cond_55
    invoke-virtual {v6, v10}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->add(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v2

    .line 219
    .restart local v2    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    invoke-virtual {v6, v11}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->subtract(Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;)Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;

    move-result-object v12

    .line 222
    .restart local v12    # "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    :goto_5d
    const/4 v13, 0x0

    .line 223
    .local v13, "h0":B
    const/4 v14, 0x0

    .line 226
    .local v14, "h1":B
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_74

    .line 228
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_72

    .line 230
    move/from16 v14, p2

    goto :goto_7e

    .line 234
    :cond_72
    const/4 v13, 0x1

    goto :goto_7e

    .line 240
    :cond_74
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_7e

    .line 242
    move/from16 v14, p2

    .line 247
    :cond_7e
    :goto_7e
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_ONE:Ljava/math/BigInteger;

    invoke-virtual {v9, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_93

    .line 249
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-ltz v15, :cond_91

    .line 251
    neg-int v15, v0

    int-to-byte v14, v15

    goto :goto_9d

    .line 255
    :cond_91
    const/4 v13, -0x1

    goto :goto_9d

    .line 261
    :cond_93
    sget-object v15, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->MINUS_TWO:Ljava/math/BigInteger;

    invoke-virtual {v12, v15}, Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;->compareTo(Ljava/math/BigInteger;)I

    move-result v15

    if-gez v15, :cond_9d

    .line 263
    neg-int v15, v0

    int-to-byte v14, v15

    .line 267
    :cond_9d
    :goto_9d
    move v15, v1

    .end local v1    # "scale":I
    .local v15, "scale":I
    int-to-long v0, v13

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    .line 268
    .local v0, "q0":Ljava/math/BigInteger;
    move-object/from16 v16, v2

    .end local v2    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local v16, "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    int-to-long v1, v14

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 269
    .local v1, "q1":Ljava/math/BigInteger;
    new-instance v2, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    invoke-direct {v2, v0, v1}, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    return-object v2

    .line 177
    .end local v0    # "q0":Ljava/math/BigInteger;
    .end local v3    # "f0":Ljava/math/BigInteger;
    .end local v4    # "f1":Ljava/math/BigInteger;
    .end local v6    # "eta0":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v8    # "eta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v9    # "eta":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v10    # "threeEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v11    # "fourEta1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v12    # "check2":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .end local v13    # "h0":B
    .end local v14    # "h1":B
    .end local v15    # "scale":I
    .end local v16    # "check1":Lcom/android/internal/org/bouncycastle/math/ec/SimpleBigDecimal;
    .local v1, "scale":I
    :cond_b8
    move v15, v1

    .end local v1    # "scale":I
    .restart local v15    # "scale":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "lambda0 and lambda1 do not have same scale"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist tau(Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;)Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .registers 2
    .param p0, "p"    # Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    .line 400
    invoke-virtual {p0}, Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;->tau()Lcom/android/internal/org/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist tauAdicNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 15
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 321
    const/4 v0, 0x1

    if-eq p0, v0, :cond_f

    const/4 v1, -0x1

    if-ne p0, v1, :cond_7

    goto :goto_f

    .line 323
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "mu must be 1 or -1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_f
    :goto_f
    invoke-static {p0, p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v1

    .line 329
    .local v1, "norm":Ljava/math/BigInteger;
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    .line 332
    .local v2, "log2Norm":I
    const/16 v3, 0x1e

    if-le v2, v3, :cond_1e

    add-int/lit8 v3, v2, 0x4

    goto :goto_20

    :cond_1e
    const/16 v3, 0x22

    .line 335
    .local v3, "maxLength":I
    :goto_20
    new-array v4, v3, [B

    .line 336
    .local v4, "u":[B
    const/4 v5, 0x0

    .line 339
    .local v5, "i":I
    const/4 v6, 0x0

    .line 341
    .local v6, "length":I
    iget-object v7, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 342
    .local v7, "r0":Ljava/math/BigInteger;
    iget-object v8, p1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 344
    .local v8, "r1":Ljava/math/BigInteger;
    :goto_28
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_41

    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3a

    goto :goto_41

    .line 384
    :cond_3a
    add-int/2addr v6, v0

    .line 387
    new-array v0, v6, [B

    .line 388
    .local v0, "tnaf":[B
    invoke-static {v4, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 389
    return-object v0

    .line 347
    .end local v0    # "tnaf":[B
    :cond_41
    :goto_41
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v9

    if-eqz v9, :cond_73

    .line 349
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v8, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    sget-object v12, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->FOUR:Ljava/math/BigInteger;

    invoke-virtual {v11, v12}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9}, Ljava/math/BigInteger;->intValue()I

    move-result v9

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    .line 352
    aget-byte v9, v4, v5

    if-ne v9, v0, :cond_6b

    .line 354
    invoke-virtual {v7, v10}, Ljava/math/BigInteger;->clearBit(I)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_71

    .line 359
    :cond_6b
    sget-object v9, Lcom/android/internal/org/bouncycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v7, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 361
    :goto_71
    move v6, v5

    goto :goto_75

    .line 365
    :cond_73
    aput-byte v10, v4, v5

    .line 368
    :goto_75
    move-object v9, v7

    .line 369
    .local v9, "t":Ljava/math/BigInteger;
    invoke-virtual {v7, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 370
    .local v10, "s":Ljava/math/BigInteger;
    if-ne p0, v0, :cond_81

    .line 372
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    goto :goto_85

    .line 377
    :cond_81
    invoke-virtual {v8, v10}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    .line 380
    :goto_85
    invoke-virtual {v9, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v8

    .line 381
    nop

    .end local v9    # "t":Ljava/math/BigInteger;
    .end local v10    # "s":Ljava/math/BigInteger;
    add-int/lit8 v5, v5, 0x1

    .line 382
    goto :goto_28
.end method

.method public static blacklist tauAdicWNaf(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;II[Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)[B
    .registers 29
    .param p0, "mu"    # B
    .param p1, "lambda"    # Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;
    .param p2, "width"    # I
    .param p3, "tw"    # I
    .param p4, "alpha"    # [Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;

    .line 720
    move/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_13

    const/4 v3, -0x1

    if-ne v0, v3, :cond_b

    goto :goto_13

    .line 722
    :cond_b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "mu must be 1 or -1"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 725
    :cond_13
    :goto_13
    invoke-static/range {p0 .. p1}, Lcom/android/internal/org/bouncycastle/math/ec/Tnaf;->norm(BLcom/android/internal/org/bouncycastle/math/ec/ZTauElement;)Ljava/math/BigInteger;

    move-result-object v3

    .line 728
    .local v3, "norm":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    .line 731
    .local v4, "log2Norm":I
    const/16 v5, 0x1e

    if-le v4, v5, :cond_24

    add-int/lit8 v5, v4, 0x4

    add-int v5, v5, p2

    goto :goto_26

    :cond_24
    add-int/lit8 v5, p2, 0x22

    .line 734
    .local v5, "maxLength":I
    :goto_26
    new-array v6, v5, [B

    .line 736
    .local v6, "u":[B
    shl-int v7, v2, p2

    .line 737
    .local v7, "pow2Width":I
    add-int/lit8 v8, v7, -0x1

    .line 738
    .local v8, "pow2Mask":I
    rsub-int/lit8 v9, p2, 0x20

    .line 741
    .local v9, "s":I
    iget-object v10, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    .line 742
    .local v10, "R0":Ljava/math/BigInteger;
    iget-object v11, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    .line 743
    .local v11, "R1":Ljava/math/BigInteger;
    const/4 v12, 0x0

    .line 746
    .local v12, "uPos":I
    :goto_33
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    const/16 v14, 0x3e

    if-gt v13, v14, :cond_a6

    invoke-virtual {v11}, Ljava/math/BigInteger;->bitLength()I

    move-result v13

    if-le v13, v14, :cond_44

    move-object/from16 v16, v3

    goto :goto_a8

    .line 772
    :cond_44
    invoke-static {v10}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v13

    .line 773
    .local v13, "r0_64":J
    invoke-static {v11}, Lcom/android/internal/org/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v15

    move-wide/from16 v22, v15

    move v15, v2

    move-object/from16 v16, v3

    move-wide/from16 v2, v22

    .line 776
    .end local v3    # "norm":Ljava/math/BigInteger;
    .local v2, "r1_64":J
    .local v16, "norm":Ljava/math/BigInteger;
    :goto_53
    or-long v17, v13, v2

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-eqz v17, :cond_a5

    .line 778
    const-wide/16 v17, 0x1

    and-long v17, v13, v17

    cmp-long v17, v17, v19

    if-eqz v17, :cond_8d

    .line 780
    move/from16 v17, v15

    long-to-int v15, v13

    long-to-int v1, v2

    mul-int v1, v1, p3

    add-int/2addr v15, v1

    .line 781
    .local v15, "uVal":I
    and-int v1, v15, v8

    .line 783
    .local v1, "alphaPos":I
    shl-int v18, v15, v9

    move/from16 v19, v1

    .end local v1    # "alphaPos":I
    .local v19, "alphaPos":I
    shr-int v1, v18, v9

    int-to-byte v1, v1

    aput-byte v1, v6, v12

    .line 784
    aget-object v1, p4, v19

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    move-wide/from16 v20, v2

    .end local v2    # "r1_64":J
    .local v20, "r1_64":J
    int-to-long v1, v1

    sub-long/2addr v13, v1

    .line 785
    aget-object v1, p4, v19

    iget-object v1, v1, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    int-to-long v1, v1

    sub-long v2, v20, v1

    .end local v20    # "r1_64":J
    .restart local v2    # "r1_64":J
    goto :goto_91

    .line 778
    .end local v15    # "uVal":I
    .end local v19    # "alphaPos":I
    :cond_8d
    move-wide/from16 v20, v2

    move/from16 v17, v15

    .line 788
    :goto_91
    add-int/lit8 v12, v12, 0x1

    .line 790
    move-wide/from16 v18, v2

    .end local v2    # "r1_64":J
    .local v18, "r1_64":J
    shr-long v1, v13, v17

    .line 791
    .local v1, "t_64":J
    move/from16 v15, v17

    if-ne v0, v15, :cond_9e

    .line 793
    add-long v13, v18, v1

    goto :goto_a0

    .line 797
    :cond_9e
    sub-long v13, v18, v1

    .line 799
    :goto_a0
    neg-long v2, v1

    .line 800
    .end local v1    # "t_64":J
    .end local v18    # "r1_64":J
    .restart local v2    # "r1_64":J
    move-object/from16 v1, p1

    const/4 v15, 0x1

    goto :goto_53

    .line 802
    :cond_a5
    return-object v6

    .line 746
    .end local v2    # "r1_64":J
    .end local v13    # "r0_64":J
    .end local v16    # "norm":Ljava/math/BigInteger;
    .restart local v3    # "norm":Ljava/math/BigInteger;
    :cond_a6
    move-object/from16 v16, v3

    .line 748
    .end local v3    # "norm":Ljava/math/BigInteger;
    .restart local v16    # "norm":Ljava/math/BigInteger;
    :goto_a8
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_d2

    .line 750
    invoke-virtual {v10}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-virtual {v11}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    mul-int v2, v2, p3

    add-int/2addr v1, v2

    .line 751
    .local v1, "uVal":I
    and-int v2, v1, v8

    .line 753
    .local v2, "alphaPos":I
    shl-int v3, v1, v9

    shr-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v6, v12

    .line 754
    aget-object v3, p4, v2

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->u:Ljava/math/BigInteger;

    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 755
    aget-object v3, p4, v2

    iget-object v3, v3, Lcom/android/internal/org/bouncycastle/math/ec/ZTauElement;->v:Ljava/math/BigInteger;

    invoke-virtual {v11, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    .line 758
    .end local v1    # "uVal":I
    .end local v2    # "alphaPos":I
    :cond_d2
    add-int/lit8 v12, v12, 0x1

    .line 760
    const/4 v15, 0x1

    invoke-virtual {v10, v15}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    .line 761
    .local v1, "t":Ljava/math/BigInteger;
    if-ne v0, v15, :cond_e1

    .line 763
    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v10, v2

    .end local v10    # "R0":Ljava/math/BigInteger;
    .local v2, "R0":Ljava/math/BigInteger;
    goto :goto_e6

    .line 767
    .end local v2    # "R0":Ljava/math/BigInteger;
    .restart local v10    # "R0":Ljava/math/BigInteger;
    :cond_e1
    invoke-virtual {v11, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move-object v10, v2

    .line 769
    :goto_e6
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v11

    .line 770
    .end local v1    # "t":Ljava/math/BigInteger;
    move-object/from16 v1, p1

    move v2, v15

    move-object/from16 v3, v16

    goto/16 :goto_33
.end method
