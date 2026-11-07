.class public Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;
.source "BounceCurve.java"


# static fields
.field private static final blacklist D1:F = 2.75f

.field private static final blacklist N1:F = 7.5625f


# direct methods
.method constructor blacklist <init>(I)V
    .registers 2
    .param p1, "type"    # I

    .line 23
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/Easing;-><init>()V

    .line 24
    iput p1, p0, Lcom/android/internal/widget/remotecompose/core/operations/utilities/easing/BounceCurve;->mType:I

    .line 25
    return-void
.end method


# virtual methods
.method public blacklist get(F)F
    .registers 9
    .param p1, "x"    # F

    .line 29
    move v0, p1

    .line 30
    .local v0, "t":F
    const/4 v1, 0x0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_7

    .line 31
    return v1

    .line 33
    :cond_7
    const v1, 0x3eba2e8c

    cmpg-float v1, v0, v1

    const/high16 v2, 0x40f20000    # 7.5625f

    if-gez v1, :cond_18

    .line 34
    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    add-float/2addr v2, v0

    const v1, 0x3f3bbbbc

    mul-float/2addr v2, v1

    return v2

    .line 35
    :cond_18
    const v1, 0x3f3a2e8c

    cmpg-float v1, v0, v1

    if-gez v1, :cond_29

    .line 36
    const v1, 0x3f0ba2e9

    sub-float/2addr v0, v1

    .line 37
    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const/high16 v1, 0x3f400000    # 0.75f

    add-float/2addr v2, v1

    return v2

    .line 38
    :cond_29
    float-to-double v3, v0

    const-wide v5, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v1, v3, v5

    if-gez v1, :cond_3d

    .line 39
    const v1, 0x3f51745d

    sub-float/2addr v0, v1

    .line 40
    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const/high16 v1, 0x3f700000    # 0.9375f

    add-float/2addr v2, v1

    return v2

    .line 41
    :cond_3d
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_4d

    .line 42
    const v1, 0x3f745d17

    sub-float/2addr v0, v1

    .line 43
    mul-float/2addr v2, v0

    mul-float/2addr v2, v0

    const/high16 v1, 0x3f7c0000    # 0.984375f

    add-float/2addr v2, v1

    return v2

    .line 45
    :cond_4d
    return v1
.end method

.method public blacklist getDiff(F)F
    .registers 9
    .param p1, "x"    # F

    .line 50
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 51
    return v0

    .line 53
    :cond_6
    const v1, 0x3eba2e8c

    cmpg-float v1, p1, v1

    const/high16 v2, 0x41720000    # 15.125f

    if-gez v1, :cond_19

    .line 54
    mul-float/2addr v2, p1

    const v0, 0x3fae8ba3

    div-float/2addr v2, v0

    const v0, 0x3f3bbbbc

    add-float/2addr v2, v0

    return v2

    .line 55
    :cond_19
    const v1, 0x3f3a2e8c

    cmpg-float v1, p1, v1

    if-gez v1, :cond_27

    .line 56
    const v0, 0x3f0ba2e9

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    return v0

    .line 57
    :cond_27
    float-to-double v3, p1

    const-wide v5, 0x3fed1745d1745d17L    # 0.9090909090909091

    cmpg-double v1, v3, v5

    if-gez v1, :cond_38

    .line 58
    const v0, 0x3f51745d

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    return v0

    .line 59
    :cond_38
    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_45

    .line 60
    const v0, 0x3f745d17

    sub-float v0, p1, v0

    mul-float/2addr v0, v2

    return v0

    .line 62
    :cond_45
    return v0
.end method
