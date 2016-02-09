.class Landroid/support/v4/view/animation/PathInterpolatorDonut;
.super Ljava/lang/Object;
.source "PathInterpolatorDonut.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final PRECISION:F = 0.002f


# instance fields
.field private final mX:[F

.field private final mY:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "controlX"    # F
    .param p2, "controlY"    # F

    #@0
    .prologue
    .line 56
    invoke-static {p1, p2}, Landroid/support/v4/view/animation/PathInterpolatorDonut;->createQuad(FF)Landroid/graphics/Path;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/support/v4/view/animation/PathInterpolatorDonut;-><init>(Landroid/graphics/Path;)V

    #@7
    .line 55
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 1
    .param p1, "controlX1"    # F
    .param p2, "controlY1"    # F
    .param p3, "controlX2"    # F
    .param p4, "controlY2"    # F

    #@0
    .prologue
    .line 61
    invoke-static {p1, p2, p3, p4}, Landroid/support/v4/view/animation/PathInterpolatorDonut;->createCubic(FFFF)Landroid/graphics/Path;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/support/v4/view/animation/PathInterpolatorDonut;-><init>(Landroid/graphics/Path;)V

    #@7
    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Path;)V
    .locals 9
    .param p1, "path"    # Landroid/graphics/Path;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 37
    new-instance v4, Landroid/graphics/PathMeasure;

    #@6
    invoke-direct {v4, p1, v8}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    #@9
    .line 39
    .local v4, "pathMeasure":Landroid/graphics/PathMeasure;
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    #@c
    move-result v3

    #@d
    .line 40
    .local v3, "pathLength":F
    const v6, 0x3b03126f    # 0.002f

    #@10
    div-float v6, v3, v6

    #@12
    float-to-int v6, v6

    #@13
    add-int/lit8 v2, v6, 0x1

    #@15
    .line 42
    .local v2, "numPoints":I
    new-array v6, v2, [F

    #@17
    iput-object v6, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@19
    .line 43
    new-array v6, v2, [F

    #@1b
    iput-object v6, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mY:[F

    #@1d
    .line 45
    const/4 v6, 0x2

    #@1e
    new-array v5, v6, [F

    #@20
    .line 46
    .local v5, "position":[F
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    #@23
    .line 47
    int-to-float v6, v1

    #@24
    mul-float/2addr v6, v3

    #@25
    add-int/lit8 v7, v2, -0x1

    #@27
    int-to-float v7, v7

    #@28
    div-float v0, v6, v7

    #@2a
    .line 48
    .local v0, "distance":F
    const/4 v6, 0x0

    #@2b
    invoke-virtual {v4, v0, v5, v6}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    #@2e
    .line 50
    iget-object v6, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@30
    aget v7, v5, v8

    #@32
    aput v7, v6, v1

    #@34
    .line 51
    iget-object v6, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mY:[F

    #@36
    const/4 v7, 0x1

    #@37
    aget v7, v5, v7

    #@39
    aput v7, v6, v1

    #@3b
    .line 46
    add-int/lit8 v1, v1, 0x1

    #@3d
    goto :goto_0

    #@3e
    .line 36
    .end local v0    # "distance":F
    :cond_0
    return-void
.end method

.method private static createCubic(FFFF)Landroid/graphics/Path;
    .locals 7
    .param p0, "controlX1"    # F
    .param p1, "controlY1"    # F
    .param p2, "controlX2"    # F
    .param p3, "controlY2"    # F

    #@0
    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 107
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    .line 108
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@b
    move v1, p0

    #@c
    move v2, p1

    #@d
    move v3, p2

    #@e
    move v4, p3

    #@f
    move v6, v5

    #@10
    .line 109
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    #@13
    .line 110
    return-object v0
.end method

.method private static createQuad(FF)Landroid/graphics/Path;
    .locals 3
    .param p0, "controlX"    # F
    .param p1, "controlY"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    const/4 v1, 0x0

    #@3
    .line 99
    new-instance v0, Landroid/graphics/Path;

    #@5
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    #@8
    .line 100
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    #@b
    .line 101
    invoke-virtual {v0, p0, p1, v2, v2}, Landroid/graphics/Path;->quadTo(FFFF)V

    #@e
    .line 102
    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 11
    .param p1, "t"    # F

    #@0
    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    #@2
    const/4 v10, 0x0

    #@3
    .line 66
    cmpg-float v8, p1, v10

    #@5
    if-gtz v8, :cond_0

    #@7
    .line 67
    return v10

    #@8
    .line 68
    :cond_0
    cmpl-float v8, p1, v9

    #@a
    if-ltz v8, :cond_1

    #@c
    .line 69
    return v9

    #@d
    .line 73
    :cond_1
    const/4 v4, 0x0

    #@e
    .line 74
    .local v4, "startIndex":I
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@10
    array-length v8, v8

    #@11
    add-int/lit8 v0, v8, -0x1

    #@13
    .line 75
    .local v0, "endIndex":I
    :goto_0
    sub-int v8, v0, v4

    #@15
    const/4 v9, 0x1

    #@16
    if-le v8, v9, :cond_3

    #@18
    .line 76
    add-int v8, v4, v0

    #@1a
    div-int/lit8 v3, v8, 0x2

    #@1c
    .line 77
    .local v3, "midIndex":I
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@1e
    aget v8, v8, v3

    #@20
    cmpg-float v8, p1, v8

    #@22
    if-gez v8, :cond_2

    #@24
    .line 78
    move v0, v3

    #@25
    goto :goto_0

    #@26
    .line 80
    :cond_2
    move v4, v3

    #@27
    goto :goto_0

    #@28
    .line 84
    .end local v3    # "midIndex":I
    :cond_3
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@2a
    aget v8, v8, v0

    #@2c
    iget-object v9, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@2e
    aget v9, v9, v4

    #@30
    sub-float v7, v8, v9

    #@32
    .line 85
    .local v7, "xRange":F
    cmpl-float v8, v7, v10

    #@34
    if-nez v8, :cond_4

    #@36
    .line 86
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mY:[F

    #@38
    aget v8, v8, v4

    #@3a
    return v8

    #@3b
    .line 89
    :cond_4
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mX:[F

    #@3d
    aget v8, v8, v4

    #@3f
    sub-float v6, p1, v8

    #@41
    .line 90
    .local v6, "tInRange":F
    div-float v2, v6, v7

    #@43
    .line 92
    .local v2, "fraction":F
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mY:[F

    #@45
    aget v5, v8, v4

    #@47
    .line 93
    .local v5, "startY":F
    iget-object v8, p0, Landroid/support/v4/view/animation/PathInterpolatorDonut;->mY:[F

    #@49
    aget v1, v8, v0

    #@4b
    .line 95
    .local v1, "endY":F
    sub-float v8, v1, v5

    #@4d
    mul-float/2addr v8, v2

    #@4e
    add-float/2addr v8, v5

    #@4f
    return v8
.end method
