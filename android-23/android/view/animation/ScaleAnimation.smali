.class public Landroid/view/animation/ScaleAnimation;
.super Landroid/view/animation/Animation;
.source "ScaleAnimation.java"


# instance fields
.field private mFromX:F

.field private mFromXData:I

.field private mFromXType:I

.field private mFromY:F

.field private mFromYData:I

.field private mFromYType:I

.field private mPivotX:F

.field private mPivotXType:I

.field private mPivotXValue:F

.field private mPivotY:F

.field private mPivotYType:I

.field private mPivotYValue:F

.field private final mResources:Landroid/content/res/Resources;

.field private mToX:F

.field private mToXData:I

.field private mToXType:I

.field private mToY:F

.field private mToYData:I

.field private mToYType:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 145
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    #@7
    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    #@9
    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    #@b
    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    #@d
    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    #@f
    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    #@11
    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    #@13
    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    #@15
    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@17
    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@19
    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@1b
    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@1d
    .line 146
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    #@20
    .line 147
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@22
    .line 148
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@24
    .line 149
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@26
    .line 150
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@28
    .line 151
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    #@2a
    .line 152
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    #@2c
    .line 145
    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotX"    # F
    .param p6, "pivotY"    # F

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    const/4 v1, 0x0

    #@2
    .line 171
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 38
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    #@7
    .line 39
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    #@9
    .line 40
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    #@b
    .line 41
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    #@d
    .line 43
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    #@f
    .line 44
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    #@11
    .line 45
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    #@13
    .line 46
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    #@15
    .line 48
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@17
    .line 49
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@19
    .line 50
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@1b
    .line 51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@1d
    .line 173
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    #@20
    .line 174
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@22
    .line 175
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@24
    .line 176
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@26
    .line 177
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@28
    .line 179
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@2a
    .line 180
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@2c
    .line 181
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@2e
    .line 182
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@30
    .line 183
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    #@33
    .line 172
    return-void
.end method

