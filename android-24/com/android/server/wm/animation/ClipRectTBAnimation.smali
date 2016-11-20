.class public Lcom/android/server/wm/animation/ClipRectTBAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectTBAnimation.java"


# instance fields
.field private final mFromTranslateY:I

.field private mNormalizedTime:F

.field private final mToTranslateY:I

.field private final mTranslateInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>(IIIIIILandroid/view/animation/Interpolator;)V
    .locals 10
    .param p1, "fromT"    # I
    .param p2, "fromB"    # I
    .param p3, "toT"    # I
    .param p4, "toB"    # I
    .param p5, "fromTranslateY"    # I
    .param p6, "toTranslateY"    # I
    .param p7, "translateInterpolator"    # Landroid/view/animation/Interpolator;

    #@0
    .prologue
    .line 44
    const/4 v2, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v6, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    move-object v1, p0

    #@5
    move v3, p1

    #@6
    move v5, p2

    #@7
    move v7, p3

    #@8
    move v9, p4

    #@9
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    #@c
    .line 45
    iput p5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    #@e
    .line 46
    move/from16 v0, p6

    #@10
    iput v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToTranslateY:I

    #@12
    .line 47
    move-object/from16 v0, p7

    #@14
    iput-object v0, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    #@16
    .line 43
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 9
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 76
    iget-object v3, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    #@2
    iget v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mNormalizedTime:F

    #@4
    invoke-interface {v3, v4}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    #@7
    move-result v2

    #@8
    .line 78
    .local v2, "translationT":F
    iget v3, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    #@a
    int-to-float v3, v3

    #@b
    iget v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToTranslateY:I

    #@d
    iget v5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromTranslateY:I

    #@f
    sub-int/2addr v4, v5

    #@10
    int-to-float v4, v4

    #@11
    mul-float/2addr v4, v2

    #@12
    add-float/2addr v3, v4

    #@13
    float-to-int v1, v3

    #@14
    .line 79
    .local v1, "translation":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    #@17
    move-result-object v0

    #@18
    .line 80
    .local v0, "oldClipRect":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    #@1a
    .line 81
    iget-object v4, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@1c
    iget v4, v4, Landroid/graphics/Rect;->top:I

    #@1e
    sub-int/2addr v4, v1

    #@1f
    iget-object v5, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    #@21
    iget v5, v5, Landroid/graphics/Rect;->top:I

    #@23
    iget-object v6, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@25
    iget v6, v6, Landroid/graphics/Rect;->top:I

    #@27
    sub-int/2addr v5, v6

    #@28
    int-to-float v5, v5

    #@29
    mul-float/2addr v5, p1

    #@2a
    float-to-int v5, v5

    #@2b
    add-int/2addr v4, v5

    #@2c
    .line 82
    iget v5, v0, Landroid/graphics/Rect;->right:I

    #@2e
    .line 83
    iget-object v6, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@30
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    #@32
    sub-int/2addr v6, v1

    #@33
    iget-object v7, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    #@35
    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    #@37
    iget-object v8, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    #@39
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    #@3b
    sub-int/2addr v7, v8

    #@3c
    int-to-float v7, v7

    #@3d
    mul-float/2addr v7, p1

    #@3e
    float-to-int v7, v7

    #@3f
    add-int/2addr v6, v7

    #@40
    .line 80
    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    #@43
    .line 75
    return-void
.end method

.method public getTransformation(JLandroid/view/animation/Transformation;)Z
    .locals 9
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartOffset()J

    #@3
    move-result-wide v4

    #@4
    .line 57
    .local v4, "startOffset":J
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getDuration()J

    #@7
    move-result-wide v0

    #@8
    .line 59
    .local v0, "duration":J
    const-wide/16 v6, 0x0

    #@a
    cmp-long v3, v0, v6

    #@c
    if-eqz v3, :cond_0

    #@e
    .line 60
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartTime()J

    #@11
    move-result-wide v6

    #@12
    add-long/2addr v6, v4

    #@13
    sub-long v6, p1, v6

    #@15
    long-to-float v3, v6

    #@16
    .line 61
    long-to-float v6, v0

    #@17
    .line 60
    div-float v2, v3, v6

    #@19
    .line 66
    .local v2, "normalizedTime":F
    :goto_0
    iput v2, p0, Lcom/android/server/wm/animation/ClipRectTBAnimation;->mNormalizedTime:F

    #@1b
    .line 67
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/ClipRectAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    #@1e
    move-result v3

    #@1f
    return v3

    #@20
    .line 64
    .end local v2    # "normalizedTime":F
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/animation/ClipRectTBAnimation;->getStartTime()J

    #@23
    move-result-wide v6

    #@24
    cmp-long v3, p1, v6

    #@26
    if-gez v3, :cond_1

    #@28
    const/4 v2, 0x0

    #@29
    .restart local v2    # "normalizedTime":F
    goto :goto_0

    #@2a
    .end local v2    # "normalizedTime":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    #@2c
    .restart local v2    # "normalizedTime":F
    goto :goto_0
.end method
