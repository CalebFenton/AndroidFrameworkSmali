.class public Landroid/renderscript/Matrix2f;
.super Ljava/lang/Object;
.source "Matrix2f.java"


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
    const/4 v0, 0x4

    #@4
    new-array v0, v0, [F

    #@6
    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@8
    .line 31
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    #@b
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
    const/4 v0, 0x4

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@9
    .line 43
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@b
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@d
    array-length v1, v1

    #@e
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@11
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
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@2
    mul-int/lit8 v1, p1, 0x2

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
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@2
    return-object v0
.end method

.method public load(Landroid/renderscript/Matrix2f;)V
    .locals 4
    .param p1, "src"    # Landroid/renderscript/Matrix2f;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 95
    invoke-virtual {p1}, Landroid/renderscript/Matrix2f;->getArray()[F

    #@4
    move-result-object v0

    #@5
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@7
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@9
    array-length v2, v2

    #@a
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@d
    .line 94
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
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput v3, v0, v1

    #@8
    .line 83
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@a
    const/4 v1, 0x1

    #@b
    aput v2, v0, v1

    #@d
    .line 85
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@f
    const/4 v1, 0x2

    #@10
    aput v2, v0, v1

    #@12
    .line 86
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@14
    const/4 v1, 0x3

    #@15
    aput v3, v0, v1

    #@17
    .line 81
    return-void
.end method

.method public loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V
    .locals 9
    .param p1, "lhs"    # Landroid/renderscript/Matrix2f;
    .param p2, "rhs"    # Landroid/renderscript/Matrix2f;

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    const/4 v7, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 134
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    #@6
    .line 135
    const/4 v3, 0x0

    #@7
    .line 136
    .local v3, "ri0":F
    const/4 v4, 0x0

    #@8
    .line 137
    .local v4, "ri1":F
    const/4 v1, 0x0

    #@9
    .local v1, "j":I
    :goto_1
    if-ge v1, v8, :cond_0

    #@b
    .line 138
    invoke-virtual {p2, v0, v1}, Landroid/renderscript/Matrix2f;->get(II)F

    #@e
    move-result v2

    #@f
    .line 139
    .local v2, "rhs_ij":F
    invoke-virtual {p1, v1, v6}, Landroid/renderscript/Matrix2f;->get(II)F

    #@12
    move-result v5

    #@13
    mul-float/2addr v5, v2

    #@14
    add-float/2addr v3, v5

    #@15
    .line 140
    invoke-virtual {p1, v1, v7}, Landroid/renderscript/Matrix2f;->get(II)F

    #@18
    move-result v5

    #@19
    mul-float/2addr v5, v2

    #@1a
    add-float/2addr v4, v5

    #@1b
    .line 137
    add-int/lit8 v1, v1, 0x1

    #@1d
    goto :goto_1

    #@1e
    .line 142
    .end local v2    # "rhs_ij":F
    :cond_0
    invoke-virtual {p0, v0, v6, v3}, Landroid/renderscript/Matrix2f;->set(IIF)V

    #@21
    .line 143
    invoke-virtual {p0, v0, v7, v4}, Landroid/renderscript/Matrix2f;->set(IIF)V

    #@24
    .line 134
    add-int/lit8 v0, v0, 0x1

    #@26
    goto :goto_0

    #@27
    .line 133
    .end local v1    # "j":I
    .end local v3    # "ri0":F
    .end local v4    # "ri1":F
    :cond_1
    return-void
.end method

.method public loadRotate(F)V
    .locals 5
    .param p1, "rot"    # F

    #@0
    .prologue
    .line 105
    const v2, 0x3c8efa35

    #@3
    mul-float/2addr p1, v2

    #@4
    .line 106
    float-to-double v2, p1

    #@5
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@8
    move-result-wide v2

    #@9
    double-to-float v0, v2

    #@a
    .line 107
    .local v0, "c":F
    float-to-double v2, p1

    #@b
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@e
    move-result-wide v2

    #@f
    double-to-float v1, v2

    #@10
    .line 108
    .local v1, "s":F
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@12
    const/4 v3, 0x0

    #@13
    aput v0, v2, v3

    #@15
    .line 109
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@17
    neg-float v3, v1

    #@18
    const/4 v4, 0x1

    #@19
    aput v3, v2, v4

    #@1b
    .line 110
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@1d
    const/4 v3, 0x2

    #@1e
    aput v1, v2, v3

    #@20
    .line 111
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@22
    const/4 v3, 0x3

    #@23
    aput v0, v2, v3

    #@25
    .line 103
    return-void
.end method

.method public loadScale(FF)V
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 121
    invoke-virtual {p0}, Landroid/renderscript/Matrix2f;->loadIdentity()V

    #@3
    .line 122
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@5
    const/4 v1, 0x0

    #@6
    aput p1, v0, v1

    #@8
    .line 123
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@a
    const/4 v1, 0x3

    #@b
    aput p2, v0, v1

    #@d
    .line 120
    return-void
.end method

.method public multiply(Landroid/renderscript/Matrix2f;)V
    .locals 1
    .param p1, "rhs"    # Landroid/renderscript/Matrix2f;

    #@0
    .prologue
    .line 153
    new-instance v0, Landroid/renderscript/Matrix2f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    #@5
    .line 154
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p0, p1}, Landroid/renderscript/Matrix2f;->loadMultiply(Landroid/renderscript/Matrix2f;Landroid/renderscript/Matrix2f;)V

    #@8
    .line 155
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->load(Landroid/renderscript/Matrix2f;)V

    #@b
    .line 152
    return-void
.end method

.method public rotate(F)V
    .locals 1
    .param p1, "rot"    # F

    #@0
    .prologue
    .line 164
    new-instance v0, Landroid/renderscript/Matrix2f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    #@5
    .line 165
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1}, Landroid/renderscript/Matrix2f;->loadRotate(F)V

    #@8
    .line 166
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    #@b
    .line 163
    return-void
.end method

.method public scale(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    #@0
    .prologue
    .line 176
    new-instance v0, Landroid/renderscript/Matrix2f;

    #@2
    invoke-direct {v0}, Landroid/renderscript/Matrix2f;-><init>()V

    #@5
    .line 177
    .local v0, "tmp":Landroid/renderscript/Matrix2f;
    invoke-virtual {v0, p1, p2}, Landroid/renderscript/Matrix2f;->loadScale(FF)V

    #@8
    .line 178
    invoke-virtual {p0, v0}, Landroid/renderscript/Matrix2f;->multiply(Landroid/renderscript/Matrix2f;)V

    #@b
    .line 175
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
    iget-object v0, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@2
    mul-int/lit8 v1, p1, 0x2

    #@4
    add-int/2addr v1, p2

    #@5
    aput p3, v0, v1

    #@7
    .line 74
    return-void
.end method

.method public transpose()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v3, 0x1

    #@2
    .line 184
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@4
    aget v0, v1, v3

    #@6
    .line 185
    .local v0, "temp":F
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@8
    iget-object v2, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@a
    aget v2, v2, v4

    #@c
    aput v2, v1, v3

    #@e
    .line 186
    iget-object v1, p0, Landroid/renderscript/Matrix2f;->mMat:[F

    #@10
    aput v0, v1, v4

    #@12
    .line 183
    return-void
.end method
