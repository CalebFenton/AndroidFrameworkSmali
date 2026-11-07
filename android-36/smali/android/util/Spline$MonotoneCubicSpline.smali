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
.field private greylist-max-o mM:[F

.field private greylist-max-o mX:[F

.field private greylist-max-o mY:[F


# direct methods
.method public constructor greylist-max-o <init>([F[F)V
    .registers 14
    .param p1, "x"    # [F
    .param p2, "y"    # [F

    .line 129
    invoke-direct {p0}, Landroid/util/Spline;-><init>()V

    .line 130
    if-eqz p1, :cond_af

    if-eqz p2, :cond_af

    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_af

    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_af

    .line 135
    array-length v0, p1

    .line 136
    .local v0, "n":I
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [F

    .line 137
    .local v1, "d":[F
    new-array v2, v0, [F

    .line 140
    .local v2, "m":[F
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_17
    add-int/lit8 v4, v0, -0x1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_3c

    .line 141
    add-int/lit8 v4, v3, 0x1

    aget v4, p1, v4

    aget v6, p1, v3

    sub-float/2addr v4, v6

    .line 142
    .local v4, "h":F
    cmpg-float v5, v4, v5

    if-lez v5, :cond_34

    .line 146
    add-int/lit8 v5, v3, 0x1

    aget v5, p2, v5

    aget v6, p2, v3

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    aput v5, v1, v3

    .line 140
    .end local v4    # "h":F
    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 143
    .restart local v4    # "h":F
    :cond_34
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The control points must all have strictly increasing X values."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 150
    .end local v3    # "i":I
    .end local v4    # "h":F
    :cond_3c
    const/4 v3, 0x0

    aget v4, v1, v3

    aput v4, v2, v3

    .line 151
    const/4 v3, 0x1

    .restart local v3    # "i":I
    :goto_42
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_55

    .line 152
    add-int/lit8 v4, v3, -0x1

    aget v4, v1, v4

    aget v6, v1, v3

    add-float/2addr v4, v6

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v4, v6

    aput v4, v2, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    goto :goto_42

    .line 154
    .end local v3    # "i":I
    :cond_55
    add-int/lit8 v3, v0, -0x1

    add-int/lit8 v4, v0, -0x2

    aget v4, v1, v4

    aput v4, v2, v3

    .line 157
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_5e
    add-int/lit8 v4, v0, -0x1

    if-ge v3, v4, :cond_a8

    .line 158
    aget v4, v1, v3

    cmpl-float v4, v4, v5

    if-nez v4, :cond_6f

    .line 159
    aput v5, v2, v3

    .line 160
    add-int/lit8 v4, v3, 0x1

    aput v5, v2, v4

    goto :goto_9d

    .line 162
    :cond_6f
    aget v4, v2, v3

    aget v6, v1, v3

    div-float/2addr v4, v6

    .line 163
    .local v4, "a":F
    add-int/lit8 v6, v3, 0x1

    aget v6, v2, v6

    aget v7, v1, v3

    div-float/2addr v6, v7

    .line 164
    .local v6, "b":F
    cmpg-float v7, v4, v5

    if-ltz v7, :cond_a0

    cmpg-float v7, v6, v5

    if-ltz v7, :cond_a0

    .line 168
    float-to-double v7, v4

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 169
    .local v7, "h":F
    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v9, v7, v8

    if-lez v9, :cond_9d

    .line 170
    div-float/2addr v8, v7

    .line 171
    .local v8, "t":F
    aget v9, v2, v3

    mul-float/2addr v9, v8

    aput v9, v2, v3

    .line 172
    add-int/lit8 v9, v3, 0x1

    aget v10, v2, v9

    mul-float/2addr v10, v8

    aput v10, v2, v9

    .line 157
    .end local v4    # "a":F
    .end local v6    # "b":F
    .end local v7    # "h":F
    .end local v8    # "t":F
    :cond_9d
    :goto_9d
    add-int/lit8 v3, v3, 0x1

    goto :goto_5e

    .line 165
    .restart local v4    # "a":F
    .restart local v6    # "b":F
    :cond_a0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v7, "The control points must have monotonic Y values."

    invoke-direct {v5, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 177
    .end local v3    # "i":I
    .end local v4    # "a":F
    .end local v6    # "b":F
    :cond_a8
    iput-object p1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    .line 178
    iput-object p2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    .line 179
    iput-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    .line 180
    return-void

    .line 131
    .end local v0    # "n":I
    .end local v1    # "d":[F
    .end local v2    # "m":[F
    :cond_af
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points and the arrays must be of equal length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public greylist-max-o interpolate(F)F
    .registers 11
    .param p1, "x"    # F

    .line 185
    iget-object v0, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v0, v0

    .line 186
    .local v0, "n":I
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 187
    return p1

    .line 189
    :cond_a
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_18

    .line 190
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v1, v1, v2

    return v1

    .line 192
    :cond_18
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_29

    .line 193
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    return v1

    .line 198
    :cond_29
    const/4 v1, 0x0

    .line 199
    .local v1, "i":I
    :cond_2a
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_43

    .line 200
    add-int/lit8 v1, v1, 0x1

    .line 201
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_2a

    .line 202
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v2, v2, v1

    return v2

    .line 207
    :cond_43
    iget-object v2, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    .line 208
    .local v2, "h":F
    iget-object v3, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v3, v3, v1

    sub-float v3, p1, v3

    div-float/2addr v3, v2

    .line 209
    .local v3, "t":F
    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v1

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, v3, v5

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    mul-float/2addr v4, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v6, v6, v1

    mul-float/2addr v6, v2

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    sub-float v6, v7, v3

    mul-float/2addr v4, v6

    sub-float v6, v7, v3

    mul-float/2addr v4, v6

    iget-object v6, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    add-int/lit8 v8, v1, 0x1

    aget v6, v6, v8

    const/high16 v8, 0x40400000    # 3.0f

    mul-float/2addr v5, v3

    sub-float/2addr v8, v5

    mul-float/2addr v6, v8

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    add-int/lit8 v8, v1, 0x1

    aget v5, v5, v8

    mul-float/2addr v5, v2

    sub-float v7, v3, v7

    mul-float/2addr v5, v7

    add-float/2addr v6, v5

    mul-float/2addr v6, v3

    mul-float/2addr v6, v3

    add-float/2addr v4, v6

    return v4
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v0, "str":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    array-length v1, v1

    .line 218
    .local v1, "n":I
    const-string v2, "MonotoneCubicSpline{["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v1, :cond_45

    .line 220
    const-string v3, ", "

    if-eqz v2, :cond_17

    .line 221
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_17
    const-string v4, "("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/util/Spline$MonotoneCubicSpline;->mX:[F

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mY:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 225
    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/Spline$MonotoneCubicSpline;->mM:[F

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 227
    .end local v2    # "i":I
    :cond_45
    const-string v2, "]}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
