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
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static createLinearSpline([F[F)Landroid/util/Spline;
    .locals 1
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    #@0
    .prologue
    .line 91
    new-instance v0, Landroid/util/Spline$LinearSpline;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/util/Spline$LinearSpline;-><init>([F[F)V

    #@5
    return-object v0
.end method

.method public static createMonotoneCubicSpline([F[F)Landroid/util/Spline;
    .locals 1
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    #@0
    .prologue
    .line 72
    new-instance v0, Landroid/util/Spline$MonotoneCubicSpline;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/util/Spline$MonotoneCubicSpline;-><init>([F[F)V

    #@5
    return-object v0
.end method

.method public static createSpline([F[F)Landroid/util/Spline;
    .locals 2
    .param p0, "x"    # [F
    .param p1, "y"    # [F

    #@0
    .prologue
    .line 41
    invoke-static {p0}, Landroid/util/Spline;->isStrictlyIncreasing([F)Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v1, "The control points must all have strictly increasing X values."

    #@b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v0

    #@f
    .line 46
    :cond_0
    invoke-static {p1}, Landroid/util/Spline;->isMonotonic([F)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 47
    invoke-static {p0, p1}, Landroid/util/Spline;->createMonotoneCubicSpline([F[F)Landroid/util/Spline;

    #@18
    move-result-object v0

    #@19
    return-object v0

    #@1a
    .line 49
    :cond_1
    invoke-static {p0, p1}, Landroid/util/Spline;->createLinearSpline([F[F)Landroid/util/Spline;

    #@1d
    move-result-object v0

    #@1e
    return-object v0
.end method

.method private static isMonotonic([F)Z
    .locals 6
    .param p0, "x"    # [F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 110
    if-eqz p0, :cond_0

    #@3
    array-length v3, p0

    #@4
    const/4 v4, 0x2

    #@5
    if-ge v3, v4, :cond_1

    #@7
    .line 111
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "There must be at least two control points."

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 113
    :cond_1
    aget v2, p0, v5

    #@12
    .line 114
    .local v2, "prev":F
    const/4 v1, 0x1

    #@13
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@14
    if-ge v1, v3, :cond_3

    #@16
    .line 115
    aget v0, p0, v1

    #@18
    .line 116
    .local v0, "curr":F
    cmpg-float v3, v0, v2

    #@1a
    if-gez v3, :cond_2

    #@1c
    .line 117
    return v5

    #@1d
    .line 119
    :cond_2
    move v2, v0

    #@1e
    .line 114
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 121
    .end local v0    # "curr":F
    :cond_3
    const/4 v3, 0x1

    #@22
    return v3
.end method

.method private static isStrictlyIncreasing([F)Z
    .locals 6
    .param p0, "x"    # [F

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 95
    if-eqz p0, :cond_0

    #@3
    array-length v3, p0

    #@4
    const/4 v4, 0x2

    #@5
    if-ge v3, v4, :cond_1

    #@7
    .line 96
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9
    const-string/jumbo v4, "There must be at least two control points."

    #@c
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f
    throw v3

    #@10
    .line 98
    :cond_1
    aget v2, p0, v5

    #@12
    .line 99
    .local v2, "prev":F
    const/4 v1, 0x1

    #@13
    .local v1, "i":I
    :goto_0
    array-length v3, p0

    #@14
    if-ge v1, v3, :cond_3

    #@16
    .line 100
    aget v0, p0, v1

    #@18
    .line 101
    .local v0, "curr":F
    cmpg-float v3, v0, v2

    #@1a
    if-gtz v3, :cond_2

    #@1c
    .line 102
    return v5

    #@1d
    .line 104
    :cond_2
    move v2, v0

    #@1e
    .line 99
    add-int/lit8 v1, v1, 0x1

    #@20
    goto :goto_0

    #@21
    .line 106
    .end local v0    # "curr":F
    :cond_3
    const/4 v3, 0x1

    #@22
    return v3
.end method


# virtual methods
.method public abstract interpolate(F)F
.end method
