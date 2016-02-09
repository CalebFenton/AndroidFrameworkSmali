.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 27
    new-instance v0, Ljava/util/Random;

    #@2
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@5
    sput-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    #@7
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "v"    # F

    #@0
    .prologue
    .line 35
    const/4 v0, 0x0

    #@1
    cmpl-float v0, p0, v0

    #@3
    if-lez v0, :cond_0

    #@5
    .end local p0    # "v":F
    :goto_0
    return p0

    #@6
    .restart local p0    # "v":F
    :cond_0
    neg-float p0, p0

    #@7
    goto :goto_0
.end method

.method public static acos(F)F
    .locals 2
    .param p0, "value"    # F

    #@0
    .prologue
    .line 136
    float-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    #@4
    move-result-wide v0

    #@5
    double-to-float v0, v0

    #@6
    return v0
.end method

.method public static asin(F)F
    .locals 2
    .param p0, "value"    # F

    #@0
    .prologue
    .line 140
    float-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    #@4
    move-result-wide v0

    #@5
    double-to-float v0, v0

    #@6
    return v0
.end method

.method public static atan(F)F
    .locals 2
    .param p0, "value"    # F

    #@0
    .prologue
    .line 144
    float-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    #@4
    move-result-wide v0

    #@5
    double-to-float v0, v0

    #@6
    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 148
    float-to-double v0, p0

    #@1
    float-to-double v2, p1

    #@2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    #@5
    move-result-wide v0

    #@6
    double-to-float v0, v0

    #@7
    return v0
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    #@0
    .prologue
    .line 47
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p1    # "low":F
    :goto_0
    return p1

    #@5
    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    #@7
    if-lez v0, :cond_1

    #@9
    move p1, p2

    #@a
    goto :goto_0

    #@b
    :cond_1
    move p1, p0

    #@c
    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    #@0
    .prologue
    .line 39
    if-ge p0, p1, :cond_0

    #@2
    .end local p1    # "low":I
    :goto_0
    return p1

    #@3
    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    #@5
    move p1, p2

    #@6
    goto :goto_0

    #@7
    :cond_1
    move p1, p0

    #@8
    goto :goto_0
.end method

.method public static constrain(JJJ)J
    .locals 2
    .param p0, "amount"    # J
    .param p2, "low"    # J
    .param p4, "high"    # J

    #@0
    .prologue
    .line 43
    cmp-long v0, p0, p2

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p2    # "low":J
    :goto_0
    return-wide p2

    #@5
    .restart local p2    # "low":J
    :cond_0
    cmp-long v0, p0, p4

    #@7
    if-lez v0, :cond_1

    #@9
    move-wide p2, p4

    #@a
    goto :goto_0

    #@b
    :cond_1
    move-wide p2, p0

    #@c
    goto :goto_0
.end method

