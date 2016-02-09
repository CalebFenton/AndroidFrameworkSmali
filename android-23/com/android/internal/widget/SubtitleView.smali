.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final COLOR_BEVEL_DARK:I = -0x80000000

.field private static final COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mBackgroundColor:I

.field private final mCornerRadius:F

.field private mEdgeColor:I

.field private mEdgeType:I

.field private mForegroundColor:I

.field private mHasMeasurements:Z

.field private mInnerPaddingX:I

.field private mLastMeasuredWidth:I

.field private mLayout:Landroid/text/StaticLayout;

.field private final mLineBounds:Landroid/graphics/RectF;

.field private final mOutlineWidth:F

.field private mPaint:Landroid/graphics/Paint;

.field private final mShadowOffsetX:F

.field private final mShadowOffsetY:F

.field private final mShadowRadius:F

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private final mText:Ljava/lang/StringBuilder;

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    #@0
    .prologue
    .line 82
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #@4
    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    #@4
    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #@4
    .line 55
    new-instance v7, Landroid/graphics/RectF;

    #@6
    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    #@9
    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    #@b
    .line 58
    new-instance v7, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    #@12
    .line 73
    const/high16 v7, 0x3f800000    # 1.0f

    #@14
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    #@16
    .line 74
    const/4 v7, 0x0

    #@17
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    #@19
    .line 75
    const/4 v7, 0x0

    #@1a
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    #@1c
    .line 93
    sget-object v7, Landroid/R$styleable;->TextView:[I

    #@1e
    .line 92
    invoke-virtual {p1, p2, v7, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    #@21
    move-result-object v0

    #@22
    .line 95
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string/jumbo v5, ""

    #@25
    .line 96
    .local v5, "text":Ljava/lang/CharSequence;
    const/16 v6, 0xf

    #@27
    .line 98
    .local v6, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    #@2a
    move-result v3

    #@2b
    .line 99
    .local v3, "n":I
    const/4 v2, 0x0

    #@2c
    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    #@2e
    .line 100
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    #@31
    move-result v1

    #@32
    .line 102
    .local v1, "attr":I
    sparse-switch v1, :sswitch_data_0

    #@35
    .line 99
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 104
    :sswitch_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    #@3b
    move-result-object v5

    #@3c
    goto :goto_1

    #@3d
    .line 107
    :sswitch_1
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    #@3f
    float-to-int v7, v7

    #@40
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@43
    move-result v7

    #@44
    int-to-float v7, v7

    #@45
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    #@47
    goto :goto_1

    #@48
    .line 110
    :sswitch_2
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    #@4a
    invoke-virtual {v0, v1, v7}, Landroid/content/res/TypedArray;->getFloat(IF)F

    #@4d
    move-result v7

    #@4e
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    #@50
    goto :goto_1

    #@51
    .line 113
    :sswitch_3
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    #@54
    move-result v6

    #@55
    goto :goto_1

    #@56
    .line 120
    .end local v1    # "attr":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    #@59
    move-result-object v7

    #@5a
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@5d
    move-result-object v4

    #@5e
    .line 121
    .local v4, "res":Landroid/content/res/Resources;
    const v7, 0x1050083

    #@61
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@64
    move-result v7

    #@65
    int-to-float v7, v7

    #@66
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    #@68
    .line 122
    const v7, 0x1050086

    #@6b
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@6e
    move-result v7

    #@6f
    int-to-float v7, v7

    #@70
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    #@72
    .line 123
    const v7, 0x1050084

    #@75
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@78
    move-result v7

    #@79
    int-to-float v7, v7

    #@7a
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    #@7c
    .line 124
    const v7, 0x1050085

    #@7f
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    #@82
    move-result v7

    #@83
    int-to-float v7, v7

    #@84
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    #@86
    .line 125
    iget v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    #@88
    iput v7, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    #@8a
    .line 127
    new-instance v7, Landroid/text/TextPaint;

    #@8c
    invoke-direct {v7}, Landroid/text/TextPaint;-><init>()V

    #@8f
    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@91
    .line 128
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@93
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@96
    .line 129
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@98
    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    #@9b
    .line 131
    new-instance v7, Landroid/graphics/Paint;

    #@9d
    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    #@a0
    iput-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    #@a2
    .line 132
    iget-object v7, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    #@a4
    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    #@a7
    .line 134
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    #@aa
    .line 135
    int-to-float v7, v6

    #@ab
    invoke-virtual {p0, v7}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    #@ae
    .line 89
    return-void

    #@af
    .line 102
    nop

    #@b0
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x12 -> :sswitch_0
        0x35 -> :sswitch_1
        0x36 -> :sswitch_2
    .end sparse-switch
.end method

.method private computeMeasurements(I)Z
    .locals 9
    .param p1, "maxWidth"    # I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v7, 0x1

    #@2
    .line 242
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@4
    if-eqz v0, :cond_0

    #@6
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    #@8
    if-ne p1, v0, :cond_0

    #@a
    .line 243
    return v7

    #@b
    .line 247
    :cond_0
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    #@d
    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    #@f
    add-int/2addr v0, v1

    #@10
    iget v1, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    #@12
    mul-int/lit8 v1, v1, 0x2

    #@14
    add-int v8, v0, v1

    #@16
    .line 248
    .local v8, "paddingX":I
    sub-int/2addr p1, v8

    #@17
    .line 249
    if-gtz p1, :cond_1

    #@19
    .line 250
    return v2

    #@1a
    .line 256
    :cond_1
    iput-boolean v7, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@1c
    .line 257
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    #@1e
    .line 258
    new-instance v0, Landroid/text/StaticLayout;

    #@20
    .line 259
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    #@22
    iget-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@24
    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    #@26
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    #@28
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    #@2a
    move v3, p1

    #@2b
    .line 258
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@2e
    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    #@30
    .line 261
    return v7
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    .line 291
    move-object/from16 v0, p0

    #@2
    iget-object v11, v0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    #@4
    .line 292
    .local v11, "layout":Landroid/text/StaticLayout;
    if-nez v11, :cond_0

    #@6
    .line 293
    return-void

    #@7
    .line 296
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    #@a
    move-result v17

    #@b
    .line 297
    .local v17, "saveCount":I
    move-object/from16 v0, p0

    #@d
    iget v10, v0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    #@f
    .line 298
    .local v10, "innerPaddingX":I
    move-object/from16 v0, p0

    #@11
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    #@13
    move/from16 v19, v0

    #@15
    add-int v19, v19, v10

    #@17
    move/from16 v0, v19

    #@19
    int-to-float v0, v0

    #@1a
    move/from16 v19, v0

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    #@20
    move/from16 v20, v0

    #@22
    move/from16 v0, v20

    #@24
    int-to-float v0, v0

    #@25
    move/from16 v20, v0

    #@27
    move-object/from16 v0, p1

    #@29
    move/from16 v1, v19

    #@2b
    move/from16 v2, v20

    #@2d
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    #@30
    .line 300
    invoke-virtual {v11}, Landroid/text/StaticLayout;->getLineCount()I

    #@33
    move-result v12

    #@34
    .line 301
    .local v12, "lineCount":I
    move-object/from16 v0, p0

    #@36
    iget-object v0, v0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@38
    move-object/from16 v18, v0

    #@3a
    .line 302
    .local v18, "textPaint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@3c
    iget-object v14, v0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    #@3e
    .line 303
    .local v14, "paint":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    #@40
    iget-object v4, v0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    #@42
    .line 305
    .local v4, "bounds":Landroid/graphics/RectF;
    move-object/from16 v0, p0

    #@44
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    #@46
    move/from16 v19, v0

    #@48
    invoke-static/range {v19 .. v19}, Landroid/graphics/Color;->alpha(I)I

    #@4b
    move-result v19

    #@4c
    if-lez v19, :cond_1

    #@4e
    .line 306
    move-object/from16 v0, p0

    #@50
    iget v7, v0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    #@52
    .line 307
    .local v7, "cornerRadius":F
    const/16 v19, 0x0

    #@54
    move/from16 v0, v19

    #@56
    invoke-virtual {v11, v0}, Landroid/text/StaticLayout;->getLineTop(I)I

    #@59
    move-result v19

    #@5a
    move/from16 v0, v19

    #@5c
    int-to-float v15, v0

    #@5d
    .line 309
    .local v15, "previousBottom":F
    move-object/from16 v0, p0

    #@5f
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    #@61
    move/from16 v19, v0

    #@63
    move/from16 v0, v19

    #@65
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setColor(I)V

    #@68
    .line 310
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@6a
    move-object/from16 v0, v19

    #@6c
    invoke-virtual {v14, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@6f
    .line 312
    const/4 v9, 0x0

    #@70
    .local v9, "i":I
    :goto_0
    if-ge v9, v12, :cond_1

    #@72
    .line 313
    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineLeft(I)F

    #@75
    move-result v19

    #@76
    int-to-float v0, v10

    #@77
    move/from16 v20, v0

    #@79
    sub-float v19, v19, v20

    #@7b
    move/from16 v0, v19

    #@7d
    iput v0, v4, Landroid/graphics/RectF;->left:F

    #@7f
    .line 314
    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineRight(I)F

    #@82
    move-result v19

    #@83
    int-to-float v0, v10

    #@84
    move/from16 v20, v0

    #@86
    add-float v19, v19, v20

    #@88
    move/from16 v0, v19

    #@8a
    iput v0, v4, Landroid/graphics/RectF;->right:F

    #@8c
    .line 315
    iput v15, v4, Landroid/graphics/RectF;->top:F

    #@8e
    .line 316
    invoke-virtual {v11, v9}, Landroid/text/StaticLayout;->getLineBottom(I)I

    #@91
    move-result v19

    #@92
    move/from16 v0, v19

    #@94
    int-to-float v0, v0

    #@95
    move/from16 v19, v0

    #@97
    move/from16 v0, v19

    #@99
    iput v0, v4, Landroid/graphics/RectF;->bottom:F

    #@9b
    .line 317
    iget v15, v4, Landroid/graphics/RectF;->bottom:F

    #@9d
    .line 319
    move-object/from16 v0, p1

    #@9f
    invoke-virtual {v0, v4, v7, v7, v14}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    #@a2
    .line 312
    add-int/lit8 v9, v9, 0x1

    #@a4
    goto :goto_0

    #@a5
    .line 323
    .end local v7    # "cornerRadius":F
    .end local v9    # "i":I
    .end local v15    # "previousBottom":F
    :cond_1
    move-object/from16 v0, p0

    #@a7
    iget v8, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    #@a9
    .line 324
    .local v8, "edgeType":I
    const/16 v19, 0x1

    #@ab
    move/from16 v0, v19

    #@ad
    if-ne v8, v0, :cond_2

    #@af
    .line 325
    sget-object v19, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    #@b1
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    #@b4
    .line 326
    move-object/from16 v0, p0

    #@b6
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    #@b8
    move/from16 v19, v0

    #@ba
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    #@bd
    .line 327
    move-object/from16 v0, p0

    #@bf
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    #@c1
    move/from16 v19, v0

    #@c3
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    #@c6
    .line 328
    sget-object v19, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    #@c8
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@cb
    .line 330
    const/4 v9, 0x0

    #@cc
    .restart local v9    # "i":I
    :goto_1
    if-ge v9, v12, :cond_3

    #@ce
    .line 331
    move-object/from16 v0, p1

    #@d0
    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    #@d3
    .line 330
    add-int/lit8 v9, v9, 0x1

    #@d5
    goto :goto_1

    #@d6
    .line 333
    .end local v9    # "i":I
    :cond_2
    const/16 v19, 0x2

    #@d8
    move/from16 v0, v19

    #@da
    if-ne v8, v0, :cond_4

    #@dc
    .line 334
    move-object/from16 v0, p0

    #@de
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    #@e0
    move/from16 v19, v0

    #@e2
    move-object/from16 v0, p0

    #@e4
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    #@e6
    move/from16 v20, v0

    #@e8
    move-object/from16 v0, p0

    #@ea
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    #@ec
    move/from16 v21, v0

    #@ee
    move-object/from16 v0, p0

    #@f0
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    #@f2
    move/from16 v22, v0

    #@f4
    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@f7
    .line 353
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    #@f9
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    #@fb
    move/from16 v19, v0

    #@fd
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    #@100
    .line 354
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@102
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@105
    .line 356
    const/4 v9, 0x0

    #@106
    .restart local v9    # "i":I
    :goto_3
    if-ge v9, v12, :cond_a

    #@108
    .line 357
    move-object/from16 v0, p1

    #@10a
    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    #@10d
    .line 356
    add-int/lit8 v9, v9, 0x1

    #@10f
    goto :goto_3

    #@110
    .line 335
    .end local v9    # "i":I
    :cond_4
    const/16 v19, 0x3

    #@112
    move/from16 v0, v19

    #@114
    if-eq v8, v0, :cond_5

    #@116
    .line 336
    const/16 v19, 0x4

    #@118
    move/from16 v0, v19

    #@11a
    if-ne v8, v0, :cond_3

    #@11c
    .line 337
    :cond_5
    const/16 v19, 0x3

    #@11e
    move/from16 v0, v19

    #@120
    if-ne v8, v0, :cond_6

    #@122
    const/16 v16, 0x1

    #@124
    .line 338
    .local v16, "raised":Z
    :goto_4
    if-eqz v16, :cond_7

    #@126
    const/4 v6, -0x1

    #@127
    .line 339
    .local v6, "colorUp":I
    :goto_5
    if-eqz v16, :cond_8

    #@129
    move-object/from16 v0, p0

    #@12b
    iget v5, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    #@12d
    .line 340
    .local v5, "colorDown":I
    :goto_6
    move-object/from16 v0, p0

    #@12f
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    #@131
    move/from16 v19, v0

    #@133
    const/high16 v20, 0x40000000    # 2.0f

    #@135
    div-float v13, v19, v20

    #@137
    .line 342
    .local v13, "offset":F
    move-object/from16 v0, p0

    #@139
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    #@13b
    move/from16 v19, v0

    #@13d
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    #@140
    .line 343
    sget-object v19, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@142
    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@145
    .line 344
    move-object/from16 v0, p0

    #@147
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    #@149
    move/from16 v19, v0

    #@14b
    neg-float v0, v13

    #@14c
    move/from16 v20, v0

    #@14e
    neg-float v0, v13

    #@14f
    move/from16 v21, v0

    #@151
    move-object/from16 v0, v18

    #@153
    move/from16 v1, v19

    #@155
    move/from16 v2, v20

    #@157
    move/from16 v3, v21

    #@159
    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@15c
    .line 346
    const/4 v9, 0x0

    #@15d
    .restart local v9    # "i":I
    :goto_7
    if-ge v9, v12, :cond_9

    #@15f
    .line 347
    move-object/from16 v0, p1

    #@161
    invoke-virtual {v11, v0, v9, v9}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    #@164
    .line 346
    add-int/lit8 v9, v9, 0x1

    #@166
    goto :goto_7

    #@167
    .line 337
    .end local v5    # "colorDown":I
    .end local v6    # "colorUp":I
    .end local v9    # "i":I
    .end local v13    # "offset":F
    .end local v16    # "raised":Z
    :cond_6
    const/16 v16, 0x0

    #@169
    .restart local v16    # "raised":Z
    goto :goto_4

    #@16a
    .line 338
    :cond_7
    move-object/from16 v0, p0

    #@16c
    iget v6, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    #@16e
    .restart local v6    # "colorUp":I
    goto :goto_5

    #@16f
    .line 339
    :cond_8
    const/4 v5, -0x1

    #@170
    .restart local v5    # "colorDown":I
    goto :goto_6

    #@171
    .line 350
    .restart local v9    # "i":I
    .restart local v13    # "offset":F
    :cond_9
    move-object/from16 v0, p0

    #@173
    iget v0, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    #@175
    move/from16 v19, v0

    #@177
    move-object/from16 v0, v18

    #@179
    move/from16 v1, v19

    #@17b
    invoke-virtual {v0, v1, v13, v13, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@17e
    goto/16 :goto_2

    #@180
    .line 360
    .end local v5    # "colorDown":I
    .end local v6    # "colorUp":I
    .end local v13    # "offset":F
    .end local v16    # "raised":Z
    :cond_a
    const/16 v19, 0x0

    #@182
    const/16 v20, 0x0

    #@184
    const/16 v21, 0x0

    #@186
    const/16 v22, 0x0

    #@188
    invoke-virtual/range {v18 .. v22}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    #@18b
    .line 361
    move-object/from16 v0, p1

    #@18d
    move/from16 v1, v17

    #@18f
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    #@192
    .line 290
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    #@0
    .prologue
    .line 236
    sub-int v0, p4, p2

    #@2
    .line 238
    .local v0, "width":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    #@5
    .line 235
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    #@0
    .prologue
    const/high16 v6, 0x1000000

    #@2
    .line 219
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    #@5
    move-result v4

    #@6
    .line 221
    .local v4, "widthSpec":I
    invoke-direct {p0, v4}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    #@9
    move-result v5

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 222
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    #@e
    .line 225
    .local v1, "layout":Landroid/text/StaticLayout;
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    #@10
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    #@12
    add-int/2addr v5, v6

    #@13
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    #@15
    mul-int/lit8 v6, v6, 0x2

    #@17
    add-int v2, v5, v6

    #@19
    .line 226
    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    #@1c
    move-result v5

    #@1d
    add-int v3, v5, v2

    #@1f
    .line 227
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    #@22
    move-result v5

    #@23
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    #@25
    add-int/2addr v5, v6

    #@26
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    #@28
    add-int v0, v5, v6

    #@2a
    .line 228
    .local v0, "height":I
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    #@2d
    .line 218
    .end local v0    # "height":I
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    :goto_0
    return-void

    #@2e
    .line 230
    :cond_0
    invoke-virtual {p0, v6, v6}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    #@31
    goto :goto_0
.end method

.method public setAlignment(Landroid/text/Layout$Alignment;)V
    .locals 1
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    #@0
    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    #@2
    if-eq v0, p1, :cond_0

    #@4
    .line 208
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    #@6
    .line 210
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@9
    .line 212
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    #@c
    .line 213
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@f
    .line 206
    :cond_0
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 161
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    #@2
    .line 163
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@5
    .line 160
    return-void
.end method

.method public setEdgeColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 173
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    #@2
    .line 175
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@5
    .line 172
    return-void
.end method

.method public setEdgeType(I)V
    .locals 0
    .param p1, "edgeType"    # I

    #@0
    .prologue
    .line 167
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    #@2
    .line 169
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@5
    .line 166
    return-void
.end method

.method public setForegroundColor(I)V
    .locals 0
    .param p1, "color"    # I

    #@0
    .prologue
    .line 154
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    #@2
    .line 156
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@5
    .line 153
    return-void
.end method

.method public setStyle(I)V
    .locals 6
    .param p1, "styleId"    # I

    #@0
    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    #@2
    .line 266
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@5
    move-result-object v1

    #@6
    .line 268
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v5, -0x1

    #@7
    if-ne p1, v5, :cond_0

    #@9
    .line 269
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@c
    move-result-object v3

    #@d
    .line 274
    .local v3, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_0
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@f
    .line 275
    .local v2, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    #@12
    move-result v5

    #@13
    if-eqz v5, :cond_1

    #@15
    .line 276
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@17
    .line 275
    :goto_1
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    #@19
    .line 277
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    .line 278
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@21
    .line 277
    :goto_2
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    #@23
    .line 279
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    #@26
    move-result v5

    #@27
    if-eqz v5, :cond_3

    #@29
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@2b
    :goto_3
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    #@2d
    .line 280
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_4

    #@33
    iget v5, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@35
    :goto_4
    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    #@37
    .line 281
    const/4 v5, 0x0

    #@38
    iput-boolean v5, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@3a
    .line 283
    invoke-virtual {v3}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    #@3d
    move-result-object v4

    #@3e
    .line 284
    .local v4, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    #@41
    .line 286
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    #@44
    .line 264
    return-void

    #@45
    .line 271
    .end local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v3    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    .end local v4    # "typeface":Landroid/graphics/Typeface;
    :cond_0
    sget-object v5, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    #@47
    aget-object v3, v5, p1

    #@49
    .restart local v3    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_0

    #@4a
    .line 276
    .restart local v2    # "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_1
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    #@4c
    goto :goto_1

    #@4d
    .line 278
    :cond_2
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    #@4f
    goto :goto_2

    #@50
    .line 279
    :cond_3
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    #@52
    goto :goto_3

    #@53
    .line 280
    :cond_4
    iget v5, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    #@55
    goto :goto_4
.end method

.method public setText(I)V
    .locals 2
    .param p1, "resId"    # I

    #@0
    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    .line 140
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    #@b
    .line 138
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 144
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    #@3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    #@6
    .line 145
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Ljava/lang/StringBuilder;

    #@8
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@b
    .line 147
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@d
    .line 149
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    #@10
    .line 150
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@13
    .line 143
    return-void
.end method

.method public setTextSize(F)V
    .locals 2
    .param p1, "size"    # F

    #@0
    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    #@5
    move-result v0

    #@6
    cmpl-float v0, v0, p1

    #@8
    if-eqz v0, :cond_0

    #@a
    .line 185
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@c
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    #@f
    .line 186
    const/high16 v0, 0x3e000000    # 0.125f

    #@11
    mul-float/2addr v0, p1

    #@12
    const/high16 v1, 0x3f000000    # 0.5f

    #@14
    add-float/2addr v0, v1

    #@15
    float-to-int v0, v0

    #@16
    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    #@18
    .line 188
    const/4 v0, 0x0

    #@19
    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@1b
    .line 190
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    #@1e
    .line 191
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@21
    .line 183
    :cond_0
    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    #@0
    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    #@5
    move-result-object v0

    #@6
    if-eq v0, p1, :cond_0

    #@8
    .line 197
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    #@a
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    #@d
    .line 199
    const/4 v0, 0x0

    #@e
    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    #@10
    .line 201
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    #@13
    .line 202
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    #@16
    .line 195
    :cond_0
    return-void
.end method
