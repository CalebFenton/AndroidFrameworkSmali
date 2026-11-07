.class public Landroid/renderscript/Matrix4f;
.super Ljava/lang/Object;
.source "Matrix4f.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final greylist mMat:[F


# direct methods
.method public constructor whitelist <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 37
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 38
    return-void
.end method

.method public constructor whitelist <init>([F)V
    .registers 5
    .param p1, "dataArray"    # [F

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    .line 49
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 50
    return-void
.end method

.method private greylist-max-o computeCofactor(II)F
    .registers 15
    .param p1, "i"    # I
    .param p2, "j"    # I

    .line 408
    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    .line 409
    .local v0, "c0":I
    add-int/lit8 v1, p1, 0x2

    rem-int/lit8 v1, v1, 0x4

    .line 410
    .local v1, "c1":I
    add-int/lit8 v2, p1, 0x3

    rem-int/lit8 v2, v2, 0x4

    .line 411
    .local v2, "c2":I
    add-int/lit8 v3, p2, 0x1

    rem-int/lit8 v3, v3, 0x4

    .line 412
    .local v3, "r0":I
    add-int/lit8 v4, p2, 0x2

    rem-int/lit8 v4, v4, 0x4

    .line 413
    .local v4, "r1":I
    add-int/lit8 v5, p2, 0x3

    rem-int/lit8 v5, v5, 0x4

    .line 415
    .local v5, "r2":I
    iget-object v6, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v0

    aget v6, v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v1

    aget v7, v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v2

    aget v8, v8, v9

    mul-float/2addr v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v9, v5, 0x4

    add-int/2addr v9, v1

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v0

    aget v7, v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v1

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v5, 0x4

    add-int/2addr v10, v1

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v2

    aget v10, v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    iget-object v7, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v8, v5, 0x4

    add-int/2addr v8, v0

    aget v7, v7, v8

    iget-object v8, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v9, v3, 0x4

    add-int/2addr v9, v1

    aget v8, v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v2

    aget v9, v9, v10

    mul-float/2addr v8, v9

    iget-object v9, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v10, v4, 0x4

    add-int/2addr v10, v1

    aget v9, v9, v10

    iget-object v10, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v11, v3, 0x4

    add-int/2addr v11, v2

    aget v10, v10, v11

    mul-float/2addr v9, v10

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    .line 422
    .local v6, "minor":F
    add-int v7, p1, p2

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_97

    neg-float v7, v6

    goto :goto_98

    :cond_97
    move v7, v6

    .line 423
    .local v7, "cofactor":F
    :goto_98
    return v7
.end method


# virtual methods
.method public whitelist get(II)F
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 71
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getArray()[F
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    return-object v0
.end method

.method public whitelist inverse()Z
    .registers 11

    .line 431
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 433
    .local v0, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1d

    .line 434
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_a
    if-ge v3, v2, :cond_1a

    .line 435
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v3

    invoke-direct {p0, v1, v3}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v6

    aput v6, v4, v5

    .line 434
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 433
    .end local v3    # "j":I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 440
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v3

    mul-float/2addr v1, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v4, v2

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v2, v2, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x2

    aget v4, v4, v6

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v2, v2, v4

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v6, 0x3

    aget v4, v4, v6

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 443
    .local v1, "det":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v6, v2

    const-wide v8, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v6, v8

    if-gez v2, :cond_5b

    .line 444
    return v3

    .line 447
    :cond_5b
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    .line 448
    .end local v1    # "det":F
    .local v2, "det":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    const/16 v3, 0x10

    if-ge v1, v3, :cond_6f

    .line 449
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v2

    aput v4, v3, v1

    .line 448
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 452
    .end local v1    # "i":I
    :cond_6f
    return v5
.end method

.method public whitelist inverseTranspose()Z
    .registers 9

    .line 460
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 462
    .local v0, "result":Landroid/renderscript/Matrix4f;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_1d

    .line 463
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_a
    if-ge v3, v2, :cond_1a

    .line 464
    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v5, v3, 0x4

    add-int/2addr v5, v1

    invoke-direct {p0, v1, v3}, Landroid/renderscript/Matrix4f;->computeCofactor(II)F

    move-result v6

    aput v6, v4, v5

    .line 463
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 462
    .end local v3    # "j":I
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 468
    .end local v1    # "i":I
    :cond_1d
    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v3

    mul-float/2addr v1, v4

    iget-object v4, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v2

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v2, v5, v2

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0x8

    aget v2, v2, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v4, 0xc

    aget v2, v2, v4

    iget-object v5, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v5, v4

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    .line 471
    .local v1, "det":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v4, v2

    const-wide v6, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v2, v4, v6

    if-gez v2, :cond_58

    .line 472
    return v3

    .line 475
    :cond_58
    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v1

    .line 476
    .end local v1    # "det":F
    .local v2, "det":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5c
    const/16 v3, 0x10

    if-ge v1, v3, :cond_6c

    .line 477
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    aget v4, v4, v1

    mul-float/2addr v4, v2

    aput v4, v3, v1

    .line 476
    add-int/lit8 v1, v1, 0x1

    goto :goto_5c

    .line 480
    .end local v1    # "i":I
    :cond_6c
    const/4 v1, 0x1

    return v1
.end method

.method public greylist-max-o load(Landroid/renderscript/Matrix3f;)V
    .registers 7
    .param p1, "src"    # Landroid/renderscript/Matrix3f;

    .line 125
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    aput v1, v0, v2

    .line 126
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    aput v1, v0, v2

    .line 127
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    aput v1, v0, v2

    .line 128
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 130
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/4 v3, 0x4

    aput v1, v0, v3

    .line 131
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x5

    aput v1, v0, v3

    .line 132
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v3

    const/4 v3, 0x6

    aput v1, v0, v3

    .line 133
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v2, v0, v1

    .line 135
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v4, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v3, v4, v3

    const/16 v4, 0x8

    aput v3, v0, v4

    .line 136
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v3, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v3, v1

    const/16 v3, 0x9

    aput v1, v0, v3

    .line 137
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v1, p1, Landroid/renderscript/Matrix3f;->mMat:[F

    aget v1, v1, v4

    const/16 v3, 0xa

    aput v1, v0, v3

    .line 138
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    .line 140
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    .line 141
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    .line 142
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    .line 143
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 144
    return-void
.end method

.method public whitelist load(Landroid/renderscript/Matrix4f;)V
    .registers 6
    .param p1, "src"    # Landroid/renderscript/Matrix4f;

    .line 115
    invoke-virtual {p1}, Landroid/renderscript/Matrix4f;->getArray()[F

    move-result-object v0

    iget-object v1, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    return-void
.end method

.method public whitelist loadFrustum(FFFFFF)V
    .registers 11
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .line 295
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 296
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v2, p5, v1

    sub-float v3, p2, p1

    div-float/2addr v2, v3

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 297
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float/2addr v1, p5

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 298
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p2, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 299
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p4, p3

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0x9

    aput v1, v0, v2

    .line 300
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 301
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v0, v1

    .line 302
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, -0x40000000    # -2.0f

    mul-float/2addr v1, p6

    mul-float/2addr v1, p5

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 303
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 304
    return-void
.end method

.method public whitelist loadIdentity()V
    .registers 5

    .line 88
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 89
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    .line 90
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x2

    aput v3, v0, v1

    .line 91
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 93
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x4

    aput v3, v0, v1

    .line 94
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 95
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x6

    aput v3, v0, v1

    .line 96
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x7

    aput v3, v0, v1

    .line 98
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x8

    aput v3, v0, v1

    .line 99
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0x9

    aput v3, v0, v1

    .line 100
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput v2, v0, v1

    .line 101
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xb

    aput v3, v0, v1

    .line 103
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput v3, v0, v1

    .line 104
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput v3, v0, v1

    .line 105
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput v3, v0, v1

    .line 106
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xf

    aput v2, v0, v1

    .line 107
    return-void
.end method

.method public whitelist loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V
    .registers 15
    .param p1, "lhs"    # Landroid/renderscript/Matrix4f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix4f;

    .line 230
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_3d

    .line 231
    const/4 v2, 0x0

    .line 232
    .local v2, "ri0":F
    const/4 v3, 0x0

    .line 233
    .local v3, "ri1":F
    const/4 v4, 0x0

    .line 234
    .local v4, "ri2":F
    const/4 v5, 0x0

    .line 235
    .local v5, "ri3":F
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_9
    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ge v6, v1, :cond_2e

    .line 236
    invoke-virtual {p2, v0, v6}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v11

    .line 237
    .local v11, "rhs_ij":F
    invoke-virtual {p1, v6, v9}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v2, v9

    .line 238
    invoke-virtual {p1, v6, v10}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v9

    mul-float/2addr v9, v11

    add-float/2addr v3, v9

    .line 239
    invoke-virtual {p1, v6, v8}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v8

    mul-float/2addr v8, v11

    add-float/2addr v4, v8

    .line 240
    invoke-virtual {p1, v6, v7}, Landroid/renderscript/Matrix4f;->get(II)F

    move-result v7

    mul-float/2addr v7, v11

    add-float/2addr v5, v7

    .line 235
    .end local v11    # "rhs_ij":F
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 242
    .end local v6    # "j":I
    :cond_2e
    invoke-virtual {p0, v0, v9, v2}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 243
    invoke-virtual {p0, v0, v10, v3}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 244
    invoke-virtual {p0, v0, v8, v4}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 245
    invoke-virtual {p0, v0, v7, v5}, Landroid/renderscript/Matrix4f;->set(IIF)V

    .line 230
    .end local v2    # "ri0":F
    .end local v3    # "ri1":F
    .end local v4    # "ri2":F
    .end local v5    # "ri3":F
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 247
    .end local v0    # "i":I
    :cond_3d
    return-void
.end method

.method public whitelist loadOrtho(FFFFFF)V
    .registers 11
    .param p1, "l"    # F
    .param p2, "r"    # F
    .param p3, "b"    # F
    .param p4, "t"    # F
    .param p5, "n"    # F
    .param p6, "f"    # F

    .line 260
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 261
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p2, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v2, v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 262
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    sub-float v1, p4, p3

    div-float/2addr v2, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    .line 263
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/high16 v1, -0x40000000    # -2.0f

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xa

    aput v1, v0, v2

    .line 264
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p2, p1

    neg-float v1, v1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    const/16 v2, 0xc

    aput v1, v0, v2

    .line 265
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p4, p3

    neg-float v1, v1

    sub-float v2, p4, p3

    div-float/2addr v1, v2

    const/16 v2, 0xd

    aput v1, v0, v2

    .line 266
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    add-float v1, p6, p5

    neg-float v1, v1

    sub-float v2, p6, p5

    div-float/2addr v1, v2

    const/16 v2, 0xe

    aput v1, v0, v2

    .line 267
    return-void
.end method

.method public whitelist loadOrthoWindow(II)V
    .registers 10
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 280
    int-to-float v2, p1

    int-to-float v3, p2

    const/high16 v5, -0x40800000    # -1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/renderscript/Matrix4f;->loadOrtho(FFFFFF)V

    .line 281
    return-void
.end method

.method public whitelist loadPerspective(FFFF)V
    .registers 13
    .param p1, "fovy"    # F
    .param p2, "aspect"    # F
    .param p3, "near"    # F
    .param p4, "far"    # F

    .line 315
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4076800000000000L    # 360.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float v5, p3, v0

    .line 316
    .local v5, "top":F
    neg-float v4, v5

    .line 317
    .local v4, "bottom":F
    mul-float v2, v4, p2

    .line 318
    .local v2, "left":F
    mul-float v3, v5, p2

    .line 319
    .local v3, "right":F
    move-object v1, p0

    move v6, p3

    move v7, p4

    .end local p3    # "near":F
    .end local p4    # "far":F
    .local v6, "near":F
    .local v7, "far":F
    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 320
    return-void
.end method

.method public whitelist loadProjectionNormalized(II)V
    .registers 11
    .param p1, "w"    # I
    .param p2, "h"    # I

    .line 332
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    move-object v1, v0

    .line 333
    .local v1, "m1":Landroid/renderscript/Matrix4f;
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 335
    .local v0, "m2":Landroid/renderscript/Matrix4f;
    if-le p1, p2, :cond_1e

    .line 336
    int-to-float v2, p1

    int-to-float v3, p2

    div-float v3, v2, v3

    .line 337
    .local v3, "aspect":F
    neg-float v2, v3

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 338
    .end local v3    # "aspect":F
    goto :goto_2e

    .line 339
    :cond_1e
    int-to-float v2, p2

    int-to-float v3, p1

    div-float v5, v2, v3

    .line 340
    .local v5, "aspect":F
    neg-float v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v7}, Landroid/renderscript/Matrix4f;->loadFrustum(FFFFFF)V

    .line 343
    .end local v5    # "aspect":F
    :goto_2e
    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v3, v4, v3}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 344
    invoke-virtual {v1, v1, v0}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 346
    const/high16 v2, -0x40000000    # -2.0f

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v0, v2, v5, v4}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 347
    invoke-virtual {v1, v1, v0}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 349
    invoke-virtual {v0, v3, v3, v5}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 350
    invoke-virtual {v1, v1, v0}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 352
    invoke-virtual {p0, v1}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 353
    return-void
.end method

.method public whitelist loadRotate(FFFF)V
    .registers 23
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 157
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v2, 0x3

    const/4 v3, 0x0

    aput v3, v1, v2

    .line 158
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v2, 0x7

    aput v3, v1, v2

    .line 159
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xb

    aput v3, v1, v2

    .line 160
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xc

    aput v3, v1, v2

    .line 161
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xd

    aput v3, v1, v2

    .line 162
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xe

    aput v3, v1, v2

    .line 163
    iget-object v1, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v2, 0xf

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    .line 164
    const v1, 0x3c8efa35

    mul-float v1, v1, p1

    .line 165
    .end local p1    # "rot":F
    .local v1, "rot":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v2, v4

    .line 166
    .local v2, "c":F
    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 168
    .local v4, "s":F
    mul-float v5, p2, p2

    mul-float v6, p3, p3

    add-float/2addr v5, v6

    mul-float v6, p4, p4

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    .line 169
    .local v5, "len":F
    cmpl-float v6, v5, v3

    if-nez v6, :cond_59

    .line 170
    div-float v6, v3, v5

    .line 171
    .local v6, "recipLen":F
    mul-float v7, p2, v6

    .line 172
    .end local p2    # "x":F
    .local v7, "x":F
    mul-float v8, p3, v6

    .line 173
    .end local p3    # "y":F
    .local v8, "y":F
    mul-float v9, p4, v6

    .end local p4    # "z":F
    .local v9, "z":F
    goto :goto_5f

    .line 169
    .end local v6    # "recipLen":F
    .end local v7    # "x":F
    .end local v8    # "y":F
    .end local v9    # "z":F
    .restart local p2    # "x":F
    .restart local p3    # "y":F
    .restart local p4    # "z":F
    :cond_59
    move/from16 v7, p2

    move/from16 v8, p3

    move/from16 v9, p4

    .line 175
    .end local p2    # "x":F
    .end local p3    # "y":F
    .end local p4    # "z":F
    .restart local v7    # "x":F
    .restart local v8    # "y":F
    .restart local v9    # "z":F
    :goto_5f
    sub-float/2addr v3, v2

    .line 176
    .local v3, "nc":F
    mul-float v6, v7, v8

    .line 177
    .local v6, "xy":F
    mul-float v10, v8, v9

    .line 178
    .local v10, "yz":F
    mul-float v11, v9, v7

    .line 179
    .local v11, "zx":F
    mul-float v12, v7, v4

    .line 180
    .local v12, "xs":F
    mul-float v13, v8, v4

    .line 181
    .local v13, "ys":F
    mul-float v14, v9, v4

    .line 182
    .local v14, "zs":F
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v7, v7

    mul-float v16, v16, v3

    add-float v16, v16, v2

    const/16 v17, 0x0

    aput v16, v15, v17

    .line 183
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v6, v3

    sub-float v16, v16, v14

    const/16 v17, 0x4

    aput v16, v15, v17

    .line 184
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v11, v3

    add-float v16, v16, v13

    const/16 v17, 0x8

    aput v16, v15, v17

    .line 185
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v6, v3

    add-float v16, v16, v14

    const/16 v17, 0x1

    aput v16, v15, v17

    .line 186
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v8, v8

    mul-float v16, v16, v3

    add-float v16, v16, v2

    const/16 v17, 0x5

    aput v16, v15, v17

    .line 187
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v10, v3

    sub-float v16, v16, v12

    const/16 v17, 0x9

    aput v16, v15, v17

    .line 188
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v11, v3

    sub-float v16, v16, v13

    const/16 v17, 0x2

    aput v16, v15, v17

    .line 189
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v10, v3

    add-float v16, v16, v12

    const/16 v17, 0x6

    aput v16, v15, v17

    .line 190
    iget-object v15, v0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-float v16, v9, v9

    mul-float v16, v16, v3

    add-float v16, v16, v2

    const/16 v17, 0xa

    aput v16, v15, v17

    .line 191
    return-void
.end method

.method public whitelist loadScale(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 201
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 202
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    .line 203
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/4 v1, 0x5

    aput p2, v0, v1

    .line 204
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xa

    aput p3, v0, v1

    .line 205
    return-void
.end method

.method public whitelist loadTranslate(FFF)V
    .registers 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 216
    invoke-virtual {p0}, Landroid/renderscript/Matrix4f;->loadIdentity()V

    .line 217
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xc

    aput p1, v0, v1

    .line 218
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xd

    aput p2, v0, v1

    .line 219
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    const/16 v1, 0xe

    aput p3, v0, v1

    .line 220
    return-void
.end method

.method public whitelist multiply(Landroid/renderscript/Matrix4f;)V
    .registers 3
    .param p1, "rhs"    # Landroid/renderscript/Matrix4f;

    .line 361
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 362
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix4f;->loadMultiply(Landroid/renderscript/Matrix4f;Landroid/renderscript/Matrix4f;)V

    .line 363
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->load(Landroid/renderscript/Matrix4f;)V

    .line 364
    return-void
.end method

.method public whitelist rotate(FFFF)V
    .registers 6
    .param p1, "rot"    # F
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "z"    # F

    .line 375
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 376
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/renderscript/Matrix4f;->loadRotate(FFFF)V

    .line 377
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 378
    return-void
.end method

.method public whitelist scale(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 389
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 390
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadScale(FFF)V

    .line 391
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 392
    return-void
.end method

.method public whitelist set(IIF)V
    .registers 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "v"    # F

    .line 81
    iget-object v0, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    aput p3, v0, v1

    .line 82
    return-void
.end method

.method public whitelist translate(FFF)V
    .registers 5
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .line 403
    new-instance v0, Landroid/renderscript/Matrix4f;

    invoke-direct {v0}, Landroid/renderscript/Matrix4f;-><init>()V

    .line 404
    .local v0, "tmp":Landroid/renderscript/Matrix4f;
    invoke-virtual {v0, p1, p2, p3}, Landroid/renderscript/Matrix4f;->loadTranslate(FFF)V

    .line 405
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix4f;->multiply(Landroid/renderscript/Matrix4f;)V

    .line 406
    return-void
.end method

.method public whitelist transpose()V
    .registers 8

    .line 487
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x3

    if-ge v0, v1, :cond_2b

    .line 488
    add-int/lit8 v1, v0, 0x1

    .local v1, "j":I
    :goto_6
    const/4 v2, 0x4

    if-ge v1, v2, :cond_28

    .line 489
    iget-object v2, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v3, v0, 0x4

    add-int/2addr v3, v1

    aget v2, v2, v3

    .line 490
    .local v2, "temp":F
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, v1

    iget-object v5, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    aget v5, v5, v6

    aput v5, v3, v4

    .line 491
    iget-object v3, p0, Landroid/renderscript/Matrix4f;->mMat:[F

    mul-int/lit8 v4, v1, 0x4

    add-int/2addr v4, v0

    aput v2, v3, v4

    .line 488
    .end local v2    # "temp":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 487
    .end local v1    # "j":I
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 494
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method
