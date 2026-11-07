.class public Lcom/android/internal/policy/ClipRectTBAnimation;
.super Landroid/view/animation/ClipRectAnimation;
.source "ClipRectTBAnimation.java"


# instance fields
.field private final blacklist mFromTranslateY:I

.field private blacklist mNormalizedTime:F

.field private final blacklist mToTranslateY:I

.field private final blacklist mTranslateInterpolator:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor blacklist <init>(IIIIIILandroid/view/animation/Interpolator;)V
    .registers 17
    .param p1, "fromT"    # I
    .param p2, "fromB"    # I
    .param p3, "toT"    # I
    .param p4, "toB"    # I
    .param p5, "fromTranslateY"    # I
    .param p6, "toTranslateY"    # I
    .param p7, "translateInterpolator"    # Landroid/view/animation/Interpolator;

    .line 43
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v6, p3

    move v8, p4

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ClipRectAnimation;-><init>(IIIIIIII)V

    .line 44
    iput p5, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromTranslateY:I

    .line 45
    iput p6, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mToTranslateY:I

    .line 46
    move-object/from16 v1, p7

    iput-object v1, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 12
    .param p1, "it"    # F
    .param p2, "tr"    # Landroid/view/animation/Transformation;

    .line 75
    iget-object v0, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mTranslateInterpolator:Landroid/view/animation/Interpolator;

    iget v1, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mNormalizedTime:F

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 76
    .local v0, "translationT":F
    iget v1, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromTranslateY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mToTranslateY:I

    iget v3, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromTranslateY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 78
    .local v1, "translation":I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 79
    .local v2, "oldClipRect":Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, p1

    float-to-int v5, v5

    add-int/2addr v4, v5

    iget v5, v2, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mToRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v8, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mFromRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    mul-float/2addr v7, p1

    float-to-int v7, v7

    add-int/2addr v6, v7

    invoke-virtual {p2, v3, v4, v5, v6}, Landroid/view/animation/Transformation;->setClipRect(IIII)V

    .line 83
    return-void
.end method

.method public whitelist getTransformation(JLandroid/view/animation/Transformation;)Z
    .registers 10
    .param p1, "currentTime"    # J
    .param p3, "outTransformation"    # Landroid/view/animation/Transformation;

    .line 55
    invoke-virtual {p0}, Lcom/android/internal/policy/ClipRectTBAnimation;->getStartOffset()J

    move-result-wide v0

    .line 56
    .local v0, "startOffset":J
    invoke-virtual {p0}, Lcom/android/internal/policy/ClipRectTBAnimation;->getDuration()J

    move-result-wide v2

    .line 58
    .local v2, "duration":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_19

    .line 59
    invoke-virtual {p0}, Lcom/android/internal/policy/ClipRectTBAnimation;->getStartTime()J

    move-result-wide v4

    add-long/2addr v4, v0

    sub-long v4, p1, v4

    long-to-float v4, v4

    long-to-float v5, v2

    div-float/2addr v4, v5

    .local v4, "normalizedTime":F
    goto :goto_25

    .line 63
    .end local v4    # "normalizedTime":F
    :cond_19
    invoke-virtual {p0}, Lcom/android/internal/policy/ClipRectTBAnimation;->getStartTime()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-gez v4, :cond_23

    const/4 v4, 0x0

    goto :goto_25

    :cond_23
    const/high16 v4, 0x3f800000    # 1.0f

    .line 65
    .restart local v4    # "normalizedTime":F
    :goto_25
    iput v4, p0, Lcom/android/internal/policy/ClipRectTBAnimation;->mNormalizedTime:F

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/view/animation/ClipRectAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v5

    return v5
.end method
