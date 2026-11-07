.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist-max-o mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 35
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 36
    return-void
.end method

.method public constructor whitelist <init>([F)V
    .registers 5
    .param p1, "dataArray"    # [F

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    .line 47
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 48
    return-void
.end method


# virtual methods
.method public whitelist get(II)F
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 69
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getArray()[F
    .registers 2

    .line 57
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    return-object v0
.end method

.method public whitelist load(Landroid/renderscript/Matrix3f;)V
    .registers 6
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .line 105
    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 106
    return-void
.end method

.method public whitelist loadIdentity()V
    .registers 5

    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput v2, v0, v1

    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x5

    aput v3, v0, v1

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput v2, v0, v1

    .line 97
    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .registers 13
    .param p1, "lhs"    # Landroid/renderscript/Matrix3f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix3f;

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_32

    .line 213
    const/4 v2, 0x0

    .line 214
    .local v2, "ri0":F
    const/4 v3, 0x0

    .line 215
    .local v3, "ri1":F
    const/4 v4, 0x0

    .line 216
    .local v4, "ri2":F
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_8
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ge v5, v1, :cond_26

    .line 217
    invoke-virtual {p2, v0, v5}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v9

    .line 218
    .local v9, "rhs_ij":F
    invoke-virtual {p1, v5, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v2, v7

    .line 219
    invoke-virtual {p1, v5, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v7

    mul-float/2addr v7, v9

    add-float/2addr v3, v7

    .line 220
    invoke-virtual {p1, v5, v6}, Landroid/renderscript/Matrix3f;->get(II)F

    move-result v6

    mul-float/2addr v6, v9

    add-float/2addr v4, v6

    .line 216
    .end local v9    # "rhs_ij":F
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 222
    .end local v5    # "j":I
    :cond_26
    invoke-virtual {p0, v0, v7, v2}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 223
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 224
    invoke-virtual {p0, v0, v6, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    .line 212
    .end local v2    # "ri0":F
    .end local v3    # "ri1":F
    .end local v4    # "ri2":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 226
    .end local v0    # "i":I
    :cond_32
    return-void
.end method

.method public whitelist loadRotate(F)V
    .registers 7
    .param p1, "rot"    # F

    .line 154
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 156
    const v0, 0x3c8efa35

    mul-float/2addr p1, v0

    .line 157
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 158
    .local v0, "c":F
    float-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 159
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x0

    aput v0, v2, v3

    .line 160
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x1

    neg-float v4, v1

    aput v4, v2, v3

    .line 161
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x3

    aput v1, v2, v3

    .line 162
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v3, 0x4

    aput v0, v2, v3

    .line 163
    return-void
.end method

.method public whitelist loadRotate(FFFF)V
    .registers 23
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 119
    move-object/from16 v0, p0

    const v1, 0x3c8efa35

    mul-float v1, v1, p1

    .line 120
    .end local p1    # "rot":F
    .local v1, "rot":F
    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 121
    .local v2, "c":F
    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    .line 123
    .local v3, "s":F
    mul-float v4, p2, p2

    mul-float v5, p3, p3

    add-float/2addr v4, v5

    mul-float v5, p4, p4

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 124
    .local v4, "len":F
    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v6, v4, v5

    if-nez v6, :cond_30

    .line 125
    div-float v6, v5, v4

    .line 126
    .local v6, "recipLen":F
    mul-float v7, p2, v6

    .line 127
    .end local p2    # "x":F
    .local v7, "x":F
    mul-float v8, p3, v6

    .line 128
    .end local p3    # "y":F
    .local v8, "y":F
    mul-float v9, p4, v6

    .end local p4    # "z":F
    .local v9, "z":F
    goto :goto_36

    .line 124
    .end local v6    # "recipLen":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "z":F
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    .restart local p4    # "z":F
    :cond_30
    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 130
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "z":F
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    .restart local v9    # "z":F
    :goto_36
    sub-float/2addr v5, v2

    .line 131
    .local v5, "nc":F
    mul-float v6, v7, v8

    .line 132
    .local v6, "xy":F
    mul-float v10, v8, v9

    .line 133
    .local v10, "yz":F
    mul-float v11, v9, v7

    .line 134
    .local v11, "zx":F
    mul-float v12, v7, v3

    .line 135
    .local v12, "xs":F
    mul-float v13, v8, v3

    .line 136
    .local v13, "ys":F
    mul-float v14, v9, v3

    .line 137
    .local v14, "zs":F
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v7, v7

    mul-float v16, v16, v5

    add-float v16, v16, v2

    const/16 v17, 0x0

    aput v16, v15, v17

    .line 138
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v6, v5

    sub-float v16, v16, v14

    const/16 v17, 0x3

    aput v16, v15, v17

    .line 139
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v11, v5

    add-float v16, v16, v13

    const/16 v17, 0x6

    aput v16, v15, v17

    .line 140
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v6, v5

    add-float v16, v16, v14

    const/16 v17, 0x1

    aput v16, v15, v17

    .line 141
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v8, v8

    mul-float v16, v16, v5

    add-float v16, v16, v2

    const/16 v17, 0x4

    aput v16, v15, v17

    .line 142
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v10, v5

    sub-float v16, v16, v12

    const/16 v17, 0x7

    aput v16, v15, v17

    .line 143
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v11, v5

    sub-float v16, v16, v13

    const/16 v17, 0x2

    aput v16, v15, v17

    .line 144
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v10, v5

    add-float v16, v16, v12

    const/16 v17, 0x5

    aput v16, v15, v17

    .line 145
    iget-object v15, v0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-float v16, v9, v9

    mul-float v16, v16, v5

    add-float v16, v16, v2

    const/16 v17, 0x8

    aput v16, v15, v17

    .line 146
    return-void
.end method

.method public whitelist loadScale(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 172
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 173
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 174
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 175
    return-void
.end method

.method public whitelist loadScale(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 185
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 186
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 187
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x4

    aput p2, v0, v1

    .line 188
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/16 v1, 0x8

    aput p3, v0, v1

    .line 189
    return-void
.end method

.method public whitelist loadTranslate(FF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 199
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    .line 200
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x6

    aput p1, v0, v1

    .line 201
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v1, 0x7

    aput p2, v0, v1

    .line 202
    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix3f;)V
    .registers 3
    .param p1, "rhs"    # Landroid/renderscript/Matrix3f;

    .line 234
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 235
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    .line 236
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    .line 237
    return-void
.end method

.method public whitelist rotate(F)V
    .registers 3
    .param p1, "rot"    # F

    .line 261
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 262
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    .line 263
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 264
    return-void
.end method

.method public whitelist rotate(FFFF)V
    .registers 6
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 249
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 250
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    .line 251
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 252
    return-void
.end method

.method public whitelist scale(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 274
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 275
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    .line 276
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 277
    return-void
.end method

.method public whitelist scale(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 288
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 289
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    .line 290
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 291
    return-void
.end method

.method public whitelist set(IIF)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .line 79
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v1, p1, 0x3

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 80
    return-void
.end method

.method public whitelist translate(FF)V
    .registers 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 301
    new-instance v0, Landroid/renderscript/Matrix3f;

    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    .line 302
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    .line 303
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    .line 304
    return-void
.end method

.method public whitelist transpose()V
    .registers 8

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2b

    .line 311
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_6
    const/4 v2, 0x3

    if-ge v1, v2, :cond_28

    .line 312
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, v1

    aget v2, v2, v3

    .line 313
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v0, 0x3

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v6, v1, 0x3

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 314
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    mul-int/lit8 v4, v1, 0x3

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 311
    .end local v2    # "temp":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 310
    .end local v1    # "j":I
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 317
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method