.method public constructor <init>(FFFFIFIF)V
    .locals 2
    .param p1, "fromX"    # F
    .param p2, "toX"    # F
    .param p3, "fromY"    # F
    .param p4, "toY"    # F
    .param p5, "pivotXType"    # I
    .param p6, "pivotXValue"    # F
    .param p7, "pivotYType"    # I
    .param p8, "pivotYValue"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    const/4 v0, 0x0

    #@2
    .line 212
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    #@5
    .line 38
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    #@7
    .line 39
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    #@9
    .line 40
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    #@b
    .line 41
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    #@d
    .line 43
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    #@f
    .line 44
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    #@11
    .line 45
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    #@13
    .line 46
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    #@15
    .line 48
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@17
    .line 49
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@19
    .line 50
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@1b
    .line 51
    iput v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@1d
    .line 214
    const/4 v0, 0x0

    #@1e
    iput-object v0, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    #@20
    .line 215
    iput p1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@22
    .line 216
    iput p2, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@24
    .line 217
    iput p3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@26
    .line 218
    iput p4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@28
    .line 220
    iput p6, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@2a
    .line 221
    iput p5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@2c
    .line 222
    iput p8, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@2e
    .line 223
    iput p7, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@30
    .line 224
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    #@33
    .line 213
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v4, 0x0

    #@3
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@6
    .line 38
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    #@8
    .line 39
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    #@a
    .line 40
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    #@c
    .line 41
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    #@e
    .line 43
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    #@10
    .line 44
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    #@12
    .line 45
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    #@14
    .line 46
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    #@16
    .line 48
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@18
    .line 49
    iput v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@1a
    .line 50
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@1c
    .line 51
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@1e
    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@21
    move-result-object v3

    #@22
    iput-object v3, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    #@24
    .line 68
    sget-object v3, Lcom/android/internal/R$styleable;->ScaleAnimation:[I

    #@26
    .line 67
    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    #@29
    move-result-object v0

    #@2a
    .line 71
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v3, 0x2

    #@2b
    .line 70
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@2e
    move-result-object v2

    #@2f
    .line 72
    .local v2, "tv":Landroid/util/TypedValue;
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@31
    .line 73
    if-eqz v2, :cond_0

    #@33
    .line 74
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@35
    if-ne v3, v6, :cond_4

    #@37
    .line 76
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@3a
    move-result v3

    #@3b
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@3d
    .line 83
    :cond_0
    :goto_0
    const/4 v3, 0x3

    #@3e
    .line 82
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@41
    move-result-object v2

    #@42
    .line 84
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@44
    .line 85
    if-eqz v2, :cond_1

    #@46
    .line 86
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@48
    if-ne v3, v6, :cond_5

    #@4a
    .line 88
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@4d
    move-result v3

    #@4e
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@50
    .line 95
    :cond_1
    :goto_1
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@53
    move-result-object v2

    #@54
    .line 97
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@56
    .line 98
    if-eqz v2, :cond_2

    #@58
    .line 99
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@5a
    if-ne v3, v6, :cond_6

    #@5c
    .line 101
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@5f
    move-result v3

    #@60
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@62
    .line 108
    :cond_2
    :goto_2
    const/4 v3, 0x5

    #@63
    .line 107
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@66
    move-result-object v2

    #@67
    .line 109
    iput v5, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@69
    .line 110
    if-eqz v2, :cond_3

    #@6b
    .line 111
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@6d
    if-ne v3, v6, :cond_7

    #@6f
    .line 113
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    #@72
    move-result v3

    #@73
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@75
    .line 120
    :cond_3
    :goto_3
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@78
    move-result-object v3

    #@79
    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@7c
    move-result-object v1

    #@7d
    .line 122
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    #@7f
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@81
    .line 123
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    #@83
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@85
    .line 126
    const/4 v3, 0x1

    #@86
    .line 125
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    #@89
    move-result-object v3

    #@8a
    invoke-static {v3}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    #@8d
    move-result-object v1

    #@8e
    .line 127
    iget v3, v1, Landroid/view/animation/Animation$Description;->type:I

    #@90
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@92
    .line 128
    iget v3, v1, Landroid/view/animation/Animation$Description;->value:F

    #@94
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@96
    .line 130
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    #@99
    .line 132
    invoke-direct {p0}, Landroid/view/animation/ScaleAnimation;->initializePivotPoint()V

    #@9c
    .line 62
    return-void

    #@9d
    .line 78
    .end local v1    # "d":Landroid/view/animation/Animation$Description;
    :cond_4
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@9f
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    #@a1
    .line 79
    iget v3, v2, Landroid/util/TypedValue;->data:I

    #@a3
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    #@a5
    goto :goto_0

    #@a6
    .line 90
    :cond_5
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@a8
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    #@aa
    .line 91
    iget v3, v2, Landroid/util/TypedValue;->data:I

    #@ac
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    #@ae
    goto :goto_1

    #@af
    .line 103
    :cond_6
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@b1
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    #@b3
    .line 104
    iget v3, v2, Landroid/util/TypedValue;->data:I

    #@b5
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    #@b7
    goto :goto_2

    #@b8
    .line 115
    :cond_7
    iget v3, v2, Landroid/util/TypedValue;->type:I

    #@ba
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    #@bc
    .line 116
    iget v3, v2, Landroid/util/TypedValue;->data:I

    #@be
    iput v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    #@c0
    goto :goto_3
.end method

.method private initializePivotPoint()V
    .locals 1

    #@0
    .prologue
    .line 232
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@2
    if-nez v0, :cond_0

    #@4
    .line 233
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@6
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    #@8
    .line 235
    :cond_0
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@a
    if-nez v0, :cond_1

    #@c
    .line 236
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@e
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    #@10
    .line 231
    :cond_1
    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 8
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    const/high16 v6, 0x3f800000    # 1.0f

    #@3
    .line 242
    const/high16 v1, 0x3f800000    # 1.0f

    #@5
    .line 243
    .local v1, "sx":F
    const/high16 v2, 0x3f800000    # 1.0f

    #@7
    .line 244
    .local v2, "sy":F
    invoke-virtual {p0}, Landroid/view/animation/ScaleAnimation;->getScaleFactor()F

    #@a
    move-result v0

    #@b
    .line 246
    .local v0, "scale":F
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@d
    cmpl-float v3, v3, v6

    #@f
    if-nez v3, :cond_0

    #@11
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@13
    cmpl-float v3, v3, v6

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 247
    :cond_0
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@19
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@1b
    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@1d
    sub-float/2addr v4, v5

    #@1e
    mul-float/2addr v4, p1

    #@1f
    add-float v1, v3, v4

    #@21
    .line 249
    :cond_1
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@23
    cmpl-float v3, v3, v6

    #@25
    if-nez v3, :cond_2

    #@27
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@29
    cmpl-float v3, v3, v6

    #@2b
    if-eqz v3, :cond_3

    #@2d
    .line 250
    :cond_2
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@2f
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@31
    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@33
    sub-float/2addr v4, v5

    #@34
    mul-float/2addr v4, p1

    #@35
    add-float v2, v3, v4

    #@37
    .line 253
    :cond_3
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    #@39
    cmpl-float v3, v3, v7

    #@3b
    if-nez v3, :cond_4

    #@3d
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    #@3f
    cmpl-float v3, v3, v7

    #@41
    if-nez v3, :cond_4

    #@43
    .line 254
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@46
    move-result-object v3

    #@47
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    #@4a
    .line 241
    :goto_0
    return-void

    #@4b
    .line 256
    :cond_4
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    #@4e
    move-result-object v3

    #@4f
    iget v4, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    #@51
    mul-float/2addr v4, v0

    #@52
    iget v5, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    #@54
    mul-float/2addr v5, v0

    #@55
    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Matrix;->setScale(FFFF)V

    #@58
    goto :goto_0
.end method

.method public initialize(IIII)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    #@0
    .prologue
    .line 279
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    #@3
    .line 281
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@5
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromXType:I

    #@7
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromXData:I

    #@9
    move-object v0, p0

    #@a
    move v4, p1

    #@b
    move v5, p3

    #@c
    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromX:F

    #@12
    .line 282
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@14
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToXType:I

    #@16
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToXData:I

    #@18
    move-object v0, p0

    #@19
    move v4, p1

    #@1a
    move v5, p3

    #@1b
    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    #@1e
    move-result v0

    #@1f
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToX:F

    #@21
    .line 283
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@23
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mFromYType:I

    #@25
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mFromYData:I

    #@27
    move-object v0, p0

    #@28
    move v4, p2

    #@29
    move v5, p4

    #@2a
    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    #@2d
    move-result v0

    #@2e
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mFromY:F

    #@30
    .line 284
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@32
    iget v2, p0, Landroid/view/animation/ScaleAnimation;->mToYType:I

    #@34
    iget v3, p0, Landroid/view/animation/ScaleAnimation;->mToYData:I

    #@36
    move-object v0, p0

    #@37
    move v4, p2

    #@38
    move v5, p4

    #@39
    invoke-virtual/range {v0 .. v5}, Landroid/view/animation/ScaleAnimation;->resolveScale(FIIII)F

    #@3c
    move-result v0

    #@3d
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mToY:F

    #@3f
    .line 286
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotXType:I

    #@41
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotXValue:F

    #@43
    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    #@46
    move-result v0

    #@47
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotX:F

    #@49
    .line 287
    iget v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotYType:I

    #@4b
    iget v1, p0, Landroid/view/animation/ScaleAnimation;->mPivotYValue:F

    #@4d
    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/ScaleAnimation;->resolveSize(IFII)F

    #@50
    move-result v0

    #@51
    iput v0, p0, Landroid/view/animation/ScaleAnimation;->mPivotY:F

    #@53
    .line 278
    return-void
.end method

.method resolveScale(FIIII)F
    .locals 3
    .param p1, "scale"    # F
    .param p2, "type"    # I
    .param p3, "data"    # I
    .param p4, "size"    # I
    .param p5, "psize"    # I

    #@0
    .prologue
    .line 262
    const/4 v1, 0x6

    #@1
    if-ne p2, v1, :cond_0

    #@3
    .line 263
    int-to-float v1, p4

    #@4
    int-to-float v2, p5

    #@5
    invoke-static {p3, v1, v2}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    #@8
    move-result v0

    #@9
    .line 270
    .local v0, "targetSize":F
    :goto_0
    if-nez p4, :cond_2

    #@b
    .line 271
    const/high16 v1, 0x3f800000    # 1.0f

    #@d
    return v1

    #@e
    .line 264
    .end local v0    # "targetSize":F
    :cond_0
    const/4 v1, 0x5

    #@f
    if-ne p2, v1, :cond_1

    #@11
    .line 265
    iget-object v1, p0, Landroid/view/animation/ScaleAnimation;->mResources:Landroid/content/res/Resources;

    #@13
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    #@16
    move-result-object v1

    #@17
    invoke-static {p3, v1}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    #@1a
    move-result v0

    #@1b
    .restart local v0    # "targetSize":F
    goto :goto_0

    #@1c
    .line 267
    .end local v0    # "targetSize":F
    :cond_1
    return p1

    #@1d
    .line 274
    .restart local v0    # "targetSize":F
    :cond_2
    int-to-float v1, p4

    #@1e
    div-float v1, v0, v1

    #@20
    return v1
.end method
