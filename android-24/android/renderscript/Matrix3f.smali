.class public Landroid/renderscript/Matrix3f;
.super Ljava/lang/Object;
.source "Matrix3f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    const/16 v0, 0x9

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@9
    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    #@c
    .line 29
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 42
    const/16 v0, 0x9

    #@6
    new-array v0, v0, [F

    #@8
    iput-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@a
    .line 43
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@c
    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@e
    array-length v1, v1

    #@f
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@12
    .line 41
    return-void
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 65
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@2
    mul-int/lit8 v1, p1, 0x3

    #@4
    add-int/2addr v1, p2

    #@5
    aget v0, v0, v1

    #@7
    return v0
.end method

.method public getArray()[F
    .locals 1

    #@0
    .prologue
    .line 53
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@2
    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 101
    invoke-virtual {p1}, Landroid/renderscript/Matrix3f;->getArray()[F

    #@4
    move-result-object v0

    #@5
    iget-object v1, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@7
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@9
    array-length v2, v2

    #@a
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@d
    .line 100
    return-void
.end method

.method public loadIdentity()V
    .locals 4

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    const/4 v2, 0x0

    #@3
    .line 82
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput v3, v0, v1

    #@8
    .line 83
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@a
    const/4 v1, 0x1

    #@b
    aput v2, v0, v1

    #@d
    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@f
    const/4 v1, 0x2

    #@10
    aput v2, v0, v1

    #@12
    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@14
    const/4 v1, 0x3

    #@15
    aput v2, v0, v1

    #@17
    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@19
    const/4 v1, 0x4

    #@1a
    aput v3, v0, v1

    #@1c
    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@1e
    const/4 v1, 0x5

    #@1f
    aput v2, v0, v1

    #@21
    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@23
    const/4 v1, 0x6

    #@24
    aput v2, v0, v1

    #@26
    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@28
    const/4 v1, 0x7

    #@29
    aput v2, v0, v1

    #@2b
    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@2d
    const/16 v1, 0x8

    #@2f
    aput v3, v0, v1

    #@31
    .line 81
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V
    .locals 11
    .param p1, "lhs"    # Landroid/renderscript/Matrix3f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix3f;

    #@0
    .prologue
    const/4 v10, 0x3

    #@1
    const/4 v9, 0x2

    #@2
    const/4 v8, 0x1

    #@3
    const/4 v7, 0x0

    #@4
    .line 208
    const/4 v0, 0x0

    #@5
    .local v0, "i":I
    :goto_0
    if-ge v0, v10, :cond_1

    #@7
    .line 209
    const/4 v3, 0x0

    #@8
    .line 210
    .local v3, "ri0":F
    const/4 v4, 0x0

    #@9
    .line 211
    .local v4, "ri1":F
    const/4 v5, 0x0

    #@a
    .line 212
    .local v5, "ri2":F
    const/4 v1, 0x0

    #@b
    .local v1, "j":I
    :goto_1
    if-ge v1, v10, :cond_0

    #@d
    .line 213
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix3f;->get(II)F

    #@10
    move-result v2

    #@11
    .line 214
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v7}, Landroid/renderscript/Matrix3f;->get(II)F

    #@14
    move-result v6

    #@15
    mul-float/2addr v6, v2

    #@16
    add-float/2addr v3, v6

    #@17
    .line 215
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix3f;->get(II)F

    #@1a
    move-result v6

    #@1b
    mul-float/2addr v6, v2

    #@1c
    add-float/2addr v4, v6

    #@1d
    .line 216
    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix3f;->get(II)F

    #@20
    move-result v6

    #@21
    mul-float/2addr v6, v2

    #@22
    add-float/2addr v5, v6

    #@23
    .line 212
    add-int/lit8 v1, v1, 0x1

    #@25
    goto :goto_1

    #@26
    .line 218
    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v7, v3}, Landroid/renderscript/Matrix3f;->set(IIF)V

    #@29
    .line 219
    invoke-virtual {p0, v0, v8, v4}, Landroid/renderscript/Matrix3f;->set(IIF)V

    #@2c
    .line 220
    invoke-virtual {p0, v0, v9, v5}, Landroid/renderscript/Matrix3f;->set(IIF)V

    #@2f
    .line 208
    add-int/lit8 v0, v0, 0x1

    #@31
    goto :goto_0

    #@32
    .line 207
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5
    .param p1, "rot"    # F

    #@0
    .prologue
    .line 150
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    #@3
    .line 152
    const v2, 0x3c8efa35

    #@6
    mul-float/2addr p1, v2

    #@7
    .line 153
    float-to-double v2, p1

    #@8
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@b
    move-result-wide v2

    #@c
    double-to-float v0, v2

    #@d
    .line 154
    .local v0, "c":F
    float-to-double v2, p1

    #@e
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@11
    move-result-wide v2

    #@12
    double-to-float v1, v2

    #@13
    .line 155
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@15
    const/4 v3, 0x0

    #@16
    aput v0, v2, v3

    #@18
    .line 156
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@1a
    neg-float v3, v1

    #@1b
    const/4 v4, 0x1

    #@1c
    aput v3, v2, v4

    #@1e
    .line 157
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@20
    const/4 v3, 0x3

    #@21
    aput v1, v2, v3

    #@23
    .line 158
    iget-object v2, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@25
    const/4 v3, 0x4

    #@26
    aput v0, v2, v3

    #@28
    .line 149
    return-void
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    .line 115
    const v11, 0x3c8efa35

    #@3
    mul-float/2addr p1, v11

    #@4
    .line 116
    float-to-double v12, p1

    #@5
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@8
    move-result-wide v12

    #@9
    double-to-float v0, v12

    #@a
    .line 117
    .local v0, "c":F
    float-to-double v12, p1

    #@b
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@e
    move-result-wide v12

    #@f
    double-to-float v4, v12

    #@10
    .line 119
    .local v4, "s":F
    mul-float v11, p2, p2

    #@12
    mul-float v12, p3, p3

    #@14
    add-float/2addr v11, v12

    #@15
    mul-float v12, p4, p4

    #@17
    add-float/2addr v11, v12

    #@18
    float-to-double v12, v11

    #@19
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    #@1c
    move-result-wide v12

    #@1d
    double-to-float v1, v12

    #@1e
    .line 120
    .local v1, "len":F
    const/high16 v11, 0x3f800000    # 1.0f

    #@20
    cmpl-float v11, v1, v11

    #@22
    if-eqz v11, :cond_1

    #@24
    const/4 v11, 0x1

    #@25
    :goto_0
    if-nez v11, :cond_0

    #@27
    .line 121
    const/high16 v11, 0x3f800000    # 1.0f

    #@29
    div-float v3, v11, v1

    #@2b
    .line 122
    .local v3, "recipLen":F
    mul-float p2, p2, v3

    #@2d
    .line 123
    mul-float p3, p3, v3

    #@2f
    .line 124
    mul-float p4, p4, v3

    #@31
    .line 126
    .end local v3    # "recipLen":F
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    #@33
    sub-float v2, v11, v0

    #@35
    .line 127
    .local v2, "nc":F
    mul-float v6, p2, p3

    #@37
    .line 128
    .local v6, "xy":F
    mul-float v8, p3, p4

    #@39
    .line 129
    .local v8, "yz":F
    mul-float v10, p4, p2

    #@3b
    .line 130
    .local v10, "zx":F
    mul-float v5, p2, v4

    #@3d
    .line 131
    .local v5, "xs":F
    mul-float v7, p3, v4

    #@3f
    .line 132
    .local v7, "ys":F
    mul-float v9, p4, v4

    #@41
    .line 133
    .local v9, "zs":F
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@43
    mul-float v12, p2, p2

    #@45
    mul-float/2addr v12, v2

    #@46
    add-float/2addr v12, v0

    #@47
    const/4 v13, 0x0

    #@48
    aput v12, v11, v13

    #@4a
    .line 134
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@4c
    mul-float v12, v6, v2

    #@4e
    sub-float/2addr v12, v9

    #@4f
    const/4 v13, 0x3

    #@50
    aput v12, v11, v13

    #@52
    .line 135
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@54
    mul-float v12, v10, v2

    #@56
    add-float/2addr v12, v7

    #@57
    const/4 v13, 0x6

    #@58
    aput v12, v11, v13

    #@5a
    .line 136
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@5c
    mul-float v12, v6, v2

    #@5e
    add-float/2addr v12, v9

    #@5f
    const/4 v13, 0x1

    #@60
    aput v12, v11, v13

    #@62
    .line 137
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@64
    mul-float v12, p3, p3

    #@66
    mul-float/2addr v12, v2

    #@67
    add-float/2addr v12, v0

    #@68
    const/4 v13, 0x4

    #@69
    aput v12, v11, v13

    #@6b
    .line 138
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@6d
    mul-float v12, v8, v2

    #@6f
    sub-float/2addr v12, v5

    #@70
    const/4 v13, 0x7

    #@71
    aput v12, v11, v13

    #@73
    .line 139
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@75
    mul-float v12, v10, v2

    #@77
    sub-float/2addr v12, v7

    #@78
    const/4 v13, 0x2

    #@79
    aput v12, v11, v13

    #@7b
    .line 140
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@7d
    mul-float v12, v8, v2

    #@7f
    add-float/2addr v12, v5

    #@80
    const/4 v13, 0x5

    #@81
    aput v12, v11, v13

    #@83
    .line 141
    iget-object v11, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@85
    mul-float v12, p4, p4

    #@87
    mul-float/2addr v12, v2

    #@88
    add-float/2addr v12, v0

    #@89
    const/16 v13, 0x8

    #@8b
    aput v12, v11, v13

    #@8d
    .line 113
    return-void

    #@8e
    .line 120
    .end local v2    # "nc":F
    .end local v5    # "xs":F
    .end local v6    # "xy":F
    .end local v7    # "ys":F
    .end local v8    # "yz":F
    .end local v9    # "zs":F
    .end local v10    # "zx":F
    :cond_1
    const/4 v11, 0x0

    #@8f
    goto :goto_0
.end method

.method public loadScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 168
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    #@3
    .line 169
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput p1, v0, v1

    #@8
    .line 170
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@a
    const/4 v1, 0x4

    #@b
    aput p2, v0, v1

    #@d
    .line 167
    return-void
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 181
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    #@3
    .line 182
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput p1, v0, v1

    #@8
    .line 183
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@a
    const/4 v1, 0x4

    #@b
    aput p2, v0, v1

    #@d
    .line 184
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@f
    const/16 v1, 0x8

    #@11
    aput p3, v0, v1

    #@13
    .line 180
    return-void
.end method

.method public loadTranslate(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 195
    invoke-virtual {p0}, Landroid/renderscript/Matrix3f;->loadIdentity()V

    #@3
    .line 196
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@5
    const/4 v1, 0x6

    #@6
    aput p1, v0, v1

    #@8
    .line 197
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@a
    const/4 v1, 0x7

    #@b
    aput p2, v0, v1

    #@d
    .line 194
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix3f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix3f;

    #@0
    .prologue
    .line 230
    new-instance v0, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 231
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix3f;->loadMultiply(Landroid/renderscript/Matrix3f;Landroid/renderscript/Matrix3f;)V

    #@8
    .line 232
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->load(Landroid/renderscript/Matrix3f;)V

    #@b
    .line 229
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "rot"    # F

    #@0
    .prologue
    .line 257
    new-instance v0, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 258
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix3f;->loadRotate(F)V

    #@8
    .line 259
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    #@b
    .line 256
    return-void
.end method

.method public rotate(FFFF)V
    .locals 1
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    .line 245
    new-instance v0, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 246
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix3f;->loadRotate(FFFF)V

    #@8
    .line 247
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    #@b
    .line 244
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 270
    new-instance v0, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 271
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadScale(FF)V

    #@8
    .line 272
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    #@b
    .line 269
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 284
    new-instance v0, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 285
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix3f;->loadScale(FFF)V

    #@8
    .line 286
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    #@b
    .line 283
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    #@0
    .prologue
    .line 75
    iget-object v0, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@2
    mul-int/lit8 v1, p1, 0x3

    #@4
    add-int/2addr v1, p2

    #@5
    aput p3, v0, v1

    #@7
    .line 74
    return-void
.end method

.method public translate(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 297
    new-instance v0, Landroid/renderscript/Matrix3f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix3f;-><init>()V

    #@5
    .line 298
    .local v0, "tmp":Landroid/renderscript/Matrix3f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix3f;->loadTranslate(FF)V

    #@8
    .line 299
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix3f;->multiply(Landroid/renderscript/Matrix3f;)V

    #@b
    .line 296
    return-void
.end method

.method public transpose()V
    .locals 7

    #@0
    .prologue
    .line 306
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x2

    #@2
    if-ge v0, v3, :cond_1

    #@4
    .line 307
    add-int/lit8 v1, v0, 0x1

    #@6
    .local v1, "j":I
    :goto_1
    const/4 v3, 0x3

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 308
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@b
    mul-int/lit8 v4, v0, 0x3

    #@d
    add-int/2addr v4, v1

    #@e
    aget v2, v3, v4

    #@10
    .line 309
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@12
    mul-int/lit8 v4, v0, 0x3

    #@14
    add-int/2addr v4, v1

    #@15
    iget-object v5, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@17
    mul-int/lit8 v6, v1, 0x3

    #@19
    add-int/2addr v6, v0

    #@1a
    aget v5, v5, v6

    #@1c
    aput v5, v3, v4

    #@1e
    .line 310
    iget-object v3, p0, Landroid/renderscript/Matrix3f;->mMat:[F

    #@20
    mul-int/lit8 v4, v1, 0x3

    #@22
    add-int/2addr v4, v0

    #@23
    aput v2, v3, v4

    #@25
    .line 307
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_1

    #@28
    .line 306
    .end local v2    # "temp":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 305
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
