.class public Landroid/view/animation/TranslateYAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateYAnimation.java"


# instance fields
.field mTmpValues:[F


# direct methods
.method public constructor <init>(FF)V
    .locals 1
    .param p1, "fromYDelta"    # F
    .param p2, "toYDelta"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 35
    invoke-direct {p0, v0, v0, p1, p2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    #@4
    .line 29
    const/16 v0, 0x9

    #@6
    new-array v0, v0, [F

    #@8
    iput-object v0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    #@a
    .line 34
    return-void
.end method

.method public constructor <init>(IFIF)V
    .locals 9
    .param p1, "fromYType"    # I
    .param p2, "fromYValue"    # F
    .param p3, "toYType"    # I
    .param p4, "toYValue"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v2, 0x0

    #@2
    move-object v0, p0

    #@3
    move v3, v1

    #@4
    move v4, v2

    #@5
    move v5, p1

    #@6
    move v6, p2

    #@7
    move v7, p3

    #@8
    move v8, p4

    #@9
    .line 42
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    #@c
    .line 29
    const/16 v0, 0x9

    #@e
    new-array v0, v0, [F

    #@10
    iput-object v0, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    #@12
    .line 41
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 50
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@3
    move-result-object v1

    #@4
    .line 51
    .local v1, "m":Landroid/graphics/Matrix;
    iget-object v2, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    #@6
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->getValues([F)V

    #@9
    .line 52
    iget v2, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    #@b
    iget v3, p0, Landroid/view/animation/TranslateYAnimation;->mToYDelta:F

    #@d
    iget v4, p0, Landroid/view/animation/TranslateYAnimation;->mFromYDelta:F

    #@f
    sub-float/2addr v3, v4

    #@10
    mul-float/2addr v3, p1

    #@11
    add-float v0, v2, v3

    #@13
    .line 53
    .local v0, "dy":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@16
    move-result-object v2

    #@17
    iget-object v3, p0, Landroid/view/animation/TranslateYAnimation;->mTmpValues:[F

    #@19
    const/4 v4, 0x2

    #@1a
    aget v3, v3, v4

    #@1c
    invoke-virtual {v2, v3, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@1f
    .line 49
    return-void
.end method
