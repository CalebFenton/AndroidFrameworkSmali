.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private greylist-max-o mFromDegrees:F

.field private greylist-max-o mPivotX:F

.field private greylist-max-o mPivotXType:I

.field private greylist-max-o mPivotXValue:F

.field private greylist-max-o mPivotY:F

.field private greylist-max-o mPivotYType:I

.field private greylist-max-o mPivotYValue:F

.field private greylist-max-o mToDegrees:F


# direct methods
.method public constructor whitelist <init>(FF)V
    .registers 4
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F

    .line 82
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 83
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 84
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 85
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 86
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(FFFF)V
    .registers 7
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    .line 104
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 105
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 106
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 108
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 109
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 110
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 111
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 112
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    .line 113
    return-void
.end method

.method public constructor whitelist <init>(FFIFIF)V
    .registers 8
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotXType"    # I
    .param p4, "pivotXValue"    # F
    .param p5, "pivotYType"    # I
    .param p6, "pivotYValue"    # F

    .line 141
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 142
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 143
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 145
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 146
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 147
    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 148
    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 149
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    .line 150
    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 36
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 51
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 54
    .local v2, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    .line 56
    const/4 v0, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    .line 58
    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 60
    .local v0, "d":Landroid/view/animation/Animation$Description;
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    .line 61
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    .line 63
    const/4 v1, 0x3

    invoke-virtual {v2, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;Landroid/content/Context;)Landroid/view/animation/Animation$Description;

    move-result-object v0

    .line 65
    iget v1, v0, Landroid/view/animation/Animation$Description;->type:I

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    .line 66
    iget v1, v0, Landroid/view/animation/Animation$Description;->value:F

    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    .line 68
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 70
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    .line 71
    return-void
.end method

.method private greylist-max-o initializePivotPoint()V
    .registers 2

    .line 157
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    if-nez v0, :cond_8

    .line 158
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 160
    :cond_8
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    if-nez v0, :cond_10

    .line 161
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 163
    :cond_10
    return-void
.end method


# virtual methods
.method protected whitelist applyTransformation(FLandroid/view/animation/Transformation;)V
    .registers 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .line 167
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 168
    .local v0, "degrees":F
    invoke-virtual {p0}, Landroid/view/animation/RotateAnimation;->getScaleFactor()F

    move-result v1

    .line 170
    .local v1, "scale":F
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_22

    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_22

    .line 171
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    goto :goto_2f

    .line 173
    :cond_22
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget v3, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    mul-float/2addr v3, v1

    iget v4, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    mul-float/2addr v4, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 175
    :goto_2f
    return-void
.end method

.method public whitelist initialize(IIII)V
    .registers 7
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 180
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    .line 181
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    .line 182
    return-void
.end method
