.class public Landroid/view/animation/AlphaAnimation;
.super Landroid/view/animation/Animation;
.source "AlphaAnimation.java"


# instance fields
.field private greylist-max-o mFromAlpha:F

.field private greylist-max-o mToAlpha:F


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 3
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F

    .line 58
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 59
    iput p1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 60
    iput p2, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 61
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    sget-object v0, Lcom/android/internal/R$styleable;->AlphaAnimation:[I

    .line 43
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 45
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 46
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    .line 48
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 49
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 68
    iget v0, p0, Landroid/view/animation/AlphaAnimation;->mFromAlpha:F

    .line 69
    .local v0, "alpha":F
    iget v1, p0, Landroid/view/animation/AlphaAnimation;->mToAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, v0

    invoke-virtual {p2, v1}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 70
    return-void
.end method

.method public greylist-max-o hasAlpha()Z
    .registers 2

    .line 87
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist willChangeBounds()Z
    .registers 2

    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist willChangeTransformationMatrix()Z
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method
