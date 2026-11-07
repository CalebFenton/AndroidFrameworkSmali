.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final greylist-max-o DEG_TO_RAD:F = 0.017453292f

.field private static final greylist-max-o RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static greylist abs(F)F
    .registers 2
    .param p0, "v"    # F

    .line 37
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_7

    move v0, p0

    goto :goto_8

    :cond_7
    neg-float v0, p0

    :goto_8
    return v0
.end method

.method public static greylist-max-o acos(F)F
    .registers 3
    .param p0, "value"    # F

    .line 145
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o addOrThrow(II)I
    .registers 5
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 269
    if-nez p1, :cond_3

    .line 270
    return p0

    .line 273
    :cond_3
    if-lez p1, :cond_e

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_e

    .line 274
    add-int v0, p0, p1

    return v0

    .line 277
    :cond_e
    if-gez p1, :cond_18

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_18

    .line 278
    add-int v0, p0, p1

    return v0

    .line 280
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Addition overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o asin(F)F
    .registers 3
    .param p0, "value"    # F

    .line 149
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o atan(F)F
    .registers 3
    .param p0, "value"    # F

    .line 153
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o atan2(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 157
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist constrain(FFF)F
    .registers 4
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 51
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p1

    goto :goto_d

    :cond_6
    cmpl-float v0, p0, p2

    if-lez v0, :cond_c

    move v0, p2

    goto :goto_d

    :cond_c
    move v0, p0

    :goto_d
    return v0
.end method

.method public static greylist constrain(III)I
    .registers 4
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 42
    if-ge p0, p1, :cond_4

    move v0, p1

    goto :goto_9

    :cond_4
    if-le p0, p2, :cond_8

    move v0, p2

    goto :goto_9

    :cond_8
    move v0, p0

    :goto_9
    return v0
.end method

.method public static greylist-max-o constrain(JJJ)J
    .registers 8
    .param p0, "amount"    # J
    .param p2, "low"    # J
    .param p4, "high"    # J

    .line 46
    cmp-long v0, p0, p2

    if-gez v0, :cond_6

    move-wide v0, p2

    goto :goto_d

    :cond_6
    cmp-long v0, p0, p4

    if-lez v0, :cond_c

    move-wide v0, p4

    goto :goto_d

    :cond_c
    move-wide v0, p0

    :goto_d
    return-wide v0
.end method

.method public static blacklist constrainedMap(FFFFF)F
    .registers 6
    .param p0, "rangeMin"    # F
    .param p1, "rangeMax"    # F
    .param p2, "valueMin"    # F
    .param p3, "valueMax"    # F
    .param p4, "value"    # F

    .line 245
    invoke-static {p2, p3, p4}, Landroid/util/MathUtils;->lerpInvSat(FFF)F

    move-result v0

    invoke-static {p0, p1, v0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o cross(FFFF)F
    .registers 6
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 133
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o degrees(F)F
    .registers 2
    .param p0, "radians"    # F

    .line 141
    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static greylist-max-o dist(FFFF)F
    .registers 10
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 104
    sub-float v0, p2, p0

    .line 105
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 106
    .local v1, "y":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static greylist-max-o dist(FFFFFF)F
    .registers 11
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .line 110
    sub-float v0, p3, p0

    .line 111
    .local v0, "x":F
    sub-float v1, p4, p1

    .line 112
    .local v1, "y":F
    sub-float v2, p5, p2

    .line 113
    .local v2, "z":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static greylist-max-o dot(FFFF)F
    .registers 6
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .line 129
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o exp(F)F
    .registers 3
    .param p0, "a"    # F

    .line 59
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static blacklist fitRect(Landroid/graphics/Rect;I)V
    .registers 4
    .param p0, "outToResize"    # Landroid/graphics/Rect;
    .param p1, "largestSide"    # I

    .line 290
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    return-void

    .line 293
    :cond_7
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 294
    .local v0, "maxSize":F
    int-to-float v1, p1

    div-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 295
    return-void
.end method

.method public static greylist lerp(FFF)F
    .registers 4
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .line 166
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static blacklist lerp(IIF)F
    .registers 5
    .param p0, "start"    # I
    .param p1, "stop"    # I
    .param p2, "amount"    # F

    .line 170
    int-to-float v0, p0

    int-to-float v1, p1

    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o lerpDeg(FFF)F
    .registers 6
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "amount"    # F

    .line 210
    sub-float v0, p1, p0

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v0, v2

    sub-float/2addr v0, v1

    .line 211
    .local v0, "minAngle":F
    mul-float v1, v0, p2

    add-float/2addr v1, p0

    return v1
.end method

.method public static blacklist lerpInv(FFF)F
    .registers 5
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "value"    # F

    .line 180
    cmpl-float v0, p0, p1

    if-eqz v0, :cond_a

    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static blacklist lerpInvSat(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "value"    # F

    .line 190
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerpInv(FFF)F

    move-result v0

    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o log(F)F
    .registers 3
    .param p0, "a"    # F

    .line 55
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o mag(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 117
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o mag(FFF)F
    .registers 5
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 121
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o map(FFFFF)F
    .registers 8
    .param p0, "minStart"    # F
    .param p1, "minStop"    # F
    .param p2, "maxStart"    # F
    .param p3, "maxStop"    # F
    .param p4, "value"    # F

    .line 219
    sub-float v0, p3, p2

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static greylist-max-o max(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 71
    cmpl-float v0, p0, p1

    if-lez v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    return v0
.end method

.method public static greylist-max-o max(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 80
    cmpl-float v0, p0, p1

    if-lez v0, :cond_a

    cmpl-float v0, p0, p2

    if-lez v0, :cond_10

    move v0, p0

    goto :goto_11

    :cond_a
    cmpl-float v0, p1, p2

    if-lez v0, :cond_10

    move v0, p1

    goto :goto_11

    :cond_10
    move v0, p2

    :goto_11
    return v0
.end method

.method public static greylist max(II)F
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 76
    if-le p0, p1, :cond_4

    int-to-float v0, p0

    goto :goto_5

    :cond_4
    int-to-float v0, p1

    :goto_5
    return v0
.end method

.method public static greylist-max-o max(III)F
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 84
    if-le p0, p1, :cond_6

    if-le p0, p2, :cond_a

    move v0, p0

    goto :goto_b

    :cond_6
    if-le p1, p2, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    int-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o min(FF)F
    .registers 3
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 88
    cmpg-float v0, p0, p1

    if-gez v0, :cond_6

    move v0, p0

    goto :goto_7

    :cond_6
    move v0, p1

    :goto_7
    return v0
.end method

.method public static greylist-max-o min(FFF)F
    .registers 4
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .line 96
    cmpg-float v0, p0, p1

    if-gez v0, :cond_a

    cmpg-float v0, p0, p2

    if-gez v0, :cond_10

    move v0, p0

    goto :goto_11

    :cond_a
    cmpg-float v0, p1, p2

    if-gez v0, :cond_10

    move v0, p1

    goto :goto_11

    :cond_10
    move v0, p2

    :goto_11
    return v0
.end method

.method public static greylist-max-o min(II)F
    .registers 3
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 92
    if-ge p0, p1, :cond_4

    int-to-float v0, p0

    goto :goto_5

    :cond_4
    int-to-float v0, p1

    :goto_5
    return v0
.end method

.method public static greylist-max-o min(III)F
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .line 100
    if-ge p0, p1, :cond_6

    if-ge p0, p2, :cond_a

    move v0, p0

    goto :goto_b

    :cond_6
    if-ge p1, p2, :cond_a

    move v0, p1

    goto :goto_b

    :cond_a
    move v0, p2

    :goto_b
    int-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o norm(FFF)F
    .registers 5
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "value"    # F

    .line 215
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static greylist-max-o pow(FF)F
    .registers 6
    .param p0, "a"    # F
    .param p1, "b"    # F

    .line 63
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o radians(F)F
    .registers 2
    .param p0, "degrees"    # F

    .line 137
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static blacklist saturate(F)F
    .registers 3
    .param p0, "value"    # F

    .line 185
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static blacklist smoothStep(FFF)F
    .registers 6
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "x"    # F

    .line 260
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o sq(F)F
    .registers 2
    .param p0, "v"    # F

    .line 125
    mul-float v0, p0, p0

    return v0
.end method

.method public static greylist-max-o sqrt(F)F
    .registers 3
    .param p0, "a"    # F

    .line 67
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static greylist-max-o tan(F)F
    .registers 3
    .param p0, "angle"    # F

    .line 161
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
