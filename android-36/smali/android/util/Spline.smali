.class public abstract Landroid/util/Spline;
.super Ljava/lang/Object;
.source "Spline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/Spline$MonotoneCubicSpline;,
        Landroid/util/Spline$LinearSpline;
    }
.end annotation


# direct methods
.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static greylist-max-o createLinearSpline([F[F)Landroid/util/Spline;
    .registers 3
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 91
    new-instance v0, Landroid/util/Spline$LinearSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static greylist-max-o createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .registers 3
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 72
    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    return-object v0
.end method

.method public static greylist-max-o createSpline([F[F)Landroid/util/Spline;
    .registers 4
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    .line 41
    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 46
    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 47
    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    .line 49
    :cond_11
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    return-object v0

    .line 42
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The control points must all have strictly increasing X values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isMonotonic([F)Z
    .registers 6
    .param p0, "x"    # [F

    .line 110
    if-eqz p0, :cond_1a

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    .line 113
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 114
    .local v1, "prev":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_18

    .line 115
    aget v3, p0, v2

    .line 116
    .local v3, "curr":F
    cmpg-float v4, v3, v1

    if-gez v4, :cond_14

    .line 117
    return v0

    .line 119
    :cond_14
    move v1, v3

    .line 114
    .end local v3    # "curr":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 121
    .end local v2    # "i":I
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 111
    .end local v1    # "prev":F
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static greylist-max-o isStrictlyIncreasing([F)Z
    .registers 6
    .param p0, "x"    # [F

    .line 95
    if-eqz p0, :cond_1a

    array-length v0, p0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1a

    .line 98
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 99
    .local v1, "prev":F
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_a
    array-length v3, p0

    if-ge v2, v3, :cond_18

    .line 100
    aget v3, p0, v2

    .line 101
    .local v3, "curr":F
    cmpg-float v4, v3, v1

    if-gtz v4, :cond_14

    .line 102
    return v0

    .line 104
    :cond_14
    move v1, v3

    .line 99
    .end local v3    # "curr":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 106
    .end local v2    # "i":I
    :cond_18
    const/4 v0, 0x1

    return v0

    .line 96
    .end local v1    # "prev":F
    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "There must be at least two control points."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public abstract greylist-max-o interpolate(F)F
.end method
