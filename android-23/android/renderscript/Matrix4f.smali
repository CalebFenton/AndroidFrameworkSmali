.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# instance fields
.field final mMat:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 32
    const/16 v0, 0x10

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@9
    .line 33
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@c
    .line 31
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "dataArray"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 44
    const/16 v0, 0x10

    #@6
    new-array v0, v0, [F

    #@8
    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@a
    .line 45
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@c
    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@e
    array-length v1, v1

    #@f
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@12
    .line 43
    return-void
.end method

.method private computeCofactor(II)F
    .locals 14
    .param p1, "i"    # I
    .param p2, "j"    # I

    #@0
    .prologue
    .line 404
    add-int/lit8 v8, p1, 0x1

    #@2
    rem-int/lit8 v0, v8, 0x4

    #@4
    .line 405
    .local v0, "c0":I
    add-int/lit8 v8, p1, 0x2

    #@6
    rem-int/lit8 v1, v8, 0x4

    #@8
    .line 406
    .local v1, "c1":I
    add-int/lit8 v8, p1, 0x3

    #@a
    rem-int/lit8 v2, v8, 0x4

    #@c
    .line 407
    .local v2, "c2":I
    add-int/lit8 v8, p2, 0x1

    #@e
    rem-int/lit8 v5, v8, 0x4

    #@10
    .line 408
    .local v5, "r0":I
    add-int/lit8 v8, p2, 0x2

    #@12
    rem-int/lit8 v6, v8, 0x4

    #@14
    .line 409
    .local v6, "r1":I
    add-int/lit8 v8, p2, 0x3

    #@16
    rem-int/lit8 v7, v8, 0x4

    #@18
    .line 411
    .local v7, "r2":I
    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@1a
    mul-int/lit8 v9, v5, 0x4

    #@1c
    add-int/2addr v9, v0

    #@1d
    aget v8, v8, v9

    #@1f
    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@21
    mul-int/lit8 v10, v6, 0x4

    #@23
    add-int/2addr v10, v1

    #@24
    aget v9, v9, v10

    #@26
    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@28
    mul-int/lit8 v11, v7, 0x4

    #@2a
    add-int/2addr v11, v2

    #@2b
    aget v10, v10, v11

    #@2d
    mul-float/2addr v9, v10

    #@2e
    .line 412
    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@30
    mul-int/lit8 v11, v7, 0x4

    #@32
    add-int/2addr v11, v1

    #@33
    aget v10, v10, v11

    #@35
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@37
    mul-int/lit8 v12, v6, 0x4

    #@39
    add-int/2addr v12, v2

    #@3a
    aget v11, v11, v12

    #@3c
    mul-float/2addr v10, v11

    #@3d
    .line 411
    sub-float/2addr v9, v10

    #@3e
    mul-float/2addr v8, v9

    #@3f
    .line 413
    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@41
    mul-int/lit8 v10, v6, 0x4

    #@43
    add-int/2addr v10, v0

    #@44
    aget v9, v9, v10

    #@46
    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@48
    mul-int/lit8 v11, v5, 0x4

    #@4a
    add-int/2addr v11, v1

    #@4b
    aget v10, v10, v11

    #@4d
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@4f
    mul-int/lit8 v12, v7, 0x4

    #@51
    add-int/2addr v12, v2

    #@52
    aget v11, v11, v12

    #@54
    mul-float/2addr v10, v11

    #@55
    .line 414
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@57
    mul-int/lit8 v12, v7, 0x4

    #@59
    add-int/2addr v12, v1

    #@5a
    aget v11, v11, v12

    #@5c
    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@5e
    mul-int/lit8 v13, v5, 0x4

    #@60
    add-int/2addr v13, v2

    #@61
    aget v12, v12, v13

    #@63
    mul-float/2addr v11, v12

    #@64
    .line 413
    sub-float/2addr v10, v11

    #@65
    mul-float/2addr v9, v10

    #@66
    .line 411
    sub-float/2addr v8, v9

    #@67
    .line 415
    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@69
    mul-int/lit8 v10, v7, 0x4

    #@6b
    add-int/2addr v10, v0

    #@6c
    aget v9, v9, v10

    #@6e
    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@70
    mul-int/lit8 v11, v5, 0x4

    #@72
    add-int/2addr v11, v1

    #@73
    aget v10, v10, v11

    #@75
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@77
    mul-int/lit8 v12, v6, 0x4

    #@79
    add-int/2addr v12, v2

    #@7a
    aget v11, v11, v12

    #@7c
    mul-float/2addr v10, v11

    #@7d
    .line 416
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7f
    mul-int/lit8 v12, v6, 0x4

    #@81
    add-int/2addr v12, v1

    #@82
    aget v11, v11, v12

    #@84
    iget-object v12, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@86
    mul-int/lit8 v13, v5, 0x4

    #@88
    add-int/2addr v13, v2

    #@89
    aget v12, v12, v13

    #@8b
    mul-float/2addr v11, v12

    #@8c
    .line 415
    sub-float/2addr v10, v11

    #@8d
    mul-float/2addr v9, v10

    #@8e
    .line 411
    add-float v4, v8, v9

    #@90
    .line 418
    .local v4, "minor":F
    add-int v8, p1, p2

    #@92
    and-int/lit8 v8, v8, 0x1

    #@94
    if-eqz v8, :cond_0

    #@96
    neg-float v3, v4

    #@97
    .line 419
    .local v3, "cofactor":F
    :goto_0
    return v3

    #@98
    .line 418
    .end local v3    # "cofactor":F
    :cond_0
    move v3, v4

    #@99
    .restart local v3    # "cofactor":F
    goto :goto_0
.end method


# virtual methods
.method public get(II)F
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    #@0
    .prologue
    .line 67
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2
    mul-int/lit8 v1, p1, 0x4

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
    .line 55
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2
    return-object v0
.end method

.method public inverse()Z
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    const/4 v7, 0x4

    #@3
    .line 427
    new-instance v3, Landroid/renderscript/Matrix4f;

    #@5
    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    #@8
    .line 429
    .local v3, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    #@9
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    #@b
    .line 430
    const/4 v2, 0x0

    #@c
    .local v2, "j":I
    :goto_1
    if-ge v2, v7, :cond_0

    #@e
    .line 431
    iget-object v4, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@10
    mul-int/lit8 v5, v1, 0x4

    #@12
    add-int/2addr v5, v2

    #@13
    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    #@16
    move-result v6

    #@17
    aput v6, v4, v5

    #@19
    .line 430
    add-int/lit8 v2, v2, 0x1

    #@1b
    goto :goto_1

    #@1c
    .line 429
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 436
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@21
    aget v4, v4, v8

    #@23
    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@25
    aget v5, v5, v8

    #@27
    mul-float/2addr v4, v5

    #@28
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2a
    aget v5, v5, v7

    #@2c
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2e
    aget v6, v6, v9

    #@30
    mul-float/2addr v5, v6

    #@31
    add-float/2addr v4, v5

    #@32
    .line 437
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@34
    const/16 v6, 0x8

    #@36
    aget v5, v5, v6

    #@38
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@3a
    const/4 v7, 0x2

    #@3b
    aget v6, v6, v7

    #@3d
    mul-float/2addr v5, v6

    #@3e
    .line 436
    add-float/2addr v4, v5

    #@3f
    .line 437
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@41
    const/16 v6, 0xc

    #@43
    aget v5, v5, v6

    #@45
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@47
    const/4 v7, 0x3

    #@48
    aget v6, v6, v7

    #@4a
    mul-float/2addr v5, v6

    #@4b
    .line 436
    add-float v0, v4, v5

    #@4d
    .line 439
    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@50
    move-result v4

    #@51
    float-to-double v4, v4

    #@52
    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    #@57
    cmpg-double v4, v4, v6

    #@59
    if-gez v4, :cond_2

    #@5b
    .line 440
    return v8

    #@5c
    .line 443
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    #@5e
    div-float v0, v4, v0

    #@60
    .line 444
    const/4 v1, 0x0

    #@61
    :goto_2
    const/16 v4, 0x10

    #@63
    if-ge v1, v4, :cond_3

    #@65
    .line 445
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@67
    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@69
    aget v5, v5, v1

    #@6b
    mul-float/2addr v5, v0

    #@6c
    aput v5, v4, v1

    #@6e
    .line 444
    add-int/lit8 v1, v1, 0x1

    #@70
    goto :goto_2

    #@71
    .line 448
    :cond_3
    return v9
.end method

.method public inverseTranspose()Z
    .locals 11

    #@0
    .prologue
    const/16 v10, 0xc

    #@2
    const/16 v9, 0x8

    #@4
    const/4 v8, 0x0

    #@5
    const/4 v7, 0x4

    #@6
    .line 456
    new-instance v3, Landroid/renderscript/Matrix4f;

    #@8
    invoke-direct {v3}, Landroid/renderscript/Matrix4f;-><init>()V

    #@b
    .line 458
    .local v3, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    #@c
    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_1

    #@e
    .line 459
    const/4 v2, 0x0

    #@f
    .local v2, "j":I
    :goto_1
    if-ge v2, v7, :cond_0

    #@11
    .line 460
    iget-object v4, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@13
    mul-int/lit8 v5, v2, 0x4

    #@15
    add-int/2addr v5, v1

    #@16
    invoke-direct {p0, v1, v2}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    #@19
    move-result v6

    #@1a
    aput v6, v4, v5

    #@1c
    .line 459
    add-int/lit8 v2, v2, 0x1

    #@1e
    goto :goto_1

    #@1f
    .line 458
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0

    #@22
    .line 464
    .end local v2    # "j":I
    :cond_1
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@24
    aget v4, v4, v8

    #@26
    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@28
    aget v5, v5, v8

    #@2a
    mul-float/2addr v4, v5

    #@2b
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2d
    aget v5, v5, v7

    #@2f
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@31
    aget v6, v6, v7

    #@33
    mul-float/2addr v5, v6

    #@34
    add-float/2addr v4, v5

    #@35
    .line 465
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@37
    aget v5, v5, v9

    #@39
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@3b
    aget v6, v6, v9

    #@3d
    mul-float/2addr v5, v6

    #@3e
    .line 464
    add-float/2addr v4, v5

    #@3f
    .line 465
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@41
    aget v5, v5, v10

    #@43
    iget-object v6, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@45
    aget v6, v6, v10

    #@47
    mul-float/2addr v5, v6

    #@48
    .line 464
    add-float v0, v4, v5

    #@4a
    .line 467
    .local v0, "det":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    #@4d
    move-result v4

    #@4e
    float-to-double v4, v4

    #@4f
    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    #@54
    cmpg-double v4, v4, v6

    #@56
    if-gez v4, :cond_2

    #@58
    .line 468
    return v8

    #@59
    .line 471
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    #@5b
    div-float v0, v4, v0

    #@5d
    .line 472
    const/4 v1, 0x0

    #@5e
    :goto_2
    const/16 v4, 0x10

    #@60
    if-ge v1, v4, :cond_3

    #@62
    .line 473
    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@64
    iget-object v5, v3, Landroid/renderscript/Matrix4f;->mMat:[F

    #@66
    aget v5, v5, v1

    #@68
    mul-float/2addr v5, v0

    #@69
    aput v5, v4, v1

    #@6b
    .line 472
    add-int/lit8 v1, v1, 0x1

    #@6d
    goto :goto_2

    #@6e
    .line 476
    :cond_3
    const/4 v4, 0x1

    #@6f
    return v4
.end method

.method public load(Landroid/renderscript/Matrix3f;)V
    .locals 7
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    const/4 v5, 0x2

    #@2
    const/4 v4, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    const/4 v3, 0x0

    #@5
    .line 121
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@9
    aget v1, v1, v2

    #@b
    aput v1, v0, v2

    #@d
    .line 122
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@f
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@11
    aget v1, v1, v4

    #@13
    aput v1, v0, v4

    #@15
    .line 123
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@17
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@19
    aget v1, v1, v5

    #@1b
    aput v1, v0, v5

    #@1d
    .line 124
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@1f
    aput v3, v0, v6

    #@21
    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@23
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@25
    aget v1, v1, v6

    #@27
    const/4 v2, 0x4

    #@28
    aput v1, v0, v2

    #@2a
    .line 127
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2c
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@2e
    const/4 v2, 0x4

    #@2f
    aget v1, v1, v2

    #@31
    const/4 v2, 0x5

    #@32
    aput v1, v0, v2

    #@34
    .line 128
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@36
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@38
    const/4 v2, 0x5

    #@39
    aget v1, v1, v2

    #@3b
    const/4 v2, 0x6

    #@3c
    aput v1, v0, v2

    #@3e
    .line 129
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@40
    const/4 v1, 0x7

    #@41
    aput v3, v0, v1

    #@43
    .line 131
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@45
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@47
    const/4 v2, 0x6

    #@48
    aget v1, v1, v2

    #@4a
    const/16 v2, 0x8

    #@4c
    aput v1, v0, v2

    #@4e
    .line 132
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@50
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@52
    const/4 v2, 0x7

    #@53
    aget v1, v1, v2

    #@55
    const/16 v2, 0x9

    #@57
    aput v1, v0, v2

    #@59
    .line 133
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@5b
    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    #@5d
    const/16 v2, 0x8

    #@5f
    aget v1, v1, v2

    #@61
    const/16 v2, 0xa

    #@63
    aput v1, v0, v2

    #@65
    .line 134
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@67
    const/16 v1, 0xb

    #@69
    aput v3, v0, v1

    #@6b
    .line 136
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@6d
    const/16 v1, 0xc

    #@6f
    aput v3, v0, v1

    #@71
    .line 137
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@73
    const/16 v1, 0xd

    #@75
    aput v3, v0, v1

    #@77
    .line 138
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@79
    const/16 v1, 0xe

    #@7b
    aput v3, v0, v1

    #@7d
    .line 139
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7f
    const/high16 v1, 0x3f800000    # 1.0f

    #@81
    const/16 v2, 0xf

    #@83
    aput v1, v0, v2

    #@85
    .line 120
    return-void
.end method

.method public load(Landroid/renderscript/Matrix4f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 111
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    #@4
    move-result-object v0

    #@5
    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@9
    array-length v2, v2

    #@a
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@d
    .line 110
    return-void
.end method

.method public loadFrustum(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    .line 291
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@5
    .line 292
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7
    mul-float v1, v3, p5

    #@9
    sub-float v2, p2, p1

    #@b
    div-float/2addr v1, v2

    #@c
    const/4 v2, 0x0

    #@d
    aput v1, v0, v2

    #@f
    .line 293
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@11
    mul-float v1, v3, p5

    #@13
    sub-float v2, p4, p3

    #@15
    div-float/2addr v1, v2

    #@16
    const/4 v2, 0x5

    #@17
    aput v1, v0, v2

    #@19
    .line 294
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@1b
    add-float v1, p2, p1

    #@1d
    sub-float v2, p2, p1

    #@1f
    div-float/2addr v1, v2

    #@20
    const/16 v2, 0x8

    #@22
    aput v1, v0, v2

    #@24
    .line 295
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@26
    add-float v1, p4, p3

    #@28
    sub-float v2, p4, p3

    #@2a
    div-float/2addr v1, v2

    #@2b
    const/16 v2, 0x9

    #@2d
    aput v1, v0, v2

    #@2f
    .line 296
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@31
    add-float v1, p6, p5

    #@33
    neg-float v1, v1

    #@34
    sub-float v2, p6, p5

    #@36
    div-float/2addr v1, v2

    #@37
    const/16 v2, 0xa

    #@39
    aput v1, v0, v2

    #@3b
    .line 297
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@3d
    const/high16 v1, -0x40800000    # -1.0f

    #@3f
    const/16 v2, 0xb

    #@41
    aput v1, v0, v2

    #@43
    .line 298
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@45
    const/high16 v1, -0x40000000    # -2.0f

    #@47
    mul-float/2addr v1, p6

    #@48
    mul-float/2addr v1, p5

    #@49
    sub-float v2, p6, p5

    #@4b
    div-float/2addr v1, v2

    #@4c
    const/16 v2, 0xe

    #@4e
    aput v1, v0, v2

    #@50
    .line 299
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@52
    const/4 v1, 0x0

    #@53
    const/16 v2, 0xf

    #@55
    aput v1, v0, v2

    #@57
    .line 290
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
    .line 84
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput v3, v0, v1

    #@8
    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@a
    const/4 v1, 0x1

    #@b
    aput v2, v0, v1

    #@d
    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@f
    const/4 v1, 0x2

    #@10
    aput v2, v0, v1

    #@12
    .line 87
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@14
    const/4 v1, 0x3

    #@15
    aput v2, v0, v1

    #@17
    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@19
    const/4 v1, 0x4

    #@1a
    aput v2, v0, v1

    #@1c
    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@1e
    const/4 v1, 0x5

    #@1f
    aput v3, v0, v1

    #@21
    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@23
    const/4 v1, 0x6

    #@24
    aput v2, v0, v1

    #@26
    .line 92
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@28
    const/4 v1, 0x7

    #@29
    aput v2, v0, v1

    #@2b
    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2d
    const/16 v1, 0x8

    #@2f
    aput v2, v0, v1

    #@31
    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@33
    const/16 v1, 0x9

    #@35
    aput v2, v0, v1

    #@37
    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@39
    const/16 v1, 0xa

    #@3b
    aput v3, v0, v1

    #@3d
    .line 97
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@3f
    const/16 v1, 0xb

    #@41
    aput v2, v0, v1

    #@43
    .line 99
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@45
    const/16 v1, 0xc

    #@47
    aput v2, v0, v1

    #@49
    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@4b
    const/16 v1, 0xd

    #@4d
    aput v2, v0, v1

    #@4f
    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@51
    const/16 v1, 0xe

    #@53
    aput v2, v0, v1

    #@55
    .line 102
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@57
    const/16 v1, 0xf

    #@59
    aput v3, v0, v1

    #@5b
    .line 83
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .locals 13
    .param p1, "lhs"    # Landroid/renderscript/Matrix4f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x3

    #@2
    const/4 v10, 0x2

    #@3
    const/4 v9, 0x1

    #@4
    const/4 v8, 0x0

    #@5
    .line 226
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    if-ge v0, v12, :cond_1

    #@8
    .line 227
    const/4 v3, 0x0

    #@9
    .line 228
    .local v3, "ri0":F
    const/4 v4, 0x0

    #@a
    .line 229
    .local v4, "ri1":F
    const/4 v5, 0x0

    #@b
    .line 230
    .local v5, "ri2":F
    const/4 v6, 0x0

    #@c
    .line 231
    .local v6, "ri3":F
    const/4 v1, 0x0

    #@d
    .local v1, "j":I
    :goto_1
    if-ge v1, v12, :cond_0

    #@f
    .line 232
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix4f;->get(II)F

    #@12
    move-result v2

    #@13
    .line 233
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    #@16
    move-result v7

    #@17
    mul-float/2addr v7, v2

    #@18
    add-float/2addr v3, v7

    #@19
    .line 234
    invoke-virtual {p1, v1, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    #@1c
    move-result v7

    #@1d
    mul-float/2addr v7, v2

    #@1e
    add-float/2addr v4, v7

    #@1f
    .line 235
    invoke-virtual {p1, v1, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    #@22
    move-result v7

    #@23
    mul-float/2addr v7, v2

    #@24
    add-float/2addr v5, v7

    #@25
    .line 236
    invoke-virtual {p1, v1, v11}, Landroid/renderscript/Matrix4f;->get(II)F

    #@28
    move-result v7

    #@29
    mul-float/2addr v7, v2

    #@2a
    add-float/2addr v6, v7

    #@2b
    .line 231
    add-int/lit8 v1, v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 238
    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v8, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@31
    .line 239
    invoke-virtual {p0, v0, v9, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@34
    .line 240
    invoke-virtual {p0, v0, v10, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@37
    .line 241
    invoke-virtual {p0, v0, v11, v6}, Landroid/renderscript/Matrix4f;->set(IIF)V

    #@3a
    .line 226
    add-int/lit8 v0, v0, 0x1

    #@3c
    goto :goto_0

    #@3d
    .line 225
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    .end local v5    # "ri2":F
    .end local v6    # "ri3":F
    :cond_1
    return-void
.end method

.method public loadOrtho(FFFFFF)V
    .locals 4
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    #@0
    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    #@2
    .line 256
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@5
    .line 257
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7
    sub-float v1, p2, p1

    #@9
    div-float v1, v3, v1

    #@b
    const/4 v2, 0x0

    #@c
    aput v1, v0, v2

    #@e
    .line 258
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@10
    sub-float v1, p4, p3

    #@12
    div-float v1, v3, v1

    #@14
    const/4 v2, 0x5

    #@15
    aput v1, v0, v2

    #@17
    .line 259
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@19
    sub-float v1, p6, p5

    #@1b
    const/high16 v2, -0x40000000    # -2.0f

    #@1d
    div-float v1, v2, v1

    #@1f
    const/16 v2, 0xa

    #@21
    aput v1, v0, v2

    #@23
    .line 260
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@25
    add-float v1, p2, p1

    #@27
    neg-float v1, v1

    #@28
    sub-float v2, p2, p1

    #@2a
    div-float/2addr v1, v2

    #@2b
    const/16 v2, 0xc

    #@2d
    aput v1, v0, v2

    #@2f
    .line 261
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@31
    add-float v1, p4, p3

    #@33
    neg-float v1, v1

    #@34
    sub-float v2, p4, p3

    #@36
    div-float/2addr v1, v2

    #@37
    const/16 v2, 0xd

    #@39
    aput v1, v0, v2

    #@3b
    .line 262
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@3d
    add-float v1, p6, p5

    #@3f
    neg-float v1, v1

    #@40
    sub-float v2, p6, p5

    #@42
    div-float/2addr v1, v2

    #@43
    const/16 v2, 0xe

    #@45
    aput v1, v0, v2

    #@47
    .line 255
    return-void
.end method

.method public loadOrthoWindow(II)V
    .locals 7
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 276
    int-to-float v2, p1

    #@2
    int-to-float v3, p2

    #@3
    const/high16 v5, -0x40800000    # -1.0f

    #@5
    const/high16 v6, 0x3f800000    # 1.0f

    #@7
    move-object v0, p0

    #@8
    move v4, v1

    #@9
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    #@c
    .line 275
    return-void
.end method

.method public loadPerspective(FFFF)V
    .locals 10
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "near"    # F
    .param p4, "far"    # F

    #@0
    .prologue
    .line 311
    float-to-double v6, p1

    #@1
    const-wide v8, 0x400921fb54442d18L    # Math.PI

    #@6
    mul-double/2addr v6, v8

    #@7
    const-wide v8, 0x4076800000000000L    # 360.0

    #@c
    div-double/2addr v6, v8

    #@d
    double-to-float v0, v6

    #@e
    float-to-double v6, v0

    #@f
    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    #@12
    move-result-wide v6

    #@13
    double-to-float v0, v6

    #@14
    mul-float v4, p3, v0

    #@16
    .line 312
    .local v4, "top":F
    neg-float v3, v4

    #@17
    .line 313
    .local v3, "bottom":F
    mul-float v1, v3, p2

    #@19
    .line 314
    .local v1, "left":F
    mul-float v2, v4, p2

    #@1b
    .local v2, "right":F
    move-object v0, p0

    #@1c
    move v5, p3

    #@1d
    move v6, p4

    #@1e
    .line 315
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    #@21
    .line 310
    return-void
.end method

.method public loadProjectionNormalized(II)V
    .locals 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    #@0
    .prologue
    .line 328
    new-instance v0, Landroid/renderscript/Matrix4f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    #@5
    .line 329
    .local v0, "m1":Landroid/renderscript/Matrix4f;
    new-instance v10, Landroid/renderscript/Matrix4f;

    #@7
    invoke-direct {v10}, Landroid/renderscript/Matrix4f;-><init>()V

    #@a
    .line 331
    .local v10, "m2":Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_0

    #@c
    .line 332
    int-to-float v1, p1

    #@d
    int-to-float v3, p2

    #@e
    div-float v2, v1, v3

    #@10
    .line 333
    .local v2, "aspect":F
    neg-float v1, v2

    #@11
    const/high16 v3, -0x40800000    # -1.0f

    #@13
    const/high16 v4, 0x3f800000    # 1.0f

    #@15
    const/high16 v5, 0x3f800000    # 1.0f

    #@17
    const/high16 v6, 0x42c80000    # 100.0f

    #@19
    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    #@1c
    .line 339
    :goto_0
    const/high16 v1, 0x43340000    # 180.0f

    #@1e
    const/4 v3, 0x0

    #@1f
    const/high16 v4, 0x3f800000    # 1.0f

    #@21
    const/4 v5, 0x0

    #@22
    invoke-virtual {v10, v1, v3, v4, v5}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    #@25
    .line 340
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    #@28
    .line 342
    const/high16 v1, -0x40000000    # -2.0f

    #@2a
    const/high16 v3, 0x40000000    # 2.0f

    #@2c
    const/high16 v4, 0x3f800000    # 1.0f

    #@2e
    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    #@31
    .line 343
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    #@34
    .line 345
    const/4 v1, 0x0

    #@35
    const/4 v3, 0x0

    #@36
    const/high16 v4, 0x40000000    # 2.0f

    #@38
    invoke-virtual {v10, v1, v3, v4}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    #@3b
    .line 346
    invoke-virtual {v0, v0, v10}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    #@3e
    .line 348
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    #@41
    .line 326
    return-void

    #@42
    .line 335
    .end local v2    # "aspect":F
    :cond_0
    int-to-float v1, p2

    #@43
    int-to-float v3, p1

    #@44
    div-float v2, v1, v3

    #@46
    .line 336
    .restart local v2    # "aspect":F
    const/high16 v4, -0x40800000    # -1.0f

    #@48
    const/high16 v5, 0x3f800000    # 1.0f

    #@4a
    neg-float v6, v2

    #@4b
    const/high16 v8, 0x3f800000    # 1.0f

    #@4d
    const/high16 v9, 0x42c80000    # 100.0f

    #@4f
    move-object v3, v0

    #@50
    move v7, v2

    #@51
    invoke-virtual/range {v3 .. v9}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    #@54
    goto :goto_0
.end method

.method public loadRotate(FFFF)V
    .locals 14
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    #@0
    .prologue
    .line 153
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2
    const/4 v12, 0x0

    #@3
    const/4 v13, 0x3

    #@4
    aput v12, v11, v13

    #@6
    .line 154
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@8
    const/4 v12, 0x0

    #@9
    const/4 v13, 0x7

    #@a
    aput v12, v11, v13

    #@c
    .line 155
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@e
    const/4 v12, 0x0

    #@f
    const/16 v13, 0xb

    #@11
    aput v12, v11, v13

    #@13
    .line 156
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@15
    const/4 v12, 0x0

    #@16
    const/16 v13, 0xc

    #@18
    aput v12, v11, v13

    #@1a
    .line 157
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@1c
    const/4 v12, 0x0

    #@1d
    const/16 v13, 0xd

    #@1f
    aput v12, v11, v13

    #@21
    .line 158
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@23
    const/4 v12, 0x0

    #@24
    const/16 v13, 0xe

    #@26
    aput v12, v11, v13

    #@28
    .line 159
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2a
    const/high16 v12, 0x3f800000    # 1.0f

    #@2c
    const/16 v13, 0xf

    #@2e
    aput v12, v11, v13

    #@30
    .line 160
    const v11, 0x3c8efa35

    #@33
    mul-float/2addr p1, v11

    #@34
    .line 161
    float-to-double v12, p1

    #@35
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    #@38
    move-result-wide v12

    #@39
    double-to-float v0, v12

    #@3a
    .line 162
    .local v0, "c":F
    float-to-double v12, p1

    #@3b
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    #@3e
    move-result-wide v12

    #@3f
    double-to-float v4, v12

    #@40
    .line 164
    .local v4, "s":F
    mul-float v11, p2, p2

    #@42
    mul-float v12, p3, p3

    #@44
    add-float/2addr v11, v12

    #@45
    mul-float v12, p4, p4

    #@47
    add-float/2addr v11, v12

    #@48
    float-to-double v12, v11

    #@49
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    #@4c
    move-result-wide v12

    #@4d
    double-to-float v1, v12

    #@4e
    .line 165
    .local v1, "len":F
    const/high16 v11, 0x3f800000    # 1.0f

    #@50
    cmpl-float v11, v1, v11

    #@52
    if-eqz v11, :cond_1

    #@54
    const/4 v11, 0x1

    #@55
    :goto_0
    if-nez v11, :cond_0

    #@57
    .line 166
    const/high16 v11, 0x3f800000    # 1.0f

    #@59
    div-float v3, v11, v1

    #@5b
    .line 167
    .local v3, "recipLen":F
    mul-float p2, p2, v3

    #@5d
    .line 168
    mul-float p3, p3, v3

    #@5f
    .line 169
    mul-float p4, p4, v3

    #@61
    .line 171
    .end local v3    # "recipLen":F
    :cond_0
    const/high16 v11, 0x3f800000    # 1.0f

    #@63
    sub-float v2, v11, v0

    #@65
    .line 172
    .local v2, "nc":F
    mul-float v6, p2, p3

    #@67
    .line 173
    .local v6, "xy":F
    mul-float v8, p3, p4

    #@69
    .line 174
    .local v8, "yz":F
    mul-float v10, p4, p2

    #@6b
    .line 175
    .local v10, "zx":F
    mul-float v5, p2, v4

    #@6d
    .line 176
    .local v5, "xs":F
    mul-float v7, p3, v4

    #@6f
    .line 177
    .local v7, "ys":F
    mul-float v9, p4, v4

    #@71
    .line 178
    .local v9, "zs":F
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@73
    mul-float v12, p2, p2

    #@75
    mul-float/2addr v12, v2

    #@76
    add-float/2addr v12, v0

    #@77
    const/4 v13, 0x0

    #@78
    aput v12, v11, v13

    #@7a
    .line 179
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@7c
    mul-float v12, v6, v2

    #@7e
    sub-float/2addr v12, v9

    #@7f
    const/4 v13, 0x4

    #@80
    aput v12, v11, v13

    #@82
    .line 180
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@84
    mul-float v12, v10, v2

    #@86
    add-float/2addr v12, v7

    #@87
    const/16 v13, 0x8

    #@89
    aput v12, v11, v13

    #@8b
    .line 181
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@8d
    mul-float v12, v6, v2

    #@8f
    add-float/2addr v12, v9

    #@90
    const/4 v13, 0x1

    #@91
    aput v12, v11, v13

    #@93
    .line 182
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@95
    mul-float v12, p3, p3

    #@97
    mul-float/2addr v12, v2

    #@98
    add-float/2addr v12, v0

    #@99
    const/4 v13, 0x5

    #@9a
    aput v12, v11, v13

    #@9c
    .line 183
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@9e
    mul-float v12, v8, v2

    #@a0
    sub-float/2addr v12, v5

    #@a1
    const/16 v13, 0x9

    #@a3
    aput v12, v11, v13

    #@a5
    .line 184
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@a7
    mul-float v12, v10, v2

    #@a9
    sub-float/2addr v12, v7

    #@aa
    const/4 v13, 0x2

    #@ab
    aput v12, v11, v13

    #@ad
    .line 185
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@af
    mul-float v12, v8, v2

    #@b1
    add-float/2addr v12, v5

    #@b2
    const/4 v13, 0x6

    #@b3
    aput v12, v11, v13

    #@b5
    .line 186
    iget-object v11, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@b7
    mul-float v12, p4, p4

    #@b9
    mul-float/2addr v12, v2

    #@ba
    add-float/2addr v12, v0

    #@bb
    const/16 v13, 0xa

    #@bd
    aput v12, v11, v13

    #@bf
    .line 151
    return-void

    #@c0
    .line 165
    .end local v2    # "nc":F
    .end local v5    # "xs":F
    .end local v6    # "xy":F
    .end local v7    # "ys":F
    .end local v8    # "yz":F
    .end local v9    # "zs":F
    .end local v10    # "zx":F
    :cond_1
    const/4 v11, 0x0

    #@c1
    goto :goto_0
.end method

.method public loadScale(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 197
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@3
    .line 198
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput p1, v0, v1

    #@8
    .line 199
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@a
    const/4 v1, 0x5

    #@b
    aput p2, v0, v1

    #@d
    .line 200
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@f
    const/16 v1, 0xa

    #@11
    aput p3, v0, v1

    #@13
    .line 196
    return-void
.end method

.method public loadTranslate(FFF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 212
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    #@3
    .line 213
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@5
    const/16 v1, 0xc

    #@7
    aput p1, v0, v1

    #@9
    .line 214
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@b
    const/16 v1, 0xd

    #@d
    aput p2, v0, v1

    #@f
    .line 215
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@11
    const/16 v1, 0xe

    #@13
    aput p3, v0, v1

    #@15
    .line 211
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix4f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix4f;

    #@0
    .prologue
    .line 357
    new-instance v0, Landroid/renderscript/Matrix4f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    #@5
    .line 358
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    #@8
    .line 359
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    #@b
    .line 356
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
    .line 371
    new-instance v0, Landroid/renderscript/Matrix4f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    #@5
    .line 372
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    #@8
    .line 373
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    #@b
    .line 370
    return-void
.end method

.method public scale(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 385
    new-instance v0, Landroid/renderscript/Matrix4f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    #@5
    .line 386
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    #@8
    .line 387
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    #@b
    .line 384
    return-void
.end method

.method public set(IIF)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    #@0
    .prologue
    .line 77
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@2
    mul-int/lit8 v1, p1, 0x4

    #@4
    add-int/2addr v1, p2

    #@5
    aput p3, v0, v1

    #@7
    .line 76
    return-void
.end method

.method public translate(FFF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    #@0
    .prologue
    .line 399
    new-instance v0, Landroid/renderscript/Matrix4f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    #@5
    .line 400
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    #@8
    .line 401
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    #@b
    .line 398
    return-void
.end method

.method public transpose()V
    .locals 7

    #@0
    .prologue
    .line 483
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    const/4 v3, 0x3

    #@2
    if-ge v0, v3, :cond_1

    #@4
    .line 484
    add-int/lit8 v1, v0, 0x1

    #@6
    .local v1, "j":I
    :goto_1
    const/4 v3, 0x4

    #@7
    if-ge v1, v3, :cond_0

    #@9
    .line 485
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@b
    mul-int/lit8 v4, v0, 0x4

    #@d
    add-int/2addr v4, v1

    #@e
    aget v2, v3, v4

    #@10
    .line 486
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@12
    mul-int/lit8 v4, v0, 0x4

    #@14
    add-int/2addr v4, v1

    #@15
    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@17
    mul-int/lit8 v6, v1, 0x4

    #@19
    add-int/2addr v6, v0

    #@1a
    aget v5, v5, v6

    #@1c
    aput v5, v3, v4

    #@1e
    .line 487
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    #@20
    mul-int/lit8 v4, v1, 0x4

    #@22
    add-int/2addr v4, v0

    #@23
    aput v2, v3, v4

    #@25
    .line 484
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_1

    #@28
    .line 483
    .end local v2    # "temp":F
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 482
    .end local v1    # "j":I
    :cond_1
    return-void
.end method
