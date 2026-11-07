.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field private static final blacklist TRACE_ONMEASURE:Z


# instance fields
.field private blacklist mHasImage:Z

.field private blacklist mImageEndMargin:I

.field private blacklist mIndentLines:I

.field private blacklist mLayoutMaxLines:I

.field private final blacklist mMaxLineUpperLimit:I

.field private blacklist mMaxLinesForHeight:I

.field private blacklist mResolvedDirection:I

.field private blacklist mStaticLayoutCreationCountInOnMeasure:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 70
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 74
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 47
    iput-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    .line 50
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 51
    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 52
    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 56
    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    .line 75
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHyphenationFrequency(I)V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setBreakStrategy(I)V

    .line 77
    nop

    .line 78
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLineUpperLimit:I

    .line 79
    return-void
.end method

.method private blacklist invalidateTextIfIndenting()V
    .registers 2

    .line 215
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v0, :cond_e

    .line 217
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 218
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    .line 220
    :cond_e
    return-void
.end method

.method private blacklist isTextAPrecomputedText()I
    .registers 4

    .line 263
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 264
    .local v0, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 265
    return v1

    .line 268
    :cond_8
    instance-of v2, v0, Landroid/text/PrecomputedText;

    if-eqz v2, :cond_e

    .line 269
    const/4 v1, 0x1

    return v1

    .line 272
    :cond_e
    return v1
.end method

.method private blacklist setHasImageAndNumIndentLines(ZI)V
    .registers 5
    .param p1, "hasImage"    # Z
    .param p2, "lines"    # I

    .line 239
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    goto :goto_9

    :cond_8
    move v0, v1

    .line 240
    .local v0, "oldEffectiveLines":I
    :goto_9
    if-eqz p1, :cond_c

    move v1, p2

    .line 241
    .local v1, "newEffectiveLines":I
    :cond_c
    iput p2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 242
    iput-boolean p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    .line 243
    if-eq v0, v1, :cond_18

    .line 245
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 246
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->requestLayout()V

    .line 248
    :cond_18
    return-void
.end method

.method private blacklist trackMaxLines()V
    .registers 4

    .line 276
    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_5

    .line 277
    return-void

    .line 280
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    int-to-long v0, v0

    const-string v2, "ImageFloatingView#layoutMaxLines"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 281
    return-void
.end method

.method private blacklist trackParameters()V
    .registers 4

    .line 251
    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-nez v0, :cond_5

    .line 252
    return-void

    .line 254
    :cond_5
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    int-to-long v0, v0

    const-string v2, "ImageFloatingView#staticLayoutCreationCount"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 256
    nop

    .line 257
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isTextAPrecomputedText()I

    move-result v0

    int-to-long v0, v0

    .line 256
    const-string v2, "ImageFloatingView#isPrecomputedText"

    invoke-static {v2, v0, v1}, Landroid/os/Trace;->setCounter(Ljava/lang/String;J)V

    .line 258
    return-void
.end method


