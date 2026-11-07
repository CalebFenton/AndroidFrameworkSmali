.class public Landroid/net/connectivity/org/chromium/base/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field public static final blacklist EPSILON:F = 0.001f


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist areFloatsEqual(FF)Z
    .registers 4
    .param p0, "f1"    # F
    .param p1, "f2"    # F

    .line 136
    sub-float v0, p0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v1, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method public static blacklist clamp(FFF)F
    .registers 6
    .param p0, "value"    # F
    .param p1, "a"    # F
    .param p2, "b"    # F

    .line 67
    cmpl-float v0, p1, p2

    if-lez v0, :cond_6

    move v0, p2

    goto :goto_7

    :cond_6
    move v0, p1

    .line 68
    .local v0, "min":F
    :goto_7
    cmpl-float v1, p1, p2

    if-lez v1, :cond_d

    move v1, p1

    goto :goto_e

    :cond_d
    move v1, p2

    .line 69
    .local v1, "max":F
    :goto_e
    cmpg-float v2, p0, v0

    if-gez v2, :cond_14

    .line 70
    move p0, v0

    goto :goto_19

    .line 71
    :cond_14
    cmpl-float v2, p0, v1

    if-lez v2, :cond_19

    .line 72
    move p0, v1

    .line 74
    :cond_19
    :goto_19
    return p0
.end method

.method public static blacklist clamp(III)I
    .registers 5
    .param p0, "value"    # I
    .param p1, "a"    # I
    .param p2, "b"    # I

    .line 25
    if-le p1, p2, :cond_4

    move v0, p2

    goto :goto_5

    :cond_4
    move v0, p1

    .line 26
    .local v0, "min":I
    :goto_5
    if-le p1, p2, :cond_9

    move v1, p1

    goto :goto_a

    :cond_9
    move v1, p2

    .line 27
    .local v1, "max":I
    :goto_a
    if-ge p0, v0, :cond_e

    .line 28
    move p0, v0

    goto :goto_11

    .line 29
    :cond_e
    if-le p0, v1, :cond_11

    .line 30
    move p0, v1

    .line 32
    :cond_11
    :goto_11
    return p0
.end method

.method public static blacklist clamp(JJJ)J
    .registers 11
    .param p0, "value"    # J
    .param p2, "a"    # J
    .param p4, "b"    # J

    .line 46
    cmp-long v0, p2, p4

    if-lez v0, :cond_6

    move-wide v0, p4

    goto :goto_7

    :cond_6
    move-wide v0, p2

    .line 47
    .local v0, "min":J
    :goto_7
    cmp-long v2, p2, p4

    if-lez v2, :cond_d

    move-wide v2, p2

    goto :goto_e

    :cond_d
    move-wide v2, p4

    .line 48
    .local v2, "max":J
    :goto_e
    cmp-long v4, p0, v0

    if-gez v4, :cond_14

    .line 49
    move-wide p0, v0

    goto :goto_19

    .line 50
    :cond_14
    cmp-long v4, p0, v2

    if-lez v4, :cond_19

    .line 51
    move-wide p0, v2

    .line 53
    :cond_19
    :goto_19
    return-wide p0
.end method

.method public static blacklist distance(FF)F
    .registers 4
    .param p0, "distanceX"    # F
    .param p1, "distanceY"    # F

    .line 157
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static blacklist distance(FFFF)F
    .registers 8
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .line 148
    sub-float v0, p2, p0

    .line 149
    .local v0, "xDist":F
    sub-float v1, p3, p1

    .line 150
    .local v1, "yDist":F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static blacklist flipSignIf(FZ)F
    .registers 3
    .param p0, "value"    # F
    .param p1, "flipSign"    # Z

    .line 126
    if-eqz p1, :cond_4

    neg-float v0, p0

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method public static blacklist flipSignIf(IZ)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "flipSign"    # Z

    .line 115
    if-eqz p1, :cond_4

    neg-int v0, p0

    goto :goto_5

    :cond_4
    move v0, p0

    :goto_5
    return v0
.end method

.method public static blacklist interpolate(FFF)F
    .registers 4
    .param p0, "value"    # F
    .param p1, "target"    # F
    .param p2, "speed"    # F

    .line 95
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static blacklist map(FFFFF)F
    .registers 8
    .param p0, "value"    # F
    .param p1, "fromStart"    # F
    .param p2, "fromStop"    # F
    .param p3, "toStart"    # F
    .param p4, "toStop"    # F

    .line 173
    sub-float v0, p4, p3

    sub-float v1, p0, p1

    sub-float v2, p2, p1

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p3

    return v0
.end method

.method public static blacklist positiveModulo(II)I
    .registers 4
    .param p0, "a"    # I
    .param p1, "b"    # I

    .line 82
    rem-int v0, p0, p1

    .line 83
    .local v0, "mod":I
    if-ltz v0, :cond_6

    move v1, v0

    goto :goto_8

    :cond_6
    add-int v1, v0, p1

    :goto_8
    return v1
.end method

.method public static blacklist roundTwoDecimalPlaces(D)D
    .registers 6
    .param p0, "value"    # D

    .line 183
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public static blacklist smoothstep(F)F
    .registers 4
    .param p0, "t"    # F

    .line 104
    mul-float v0, p0, p0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p0

    const/high16 v2, 0x40400000    # 3.0f

    sub-float/2addr v2, v1

    mul-float/2addr v0, v2

    return v0
.end method
