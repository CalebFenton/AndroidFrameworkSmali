.class public Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;
.source "ECAlgorithms.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 17
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v5

    #@4
    .line 215
    .local v5, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7
    move-result-object v8

    #@8
    .line 218
    .local v8, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    #@a
    move-object/from16 v1, p2

    #@c
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f
    move-result-object v2

    #@10
    .line 219
    .local v2, "PaddQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p0

    #@12
    move-object/from16 v1, p2

    #@14
    invoke-virtual {v0, v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->subtract(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v3

    #@18
    .line 221
    .local v3, "PsubQ":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v15, 0x4

    #@19
    new-array v13, v15, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1b
    const/4 v15, 0x0

    #@1c
    aput-object p2, v13, v15

    #@1e
    const/4 v15, 0x1

    #@1f
    aput-object v3, v13, v15

    #@21
    const/4 v15, 0x2

    #@22
    aput-object p0, v13, v15

    #@24
    const/4 v15, 0x3

    #@25
    aput-object v2, v13, v15

    #@27
    .line 222
    .local v13, "points":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5, v13}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->normalizeAll([Lcom/android/org/bouncycastle/math/ec/ECPoint;)V

    #@2a
    .line 224
    const/16 v15, 0x9

    #@2c
    new-array v14, v15, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2e
    .line 225
    const/4 v15, 0x3

    #@2f
    aget-object v15, v13, v15

    #@31
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@34
    move-result-object v15

    #@35
    const/16 v16, 0x0

    #@37
    aput-object v15, v14, v16

    #@39
    const/4 v15, 0x2

    #@3a
    aget-object v15, v13, v15

    #@3c
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3f
    move-result-object v15

    #@40
    const/16 v16, 0x1

    #@42
    aput-object v15, v14, v16

    #@44
    const/4 v15, 0x1

    #@45
    aget-object v15, v13, v15

    #@47
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4a
    move-result-object v15

    #@4b
    const/16 v16, 0x2

    #@4d
    aput-object v15, v14, v16

    #@4f
    .line 226
    const/4 v15, 0x0

    #@50
    aget-object v15, v13, v15

    #@52
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@55
    move-result-object v15

    #@56
    const/16 v16, 0x3

    #@58
    aput-object v15, v14, v16

    #@5a
    const/4 v15, 0x4

    #@5b
    aput-object v8, v14, v15

    #@5d
    const/4 v15, 0x0

    #@5e
    aget-object v15, v13, v15

    #@60
    const/16 v16, 0x5

    #@62
    aput-object v15, v14, v16

    #@64
    .line 227
    const/4 v15, 0x1

    #@65
    aget-object v15, v13, v15

    #@67
    const/16 v16, 0x6

    #@69
    aput-object v15, v14, v16

    #@6b
    const/4 v15, 0x2

    #@6c
    aget-object v15, v13, v15

    #@6e
    const/16 v16, 0x7

    #@70
    aput-object v15, v14, v16

    #@72
    const/4 v15, 0x3

    #@73
    aget-object v15, v13, v15

    #@75
    const/16 v16, 0x8

    #@77
    aput-object v15, v14, v16

    #@79
    .line 229
    .local v14, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object/from16 v0, p1

    #@7b
    move-object/from16 v1, p3

    #@7d
    invoke-static {v0, v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    #@80
    move-result-object v9

    #@81
    .line 231
    .local v9, "jsf":[B
    move-object v4, v8

    #@82
    .line 233
    .local v4, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    array-length v6, v9

    #@83
    .line 234
    .local v6, "i":I
    :goto_0
    add-int/lit8 v6, v6, -0x1

    #@85
    if-ltz v6, :cond_0

    #@87
    .line 236
    aget-byte v10, v9, v6

    #@89
    .line 239
    .local v10, "jsfi":I
    shl-int/lit8 v15, v10, 0x18

    #@8b
    shr-int/lit8 v11, v15, 0x1c

    #@8d
    .local v11, "kDigit":I
    shl-int/lit8 v15, v10, 0x1c

    #@8f
    shr-int/lit8 v12, v15, 0x1c

    #@91
    .line 241
    .local v12, "lDigit":I
    mul-int/lit8 v15, v11, 0x3

    #@93
    add-int/lit8 v15, v15, 0x4

    #@95
    add-int v7, v15, v12

    #@97
    .line 242
    .local v7, "index":I
    aget-object v15, v14, v7

    #@99
    invoke-virtual {v4, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@9c
    move-result-object v4

    #@9d
    goto :goto_0

    #@9e
    .line 245
    .end local v7    # "index":I
    .end local v10    # "jsfi":I
    .end local v11    # "kDigit":I
    .end local v12    # "lDigit":I
    :cond_0
    return-object v4
.end method

.method static implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 15
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 251
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v13

    #@4
    if-gez v13, :cond_0

    #@6
    const/4 v9, 0x1

    #@7
    .local v9, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    #@a
    move-result v13

    #@b
    if-gez v13, :cond_1

    #@d
    const/4 v10, 0x1

    #@e
    .line 253
    .local v10, "negL":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@11
    move-result-object p1

    #@12
    .line 254
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@15
    move-result-object p3

    #@16
    .line 256
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    #@19
    move-result v13

    #@1a
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    #@1d
    move-result v13

    #@1e
    const/16 v14, 0x10

    #@20
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    #@23
    move-result v13

    #@24
    const/4 v14, 0x2

    #@25
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@28
    move-result v11

    #@29
    .line 257
    .local v11, "widthP":I
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    #@2c
    move-result v13

    #@2d
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    #@30
    move-result v13

    #@31
    const/16 v14, 0x10

    #@33
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    #@36
    move-result v13

    #@37
    const/4 v14, 0x2

    #@38
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v12

    #@3c
    .line 259
    .local v12, "widthQ":I
    const/4 v13, 0x1

    #@3d
    invoke-static {p0, v11, v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@40
    move-result-object v7

    #@41
    .line 260
    .local v7, "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    const/4 v13, 0x1

    #@42
    move-object/from16 v0, p2

    #@44
    invoke-static {v0, v12, v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@47
    move-result-object v8

    #@48
    .line 262
    .local v8, "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-eqz v9, :cond_2

    #@4a
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4d
    move-result-object v1

    #@4e
    .line 263
    .local v1, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_2
    if-eqz v10, :cond_3

    #@50
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@53
    move-result-object v4

    #@54
    .line 264
    .local v4, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    if-eqz v9, :cond_4

    #@56
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@59
    move-result-object v2

    #@5a
    .line 265
    .local v2, "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4
    if-eqz v10, :cond_5

    #@5c
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5f
    move-result-object v5

    #@60
    .line 267
    .local v5, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_5
    move-object/from16 v0, p1

    #@62
    invoke-static {v11, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@65
    move-result-object v3

    #@66
    .line 268
    .local v3, "wnafP":[B
    move-object/from16 v0, p3

    #@68
    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@6b
    move-result-object v6

    #@6c
    .line 270
    .local v6, "wnafQ":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6f
    move-result-object v13

    #@70
    return-object v13

    #@71
    .line 251
    .end local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v3    # "wnafP":[B
    .end local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v6    # "wnafQ":[B
    .end local v7    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v8    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "negK":Z
    .end local v10    # "negL":Z
    .end local v11    # "widthP":I
    .end local v12    # "widthQ":I
    :cond_0
    const/4 v9, 0x0

    #@72
    .restart local v9    # "negK":Z
    goto :goto_0

    #@73
    :cond_1
    const/4 v10, 0x0

    #@74
    .restart local v10    # "negL":Z
    goto :goto_1

    #@75
    .line 262
    .restart local v7    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v8    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v11    # "widthP":I
    .restart local v12    # "widthQ":I
    :cond_2
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@78
    move-result-object v1

    #@79
    .restart local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2

    #@7a
    .line 263
    :cond_3
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7d
    move-result-object v4

    #@7e
    .restart local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_3

    #@7f
    .line 264
    :cond_4
    invoke-virtual {v7}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@82
    move-result-object v2

    #@83
    .restart local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_4

    #@84
    .line 265
    :cond_5
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@87
    move-result-object v5

    #@88
    .restart local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_5
.end method

.method static implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPointMap;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 15
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "pointMapQ"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .param p3, "l"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 275
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->signum()I

    #@3
    move-result v13

    #@4
    if-gez v13, :cond_0

    #@6
    const/4 v10, 0x1

    #@7
    .local v10, "negK":Z
    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->signum()I

    #@a
    move-result v13

    #@b
    if-gez v13, :cond_1

    #@d
    const/4 v11, 0x1

    #@e
    .line 277
    .local v11, "negL":Z
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@11
    move-result-object p1

    #@12
    .line 278
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@15
    move-result-object p3

    #@16
    .line 280
    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    #@19
    move-result v13

    #@1a
    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    #@1d
    move-result v14

    #@1e
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v13

    #@22
    invoke-static {v13}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    #@25
    move-result v13

    #@26
    const/16 v14, 0x10

    #@28
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    #@2b
    move-result v13

    #@2c
    const/4 v14, 0x2

    #@2d
    invoke-static {v14, v13}, Ljava/lang/Math;->max(II)I

    #@30
    move-result v12

    #@31
    .line 282
    .local v12, "width":I
    const/4 v13, 0x1

    #@32
    move-object/from16 v0, p2

    #@34
    invoke-static {p0, v12, v13, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@37
    move-result-object v7

    #@38
    .line 283
    .local v7, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {p0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@3b
    move-result-object v8

    #@3c
    .line 284
    .local v8, "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@3f
    move-result-object v9

    #@40
    .line 286
    .local v9, "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-eqz v10, :cond_2

    #@42
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@45
    move-result-object v1

    #@46
    .line 287
    .local v1, "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_2
    if-eqz v11, :cond_3

    #@48
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4b
    move-result-object v4

    #@4c
    .line 288
    .local v4, "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_3
    if-eqz v10, :cond_4

    #@4e
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@51
    move-result-object v2

    #@52
    .line 289
    .local v2, "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4
    if-eqz v11, :cond_5

    #@54
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@57
    move-result-object v5

    #@58
    .line 291
    .local v5, "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_5
    move-object/from16 v0, p1

    #@5a
    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@5d
    move-result-object v3

    #@5e
    .line 292
    .local v3, "wnafP":[B
    move-object/from16 v0, p3

    #@60
    invoke-static {v12, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@63
    move-result-object v6

    #@64
    .line 294
    .local v6, "wnafQ":[B
    invoke-static/range {v1 .. v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@67
    move-result-object v13

    #@68
    return-object v13

    #@69
    .line 275
    .end local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v3    # "wnafP":[B
    .end local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v6    # "wnafQ":[B
    .end local v7    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v8    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v10    # "negK":Z
    .end local v11    # "negL":Z
    .end local v12    # "width":I
    :cond_0
    const/4 v10, 0x0

    #@6a
    .restart local v10    # "negK":Z
    goto :goto_0

    #@6b
    :cond_1
    const/4 v11, 0x0

    #@6c
    .restart local v11    # "negL":Z
    goto :goto_1

    #@6d
    .line 286
    .restart local v7    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v8    # "infoP":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v9    # "infoQ":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v12    # "width":I
    :cond_2
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@70
    move-result-object v1

    #@71
    .restart local v1    # "preCompP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_2

    #@72
    .line 287
    :cond_3
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@75
    move-result-object v4

    #@76
    .restart local v4    # "preCompQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_3

    #@77
    .line 288
    :cond_4
    invoke-virtual {v8}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7a
    move-result-object v2

    #@7b
    .restart local v2    # "preCompNegP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_4

    #@7c
    .line 289
    :cond_5
    invoke-virtual {v9}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7f
    move-result-object v5

    #@80
    .restart local v5    # "preCompNegQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_5
.end method

.method private static implShamirsTrickWNaf([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B[Lcom/android/org/bouncycastle/math/ec/ECPoint;[Lcom/android/org/bouncycastle/math/ec/ECPoint;[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "preCompP"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "preCompNegP"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p2, "wnafP"    # [B
    .param p3, "preCompQ"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p4, "preCompNegQ"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p5, "wnafQ"    # [B

    #@0
    .prologue
    .line 300
    move-object/from16 v0, p2

    #@2
    array-length v14, v0

    #@3
    move-object/from16 v0, p5

    #@5
    array-length v15, v0

    #@6
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    #@9
    move-result v5

    #@a
    .line 302
    .local v5, "len":I
    const/4 v14, 0x0

    #@b
    aget-object v14, p0, v14

    #@d
    invoke-virtual {v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@10
    move-result-object v2

    #@11
    .line 303
    .local v2, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@14
    move-result-object v4

    #@15
    .line 305
    .local v4, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v1, v4

    #@16
    .line 306
    .local v1, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v13, 0x0

    #@17
    .line 308
    .local v13, "zeroes":I
    add-int/lit8 v3, v5, -0x1

    #@19
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_8

    #@1b
    .line 310
    move-object/from16 v0, p2

    #@1d
    array-length v14, v0

    #@1e
    if-ge v3, v14, :cond_0

    #@20
    aget-byte v11, p2, v3

    #@22
    .line 311
    .local v11, "wiP":I
    :goto_1
    move-object/from16 v0, p5

    #@24
    array-length v14, v0

    #@25
    if-ge v3, v14, :cond_1

    #@27
    aget-byte v12, p5, v3

    #@29
    .line 313
    .local v12, "wiQ":I
    :goto_2
    or-int v14, v11, v12

    #@2b
    if-nez v14, :cond_2

    #@2d
    .line 315
    add-int/lit8 v13, v13, 0x1

    #@2f
    .line 308
    :goto_3
    add-int/lit8 v3, v3, -0x1

    #@31
    goto :goto_0

    #@32
    .line 310
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_0
    const/4 v11, 0x0

    #@33
    goto :goto_1

    #@34
    .line 311
    .restart local v11    # "wiP":I
    :cond_1
    const/4 v12, 0x0

    #@35
    goto :goto_2

    #@36
    .line 319
    .restart local v12    # "wiQ":I
    :cond_2
    move-object v8, v4

    #@37
    .line 320
    .local v8, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    if-eqz v11, :cond_3

    #@39
    .line 322
    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    #@3c
    move-result v6

    #@3d
    .line 323
    .local v6, "nP":I
    if-gez v11, :cond_6

    #@3f
    move-object/from16 v9, p1

    #@41
    .line 324
    .local v9, "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_4
    ushr-int/lit8 v14, v6, 0x1

    #@43
    aget-object v14, v9, v14

    #@45
    invoke-virtual {v8, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@48
    move-result-object v8

    #@49
    .line 326
    .end local v6    # "nP":I
    .end local v9    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_3
    if-eqz v12, :cond_4

    #@4b
    .line 328
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@4e
    move-result v7

    #@4f
    .line 329
    .local v7, "nQ":I
    if-gez v12, :cond_7

    #@51
    move-object/from16 v10, p4

    #@53
    .line 330
    .local v10, "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v14, v7, 0x1

    #@55
    aget-object v14, v10, v14

    #@57
    invoke-virtual {v8, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5a
    move-result-object v8

    #@5b
    .line 333
    .end local v7    # "nQ":I
    .end local v10    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_4
    if-lez v13, :cond_5

    #@5d
    .line 335
    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@60
    move-result-object v1

    #@61
    .line 336
    const/4 v13, 0x0

    #@62
    .line 339
    :cond_5
    invoke-virtual {v1, v8}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@65
    move-result-object v1

    #@66
    goto :goto_3

    #@67
    .line 323
    .restart local v6    # "nP":I
    :cond_6
    move-object/from16 v9, p0

    #@69
    .restart local v9    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_4

    #@6a
    .line 329
    .end local v6    # "nP":I
    .end local v9    # "tableP":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v7    # "nQ":I
    :cond_7
    move-object/from16 v10, p3

    #@6c
    .restart local v10    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_5

    #@6d
    .line 342
    .end local v7    # "nQ":I
    .end local v8    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "tableQ":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v11    # "wiP":I
    .end local v12    # "wiQ":I
    :cond_8
    if-lez v13, :cond_9

    #@6f
    .line 344
    invoke-virtual {v1, v13}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@72
    move-result-object v1

    #@73
    .line 347
    :cond_9
    return-object v1
.end method

.method static implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 16
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "pointMap"    # Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    .param p2, "ks"    # [Ljava/math/BigInteger;

    #@0
    .prologue
    .line 403
    move-object/from16 v0, p0

    #@2
    array-length v4, v0

    #@3
    .local v4, "halfCount":I
    shl-int/lit8 v3, v4, 0x1

    #@5
    .line 405
    .local v3, "fullCount":I
    new-array v11, v3, [Z

    #@7
    .line 406
    .local v11, "negs":[Z
    new-array v6, v3, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@9
    .line 407
    .local v6, "infos":[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v13, v3, [[B

    #@b
    .line 409
    .local v13, "wnafs":[[B
    const/4 v5, 0x0

    #@c
    .local v5, "i":I
    :goto_0
    if-ge v5, v4, :cond_2

    #@e
    .line 411
    shl-int/lit8 v7, v5, 0x1

    #@10
    .local v7, "j0":I
    add-int/lit8 v8, v7, 0x1

    #@12
    .line 413
    .local v8, "j1":I
    aget-object v9, p2, v7

    #@14
    .local v9, "kj0":Ljava/math/BigInteger;
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    #@17
    move-result v14

    #@18
    if-gez v14, :cond_0

    #@1a
    const/4 v14, 0x1

    #@1b
    :goto_1
    aput-boolean v14, v11, v7

    #@1d
    invoke-virtual {v9}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@20
    move-result-object v9

    #@21
    .line 414
    aget-object v10, p2, v8

    #@23
    .local v10, "kj1":Ljava/math/BigInteger;
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    #@26
    move-result v14

    #@27
    if-gez v14, :cond_1

    #@29
    const/4 v14, 0x1

    #@2a
    :goto_2
    aput-boolean v14, v11, v8

    #@2c
    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@2f
    move-result-object v10

    #@30
    .line 416
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    #@33
    move-result v14

    #@34
    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    #@37
    move-result v15

    #@38
    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    #@3b
    move-result v14

    #@3c
    invoke-static {v14}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    #@3f
    move-result v14

    #@40
    const/16 v15, 0x10

    #@42
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    #@45
    move-result v14

    #@46
    const/4 v15, 0x2

    #@47
    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    #@4a
    move-result v12

    #@4b
    .line 418
    .local v12, "width":I
    aget-object v1, p0, v5

    #@4d
    .local v1, "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v14, 0x1

    #@4e
    move-object/from16 v0, p1

    #@50
    invoke-static {v1, v12, v14, v0}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->mapPointWithPrecomp(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZLcom/android/org/bouncycastle/math/ec/ECPointMap;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@53
    move-result-object v2

    #@54
    .line 419
    .local v2, "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@57
    move-result-object v14

    #@58
    aput-object v14, v6, v7

    #@5a
    .line 420
    invoke-static {v2}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@5d
    move-result-object v14

    #@5e
    aput-object v14, v6, v8

    #@60
    .line 421
    invoke-static {v12, v9}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@63
    move-result-object v14

    #@64
    aput-object v14, v13, v7

    #@66
    .line 422
    invoke-static {v12, v10}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@69
    move-result-object v14

    #@6a
    aput-object v14, v13, v8

    #@6c
    .line 409
    add-int/lit8 v5, v5, 0x1

    #@6e
    goto :goto_0

    #@6f
    .line 413
    .end local v1    # "P":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v2    # "Q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    .end local v12    # "width":I
    :cond_0
    const/4 v14, 0x0

    #@70
    goto :goto_1

    #@71
    .line 414
    .restart local v10    # "kj1":Ljava/math/BigInteger;
    :cond_1
    const/4 v14, 0x0

    #@72
    goto :goto_2

    #@73
    .line 425
    .end local v7    # "j0":I
    .end local v8    # "j1":I
    .end local v9    # "kj0":Ljava/math/BigInteger;
    .end local v10    # "kj1":Ljava/math/BigInteger;
    :cond_2
    invoke-static {v11, v6, v13}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@76
    move-result-object v14

    #@77
    return-object v14
.end method

.method static implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 11
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 352
    array-length v0, p0

    #@3
    .line 353
    .local v0, "count":I
    new-array v4, v0, [Z

    #@5
    .line 354
    .local v4, "negs":[Z
    new-array v2, v0, [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@7
    .line 355
    .local v2, "infos":[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    new-array v6, v0, [[B

    #@9
    .line 357
    .local v6, "wnafs":[[B
    const/4 v1, 0x0

    #@a
    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    #@c
    .line 359
    aget-object v3, p1, v1

    #@e
    .local v3, "ki":Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->signum()I

    #@11
    move-result v7

    #@12
    if-gez v7, :cond_0

    #@14
    move v7, v8

    #@15
    :goto_1
    aput-boolean v7, v4, v1

    #@17
    invoke-virtual {v3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@1a
    move-result-object v3

    #@1b
    .line 361
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@1e
    move-result v7

    #@1f
    invoke-static {v7}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    #@22
    move-result v7

    #@23
    const/16 v10, 0x10

    #@25
    invoke-static {v10, v7}, Ljava/lang/Math;->min(II)I

    #@28
    move-result v7

    #@29
    const/4 v10, 0x2

    #@2a
    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    #@2d
    move-result v5

    #@2e
    .line 362
    .local v5, "width":I
    aget-object v7, p0, v1

    #@30
    invoke-static {v7, v5, v8}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->precompute(Lcom/android/org/bouncycastle/math/ec/ECPoint;IZ)Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;

    #@33
    move-result-object v7

    #@34
    aput-object v7, v2, v1

    #@36
    .line 363
    invoke-static {v5, v3}, Lcom/android/org/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    #@39
    move-result-object v7

    #@3a
    aput-object v7, v6, v1

    #@3c
    .line 357
    add-int/lit8 v1, v1, 0x1

    #@3e
    goto :goto_0

    #@3f
    .end local v5    # "width":I
    :cond_0
    move v7, v9

    #@40
    .line 359
    goto :goto_1

    #@41
    .line 366
    .end local v3    # "ki":Ljava/math/BigInteger;
    :cond_1
    invoke-static {v4, v2, v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@44
    move-result-object v7

    #@45
    return-object v7
.end method

.method private static implSumOfMultiplies([Z[Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 17
    .param p0, "negs"    # [Z
    .param p1, "infos"    # [Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .param p2, "wnafs"    # [[B

    #@0
    .prologue
    .line 430
    const/4 v8, 0x0

    #@1
    .local v8, "len":I
    move-object/from16 v0, p2

    #@3
    array-length v2, v0

    #@4
    .line 431
    .local v2, "count":I
    const/4 v4, 0x0

    #@5
    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_0

    #@7
    .line 433
    aget-object v15, p2, v4

    #@9
    array-length v15, v15

    #@a
    invoke-static {v8, v15}, Ljava/lang/Math;->max(II)I

    #@d
    move-result v8

    #@e
    .line 431
    add-int/lit8 v4, v4, 0x1

    #@10
    goto :goto_0

    #@11
    .line 436
    :cond_0
    const/4 v15, 0x0

    #@12
    aget-object v15, p1, v15

    #@14
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@17
    move-result-object v15

    #@18
    const/16 v16, 0x0

    #@1a
    aget-object v15, v15, v16

    #@1c
    invoke-virtual {v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1f
    move-result-object v3

    #@20
    .line 437
    .local v3, "curve":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {v3}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@23
    move-result-object v5

    #@24
    .line 439
    .local v5, "infinity":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    move-object v1, v5

    #@25
    .line 440
    .local v1, "R":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v14, 0x0

    #@26
    .line 442
    .local v14, "zeroes":I
    add-int/lit8 v4, v8, -0x1

    #@28
    :goto_1
    if-ltz v4, :cond_8

    #@2a
    .line 444
    move-object v10, v5

    #@2b
    .line 446
    .local v10, "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v7, 0x0

    #@2c
    .local v7, "j":I
    :goto_2
    if-ge v7, v2, :cond_5

    #@2e
    .line 448
    aget-object v13, p2, v7

    #@30
    .line 449
    .local v13, "wnaf":[B
    array-length v15, v13

    #@31
    if-ge v4, v15, :cond_2

    #@33
    aget-byte v12, v13, v4

    #@35
    .line 450
    .local v12, "wi":I
    :goto_3
    if-eqz v12, :cond_1

    #@37
    .line 452
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    #@3a
    move-result v9

    #@3b
    .line 453
    .local v9, "n":I
    aget-object v6, p1, v7

    #@3d
    .line 454
    .local v6, "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    if-gez v12, :cond_3

    #@3f
    const/4 v15, 0x1

    #@40
    :goto_4
    aget-boolean v16, p0, v7

    #@42
    move/from16 v0, v16

    #@44
    if-ne v15, v0, :cond_4

    #@46
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@49
    move-result-object v11

    #@4a
    .line 455
    .local v11, "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :goto_5
    ushr-int/lit8 v15, v9, 0x1

    #@4c
    aget-object v15, v11, v15

    #@4e
    invoke-virtual {v10, v15}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@51
    move-result-object v10

    #@52
    .line 446
    .end local v6    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v11    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    #@54
    goto :goto_2

    #@55
    .line 449
    .end local v12    # "wi":I
    :cond_2
    const/4 v12, 0x0

    #@56
    goto :goto_3

    #@57
    .line 454
    .restart local v6    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .restart local v9    # "n":I
    .restart local v12    # "wi":I
    :cond_3
    const/4 v15, 0x0

    #@58
    goto :goto_4

    #@59
    :cond_4
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5c
    move-result-object v11

    #@5d
    .restart local v11    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    goto :goto_5

    #@5e
    .line 459
    .end local v6    # "info":Lcom/android/org/bouncycastle/math/ec/WNafPreCompInfo;
    .end local v9    # "n":I
    .end local v11    # "table":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v12    # "wi":I
    .end local v13    # "wnaf":[B
    :cond_5
    if-ne v10, v5, :cond_6

    #@60
    .line 461
    add-int/lit8 v14, v14, 0x1

    #@62
    .line 442
    :goto_6
    add-int/lit8 v4, v4, -0x1

    #@64
    goto :goto_1

    #@65
    .line 465
    :cond_6
    if-lez v14, :cond_7

    #@67
    .line 467
    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6a
    move-result-object v1

    #@6b
    .line 468
    const/4 v14, 0x0

    #@6c
    .line 471
    :cond_7
    invoke-virtual {v1, v10}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twicePlus(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@6f
    move-result-object v1

    #@70
    goto :goto_6

    #@71
    .line 474
    .end local v7    # "j":I
    .end local v10    # "r":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_8
    if-lez v14, :cond_9

    #@73
    .line 476
    invoke-virtual {v1, v14}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@76
    move-result-object v1

    #@77
    .line 479
    :cond_9
    return-object v1
.end method

.method static implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 13
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;
    .param p2, "glvEndomorphism"    # Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 371
    aget-object v11, p0, v12

    #@3
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@6
    move-result-object v11

    #@7
    invoke-virtual {v11}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    #@a
    move-result-object v6

    #@b
    .line 373
    .local v6, "n":Ljava/math/BigInteger;
    array-length v5, p0

    #@c
    .line 375
    .local v5, "len":I
    shl-int/lit8 v11, v5, 0x1

    #@e
    new-array v1, v11, [Ljava/math/BigInteger;

    #@10
    .line 376
    .local v1, "abs":[Ljava/math/BigInteger;
    const/4 v2, 0x0

    #@11
    .local v2, "i":I
    const/4 v3, 0x0

    #@12
    .local v3, "j":I
    move v4, v3

    #@13
    .end local v3    # "j":I
    .local v4, "j":I
    :goto_0
    if-ge v2, v5, :cond_0

    #@15
    .line 378
    aget-object v11, p1, v2

    #@17
    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    #@1a
    move-result-object v11

    #@1b
    invoke-interface {p2, v11}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    #@1e
    move-result-object v0

    #@1f
    .line 379
    .local v0, "ab":[Ljava/math/BigInteger;
    add-int/lit8 v3, v4, 0x1

    #@21
    .end local v4    # "j":I
    .restart local v3    # "j":I
    aget-object v11, v0, v12

    #@23
    aput-object v11, v1, v4

    #@25
    .line 380
    add-int/lit8 v4, v3, 0x1

    #@27
    .end local v3    # "j":I
    .restart local v4    # "j":I
    const/4 v11, 0x1

    #@28
    aget-object v11, v0, v11

    #@2a
    aput-object v11, v1, v3

    #@2c
    .line 376
    add-int/lit8 v2, v2, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 383
    .end local v0    # "ab":[Ljava/math/BigInteger;
    :cond_0
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->getPointMap()Lcom/android/org/bouncycastle/math/ec/ECPointMap;

    #@32
    move-result-object v8

    #@33
    .line 384
    .local v8, "pointMap":Lcom/android/org/bouncycastle/math/ec/ECPointMap;
    invoke-interface {p2}, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    #@36
    move-result v11

    #@37
    if-eqz v11, :cond_1

    #@39
    .line 386
    invoke-static {p0, v8, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;Lcom/android/org/bouncycastle/math/ec/ECPointMap;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@3c
    move-result-object v11

    #@3d
    return-object v11

    #@3e
    .line 389
    :cond_1
    shl-int/lit8 v11, v5, 0x1

    #@40
    new-array v9, v11, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@42
    .line 390
    .local v9, "pqs":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    const/4 v2, 0x0

    #@43
    const/4 v3, 0x0

    #@44
    .end local v4    # "j":I
    .restart local v3    # "j":I
    move v4, v3

    #@45
    .end local v3    # "j":I
    .restart local v4    # "j":I
    :goto_1
    if-ge v2, v5, :cond_2

    #@47
    .line 392
    aget-object v7, p0, v2

    #@49
    .local v7, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-interface {v8, v7}, Lcom/android/org/bouncycastle/math/ec/ECPointMap;->map(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4c
    move-result-object v10

    #@4d
    .line 393
    .local v10, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    add-int/lit8 v3, v4, 0x1

    #@4f
    .end local v4    # "j":I
    .restart local v3    # "j":I
    aput-object v7, v9, v4

    #@51
    .line 394
    add-int/lit8 v4, v3, 0x1

    #@53
    .end local v3    # "j":I
    .restart local v4    # "j":I
    aput-object v10, v9, v3

    #@55
    .line 390
    add-int/lit8 v2, v2, 0x1

    #@57
    goto :goto_1

    #@58
    .line 397
    .end local v7    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v10    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    invoke-static {v9, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5b
    move-result-object v11

    #@5c
    return-object v11
.end method

.method public static importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 3
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .param p1, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 117
    invoke-virtual {p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    .line 118
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-virtual {p0, v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->equals(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 120
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v2, "Point must be on the same curve"

    #@f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v1

    #@13
    .line 122
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@16
    move-result-object v1

    #@17
    return-object v1
.end method

.method public static isF2mCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .locals 3
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@3
    move-result-object v0

    #@4
    .line 15
    .local v0, "field":Lcom/android/org/bouncycastle/math/field/FiniteField;
    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    #@7
    move-result v1

    #@8
    const/4 v2, 0x1

    #@9
    if-le v1, v2, :cond_0

    #@b
    invoke-interface {v0}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    #@e
    move-result-object v1

    #@f
    sget-object v2, Lcom/android/org/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    #@11
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_0

    #@17
    .line 16
    instance-of v1, v0, Lcom/android/org/bouncycastle/math/field/PolynomialExtensionField;

    #@19
    .line 15
    :goto_0
    return v1

    #@1a
    :cond_0
    const/4 v1, 0x0

    #@1b
    goto :goto_0
.end method

.method public static isFpCurve(Lcom/android/org/bouncycastle/math/ec/ECCurve;)Z
    .locals 2
    .param p0, "c"    # Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 21
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getField()Lcom/android/org/bouncycastle/math/field/FiniteField;

    #@4
    move-result-object v1

    #@5
    invoke-interface {v1}, Lcom/android/org/bouncycastle/math/field/FiniteField;->getDimension()I

    #@8
    move-result v1

    #@9
    if-ne v1, v0, :cond_0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public static montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;II)V
    .locals 1
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I

    #@0
    .prologue
    .line 127
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V

    #@4
    .line 125
    return-void
.end method

.method public static montgomeryTrick([Lcom/android/org/bouncycastle/math/ec/ECFieldElement;IILcom/android/org/bouncycastle/math/ec/ECFieldElement;)V
    .locals 8
    .param p0, "zs"    # [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "scale"    # Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 139
    new-array v0, p2, [Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3
    .line 140
    .local v0, "c":[Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v6, p0, p1

    #@5
    aput-object v6, v0, v7

    #@7
    .line 142
    const/4 v1, 0x0

    #@8
    .line 143
    .local v1, "i":I
    :goto_0
    add-int/lit8 v1, v1, 0x1

    #@a
    if-ge v1, p2, :cond_0

    #@c
    .line 145
    add-int/lit8 v6, v1, -0x1

    #@e
    aget-object v6, v0, v6

    #@10
    add-int v7, p1, v1

    #@12
    aget-object v7, p0, v7

    #@14
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@17
    move-result-object v6

    #@18
    aput-object v6, v0, v1

    #@1a
    goto :goto_0

    #@1b
    .line 148
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@1d
    .line 150
    if-eqz p3, :cond_1

    #@1f
    .line 152
    aget-object v6, v0, v1

    #@21
    invoke-virtual {v6, p3}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@24
    move-result-object v6

    #@25
    aput-object v6, v0, v1

    #@27
    .line 155
    :cond_1
    aget-object v6, v0, v1

    #@29
    invoke-virtual {v6}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->invert()Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@2c
    move-result-object v5

    #@2d
    .local v5, "u":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    move v2, v1

    #@2e
    .line 157
    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-lez v2, :cond_2

    #@30
    .line 159
    add-int/lit8 v1, v2, -0x1

    #@32
    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int v3, p1, v2

    #@34
    .line 160
    .local v3, "j":I
    aget-object v4, p0, v3

    #@36
    .line 161
    .local v4, "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    aget-object v6, v0, v1

    #@38
    invoke-virtual {v6, v5}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@3b
    move-result-object v6

    #@3c
    aput-object v6, p0, v3

    #@3e
    .line 162
    invoke-virtual {v5, v4}, Lcom/android/org/bouncycastle/math/ec/ECFieldElement;->multiply(Lcom/android/org/bouncycastle/math/ec/ECFieldElement;)Lcom/android/org/bouncycastle/math/ec/ECFieldElement;

    #@41
    move-result-object v5

    #@42
    move v2, v1

    #@43
    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    #@44
    .line 165
    .end local v3    # "j":I
    .end local v4    # "tmp":Lcom/android/org/bouncycastle/math/ec/ECFieldElement;
    :cond_2
    aput-object v5, p0, p1

    #@46
    .line 130
    return-void
.end method

.method public static referenceMultiply(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 6
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 180
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    #@4
    move-result-object v3

    #@5
    .line 181
    .local v3, "x":Ljava/math/BigInteger;
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@8
    move-result-object v4

    #@9
    invoke-virtual {v4}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getInfinity()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@c
    move-result-object v1

    #@d
    .line 182
    .local v1, "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v3}, Ljava/math/BigInteger;->bitLength()I

    #@10
    move-result v2

    #@11
    .line 183
    .local v2, "t":I
    if-lez v2, :cond_2

    #@13
    .line 185
    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->testBit(I)Z

    #@16
    move-result v4

    #@17
    if-eqz v4, :cond_0

    #@19
    .line 187
    move-object v1, p0

    #@1a
    .line 189
    :cond_0
    const/4 v0, 0x1

    #@1b
    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    #@1d
    .line 191
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->twice()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@20
    move-result-object p0

    #@21
    .line 192
    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->testBit(I)Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_1

    #@27
    .line 194
    invoke-virtual {v1, p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2a
    move-result-object v1

    #@2b
    .line 189
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 198
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    #@31
    move-result v4

    #@32
    if-gez v4, :cond_3

    #@34
    invoke-virtual {v1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->negate()Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@37
    move-result-object v1

    #@38
    .end local v1    # "q":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_3
    return-object v1
.end method

.method public static shamirsTrick(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "k"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "l"    # Ljava/math/BigInteger;

    #@0
    .prologue
    .line 109
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@3
    move-result-object v0

    #@4
    .line 110
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@7
    move-result-object p2

    #@8
    .line 112
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@f
    move-result-object v1

    #@10
    return-object v1
.end method

.method public static sumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 10
    .param p0, "ps"    # [Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "ks"    # [Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 26
    if-eqz p0, :cond_0

    #@4
    if-nez p1, :cond_1

    #@6
    .line 28
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v7, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    #@b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v6

    #@f
    .line 26
    :cond_1
    array-length v6, p0

    #@10
    array-length v7, p1

    #@11
    if-ne v6, v7, :cond_0

    #@13
    array-length v6, p0

    #@14
    if-lt v6, v9, :cond_0

    #@16
    .line 31
    array-length v1, p0

    #@17
    .line 32
    .local v1, "count":I
    packed-switch v1, :pswitch_data_0

    #@1a
    .line 42
    aget-object v5, p0, v8

    #@1c
    .line 43
    .local v5, "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    invoke-virtual {v5}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@1f
    move-result-object v0

    #@20
    .line 45
    .local v0, "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    new-array v4, v1, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@22
    .line 46
    .local v4, "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    aput-object v5, v4, v8

    #@24
    .line 47
    const/4 v3, 0x1

    #@25
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_2

    #@27
    .line 49
    aget-object v6, p0, v3

    #@29
    invoke-static {v0, v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@2c
    move-result-object v6

    #@2d
    aput-object v6, v4, v3

    #@2f
    .line 47
    add-int/lit8 v3, v3, 0x1

    #@31
    goto :goto_0

    #@32
    .line 35
    .end local v0    # "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .end local v3    # "i":I
    .end local v4    # "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .end local v5    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :pswitch_0
    aget-object v6, p0, v8

    #@34
    aget-object v7, p1, v8

    #@36
    invoke-virtual {v6, v7}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@39
    move-result-object v6

    #@3a
    return-object v6

    #@3b
    .line 37
    :pswitch_1
    aget-object v6, p0, v8

    #@3d
    aget-object v7, p1, v8

    #@3f
    aget-object v8, p0, v9

    #@41
    aget-object v9, p1, v9

    #@43
    invoke-static {v6, v7, v8, v9}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@46
    move-result-object v6

    #@47
    return-object v6

    #@48
    .line 52
    .restart local v0    # "c":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    .restart local v3    # "i":I
    .restart local v4    # "imported":[Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .restart local v5    # "p":Lcom/android/org/bouncycastle/math/ec/ECPoint;
    :cond_2
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@4b
    move-result-object v2

    #@4c
    .line 53
    .local v2, "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v6, v2, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@4e
    if-eqz v6, :cond_3

    #@50
    .line 55
    check-cast v2, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@52
    .end local v2    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v4, p1, v2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@55
    move-result-object v6

    #@56
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@59
    move-result-object v6

    #@5a
    return-object v6

    #@5b
    .line 58
    .restart local v2    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    :cond_3
    invoke-static {v4, p1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@5e
    move-result-object v6

    #@5f
    invoke-static {v6}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@62
    move-result-object v6

    #@63
    return-object v6

    #@64
    .line 32
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sumOfTwoMultiplies(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 7
    .param p0, "P"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p1, "a"    # Ljava/math/BigInteger;
    .param p2, "Q"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .param p3, "b"    # Ljava/math/BigInteger;

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v6, 0x1

    #@2
    const/4 v5, 0x0

    #@3
    .line 64
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->getCurve()Lcom/android/org/bouncycastle/math/ec/ECCurve;

    #@6
    move-result-object v0

    #@7
    .line 65
    .local v0, "cp":Lcom/android/org/bouncycastle/math/ec/ECCurve;
    invoke-static {v0, p2}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lcom/android/org/bouncycastle/math/ec/ECCurve;Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@a
    move-result-object p2

    #@b
    .line 68
    instance-of v3, v0, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@d
    if-eqz v3, :cond_0

    #@f
    move-object v2, v0

    #@10
    .line 70
    check-cast v2, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;

    #@12
    .line 71
    .local v2, "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    invoke-virtual {v2}, Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;->isKoblitz()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_0

    #@18
    .line 73
    invoke-virtual {p0, p1}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {v3, v4}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->add(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@23
    move-result-object v3

    #@24
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@27
    move-result-object v3

    #@28
    return-object v3

    #@29
    .line 77
    .end local v2    # "f2mCurve":Lcom/android/org/bouncycastle/math/ec/ECCurve$F2m;
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;

    #@2c
    move-result-object v1

    #@2d
    .line 78
    .local v1, "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    instance-of v3, v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@2f
    if-eqz v3, :cond_1

    #@31
    .line 81
    new-array v3, v4, [Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@33
    aput-object p0, v3, v5

    #@35
    aput-object p2, v3, v6

    #@37
    new-array v4, v4, [Ljava/math/BigInteger;

    #@39
    aput-object p1, v4, v5

    #@3b
    aput-object p3, v4, v6

    #@3d
    check-cast v1, Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;

    #@3f
    .end local v1    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    invoke-static {v3, v4, v1}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lcom/android/org/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/endo/GLVEndomorphism;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@42
    move-result-object v3

    #@43
    .line 80
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@46
    move-result-object v3

    #@47
    return-object v3

    #@48
    .line 84
    .restart local v1    # "endomorphism":Lcom/android/org/bouncycastle/math/ec/endo/ECEndomorphism;
    :cond_1
    invoke-static {p0, p1, p2, p3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lcom/android/org/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4b
    move-result-object v3

    #@4c
    invoke-static {v3}, Lcom/android/org/bouncycastle/math/ec/ECAlgorithms;->validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@4f
    move-result-object v3

    #@50
    return-object v3
.end method

.method public static validatePoint(Lcom/android/org/bouncycastle/math/ec/ECPoint;)Lcom/android/org/bouncycastle/math/ec/ECPoint;
    .locals 2
    .param p0, "p"    # Lcom/android/org/bouncycastle/math/ec/ECPoint;

    #@0
    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/android/org/bouncycastle/math/ec/ECPoint;->isValid()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "Invalid point"

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 208
    :cond_0
    return-object p0
.end method
