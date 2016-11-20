.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final centerX:F

.field public final centerY:F

.field public final height:F

.field public final orientation:F

.field public final squareness:F

.field public final width:F


# direct methods
.method constructor <init>(FFFFF)V
    .locals 3
    .param p1, "angle"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F

    #@0
    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    #@2
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 37
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    #@7
    .line 38
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    #@9
    .line 39
    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    #@b
    .line 40
    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    #@d
    .line 41
    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    #@f
    .line 42
    div-float v0, p4, p5

    #@11
    .line 43
    .local v0, "ratio":F
    cmpl-float v1, v0, v2

    #@13
    if-lez v1, :cond_0

    #@15
    .line 44
    div-float v1, v2, v0

    #@17
    iput v1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    #@19
    .line 36
    :goto_0
    return-void

    #@1a
    .line 46
    :cond_0
    iput v0, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    #@1c
    goto :goto_0
.end method


# virtual methods
.method public toPath()Landroid/graphics/Path;
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    const/high16 v5, 0x40000000    # 2.0f

    #@4
    .line 56
    new-instance v1, Landroid/graphics/Path;

    #@6
    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    #@9
    .line 57
    .local v1, "path":Landroid/graphics/Path;
    const/4 v3, 0x2

    #@a
    new-array v2, v3, [F

    #@c
    .line 58
    .local v2, "point":[F
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    #@e
    neg-float v3, v3

    #@f
    div-float/2addr v3, v5

    #@10
    aput v3, v2, v6

    #@12
    .line 59
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    #@14
    div-float/2addr v3, v5

    #@15
    aput v3, v2, v7

    #@17
    .line 60
    new-instance v0, Landroid/graphics/Matrix;

    #@19
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    #@1c
    .line 61
    .local v0, "matrix":Landroid/graphics/Matrix;
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    #@1e
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setRotate(F)V

    #@21
    .line 62
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    #@23
    iget v4, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    #@25
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    #@28
    .line 63
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@2b
    .line 64
    aget v3, v2, v6

    #@2d
    aget v4, v2, v7

    #@2f
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    #@32
    .line 66
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    #@34
    neg-float v3, v3

    #@35
    div-float/2addr v3, v5

    #@36
    aput v3, v2, v6

    #@38
    .line 67
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    #@3a
    neg-float v3, v3

    #@3b
    div-float/2addr v3, v5

    #@3c
    aput v3, v2, v7

    #@3e
    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@41
    .line 69
    aget v3, v2, v6

    #@43
    aget v4, v2, v7

    #@45
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    #@48
    .line 71
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    #@4a
    div-float/2addr v3, v5

    #@4b
    aput v3, v2, v6

    #@4d
    .line 72
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    #@4f
    neg-float v3, v3

    #@50
    div-float/2addr v3, v5

    #@51
    aput v3, v2, v7

    #@53
    .line 73
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@56
    .line 74
    aget v3, v2, v6

    #@58
    aget v4, v2, v7

    #@5a
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    #@5d
    .line 76
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    #@5f
    div-float/2addr v3, v5

    #@60
    aput v3, v2, v6

    #@62
    .line 77
    iget v3, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    #@64
    div-float/2addr v3, v5

    #@65
    aput v3, v2, v7

    #@67
    .line 78
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    #@6a
    .line 79
    aget v3, v2, v6

    #@6c
    aget v4, v2, v7

    #@6e
    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    #@71
    .line 81
    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    #@74
    .line 83
    return-object v1
.end method
