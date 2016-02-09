.class public Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;
.super Lcom/android/org/bouncycastle/math/ec/AbstractECMultiplier;
.source "WNafL2RMultiplier.java"


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


# virtual methods
.method protected getWindowSize(I)I
    .locals 1
    .param p1, "bits"    # I

    #@0
    .prologue
    .line 94
    invoke-static {p1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected multiplyPositive(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 23
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 21
    invoke-virtual/range {p2 .. p2}, Ljava/math/BigInteger;->bitLength()I

    #@3
    move-result v21

    #@4
    move-object/from16 v0, p0

    #@6
    move/from16 v1, v21

    #@8
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafL2RMultiplier;->getWindowSize(I)I

    #@b
    move-result v21

    #@c
    const/16 v22, 0x10

    #@e
    move/from16 v0, v22

    #@10
    move/from16 v1, v21

    #@12
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@15
    move-result v21

    #@16
    const/16 v22, 0x2

    #@18
    move/from16 v0, v22

    #@1a
    move/from16 v1, v21

    #@1c
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1f
    move-result v17

    #@20
    .line 23
    .local v17, "width":I
    const/16 v21, 0x1

    #@22
    move-object/from16 v0, p1

    #@24
    move/from16 v1, v17

    #@26
    move/from16 v2, v21

    #@28
    invoke-static {v0, v1, v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@2b
    move-result-object v19

    #@2c
    .line 24
    .local v19, "wnafPreCompInfo":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2f
    move-result-object v11

    #@30
    .line 25
    .local v11, "preComp":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual/range {v19 .. v19}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@33
    move-result-object v12

    #@34
    .line 27
    .local v12, "preCompNeg":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move/from16 v0, v17

    #@36
    move-object/from16 v1, p2

    #@38
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateCompactWindowNaf(ILjava/math/BigInteger;)[I

    #@3b
    move-result-object v18

    #@3c
    .line 29
    .local v18, "wnaf":[I
    invoke-virtual/range {p1 .. p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3f
    move-result-object v21

    #@40
    invoke-virtual/range {v21 .. v21}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@43
    move-result-object v3

    #@44
    .line 31
    .local v3, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, v18

    #@46
    array-length v6, v0

    #@47
    .line 37
    .local v6, "i":I
    const/16 v21, 0x1

    #@49
    move/from16 v0, v21

    #@4b
    if-le v6, v0, :cond_0

    #@4d
    .line 39
    add-int/lit8 v6, v6, -0x1

    #@4f
    aget v16, v18, v6

    #@51
    .line 40
    .local v16, "wi":I
    shr-int/lit8 v4, v16, 0x10

    #@53
    .local v4, "digit":I
    const v21, 0xffff

    #@56
    and-int v20, v16, v21

    #@58
    .line 42
    .local v20, "zeroes":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@5b
    move-result v10

    #@5c
    .line 43
    .local v10, "n":I
    if-gez v4, :cond_1

    #@5e
    move-object v15, v12

    #@5f
    .line 46
    .local v15, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_0
    shl-int/lit8 v21, v10, 0x2

    #@61
    const/16 v22, 0x1

    #@63
    shl-int v22, v22, v17

    #@65
    move/from16 v0, v21

    #@67
    move/from16 v1, v22

    #@69
    if-ge v0, v1, :cond_2

    #@6b
    .line 48
    sget-object v21, Lcom/android/org/bouncycastle/math/ec/LongArray;->bitLengths:[B

    #@6d
    aget-byte v5, v21, v10

    #@6f
    .line 51
    .local v5, "highest":I
    sub-int v14, v17, v5

    #@71
    .line 52
    .local v14, "scale":I
    add-int/lit8 v21, v5, -0x1

    #@73
    const/16 v22, 0x1

    #@75
    shl-int v21, v22, v21

    #@77
    xor-int v9, v10, v21

    #@79
    .line 54
    .local v9, "lowBits":I
    add-int/lit8 v21, v17, -0x1

    #@7b
    const/16 v22, 0x1

    #@7d
    shl-int v21, v22, v21

    #@7f
    add-int/lit8 v7, v21, -0x1

    #@81
    .line 55
    .local v7, "i1":I
    shl-int v21, v9, v14

    #@83
    add-int/lit8 v8, v21, 0x1

    #@85
    .line 56
    .local v8, "i2":I
    ushr-int/lit8 v21, v7, 0x1

    #@87
    aget-object v21, v15, v21

    #@89
    ushr-int/lit8 v22, v8, 0x1

    #@8b
    aget-object v22, v15, v22

    #@8d
    invoke-virtual/range {v21 .. v22}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@90
    move-result-object v3

    #@91
    .line 58
    sub-int v20, v20, v14

    #@93
    .line 67
    .end local v5    # "highest":I
    .end local v7    # "i1":I
    .end local v8    # "i2":I
    .end local v9    # "lowBits":I
    .end local v14    # "scale":I
    :goto_1
    move/from16 v0, v20

    #@95
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@98
    move-result-object v3

    #@99
    .line 70
    .end local v4    # "digit":I
    .end local v10    # "n":I
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v16    # "wi":I
    .end local v20    # "zeroes":I
    :cond_0
    :goto_2
    if-lez v6, :cond_4

    #@9b
    .line 72
    add-int/lit8 v6, v6, -0x1

    #@9d
    aget v16, v18, v6

    #@9f
    .line 73
    .restart local v16    # "wi":I
    shr-int/lit8 v4, v16, 0x10

    #@a1
    .restart local v4    # "digit":I
    const v21, 0xffff

    #@a4
    and-int v20, v16, v21

    #@a6
    .line 75
    .restart local v20    # "zeroes":I
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    #@a9
    move-result v10

    #@aa
    .line 76
    .restart local v10    # "n":I
    if-gez v4, :cond_3

    #@ac
    move-object v15, v12

    #@ad
    .line 77
    .restart local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    ushr-int/lit8 v21, v10, 0x1

    #@af
    aget-object v13, v15, v21

    #@b1
    .line 79
    .local v13, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b4
    move-result-object v3

    #@b5
    .line 80
    move/from16 v0, v20

    #@b7
    invoke-virtual {v3, v0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@ba
    move-result-object v3

    #@bb
    goto :goto_2

    #@bc
    .line 43
    .end local v13    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    move-object v15, v11

    #@bd
    .restart local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_0

    #@be
    .line 64
    :cond_2
    ushr-int/lit8 v21, v10, 0x1

    #@c0
    aget-object v3, v15, v21

    #@c2
    goto :goto_1

    #@c3
    .line 76
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_3
    move-object v15, v11

    #@c4
    .restart local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_3

    #@c5
    .line 83
    .end local v4    # "digit":I
    .end local v10    # "n":I
    .end local v15    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v16    # "wi":I
    .end local v20    # "zeroes":I
    :cond_4
    return-object v3
.end method
