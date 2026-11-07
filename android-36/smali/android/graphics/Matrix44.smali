.class public Landroid/graphics/Matrix44;
.super Ljava/lang/Object;
.source "Matrix44.java"


# instance fields
.field final blacklist mBackingArray:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/16 v0, 0x10

    new-array v0, v0, [F

    fill-array-data v0, :array_e

    iput-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    .line 46
    return-void

    nop

    :array_e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor whitelist <init>(Landroid/graphics/Matrix;)V
    .registers 24
    .param p1, "mat"    # Landroid/graphics/Matrix;

    .line 62
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/16 v0, 0x9

    new-array v1, v0, [F

    .line 64
    .local v1, "m":[F
    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 65
    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v6, v1, v5

    const/4 v7, 0x2

    aget v8, v1, v7

    const/4 v9, 0x3

    aget v10, v1, v9

    const/4 v11, 0x4

    aget v12, v1, v11

    const/4 v13, 0x5

    aget v14, v1, v13

    const/4 v15, 0x6

    aget v16, v1, v15

    const/16 v17, 0x7

    aget v18, v1, v17

    const/16 v19, 0x8

    aget v20, v1, v19

    move/from16 v21, v0

    const/16 v0, 0x10

    new-array v0, v0, [F

    aput v4, v0, v3

    aput v6, v0, v5

    const/4 v3, 0x0

    aput v3, v0, v7

    aput v8, v0, v9

    aput v10, v0, v11

    aput v12, v0, v13

    aput v3, v0, v15

    aput v14, v0, v17

    aput v3, v0, v19

    aput v3, v0, v21

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xa

    aput v4, v0, v5

    const/16 v4, 0xb

    aput v3, v0, v4

    const/16 v4, 0xc

    aput v16, v0, v4

    const/16 v4, 0xd

    aput v18, v0, v4

    const/16 v4, 0xe

    aput v3, v0, v4

    const/16 v3, 0xf

    aput v20, v0, v3

    move-object/from16 v3, p0

    iput-object v0, v3, Landroid/graphics/Matrix44;->mBackingArray:[F

    .line 69
    return-void
.end method

.method private static blacklist dot(FFFFFFFF)F
    .registers 10
    .param p0, "r0"    # F
    .param p1, "r1"    # F
    .param p2, "r2"    # F
    .param p3, "r3"    # F
    .param p4, "c0"    # F
    .param p5, "c1"    # F
    .param p6, "c2"    # F
    .param p7, "c3"    # F

    .line 224
    mul-float v0, p0, p4

    mul-float v1, p1, p5

    add-float/2addr v0, v1

    mul-float v1, p2, p6

    add-float/2addr v0, v1

    mul-float v1, p3, p7

    add-float/2addr v0, v1

    return v0
.end method

.method private static blacklist dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F
    .registers 7
    .param p0, "a"    # Landroid/graphics/Matrix44;
    .param p1, "b"    # Landroid/graphics/Matrix44;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v1

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v1, v0

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 217
    const/4 v0, 0x2

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 218
    const/4 v0, 0x3

    invoke-virtual {p0, p2, v0}, Landroid/graphics/Matrix44;->get(II)F

    move-result v2

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Matrix44;->get(II)F

    move-result v0

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    .line 215
    return v1
.end method


# virtual methods
.method public whitelist concat(Landroid/graphics/Matrix44;)Landroid/graphics/Matrix44;
    .registers 25
    .param p1, "b"    # Landroid/graphics/Matrix44;

    .line 269
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v3

    .line 270
    .local v3, "val00":F
    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v5

    .line 271
    .local v5, "val01":F
    const/4 v6, 0x2

    invoke-static {v0, v1, v2, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v7

    .line 272
    .local v7, "val02":F
    const/4 v8, 0x3

    invoke-static {v0, v1, v2, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v9

    .line 273
    .local v9, "val03":F
    invoke-static {v0, v1, v4, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v10

    .line 274
    .local v10, "val10":F
    invoke-static {v0, v1, v4, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v11

    .line 275
    .local v11, "val11":F
    invoke-static {v0, v1, v4, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v12

    .line 276
    .local v12, "val12":F
    invoke-static {v0, v1, v4, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v13

    .line 277
    .local v13, "val13":F
    invoke-static {v0, v1, v6, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v14

    .line 278
    .local v14, "val20":F
    invoke-static {v0, v1, v6, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v15

    .line 279
    .local v15, "val21":F
    invoke-static {v0, v1, v6, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v16

    .line 280
    .local v16, "val22":F
    invoke-static {v0, v1, v6, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v17

    .line 281
    .local v17, "val23":F
    invoke-static {v0, v1, v8, v2}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v18

    .line 282
    .local v18, "val30":F
    invoke-static {v0, v1, v8, v4}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v19

    .line 283
    .local v19, "val31":F
    invoke-static {v0, v1, v8, v6}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v20

    .line 284
    .local v20, "val32":F
    invoke-static {v0, v1, v8, v8}, Landroid/graphics/Matrix44;->dot(Landroid/graphics/Matrix44;Landroid/graphics/Matrix44;II)F

    move-result v21

    .line 286
    .local v21, "val33":F
    move/from16 v22, v2

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v3, v2, v22

    .line 287
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v5, v2, v4

    .line 288
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v7, v2, v6

    .line 289
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v9, v2, v8

    .line 290
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x4

    aput v10, v2, v4

    .line 291
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x5

    aput v11, v2, v4

    .line 292
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x6

    aput v12, v2, v4

    .line 293
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x7

    aput v13, v2, v4

    .line 294
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0x8

    aput v14, v2, v4

    .line 295
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0x9

    aput v15, v2, v4

    .line 296
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xa

    aput v16, v2, v4

    .line 297
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xb

    aput v17, v2, v4

    .line 298
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xc

    aput v18, v2, v4

    .line 299
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xd

    aput v19, v2, v4

    .line 300
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xe

    aput v20, v2, v4

    .line 301
    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v4, 0xf

    aput v21, v2, v4

    .line 303
    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 460
    instance-of v0, p1, Landroid/graphics/Matrix44;

    if-eqz v0, :cond_10

    .line 461
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move-object v1, p1

    check-cast v1, Landroid/graphics/Matrix44;

    iget-object v1, v1, Landroid/graphics/Matrix44;->mBackingArray:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    return v0

    .line 463
    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist get(II)F
    .registers 5
    .param p1, "row"    # I
    .param p2, "col"    # I

    .line 109
    if-ltz p1, :cond_11

    const/4 v0, 0x4

    if-ge p1, v0, :cond_11

    if-ltz p2, :cond_11

    if-ge p2, v0, :cond_11

    .line 110
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0

    .line 112
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid row and column values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getValues([F)V
    .registers 5
    .param p1, "dst"    # [F

    .line 79
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 80
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-void

    .line 82
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dst array must be of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 468
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x4

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x8

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xc

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    float-to-int v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist invert()Z
    .registers 51

    .line 149
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 150
    .local v1, "a00":F
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    .line 151
    .local v3, "a01":F
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x2

    aget v5, v5, v6

    .line 152
    .local v5, "a02":F
    iget-object v7, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v8, 0x3

    aget v7, v7, v8

    .line 153
    .local v7, "a03":F
    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v10, 0x4

    aget v9, v9, v10

    .line 154
    .local v9, "a10":F
    iget-object v11, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v12, 0x5

    aget v11, v11, v12

    .line 155
    .local v11, "a11":F
    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v14, 0x6

    aget v13, v13, v14

    .line 156
    .local v13, "a12":F
    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v16, 0x7

    aget v15, v15, v16

    .line 157
    .local v15, "a13":F
    move/from16 v17, v2

    iget-object v2, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v18, 0x8

    aget v2, v2, v18

    .line 158
    .local v2, "a20":F
    move/from16 v19, v4

    iget-object v4, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v20, 0x9

    aget v4, v4, v20

    .line 159
    .local v4, "a21":F
    move/from16 v21, v6

    iget-object v6, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v22, 0xa

    aget v6, v6, v22

    .line 160
    .local v6, "a22":F
    move/from16 v23, v8

    iget-object v8, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v24, 0xb

    aget v8, v8, v24

    .line 161
    .local v8, "a23":F
    move/from16 v25, v10

    iget-object v10, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v26, 0xc

    aget v10, v10, v26

    .line 162
    .local v10, "a30":F
    move/from16 v27, v12

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v28, 0xd

    aget v12, v12, v28

    .line 163
    .local v12, "a31":F
    move/from16 v29, v14

    iget-object v14, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v30, 0xe

    aget v14, v14, v30

    .line 164
    .local v14, "a32":F
    move/from16 v31, v5

    .end local v5    # "a02":F
    .local v31, "a02":F
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v32, 0xf

    aget v5, v5, v32

    .line 165
    .local v5, "a33":F
    mul-float v33, v1, v11

    mul-float v34, v3, v9

    sub-float v33, v33, v34

    .line 166
    .local v33, "b00":F
    mul-float v34, v1, v13

    mul-float v35, v31, v9

    sub-float v34, v34, v35

    .line 167
    .local v34, "b01":F
    mul-float v35, v1, v15

    mul-float v36, v7, v9

    sub-float v35, v35, v36

    .line 168
    .local v35, "b02":F
    mul-float v36, v3, v13

    mul-float v37, v31, v11

    sub-float v36, v36, v37

    .line 169
    .local v36, "b03":F
    mul-float v37, v3, v15

    mul-float v38, v7, v11

    sub-float v37, v37, v38

    .line 170
    .local v37, "b04":F
    mul-float v38, v31, v15

    mul-float v39, v7, v13

    sub-float v38, v38, v39

    .line 171
    .local v38, "b05":F
    mul-float v39, v2, v12

    mul-float v40, v4, v10

    sub-float v39, v39, v40

    .line 172
    .local v39, "b06":F
    mul-float v40, v2, v14

    mul-float v41, v6, v10

    sub-float v40, v40, v41

    .line 173
    .local v40, "b07":F
    mul-float v41, v2, v5

    mul-float v42, v8, v10

    sub-float v41, v41, v42

    .line 174
    .local v41, "b08":F
    mul-float v42, v4, v14

    mul-float v43, v6, v12

    sub-float v42, v42, v43

    .line 175
    .local v42, "b09":F
    mul-float v43, v4, v5

    mul-float v44, v8, v12

    sub-float v43, v43, v44

    .line 176
    .local v43, "b10":F
    mul-float v44, v6, v5

    mul-float v45, v8, v14

    sub-float v44, v44, v45

    .line 177
    .local v44, "b11":F
    mul-float v45, v33, v44

    mul-float v46, v34, v43

    sub-float v45, v45, v46

    mul-float v46, v35, v42

    add-float v45, v45, v46

    mul-float v46, v36, v41

    add-float v45, v45, v46

    mul-float v46, v37, v40

    sub-float v45, v45, v46

    mul-float v46, v38, v39

    add-float v45, v45, v46

    .line 178
    .local v45, "det":F
    const/16 v46, 0x0

    cmpl-float v46, v45, v46

    if-nez v46, :cond_d0

    .line 179
    return v17

    .line 181
    :cond_d0
    const/high16 v46, 0x3f800000    # 1.0f

    div-float v46, v46, v45

    .line 182
    .local v46, "invDet":F
    move/from16 v47, v5

    .end local v5    # "a33":F
    .local v47, "a33":F
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v48, v11, v44

    mul-float v49, v13, v43

    sub-float v48, v48, v49

    mul-float v49, v15, v42

    add-float v48, v48, v49

    mul-float v48, v48, v46

    aput v48, v5, v17

    .line 183
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move-object/from16 v17, v5

    neg-float v5, v3

    mul-float v5, v5, v44

    mul-float v48, v31, v43

    add-float v5, v5, v48

    mul-float v48, v7, v42

    sub-float v5, v5, v48

    mul-float v5, v5, v46

    aput v5, v17, v19

    .line 184
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v17, v12, v38

    mul-float v48, v14, v37

    sub-float v17, v17, v48

    mul-float v48, v47, v36

    add-float v17, v17, v48

    mul-float v17, v17, v46

    aput v17, v5, v21

    .line 185
    iget-object v5, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    move/from16 v17, v3

    .end local v3    # "a01":F
    .local v17, "a01":F
    neg-float v3, v4

    mul-float v3, v3, v38

    mul-float v21, v6, v37

    add-float v3, v3, v21

    mul-float v21, v8, v36

    sub-float v3, v3, v21

    mul-float v3, v3, v46

    aput v3, v5, v23

    .line 186
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v9

    mul-float v5, v5, v44

    mul-float v21, v13, v41

    add-float v5, v5, v21

    mul-float v21, v15, v40

    sub-float v5, v5, v21

    mul-float v5, v5, v46

    aput v5, v3, v25

    .line 187
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v1, v44

    mul-float v21, v31, v41

    sub-float v5, v5, v21

    mul-float v21, v7, v40

    add-float v5, v5, v21

    mul-float v5, v5, v46

    aput v5, v3, v27

    .line 188
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v10

    mul-float v5, v5, v38

    mul-float v21, v14, v35

    add-float v5, v5, v21

    mul-float v21, v47, v34

    sub-float v5, v5, v21

    mul-float v5, v5, v46

    aput v5, v3, v29

    .line 189
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v2, v38

    mul-float v21, v6, v35

    sub-float v5, v5, v21

    mul-float v21, v8, v34

    add-float v5, v5, v21

    mul-float v5, v5, v46

    aput v5, v3, v16

    .line 190
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v9, v43

    mul-float v16, v11, v41

    sub-float v5, v5, v16

    mul-float v16, v15, v39

    add-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v18

    .line 191
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v1

    mul-float v5, v5, v43

    mul-float v16, v17, v41

    add-float v5, v5, v16

    mul-float v16, v7, v39

    sub-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v20

    .line 192
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v10, v37

    mul-float v16, v12, v35

    sub-float v5, v5, v16

    mul-float v16, v47, v33

    add-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v22

    .line 193
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v2

    mul-float v5, v5, v37

    mul-float v16, v4, v35

    add-float v5, v5, v16

    mul-float v16, v8, v33

    sub-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v24

    .line 194
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v9

    mul-float v5, v5, v42

    mul-float v16, v11, v40

    add-float v5, v5, v16

    mul-float v16, v13, v39

    sub-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v26

    .line 195
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v1, v42

    mul-float v16, v17, v40

    sub-float v5, v5, v16

    mul-float v16, v31, v39

    add-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v28

    .line 196
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    neg-float v5, v10

    mul-float v5, v5, v36

    mul-float v16, v12, v34

    add-float v5, v5, v16

    mul-float v16, v14, v33

    sub-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v30

    .line 197
    iget-object v3, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-float v5, v2, v36

    mul-float v16, v4, v34

    sub-float v5, v5, v16

    mul-float v16, v6, v33

    add-float v5, v5, v16

    mul-float v5, v5, v46

    aput v5, v3, v32

    .line 198
    return v19
.end method

.method public whitelist isIdentity()Z
    .registers 4

    .line 206
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1d

    .line 207
    rem-int/lit8 v1, v0, 0x4

    div-int/lit8 v2, v0, 0x4

    if-ne v1, v2, :cond_f

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    .line 208
    .local v1, "expected":F
    :goto_10
    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v2, v2, v0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    return v2

    .line 206
    .end local v1    # "expected":F
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 210
    .end local v0    # "i":I
    :cond_1d
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist map(FFFF[F)V
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F
    .param p5, "dst"    # [F

    .line 247
    array-length v0, p5

    const/4 v1, 0x4

    if-ne v0, v1, :cond_80

    .line 250
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-float/2addr v0, p1

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v0, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x2

    aget v3, v3, v5

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x3

    aget v3, v3, v6

    mul-float/2addr v3, p4

    add-float/2addr v0, v3

    aput v0, p5, v2

    .line 252
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x5

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x6

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x7

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v4

    .line 254
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x8

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0x9

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xa

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xb

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v5

    .line 256
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xc

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xd

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xe

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v2, 0xf

    aget v1, v1, v2

    mul-float/2addr v1, p4

    add-float/2addr v0, v1

    aput v0, p5, v6

    .line 258
    return-void

    .line 248
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Dst array must be of length 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist map(FFFF)[F
    .registers 12
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F
    .param p4, "w"    # F

    .line 236
    const/4 v0, 0x4

    new-array v6, v0, [F

    .line 237
    .local v6, "dst":[F
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "x":F
    .end local p2    # "y":F
    .end local p3    # "z":F
    .end local p4    # "w":F
    .local v2, "x":F
    .local v3, "y":F
    .local v4, "z":F
    .local v5, "w":F
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Matrix44;->map(FFFF[F)V

    .line 238
    return-object v6
.end method

.method public whitelist reset()V
    .registers 5

    .line 137
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 138
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    rem-int/lit8 v2, v0, 0x4

    div-int/lit8 v3, v0, 0x4

    if-ne v2, v3, :cond_11

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_12

    :cond_11
    const/4 v2, 0x0

    :goto_12
    aput v2, v1, v0

    .line 137
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 140
    .end local v0    # "i":I
    :cond_17
    return-void
.end method

.method public whitelist rotate(FFFF)Landroid/graphics/Matrix44;
    .registers 69
    .param p1, "deg"    # F
    .param p2, "xComp"    # F
    .param p3, "yComp"    # F
    .param p4, "zComp"    # F

    .line 320
    move-object/from16 v0, p0

    move/from16 v1, p1

    add-float v2, p2, p3

    add-float v2, v2, p4

    .line 321
    .local v2, "sum":F
    div-float v3, p2, v2

    .line 322
    .local v3, "x":F
    div-float v4, p3, v2

    .line 323
    .local v4, "y":F
    div-float v5, p4, v2

    .line 325
    .local v5, "z":F
    float-to-double v6, v1

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v6, v10

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 326
    .local v6, "c":F
    float-to-double v12, v1

    mul-double/2addr v12, v8

    div-double/2addr v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    .line 327
    .local v7, "s":F
    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, v6

    .line 329
    .local v8, "t":F
    mul-float v9, v8, v3

    mul-float/2addr v9, v3

    add-float v14, v9, v6

    .line 330
    .local v14, "rotVals00":F
    mul-float v9, v8, v3

    mul-float/2addr v9, v4

    mul-float v10, v7, v5

    sub-float v19, v9, v10

    .line 331
    .local v19, "rotVals01":F
    mul-float v9, v8, v3

    mul-float/2addr v9, v5

    mul-float v10, v7, v4

    add-float v24, v9, v10

    .line 332
    .local v24, "rotVals02":F
    mul-float v9, v8, v3

    mul-float/2addr v9, v4

    mul-float v10, v7, v5

    add-float v15, v9, v10

    .line 333
    .local v15, "rotVals10":F
    mul-float v9, v8, v4

    mul-float/2addr v9, v4

    add-float v20, v9, v6

    .line 334
    .local v20, "rotVals11":F
    mul-float v9, v8, v4

    mul-float/2addr v9, v5

    mul-float v10, v7, v3

    sub-float v25, v9, v10

    .line 335
    .local v25, "rotVals12":F
    mul-float v9, v8, v3

    mul-float/2addr v9, v5

    mul-float v10, v7, v4

    sub-float v16, v9, v10

    .line 336
    .local v16, "rotVals20":F
    mul-float v9, v8, v4

    mul-float/2addr v9, v5

    mul-float v10, v7, v3

    add-float v21, v9, v10

    .line 337
    .local v21, "rotVals21":F
    mul-float v9, v8, v5

    mul-float/2addr v9, v5

    add-float v26, v9, v6

    .line 339
    .local v26, "rotVals22":F
    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v28, 0x0

    aget v10, v9, v28

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v29, 0x1

    aget v11, v9, v29

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v30, 0x2

    aget v12, v9, v30

    iget-object v9, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v31, 0x3

    aget v13, v9, v31

    const/16 v17, 0x0

    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v9

    .line 341
    move v10, v15

    move/from16 v11, v16

    .end local v15    # "rotVals10":F
    .end local v16    # "rotVals20":F
    .local v9, "v00":F
    .local v10, "rotVals10":F
    .local v11, "rotVals20":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v12, v28

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v12, v29

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v17, v12, v30

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v18, v12, v31

    const/16 v22, 0x0

    invoke-static/range {v15 .. v22}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v32

    .line 343
    move/from16 v18, v20

    move/from16 v33, v21

    .end local v20    # "rotVals11":F
    .end local v21    # "rotVals21":F
    .local v18, "rotVals11":F
    .local v32, "v01":F
    .local v33, "rotVals21":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v12, v28

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v12, v29

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v12, v30

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v23, v12, v31

    const/16 v27, 0x0

    invoke-static/range {v20 .. v27}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v34

    .line 345
    .local v34, "v02":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v35, v12, v28

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v36, v12, v29

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v37, v12, v30

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v38, v12, v31

    const/16 v41, 0x0

    const/high16 v42, 0x3f800000    # 1.0f

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v35 .. v42}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v35

    .line 347
    .local v35, "v03":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v36, 0x4

    aget v12, v12, v36

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v37, 0x5

    aget v13, v13, v37

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v38, 0x6

    aget v15, v15, v38

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v39, 0x7

    aget v1, v1, v39

    const/16 v17, 0x0

    move/from16 v16, v15

    move v15, v10

    move v10, v12

    move/from16 v12, v16

    move/from16 v16, v11

    move v11, v13

    move v13, v1

    .end local v10    # "rotVals10":F
    .end local v11    # "rotVals20":F
    .restart local v15    # "rotVals10":F
    .restart local v16    # "rotVals20":F
    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v1

    .line 349
    move v10, v15

    move/from16 v11, v16

    .end local v15    # "rotVals10":F
    .end local v16    # "rotVals20":F
    .local v1, "v10":F
    .restart local v10    # "rotVals10":F
    .restart local v11    # "rotVals20":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v12, v36

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v12, v37

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v17, v12, v38

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v12, v39

    const/16 v22, 0x0

    move/from16 v20, v18

    move/from16 v21, v33

    move/from16 v18, v12

    .end local v18    # "rotVals11":F
    .end local v33    # "rotVals21":F
    .restart local v20    # "rotVals11":F
    .restart local v21    # "rotVals21":F
    invoke-static/range {v15 .. v22}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v33

    .line 351
    move/from16 v18, v20

    move/from16 v40, v21

    .end local v20    # "rotVals11":F
    .end local v21    # "rotVals21":F
    .restart local v18    # "rotVals11":F
    .local v33, "v11":F
    .local v40, "rotVals21":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v12, v36

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v12, v37

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v12, v38

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v23, v12, v39

    invoke-static/range {v20 .. v27}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v41

    .line 353
    .local v41, "v12":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v42, v12, v36

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v43, v12, v37

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v44, v12, v38

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v45, v12, v39

    const/16 v48, 0x0

    const/high16 v49, 0x3f800000    # 1.0f

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v42 .. v49}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v42

    .line 355
    .local v42, "v13":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v43, 0x8

    aget v12, v12, v43

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v44, 0x9

    aget v13, v13, v44

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v45, 0xa

    aget v15, v15, v45

    move/from16 v46, v1

    .end local v1    # "v10":F
    .local v46, "v10":F
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v47, 0xb

    aget v1, v1, v47

    const/16 v17, 0x0

    move/from16 v16, v15

    move v15, v10

    move v10, v12

    move/from16 v12, v16

    move/from16 v16, v11

    move v11, v13

    move v13, v1

    .end local v10    # "rotVals10":F
    .end local v11    # "rotVals20":F
    .restart local v15    # "rotVals10":F
    .restart local v16    # "rotVals20":F
    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v1

    .line 357
    move v10, v15

    move/from16 v11, v16

    .end local v15    # "rotVals10":F
    .end local v16    # "rotVals20":F
    .local v1, "v20":F
    .restart local v10    # "rotVals10":F
    .restart local v11    # "rotVals20":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v12, v43

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v12, v44

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v17, v12, v45

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v12, v47

    const/16 v22, 0x0

    move/from16 v20, v18

    move/from16 v21, v40

    move/from16 v18, v12

    .end local v18    # "rotVals11":F
    .end local v40    # "rotVals21":F
    .restart local v20    # "rotVals11":F
    .restart local v21    # "rotVals21":F
    invoke-static/range {v15 .. v22}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v40

    .line 359
    move/from16 v18, v20

    move/from16 v48, v21

    .end local v20    # "rotVals11":F
    .end local v21    # "rotVals21":F
    .restart local v18    # "rotVals11":F
    .local v40, "v21":F
    .local v48, "rotVals21":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v12, v43

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v12, v44

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v12, v45

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v23, v12, v47

    invoke-static/range {v20 .. v27}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v49

    .line 361
    .local v49, "v22":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v50, v12, v43

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v51, v12, v44

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v52, v12, v45

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v53, v12, v47

    const/16 v56, 0x0

    const/high16 v57, 0x3f800000    # 1.0f

    const/16 v54, 0x0

    const/16 v55, 0x0

    invoke-static/range {v50 .. v57}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v50

    .line 363
    .local v50, "v23":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v51, 0xc

    aget v12, v12, v51

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v52, 0xd

    aget v13, v13, v52

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v53, 0xe

    aget v15, v15, v53

    move/from16 v54, v1

    .end local v1    # "v20":F
    .local v54, "v20":F
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v55, 0xf

    aget v1, v1, v55

    const/16 v17, 0x0

    move/from16 v16, v15

    move v15, v10

    move v10, v12

    move/from16 v12, v16

    move/from16 v16, v11

    move v11, v13

    move v13, v1

    .end local v10    # "rotVals10":F
    .end local v11    # "rotVals20":F
    .restart local v15    # "rotVals10":F
    .restart local v16    # "rotVals20":F
    invoke-static/range {v10 .. v17}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v1

    .line 365
    move v10, v15

    move/from16 v11, v16

    .end local v15    # "rotVals10":F
    .end local v16    # "rotVals20":F
    .local v1, "v30":F
    .restart local v10    # "rotVals10":F
    .restart local v11    # "rotVals20":F
    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v15, v12, v51

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v16, v12, v52

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v17, v12, v53

    iget-object v12, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v12, v12, v55

    const/16 v22, 0x0

    move/from16 v20, v18

    move/from16 v21, v48

    move/from16 v18, v12

    .end local v18    # "rotVals11":F
    .end local v48    # "rotVals21":F
    .restart local v20    # "rotVals11":F
    .restart local v21    # "rotVals21":F
    invoke-static/range {v15 .. v22}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v12

    .line 367
    move/from16 v18, v20

    .end local v20    # "rotVals11":F
    .end local v21    # "rotVals21":F
    .local v12, "v31":F
    .restart local v18    # "rotVals11":F
    .restart local v48    # "rotVals21":F
    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v20, v13, v51

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v21, v13, v52

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v22, v13, v53

    iget-object v13, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v23, v13, v55

    invoke-static/range {v20 .. v27}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v13

    .line 369
    .local v13, "v32":F
    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v56, v15, v51

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v57, v15, v52

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v58, v15, v53

    iget-object v15, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aget v59, v15, v55

    const/16 v62, 0x0

    const/high16 v63, 0x3f800000    # 1.0f

    const/16 v60, 0x0

    const/16 v61, 0x0

    invoke-static/range {v56 .. v63}, Landroid/graphics/Matrix44;->dot(FFFFFFFF)F

    move-result v15

    .line 372
    .local v15, "v33":F
    move/from16 v16, v1

    .end local v1    # "v30":F
    .local v16, "v30":F
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v9, v1, v28

    .line 373
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v32, v1, v29

    .line 374
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v34, v1, v30

    .line 375
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v35, v1, v31

    .line 376
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v46, v1, v36

    .line 377
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v33, v1, v37

    .line 378
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v41, v1, v38

    .line 379
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v42, v1, v39

    .line 380
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v54, v1, v43

    .line 381
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v40, v1, v44

    .line 382
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v49, v1, v45

    .line 383
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v50, v1, v47

    .line 384
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v16, v1, v51

    .line 385
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v12, v1, v52

    .line 386
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v13, v1, v53

    .line 387
    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v15, v1, v55

    .line 389
    return-object v0
.end method

.method public whitelist scale(FFF)Landroid/graphics/Matrix44;
    .registers 7
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 402
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 403
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x4

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 404
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x8

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 405
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xc

    aget v2, v0, v1

    mul-float/2addr v2, p1

    aput v2, v0, v1

    .line 406
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 407
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x5

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 408
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0x9

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 409
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xd

    aget v2, v0, v1

    mul-float/2addr v2, p2

    aput v2, v0, v1

    .line 410
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 411
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x6

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 412
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xa

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 413
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v1, 0xe

    aget v2, v0, v1

    mul-float/2addr v2, p3

    aput v2, v0, v1

    .line 415
    return-object p0
.end method

.method public whitelist set(IIF)V
    .registers 6
    .param p1, "row"    # I
    .param p2, "col"    # I
    .param p3, "val"    # F

    .line 125
    if-ltz p1, :cond_11

    const/4 v0, 0x4

    if-ge p1, v0, :cond_11

    if-ltz p2, :cond_11

    if-ge p2, v0, :cond_11

    .line 126
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 130
    return-void

    .line 128
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid row and column values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setValues([F)V
    .registers 5
    .param p1, "src"    # [F

    .line 94
    array-length v0, p1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_f

    .line 95
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 99
    return-void

    .line 97
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Src array must be of length 16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 19

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    .line 452
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x2

    aget v1, v1, v4

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v5, 0x3

    aget v1, v1, v5

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v6, 0x4

    aget v1, v1, v6

    .line 453
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v7, 0x5

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v8, 0x6

    aget v1, v1, v8

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v9, 0x7

    aget v1, v1, v9

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v10, 0x8

    aget v1, v1, v10

    .line 454
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v11, 0x9

    aget v1, v1, v11

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v12, 0xa

    aget v1, v1, v12

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v12

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v13, 0xb

    aget v1, v1, v13

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v14, 0xc

    aget v1, v1, v14

    .line 455
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v15, 0xd

    aget v1, v1, v15

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v15

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v16, 0xe

    aget v1, v1, v16

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v16

    iget-object v1, v0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v17, 0xf

    aget v1, v1, v17

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v17

    filled-new-array/range {v2 .. v17}, [Ljava/lang/Object;

    move-result-object v1

    .line 447
    const-string/jumbo v2, "| %f %f %f %f |\n| %f %f %f %f |\n| %f %f %f %f |\n| %f %f %f %f |\n"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist translate(FFF)Landroid/graphics/Matrix44;
    .registers 13
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 428
    iget-object v0, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-float/2addr v0, p1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    mul-float/2addr v1, p2

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    add-float/2addr v0, v1

    .line 430
    .local v0, "newX":F
    iget-object v1, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v3, 0x4

    aget v1, v1, v3

    mul-float/2addr v1, p1

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x6

    aget v3, v3, v4

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/4 v4, 0x7

    aget v3, v3, v4

    add-float/2addr v1, v3

    .line 432
    .local v1, "newY":F
    iget-object v3, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v5, 0x8

    aget v3, v3, v5

    mul-float/2addr v3, p1

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0x9

    aget v5, v5, v6

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0xa

    aget v5, v5, v6

    mul-float/2addr v5, p3

    add-float/2addr v3, v5

    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v6, 0xb

    aget v5, v5, v6

    add-float/2addr v3, v5

    .line 434
    .local v3, "newZ":F
    iget-object v5, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v7, 0xc

    aget v5, v5, v7

    mul-float/2addr v5, p1

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v8, 0xd

    aget v7, v7, v8

    mul-float/2addr v7, p2

    add-float/2addr v5, v7

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v8, 0xe

    aget v7, v7, v8

    mul-float/2addr v7, p3

    add-float/2addr v5, v7

    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    const/16 v8, 0xf

    aget v7, v7, v8

    add-float/2addr v5, v7

    .line 437
    .local v5, "newW":F
    iget-object v7, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v0, v7, v2

    .line 438
    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v1, v2, v4

    .line 439
    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v3, v2, v6

    .line 440
    iget-object v2, p0, Landroid/graphics/Matrix44;->mBackingArray:[F

    aput v5, v2, v8

    .line 442
    return-object p0
.end method
