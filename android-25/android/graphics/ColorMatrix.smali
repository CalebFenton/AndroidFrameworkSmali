.class public Landroid/graphics/ColorMatrix;
.super Ljava/lang/Object;
.source "ColorMatrix.java"


# instance fields
.field private final mArray:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 62
    const/16 v0, 0x14

    #@5
    new-array v0, v0, [F

    #@7
    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@9
    .line 69
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    #@c
    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    const/16 v3, 0x14

    #@2
    const/4 v2, 0x0

    #@3
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 62
    new-array v0, v3, [F

    #@8
    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@a
    .line 83
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    #@c
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@e
    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@11
    .line 82
    return-void
.end method

.method public constructor <init>([F)V
    .locals 3
    .param p1, "src"    # [F

    #@0
    .prologue
    const/16 v2, 0x14

    #@2
    const/4 v1, 0x0

    #@3
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 62
    new-array v0, v2, [F

    #@8
    iput-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@a
    .line 76
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@c
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@f
    .line 75
    return-void
.end method


# virtual methods
.method public final getArray()[F
    .locals 1

    #@0
    .prologue
    .line 89
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@2
    return-object v0
.end method

.method public postConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "postmatrix"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    .line 224
    invoke-virtual {p0, p1, p0}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    #@3
    .line 223
    return-void
.end method

.method public preConcat(Landroid/graphics/ColorMatrix;)V
    .locals 0
    .param p1, "prematrix"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    .line 214
    invoke-virtual {p0, p0, p1}, Landroid/graphics/ColorMatrix;->setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V

    #@3
    .line 213
    return-void
.end method

.method public reset()V
    .locals 3

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 101
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@4
    .line 102
    .local v0, "a":[F
    const/4 v1, 0x0

    #@5
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    #@8
    .line 103
    const/16 v1, 0x12

    #@a
    aput v2, v0, v1

    #@c
    const/16 v1, 0xc

    #@e
    aput v2, v0, v1

    #@10
    const/4 v1, 0x6

    #@11
    aput v2, v0, v1

    #@13
    const/4 v1, 0x0

    #@14
    aput v2, v0, v1

    #@16
    .line 100
    return-void
.end method

.method public set(Landroid/graphics/ColorMatrix;)V
    .locals 4
    .param p1, "src"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 110
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    #@3
    iget-object v1, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@5
    const/16 v2, 0x14

    #@7
    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@a
    .line 109
    return-void
.end method

.method public set([F)V
    .locals 3
    .param p1, "src"    # [F

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 117
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@3
    const/16 v1, 0x14

    #@5
    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@8
    .line 116
    return-void
.end method

.method public setConcat(Landroid/graphics/ColorMatrix;Landroid/graphics/ColorMatrix;)V
    .locals 13
    .param p1, "matA"    # Landroid/graphics/ColorMatrix;
    .param p2, "matB"    # Landroid/graphics/ColorMatrix;

    #@0
    .prologue
    const/4 v12, 0x4

    #@1
    const/4 v11, 0x0

    #@2
    const/16 v10, 0x14

    #@4
    .line 183
    if-eq p1, p0, :cond_0

    #@6
    if-ne p2, p0, :cond_1

    #@8
    .line 184
    :cond_0
    new-array v6, v10, [F

    #@a
    .line 189
    .local v6, "tmp":[F
    :goto_0
    iget-object v0, p1, Landroid/graphics/ColorMatrix;->mArray:[F

    #@c
    .line 190
    .local v0, "a":[F
    iget-object v1, p2, Landroid/graphics/ColorMatrix;->mArray:[F

    #@e
    .line 191
    .local v1, "b":[F
    const/4 v3, 0x0

    #@f
    .line 192
    .local v3, "index":I
    const/4 v5, 0x0

    #@10
    .local v5, "j":I
    :goto_1
    if-ge v5, v10, :cond_3

    #@12
    .line 193
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    move v4, v3

    #@14
    .end local v3    # "index":I
    .local v4, "index":I
    :goto_2
    if-ge v2, v12, :cond_2

    #@16
    .line 194
    add-int/lit8 v3, v4, 0x1

    #@18
    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v5, 0x0

    #@1a
    aget v7, v0, v7

    #@1c
    add-int/lit8 v8, v2, 0x0

    #@1e
    aget v8, v1, v8

    #@20
    mul-float/2addr v7, v8

    #@21
    add-int/lit8 v8, v5, 0x1

    #@23
    aget v8, v0, v8

    #@25
    add-int/lit8 v9, v2, 0x5

    #@27
    aget v9, v1, v9

    #@29
    mul-float/2addr v8, v9

    #@2a
    add-float/2addr v7, v8

    #@2b
    .line 195
    add-int/lit8 v8, v5, 0x2

    #@2d
    aget v8, v0, v8

    #@2f
    add-int/lit8 v9, v2, 0xa

    #@31
    aget v9, v1, v9

    #@33
    mul-float/2addr v8, v9

    #@34
    .line 194
    add-float/2addr v7, v8

    #@35
    .line 195
    add-int/lit8 v8, v5, 0x3

    #@37
    aget v8, v0, v8

    #@39
    add-int/lit8 v9, v2, 0xf

    #@3b
    aget v9, v1, v9

    #@3d
    mul-float/2addr v8, v9

    #@3e
    .line 194
    add-float/2addr v7, v8

    #@3f
    aput v7, v6, v4

    #@41
    .line 193
    add-int/lit8 v2, v2, 0x1

    #@43
    move v4, v3

    #@44
    .end local v3    # "index":I
    .restart local v4    # "index":I
    goto :goto_2

    #@45
    .line 186
    .end local v0    # "a":[F
    .end local v1    # "b":[F
    .end local v2    # "i":I
    .end local v4    # "index":I
    .end local v5    # "j":I
    .end local v6    # "tmp":[F
    :cond_1
    iget-object v6, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@47
    .restart local v6    # "tmp":[F
    goto :goto_0

    #@48
    .line 197
    .restart local v0    # "a":[F
    .restart local v1    # "b":[F
    .restart local v2    # "i":I
    .restart local v4    # "index":I
    .restart local v5    # "j":I
    :cond_2
    add-int/lit8 v3, v4, 0x1

    #@4a
    .end local v4    # "index":I
    .restart local v3    # "index":I
    add-int/lit8 v7, v5, 0x0

    #@4c
    aget v7, v0, v7

    #@4e
    aget v8, v1, v12

    #@50
    mul-float/2addr v7, v8

    #@51
    add-int/lit8 v8, v5, 0x1

    #@53
    aget v8, v0, v8

    #@55
    const/16 v9, 0x9

    #@57
    aget v9, v1, v9

    #@59
    mul-float/2addr v8, v9

    #@5a
    add-float/2addr v7, v8

    #@5b
    .line 198
    add-int/lit8 v8, v5, 0x2

    #@5d
    aget v8, v0, v8

    #@5f
    const/16 v9, 0xe

    #@61
    aget v9, v1, v9

    #@63
    mul-float/2addr v8, v9

    #@64
    .line 197
    add-float/2addr v7, v8

    #@65
    .line 198
    add-int/lit8 v8, v5, 0x3

    #@67
    aget v8, v0, v8

    #@69
    const/16 v9, 0x13

    #@6b
    aget v9, v1, v9

    #@6d
    mul-float/2addr v8, v9

    #@6e
    .line 197
    add-float/2addr v7, v8

    #@6f
    .line 199
    add-int/lit8 v8, v5, 0x4

    #@71
    aget v8, v0, v8

    #@73
    .line 197
    add-float/2addr v7, v8

    #@74
    aput v7, v6, v4

    #@76
    .line 192
    add-int/lit8 v5, v5, 0x5

    #@78
    goto :goto_1

    #@79
    .line 202
    .end local v2    # "i":I
    :cond_3
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@7b
    if-eq v6, v7, :cond_4

    #@7d
    .line 203
    iget-object v7, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@7f
    invoke-static {v6, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy([FI[FII)V

    #@82
    .line 181
    :cond_4
    return-void
.end method

.method public setRGB2YUV()V
    .locals 4

    #@0
    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    #@2
    .line 252
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    #@5
    .line 253
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@7
    .line 255
    .local v0, "m":[F
    const v1, 0x3e991687    # 0.299f

    #@a
    const/4 v2, 0x0

    #@b
    aput v1, v0, v2

    #@d
    const v1, 0x3f1645a2    # 0.587f

    #@10
    const/4 v2, 0x1

    #@11
    aput v1, v0, v2

    #@13
    const v1, 0x3de978d5    # 0.114f

    #@16
    const/4 v2, 0x2

    #@17
    aput v1, v0, v2

    #@19
    .line 256
    const v1, -0x41d335d2    # -0.16874f

    #@1c
    const/4 v2, 0x5

    #@1d
    aput v1, v0, v2

    #@1f
    const v1, -0x41566517    # -0.33126f

    #@22
    const/4 v2, 0x6

    #@23
    aput v1, v0, v2

    #@25
    const/4 v1, 0x7

    #@26
    aput v3, v0, v1

    #@28
    .line 257
    const/16 v1, 0xa

    #@2a
    aput v3, v0, v1

    #@2c
    const v1, -0x4129a177    # -0.41869f

    #@2f
    const/16 v2, 0xb

    #@31
    aput v1, v0, v2

    #@33
    const v1, -0x42597a25    # -0.08131f

    #@36
    const/16 v2, 0xc

    #@38
    aput v1, v0, v2

    #@3a
    .line 251
    return-void
.end method

.method public setRotate(IF)V
    .locals 11
    .param p1, "axis"    # I
    .param p2, "degrees"    # F

    #@0
    .prologue
    const/16 v10, 0xc

    #@2
    const/4 v9, 0x6

    #@3
    const/4 v8, 0x0

    #@4
    .line 145
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    #@7
    .line 146
    float-to-double v4, p2

    #@8
    const-wide v6, 0x400921fb54442d18L    # Math.PI

    #@d
    mul-double/2addr v4, v6

    #@e
    const-wide v6, 0x4066800000000000L    # 180.0

    #@13
    div-double v2, v4, v6

    #@15
    .line 147
    .local v2, "radians":D
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    #@18
    move-result-wide v4

    #@19
    double-to-float v0, v4

    #@1a
    .line 148
    .local v0, "cosine":F
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    #@1d
    move-result-wide v4

    #@1e
    double-to-float v1, v4

    #@1f
    .line 149
    .local v1, "sine":F
    packed-switch p1, :pswitch_data_0

    #@22
    .line 169
    new-instance v4, Ljava/lang/RuntimeException;

    #@24
    invoke-direct {v4}, Ljava/lang/RuntimeException;-><init>()V

    #@27
    throw v4

    #@28
    .line 152
    :pswitch_0
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@2a
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@2c
    aput v0, v5, v10

    #@2e
    aput v0, v4, v9

    #@30
    .line 153
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@32
    const/4 v5, 0x7

    #@33
    aput v1, v4, v5

    #@35
    .line 154
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@37
    neg-float v5, v1

    #@38
    const/16 v6, 0xb

    #@3a
    aput v5, v4, v6

    #@3c
    .line 144
    :goto_0
    return-void

    #@3d
    .line 158
    :pswitch_1
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@3f
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@41
    aput v0, v5, v10

    #@43
    aput v0, v4, v8

    #@45
    .line 159
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@47
    neg-float v5, v1

    #@48
    const/4 v6, 0x2

    #@49
    aput v5, v4, v6

    #@4b
    .line 160
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@4d
    const/16 v5, 0xa

    #@4f
    aput v1, v4, v5

    #@51
    goto :goto_0

    #@52
    .line 164
    :pswitch_2
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@54
    iget-object v5, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@56
    aput v0, v5, v9

    #@58
    aput v0, v4, v8

    #@5a
    .line 165
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@5c
    const/4 v5, 0x1

    #@5d
    aput v1, v4, v5

    #@5f
    .line 166
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@61
    neg-float v5, v1

    #@62
    const/4 v6, 0x5

    #@63
    aput v5, v4, v6

    #@65
    goto :goto_0

    #@66
    .line 149
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setSaturation(F)V
    .locals 7
    .param p1, "sat"    # F

    #@0
    .prologue
    .line 235
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    #@3
    .line 236
    iget-object v4, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@5
    .line 238
    .local v4, "m":[F
    const/high16 v5, 0x3f800000    # 1.0f

    #@7
    sub-float v3, v5, p1

    #@9
    .line 239
    .local v3, "invSat":F
    const v5, 0x3e5a1cac    # 0.213f

    #@c
    mul-float v2, v5, v3

    #@e
    .line 240
    .local v2, "R":F
    const v5, 0x3f370a3d    # 0.715f

    #@11
    mul-float v1, v5, v3

    #@13
    .line 241
    .local v1, "G":F
    const v5, 0x3d9374bc    # 0.072f

    #@16
    mul-float v0, v5, v3

    #@18
    .line 243
    .local v0, "B":F
    add-float v5, v2, p1

    #@1a
    const/4 v6, 0x0

    #@1b
    aput v5, v4, v6

    #@1d
    const/4 v5, 0x1

    #@1e
    aput v1, v4, v5

    #@20
    const/4 v5, 0x2

    #@21
    aput v0, v4, v5

    #@23
    .line 244
    const/4 v5, 0x5

    #@24
    aput v2, v4, v5

    #@26
    add-float v5, v1, p1

    #@28
    const/4 v6, 0x6

    #@29
    aput v5, v4, v6

    #@2b
    const/4 v5, 0x7

    #@2c
    aput v0, v4, v5

    #@2e
    .line 245
    const/16 v5, 0xa

    #@30
    aput v2, v4, v5

    #@32
    const/16 v5, 0xb

    #@34
    aput v1, v4, v5

    #@36
    add-float v5, v0, p1

    #@38
    const/16 v6, 0xc

    #@3a
    aput v5, v4, v6

    #@3c
    .line 234
    return-void
.end method

.method public setScale(FFFF)V
    .locals 4
    .param p1, "rScale"    # F
    .param p2, "gScale"    # F
    .param p3, "bScale"    # F
    .param p4, "aScale"    # F

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 125
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@3
    .line 127
    .local v0, "a":[F
    const/16 v1, 0x13

    #@5
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    #@7
    .line 128
    const/4 v2, 0x0

    #@8
    aput v2, v0, v1

    #@a
    .line 127
    add-int/lit8 v1, v1, -0x1

    #@c
    goto :goto_0

    #@d
    .line 130
    :cond_0
    aput p1, v0, v3

    #@f
    .line 131
    const/4 v2, 0x6

    #@10
    aput p2, v0, v2

    #@12
    .line 132
    const/16 v2, 0xc

    #@14
    aput p3, v0, v2

    #@16
    .line 133
    const/16 v2, 0x12

    #@18
    aput p4, v0, v2

    #@1a
    .line 124
    return-void
.end method

.method public setYUV2RGB()V
    .locals 4

    #@0
    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    #@2
    .line 264
    invoke-virtual {p0}, Landroid/graphics/ColorMatrix;->reset()V

    #@5
    .line 265
    iget-object v0, p0, Landroid/graphics/ColorMatrix;->mArray:[F

    #@7
    .line 267
    .local v0, "m":[F
    const v1, 0x3fb374bc    # 1.402f

    #@a
    const/4 v2, 0x2

    #@b
    aput v1, v0, v2

    #@d
    .line 268
    const/4 v1, 0x5

    #@e
    aput v3, v0, v1

    #@10
    const v1, -0x414fcce2    # -0.34414f

    #@13
    const/4 v2, 0x6

    #@14
    aput v1, v0, v2

    #@16
    const v1, -0x40c92e1f    # -0.71414f

    #@19
    const/4 v2, 0x7

    #@1a
    aput v1, v0, v2

    #@1c
    .line 269
    const/16 v1, 0xa

    #@1e
    aput v3, v0, v1

    #@20
    const v1, 0x3fe2d0e5    # 1.772f

    #@23
    const/16 v2, 0xb

    #@25
    aput v1, v0, v2

    #@27
    const/4 v1, 0x0

    #@28
    const/16 v2, 0xc

    #@2a
    aput v1, v0, v2

    #@2c
    .line 263
    return-void
.end method
