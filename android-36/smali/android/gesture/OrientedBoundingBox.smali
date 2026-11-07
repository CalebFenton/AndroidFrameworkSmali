.class public Landroid/gesture/OrientedBoundingBox;
.super Ljava/lang/Object;
.source "OrientedBoundingBox.java"


# instance fields
.field public final whitelist centerX:F

.field public final whitelist centerY:F

.field public final whitelist height:F

.field public final whitelist orientation:F

.field public final whitelist squareness:F

.field public final whitelist width:F


# direct methods
.method constructor greylist-max-o <init>(FFFFF)V
    .registers 9
    .param p1, "angle"    # F
    .param p2, "cx"    # F
    .param p3, "cy"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    .line 38
    iput p4, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    .line 39
    iput p5, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    .line 40
    iput p2, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    .line 41
    iput p3, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    .line 42
    div-float v0, p4, p5

    .line 43
    .local v0, "ratio":F
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_19

    .line 44
    div-float/2addr v1, v0

    iput v1, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    goto :goto_1b

    .line 46
    :cond_19
    iput v0, p0, Landroid/gesture/OrientedBoundingBox;->squareness:F

    .line 48
    :goto_1b
    return-void
.end method


# virtual methods
.method public greylist-max-o toPath()Landroid/graphics/Path;
    .registers 9

    .line 56
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 57
    .local v0, "path":Landroid/graphics/Path;
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 58
    .local v1, "point":[F
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    const/4 v4, 0x0

    aput v2, v1, v4

    .line 59
    iget v2, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v2, v3

    const/4 v5, 0x1

    aput v2, v1, v5

    .line 60
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 61
    .local v2, "matrix":Landroid/graphics/Matrix;
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->orientation:F

    invoke-virtual {v2, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 62
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->centerX:F

    iget v7, p0, Landroid/gesture/OrientedBoundingBox;->centerY:F

    invoke-virtual {v2, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 63
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 64
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 66
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 67
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 68
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 69
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 71
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 72
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    neg-float v6, v6

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 73
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 74
    aget v6, v1, v4

    aget v7, v1, v5

    invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->width:F

    div-float/2addr v6, v3

    aput v6, v1, v4

    .line 77
    iget v6, p0, Landroid/gesture/OrientedBoundingBox;->height:F

    div-float/2addr v6, v3

    aput v6, v1, v5

    .line 78
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 79
    aget v3, v1, v4

    aget v4, v1, v5

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 83
    return-object v0
.end method
