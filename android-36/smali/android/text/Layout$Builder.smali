.class public final Landroid/text/Layout$Builder;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/Layout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private final blacklist mEnd:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private blacklist mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final blacklist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private blacklist mSpacingAdd:F

.field private blacklist mSpacingMult:F

.field private final blacklist mStart:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private final blacklist mWidth:I


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)V
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "width"    # I

    .line 3840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4293
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 4294
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/text/Layout$Builder;->mSpacingMult:F

    .line 4295
    const/4 v0, 0x0

    iput v0, p0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    .line 4296
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 4297
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/text/Layout$Builder;->mIncludePad:Z

    .line 4298
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    .line 4300
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 4301
    const v2, 0x7fffffff

    iput v2, p0, Landroid/text/Layout$Builder;->mMaxLines:I

    .line 4302
    iput v0, p0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    .line 4303
    iput v0, p0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    .line 4304
    iput-object v1, p0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    .line 4305
    iput-object v1, p0, Landroid/text/Layout$Builder;->mRightIndents:[I

    .line 4306
    iput v0, p0, Landroid/text/Layout$Builder;->mJustificationMode:I

    .line 4307
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 3841
    iput-object p1, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    .line 3842
    iput p2, p0, Landroid/text/Layout$Builder;->mStart:I

    .line 3843
    iput p3, p0, Landroid/text/Layout$Builder;->mEnd:I

    .line 3844
    iput-object p4, p0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 3845
    iput p5, p0, Landroid/text/Layout$Builder;->mWidth:I

    .line 3846
    iput p5, p0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    .line 3847
    return-void
.end method

.method private blacklist isBoring()Landroid/text/BoringLayout$Metrics;
    .registers 10

    .line 4237
    iget v0, p0, Landroid/text/Layout$Builder;->mStart:I

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    iget v0, p0, Landroid/text/Layout$Builder;->mEnd:I

    iget-object v2, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eq v0, v2, :cond_10

    goto :goto_2f

    .line 4240
    :cond_10
    iget-object v3, p0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v4, p0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget-boolean v6, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    iget-object v7, p0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;ZLandroid/graphics/Paint$FontMetrics;Landroid/text/BoringLayout$Metrics;)Landroid/text/BoringLayout$Metrics;

    move-result-object v0

    .line 4242
    .local v0, "metrics":Landroid/text/BoringLayout$Metrics;
    if-nez v0, :cond_22

    .line 4243
    return-object v1

    .line 4245
    :cond_22
    iget v2, v0, Landroid/text/BoringLayout$Metrics;->width:I

    iget v3, p0, Landroid/text/Layout$Builder;->mWidth:I

    if-gt v2, v3, :cond_29

    .line 4246
    return-object v0

    .line 4248
    :cond_29
    iget-object v2, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_2e

    .line 4249
    return-object v0

    .line 4251
    :cond_2e
    return-object v1

    .line 4238
    .end local v0    # "metrics":Landroid/text/BoringLayout$Metrics;
    :cond_2f
    :goto_2f
    return-object v1
.end method


