.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# instance fields
.field protected mFromXDelta:F

.field private mFromXType:I

.field protected mFromXValue:F

.field protected mFromYDelta:F

.field private mFromYType:I

.field protected mFromYValue:F

.field protected mToXDelta:F

.field private mToXType:I

.field protected mToXValue:F

.field protected mToYDelta:F

.field private mToYType:I

.field protected mToYValue:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 102
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 30
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@7
    .line 31
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@9
    .line 33
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@b
    .line 34
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@d
    .line 37
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@f
    .line 39
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@11
    .line 42
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@13
    .line 44
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@15
    .line 103
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@17
    .line 104
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@19
    .line 105
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@1b
    .line 106
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@1d
    .line 108
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@1f
    .line 109
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@21
    .line 110
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@23
    .line 111
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@25
    .line 102
    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 2
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F
    .param p5, "fromYType"    # I
    .param p6, "fromYValue"    # F
    .param p7, "toYType"    # I
    .param p8, "toYValue"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 142
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 30
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@7
    .line 31
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@9
    .line 33
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@b
    .line 34
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@d
    .line 37
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@f
    .line 39
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@11
    .line 42
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@13
    .line 44
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@15
    .line 145
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@17
    .line 146
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@19
    .line 147
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@1b
    .line 148
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@1d
    .line 150
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@1f
    .line 151
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@21
    .line 152
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@23
    .line 153
    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@25
    .line 143
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v3, 0x0

    #@2
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@5
    .line 30
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@7
    .line 31
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@9
    .line 33
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@b
    .line 34
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@d
    .line 37
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@f
    .line 39
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@11
    .line 42
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@13
    .line 44
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@15
    .line 65
    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    #@17
    .line 64
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@1a
    move-result-object v0

    #@1b
    .line 67
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@1e
    move-result-object v2

    #@1f
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@22
    move-result-object v1

    #@23
    .line 69
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    #@25
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@27
    .line 70
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@29
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@2b
    .line 73
    const/4 v2, 0x1

    #@2c
    .line 72
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@2f
    move-result-object v2

    #@30
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@33
    move-result-object v1

    #@34
    .line 74
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    #@36
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@38
    .line 75
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@3a
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@3c
    .line 78
    const/4 v2, 0x2

    #@3d
    .line 77
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@40
    move-result-object v2

    #@41
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@44
    move-result-object v1

    #@45
    .line 79
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    #@47
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@49
    .line 80
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@4b
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@4d
    .line 83
    const/4 v2, 0x3

    #@4e
    .line 82
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@51
    move-result-object v2

    #@52
    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@55
    move-result-object v1

    #@56
    .line 84
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    #@58
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@5a
    .line 85
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    #@5c
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@5e
    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@61
    .line 61
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    .line 159
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    #@2
    .line 160
    .local v0, "dx":F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    #@4
    .line 161
    .local v1, "dy":F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    #@6
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    #@8
    cmpl-float v2, v2, v3

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 162
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    #@e
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    #@10
    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    #@12
    sub-float/2addr v3, v4

    #@13
    mul-float/2addr v3, p1

    #@14
    add-float v0, v2, v3

    #@16
    .line 164
    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    #@18
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    #@1a
    cmpl-float v2, v2, v3

    #@1c
    if-eqz v2, :cond_1

    #@1e
    .line 165
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    #@20
    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    #@22
    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    #@24
    sub-float/2addr v3, v4

    #@25
    mul-float/2addr v3, p1

    #@26
    add-float v1, v2, v3

    #@28
    .line 167
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@2b
    move-result-object v2

    #@2c
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    #@2f
    .line 158
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    #@0
    .prologue
    .line 172
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@3
    .line 173
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    #@5
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    #@7
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    #@a
    move-result v0

    #@b
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    #@d
    .line 174
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    #@f
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    #@11
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    #@14
    move-result v0

    #@15
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    #@17
    .line 175
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    #@19
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    #@1b
    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    #@21
    .line 176
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    #@23
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    #@25
    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    #@28
    move-result v0

    #@29
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    #@2b
    .line 171
    return-void
.end method
