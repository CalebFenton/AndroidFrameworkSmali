.class public Lcom/android/internal/widget/SubtitleView;
.super Landroid/view/View;
.source "SubtitleView.java"


# static fields
.field private static final greylist-max-o COLOR_BEVEL_DARK:I = -0x80000000

.field private static final greylist-max-o COLOR_BEVEL_LIGHT:I = -0x7f000001

.field private static final greylist-max-o INNER_PADDING_RATIO:F = 0.125f


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private greylist-max-o mBackgroundColor:I

.field private final greylist-max-o mCornerRadius:F

.field private greylist-max-o mEdgeColor:I

.field private greylist-max-o mEdgeType:I

.field private greylist-max-o mForegroundColor:I

.field private greylist-max-o mHasMeasurements:Z

.field private greylist-max-o mInnerPaddingX:I

.field private greylist-max-o mLastMeasuredWidth:I

.field private greylist-max-o mLayout:Landroid/text/StaticLayout;

.field private final greylist-max-o mLineBounds:Landroid/graphics/RectF;

.field private final greylist-max-o mOutlineWidth:F

.field private greylist-max-o mPaint:Landroid/graphics/Paint;

.field private final greylist-max-o mShadowOffsetX:F

.field private final greylist-max-o mShadowOffsetY:F

.field private final greylist-max-o mShadowRadius:F

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private final greylist-max-o mText:Landroid/text/SpannableStringBuilder;

.field private greylist-max-o mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/SubtitleView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 88
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 91
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 59
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    .line 61
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 74
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 75
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 93
    sget-object v0, Landroid/R$styleable;->TextView:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v1, ""

    .line 97
    .local v1, "text":Ljava/lang/CharSequence;
    const/16 v2, 0xf

    .line 99
    .local v2, "textSize":I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    .line 100
    .local v3, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2e
    if-ge v4, v3, :cond_58

    .line 101
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v5

    .line 103
    .local v5, "attr":I
    sparse-switch v5, :sswitch_data_b6

    goto :goto_55

    .line 111
    :sswitch_38
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 112
    goto :goto_55

    .line 108
    :sswitch_41
    iget v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    float-to-int v6, v6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    int-to-float v6, v6

    iput v6, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    .line 109
    goto :goto_55

    .line 105
    :sswitch_4c
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 106
    goto :goto_55

    .line 114
    :sswitch_51
    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 100
    .end local v5    # "attr":I
    :goto_55
    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    .line 118
    .end local v4    # "i":I
    :cond_58
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 122
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 123
    .local v4, "res":Landroid/content/res/Resources;
    const v5, 0x105036c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 124
    const v5, 0x105036d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    .line 125
    const v5, 0x105036f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    .line 126
    const v5, 0x105036e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    .line 127
    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iput v5, p0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    .line 129
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 130
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 131
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setSubpixelText(Z)V

    .line 133
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 134
    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 136
    invoke-virtual {p0, v1}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    int-to-float v5, v2

    invoke-virtual {p0, v5}, Lcom/android/internal/widget/SubtitleView;->setTextSize(F)V

    .line 138
    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        0x0 -> :sswitch_51
        0x12 -> :sswitch_4c
        0x35 -> :sswitch_41
        0x36 -> :sswitch_38
    .end sparse-switch
.end method

.method private greylist-max-o computeMeasurements(I)Z
    .registers 8
    .param p1, "maxWidth"    # I

    .line 244
    iget-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    if-ne p1, v0, :cond_a

    .line 245
    return v1

    .line 249
    :cond_a
    iget v0, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 250
    .local v0, "paddingX":I
    sub-int/2addr p1, v0

    .line 251
    const/4 v2, 0x0

    if-gtz p1, :cond_19

    .line 252
    return v2

    .line 258
    :cond_19
    iput-boolean v1, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 259
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mLastMeasuredWidth:I

    .line 260
    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    iget-object v4, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v3, v2, v4, v5, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 261
    invoke-virtual {v2, v3}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingAdd:F

    iget v4, p0, Lcom/android/internal/widget/SubtitleView;->mSpacingMult:F

    .line 262
    invoke-virtual {v2, v3, v4}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 263
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 266
    return v1
.end method