# virtual methods
.method public whitelist build()Landroid/text/Layout;
    .registers 26

    .line 4259
    move-object/from16 v0, p0

    invoke-direct {v0}, Landroid/text/Layout$Builder;->isBoring()Landroid/text/BoringLayout$Metrics;

    move-result-object v20

    .line 4260
    .local v20, "metrics":Landroid/text/BoringLayout$Metrics;
    if-nez v20, :cond_79

    .line 4261
    iget-object v1, v0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget v2, v0, Landroid/text/Layout$Builder;->mStart:I

    iget v3, v0, Landroid/text/Layout$Builder;->mEnd:I

    iget-object v4, v0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v5, v0, Landroid/text/Layout$Builder;->mWidth:I

    invoke-static {v1, v2, v3, v4, v5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 4262
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    iget v3, v0, Landroid/text/Layout$Builder;->mSpacingMult:F

    .line 4263
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 4264
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mIncludePad:Z

    .line 4265
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    .line 4266
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    .line 4267
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 4268
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mMaxLines:I

    .line 4269
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    .line 4270
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    .line 4271
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    iget-object v3, v0, Landroid/text/Layout$Builder;->mRightIndents:[I

    .line 4272
    invoke-virtual {v1, v2, v3}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget v2, v0, Landroid/text/Layout$Builder;->mJustificationMode:I

    .line 4273
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setJustificationMode(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-object v2, v0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 4274
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    .line 4275
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    iget-boolean v2, v0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    .line 4276
    invoke-virtual {v1, v2}, Landroid/text/StaticLayout$Builder;->setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 4277
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v1

    .line 4261
    return-object v1

    .line 4279
    :cond_79
    new-instance v1, Landroid/text/BoringLayout;

    iget-object v2, v0, Landroid/text/Layout$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v3, v0, Landroid/text/Layout$Builder;->mPaint:Landroid/text/TextPaint;

    iget v4, v0, Landroid/text/Layout$Builder;->mWidth:I

    iget-object v5, v0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    iget-object v6, v0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    iget v7, v0, Landroid/text/Layout$Builder;->mSpacingMult:F

    iget v8, v0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    iget-boolean v9, v0, Landroid/text/Layout$Builder;->mIncludePad:Z

    iget-boolean v10, v0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    iget v11, v0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    iget-object v12, v0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    iget v13, v0, Landroid/text/Layout$Builder;->mMaxLines:I

    iget v14, v0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    iget v15, v0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    move-object/from16 v16, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    move-object/from16 v17, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mRightIndents:[I

    move-object/from16 v18, v1

    iget v1, v0, Landroid/text/Layout$Builder;->mJustificationMode:I

    move/from16 v19, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    move-object/from16 v21, v1

    iget-boolean v1, v0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    move/from16 v22, v1

    iget-boolean v1, v0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    move/from16 v23, v1

    iget-object v1, v0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    move/from16 v24, v23

    move-object/from16 v23, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move/from16 v18, v19

    move-object/from16 v19, v21

    move/from16 v21, v22

    move/from16 v22, v24

    invoke-direct/range {v1 .. v23}, Landroid/text/BoringLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;Landroid/text/BoringLayout$Metrics;ZZLandroid/graphics/Paint$FontMetrics;)V

    move-object/from16 v16, v1

    return-object v16
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 3862
    iput-object p1, p0, Landroid/text/Layout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3863
    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "breakStrategy"    # I

    .line 4032
    iput p1, p0, Landroid/text/Layout$Builder;->mBreakStrategy:I

    .line 4033
    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 3997
    iput-object p1, p0, Landroid/text/Layout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 3998
    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "ellipsizeWidth"    # I

    .line 3978
    iput p1, p0, Landroid/text/Layout$Builder;->mEllipsizedWidth:I

    .line 3979
    return-object p0
.end method

.method public whitelist setFallbackLineSpacingEnabled(Z)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "fallbackLineSpacing"    # Z

    .line 3959
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mFallbackLineSpacing:Z

    .line 3960
    return-object p0
.end method

.method public whitelist setFontPaddingIncluded(Z)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "includeFontPadding"    # Z

    .line 3938
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mIncludePad:Z

    .line 3939
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .line 4053
    iput p1, p0, Landroid/text/Layout$Builder;->mHyphenationFrequency:I

    .line 4054
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "justificationMode"    # I

    .line 4123
    iput p1, p0, Landroid/text/Layout$Builder;->mJustificationMode:I

    .line 4124
    return-object p0
.end method

.method public whitelist setLeftIndents([I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "leftIndents"    # [I

    .line 4077
    iput-object p1, p0, Landroid/text/Layout$Builder;->mLeftIndents:[I

    .line 4078
    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 4141
    iput-object p1, p0, Landroid/text/Layout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 4142
    return-object p0
.end method

.method public whitelist setLineSpacingAmount(F)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "amount"    # F

    .line 3900
    iput p1, p0, Landroid/text/Layout$Builder;->mSpacingAdd:F

    .line 3901
    return-object p0
.end method

.method public whitelist setLineSpacingMultiplier(F)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "multiplier"    # F

    .line 3919
    iput p1, p0, Landroid/text/Layout$Builder;->mSpacingMult:F

    .line 3920
    return-object p0
.end method

.method public whitelist setMaxLines(I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "maxLines"    # I

    .line 4013
    iput p1, p0, Landroid/text/Layout$Builder;->mMaxLines:I

    .line 4014
    return-object p0
.end method

.method public whitelist setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 4232
    iput-object p1, p0, Landroid/text/Layout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 4233
    return-object p0
.end method

.method public whitelist setRightIndents([I)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "rightIndents"    # [I

    .line 4101
    iput-object p1, p0, Landroid/text/Layout$Builder;->mRightIndents:[I

    .line 4102
    return-object p0
.end method

.method public whitelist setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "shiftDrawingOffsetForStartOverhang"    # Z

    .line 4196
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    .line 4197
    return-object p0
.end method

.method public whitelist setTextDirectionHeuristic(Landroid/text/TextDirectionHeuristic;)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "textDirection"    # Landroid/text/TextDirectionHeuristic;

    .line 3881
    iput-object p1, p0, Landroid/text/Layout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 3882
    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/text/Layout$Builder;
    .registers 2
    .param p1, "useBoundsForWidth"    # Z

    .line 4167
    iput-boolean p1, p0, Landroid/text/Layout$Builder;->mUseBoundsForWidth:Z

    .line 4168
    return-object p0
.end method