.method public static cross(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    #@0
    .prologue
    .line 124
    mul-float v0, p0, p3

    #@2
    mul-float v1, p1, p2

    #@4
    sub-float/2addr v0, v1

    #@5
    return v0
.end method

.method public static degrees(F)F
    .locals 1
    .param p0, "radians"    # F

    #@0
    .prologue
    .line 132
    const v0, 0x42652ee2

    #@3
    mul-float/2addr v0, p0

    #@4
    return v0
.end method

.method public static dist(FFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    #@0
    .prologue
    .line 95
    sub-float v0, p2, p0

    #@2
    .line 96
    .local v0, "x":F
    sub-float v1, p3, p1

    #@4
    .line 97
    .local v1, "y":F
    float-to-double v2, v0

    #@5
    float-to-double v4, v1

    #@6
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    #@9
    move-result-wide v2

    #@a
    double-to-float v2, v2

    #@b
    return v2
.end method

.method public static dist(FFFFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    #@0
    .prologue
    .line 101
    sub-float v0, p3, p0

    #@2
    .line 102
    .local v0, "x":F
    sub-float v1, p4, p1

    #@4
    .line 103
    .local v1, "y":F
    sub-float v2, p5, p2

    #@6
    .line 104
    .local v2, "z":F
    mul-float v3, v0, v0

    #@8
    mul-float v4, v1, v1

    #@a
    add-float/2addr v3, v4

    #@b
    mul-float v4, v2, v2

    #@d
    add-float/2addr v3, v4

    #@e
    float-to-double v4, v3

    #@f
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    #@12
    move-result-wide v4

    #@13
    double-to-float v3, v4

    #@14
    return v3
.end method

.method public static dot(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    #@0
    .prologue
    .line 120
    mul-float v0, p0, p2

    #@2
    mul-float v1, p1, p3

    #@4
    add-float/2addr v0, v1

    #@5
    return v0
.end method

.method public static exp(F)F
    .locals 2
    .param p0, "a"    # F

    #@0
    .prologue
    .line 55
    float-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    #@4
    move-result-wide v0

    #@5
    double-to-float v0, v0

    #@6
    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    #@0
    .prologue
    .line 156
    sub-float v0, p1, p0

    #@2
    mul-float/2addr v0, p2

    #@3
    add-float/2addr v0, p0

    #@4
    return v0
.end method

.method public static log(F)F
    .locals 2
    .param p0, "a"    # F

    #@0
    .prologue
    .line 51
    float-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    #@4
    move-result-wide v0

    #@5
    double-to-float v0, v0

    #@6
    return v0
.end method

.method public static mag(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 108
    float-to-double v0, p0

    #@1
    float-to-double v2, p1

    #@2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    #@5
    move-result-wide v0

    #@6
    double-to-float v0, v0

    #@7
    return v0
.end method

.method public static mag(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    #@0
    .prologue
    .line 112
    mul-float v0, p0, p0

    #@2
    mul-float v1, p1, p1

    #@4
    add-float/2addr v0, v1

    #@5
    mul-float v1, p2, p2

    #@7
    add-float/2addr v0, v1

    #@8
    float-to-double v0, v0

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    #@c
    move-result-wide v0

    #@d
    double-to-float v0, v0

    #@e
    return v0
.end method

.method public static map(FFFFF)F
    .locals 3
    .param p0, "minStart"    # F
    .param p1, "minStop"    # F
    .param p2, "maxStart"    # F
    .param p3, "maxStop"    # F
    .param p4, "value"    # F

    #@0
    .prologue
    .line 164
    sub-float v0, p2, p3

    #@2
    sub-float v1, p4, p0

    #@4
    sub-float v2, p1, p0

    #@6
    div-float/2addr v1, v2

    #@7
    mul-float/2addr v0, v1

    #@8
    add-float/2addr v0, p2

    #@9
    return v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 63
    cmpl-float v0, p0, p1

    #@2
    if-lez v0, :cond_0

    #@4
    .end local p0    # "a":F
    :goto_0
    return p0

    #@5
    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    #@6
    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    #@0
    .prologue
    .line 71
    cmpl-float v0, p0, p1

    #@2
    if-lez v0, :cond_1

    #@4
    cmpl-float v0, p0, p2

    #@6
    if-lez v0, :cond_0

    #@8
    move p2, p0

    #@9
    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    #@a
    .restart local p2    # "c":F
    :cond_1
    cmpl-float v0, p1, p2

    #@c
    if-lez v0, :cond_0

    #@e
    move p2, p1

    #@f
    goto :goto_0
.end method

.method public static max(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 67
    if-le p0, p1, :cond_0

    #@2
    .end local p0    # "a":I
    :goto_0
    int-to-float v0, p0

    #@3
    return v0

    #@4
    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    #@5
    goto :goto_0
.end method

.method public static max(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    #@0
    .prologue
    .line 75
    if-le p0, p1, :cond_1

    #@2
    if-le p0, p2, :cond_0

    #@4
    move p2, p0

    #@5
    .end local p2    # "c":I
    :cond_0
    :goto_0
    int-to-float v0, p2

    #@6
    return v0

    #@7
    .restart local p2    # "c":I
    :cond_1
    if-le p1, p2, :cond_0

    #@9
    move p2, p1

    #@a
    goto :goto_0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 79
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_0

    #@4
    .end local p0    # "a":F
    :goto_0
    return p0

    #@5
    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    #@6
    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    #@0
    .prologue
    .line 87
    cmpg-float v0, p0, p1

    #@2
    if-gez v0, :cond_1

    #@4
    cmpg-float v0, p0, p2

    #@6
    if-gez v0, :cond_0

    #@8
    move p2, p0

    #@9
    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    #@a
    .restart local p2    # "c":F
    :cond_1
    cmpg-float v0, p1, p2

    #@c
    if-gez v0, :cond_0

    #@e
    move p2, p1

    #@f
    goto :goto_0
.end method

.method public static min(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    #@0
    .prologue
    .line 83
    if-ge p0, p1, :cond_0

    #@2
    .end local p0    # "a":I
    :goto_0
    int-to-float v0, p0

    #@3
    return v0

    #@4
    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    #@5
    goto :goto_0
.end method

.method public static min(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    #@0
    .prologue
    .line 91
    if-ge p0, p1, :cond_1

    #@2
    if-ge p0, p2, :cond_0

    #@4
    move p2, p0

    #@5
    .end local p2    # "c":I
    :cond_0
    :goto_0
    int-to-float v0, p2

    #@6
    return v0

    #@7
    .restart local p2    # "c":I
    :cond_1
    if-ge p1, p2, :cond_0

    #@9
    move p2, p1

    #@a
    goto :goto_0
.end method

.method public static norm(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "value"    # F

    #@0
    .prologue
    .line 160
    sub-float v0, p2, p0

    #@2
    sub-float v1, p1, p0

    #@4
    div-float/2addr v0, v1

    #@5
    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    #@0
    .prologue
    .line 59
    float-to-double v0, p0

    #@1
    float-to-double v2, p1

    #@2
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    #@5
    move-result-wide v0

    #@6
    double-to-float v0, v0

    #@7
    return v0
.end method

.method public static radians(F)F
    .locals 1
    .param p0, "degrees"    # F

    #@0
    .prologue
    .line 128
    const v0, 0x3c8efa35

    #@3
    mul-float/2addr v0, p0

    #@4
    return v0
.end method

.method public static random(F)F
    .locals 1
    .param p0, "howbig"    # F

    #@0
    .prologue
    .line 177
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    #@2
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    #@5
    move-result v0

    #@6
    mul-float/2addr v0, p0

    #@7
    return v0
.end method

.method public static random(FF)F
    .locals 2
    .param p0, "howsmall"    # F
    .param p1, "howbig"    # F

    #@0
    .prologue
    .line 181
    cmpl-float v0, p0, p1

    #@2
    if-ltz v0, :cond_0

    #@4
    return p0

    #@5
    .line 182
    :cond_0
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    #@7
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    #@a
    move-result v0

    #@b
    sub-float v1, p1, p0

    #@d
    mul-float/2addr v0, v1

    #@e
    add-float/2addr v0, p0

    #@f
    return v0
.end method

.method public static random(I)I
    .locals 2
    .param p0, "howbig"    # I

    #@0
    .prologue
    .line 168
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    #@2
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    #@5
    move-result v0

    #@6
    int-to-float v1, p0

    #@7
    mul-float/2addr v0, v1

    #@8
    float-to-int v0, v0

    #@9
    return v0
.end method

.method public static random(II)I
    .locals 2
    .param p0, "howsmall"    # I
    .param p1, "howbig"    # I

    #@0
    .prologue
    .line 172
    if-lt p0, p1, :cond_0

    #@2
    return p0

    #@3
    .line 173
    :cond_0
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    #@5
    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    #@8
    move-result v0

    #@9
    sub-int v1, p1, p0

    #@b
    int-to-float v1, v1

    #@c
    mul-float/2addr v0, v1

    #@d
    int-to-float v1, p0

    #@e
    add-float/2addr v0, v1

    #@f
    float-to-int v0, v0

    #@10
    return v0
.end method

.method public static randomSeed(J)V
    .locals 2
    .param p0, "seed"    # J

    #@0
    .prologue
    .line 186
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    #@2
    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    #@5
    .line 185
    return-void
.end method

.method public static sq(F)F
    .locals 1
    .param p0, "v"    # F

    #@0
    .prologue
    .line 116
    mul-float v0, p0, p0

    #@2
    return v0
.end method

.method public static tan(F)F
    .locals 2
    .param p0, "angle"    # F

    #@0
    .prologue
    .line 152
    float-to-double v0, p0

    #@1
    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    #@4
    move-result-wide v0

    #@5
    double-to-float v0, v0

    #@6
    return v0
.end method
