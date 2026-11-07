.class public Landroid/view/animation/TranslateXAnimation;
.super Landroid/view/animation/TranslateAnimation;
.source "TranslateXAnimation.java"


# instance fields
.field greylist-max-o mTmpValues:[F


# direct methods
.method public constructor greylist-max-o <init>(FF)V
    .registers 4
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 29
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    .line 36
    return-void
.end method

.method public constructor greylist-max-o <init>(IFIF)V
    .registers 14
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F

    .line 42
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "fromXType":I
    .end local p2    # "fromXValue":F
    .end local p3    # "toXType":I
    .end local p4    # "toXValue":F
    .local v1, "fromXType":I
    .local v2, "fromXValue":F
    .local v3, "toXType":I
    .local v4, "toXValue":F
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 29
    const/16 p1, 0x9

    new-array p1, p1, [F

    iput-object p1, v0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    .line 43
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 50
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 51
    .local v0, "m":Landroid/graphics/Matrix;
    iget-object v1, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 52
    iget v1, p0, Landroid/view/animation/TranslateXAnimation;->mFromXDelta:F

    iget v2, p0, Landroid/view/animation/TranslateXAnimation;->mToXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateXAnimation;->mFromXDelta:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    .line 53
    .local v1, "dx":F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v3, p0, Landroid/view/animation/TranslateXAnimation;->mTmpValues:[F

    const/4 v4, 0x5

    aget v3, v3, v4

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 54
    return-void
.end method