# virtual methods
.method protected whitelist onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 296
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 297
    .local v2, "layout":Landroid/text/StaticLayout;
    if-nez v2, :cond_9

    .line 298
    return-void

    .line 301
    :cond_9
    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    .line 302
    .local v3, "saveCount":I
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 303
    .local v4, "innerPaddingX":I
    iget v5, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    add-int/2addr v5, v4

    int-to-float v5, v5

    iget v6, v0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v5

    .line 306
    .local v5, "lineCount":I
    iget-object v6, v0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    .line 307
    .local v6, "textPaint":Landroid/graphics/Paint;
    iget-object v7, v0, Lcom/android/internal/widget/SubtitleView;->mPaint:Landroid/graphics/Paint;

    .line 308
    .local v7, "paint":Landroid/graphics/Paint;
    iget-object v8, v0, Lcom/android/internal/widget/SubtitleView;->mLineBounds:Landroid/graphics/RectF;

    .line 310
    .local v8, "bounds":Landroid/graphics/RectF;
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-static {v9}, Landroid/graphics/Color;->alpha(I)I

    move-result v9

    const/4 v10, 0x0

    if-lez v9, :cond_61

    .line 311
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mCornerRadius:F

    .line 312
    .local v9, "cornerRadius":F
    invoke-virtual {v2, v10}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v11

    int-to-float v11, v11

    .line 314
    .local v11, "previousBottom":F
    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 315
    sget-object v12, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 317
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_3e
    if-ge v12, v5, :cond_61

    .line 318
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineLeft(I)F

    move-result v13

    int-to-float v14, v4

    sub-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->left:F

    .line 319
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v4

    add-float/2addr v13, v14

    iput v13, v8, Landroid/graphics/RectF;->right:F

    .line 320
    iput v11, v8, Landroid/graphics/RectF;->top:F

    .line 321
    invoke-virtual {v2, v12}, Landroid/text/StaticLayout;->getLineBottom(I)I

    move-result v13

    int-to-float v13, v13

    iput v13, v8, Landroid/graphics/RectF;->bottom:F

    .line 322
    iget v11, v8, Landroid/graphics/RectF;->bottom:F

    .line 324
    invoke-virtual {v1, v8, v9, v9, v7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 317
    add-int/lit8 v12, v12, 0x1

    goto :goto_3e

    .line 328
    .end local v9    # "cornerRadius":F
    .end local v11    # "previousBottom":F
    .end local v12    # "i":I
    :cond_61
    iget v9, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 329
    .local v9, "edgeType":I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_86

    .line 330
    sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 331
    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mOutlineWidth:F

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 332
    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 333
    sget-object v11, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 335
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_7b
    if-ge v11, v5, :cond_83

    .line 336
    invoke-virtual {v2, v1, v11, v11}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 335
    add-int/lit8 v11, v11, 0x1

    goto :goto_7b

    :cond_83
    move/from16 v16, v4

    .end local v11    # "i":I
    goto :goto_d6

    .line 338
    :cond_86
    const/4 v12, 0x2

    if-ne v9, v12, :cond_97

    .line 339
    iget v11, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetX:F

    iget v13, v0, Lcom/android/internal/widget/SubtitleView;->mShadowOffsetY:F

    iget v14, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    invoke-virtual {v6, v11, v12, v13, v14}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    move/from16 v16, v4

    goto :goto_d6

    .line 340
    :cond_97
    const/4 v12, 0x3

    if-eq v9, v12, :cond_a1

    const/4 v13, 0x4

    if-ne v9, v13, :cond_9e

    goto :goto_a1

    :cond_9e
    move/from16 v16, v4

    goto :goto_d6

    .line 342
    :cond_a1
    :goto_a1
    if-ne v9, v12, :cond_a4

    goto :goto_a5

    :cond_a4
    move v11, v10

    .line 343
    .local v11, "raised":Z
    :goto_a5
    const/4 v12, -0x1

    if-eqz v11, :cond_aa

    move v13, v12

    goto :goto_ac

    :cond_aa
    iget v13, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 344
    .local v13, "colorUp":I
    :goto_ac
    if-eqz v11, :cond_b0

    iget v12, v0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 345
    .local v12, "colorDown":I
    :cond_b0
    iget v14, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v14, v15

    .line 347
    .local v14, "offset":F
    iget v15, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 348
    sget-object v15, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget v15, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    neg-float v10, v14

    move/from16 v16, v4

    .end local v4    # "innerPaddingX":I
    .local v16, "innerPaddingX":I
    neg-float v4, v14

    invoke-virtual {v6, v15, v10, v4, v13}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 351
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c9
    if-ge v4, v5, :cond_d1

    .line 352
    invoke-virtual {v2, v1, v4, v4}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_c9

    .line 355
    .end local v4    # "i":I
    :cond_d1
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mShadowRadius:F

    invoke-virtual {v6, v4, v14, v14, v12}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 358
    .end local v11    # "raised":Z
    .end local v12    # "colorDown":I
    .end local v13    # "colorUp":I
    .end local v14    # "offset":F
    :goto_d6
    iget v4, v0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 359
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 361
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_e1
    if-ge v4, v5, :cond_e9

    .line 362
    invoke-virtual {v2, v1, v4, v4}, Landroid/text/StaticLayout;->drawText(Landroid/graphics/Canvas;II)V

    .line 361
    add-int/lit8 v4, v4, 0x1

    goto :goto_e1

    .line 365
    .end local v4    # "i":I
    :cond_e9
    const/4 v4, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v4, v4, v4, v10}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 366
    invoke-virtual {v1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 367
    return-void
.end method

.method public whitelist onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 238
    sub-int v0, p4, p2

    .line 240
    .local v0, "width":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    .line 241
    return-void
.end method

.method protected whitelist onMeasure(II)V
    .registers 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 221
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 223
    .local v0, "widthSpec":I
    invoke-direct {p0, v0}, Lcom/android/internal/widget/SubtitleView;->computeMeasurements(I)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 224
    iget-object v1, p0, Lcom/android/internal/widget/SubtitleView;->mLayout:Landroid/text/StaticLayout;

    .line 227
    .local v1, "layout":Landroid/text/StaticLayout;
    iget v2, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingLeft:I

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingRight:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 228
    .local v2, "paddingX":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v2

    .line 229
    .local v3, "width":I
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/internal/widget/SubtitleView;->mPaddingBottom:I

    add-int/2addr v4, v5

    .line 230
    .local v4, "height":I
    invoke-virtual {p0, v3, v4}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 231
    .end local v1    # "layout":Landroid/text/StaticLayout;
    .end local v2    # "paddingX":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    goto :goto_2e

    .line 232
    :cond_29
    const/high16 v1, 0x1000000

    invoke-virtual {p0, v1, v1}, Lcom/android/internal/widget/SubtitleView;->setMeasuredDimension(II)V

    .line 234
    :goto_2e
    return-void
.end method

.method public greylist-max-o setAlignment(Landroid/text/Layout$Alignment;)V
    .registers 3
    .param p1, "textAlignment"    # Landroid/text/Layout$Alignment;

    .line 209
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    if-eq v0, p1, :cond_f

    .line 210
    iput-object p1, p0, Lcom/android/internal/widget/SubtitleView;->mAlignment:Landroid/text/Layout$Alignment;

    .line 212
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 214
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 215
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 217
    :cond_f
    return-void
.end method

.method public whitelist setBackgroundColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 163
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 165
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 166
    return-void
.end method

.method public greylist-max-o setEdgeColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 175
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 177
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 178
    return-void
.end method

.method public greylist-max-o setEdgeType(I)V
    .registers 2
    .param p1, "edgeType"    # I

    .line 169
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 171
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 172
    return-void
.end method

.method public greylist-max-o setForegroundColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 156
    iput p1, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 158
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 159
    return-void
.end method

.method public greylist-max-o setStyle(I)V
    .registers 7
    .param p1, "styleId"    # I

    .line 270
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mContext:Landroid/content/Context;

    .line 271
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 273
    .local v1, "cr":Landroid/content/ContentResolver;
    const/4 v2, -0x1

    if-ne p1, v2, :cond_e

    .line 274
    invoke-static {v1}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getCustomStyle(Landroid/content/ContentResolver;)Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    move-result-object v2

    .local v2, "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    goto :goto_12

    .line 276
    .end local v2    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :cond_e
    sget-object v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->PRESETS:[Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    aget-object v2, v2, p1

    .line 279
    .restart local v2    # "style":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    :goto_12
    sget-object v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->DEFAULT:Landroid/view/accessibility/CaptioningManager$CaptionStyle;

    .line 280
    .local v3, "defStyle":Landroid/view/accessibility/CaptioningManager$CaptionStyle;
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasForegroundColor()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 281
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    goto :goto_1f

    :cond_1d
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->foregroundColor:I

    :goto_1f
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mForegroundColor:I

    .line 282
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasBackgroundColor()Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 283
    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    goto :goto_2c

    :cond_2a
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->backgroundColor:I

    :goto_2c
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mBackgroundColor:I

    .line 284
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeType()Z

    move-result v4

    if-eqz v4, :cond_37

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    goto :goto_39

    :cond_37
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeType:I

    :goto_39
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeType:I

    .line 285
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->hasEdgeColor()Z

    move-result v4

    if-eqz v4, :cond_44

    iget v4, v2, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    goto :goto_46

    :cond_44
    iget v4, v3, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->edgeColor:I

    :goto_46
    iput v4, p0, Lcom/android/internal/widget/SubtitleView;->mEdgeColor:I

    .line 286
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 288
    invoke-virtual {v2}, Landroid/view/accessibility/CaptioningManager$CaptionStyle;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v4

    .line 289
    .local v4, "typeface":Landroid/graphics/Typeface;
    invoke-virtual {p0, v4}, Lcom/android/internal/widget/SubtitleView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 291
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 292
    return-void
.end method

.method public greylist-max-o setText(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 141
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 142
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/SubtitleView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    return-void
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 146
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    .line 147
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mText:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 151
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 152
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 153
    return-void
.end method

.method public greylist-max-o setTextSize(F)V
    .registers 4
    .param p1, "size"    # F

    .line 186
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_21

    .line 187
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 188
    const/high16 v0, 0x3e000000    # 0.125f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/internal/widget/SubtitleView;->mInnerPaddingX:I

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 193
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 195
    :cond_21
    return-void
.end method

.method public greylist-max-o setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "typeface"    # Landroid/graphics/Typeface;

    .line 198
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eq v0, p1, :cond_16

    .line 199
    iget-object v0, p0, Lcom/android/internal/widget/SubtitleView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SubtitleView;->mHasMeasurements:Z

    .line 203
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->requestLayout()V

    .line 204
    invoke-virtual {p0}, Lcom/android/internal/widget/SubtitleView;->invalidate()V

    .line 206
    :cond_16
    return-void
.end method
