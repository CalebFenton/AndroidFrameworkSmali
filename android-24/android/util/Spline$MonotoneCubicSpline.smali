.class public Landroid/util/Spline$MonotoneCubicSpline;
.super Landroid/util/Spline;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/Spline;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MonotoneCubicSpline"
.end annotation


# instance fields
.field private mM:[F

.field private mX:[F

.field private mY:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 13
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    .line 129
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    #@5
    .line 130
    if-eqz p1, :cond_0

    #@7
    if-nez p2, :cond_1

    #@9
    .line 131
    :cond_0
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v9, "There must be at least two control points and the arrays must be of equal length."

    #@e
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v8

    #@12
    .line 130
    :cond_1
    array-length v8, p1

    #@13
    array-length v9, p2

    #@14
    if-ne v8, v9, :cond_0

    #@16
    array-length v8, p1

    #@17
    const/4 v9, 0x2

    #@18
    if-lt v8, v9, :cond_0

    #@1a
    .line 135
    array-length v6, p1

    #@1b
    .line 136
    .local v6, "n":I
    add-int/lit8 v8, v6, -0x1

    #@1d
    new-array v2, v8, [F

    #@1f
    .line 137
    .local v2, "d":[F
    new-array v5, v6, [F

    #@21
    .line 140
    .local v5, "m":[F
    const/4 v4, 0x0

    #@22
    .local v4, "i":I
    :goto_0
    add-int/lit8 v8, v6, -0x1

    #@24
    if-ge v4, v8, :cond_3

    #@26
    .line 141
    add-int/lit8 v8, v4, 0x1

    #@28
    aget v8, p1, v8

    #@2a
    aget v9, p1, v4

    #@2c
    sub-float v3, v8, v9

    #@2e
    .line 142
    .local v3, "h":F
    cmpg-float v8, v3, v12

    #@30
    if-gtz v8, :cond_2

    #@32
    .line 143
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@34
    const-string/jumbo v9, "The control points must all have strictly increasing X values."

    #@37
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v8

    #@3b
    .line 146
    :cond_2
    add-int/lit8 v8, v4, 0x1

    #@3d
    aget v8, p2, v8

    #@3f
    aget v9, p2, v4

    #@41
    sub-float/2addr v8, v9

    #@42
    div-float/2addr v8, v3

    #@43
    aput v8, v2, v4

    #@45
    .line 140
    add-int/lit8 v4, v4, 0x1

    #@47
    goto :goto_0

    #@48
    .line 150
    .end local v3    # "h":F
    :cond_3
    aget v8, v2, v10

    #@4a
    aput v8, v5, v10

    #@4c
    .line 151
    const/4 v4, 0x1

    #@4d
    :goto_1
    add-int/lit8 v8, v6, -0x1

    #@4f
    if-ge v4, v8, :cond_4

    #@51
    .line 152
    add-int/lit8 v8, v4, -0x1

    #@53
    aget v8, v2, v8

    #@55
    aget v9, v2, v4

    #@57
    add-float/2addr v8, v9

    #@58
    const/high16 v9, 0x3f000000    # 0.5f

    #@5a
    mul-float/2addr v8, v9

    #@5b
    aput v8, v5, v4

    #@5d
    .line 151
    add-int/lit8 v4, v4, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 154
    :cond_4
    add-int/lit8 v8, v6, -0x1

    #@62
    add-int/lit8 v9, v6, -0x2

    #@64
    aget v9, v2, v9

    #@66
    aput v9, v5, v8

    #@68
    .line 157
    const/4 v4, 0x0

    #@69
    :goto_2
    add-int/lit8 v8, v6, -0x1

    #@6b
    if-ge v4, v8, :cond_9

    #@6d
    .line 158
    aget v8, v2, v4

    #@6f
    cmpl-float v8, v8, v12

    #@71
    if-nez v8, :cond_6

    #@73
    .line 159
    aput v12, v5, v4

    #@75
    .line 160
    add-int/lit8 v8, v4, 0x1

    #@77
    aput v12, v5, v8

    #@79
    .line 157
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@7b
    goto :goto_2

    #@7c
    .line 162
    :cond_6
    aget v8, v5, v4

    #@7e
    aget v9, v2, v4

    #@80
    div-float v0, v8, v9

    #@82
    .line 163
    .local v0, "a":F
    add-int/lit8 v8, v4, 0x1

    #@84
    aget v8, v5, v8

    #@86
    aget v9, v2, v4

    #@88
    div-float v1, v8, v9

    #@8a
    .line 164
    .local v1, "b":F
    cmpg-float v8, v0, v12

    #@8c
    if-ltz v8, :cond_7

    #@8e
    cmpg-float v8, v1, v12

    #@90
    if-gez v8, :cond_8

    #@92
    .line 165
    :cond_7
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@94
    const-string/jumbo v9, "The control points must have monotonic Y values."

    #@97
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v8

    #@9b
    .line 168
    :cond_8
    float-to-double v8, v0

    #@9c
    float-to-double v10, v1

    #@9d
    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    #@a0
    move-result-wide v8

    #@a1
    double-to-float v3, v8

    #@a2
    .line 169
    .restart local v3    # "h":F
    const/high16 v8, 0x41100000    # 9.0f

    #@a4
    cmpl-float v8, v3, v8

    #@a6
    if-lez v8, :cond_5

    #@a8
    .line 170
    const/high16 v8, 0x40400000    # 3.0f

    #@aa
    div-float v7, v8, v3

    #@ac
    .line 171
    .local v7, "t":F
    mul-float v8, v7, v0

    #@ae
    aget v9, v2, v4

    #@b0
    mul-float/2addr v8, v9

    #@b1
    aput v8, v5, v4

    #@b3
    .line 172
    add-int/lit8 v8, v4, 0x1

    #@b5
    mul-float v9, v7, v1

    #@b7
    aget v10, v2, v4

    #@b9
    mul-float/2addr v9, v10

    #@ba
    aput v9, v5, v8

    #@bc
    goto :goto_3

    #@bd
    .line 177
    .end local v0    # "a":F
    .end local v1    # "b":F
    .end local v3    # "h":F
    .end local v7    # "t":F
    :cond_9
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@bf
    .line 178
    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@c1
    .line 179
    iput-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    #@c3
    .line 129
    return-void
.end method


# virtual methods
.method public interpolate(F)F
    .locals 9
    .param p1, "x"    # F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/high16 v7, 0x40000000    # 2.0f

    #@3
    const/high16 v8, 0x3f800000    # 1.0f

    #@5
    .line 185
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@7
    array-length v2, v4

    #@8
    .line 186
    .local v2, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    #@b
    move-result v4

    #@c
    if-eqz v4, :cond_0

    #@e
    .line 187
    return p1

    #@f
    .line 189
    :cond_0
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@11
    aget v4, v4, v5

    #@13
    cmpg-float v4, p1, v4

    #@15
    if-gtz v4, :cond_1

    #@17
    .line 190
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@19
    aget v4, v4, v5

    #@1b
    return v4

    #@1c
    .line 192
    :cond_1
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@1e
    add-int/lit8 v5, v2, -0x1

    #@20
    aget v4, v4, v5

    #@22
    cmpl-float v4, p1, v4

    #@24
    if-ltz v4, :cond_2

    #@26
    .line 193
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@28
    add-int/lit8 v5, v2, -0x1

    #@2a
    aget v4, v4, v5

    #@2c
    return v4

    #@2d
    .line 198
    :cond_2
    const/4 v1, 0x0

    #@2e
    .line 199
    .local v1, "i":I
    :cond_3
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@30
    add-int/lit8 v5, v1, 0x1

    #@32
    aget v4, v4, v5

    #@34
    cmpl-float v4, p1, v4

    #@36
    if-ltz v4, :cond_4

    #@38
    .line 200
    add-int/lit8 v1, v1, 0x1

    #@3a
    .line 201
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@3c
    aget v4, v4, v1

    #@3e
    cmpl-float v4, p1, v4

    #@40
    if-nez v4, :cond_3

    #@42
    .line 202
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@44
    aget v4, v4, v1

    #@46
    return v4

    #@47
    .line 207
    :cond_4
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@49
    add-int/lit8 v5, v1, 0x1

    #@4b
    aget v4, v4, v5

    #@4d
    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@4f
    aget v5, v5, v1

    #@51
    sub-float v0, v4, v5

    #@53
    .line 208
    .local v0, "h":F
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@55
    aget v4, v4, v1

    #@57
    sub-float v4, p1, v4

    #@59
    div-float v3, v4, v0

    #@5b
    .line 209
    .local v3, "t":F
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@5d
    aget v4, v4, v1

    #@5f
    mul-float v5, v7, v3

    #@61
    add-float/2addr v5, v8

    #@62
    mul-float/2addr v4, v5

    #@63
    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    #@65
    aget v5, v5, v1

    #@67
    mul-float/2addr v5, v0

    #@68
    mul-float/2addr v5, v3

    #@69
    add-float/2addr v4, v5

    #@6a
    sub-float v5, v8, v3

    #@6c
    mul-float/2addr v4, v5

    #@6d
    sub-float v5, v8, v3

    #@6f
    mul-float/2addr v4, v5

    #@70
    .line 210
    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@72
    add-int/lit8 v6, v1, 0x1

    #@74
    aget v5, v5, v6

    #@76
    mul-float v6, v7, v3

    #@78
    const/high16 v7, 0x40400000    # 3.0f

    #@7a
    sub-float v6, v7, v6

    #@7c
    mul-float/2addr v5, v6

    #@7d
    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    #@7f
    add-int/lit8 v7, v1, 0x1

    #@81
    aget v6, v6, v7

    #@83
    mul-float/2addr v6, v0

    #@84
    sub-float v7, v3, v8

    #@86
    mul-float/2addr v6, v7

    #@87
    add-float/2addr v5, v6

    #@88
    mul-float/2addr v5, v3

    #@89
    mul-float/2addr v5, v3

    #@8a
    .line 209
    add-float/2addr v4, v5

    #@8b
    return v4
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    #@0
    .prologue
    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 217
    .local v2, "str":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@7
    array-length v1, v3

    #@8
    .line 218
    .local v1, "n":I
    const-string/jumbo v3, "MonotoneCubicSpline{["

    #@b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e
    .line 219
    const/4 v0, 0x0

    #@f
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    #@11
    .line 220
    if-eqz v0, :cond_0

    #@13
    .line 221
    const-string/jumbo v3, ", "

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    .line 223
    :cond_0
    const-string/jumbo v3, "("

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    #@22
    aget v4, v4, v0

    #@24
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@27
    .line 224
    const-string/jumbo v3, ", "

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v3

    #@2e
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    #@30
    aget v4, v4, v0

    #@32
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@35
    .line 225
    const-string/jumbo v3, ": "

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v3

    #@3c
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    #@3e
    aget v4, v4, v0

    #@40
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@43
    move-result-object v3

    #@44
    const-string/jumbo v4, ")"

    #@47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 219
    add-int/lit8 v0, v0, 0x1

    #@4c
    goto :goto_0

    #@4d
    .line 227
    :cond_1
    const-string/jumbo v3, "]}"

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@56
    move-result-object v3

    #@57
    return-object v3
.end method
