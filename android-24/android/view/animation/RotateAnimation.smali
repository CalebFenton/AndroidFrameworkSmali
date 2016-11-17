.class public Landroid/view/animation/RotateAnimation;
.super Landroid/view/animation/Animation;
.source "RotateAnimation.java"


# instance fields
.field private mFromDegrees:F

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private mToDegrees:F


# direct methods
.method public constructor <init>(FF)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 82
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 34
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@7
    .line 35
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@9
    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@b
    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@d
    .line 83
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    #@f
    .line 84
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    #@11
    .line 85
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    #@13
    .line 86
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    #@15
    .line 82
    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotX"    # F
    .param p4, "pivotY"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 104
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 34
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@7
    .line 35
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@9
    .line 36
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@b
    .line 37
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@d
    .line 105
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    #@f
    .line 106
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    #@11
    .line 108
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@13
    .line 109
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@15
    .line 110
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@17
    .line 111
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@19
    .line 112
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    #@1c
    .line 104
    return-void
.end method

.method public constructor <init>(FFIFIF)V
    .locals 2
    .param p1, "fromDegrees"    # F
    .param p2, "toDegrees"    # F
    .param p3, "pivotXType"    # I
    .param p4, "pivotXValue"    # F
    .param p5, "pivotYType"    # I
    .param p6, "pivotYValue"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 140
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 34
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@7
    .line 35
    iput v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@9
    .line 36
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@b
    .line 37
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@d
    .line 142
    iput p1, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    #@f
    .line 143
    iput p2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    #@11
    .line 145
    iput p4, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@13
    .line 146
    iput p3, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@15
    .line 147
    iput p6, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@17
    .line 148
    iput p5, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@19
    .line 149
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    #@1c
    .line 141
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 34
    iput v4, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@7
    .line 35
    iput v4, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@9
    .line 36
    iput v3, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@b
    .line 37
    iput v3, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@d
    .line 52
    sget-object v2, Lcom/android/internal/R$styleable;->RotateAnimation:[I

    #@f
    .line 51
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@12
    move-result-object v0

    #@13
    .line 54
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@16
    move-result v2

    #@17
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    #@19
    .line 56
    const/4 v2, 0x1

    #@1a
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@1d
    move-result v2

    #@1e
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    #@20
    .line 59
    const/4 v2, 0x2

    #@21
    .line 58
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@24
    move-result-object v2

    #@25
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@28
    move-result-object v1

    #@29
    .line 60
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    #@2b
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@2d
    .line 61
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@2f
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@31
    .line 64
    const/4 v2, 0x3

    #@32
    .line 63
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@35
    move-result-object v2

    #@36
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@39
    move-result-object v1

    #@3a
    .line 65
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    #@3c
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@3e
    .line 66
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@40
    iput v2, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@42
    .line 68
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@45
    .line 70
    invoke-direct {p0}, Landroid/view/animation/RotateAnimation;->initializePivotPoint()V

    #@48
    .line 48
    return-void
.end method

.method private initializePivotPoint()V
    .locals 1

    #@0
    .prologue
    .line 157
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 158
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@6
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    #@8
    .line 160
    :cond_0
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@a
    if-nez v0, :cond_1

    #@c
    .line 161
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@e
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    #@10
    .line 156
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 6
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 167
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    #@3
    iget v3, p0, Landroid/view/animation/RotateAnimation;->mToDegrees:F

    #@5
    iget v4, p0, Landroid/view/animation/RotateAnimation;->mFromDegrees:F

    #@7
    sub-float/2addr v3, v4

    #@8
    mul-float/2addr v3, p1

    #@9
    add-float v0, v2, v3

    #@b
    .line 168
    .local v0, "degrees":F
    invoke-virtual {p0}, Landroid/view/animation/RotateAnimation;->getScaleFactor()F

    #@e
    move-result v1

    #@f
    .line 170
    .local v1, "scale":F
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    #@11
    cmpl-float v2, v2, v5

    #@13
    if-nez v2, :cond_0

    #@15
    iget v2, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    #@17
    cmpl-float v2, v2, v5

    #@19
    if-nez v2, :cond_0

    #@1b
    .line 171
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setRotate(F)V

    #@22
    .line 166
    :goto_0
    return-void

    #@23
    .line 173
    :cond_0
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@26
    move-result-object v2

    #@27
    iget v3, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    #@29
    mul-float/2addr v3, v1

    #@2a
    iget v4, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    #@2c
    mul-float/2addr v4, v1

    #@2d
    invoke-virtual {v2, v0, v3, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    #@30
    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    #@0
    .prologue
    .line 179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@3
    .line 180
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotXType:I

    #@5
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotXValue:F

    #@7
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotX:F

    #@d
    .line 181
    iget v0, p0, Landroid/view/animation/RotateAnimation;->mPivotYType:I

    #@f
    iget v1, p0, Landroid/view/animation/RotateAnimation;->mPivotYValue:F

    #@11
    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/RotateAnimation;->resolveSize(IFII)F

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/view/animation/RotateAnimation;->mPivotY:F

    #@17
    .line 178
    return-void
.end method