# virtual methods
.method protected blacklist makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .registers 16
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .line 85
    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 86
    const-string v0, "ImageFloatingTextView#makeSingleLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 87
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    .line 89
    :cond_f
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 90
    .local v0, "transformationMethod":Landroid/text/method/TransformationMethod;
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    .line 91
    .local v2, "text":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1d

    .line 92
    invoke-interface {v0, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 94
    :cond_1d
    if-nez v2, :cond_22

    const-string v3, ""

    goto :goto_23

    :cond_22
    move-object v3, v2

    .line 95
    .end local v2    # "text":Ljava/lang/CharSequence;
    .local v3, "text":Ljava/lang/CharSequence;
    :goto_23
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    .line 95
    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v4, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 97
    invoke-virtual {v2, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 99
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v4

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v5

    invoke-virtual {v2, v4, v5}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 100
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 101
    invoke-virtual {v2, v1}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 102
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getBreakStrategy()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 103
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHyphenationFrequency()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v2

    .line 105
    .local v2, "builder":Landroid/text/StaticLayout$Builder;
    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-lez v4, :cond_6b

    .line 106
    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .local v4, "maxLines":I
    goto :goto_79

    .line 108
    .end local v4    # "maxLines":I
    :cond_6b
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    if-ltz v4, :cond_76

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v4

    goto :goto_79

    :cond_76
    const v4, 0x7fffffff

    .line 111
    .restart local v4    # "maxLines":I
    :goto_79
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLineUpperLimit:I

    if-lez v5, :cond_83

    .line 112
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLineUpperLimit:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 115
    :cond_83
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 116
    iput v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 117
    if-eqz p5, :cond_91

    .line 118
    invoke-virtual {v2, p6}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v5

    .line 119
    invoke-virtual {v5, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 123
    :cond_91
    const/4 v5, 0x0

    .line 124
    .local v5, "margins":[I
    iget-boolean v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    if-eqz v6, :cond_ab

    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v6, :cond_ab

    .line 125
    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    add-int/2addr v6, v1

    new-array v5, v6, [I

    .line 126
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_a0
    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v6, v7, :cond_ab

    .line 127
    iget v7, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    aput v7, v5, v6

    .line 126
    add-int/lit8 v6, v6, 0x1

    goto :goto_a0

    .line 130
    .end local v6    # "i":I
    :cond_ab
    iget v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    const/4 v7, 0x0

    if-ne v6, v1, :cond_b4

    .line 131
    invoke-virtual {v2, v5, v7}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_b7

    .line 133
    :cond_b4
    invoke-virtual {v2, v7, v5}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 136
    :goto_b7
    invoke-virtual {v2}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    .line 137
    .local v1, "result":Landroid/text/StaticLayout;
    sget-boolean v6, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-eqz v6, :cond_c5

    .line 138
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->trackMaxLines()V

    .line 139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 141
    :cond_c5
    return-object v1
.end method

.method protected whitelist onMeasure(II)V
    .registers 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 166
    sget-boolean v0, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-eqz v0, :cond_9

    .line 167
    const-string v0, "ImageFloatingTextView#onMeasure"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 169
    :cond_9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mStaticLayoutCreationCountInOnMeasure:I

    .line 170
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingBottom:I

    sub-int/2addr v0, v1

    .line 171
    .local v0, "availableHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    if-eqz v1, :cond_2c

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_2c

    .line 174
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 175
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 177
    :cond_2c
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 178
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 179
    .local v1, "layout":Landroid/text/Layout;
    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v2

    if-le v2, v0, :cond_65

    .line 182
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v2

    .line 183
    .local v2, "maxLines":I
    :goto_3d
    const/4 v3, 0x1

    if-le v2, v3, :cond_4b

    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    if-le v3, v0, :cond_4b

    .line 184
    add-int/lit8 v2, v2, -0x1

    goto :goto_3d

    .line 186
    :cond_4b
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_59

    .line 187
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 190
    :cond_59
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eq v2, v3, :cond_65

    .line 191
    iput v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 192
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->nullLayouts()V

    .line 193
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 198
    .end local v2    # "maxLines":I
    :cond_65
    sget-boolean v2, Lcom/android/internal/widget/ImageFloatingTextView;->TRACE_ONMEASURE:Z

    if-eqz v2, :cond_6f

    .line 199
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->trackParameters()V

    .line 200
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 202
    :cond_6f
    return-void
.end method

.method public whitelist onRtlPropertiesChanged(I)V
    .registers 3
    .param p1, "layoutDirection"    # I

    .line 206
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 208
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    if-eq p1, v0, :cond_12

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 209
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 210
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->invalidateTextIfIndenting()V

    .line 212
    :cond_12
    return-void
.end method

.method public blacklist setHasImage(Z)V
    .registers 3
    .param p1, "hasImage"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 227
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImageAndNumIndentLines(ZI)V

    .line 228
    return-void
.end method

.method public blacklist setImageEndMargin(I)V
    .registers 3
    .param p1, "imageEndMargin"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 149
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    if-eq v0, p1, :cond_9

    .line 150
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mImageEndMargin:I

    .line 151
    invoke-direct {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->invalidateTextIfIndenting()V

    .line 153
    :cond_9
    return-void
.end method

.method public blacklist setImageEndMarginDp(F)V
    .registers 3
    .param p1, "imageEndMarginDp"    # F
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 160
    nop

    .line 161
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    float-to-int v0, v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setImageEndMargin(I)V

    .line 162
    return-void
.end method

.method public blacklist setNumIndentLines(I)V
    .registers 3
    .param p1, "lines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .line 235
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mHasImage:Z

    invoke-direct {p0, v0, p1}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImageAndNumIndentLines(ZI)V

    .line 236
    return-void
.end method
