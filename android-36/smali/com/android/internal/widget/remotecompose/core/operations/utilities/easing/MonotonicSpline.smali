.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;
.super Ljava/lang/Object;
.source "MonotonicSpline.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MonotonicCurveFit"


# instance fields
.field private blacklist mExtrapolate:Z

.field blacklist mSlopeTemp:[F

.field private blacklist mT:[F

.field private blacklist mTangent:[F

.field private blacklist mY:[F


# direct methods
.method public constructor blacklist <init>([F[F)V
    .registers 15
    .param p1, "time"    # [F
    .param p2, "y"    # [F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mExtrapolate:Z

    .line 37
    if-nez p1, :cond_19

    .line 38
    array-length v1, p2

    new-array p1, v1, [F

    .line 39
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_19

    .line 40
    int-to-float v2, v1

    array-length v3, p1

    sub-int/2addr v3, v0

    int-to-float v3, v3

    div-float/2addr v2, v3

    aput v2, p1, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 43
    .end local v1    # "i":I
    :cond_19
    iput-object p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    .line 44
    iput-object p2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    .line 45
    array-length v1, p1

    .line 46
    .local v1, "n":I
    const/4 v2, 0x1

    .line 47
    .local v2, "dim":I
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mSlopeTemp:[F

    .line 48
    add-int/lit8 v0, v1, -0x1

    new-array v0, v0, [F

    .line 49
    .local v0, "slope":[F
    new-array v3, v1, [F

    .line 50
    .local v3, "tangent":[F
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2a
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_55

    .line 51
    add-int/lit8 v5, v4, 0x1

    aget v5, p1, v5

    aget v6, p1, v4

    sub-float/2addr v5, v6

    .line 52
    .local v5, "dt":F
    add-int/lit8 v6, v4, 0x1

    aget v6, p2, v6

    aget v7, p2, v4

    sub-float/2addr v6, v7

    div-float/2addr v6, v5

    aput v6, v0, v4

    .line 53
    if-nez v4, :cond_46

    .line 54
    aget v6, v0, v4

    aput v6, v3, v4

    goto :goto_52

    .line 56
    :cond_46
    add-int/lit8 v6, v4, -0x1

    aget v6, v0, v6

    aget v7, v0, v4

    add-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v6, v7

    aput v6, v3, v4

    .line 50
    .end local v5    # "dt":F
    :goto_52
    add-int/lit8 v4, v4, 0x1

    goto :goto_2a

    .line 59
    .end local v4    # "i":I
    :cond_55
    add-int/lit8 v4, v1, -0x1

    add-int/lit8 v5, v1, -0x2

    aget v5, v0, v5

    aput v5, v3, v4

    .line 61
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_5e
    add-int/lit8 v5, v1, -0x1

    if-ge v4, v5, :cond_a3

    .line 62
    aget v5, v0, v4

    float-to-double v5, v5

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_73

    .line 63
    const/4 v5, 0x0

    aput v5, v3, v4

    .line 64
    add-int/lit8 v6, v4, 0x1

    aput v5, v3, v6

    goto :goto_a0

    .line 66
    :cond_73
    aget v5, v3, v4

    aget v6, v0, v4

    div-float/2addr v5, v6

    .line 67
    .local v5, "a":F
    add-int/lit8 v6, v4, 0x1

    aget v6, v3, v6

    aget v7, v0, v4

    div-float/2addr v6, v7

    .line 68
    .local v6, "b":F
    float-to-double v7, v5

    float-to-double v9, v6

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v7

    double-to-float v7, v7

    .line 69
    .local v7, "h":F
    float-to-double v8, v7

    const-wide/high16 v10, 0x4022000000000000L    # 9.0

    cmpl-double v8, v8, v10

    if-lez v8, :cond_a0

    .line 70
    const/high16 v8, 0x40400000    # 3.0f

    div-float/2addr v8, v7

    .line 71
    .local v8, "t":F
    mul-float v9, v8, v5

    aget v10, v0, v4

    mul-float/2addr v9, v10

    aput v9, v3, v4

    .line 72
    add-int/lit8 v9, v4, 0x1

    mul-float v10, v8, v6

    aget v11, v0, v4

    mul-float/2addr v10, v11

    aput v10, v3, v9

    .line 61
    .end local v5    # "a":F
    .end local v6    # "b":F
    .end local v7    # "h":F
    .end local v8    # "t":F
    :cond_a0
    :goto_a0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5e

    .line 76
    .end local v4    # "i":I
    :cond_a3
    iput-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    .line 77
    return-void
.end method

.method private static blacklist diff(FFFFFF)F
    .registers 10
    .param p0, "h"    # F
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "t1"    # F
    .param p5, "t2"    # F

    .line 202
    mul-float v0, p1, p1

    .line 203
    .local v0, "x2":F
    const/high16 v1, -0x3f400000    # -6.0f

    mul-float/2addr v1, v0

    mul-float/2addr v1, p3

    const/high16 v2, 0x40c00000    # 6.0f

    mul-float v3, p1, v2

    mul-float/2addr v3, p3

    add-float/2addr v1, v3

    mul-float v3, v0, v2

    mul-float/2addr v3, p2

    add-float/2addr v1, v3

    mul-float/2addr v2, p1

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    const/high16 v2, 0x40400000    # 3.0f

    mul-float v3, p0, v2

    mul-float/2addr v3, p5

    mul-float/2addr v3, v0

    add-float/2addr v1, v3

    mul-float/2addr v2, p0

    mul-float/2addr v2, p4

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    mul-float/2addr v2, p5

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, p0

    mul-float/2addr v2, p4

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    mul-float v2, p0, p4

    add-float/2addr v1, v2

    return v1
.end method

.method private static blacklist interpolate(FFFFFF)F
    .registers 12
    .param p0, "h"    # F
    .param p1, "x"    # F
    .param p2, "y1"    # F
    .param p3, "y2"    # F
    .param p4, "t1"    # F
    .param p5, "t2"    # F

    .line 186
    mul-float v0, p1, p1

    .line 187
    .local v0, "x2":F
    mul-float v1, v0, p1

    .line 188
    .local v1, "x3":F
    const/high16 v2, -0x40000000    # -2.0f

    mul-float/2addr v2, v1

    mul-float/2addr v2, p3

    const/high16 v3, 0x40400000    # 3.0f

    mul-float v4, v0, v3

    mul-float/2addr v4, p3

    add-float/2addr v2, v4

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v1, v4

    mul-float/2addr v5, p2

    add-float/2addr v2, v5

    mul-float/2addr v3, v0

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    add-float/2addr v2, p2

    mul-float v3, p0, p5

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    mul-float v3, p0, p4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    mul-float v3, p0, p5

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    mul-float/2addr v4, p0

    mul-float/2addr v4, p4

    mul-float/2addr v4, v0

    sub-float/2addr v2, v4

    mul-float v3, p0, p4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    return v2
.end method


# virtual methods
.method public blacklist getArray()[F
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    return-object v0
.end method

.method public blacklist getPos(F)F
    .registers 12
    .param p1, "t"    # F

    .line 95
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    array-length v0, v0

    .line 97
    .local v0, "n":I
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mExtrapolate:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4a

    .line 98
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_25

    .line 99
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getSlope(F)F

    move-result v1

    .line 100
    .local v1, "slopeTemp":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v2, v4, v2

    sub-float v2, p1, v2

    mul-float/2addr v2, v1

    add-float/2addr v3, v2

    .line 102
    .local v3, "v":F
    return v3

    .line 104
    .end local v1    # "slopeTemp":F
    .end local v3    # "v":F
    :cond_25
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_68

    .line 105
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->getSlope(F)F

    move-result v1

    .line 106
    .restart local v1    # "slopeTemp":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    sub-float v3, p1, v3

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    .line 108
    .local v2, "v":F
    return v2

    .line 111
    .end local v1    # "slopeTemp":F
    .end local v2    # "v":F
    :cond_4a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v1, v1, v2

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_57

    .line 112
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v1, v1, v2

    .line 114
    .local v1, "v":F
    return v1

    .line 116
    .end local v1    # "v":F
    :cond_57
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_68

    .line 117
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    .line 119
    .restart local v1    # "v":F
    return v1

    .line 123
    .end local v1    # "v":F
    :cond_68
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_69
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_b3

    .line 124
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v2, v2, v1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_79

    .line 126
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v2, v2, v1

    .line 128
    :cond_79
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gez v2, :cond_b0

    .line 129
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v1, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v3, v3, v1

    sub-float v4, v2, v3

    .line 130
    .local v4, "h":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v2, v2, v1

    sub-float v2, p1, v2

    div-float v5, v2, v4

    .line 132
    .local v5, "x":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v6, v2, v1

    .line 133
    .local v6, "y1":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    add-int/lit8 v3, v1, 0x1

    aget v7, v2, v3

    .line 134
    .local v7, "y2":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v8, v2, v1

    .line 135
    .local v8, "t1":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    add-int/lit8 v3, v1, 0x1

    aget v9, v2, v3

    .line 136
    .local v9, "t2":F
    invoke-static/range {v4 .. v9}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->interpolate(FFFFFF)F

    move-result v2

    .line 138
    .restart local v2    # "v":F
    return v2

    .line 123
    .end local v2    # "v":F
    .end local v4    # "h":F
    .end local v5    # "x":F
    .end local v6    # "y1":F
    .end local v7    # "y2":F
    .end local v8    # "t1":F
    .end local v9    # "t2":F
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 141
    .end local v1    # "i":I
    :cond_b3
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist getSlope(F)F
    .registers 13
    .param p1, "t"    # F

    .line 151
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    array-length v0, v0

    .line 152
    .local v0, "n":I
    const/4 v1, 0x0

    .line 154
    .local v1, "v":F
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_12

    .line 155
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget p1, v2, v3

    goto :goto_22

    .line 156
    :cond_12
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_22

    .line 157
    iget-object v2, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v3, v0, -0x1

    aget p1, v2, v3

    .line 160
    :cond_22
    :goto_22
    const/4 v2, 0x0

    .local v2, "i":I
    add-int/lit8 v3, v0, -0x1

    if-ge v2, v3, :cond_5f

    .line 161
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    cmpg-float v3, p1, v3

    if-gtz v3, :cond_5f

    .line 162
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    add-int/lit8 v4, v2, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v4, v4, v2

    sub-float v5, v3, v4

    .line 163
    .local v5, "h":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    aget v3, v3, v2

    sub-float v3, p1, v3

    div-float v6, v3, v5

    .line 164
    .local v6, "x":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    aget v7, v3, v2

    .line 165
    .local v7, "y1":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mY:[F

    add-int/lit8 v4, v2, 0x1

    aget v8, v3, v4

    .line 166
    .local v8, "y2":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    aget v9, v3, v2

    .line 167
    .local v9, "t1":F
    iget-object v3, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mTangent:[F

    add-int/lit8 v4, v2, 0x1

    aget v10, v3, v4

    .line 168
    .local v10, "t2":F
    invoke-static/range {v5 .. v10}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->diff(FFFFFF)F

    move-result v3

    div-float v1, v3, v5

    .line 172
    .end local v2    # "i":I
    .end local v5    # "h":F
    .end local v6    # "x":F
    .end local v7    # "y1":F
    .end local v8    # "y2":F
    .end local v9    # "t1":F
    .end local v10    # "t2":F
    :cond_5f
    return v1
.end method

.method public blacklist getTimePoints()[F
    .registers 2

    .line 181
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/MonotonicSpline;->mT:[F

    return-object v0
.end method
