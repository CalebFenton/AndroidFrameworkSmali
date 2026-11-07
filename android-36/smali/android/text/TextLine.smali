.class public Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextLine$DecorationInfo;,
        Landroid/text/TextLine$LineInfo;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEBUG:Z = false

.field private static final blacklist TAB_CHAR:C = '\t'

.field private static final greylist-max-o TAB_INCREMENT:I = 0x14

.field private static final greylist-max-p sCached:[Landroid/text/TextLine;


# instance fields
.field private final greylist-max-o mActivePaint:Landroid/text/TextPaint;

.field private blacklist mAddedLetterSpacingInPx:F

.field private blacklist mAddedWordSpacingInPx:F

.field private final greylist-max-r mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mChars:[C

.field private greylist-max-o mCharsValid:Z

.field private greylist-max-o mComputed:Landroid/text/PrecomputedText;

.field private final greylist-max-o mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

.field private final greylist-max-o mDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mDir:I

.field private greylist-max-o mDirections:Landroid/text/Layout$Directions;

.field private blacklist mEllipsisEnd:I

.field private blacklist mEllipsisStart:I

.field private greylist-max-o mHasTabs:Z

.field private blacklist mIsJustifying:Z

.field private greylist-max-o mLen:I

.field private final greylist-max-r mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private final greylist-max-r mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRunInfo:Landroid/graphics/Paint$RunInfo;

.field private greylist-max-p mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mStart:I

.field private greylist-max-o mTabs:Landroid/text/Layout$TabStops;

.field private greylist-max-r mText:Ljava/lang/CharSequence;

.field private blacklist mTmpRectForMeasure:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPaintAPI:Landroid/graphics/RectF;

.field private blacklist mTmpRectForPrecompute:Landroid/graphics/Rect;

.field private blacklist mUseFallbackExtent:Z

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/text/TextLine;

    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    .line 123
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 124
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 125
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/MetricAffectingSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    .line 128
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/CharacterStyle;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    .line 131
    new-instance v0, Landroid/text/SpanSet;

    const-class v1, Landroid/text/style/ReplacementSpan;

    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    .line 135
    new-instance v0, Landroid/text/TextLine$DecorationInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/TextLine$DecorationInfo;-><init>(Landroid/text/TextLine-IA;)V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    return-void
.end method

.method private blacklist adjustEndHyphenEdit(II)I
    .registers 4
    .param p1, "limit"    # I
    .param p2, "endHyphenEdit"    # I

    .line 1527
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    if-ge p1, v0, :cond_6

    const/4 v0, 0x0

    goto :goto_7

    :cond_6
    move v0, p2

    :goto_7
    return v0
.end method

.method private blacklist adjustStartHyphenEdit(II)I
    .registers 4
    .param p1, "start"    # I
    .param p2, "startHyphenEdit"    # I

    .line 1522
    if-lez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_5

    :cond_4
    move v0, p2

    :goto_5
    return v0
.end method

.method public static blacklist calculateRunFlag(III)I
    .registers 6
    .param p0, "bidiRunIndex"    # I
    .param p1, "bidiRunCount"    # I
    .param p2, "lineDirection"    # I

    .line 341
    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    .line 343
    const/16 v0, 0x6000

    return v0

    .line 345
    :cond_6
    if-eqz p0, :cond_e

    add-int/lit8 v1, p1, -0x1

    if-eq p0, v1, :cond_e

    .line 348
    const/4 v0, 0x0

    return v0

    .line 351
    :cond_e
    const/4 v1, 0x0

    .line 358
    .local v1, "runFlag":I
    if-nez p0, :cond_18

    .line 359
    if-ne p2, v0, :cond_16

    .line 360
    or-int/lit16 v1, v1, 0x2000

    goto :goto_18

    .line 362
    :cond_16
    or-int/lit16 v1, v1, 0x4000

    .line 365
    :cond_18
    :goto_18
    add-int/lit8 v2, p1, -0x1

    if-ne p0, v2, :cond_23

    .line 366
    if-ne p2, v0, :cond_21

    .line 367
    or-int/lit16 v1, v1, 0x4000

    goto :goto_23

    .line 369
    :cond_21
    or-int/lit16 v1, v1, 0x2000

    .line 372
    :cond_23
    :goto_23
    return v1
.end method

.method private blacklist charAt(I)C
    .registers 4
    .param p1, "i"    # I

    .line 287
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v0, v0, p1

    goto :goto_12

    :cond_9
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    :goto_12
    return v0
.end method

.method private greylist-max-o countStretchableSpaces(II)I
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1863
    const/4 v0, 0x0

    .line 1864
    .local v0, "count":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-ge v1, p2, :cond_21

    .line 1865
    iget-boolean v2, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    aget-char v2, v2, v1

    goto :goto_16

    :cond_d
    iget-object v2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 1866
    .local v2, "c":C
    :goto_16
    invoke-direct {p0, v2}, Landroid/text/TextLine;->isStretchableWhitespace(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 1867
    add-int/lit8 v0, v0, 0x1

    .line 1864
    .end local v2    # "c":C
    :cond_1e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1870
    .end local v1    # "i":I
    :cond_21
    return v0
.end method

.method private blacklist drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F
    .registers 30
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z
    .param p10, "runFlag"    # I

    .line 844
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    move/from16 v4, p4

    if-ne v2, v4, :cond_3f

    .line 845
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    neg-float v0, v3

    .line 847
    .local v0, "w":F
    add-float v7, p5, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move-object/from16 v5, p1

    move/from16 v4, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v17, p10

    move/from16 v18, v0

    move-object/from16 v0, p0

    .end local v0    # "w":F
    .local v18, "w":F
    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    .line 849
    return v18

    .line 852
    .end local v18    # "w":F
    :cond_3f
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p3

    move-object/from16 v1, p0

    move-object/from16 v6, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v14, p9

    move/from16 v18, p10

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private static greylist-max-o drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V
    .registers 17
    .param p0, "wp"    # Landroid/text/TextPaint;
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "color"    # I
    .param p3, "position"    # F
    .param p4, "thickness"    # F
    .param p5, "xleft"    # F
    .param p6, "xright"    # F
    .param p7, "baseline"    # F

    .line 1235
    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    int-to-float v0, v0

    add-float v0, p7, v0

    add-float v3, v0, p3

    .line 1237
    .local v3, "strokeTop":F
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    .line 1238
    .local v0, "previousColor":I
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 1239
    .local v7, "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual {p0}, Landroid/text/TextPaint;->isAntiAlias()Z

    move-result v8

    .line 1241
    .local v8, "previousAntiAlias":Z
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1242
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1244
    invoke-virtual {p0, p2}, Landroid/text/TextPaint;->setColor(I)V

    .line 1245
    add-float v5, v3, p4

    move-object v6, p0

    move-object v1, p1

    move v2, p5

    move v4, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1247
    invoke-virtual {p0, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1248
    invoke-virtual {p0, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1249
    invoke-virtual {p0, v8}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 1250
    return-void
.end method

.method private greylist-max-o drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .registers 31
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    .line 1790
    move-object/from16 v0, p0

    move/from16 v1, p9

    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v2, :cond_1f

    .line 1791
    sub-int v6, p4, p3

    .line 1792
    .local v6, "count":I
    sub-int v8, p6, p5

    .line 1793
    .local v8, "contextCount":I
    iget-object v4, v0, Landroid/text/TextLine;->mChars:[C

    int-to-float v10, v1

    move-object/from16 v3, p1

    move-object/from16 v12, p2

    move/from16 v5, p3

    move/from16 v7, p5

    move/from16 v11, p7

    move/from16 v9, p8

    invoke-virtual/range {v3 .. v12}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    .line 1795
    .end local v6    # "count":I
    .end local v8    # "contextCount":I
    goto :goto_39

    .line 1796
    :cond_1f
    iget v2, v0, Landroid/text/TextLine;->mStart:I

    .line 1797
    .local v2, "delta":I
    iget-object v12, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v13, v2, p3

    add-int v14, v2, p4

    add-int v15, v2, p5

    add-int v16, v2, p6

    int-to-float v3, v1

    move-object/from16 v11, p1

    move-object/from16 v20, p2

    move/from16 v19, p7

    move/from16 v17, p8

    move/from16 v18, v3

    invoke-virtual/range {v11 .. v20}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 1800
    .end local v2    # "delta":I
    :goto_39
    return-void
.end method

.method private static blacklist equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z
    .registers 4
    .param p0, "lp"    # Landroid/text/TextPaint;
    .param p1, "rp"    # Landroid/text/TextPaint;

    .line 1883
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1884
    invoke-virtual {p0}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getMaskFilter()Landroid/graphics/MaskFilter;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1885
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShader()Landroid/graphics/Shader;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1886
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1887
    invoke-virtual {p0}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1888
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1889
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1890
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontVariationSettings()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_172

    .line 1891
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1892
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1893
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1894
    invoke-virtual {p0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1895
    invoke-virtual {p0}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getFlags()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1896
    invoke-virtual {p0}, Landroid/text/TextPaint;->getHinting()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getHinting()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1897
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1898
    invoke-virtual {p0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getColor()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1899
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1900
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeMiter()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1901
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1902
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStrokeJoin()Landroid/graphics/Paint$Join;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1903
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    if-ne v0, v1, :cond_172

    .line 1904
    invoke-virtual {p0}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->isElegantTextHeight()Z

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1905
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSize()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1906
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextScaleX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1907
    invoke-virtual {p0}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getTextSkewX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1908
    invoke-virtual {p0}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getLetterSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1909
    invoke-virtual {p0}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getWordSpacing()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    .line 1910
    invoke-virtual {p0}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_172

    .line 1911
    invoke-virtual {p0}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->bgColor:I

    iget v1, p1, Landroid/text/TextPaint;->bgColor:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->baselineShift:I

    iget v1, p1, Landroid/text/TextPaint;->baselineShift:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->linkColor:I

    iget v1, p1, Landroid/text/TextPaint;->linkColor:I

    if-ne v0, v1, :cond_172

    iget-object v0, p0, Landroid/text/TextPaint;->drawableState:[I

    iget-object v1, p1, Landroid/text/TextPaint;->drawableState:[I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->density:F

    iget v1, p1, Landroid/text/TextPaint;->density:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->underlineColor:I

    iget v1, p1, Landroid/text/TextPaint;->underlineColor:I

    if-ne v0, v1, :cond_172

    iget v0, p0, Landroid/text/TextPaint;->underlineThickness:F

    iget v1, p1, Landroid/text/TextPaint;->underlineThickness:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_172

    const/4 v0, 0x1

    goto :goto_173

    :cond_172
    const/4 v0, 0x0

    .line 1883
    :goto_173
    return v0
.end method

.method private static greylist-max-o expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .registers 8
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    .line 1184
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1185
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1186
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1187
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1188
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1190
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1192
    move-object v0, p0

    .end local p0    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .local v0, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1194
    return-void
.end method

.method private blacklist expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V
    .registers 22
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 1199
    move-object/from16 v7, p7

    iget v8, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1200
    .local v8, "previousTop":I
    iget v9, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1201
    .local v9, "previousAscent":I
    iget v10, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1202
    .local v10, "previousDescent":I
    iget v11, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1203
    .local v11, "previousBottom":I
    iget v12, v7, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1205
    .local v12, "previousLeading":I
    sub-int v3, p3, p2

    .line 1206
    .local v3, "count":I
    sub-int v5, p5, p4

    .line 1207
    .local v5, "contextCount":I
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_25

    .line 1208
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    move-object v0, p1

    move/from16 v2, p2

    move/from16 v4, p4

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getFontMetricsInt([CIIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    move-object/from16 v7, p7

    move v6, v3

    move v13, v5

    goto :goto_4f

    .line 1211
    :cond_25
    iget-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-nez v0, :cond_3e

    .line 1212
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v0, p0, Landroid/text/TextLine;->mStart:I

    add-int v2, v0, p2

    iget v0, p0, Landroid/text/TextLine;->mStart:I

    add-int v4, v0, p4

    move-object v0, p1

    move/from16 v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/text/TextPaint;->getFontMetricsInt(Ljava/lang/CharSequence;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    move v6, v3

    move v13, v5

    .end local v3    # "count":I
    .end local v5    # "contextCount":I
    .local v6, "count":I
    .local v13, "contextCount":I
    goto :goto_4f

    .line 1215
    .end local v6    # "count":I
    .end local v13    # "contextCount":I
    .restart local v3    # "count":I
    .restart local v5    # "contextCount":I
    :cond_3e
    move-object/from16 v7, p7

    move v6, v3

    move v13, v5

    .end local v3    # "count":I
    .end local v5    # "contextCount":I
    .restart local v6    # "count":I
    .restart local v13    # "contextCount":I
    iget-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int v1, v1, p2

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int v2, v2, p3

    invoke-virtual {v0, v1, v2, v7}, Landroid/text/PrecomputedText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 1219
    :goto_4f
    move-object v0, v7

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    .end local v8    # "previousTop":I
    .end local v9    # "previousAscent":I
    .end local v10    # "previousDescent":I
    .end local v11    # "previousBottom":I
    .end local v12    # "previousLeading":I
    .local v1, "previousTop":I
    .local v2, "previousAscent":I
    .local v3, "previousDescent":I
    .local v4, "previousBottom":I
    .local v5, "previousLeading":I
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    .line 1221
    return-void
.end method

.method private greylist-max-o extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V
    .registers 5
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "info"    # Landroid/text/TextLine$DecorationInfo;

    .line 1554
    invoke-virtual {p1}, Landroid/text/TextPaint;->isStrikeThruText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    .line 1555
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1556
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrikeThruText(Z)V

    .line 1558
    :cond_e
    invoke-virtual {p1}, Landroid/text/TextPaint;->isUnderlineText()Z

    move-result v0

    iput-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    .line 1559
    iget-boolean v0, p2, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    if-eqz v0, :cond_1b

    .line 1560
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 1562
    :cond_1b
    iget v0, p1, Landroid/text/TextPaint;->underlineColor:I

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    .line 1563
    iget v0, p1, Landroid/text/TextPaint;->underlineThickness:F

    iput v0, p2, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    .line 1564
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/text/TextPaint;->setUnderlineText(IF)V

    .line 1565
    return-void
.end method

.method private greylist-max-o getOffsetBeforeAfter(IIIZIZ)I
    .registers 21
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    .line 1114
    move/from16 v0, p3

    move/from16 v6, p5

    if-ltz p1, :cond_c7

    const/4 v1, 0x0

    if-eqz p6, :cond_c

    iget v2, p0, Landroid/text/TextLine;->mLen:I

    goto :goto_d

    :cond_c
    move v2, v1

    :goto_d
    if-ne v6, v2, :cond_13

    move/from16 v10, p2

    goto/16 :goto_c9

    .line 1124
    :cond_13
    iget-object v3, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1125
    .local v3, "wp":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1126
    iget-boolean v2, p0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v2, :cond_2d

    .line 1127
    iget v2, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 1128
    iget v2, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    div-float/2addr v2, v4

    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1131
    :cond_2d
    move/from16 v2, p2

    .line 1133
    .local v2, "spanStart":I
    iget-object v4, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    if-eqz v4, :cond_91

    move/from16 v10, p2

    if-ne v10, v0, :cond_38

    goto :goto_93

    .line 1136
    :cond_38
    if-eqz p6, :cond_3d

    add-int/lit8 v4, v6, 0x1

    goto :goto_3e

    :cond_3d
    move v4, v6

    .line 1137
    .local v4, "target":I
    :goto_3e
    iget v5, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v0

    .line 1139
    .local v5, "limit":I
    :goto_41
    iget-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v8, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v2

    const-class v9, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v8, v5, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v7

    iget v8, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v7, v8

    .line 1141
    .local v7, "spanLimit":I
    if-lt v7, v4, :cond_8f

    .line 1142
    nop

    .line 1147
    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v9, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v9, v2

    iget v11, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v11, v7

    const-class v12, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v8, v9, v11, v12}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/text/style/MetricAffectingSpan;

    .line 1149
    .local v8, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v9, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const-class v11, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v8, v9, v11}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    move-object v8, v9

    check-cast v8, [Landroid/text/style/MetricAffectingSpan;

    .line 1151
    array-length v9, v8

    if-lez v9, :cond_8d

    .line 1152
    const/4 v9, 0x0

    .line 1153
    .local v9, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_72
    array-length v12, v8

    if-ge v11, v12, :cond_85

    .line 1154
    aget-object v12, v8, v11

    .line 1155
    .local v12, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v13, v12, Landroid/text/style/ReplacementSpan;

    if-eqz v13, :cond_7f

    .line 1156
    move-object v9, v12

    check-cast v9, Landroid/text/style/ReplacementSpan;

    goto :goto_82

    .line 1158
    :cond_7f
    invoke-virtual {v12, v3}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 1153
    .end local v12    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_82
    add-int/lit8 v11, v11, 0x1

    goto :goto_72

    .line 1162
    .end local v11    # "j":I
    :cond_85
    if-eqz v9, :cond_8d

    .line 1165
    if-eqz p6, :cond_8b

    move v1, v7

    goto :goto_8c

    :cond_8b
    move v1, v2

    :goto_8c
    return v1

    .line 1170
    .end local v4    # "target":I
    .end local v5    # "limit":I
    .end local v8    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v9    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_8d
    move v11, v7

    goto :goto_96

    .line 1144
    .restart local v4    # "target":I
    .restart local v5    # "limit":I
    :cond_8f
    move v2, v7

    goto :goto_41

    .line 1133
    .end local v4    # "target":I
    .end local v5    # "limit":I
    .end local v7    # "spanLimit":I
    :cond_91
    move/from16 v10, p2

    .line 1134
    :goto_93
    move/from16 v7, p3

    move v11, v7

    .line 1170
    .local v11, "spanLimit":I
    :goto_96
    if-eqz p6, :cond_99

    goto :goto_9a

    :cond_99
    const/4 v1, 0x2

    :goto_9a
    move v9, v1

    .line 1171
    .local v9, "cursorOpt":I
    iget-boolean v1, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v1, :cond_ae

    .line 1172
    move-object v1, v3

    move v3, v2

    .end local v2    # "spanStart":I
    .local v1, "wp":Landroid/text/TextPaint;
    .local v3, "spanStart":I
    iget-object v2, p0, Landroid/text/TextLine;->mChars:[C

    sub-int v4, v11, v3

    move/from16 v5, p4

    move v7, v9

    .end local v9    # "cursorOpt":I
    .local v7, "cursorOpt":I
    invoke-virtual/range {v1 .. v7}, Landroid/text/TextPaint;->getTextRunCursor([CIIZII)I

    move-result v2

    move v12, v3

    .end local v3    # "spanStart":I
    .end local v7    # "cursorOpt":I
    .restart local v9    # "cursorOpt":I
    .local v12, "spanStart":I
    return v2

    .line 1175
    .end local v1    # "wp":Landroid/text/TextPaint;
    .end local v12    # "spanStart":I
    .restart local v2    # "spanStart":I
    .local v3, "wp":Landroid/text/TextPaint;
    :cond_ae
    move v12, v2

    .end local v2    # "spanStart":I
    .restart local v12    # "spanStart":I
    iget-object v4, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int v5, v2, v12

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int v6, v2, v11

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int v8, v2, p5

    move/from16 v7, p4

    invoke-virtual/range {v3 .. v9}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIZII)I

    move-result v1

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    .line 1114
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v9    # "cursorOpt":I
    .end local v11    # "spanLimit":I
    .end local v12    # "spanStart":I
    :cond_c7
    move/from16 v10, p2

    .line 1118
    :goto_c9
    if-eqz p6, :cond_d9

    .line 1119
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int v2, p5, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1

    .line 1121
    :cond_d9
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    add-int v2, p5, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v1

    iget v2, p0, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v1, v2

    return v1
.end method

.method private blacklist getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .registers 26
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "offset"    # I
    .param p8, "advances"    # [F
    .param p9, "advancesIndex"    # I
    .param p10, "drawingBounds"    # Landroid/graphics/RectF;
    .param p11, "lineInfo"    # Landroid/text/TextLine$LineInfo;

    .line 1255
    move-object/from16 v12, p11

    if-eqz v12, :cond_16

    .line 1256
    iget-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    if-nez v0, :cond_f

    .line 1257
    new-instance v0, Landroid/graphics/Paint$RunInfo;

    invoke-direct {v0}, Landroid/graphics/Paint$RunInfo;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    .line 1259
    :cond_f
    iget-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint$RunInfo;->setClusterCount(I)V

    goto :goto_19

    .line 1261
    :cond_16
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    .line 1263
    :goto_19
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_49

    .line 1264
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    iget-object v11, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object v0, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextPaint;->getRunCharacterAdvance([CIIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v1

    .line 1266
    .local v1, "r":F
    if-eqz v12, :cond_48

    .line 1267
    invoke-virtual {v12}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v0

    iget-object v2, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {v2}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v12, v0}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 1269
    :cond_48
    return v1

    .line 1271
    .end local v1    # "r":F
    :cond_49
    move-object/from16 v10, p10

    iget v13, p0, Landroid/text/TextLine;->mStart:I

    .line 1274
    .local v13, "delta":I
    iget-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    if-eqz v0, :cond_7e

    if-nez p8, :cond_7e

    if-eqz v12, :cond_56

    goto :goto_7e

    .line 1284
    :cond_56
    if-eqz v10, :cond_73

    .line 1285
    iget-object v0, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    if-nez v0, :cond_63

    .line 1286
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    .line 1288
    :cond_63
    iget-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v1, p2, v13

    add-int v2, p3, v13

    iget-object v3, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/PrecomputedText;->getBounds(IILandroid/graphics/Rect;)V

    .line 1289
    iget-object v0, p0, Landroid/text/TextLine;->mTmpRectForPrecompute:Landroid/graphics/Rect;

    invoke-virtual {v10, v0}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 1291
    :cond_73
    iget-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    add-int v1, p2, v13

    add-int v2, p3, v13

    invoke-virtual {v0, v1, v2}, Landroid/text/PrecomputedText;->getWidth(II)F

    move-result v0

    return v0

    .line 1275
    :cond_7e
    :goto_7e
    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    add-int v2, v13, p2

    add-int v3, v13, p3

    add-int v4, v13, p4

    add-int v5, v13, p5

    add-int v7, v13, p7

    iget-object v11, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    move-object v0, p1

    move/from16 v6, p6

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextPaint;->getRunCharacterAdvance(Ljava/lang/CharSequence;IIIIZI[FILandroid/graphics/RectF;Landroid/graphics/Paint$RunInfo;)F

    move-result v1

    .line 1278
    .restart local v1    # "r":F
    if-eqz v12, :cond_a8

    .line 1279
    nop

    .line 1280
    invoke-virtual {v12}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v0

    iget-object v2, p0, Landroid/text/TextLine;->mRunInfo:Landroid/graphics/Paint$RunInfo;

    invoke-virtual {v2}, Landroid/graphics/Paint$RunInfo;->getClusterCount()I

    move-result v2

    add-int/2addr v0, v2

    .line 1279
    invoke-virtual {v12, v0}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 1282
    :cond_a8
    return v1
.end method

.method private greylist-max-o handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .registers 32
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "runIsRtl"    # Z
    .param p6, "c"    # Landroid/graphics/Canvas;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "needWidth"    # Z

    .line 1479
    move-object/from16 v0, p0

    move-object/from16 v6, p11

    const/4 v7, 0x0

    .line 1481
    .local v7, "ret":F
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v4, v1, p3

    .line 1482
    .local v4, "textStart":I
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    add-int v5, v1, p4

    .line 1484
    .local v5, "textLimit":I
    if-nez p12, :cond_17

    if-eqz p6, :cond_14

    if-eqz p5, :cond_14

    goto :goto_17

    .line 1509
    :cond_14
    move v11, v4

    move v12, v5

    goto :goto_5b

    .line 1485
    :cond_17
    :goto_17
    const/4 v1, 0x0

    .line 1486
    .local v1, "previousTop":I
    const/4 v2, 0x0

    .line 1487
    .local v2, "previousAscent":I
    const/4 v3, 0x0

    .line 1488
    .local v3, "previousDescent":I
    const/4 v8, 0x0

    .line 1489
    .local v8, "previousBottom":I
    const/4 v9, 0x0

    .line 1491
    .local v9, "previousLeading":I
    if-eqz v6, :cond_20

    const/4 v10, 0x1

    goto :goto_21

    :cond_20
    const/4 v10, 0x0

    .line 1493
    .local v10, "needUpdateMetrics":Z
    :goto_21
    if-eqz v10, :cond_33

    .line 1494
    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1495
    iget v2, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1496
    iget v3, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1497
    iget v8, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1498
    iget v9, v6, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    move v11, v3

    move v12, v8

    move v13, v9

    move v8, v1

    move v9, v2

    goto :goto_38

    .line 1493
    :cond_33
    move v11, v3

    move v12, v8

    move v13, v9

    move v8, v1

    move v9, v2

    .line 1501
    .end local v1    # "previousTop":I
    .end local v2    # "previousAscent":I
    .end local v3    # "previousDescent":I
    .local v8, "previousTop":I
    .local v9, "previousAscent":I
    .local v11, "previousDescent":I
    .local v12, "previousBottom":I
    .local v13, "previousLeading":I
    :goto_38
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result v3

    move/from16 v18, v11

    move v11, v4

    move/from16 v4, v18

    move/from16 v18, v12

    move v12, v5

    move/from16 v5, v18

    .local v4, "previousDescent":I
    .local v5, "previousBottom":I
    .local v11, "textStart":I
    .local v12, "textLimit":I
    int-to-float v7, v3

    .line 1503
    if-eqz v10, :cond_58

    .line 1504
    move-object/from16 v1, p11

    move v2, v8

    move v3, v9

    move v6, v13

    .end local v8    # "previousTop":I
    .end local v9    # "previousAscent":I
    .end local v13    # "previousLeading":I
    .local v2, "previousTop":I
    .local v3, "previousAscent":I
    .local v6, "previousLeading":I
    invoke-static/range {v1 .. v6}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    goto :goto_5b

    .line 1503
    .end local v2    # "previousTop":I
    .end local v3    # "previousAscent":I
    .end local v6    # "previousLeading":I
    .restart local v8    # "previousTop":I
    .restart local v9    # "previousAscent":I
    .restart local v13    # "previousLeading":I
    :cond_58
    move v2, v8

    move v3, v9

    move v6, v13

    .line 1509
    .end local v4    # "previousDescent":I
    .end local v5    # "previousBottom":I
    .end local v8    # "previousTop":I
    .end local v9    # "previousAscent":I
    .end local v10    # "needUpdateMetrics":Z
    .end local v13    # "previousLeading":I
    :goto_5b
    if-eqz p6, :cond_77

    .line 1510
    if-eqz p5, :cond_63

    .line 1511
    sub-float v1, p7, v7

    move v13, v1

    .end local p7    # "x":F
    .local v1, "x":F
    goto :goto_65

    .line 1510
    .end local v1    # "x":F
    .restart local p7    # "x":F
    :cond_63
    move/from16 v13, p7

    .line 1513
    .end local p7    # "x":F
    .local v13, "x":F
    :goto_65
    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    move-object/from16 v8, p1

    move-object/from16 v17, p2

    move-object/from16 v9, p6

    move/from16 v14, p8

    move/from16 v15, p9

    move/from16 v16, p10

    invoke-virtual/range {v8 .. v17}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    goto :goto_79

    .line 1509
    .end local v13    # "x":F
    .restart local p7    # "x":F
    :cond_77
    move/from16 v13, p7

    .line 1517
    .end local p7    # "x":F
    .restart local v13    # "x":F
    :goto_79
    if-eqz p5, :cond_7d

    neg-float v1, v7

    goto :goto_7e

    :cond_7d
    move v1, v7

    :goto_7e
    return v1
.end method

.method private blacklist handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F
    .registers 51
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;
    .param p7, "x"    # F
    .param p8, "top"    # I
    .param p9, "y"    # I
    .param p10, "bottom"    # I
    .param p11, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p12, "drawBounds"    # Landroid/graphics/RectF;
    .param p13, "needWidth"    # Z
    .param p14, "advances"    # [F
    .param p15, "advancesIndex"    # I
    .param p16, "lineInfo"    # Landroid/text/TextLine$LineInfo;
    .param p17, "runFlag"    # I

    .line 1598
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v0, p14

    if-lt v3, v2, :cond_352

    if-gt v3, v4, :cond_352

    .line 1603
    if-eqz v0, :cond_24

    array-length v5, v0

    sub-int v5, v5, p15

    sub-int v6, v3, v2

    if-lt v5, v6, :cond_1c

    goto :goto_24

    .line 1604
    :cond_1c
    new-instance v5, Ljava/lang/IndexOutOfBoundsException;

    const-string v6, "advances doesn\'t have enough space to receive the result"

    invoke-direct {v5, v6}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1609
    :cond_24
    :goto_24
    const/4 v13, 0x0

    if-ne v2, v3, :cond_4b

    .line 1610
    iget-object v5, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1611
    .local v5, "wp":Landroid/text/TextPaint;
    iget-object v6, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1612
    if-eqz v14, :cond_33

    .line 1613
    invoke-static {v14, v5}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1615
    :cond_33
    if-eqz v15, :cond_4a

    .line 1616
    if-nez v14, :cond_41

    .line 1617
    new-instance v6, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v6}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1618
    .local v6, "tmpFmi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-static {v6, v5}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1619
    move-object v7, v6

    move-object v14, v7

    .line 1621
    .end local v6    # "tmpFmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local p11    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .local v14, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    :cond_41
    iget v6, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-float v6, v6

    iget v7, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-float v7, v7

    invoke-virtual {v15, v13, v6, v13, v7}, Landroid/graphics/RectF;->union(FFFF)V

    .line 1623
    :cond_4a
    return v13

    .line 1627
    .end local v5    # "wp":Landroid/text/TextPaint;
    .end local v14    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local p11    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    :cond_4b
    iget-object v5, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    const/16 v23, 0x0

    const/16 v24, 0x1

    if-nez v5, :cond_57

    .line 1628
    const/4 v5, 0x0

    move/from16 v25, v5

    .local v5, "needsSpanMeasurement":Z
    goto :goto_85

    .line 1630
    .end local v5    # "needsSpanMeasurement":Z
    :cond_57
    iget-object v5, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v6, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v2

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1631
    iget-object v5, v1, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v6, v1, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    iget v7, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v7, v2

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v4

    invoke-virtual {v5, v6, v7, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 1632
    iget-object v5, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-nez v5, :cond_81

    iget-object v5, v1, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v5, v5, Landroid/text/SpanSet;->numberOfSpans:I

    if-eqz v5, :cond_7e

    goto :goto_81

    :cond_7e
    move/from16 v5, v23

    goto :goto_83

    :cond_81
    :goto_81
    move/from16 v5, v24

    :goto_83
    move/from16 v25, v5

    .line 1636
    .local v25, "needsSpanMeasurement":Z
    :goto_85
    if-nez v25, :cond_ce

    .line 1637
    iget-object v5, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1638
    .local v5, "wp":Landroid/text/TextPaint;
    iget-object v6, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1639
    invoke-virtual {v5}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v6

    invoke-direct {v1, v2, v6}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1640
    invoke-virtual {v5}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v6

    invoke-direct {v1, v4, v6}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1641
    const/16 v18, 0x0

    move-object v2, v5

    .end local v5    # "wp":Landroid/text/TextPaint;
    .local v2, "wp":Landroid/text/TextPaint;
    move/from16 v5, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v16, p13

    move/from16 v20, p15

    move-object/from16 v21, p16

    move/from16 v22, p17

    move-object/from16 v19, v0

    move/from16 v17, v3

    move/from16 v3, p1

    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    move/from16 v14, v17

    return v0

    .line 1651
    .end local v2    # "wp":Landroid/text/TextPaint;
    :cond_ce
    move v14, v3

    move/from16 v26, p7

    .line 1652
    .local v26, "originalX":F
    move/from16 v0, p1

    move/from16 v7, p7

    move v5, v0

    .end local p7    # "x":F
    .local v5, "i":I
    .local v7, "x":F
    :goto_d6
    if-ge v5, v14, :cond_34e

    .line 1653
    iget-object v2, v1, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    .line 1654
    .restart local v2    # "wp":Landroid/text/TextPaint;
    iget-object v0, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1656
    iget-object v0, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v3, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v5

    iget v4, v1, Landroid/text/TextLine;->mStart:I

    add-int v4, v4, p3

    invoke-virtual {v0, v3, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v3, v1, Landroid/text/TextLine;->mStart:I

    sub-int v15, v0, v3

    .line 1658
    .local v15, "inext":I
    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1660
    .local v4, "mlimit":I
    const/4 v0, 0x0

    .line 1662
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_f6
    iget-object v6, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget v6, v6, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v3, v6, :cond_14d

    .line 1665
    iget-object v6, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v6, v6, Landroid/text/SpanSet;->spanStarts:[I

    aget v6, v6, v3

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v4

    if-ge v6, v8, :cond_14a

    iget-object v6, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v6, v6, Landroid/text/SpanSet;->spanEnds:[I

    aget v6, v6, v3

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    add-int/2addr v8, v5

    if-gt v6, v8, :cond_113

    .line 1666
    goto :goto_14a

    .line 1668
    :cond_113
    iget v6, v1, Landroid/text/TextLine;->mStart:I

    iget v8, v1, Landroid/text/TextLine;->mEllipsisStart:I

    add-int/2addr v6, v8

    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spanStarts:[I

    aget v8, v8, v3

    if-gt v6, v8, :cond_130

    iget-object v6, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v6, v6, Landroid/text/SpanSet;->spanEnds:[I

    aget v6, v6, v3

    iget v8, v1, Landroid/text/TextLine;->mStart:I

    iget v9, v1, Landroid/text/TextLine;->mEllipsisEnd:I

    add-int/2addr v8, v9

    if-gt v6, v8, :cond_130

    move/from16 v6, v24

    goto :goto_132

    :cond_130
    move/from16 v6, v23

    .line 1671
    .local v6, "insideEllipsis":Z
    :goto_132
    iget-object v8, v1, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    iget-object v8, v8, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v8, [Landroid/text/style/MetricAffectingSpan;

    aget-object v8, v8, v3

    .line 1672
    .local v8, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v9, v8, Landroid/text/style/ReplacementSpan;

    if-eqz v9, :cond_147

    .line 1673
    if-nez v6, :cond_144

    move-object v9, v8

    check-cast v9, Landroid/text/style/ReplacementSpan;

    goto :goto_145

    :cond_144
    const/4 v9, 0x0

    :goto_145
    move-object v0, v9

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v9, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_14a

    .line 1677
    .end local v9    # "replacement":Landroid/text/style/ReplacementSpan;
    .restart local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_147
    invoke-virtual {v8, v2}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1662
    .end local v6    # "insideEllipsis":Z
    .end local v8    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_14a
    :goto_14a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    .line 1681
    .end local v3    # "j":I
    :cond_14d
    if-eqz v0, :cond_195

    .line 1682
    if-nez p13, :cond_157

    if-ge v4, v14, :cond_154

    goto :goto_157

    :cond_154
    move/from16 v12, v23

    goto :goto_159

    :cond_157
    :goto_157
    move/from16 v12, v24

    :goto_159
    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v6, p5

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move v3, v5

    move/from16 v5, p4

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v5    # "i":I
    .local v1, "replacement":Landroid/text/style/ReplacementSpan;
    .local v3, "i":I
    invoke-direct/range {v0 .. v12}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    move-result v12

    .line 1684
    move-object v6, v0

    move-object/from16 v27, v1

    move-object v9, v2

    move v8, v3

    move v10, v4

    .end local v1    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v2    # "wp":Landroid/text/TextPaint;
    .end local v3    # "i":I
    .end local v4    # "mlimit":I
    .local v8, "i":I
    .local v9, "wp":Landroid/text/TextPaint;
    .local v10, "mlimit":I
    .local v12, "width":F
    .local v27, "replacement":Landroid/text/style/ReplacementSpan;
    add-float/2addr v7, v12

    .line 1685
    if-eqz p14, :cond_18e

    .line 1687
    add-int v0, p15, v8

    sub-int v0, v0, p1

    if-eqz p4, :cond_17e

    neg-float v1, v12

    goto :goto_17f

    :cond_17e
    move v1, v12

    :goto_17f
    aput v1, p14, v0

    .line 1688
    add-int/lit8 v5, v8, 0x1

    .local v5, "j":I
    :goto_183
    if-ge v5, v10, :cond_18e

    .line 1689
    add-int v0, p15, v5

    sub-int v0, v0, p1

    aput v13, p14, v0

    .line 1688
    add-int/lit8 v5, v5, 0x1

    goto :goto_183

    .line 1652
    .end local v5    # "j":I
    .end local v9    # "wp":Landroid/text/TextPaint;
    .end local v10    # "mlimit":I
    .end local v12    # "width":F
    .end local v27    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_18e
    move v5, v8

    move/from16 v32, v13

    move v0, v14

    move v6, v15

    goto/16 :goto_346

    .line 1695
    .end local v8    # "i":I
    .restart local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .restart local v2    # "wp":Landroid/text/TextPaint;
    .restart local v4    # "mlimit":I
    .local v5, "i":I
    :cond_195
    move-object/from16 v27, v0

    move-object v6, v1

    move-object v9, v2

    move v10, v4

    move v8, v5

    .end local v0    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v2    # "wp":Landroid/text/TextPaint;
    .end local v4    # "mlimit":I
    .end local v5    # "i":I
    .restart local v8    # "i":I
    .restart local v9    # "wp":Landroid/text/TextPaint;
    .restart local v10    # "mlimit":I
    .restart local v27    # "replacement":Landroid/text/style/ReplacementSpan;
    iget-object v11, v6, Landroid/text/TextLine;->mActivePaint:Landroid/text/TextPaint;

    .line 1696
    .local v11, "activePaint":Landroid/text/TextPaint;
    iget-object v0, v6, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v11, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1697
    move v0, v8

    .line 1698
    .local v0, "activeStart":I
    move v1, v10

    .line 1699
    .local v1, "activeEnd":I
    iget-object v12, v6, Landroid/text/TextLine;->mDecorationInfo:Landroid/text/TextLine$DecorationInfo;

    .line 1700
    .local v12, "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    iget-object v2, v6, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1701
    move v2, v8

    move v3, v0

    move v4, v1

    move/from16 v16, v7

    move v7, v2

    .end local v0    # "activeStart":I
    .end local v1    # "activeEnd":I
    .local v3, "activeStart":I
    .local v4, "activeEnd":I
    .local v7, "j":I
    .local v16, "x":F
    :goto_1b1
    if-ge v7, v10, :cond_2d4

    .line 1702
    iget-object v0, v6, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v1, v6, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, v7

    iget v2, v6, Landroid/text/TextLine;->mStart:I

    add-int/2addr v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v0

    iget v1, v6, Landroid/text/TextLine;->mStart:I

    sub-int/2addr v0, v1

    .line 1705
    .local v0, "jnext":I
    invoke-static {v0, v10}, Ljava/lang/Math;->min(II)I

    move-result v28

    .line 1706
    .local v28, "offset":I
    iget-object v1, v6, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v9, v1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1707
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1cc
    iget-object v2, v6, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v1, v2, :cond_1f8

    .line 1709
    iget-object v2, v6, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    aget v2, v2, v1

    iget v5, v6, Landroid/text/TextLine;->mStart:I

    add-int v5, v5, v28

    if-ge v2, v5, :cond_1f5

    iget-object v2, v6, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    aget v2, v2, v1

    iget v5, v6, Landroid/text/TextLine;->mStart:I

    add-int/2addr v5, v7

    if-gt v2, v5, :cond_1ea

    .line 1710
    goto :goto_1f5

    .line 1712
    :cond_1ea
    iget-object v2, v6, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v2, [Landroid/text/style/CharacterStyle;

    aget-object v2, v2, v1

    .line 1713
    .local v2, "span":Landroid/text/style/CharacterStyle;
    invoke-virtual {v2, v9}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    .line 1707
    .end local v2    # "span":Landroid/text/style/CharacterStyle;
    :cond_1f5
    :goto_1f5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1cc

    .line 1716
    .end local v1    # "k":I
    :cond_1f8
    invoke-direct {v6, v9, v12}, Landroid/text/TextLine;->extractDecorationInfo(Landroid/text/TextPaint;Landroid/text/TextLine$DecorationInfo;)V

    .line 1718
    if-ne v7, v8, :cond_211

    .line 1722
    invoke-virtual {v11, v9}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    move/from16 v31, v0

    move/from16 p7, v7

    move-object v0, v9

    move/from16 v29, v10

    move-object v9, v11

    move-object/from16 v30, v12

    move/from16 v32, v13

    move v7, v15

    move/from16 v10, v16

    goto/16 :goto_2a5

    .line 1723
    :cond_211
    invoke-static {v9, v11}, Landroid/text/TextLine;->equalAttributes(Landroid/text/TextPaint;Landroid/text/TextPaint;)Z

    move-result v1

    if-nez v1, :cond_296

    .line 1724
    move/from16 v2, p1

    move/from16 v1, p4

    move v5, v4

    move v4, v3

    move v3, v14

    move v14, v0

    move/from16 v0, p17

    .end local v0    # "jnext":I
    .end local v3    # "activeStart":I
    .local v4, "activeStart":I
    .local v5, "activeEnd":I
    .local v14, "jnext":I
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v22

    .line 1730
    move v0, v3

    move v3, v4

    move v4, v5

    .end local v5    # "activeEnd":I
    .restart local v3    # "activeStart":I
    .local v4, "activeEnd":I
    .local v22, "spanRunFlag":I
    iget-object v1, v6, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1731
    invoke-virtual {v1}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v1

    invoke-direct {v6, v3, v1}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v1

    .line 1730
    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1732
    iget-object v1, v6, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1733
    invoke-virtual {v1}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v1

    invoke-direct {v6, v4, v1}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v1

    .line 1732
    invoke-virtual {v11, v1}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1734
    if-nez p13, :cond_24c

    if-ge v4, v0, :cond_247

    goto :goto_24c

    :cond_247
    move/from16 v1, v16

    move/from16 v16, v23

    goto :goto_250

    :cond_24c
    :goto_24c
    move/from16 v1, v16

    move/from16 v16, v24

    .line 1737
    .end local v16    # "x":F
    .local v1, "x":F
    :goto_250
    invoke-static {v4, v10}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v2, v6, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    add-int v5, p15, v3

    sub-int v20, v5, p1

    .line 1734
    move-object/from16 v19, p14

    move-object/from16 v21, p16

    move-object/from16 v18, v2

    move/from16 p7, v7

    move v5, v8

    move-object v0, v9

    move/from16 v29, v10

    move-object v2, v11

    move-object/from16 v30, v12

    move/from16 v32, v13

    move/from16 v31, v14

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move v10, v1

    move-object v1, v6

    move v6, v15

    move-object/from16 v15, p12

    .end local v1    # "x":F
    .end local v7    # "j":I
    .end local v8    # "i":I
    .end local v9    # "wp":Landroid/text/TextPaint;
    .end local v11    # "activePaint":Landroid/text/TextPaint;
    .end local v12    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v14    # "jnext":I
    .end local v15    # "inext":I
    .local v0, "wp":Landroid/text/TextPaint;
    .local v2, "activePaint":Landroid/text/TextPaint;
    .local v5, "i":I
    .local v6, "inext":I
    .local v10, "x":F
    .local v29, "mlimit":I
    .local v30, "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .local v31, "jnext":I
    .local p7, "j":I
    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v16

    move-object v9, v2

    move v8, v5

    move v7, v6

    move-object v6, v1

    .end local v2    # "activePaint":Landroid/text/TextPaint;
    .end local v5    # "i":I
    .end local v6    # "inext":I
    .local v7, "inext":I
    .restart local v8    # "i":I
    .local v9, "activePaint":Landroid/text/TextPaint;
    add-float v16, v10, v16

    .line 1740
    .end local v10    # "x":F
    .restart local v16    # "x":F
    move/from16 v1, p7

    .line 1741
    .end local v3    # "activeStart":I
    .local v1, "activeStart":I
    invoke-virtual {v9, v0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1742
    iget-object v2, v6, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    move v3, v1

    goto :goto_2a7

    .line 1723
    .end local v1    # "activeStart":I
    .end local v22    # "spanRunFlag":I
    .end local v29    # "mlimit":I
    .end local v30    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v31    # "jnext":I
    .end local p7    # "j":I
    .local v0, "jnext":I
    .restart local v3    # "activeStart":I
    .local v7, "j":I
    .local v9, "wp":Landroid/text/TextPaint;
    .local v10, "mlimit":I
    .restart local v11    # "activePaint":Landroid/text/TextPaint;
    .restart local v12    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .restart local v15    # "inext":I
    :cond_296
    move/from16 v31, v0

    move/from16 p7, v7

    move-object v0, v9

    move/from16 v29, v10

    move-object v9, v11

    move-object/from16 v30, v12

    move/from16 v32, v13

    move v7, v15

    move/from16 v10, v16

    .line 1750
    .end local v11    # "activePaint":Landroid/text/TextPaint;
    .end local v12    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v15    # "inext":I
    .end local v16    # "x":F
    .local v0, "wp":Landroid/text/TextPaint;
    .local v7, "inext":I
    .local v9, "activePaint":Landroid/text/TextPaint;
    .local v10, "x":F
    .restart local v29    # "mlimit":I
    .restart local v30    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .restart local v31    # "jnext":I
    .restart local p7    # "j":I
    :goto_2a5
    move/from16 v16, v10

    .end local v10    # "x":F
    .restart local v16    # "x":F
    :goto_2a7
    move/from16 v4, v31

    .line 1751
    invoke-virtual/range {v30 .. v30}, Landroid/text/TextLine$DecorationInfo;->hasDecoration()Z

    move-result v1

    if-eqz v1, :cond_2c1

    .line 1752
    invoke-virtual/range {v30 .. v30}, Landroid/text/TextLine$DecorationInfo;->copyInfo()Landroid/text/TextLine$DecorationInfo;

    move-result-object v1

    .line 1753
    .local v1, "copy":Landroid/text/TextLine$DecorationInfo;
    move/from16 v2, p7

    .end local p7    # "j":I
    .local v2, "j":I
    iput v2, v1, Landroid/text/TextLine$DecorationInfo;->start:I

    .line 1754
    move/from16 v14, v31

    .end local v31    # "jnext":I
    .restart local v14    # "jnext":I
    iput v14, v1, Landroid/text/TextLine$DecorationInfo;->end:I

    .line 1755
    iget-object v5, v6, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2c5

    .line 1751
    .end local v1    # "copy":Landroid/text/TextLine$DecorationInfo;
    .end local v2    # "j":I
    .end local v14    # "jnext":I
    .restart local v31    # "jnext":I
    .restart local p7    # "j":I
    :cond_2c1
    move/from16 v2, p7

    move/from16 v14, v31

    .line 1701
    .end local v28    # "offset":I
    .end local v31    # "jnext":I
    .end local p7    # "j":I
    .restart local v2    # "j":I
    .restart local v14    # "jnext":I
    :goto_2c5
    move v1, v14

    move/from16 v14, p2

    move v15, v7

    move-object v11, v9

    move/from16 v10, v29

    move-object/from16 v12, v30

    move/from16 v13, v32

    move-object v9, v0

    move v7, v1

    .end local v2    # "j":I
    .local v1, "j":I
    goto/16 :goto_1b1

    .end local v0    # "wp":Landroid/text/TextPaint;
    .end local v1    # "j":I
    .end local v14    # "jnext":I
    .end local v29    # "mlimit":I
    .end local v30    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .local v7, "j":I
    .local v9, "wp":Landroid/text/TextPaint;
    .local v10, "mlimit":I
    .restart local v11    # "activePaint":Landroid/text/TextPaint;
    .restart local v12    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .restart local v15    # "inext":I
    :cond_2d4
    move v2, v7

    move-object v0, v9

    move/from16 v29, v10

    move-object v9, v11

    move-object/from16 v30, v12

    move/from16 v32, v13

    move v7, v15

    move/from16 v10, v16

    .line 1759
    .end local v11    # "activePaint":Landroid/text/TextPaint;
    .end local v12    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .end local v15    # "inext":I
    .end local v16    # "x":F
    .restart local v0    # "wp":Landroid/text/TextPaint;
    .local v7, "inext":I
    .local v9, "activePaint":Landroid/text/TextPaint;
    .local v10, "x":F
    .restart local v29    # "mlimit":I
    .restart local v30    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    move/from16 v2, p1

    move/from16 v1, p4

    move-object/from16 v28, v0

    move v5, v4

    move/from16 v0, p17

    move v4, v3

    move/from16 v3, p2

    .end local v0    # "wp":Landroid/text/TextPaint;
    .end local v3    # "activeStart":I
    .local v4, "activeStart":I
    .local v5, "activeEnd":I
    .local v28, "wp":Landroid/text/TextPaint;
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->resolveRunFlagForSubSequence(IZIIII)I

    move-result v22

    .line 1762
    move v1, v3

    move v3, v4

    move v4, v5

    .end local v5    # "activeEnd":I
    .restart local v3    # "activeStart":I
    .local v4, "activeEnd":I
    .restart local v22    # "spanRunFlag":I
    iget-object v2, v6, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1763
    invoke-virtual {v2}, Landroid/text/TextPaint;->getStartHyphenEdit()I

    move-result v2

    invoke-direct {v6, v3, v2}, Landroid/text/TextLine;->adjustStartHyphenEdit(II)I

    move-result v2

    .line 1762
    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1764
    iget-object v2, v6, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 1765
    invoke-virtual {v2}, Landroid/text/TextPaint;->getEndHyphenEdit()I

    move-result v2

    invoke-direct {v6, v4, v2}, Landroid/text/TextLine;->adjustEndHyphenEdit(II)I

    move-result v2

    .line 1764
    invoke-virtual {v9, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1766
    if-nez p13, :cond_315

    if-ge v4, v1, :cond_312

    goto :goto_315

    :cond_312
    move/from16 v16, v23

    goto :goto_317

    :cond_315
    :goto_315
    move/from16 v16, v24

    .line 1768
    :goto_317
    move/from16 v2, v29

    .end local v29    # "mlimit":I
    .local v2, "mlimit":I
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v17

    iget-object v5, v6, Landroid/text/TextLine;->mDecorations:Ljava/util/ArrayList;

    add-int v11, p15, v3

    sub-int v20, v11, p1

    .line 1766
    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move-object/from16 v19, p14

    move-object/from16 v21, p16

    move v0, v1

    move-object/from16 v18, v5

    move-object v1, v6

    move v6, v7

    move v5, v8

    move-object v2, v9

    move/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .end local v7    # "inext":I
    .end local v8    # "i":I
    .end local v9    # "activePaint":Landroid/text/TextPaint;
    .local v2, "activePaint":Landroid/text/TextPaint;
    .local v5, "i":I
    .restart local v6    # "inext":I
    .restart local v29    # "mlimit":I
    invoke-direct/range {v1 .. v22}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F

    move-result v16

    add-float v16, v10, v16

    move/from16 v7, v16

    .line 1652
    .end local v2    # "activePaint":Landroid/text/TextPaint;
    .end local v3    # "activeStart":I
    .end local v4    # "activeEnd":I
    .end local v10    # "x":F
    .end local v22    # "spanRunFlag":I
    .end local v27    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local v28    # "wp":Landroid/text/TextPaint;
    .end local v29    # "mlimit":I
    .end local v30    # "decorationInfo":Landroid/text/TextLine$DecorationInfo;
    .local v7, "x":F
    :goto_346
    move v5, v6

    move-object/from16 v1, p0

    move v14, v0

    move/from16 v13, v32

    goto/16 :goto_d6

    .end local v6    # "inext":I
    :cond_34e
    move v0, v14

    .line 1772
    .end local v5    # "i":I
    sub-float v1, v7, v26

    return v1

    .line 1598
    .end local v7    # "x":F
    .end local v25    # "needsSpanMeasurement":Z
    .end local v26    # "originalX":F
    .local p7, "x":F
    :cond_352
    move v0, v3

    .line 1599
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "measureLimit ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") is out of start ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") and limit ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v4, p3

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") bounds"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZILjava/util/ArrayList;[FILandroid/text/TextLine$LineInfo;I)F
    .registers 45
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;
    .param p9, "x"    # F
    .param p10, "top"    # I
    .param p11, "y"    # I
    .param p12, "bottom"    # I
    .param p13, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "drawBounds"    # Landroid/graphics/RectF;
    .param p15, "needWidth"    # Z
    .param p16, "offset"    # I
    .param p18, "advances"    # [F
    .param p19, "advancesIndex"    # I
    .param p20, "lineInfo"    # Landroid/text/TextLine$LineInfo;
    .param p21, "runFlag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/TextPaint;",
            "IIIIZ",
            "Landroid/graphics/Canvas;",
            "Landroid/text/TextShaper$GlyphsConsumer;",
            "FIII",
            "Landroid/graphics/Paint$FontMetricsInt;",
            "Landroid/graphics/RectF;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Landroid/text/TextLine$DecorationInfo;",
            ">;[FI",
            "Landroid/text/TextLine$LineInfo;",
            "I)F"
        }
    .end annotation

    .line 1328
    .local p17, "decorations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/text/TextLine$DecorationInfo;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v12, p9

    move-object/from16 v14, p14

    move/from16 v3, p21

    iget-boolean v4, v0, Landroid/text/TextLine;->mIsJustifying:Z

    if-eqz v4, :cond_1f

    .line 1329
    iget v4, v0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setWordSpacing(F)V

    .line 1330
    iget v4, v0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v5

    div-float/2addr v4, v5

    invoke-virtual {v1, v4}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    .line 1333
    :cond_1f
    if-eqz v14, :cond_29

    if-nez p13, :cond_29

    .line 1334
    new-instance v4, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v4}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .end local p13    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .local v4, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    goto :goto_2b

    .line 1336
    .end local v4    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local p13    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    :cond_29
    move-object/from16 v4, p13

    .end local p13    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v4    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    :goto_2b
    if-eqz v4, :cond_30

    .line 1337
    invoke-static {v4, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    .line 1341
    :cond_30
    const/4 v5, 0x0

    move/from16 v6, p3

    if-ne v6, v2, :cond_36

    .line 1342
    return v5

    .line 1345
    :cond_36
    const/16 v16, 0x0

    .line 1346
    .local v16, "totalWidth":F
    and-int/lit16 v7, v3, 0x2000

    const/16 v8, 0x2000

    if-ne v7, v8, :cond_47

    .line 1347
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_50

    .line 1349
    :cond_47
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, -0x2001

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1351
    :goto_50
    and-int/lit16 v7, v3, 0x4000

    const/16 v8, 0x4000

    if-ne v7, v8, :cond_5f

    .line 1352
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    goto :goto_68

    .line 1354
    :cond_5f
    invoke-virtual {v1}, Landroid/text/TextPaint;->getFlags()I

    move-result v7

    and-int/lit16 v7, v7, -0x4001

    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setFlags(I)V

    .line 1356
    :goto_68
    if-nez p17, :cond_6c

    const/4 v7, 0x0

    goto :goto_70

    :cond_6c
    invoke-virtual/range {p17 .. p17}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1357
    .local v7, "numDecorations":I
    :goto_70
    if-nez p15, :cond_85

    if-nez p7, :cond_76

    if-eqz p8, :cond_7f

    :cond_76
    iget v8, v1, Landroid/text/TextPaint;->bgColor:I

    if-nez v8, :cond_85

    if-nez v7, :cond_85

    if-eqz p6, :cond_7f

    goto :goto_85

    .line 1376
    :cond_7f
    move-object/from16 v17, v4

    move v13, v7

    move/from16 v15, v16

    goto :goto_c9

    .line 1359
    :cond_85
    :goto_85
    if-eqz v14, :cond_92

    iget-object v8, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    if-nez v8, :cond_92

    .line 1360
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    iput-object v8, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    .line 1362
    :cond_92
    nop

    .line 1363
    if-nez v14, :cond_97

    const/4 v8, 0x0

    goto :goto_99

    :cond_97
    iget-object v8, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    :goto_99
    move-object v10, v8

    .line 1362
    move-object/from16 v8, p18

    move/from16 v9, p19

    move-object/from16 v11, p20

    move-object/from16 v17, v4

    move v15, v5

    move v3, v6

    move v13, v7

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p16

    .end local v4    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v7    # "numDecorations":I
    .local v13, "numDecorations":I
    .local v17, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v16

    .line 1365
    if-eqz v14, :cond_c7

    .line 1366
    if-eqz p6, :cond_bd

    .line 1367
    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    sub-float v2, v12, v16

    invoke-virtual {v1, v2, v15}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_c2

    .line 1369
    :cond_bd
    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v1, v12, v15}, Landroid/graphics/RectF;->offset(FF)V

    .line 1371
    :goto_c2
    iget-object v1, v0, Landroid/text/TextLine;->mTmpRectForPaintAPI:Landroid/graphics/RectF;

    invoke-virtual {v14, v1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 1376
    :cond_c7
    move/from16 v15, v16

    .end local v16    # "totalWidth":F
    .local v15, "totalWidth":F
    :goto_c9
    if-eqz p6, :cond_d2

    .line 1377
    sub-float v1, v12, v15

    .line 1378
    .local v1, "leftX":F
    move/from16 v2, p9

    move v8, v1

    move v9, v2

    .local v2, "rightX":F
    goto :goto_d8

    .line 1380
    .end local v1    # "leftX":F
    .end local v2    # "rightX":F
    :cond_d2
    move/from16 v1, p9

    .line 1381
    .restart local v1    # "leftX":F
    add-float v2, v12, v15

    move v8, v1

    move v9, v2

    .line 1384
    .end local v1    # "leftX":F
    .local v8, "leftX":F
    .local v9, "rightX":F
    :goto_d8
    if-eqz p8, :cond_eb

    .line 1385
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v1, p8

    invoke-direct/range {v0 .. v8}, Landroid/text/TextLine;->shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V

    .line 1388
    :cond_eb
    iget-boolean v1, v0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    if-eqz v1, :cond_103

    if-eqz v17, :cond_103

    .line 1389
    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, v17

    .end local v17    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .local v7, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/text/TextPaint;IIIIZLandroid/graphics/Paint$FontMetricsInt;)V

    .end local v7    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v17    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    goto :goto_105

    .line 1388
    :cond_103
    move-object/from16 v1, p1

    .line 1392
    :goto_105
    if-eqz p7, :cond_209

    .line 1393
    iget v0, v1, Landroid/text/TextPaint;->bgColor:I

    if-eqz v0, :cond_135

    .line 1394
    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v6

    .line 1395
    .local v6, "previousColor":I
    invoke-virtual {v1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v7

    .line 1397
    .local v7, "previousStyle":Landroid/graphics/Paint$Style;
    iget v0, v1, Landroid/text/TextPaint;->bgColor:I

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 1398
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1399
    move/from16 v10, p10

    int-to-float v2, v10

    move/from16 v11, p12

    int-to-float v4, v11

    move-object/from16 v0, p7

    move-object v5, v1

    move v1, v8

    move v3, v9

    .end local v8    # "leftX":F
    .end local v9    # "rightX":F
    .restart local v1    # "leftX":F
    .local v3, "rightX":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1401
    move/from16 v16, v3

    move-object v1, v5

    .end local v1    # "leftX":F
    .end local v3    # "rightX":F
    .restart local v8    # "leftX":F
    .local v16, "rightX":F
    invoke-virtual {v1, v7}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1402
    invoke-virtual {v1, v6}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_13b

    .line 1393
    .end local v6    # "previousColor":I
    .end local v7    # "previousStyle":Landroid/graphics/Paint$Style;
    .end local v16    # "rightX":F
    .restart local v9    # "rightX":F
    :cond_135
    move/from16 v10, p10

    move/from16 v11, p12

    move/from16 v16, v9

    .line 1405
    .end local v9    # "rightX":F
    .restart local v16    # "rightX":F
    :goto_13b
    iget v0, v1, Landroid/text/TextPaint;->baselineShift:I

    add-int v9, p11, v0

    move-object/from16 v0, p0

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v2, v1

    move-object/from16 v1, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    .line 1408
    move v2, v3

    move/from16 v18, v8

    .end local v8    # "leftX":F
    .local v18, "leftX":F
    if-eqz v13, :cond_206

    .line 1409
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_157
    if-ge v0, v13, :cond_201

    .line 1410
    move-object/from16 v1, p17

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/text/TextLine$DecorationInfo;

    .line 1412
    .local v3, "info":Landroid/text/TextLine$DecorationInfo;
    iget v4, v3, Landroid/text/TextLine$DecorationInfo;->start:I

    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1413
    .local v7, "decorationStart":I
    iget v4, v3, Landroid/text/TextLine$DecorationInfo;->end:I

    move/from16 v5, p16

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1414
    .local v19, "decorationEnd":I
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v1, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v20, v0

    move-object v12, v3

    move-object/from16 v0, p0

    move/from16 v3, p3

    .end local v0    # "i":I
    .end local v3    # "info":Landroid/text/TextLine$DecorationInfo;
    .local v12, "info":Landroid/text/TextLine$DecorationInfo;
    .local v20, "i":I
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v21

    .line 1416
    move/from16 v22, v7

    .end local v7    # "decorationStart":I
    .local v21, "decorationStartAdvance":F
    .local v22, "decorationStart":I
    move/from16 v2, p2

    move/from16 v7, v19

    .end local v19    # "decorationEnd":I
    .local v7, "decorationEnd":I
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->getRunAdvance(Landroid/text/TextPaint;IIIIZI[FILandroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v8

    .line 1419
    move v9, v7

    .end local v7    # "decorationEnd":I
    .local v8, "decorationEndAdvance":F
    .local v9, "decorationEnd":I
    if-eqz p6, :cond_19a

    .line 1420
    sub-float v0, v16, v8

    .line 1421
    .local v0, "decorationXLeft":F
    sub-float v1, v16, v21

    move v5, v0

    move v6, v1

    .local v1, "decorationXRight":F
    goto :goto_1a0

    .line 1423
    .end local v0    # "decorationXLeft":F
    .end local v1    # "decorationXRight":F
    :cond_19a
    add-float v0, v18, v21

    .line 1424
    .restart local v0    # "decorationXLeft":F
    add-float v1, v18, v8

    move v5, v0

    move v6, v1

    .line 1430
    .end local v0    # "decorationXLeft":F
    .local v5, "decorationXLeft":F
    .local v6, "decorationXRight":F
    :goto_1a0
    iget v0, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    if-eqz v0, :cond_1b7

    .line 1431
    iget v2, v12, Landroid/text/TextLine$DecorationInfo;->underlineColor:I

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    iget v4, v12, Landroid/text/TextLine$DecorationInfo;->underlineThickness:F

    move/from16 v10, p11

    int-to-float v7, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    goto :goto_1b9

    .line 1430
    :cond_1b7
    move/from16 v10, p11

    .line 1434
    :goto_1b9
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isUnderlineText:Z

    const/high16 v11, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1d8

    .line 1435
    nop

    .line 1436
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlineThickness()F

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1437
    .local v4, "thickness":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getUnderlinePosition()F

    move-result v3

    int-to-float v7, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 1441
    .end local v4    # "thickness":F
    :cond_1d8
    iget-boolean v0, v12, Landroid/text/TextLine$DecorationInfo;->isStrikeThruText:Z

    if-eqz v0, :cond_1f5

    .line 1442
    nop

    .line 1443
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruThickness()F

    move-result v0

    invoke-static {v0, v11}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1444
    .restart local v4    # "thickness":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStrikeThruPosition()F

    move-result v3

    int-to-float v7, v10

    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-static/range {v0 .. v7}, Landroid/text/TextLine;->drawStroke(Landroid/text/TextPaint;Landroid/graphics/Canvas;IFFFFF)V

    .line 1409
    .end local v4    # "thickness":F
    .end local v5    # "decorationXLeft":F
    .end local v6    # "decorationXRight":F
    .end local v8    # "decorationEndAdvance":F
    .end local v9    # "decorationEnd":I
    .end local v12    # "info":Landroid/text/TextLine$DecorationInfo;
    .end local v21    # "decorationStartAdvance":F
    .end local v22    # "decorationStart":I
    :cond_1f5
    add-int/lit8 v0, v20, 0x1

    move/from16 v2, p2

    move/from16 v12, p9

    move/from16 v10, p10

    move/from16 v11, p12

    .end local v20    # "i":I
    .local v0, "i":I
    goto/16 :goto_157

    :cond_201
    move/from16 v10, p11

    move/from16 v20, v0

    .end local v0    # "i":I
    .restart local v20    # "i":I
    goto :goto_20f

    .line 1408
    .end local v20    # "i":I
    :cond_206
    move/from16 v10, p11

    goto :goto_20f

    .line 1392
    .end local v16    # "rightX":F
    .end local v18    # "leftX":F
    .local v8, "leftX":F
    .local v9, "rightX":F
    :cond_209
    move/from16 v10, p11

    move/from16 v18, v8

    move/from16 v16, v9

    .line 1452
    .end local v8    # "leftX":F
    .end local v9    # "rightX":F
    .restart local v16    # "rightX":F
    .restart local v18    # "leftX":F
    :goto_20f
    if-eqz p6, :cond_213

    neg-float v0, v15

    goto :goto_214

    :cond_213
    move v0, v15

    :goto_214
    return v0
.end method

.method public static greylist-max-o isLineEndSpace(C)Z
    .registers 2
    .param p0, "ch"    # C

    .line 1875
    const/16 v0, 0x20

    if-eq p0, v0, :cond_23

    const/16 v0, 0x9

    if-eq p0, v0, :cond_23

    const/16 v0, 0x1680

    if-eq p0, v0, :cond_23

    const/16 v0, 0x2000

    if-gt v0, p0, :cond_18

    const/16 v0, 0x200a

    if-gt p0, v0, :cond_18

    const/16 v0, 0x2007

    if-ne p0, v0, :cond_23

    :cond_18
    const/16 v0, 0x205f

    if-eq p0, v0, :cond_23

    const/16 v0, 0x3000

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    :goto_24
    return v0
.end method

.method private greylist-max-o isStretchableWhitespace(I)Z
    .registers 3
    .param p1, "ch"    # I

    .line 1858
    const/16 v0, 0x20

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private blacklist measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F
    .registers 31
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p6, "drawBounds"    # Landroid/graphics/RectF;
    .param p7, "advances"    # [F
    .param p8, "advancesIndex"    # I
    .param p9, "x"    # F
    .param p10, "lineInfo"    # Landroid/text/TextLine$LineInfo;
    .param p11, "runFlag"    # I

    .line 877
    if-eqz p6, :cond_46

    move-object/from16 v1, p0

    iget v0, v1, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_a

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    :goto_b
    move/from16 v5, p4

    if-ne v2, v5, :cond_46

    .line 878
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p11

    move-object v0, v1

    move/from16 v1, p1

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v5

    neg-float v0, v5

    .line 880
    .local v0, "w":F
    add-float v8, p9, v0

    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v6

    return v6

    .line 883
    .end local v0    # "w":F
    :cond_46
    const/4 v11, 0x0

    const/4 v14, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v15, p7

    move/from16 v16, p8

    move/from16 v8, p9

    move-object/from16 v17, p10

    move/from16 v18, p11

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method public static greylist obtain()Landroid/text/TextLine;
    .registers 5

    .line 151
    sget-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v0

    .line 152
    :try_start_3
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v1, v1

    .local v1, "i":I
    :cond_6
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_1b

    .line 153
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    if-eqz v2, :cond_6

    .line 154
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v2, v2, v1

    .line 155
    .local v2, "tl":Landroid/text/TextLine;
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    const/4 v4, 0x0

    aput-object v4, v3, v1

    .line 156
    monitor-exit v0

    return-object v2

    .line 159
    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    :cond_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_22

    .line 160
    new-instance v0, Landroid/text/TextLine;

    invoke-direct {v0}, Landroid/text/TextLine;-><init>()V

    .line 164
    .local v0, "tl":Landroid/text/TextLine;
    return-object v0

    .line 159
    .end local v0    # "tl":Landroid/text/TextLine;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public static greylist-max-o recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .registers 5
    .param p0, "tl"    # Landroid/text/TextLine;

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 177
    iput-object v0, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 178
    iput-object v0, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 179
    iput-object v0, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 180
    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 181
    iput-object v0, p0, Landroid/text/TextLine;->mChars:[C

    .line 182
    iput-object v0, p0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    .line 185
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 186
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 187
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    .line 189
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    monitor-enter v1

    .line 190
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_25
    :try_start_25
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    array-length v3, v3

    if-ge v2, v3, :cond_38

    .line 191
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aget-object v3, v3, v2

    if-nez v3, :cond_35

    .line 192
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    aput-object p0, v3, v2

    .line 193
    goto :goto_38

    .line 190
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    .line 196
    .end local v2    # "i":I
    :cond_38
    :goto_38
    monitor-exit v1

    .line 197
    return-object v0

    .line 196
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_25 .. :try_end_3c} :catchall_3a

    throw v0
.end method

.method public static blacklist resolveRunFlagForSubSequence(IZIIII)I
    .registers 8
    .param p0, "runFlag"    # I
    .param p1, "isRtlRun"    # Z
    .param p2, "runStart"    # I
    .param p3, "runEnd"    # I
    .param p4, "spanStart"    # I
    .param p5, "spanEnd"    # I

    .line 389
    if-nez p0, :cond_4

    .line 392
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_4
    move v0, p0

    .line 395
    .local v0, "localRunFlag":I
    and-int/lit16 v1, p0, 0x2000

    if-eqz v1, :cond_14

    .line 396
    if-eqz p1, :cond_10

    .line 397
    if-eq p5, p3, :cond_14

    .line 399
    and-int/lit16 v0, v0, -0x2001

    goto :goto_14

    .line 402
    :cond_10
    if-eq p4, p2, :cond_14

    .line 404
    and-int/lit16 v0, v0, -0x2001

    .line 408
    :cond_14
    :goto_14
    and-int/lit16 v1, p0, 0x4000

    if-eqz v1, :cond_23

    .line 409
    if-eqz p1, :cond_1f

    .line 410
    if-eq p4, p2, :cond_23

    .line 412
    and-int/lit16 v0, v0, -0x4001

    goto :goto_23

    .line 415
    :cond_1f
    if-eq p5, p3, :cond_23

    .line 417
    and-int/lit16 v0, v0, -0x4001

    .line 421
    :cond_23
    :goto_23
    return v0
.end method

.method private blacklist shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F
    .registers 27
    .param p1, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "needWidth"    # Z
    .param p7, "runFlag"    # I

    .line 903
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    goto :goto_9

    :cond_8
    const/4 v2, 0x0

    :goto_9
    move/from16 v4, p4

    if-ne v2, v4, :cond_3b

    .line 904
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move/from16 v3, p3

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    neg-float v0, v3

    .line 906
    .local v0, "w":F
    add-float v7, p5, v0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move/from16 v3, p3

    move-object/from16 v6, p1

    move/from16 v4, p4

    move/from16 v17, p7

    move/from16 v18, v0

    move-object/from16 v0, p0

    .end local v0    # "w":F
    .local v18, "w":F
    invoke-direct/range {v0 .. v17}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    .line 908
    return v18

    .line 911
    .end local v18    # "w":F
    :cond_3b
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    move/from16 v4, p3

    move-object/from16 v1, p0

    move-object/from16 v7, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v5, p4

    move/from16 v8, p5

    move/from16 v14, p6

    move/from16 v18, p7

    invoke-direct/range {v1 .. v18}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;Landroid/text/TextShaper$GlyphsConsumer;FIIILandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Z[FILandroid/text/TextLine$LineInfo;I)F

    move-result v0

    return v0
.end method

.method private blacklist shapeTextRun(Landroid/text/TextShaper$GlyphsConsumer;Landroid/text/TextPaint;IIIIZF)V
    .registers 18
    .param p1, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F

    .line 1817
    sub-int v2, p4, p3

    .line 1818
    .local v2, "count":I
    sub-int v4, p6, p5

    .line 1820
    .local v4, "contextCount":I
    iget-boolean v0, p0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v0, :cond_17

    .line 1821
    iget-object v0, p0, Landroid/text/TextLine;->mChars:[C

    const/4 v6, 0x0

    move-object v8, p2

    move v1, p3

    move v3, p5

    move/from16 v7, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroid/graphics/text/TextRunShaper;->shapeTextRun([CIIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object v0

    .local v0, "glyphs":Landroid/graphics/text/PositionedGlyphs;
    goto :goto_29

    .line 1830
    .end local v0    # "glyphs":Landroid/graphics/text/PositionedGlyphs;
    :cond_17
    iget-object v0, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v1, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v1, p3

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, p5

    const/4 v6, 0x0

    move-object v8, p2

    move/from16 v7, p7

    move/from16 v5, p8

    invoke-static/range {v0 .. v8}, Landroid/graphics/text/TextRunShaper;->shapeTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)Landroid/graphics/text/PositionedGlyphs;

    move-result-object v0

    .line 1839
    .restart local v0    # "glyphs":Landroid/graphics/text/PositionedGlyphs;
    :goto_29
    invoke-interface {p1, p3, v2, v0, p2}, Landroid/text/TextShaper$GlyphsConsumer;->accept(IILandroid/graphics/text/PositionedGlyphs;Landroid/text/TextPaint;)V

    .line 1840
    return-void
.end method

.method static greylist-max-o updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .registers 7
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    .line 1226
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1227
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1228
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1229
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1230
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    .line 1231
    return-void
.end method


# virtual methods
.method greylist-max-o draw(Landroid/graphics/Canvas;FIII)V
    .registers 22
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    .line 434
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 435
    .local v1, "h":F
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v11

    .line 436
    .local v11, "runCount":I
    const/4 v2, 0x0

    move v12, v2

    .local v12, "runIndex":I
    :goto_b
    if-ge v12, v11, :cond_7c

    .line 437
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v12}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v13

    .line 438
    .local v13, "runStart":I
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-le v13, v2, :cond_19

    goto/16 :goto_7c

    .line 439
    :cond_19
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v12}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v2

    add-int/2addr v2, v13

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 440
    .local v14, "runLimit":I
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v12}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 442
    .local v4, "runIsRtl":Z
    iget v2, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v12, v11, v2}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v10

    .line 444
    .local v10, "runFlag":I
    move v2, v13

    .line 445
    .local v2, "segStart":I
    iget-boolean v3, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_39

    move v3, v13

    goto :goto_3a

    :cond_39
    move v3, v14

    :goto_3a
    move v15, v1

    .end local v1    # "h":F
    .local v3, "j":I
    .local v15, "h":F
    :goto_3b
    if-gt v3, v14, :cond_78

    .line 446
    if-eq v3, v14, :cond_47

    invoke-direct {v0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_75

    .line 447
    :cond_47
    add-float v5, p2, v15

    add-int/lit8 v1, v11, -0x1

    if-ne v12, v1, :cond_54

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-eq v3, v1, :cond_52

    goto :goto_54

    :cond_52
    const/4 v1, 0x0

    goto :goto_55

    :cond_54
    :goto_54
    const/4 v1, 0x1

    :goto_55
    move v9, v1

    move-object/from16 v1, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    invoke-direct/range {v0 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZI)F

    move-result v5

    add-float/2addr v15, v5

    .line 450
    if-eq v3, v14, :cond_72

    .line 451
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v5, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    mul-float/2addr v5, v15

    invoke-virtual {v0, v5}, Landroid/text/TextLine;->nextTab(F)F

    move-result v5

    mul-float/2addr v1, v5

    move v15, v1

    .line 453
    :cond_72
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    .line 445
    :cond_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 436
    .end local v2    # "segStart":I
    .end local v3    # "j":I
    .end local v4    # "runIsRtl":Z
    .end local v10    # "runFlag":I
    .end local v13    # "runStart":I
    .end local v14    # "runLimit":I
    :cond_78
    add-int/lit8 v12, v12, 0x1

    move v1, v15

    goto :goto_b

    .line 457
    .end local v12    # "runIndex":I
    .end local v15    # "h":F
    .restart local v1    # "h":F
    :cond_7c
    :goto_7c
    return-void
.end method

.method public blacklist getAddedLetterSpacingInPx()F
    .registers 2

    .line 115
    iget v0, p0, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    return v0
.end method

.method public blacklist getAddedWordSpacingInPx()F
    .registers 2

    .line 110
    iget v0, p0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    return v0
.end method

.method greylist-max-o getOffsetToLeftRightOf(IZ)I
    .registers 25
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    .line 946
    move-object/from16 v0, p0

    move/from16 v5, p1

    move/from16 v7, p2

    const/4 v8, 0x0

    .line 947
    .local v8, "lineStart":I
    iget v9, v0, Landroid/text/TextLine;->mLen:I

    .line 948
    .local v9, "lineEnd":I
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    const/4 v12, -0x1

    if-ne v1, v12, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    move v13, v1

    .line 949
    .local v13, "paraIsRtl":Z
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    iget-object v14, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 951
    .local v14, "runs":[I
    const/4 v1, 0x0

    .local v1, "runLevel":I
    move v2, v8

    .local v2, "runStart":I
    move v3, v9

    .local v3, "runLimit":I
    const/4 v15, -0x1

    .line 952
    .local v15, "newCaret":I
    const/4 v4, 0x0

    .line 954
    .local v4, "trailing":Z
    const v16, 0x3ffffff

    if-ne v5, v8, :cond_2c

    .line 955
    const/4 v6, -0x2

    move v10, v1

    move v11, v2

    move v12, v3

    move/from16 v19, v6

    move v0, v15

    const/16 v18, 0x1

    move v15, v4

    .local v6, "runIndex":I
    goto/16 :goto_e3

    .line 956
    .end local v6    # "runIndex":I
    :cond_2c
    if-ne v5, v9, :cond_3a

    .line 957
    array-length v6, v14

    move v10, v1

    move v11, v2

    move v12, v3

    move/from16 v19, v6

    move v0, v15

    const/16 v18, 0x1

    move v15, v4

    .restart local v6    # "runIndex":I
    goto/16 :goto_e3

    .line 961
    .end local v6    # "runIndex":I
    :cond_3a
    const/4 v6, 0x0

    .restart local v6    # "runIndex":I
    :goto_3b
    array-length v10, v14

    if-ge v6, v10, :cond_a9

    .line 962
    aget v10, v14, v6

    add-int v2, v8, v10

    .line 963
    if-lt v5, v2, :cond_a1

    .line 964
    add-int/lit8 v10, v6, 0x1

    aget v10, v14, v10

    and-int v10, v10, v16

    add-int/2addr v10, v2

    .line 965
    .end local v3    # "runLimit":I
    .local v10, "runLimit":I
    if-le v10, v9, :cond_4f

    .line 966
    move v3, v9

    .end local v10    # "runLimit":I
    .restart local v3    # "runLimit":I
    goto :goto_50

    .line 965
    .end local v3    # "runLimit":I
    .restart local v10    # "runLimit":I
    :cond_4f
    move v3, v10

    .line 968
    .end local v10    # "runLimit":I
    .restart local v3    # "runLimit":I
    :goto_50
    if-ge v5, v3, :cond_9e

    .line 969
    add-int/lit8 v10, v6, 0x1

    aget v10, v14, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v1, v10, 0x3f

    .line 971
    if-ne v5, v2, :cond_98

    .line 976
    add-int/lit8 v10, v5, -0x1

    .line 977
    .local v10, "pos":I
    const/16 v17, 0x0

    move/from16 v11, v17

    const/16 v18, 0x1

    .local v11, "prevRunIndex":I
    :goto_64
    array-length v12, v14

    if-ge v11, v12, :cond_94

    .line 978
    aget v12, v14, v11

    add-int/2addr v12, v8

    .line 979
    .local v12, "prevRunStart":I
    if-lt v10, v12, :cond_8e

    .line 980
    add-int/lit8 v19, v11, 0x1

    aget v19, v14, v19

    and-int v19, v19, v16

    add-int v0, v12, v19

    .line 982
    .local v0, "prevRunLimit":I
    if-le v0, v9, :cond_77

    .line 983
    move v0, v9

    .line 985
    :cond_77
    if-ge v10, v0, :cond_8c

    .line 986
    add-int/lit8 v19, v11, 0x1

    aget v19, v14, v19

    ushr-int/lit8 v19, v19, 0x1a

    move/from16 v20, v0

    .end local v0    # "prevRunLimit":I
    .local v20, "prevRunLimit":I
    and-int/lit8 v0, v19, 0x3f

    .line 988
    .local v0, "prevRunLevel":I
    if-ge v0, v1, :cond_8e

    .line 990
    move v6, v11

    .line 991
    move v1, v0

    .line 992
    move v2, v12

    .line 993
    move/from16 v3, v20

    .line 994
    const/4 v4, 0x1

    .line 995
    goto :goto_94

    .line 985
    .end local v20    # "prevRunLimit":I
    .local v0, "prevRunLimit":I
    :cond_8c
    move/from16 v20, v0

    .line 977
    .end local v0    # "prevRunLimit":I
    :cond_8e
    add-int/lit8 v11, v11, 0x2

    const/4 v12, -0x1

    move-object/from16 v0, p0

    goto :goto_64

    .line 1000
    .end local v10    # "pos":I
    .end local v11    # "prevRunIndex":I
    .end local v12    # "prevRunStart":I
    :cond_94
    :goto_94
    move v10, v1

    move v11, v4

    move v1, v6

    goto :goto_ae

    .line 971
    :cond_98
    const/16 v18, 0x1

    move v10, v1

    move v11, v4

    move v1, v6

    goto :goto_ae

    .line 968
    :cond_9e
    const/16 v18, 0x1

    goto :goto_a3

    .line 963
    :cond_a1
    const/16 v18, 0x1

    .line 961
    :goto_a3
    add-int/lit8 v6, v6, 0x2

    const/4 v12, -0x1

    move-object/from16 v0, p0

    goto :goto_3b

    :cond_a9
    const/16 v18, 0x1

    move v10, v1

    move v11, v4

    move v1, v6

    .line 1011
    .end local v4    # "trailing":Z
    .end local v6    # "runIndex":I
    .local v1, "runIndex":I
    .local v10, "runLevel":I
    .local v11, "trailing":Z
    :goto_ae
    array-length v0, v14

    if-eq v1, v0, :cond_dd

    .line 1012
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_b8

    move/from16 v4, v18

    goto :goto_b9

    :cond_b8
    const/4 v4, 0x0

    .line 1013
    .local v4, "runIsRtl":Z
    :goto_b9
    if-ne v7, v4, :cond_be

    move/from16 v6, v18

    goto :goto_bf

    :cond_be
    const/4 v6, 0x0

    .line 1014
    .local v6, "advance":Z
    :goto_bf
    if-eqz v6, :cond_c3

    move v0, v3

    goto :goto_c4

    :cond_c3
    move v0, v2

    :goto_c4
    if-ne v5, v0, :cond_c8

    if-eq v6, v11, :cond_dd

    .line 1016
    :cond_c8
    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v15

    .line 1020
    if-eqz v6, :cond_d2

    move v0, v3

    goto :goto_d3

    :cond_d2
    move v0, v2

    :goto_d3
    if-eq v15, v0, :cond_d6

    .line 1021
    return v15

    .line 1020
    :cond_d6
    move/from16 v19, v1

    move v12, v3

    move v0, v15

    move v15, v11

    move v11, v2

    goto :goto_e3

    .line 1033
    .end local v4    # "runIsRtl":Z
    .end local v6    # "advance":Z
    :cond_dd
    move/from16 v19, v1

    move v12, v3

    move v0, v15

    move v15, v11

    move v11, v2

    .end local v1    # "runIndex":I
    .end local v2    # "runStart":I
    .end local v3    # "runLimit":I
    .local v0, "newCaret":I
    .local v11, "runStart":I
    .local v12, "runLimit":I
    .local v15, "trailing":Z
    .local v19, "runIndex":I
    :goto_e3
    if-ne v7, v13, :cond_e8

    move/from16 v1, v18

    goto :goto_e9

    :cond_e8
    const/4 v1, 0x0

    .line 1034
    .local v1, "advance":Z
    :goto_e9
    if-eqz v1, :cond_ed

    const/4 v2, 0x2

    goto :goto_ee

    :cond_ed
    const/4 v2, -0x2

    :goto_ee
    add-int v2, v19, v2

    .line 1035
    .local v2, "otherRunIndex":I
    if-ltz v2, :cond_161

    array-length v3, v14

    if-ge v2, v3, :cond_161

    .line 1036
    aget v3, v14, v2

    add-int/2addr v3, v8

    .line 1037
    .local v3, "otherRunStart":I
    add-int/lit8 v4, v2, 0x1

    aget v4, v14, v4

    and-int v4, v4, v16

    add-int/2addr v4, v3

    .line 1039
    .local v4, "otherRunLimit":I
    if-le v4, v9, :cond_102

    .line 1040
    move v4, v9

    .line 1042
    :cond_102
    add-int/lit8 v5, v2, 0x1

    aget v5, v14, v5

    ushr-int/lit8 v5, v5, 0x1a

    and-int/lit8 v5, v5, 0x3f

    .line 1044
    .local v5, "otherRunLevel":I
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_111

    move/from16 v6, v18

    goto :goto_112

    :cond_111
    const/4 v6, 0x0

    .line 1046
    .local v6, "otherRunIsRtl":Z
    :goto_112
    if-ne v7, v6, :cond_117

    move/from16 v20, v18

    goto :goto_119

    :cond_117
    const/16 v20, 0x0

    .line 1047
    .end local v1    # "advance":Z
    .local v20, "advance":Z
    :goto_119
    const/4 v1, -0x1

    if-ne v0, v1, :cond_14a

    .line 1048
    nop

    .line 1050
    move v1, v5

    if-eqz v20, :cond_122

    move v5, v3

    goto :goto_123

    :cond_122
    move v5, v4

    .line 1048
    .end local v5    # "otherRunLevel":I
    .local v1, "otherRunLevel":I
    :goto_123
    move/from16 v7, v20

    move/from16 v20, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v6

    move v6, v7

    move v7, v0

    move-object/from16 v0, p0

    .end local v0    # "newCaret":I
    .local v1, "otherRunIndex":I
    .local v2, "otherRunStart":I
    .local v3, "otherRunLimit":I
    .local v4, "otherRunIsRtl":Z
    .local v6, "advance":Z
    .local v7, "newCaret":I
    .local v20, "otherRunLevel":I
    invoke-direct/range {v0 .. v6}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    move-result v5

    .line 1051
    move/from16 v21, v4

    move v4, v1

    move v1, v6

    move/from16 v6, v21

    .end local v7    # "newCaret":I
    .local v1, "advance":Z
    .local v4, "otherRunIndex":I
    .local v5, "newCaret":I
    .local v6, "otherRunIsRtl":Z
    if-eqz v1, :cond_13d

    move v7, v3

    goto :goto_13e

    :cond_13d
    move v7, v2

    :goto_13e
    if-ne v5, v7, :cond_148

    .line 1054
    move/from16 v19, v4

    .line 1055
    move/from16 v10, v20

    .line 1056
    move/from16 v7, p2

    move v0, v5

    goto :goto_e3

    .line 1051
    :cond_148
    move v2, v5

    goto :goto_178

    .line 1062
    .end local v1    # "advance":Z
    .restart local v0    # "newCaret":I
    .local v2, "otherRunIndex":I
    .local v3, "otherRunStart":I
    .local v4, "otherRunLimit":I
    .local v5, "otherRunLevel":I
    .local v20, "advance":Z
    :cond_14a
    move v1, v4

    move v4, v2

    move v2, v3

    move v3, v1

    move v7, v0

    move/from16 v1, v20

    move-object/from16 v0, p0

    move/from16 v20, v5

    .end local v0    # "newCaret":I
    .end local v20    # "advance":Z
    .restart local v1    # "advance":Z
    .local v2, "otherRunStart":I
    .local v3, "otherRunLimit":I
    .local v4, "otherRunIndex":I
    .restart local v7    # "newCaret":I
    if-ge v5, v10, :cond_177

    .line 1064
    if-eqz v1, :cond_15c

    move/from16 v16, v2

    goto :goto_15e

    :cond_15c
    move/from16 v16, v3

    :goto_15e
    move/from16 v2, v16

    .end local v7    # "newCaret":I
    .local v16, "newCaret":I
    goto :goto_178

    .line 1035
    .end local v3    # "otherRunLimit":I
    .end local v4    # "otherRunIndex":I
    .end local v5    # "otherRunLevel":I
    .end local v6    # "otherRunIsRtl":Z
    .end local v16    # "newCaret":I
    .restart local v0    # "newCaret":I
    .local v2, "otherRunIndex":I
    :cond_161
    move v7, v0

    move v4, v2

    move-object/from16 v0, p0

    .line 1069
    .end local v0    # "newCaret":I
    .end local v2    # "otherRunIndex":I
    .restart local v4    # "otherRunIndex":I
    .restart local v7    # "newCaret":I
    const/4 v2, -0x1

    if-ne v7, v2, :cond_16f

    .line 1073
    if-eqz v1, :cond_16e

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    add-int/lit8 v2, v2, 0x1

    .line 1074
    .end local v7    # "newCaret":I
    .local v2, "newCaret":I
    :cond_16e
    goto :goto_178

    .line 1085
    .end local v2    # "newCaret":I
    .restart local v7    # "newCaret":I
    :cond_16f
    if-gt v7, v9, :cond_177

    .line 1086
    if-eqz v1, :cond_175

    move v2, v9

    goto :goto_176

    :cond_175
    move v2, v8

    .end local v7    # "newCaret":I
    .restart local v2    # "newCaret":I
    :goto_176
    goto :goto_178

    .line 1091
    .end local v1    # "advance":Z
    .end local v2    # "newCaret":I
    .end local v4    # "otherRunIndex":I
    .restart local v7    # "newCaret":I
    :cond_177
    move v2, v7

    .end local v7    # "newCaret":I
    .restart local v2    # "newCaret":I
    :goto_178
    return v2
.end method

.method public blacklist isJustifying()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Landroid/text/TextLine;->mIsJustifying:Z

    return v0
.end method

.method public blacklist justify(IF)V
    .registers 15
    .param p1, "justificationMode"    # I
    .param p2, "justifyWidth"    # F

    .line 295
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    move v2, v0

    .line 296
    .local v2, "end":I
    :goto_3
    const/4 v0, 0x1

    if-lez v2, :cond_19

    iget-object v1, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    iget v3, p0, Landroid/text/TextLine;->mStart:I

    add-int/2addr v3, v2

    sub-int/2addr v3, v0

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 297
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 299
    :cond_19
    const/4 v7, 0x0

    if-ne p1, v0, :cond_3a

    .line 300
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 301
    .local v3, "width":F
    const/4 v4, 0x0

    invoke-direct {p0, v4, v2}, Landroid/text/TextLine;->countStretchableSpaces(II)I

    move-result v4

    .line 302
    .local v4, "spaces":I
    if-nez v4, :cond_31

    .line 305
    return-void

    .line 307
    :cond_31
    sub-float v5, p2, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    iput v5, v1, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    .line 308
    iput v7, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    .line 309
    .end local v3    # "width":F
    .end local v4    # "spaces":I
    goto :goto_a3

    .line 310
    :cond_3a
    move-object v1, p0

    new-instance v6, Landroid/text/TextLine$LineInfo;

    invoke-direct {v6}, Landroid/text/TextLine$LineInfo;-><init>()V

    .line 311
    .local v6, "lineInfo":Landroid/text/TextLine$LineInfo;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 313
    .local v8, "width":F
    invoke-virtual {v6}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v9

    .line 314
    .local v9, "lettersCount":I
    const/4 v3, 0x2

    if-ge v9, v3, :cond_53

    .line 315
    return-void

    .line 317
    :cond_53
    sub-float v3, p2, v8

    add-int/lit8 v4, v9, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    .line 318
    iget v3, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    float-to-double v3, v3

    const-wide v10, 0x3f9eb851eb851eb8L    # 0.03

    cmpl-double v3, v3, v10

    if-lez v3, :cond_a1

    .line 321
    iget-object v3, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/text/TextPaint;->getFontFeatureSettings()Ljava/lang/String;

    move-result-object v10

    .line 322
    .local v10, "oldFontFeatures":Ljava/lang/String;
    iget-object v3, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \"liga\" off, \"cliga\" off"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 323
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 324
    invoke-virtual {v6}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v9

    .line 325
    sub-float v3, p2, v8

    add-int/lit8 v4, v9, -0x1

    int-to-float v4, v4

    div-float/2addr v3, v4

    iput v3, v1, Landroid/text/TextLine;->mAddedLetterSpacingInPx:F

    .line 326
    iget-object v3, v1, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v3, v10}, Landroid/text/TextPaint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 328
    .end local v10    # "oldFontFeatures":Ljava/lang/String;
    :cond_a1
    iput v7, v1, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    .line 330
    .end local v6    # "lineInfo":Landroid/text/TextLine$LineInfo;
    .end local v8    # "width":F
    .end local v9    # "lettersCount":I
    :goto_a3
    iput-boolean v0, v1, Landroid/text/TextLine;->mIsJustifying:Z

    .line 331
    return-void
.end method

.method public blacklist measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F
    .registers 26
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p4, "drawBounds"    # Landroid/graphics/RectF;
    .param p5, "lineInfo"    # Landroid/text/TextLine$LineInfo;

    .line 573
    move-object/from16 v0, p0

    move/from16 v2, p1

    move-object/from16 v10, p5

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    if-gt v2, v1, :cond_100

    .line 577
    const/4 v12, 0x0

    if-eqz v10, :cond_10

    .line 578
    invoke-virtual {v10, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 580
    :cond_10
    if-eqz p2, :cond_15

    add-int/lit8 v1, v2, -0x1

    goto :goto_16

    :cond_15
    move v1, v2

    :goto_16
    move v13, v1

    .line 581
    .local v13, "target":I
    if-gez v13, :cond_1b

    .line 582
    const/4 v1, 0x0

    return v1

    .line 585
    :cond_1b
    const/4 v1, 0x0

    .line 586
    .local v1, "h":F
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v14

    .line 587
    .local v14, "runCount":I
    const/4 v3, 0x0

    move v15, v3

    .local v15, "runIndex":I
    :goto_24
    if-ge v15, v14, :cond_ff

    .line 588
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v15}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v3

    .line 589
    .local v3, "runStart":I
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    if-le v3, v4, :cond_32

    goto/16 :goto_ff

    .line 590
    :cond_32
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v15}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 591
    .local v4, "runLimit":I
    iget-object v5, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v5, v15}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v5

    .line 592
    .local v5, "runIsRtl":Z
    iget v6, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v15, v14, v6}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    .line 594
    .local v11, "runFlag":I
    move v6, v3

    .line 595
    .local v6, "segStart":I
    iget-boolean v7, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v7, :cond_52

    move v7, v3

    goto :goto_53

    :cond_52
    move v7, v4

    :goto_53
    move v9, v1

    move v1, v6

    .end local v6    # "segStart":I
    .local v1, "segStart":I
    .local v7, "j":I
    .local v9, "h":F
    :goto_55
    if-gt v7, v4, :cond_f2

    .line 596
    if-eq v7, v4, :cond_69

    invoke-direct {v0, v7}, Landroid/text/TextLine;->charAt(I)C

    move-result v6

    const/16 v8, 0x9

    if-ne v6, v8, :cond_62

    goto :goto_69

    :cond_62
    move/from16 v18, v3

    move v12, v4

    move v4, v5

    move v3, v7

    goto/16 :goto_e7

    .line 597
    :cond_69
    :goto_69
    if-lt v13, v1, :cond_6f

    if-ge v13, v7, :cond_6f

    const/4 v8, 0x1

    goto :goto_70

    :cond_6f
    move v8, v12

    :goto_70
    move/from16 v16, v8

    .line 598
    .local v16, "targetIsInThisSegment":Z
    iget v8, v0, Landroid/text/TextLine;->mDir:I

    const/4 v6, -0x1

    if-ne v8, v6, :cond_79

    const/4 v6, 0x1

    goto :goto_7a

    :cond_79
    move v6, v12

    :goto_7a
    if-ne v6, v5, :cond_7e

    const/4 v6, 0x1

    goto :goto_7f

    :cond_7e
    move v6, v12

    :goto_7f
    move/from16 v17, v6

    .line 600
    .local v17, "sameDirection":Z
    if-eqz v16, :cond_98

    if-eqz v17, :cond_98

    .line 601
    move v6, v3

    move v3, v7

    .end local v7    # "j":I
    .local v3, "j":I
    .local v6, "runStart":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v12, v4

    move v4, v5

    move/from16 v18, v6

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .end local v5    # "runIsRtl":Z
    .end local v6    # "runStart":I
    .local v4, "runIsRtl":Z
    .local v12, "runLimit":I
    .local v18, "runStart":I
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v7

    add-float v0, v9, v7

    return v0

    .line 600
    .end local v12    # "runLimit":I
    .end local v18    # "runStart":I
    .local v3, "runStart":I
    .local v4, "runLimit":I
    .restart local v5    # "runIsRtl":Z
    .restart local v7    # "j":I
    :cond_98
    move/from16 v18, v3

    move v0, v4

    move v4, v5

    move v3, v7

    .line 605
    .end local v5    # "runIsRtl":Z
    .end local v7    # "j":I
    .local v0, "runLimit":I
    .local v3, "j":I
    .local v4, "runIsRtl":Z
    .restart local v18    # "runStart":I
    const/4 v7, 0x0

    const/4 v8, 0x0

    move v2, v3

    .end local v3    # "j":I
    .local v2, "j":I
    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v10, p5

    move v12, v0

    move-object/from16 v0, p0

    .end local v0    # "runLimit":I
    .restart local v12    # "runLimit":I
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    .line 607
    .local v3, "segmentWidth":F
    if-eqz v17, :cond_b1

    move v0, v3

    goto :goto_b2

    :cond_b1
    neg-float v0, v3

    :goto_b2
    add-float/2addr v9, v0

    .line 609
    if-eqz v16, :cond_c8

    .line 610
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, p1

    .end local v2    # "j":I
    .local v3, "j":I
    .local v19, "segmentWidth":F
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v5

    add-float/2addr v5, v9

    return v5

    .line 614
    .end local v19    # "segmentWidth":F
    .restart local v2    # "j":I
    .local v3, "segmentWidth":F
    :cond_c8
    move-object/from16 v0, p0

    move/from16 v19, v3

    move v3, v2

    move/from16 v2, p1

    .end local v2    # "j":I
    .local v3, "j":I
    .restart local v19    # "segmentWidth":F
    if-eq v3, v12, :cond_e4

    .line 615
    if-ne v2, v3, :cond_d4

    .line 616
    return v9

    .line 618
    :cond_d4
    iget v5, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    iget v6, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v6, v6

    mul-float/2addr v6, v9

    invoke-virtual {v0, v6}, Landroid/text/TextLine;->nextTab(F)F

    move-result v6

    mul-float v9, v5, v6

    .line 619
    if-ne v13, v3, :cond_e4

    .line 620
    return v9

    .line 624
    :cond_e4
    add-int/lit8 v7, v3, 0x1

    move v1, v7

    .line 595
    .end local v16    # "targetIsInThisSegment":Z
    .end local v17    # "sameDirection":Z
    .end local v19    # "segmentWidth":F
    :goto_e7
    add-int/lit8 v7, v3, 0x1

    move-object/from16 v10, p5

    move v5, v4

    move v4, v12

    move/from16 v3, v18

    const/4 v12, 0x0

    .end local v3    # "j":I
    .restart local v7    # "j":I
    goto/16 :goto_55

    .end local v12    # "runLimit":I
    .end local v18    # "runStart":I
    .local v3, "runStart":I
    .local v4, "runLimit":I
    .restart local v5    # "runIsRtl":Z
    :cond_f2
    move/from16 v18, v3

    move v12, v4

    move v4, v5

    move v3, v7

    .line 587
    .end local v1    # "segStart":I
    .end local v3    # "runStart":I
    .end local v4    # "runLimit":I
    .end local v5    # "runIsRtl":Z
    .end local v7    # "j":I
    .end local v11    # "runFlag":I
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v10, p5

    move v1, v9

    const/4 v12, 0x0

    goto/16 :goto_24

    .line 629
    .end local v9    # "h":F
    .end local v15    # "runIndex":I
    .local v1, "h":F
    :cond_ff
    :goto_ff
    return v1

    .line 574
    .end local v1    # "h":F
    .end local v13    # "target":I
    .end local v14    # "runCount":I
    :cond_100
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "offset("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") should be less than line limit("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist measureAllBounds([F[F)V
    .registers 23
    .param p1, "bounds"    # [F
    .param p2, "advances"    # [F

    .line 675
    move-object/from16 v0, p0

    move-object/from16 v12, p1

    if-eqz v12, :cond_161

    .line 678
    array-length v1, v12

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v2, v2, 0x2

    const-string v3, " had: "

    if-lt v1, v2, :cond_13b

    .line 682
    if-nez p2, :cond_17

    .line 683
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    new-array v1, v1, [F

    move-object v7, v1

    .end local p2    # "advances":[F
    .local v1, "advances":[F
    goto :goto_19

    .line 682
    .end local v1    # "advances":[F
    .restart local p2    # "advances":[F
    :cond_17
    move-object/from16 v7, p2

    .line 685
    .end local p2    # "advances":[F
    .local v7, "advances":[F
    :goto_19
    array-length v1, v7

    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-lt v1, v2, :cond_117

    .line 689
    const/4 v1, 0x0

    .line 690
    .local v1, "h":F
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v13

    .line 691
    .local v13, "runCount":I
    const/4 v2, 0x0

    move v14, v2

    .local v14, "runIndex":I
    :goto_27
    if-ge v14, v13, :cond_114

    .line 692
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v14}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v15

    .line 693
    .local v15, "runStart":I
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    if-le v15, v2, :cond_37

    move/from16 p2, v13

    goto/16 :goto_116

    .line 694
    :cond_37
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v14}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v2

    add-int/2addr v2, v15

    iget v3, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 695
    .local v2, "runLimit":I
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v14}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 696
    .local v4, "runIsRtl":Z
    iget v3, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v14, v13, v3}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    .line 698
    .local v11, "runFlag":I
    move v3, v15

    .line 699
    .local v3, "segStart":I
    iget-boolean v5, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v5, :cond_57

    move v5, v15

    goto :goto_58

    :cond_57
    move v5, v2

    :goto_58
    move/from16 v16, v1

    move v1, v3

    .end local v3    # "segStart":I
    .local v1, "segStart":I
    .local v5, "j":I
    .local v16, "h":F
    :goto_5b
    if-gt v5, v2, :cond_108

    .line 700
    if-eq v5, v2, :cond_6e

    invoke-direct {v0, v5}, Landroid/text/TextLine;->charAt(I)C

    move-result v3

    const/16 v6, 0x9

    if-ne v3, v6, :cond_68

    goto :goto_6e

    :cond_68
    move/from16 p2, v13

    move v13, v2

    move v2, v5

    goto/16 :goto_101

    .line 701
    :cond_6e
    :goto_6e
    iget v3, v0, Landroid/text/TextLine;->mDir:I

    const/4 v6, -0x1

    const/4 v8, 0x0

    const/16 v17, 0x1

    if-ne v3, v6, :cond_79

    move/from16 v3, v17

    goto :goto_7a

    :cond_79
    move v3, v8

    :goto_7a
    if-ne v3, v4, :cond_7e

    move/from16 v8, v17

    :cond_7e
    move/from16 v18, v8

    .line 702
    .local v18, "sameDirection":Z
    nop

    .line 703
    move v3, v2

    move v2, v5

    .end local v5    # "j":I
    .local v2, "j":I
    .local v3, "runLimit":I
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v3

    .end local v3    # "runLimit":I
    .local v8, "runLimit":I
    move v3, v2

    move/from16 v19, v8

    .end local v8    # "runLimit":I
    .local v19, "runLimit":I
    move v8, v1

    move/from16 p2, v13

    move/from16 v13, v19

    .end local v19    # "runLimit":I
    .local v13, "runLimit":I
    .local p2, "runCount":I
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    .line 706
    .local v3, "segmentWidth":F
    move/from16 v5, v16

    .line 707
    .local v5, "oldh":F
    if-eqz v18, :cond_9a

    move v6, v3

    goto :goto_9b

    :cond_9a
    neg-float v6, v3

    :goto_9b
    add-float v16, v16, v6

    .line 708
    if-eqz v18, :cond_a1

    move v6, v5

    goto :goto_a3

    :cond_a1
    move/from16 v6, v16

    .line 709
    .local v6, "currh":F
    :goto_a3
    move v8, v1

    .local v8, "offset":I
    :goto_a4
    if-ge v8, v2, :cond_ca

    iget v9, v0, Landroid/text/TextLine;->mLen:I

    if-ge v8, v9, :cond_ca

    .line 710
    if-eqz v4, :cond_ba

    .line 711
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aput v6, v12, v9

    .line 712
    aget v9, v7, v8

    sub-float/2addr v6, v9

    .line 713
    mul-int/lit8 v9, v8, 0x2

    aput v6, v12, v9

    goto :goto_c7

    .line 715
    :cond_ba
    mul-int/lit8 v9, v8, 0x2

    aput v6, v12, v9

    .line 716
    aget v9, v7, v8

    add-float/2addr v6, v9

    .line 717
    mul-int/lit8 v9, v8, 0x2

    add-int/lit8 v9, v9, 0x1

    aput v6, v12, v9

    .line 709
    :goto_c7
    add-int/lit8 v8, v8, 0x1

    goto :goto_a4

    .line 721
    .end local v8    # "offset":I
    :cond_ca
    if-eq v2, v13, :cond_ff

    .line 724
    if-eqz v4, :cond_df

    .line 725
    move/from16 v8, v16

    .line 726
    .local v8, "rightX":F
    iget v9, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v9, v9

    iget v10, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v10, v10

    mul-float v10, v10, v16

    invoke-virtual {v0, v10}, Landroid/text/TextLine;->nextTab(F)F

    move-result v10

    mul-float/2addr v9, v10

    .line 727
    .end local v16    # "h":F
    .local v9, "h":F
    move v10, v9

    .local v10, "leftX":F
    goto :goto_ef

    .line 729
    .end local v8    # "rightX":F
    .end local v9    # "h":F
    .end local v10    # "leftX":F
    .restart local v16    # "h":F
    :cond_df
    move/from16 v10, v16

    .line 730
    .restart local v10    # "leftX":F
    iget v8, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v8, v8

    iget v9, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    invoke-virtual {v0, v9}, Landroid/text/TextLine;->nextTab(F)F

    move-result v9

    mul-float/2addr v9, v8

    .line 731
    .end local v16    # "h":F
    .restart local v9    # "h":F
    move v8, v9

    .line 733
    .restart local v8    # "rightX":F
    :goto_ef
    mul-int/lit8 v16, v2, 0x2

    aput v10, v12, v16

    .line 734
    mul-int/lit8 v16, v2, 0x2

    add-int/lit8 v16, v16, 0x1

    aput v8, v12, v16

    .line 735
    sub-float v16, v8, v10

    aput v16, v7, v2

    move/from16 v16, v9

    .line 738
    .end local v8    # "rightX":F
    .end local v9    # "h":F
    .end local v10    # "leftX":F
    .restart local v16    # "h":F
    :cond_ff
    add-int/lit8 v1, v2, 0x1

    .line 699
    .end local v3    # "segmentWidth":F
    .end local v5    # "oldh":F
    .end local v6    # "currh":F
    .end local v18    # "sameDirection":Z
    :goto_101
    add-int/lit8 v5, v2, 0x1

    move v2, v13

    move/from16 v13, p2

    .end local v2    # "j":I
    .local v5, "j":I
    goto/16 :goto_5b

    .end local p2    # "runCount":I
    .local v2, "runLimit":I
    .local v13, "runCount":I
    :cond_108
    move/from16 p2, v13

    move v13, v2

    move v2, v5

    .line 691
    .end local v1    # "segStart":I
    .end local v2    # "runLimit":I
    .end local v4    # "runIsRtl":Z
    .end local v5    # "j":I
    .end local v11    # "runFlag":I
    .end local v13    # "runCount":I
    .end local v15    # "runStart":I
    .restart local p2    # "runCount":I
    add-int/lit8 v14, v14, 0x1

    move/from16 v13, p2

    move/from16 v1, v16

    goto/16 :goto_27

    .end local v16    # "h":F
    .end local p2    # "runCount":I
    .local v1, "h":F
    .restart local v13    # "runCount":I
    :cond_114
    move/from16 p2, v13

    .line 742
    .end local v13    # "runCount":I
    .end local v14    # "runIndex":I
    .restart local p2    # "runCount":I
    :goto_116
    return-void

    .line 686
    .end local v1    # "h":F
    .end local p2    # "runCount":I
    :cond_117
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "advance doesn\'t have enough space to receive the result, needed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 679
    .end local v7    # "advances":[F
    .local p2, "advances":[F
    :cond_13b
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bounds doesn\'t have enough space to receive the result, needed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    mul-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v12

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 676
    :cond_161
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "bounds can\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public greylist-max-o measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F
    .registers 24
    .param p1, "trailing"    # [Z
    .param p2, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 750
    move-object/from16 v0, p0

    iget v1, v0, Landroid/text/TextLine;->mLen:I

    const/4 v12, 0x1

    add-int/2addr v1, v12

    new-array v7, v1, [F

    .line 751
    .local v7, "measurement":[F
    const/4 v13, 0x0

    aget-boolean v1, p1, v13

    if-eqz v1, :cond_10

    .line 752
    const/4 v1, 0x0

    aput v1, v7, v13

    .line 755
    :cond_10
    const/4 v1, 0x0

    .line 756
    .local v1, "horizontal":F
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v14

    .line 757
    .local v14, "runCount":I
    const/4 v2, 0x0

    move v15, v2

    .local v15, "runIndex":I
    :goto_19
    if-ge v15, v14, :cond_f4

    .line 758
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v15}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v2

    .line 759
    .local v2, "runStart":I
    iget v3, v0, Landroid/text/TextLine;->mLen:I

    if-le v2, v3, :cond_27

    goto/16 :goto_f4

    .line 760
    :cond_27
    iget-object v3, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v3, v15}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v3

    add-int/2addr v3, v2

    iget v4, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 761
    .local v3, "runLimit":I
    iget-object v4, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v4, v15}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 762
    .local v4, "runIsRtl":Z
    iget v5, v0, Landroid/text/TextLine;->mDir:I

    invoke-static {v15, v14, v5}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v11

    .line 764
    .local v11, "runFlag":I
    move v5, v2

    .line 765
    .local v5, "segStart":I
    iget-boolean v6, v0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v6, :cond_47

    move v6, v2

    goto :goto_48

    :cond_47
    move v6, v3

    :goto_48
    move/from16 v16, v1

    move v1, v5

    .end local v5    # "segStart":I
    .local v1, "segStart":I
    .local v6, "j":I
    .local v16, "horizontal":F
    :goto_4b
    if-gt v6, v3, :cond_e9

    .line 766
    if-eq v6, v3, :cond_5e

    invoke-direct {v0, v6}, Landroid/text/TextLine;->charAt(I)C

    move-result v5

    const/16 v8, 0x9

    if-ne v5, v8, :cond_58

    goto :goto_5e

    :cond_58
    move/from16 v20, v2

    move v12, v3

    move v2, v6

    goto/16 :goto_e1

    .line 767
    :cond_5e
    :goto_5e
    move/from16 v17, v16

    .line 768
    .local v17, "oldHorizontal":F
    iget v5, v0, Landroid/text/TextLine;->mDir:I

    const/4 v8, -0x1

    if-ne v5, v8, :cond_67

    move v5, v12

    goto :goto_68

    :cond_67
    move v5, v13

    :goto_68
    if-ne v5, v4, :cond_6c

    move v5, v12

    goto :goto_6d

    :cond_6c
    move v5, v13

    :goto_6d
    move/from16 v18, v5

    .line 776
    .local v18, "sameDirection":Z
    aget v19, v7, v1

    .line 777
    .local v19, "previousSegEndHorizontal":F
    nop

    .line 778
    move v5, v2

    move v2, v6

    .end local v6    # "j":I
    .local v2, "j":I
    .local v5, "runStart":I
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v8, v3

    .end local v3    # "runLimit":I
    .local v8, "runLimit":I
    move v3, v2

    move/from16 v20, v8

    .end local v8    # "runLimit":I
    .local v20, "runLimit":I
    move v8, v1

    move/from16 v12, v20

    move/from16 v20, v5

    move-object/from16 v5, p2

    .end local v5    # "runStart":I
    .local v12, "runLimit":I
    .local v20, "runStart":I
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;[FIFLandroid/text/TextLine$LineInfo;I)F

    move-result v3

    .line 780
    .local v3, "width":F
    if-eqz v18, :cond_8a

    move v5, v3

    goto :goto_8b

    :cond_8a
    neg-float v5, v3

    :goto_8b
    add-float v16, v16, v5

    .line 782
    if-eqz v18, :cond_92

    move/from16 v5, v17

    goto :goto_94

    :cond_92
    move/from16 v5, v16

    .line 783
    .local v5, "currHorizontal":F
    :goto_94
    iget v6, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 785
    .local v6, "segLimit":I
    move v8, v1

    .local v8, "offset":I
    :goto_9b
    if-gt v8, v6, :cond_be

    .line 786
    const/4 v9, 0x0

    .line 788
    .local v9, "advance":F
    if-ge v8, v6, :cond_a9

    .line 789
    if-eqz v4, :cond_a6

    aget v10, v7, v8

    neg-float v10, v10

    goto :goto_a8

    :cond_a6
    aget v10, v7, v8

    :goto_a8
    move v9, v10

    .line 792
    :cond_a9
    if-ne v8, v1, :cond_b2

    aget-boolean v10, p1, v8

    if-eqz v10, :cond_b2

    .line 795
    aput v19, v7, v8

    goto :goto_ba

    .line 796
    :cond_b2
    if-ne v8, v6, :cond_b8

    aget-boolean v10, p1, v8

    if-eqz v10, :cond_ba

    .line 797
    :cond_b8
    aput v5, v7, v8

    .line 800
    :cond_ba
    :goto_ba
    add-float/2addr v5, v9

    .line 785
    .end local v9    # "advance":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_9b

    .line 803
    .end local v8    # "offset":I
    :cond_be
    if-eq v2, v12, :cond_df

    .line 804
    aget-boolean v8, p1, v2

    if-nez v8, :cond_c6

    .line 805
    aput v16, v7, v2

    .line 807
    :cond_c6
    iget v8, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v8, v8

    iget v9, v0, Landroid/text/TextLine;->mDir:I

    int-to-float v9, v9

    mul-float v9, v9, v16

    invoke-virtual {v0, v9}, Landroid/text/TextLine;->nextTab(F)F

    move-result v9

    mul-float/2addr v8, v9

    .line 808
    .end local v16    # "horizontal":F
    .local v8, "horizontal":F
    add-int/lit8 v9, v2, 0x1

    aget-boolean v9, p1, v9

    if-eqz v9, :cond_dd

    .line 809
    add-int/lit8 v9, v2, 0x1

    aput v8, v7, v9

    .line 813
    :cond_dd
    move/from16 v16, v8

    .end local v8    # "horizontal":F
    .restart local v16    # "horizontal":F
    :cond_df
    add-int/lit8 v1, v2, 0x1

    .line 765
    .end local v3    # "width":F
    .end local v5    # "currHorizontal":F
    .end local v6    # "segLimit":I
    .end local v17    # "oldHorizontal":F
    .end local v18    # "sameDirection":Z
    .end local v19    # "previousSegEndHorizontal":F
    :goto_e1
    add-int/lit8 v6, v2, 0x1

    move v3, v12

    move/from16 v2, v20

    const/4 v12, 0x1

    .end local v2    # "j":I
    .local v6, "j":I
    goto/16 :goto_4b

    .end local v12    # "runLimit":I
    .end local v20    # "runStart":I
    .local v2, "runStart":I
    .local v3, "runLimit":I
    :cond_e9
    move/from16 v20, v2

    move v12, v3

    move v2, v6

    .line 757
    .end local v1    # "segStart":I
    .end local v2    # "runStart":I
    .end local v3    # "runLimit":I
    .end local v4    # "runIsRtl":Z
    .end local v6    # "j":I
    .end local v11    # "runFlag":I
    add-int/lit8 v15, v15, 0x1

    move/from16 v1, v16

    const/4 v12, 0x1

    goto/16 :goto_19

    .line 817
    .end local v15    # "runIndex":I
    .end local v16    # "horizontal":F
    .local v1, "horizontal":F
    :cond_f4
    :goto_f4
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    aget-boolean v2, p1, v2

    if-nez v2, :cond_fe

    .line 818
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    aput v1, v7, v2

    .line 820
    :cond_fe
    return-object v7
.end method

.method public blacklist metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F
    .registers 16
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p2, "drawBounds"    # Landroid/graphics/RectF;
    .param p3, "returnDrawWidth"    # Z
    .param p4, "lineInfo"    # Landroid/text/TextLine$LineInfo;

    .line 472
    if-eqz p3, :cond_51

    .line 473
    if-nez p2, :cond_13

    .line 474
    iget-object v0, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    if-nez v0, :cond_f

    .line 475
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    .line 477
    :cond_f
    iget-object p2, p0, Landroid/text/TextLine;->mTmpRectForMeasure:Landroid/graphics/RectF;

    move-object v4, p2

    goto :goto_14

    .line 473
    :cond_13
    move-object v4, p2

    .line 479
    .end local p2    # "drawBounds":Landroid/graphics/RectF;
    .local v4, "drawBounds":Landroid/graphics/RectF;
    :goto_14
    invoke-virtual {v4}, Landroid/graphics/RectF;->setEmpty()V

    .line 480
    iget v1, p0, Landroid/text/TextLine;->mLen:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    .end local p1    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local p4    # "lineInfo":Landroid/text/TextLine$LineInfo;
    .local v3, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .local v5, "lineInfo":Landroid/text/TextLine$LineInfo;
    invoke-virtual/range {v0 .. v5}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    .line 482
    .local p1, "w":F
    const/4 p2, 0x0

    cmpl-float p4, p1, p2

    if-ltz p4, :cond_34

    .line 483
    iget p4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p4

    iget v1, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    sub-float/2addr p4, p2

    .local p4, "boundsWidth":F
    goto :goto_42

    .line 485
    .end local p4    # "boundsWidth":F
    :cond_34
    iget p4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p4, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iget p4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p4}, Ljava/lang/Math;->min(FF)F

    move-result p4

    sub-float p4, p2, p4

    .line 487
    .restart local p4    # "boundsWidth":F
    :goto_42
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, p4

    if-lez p2, :cond_4b

    .line 488
    return p1

    .line 492
    :cond_4b
    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result p2

    mul-float/2addr p2, p4

    return p2

    .line 495
    .end local v3    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v4    # "drawBounds":Landroid/graphics/RectF;
    .end local v5    # "lineInfo":Landroid/text/TextLine$LineInfo;
    .local p1, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local p2    # "drawBounds":Landroid/graphics/RectF;
    .local p4, "lineInfo":Landroid/text/TextLine$LineInfo;
    :cond_51
    move-object v0, p0

    move-object v3, p1

    move-object v5, p4

    .end local p1    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local p4    # "lineInfo":Landroid/text/TextLine$LineInfo;
    .restart local v3    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v5    # "lineInfo":Landroid/text/TextLine$LineInfo;
    iget v6, v0, Landroid/text/TextLine;->mLen:I

    const/4 v7, 0x0

    move-object v9, p2

    move-object v8, v3

    move-object v10, v5

    move-object v5, v0

    .end local v3    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v5    # "lineInfo":Landroid/text/TextLine$LineInfo;
    .end local p2    # "drawBounds":Landroid/graphics/RectF;
    .local v8, "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "drawBounds":Landroid/graphics/RectF;
    .local v10, "lineInfo":Landroid/text/TextLine$LineInfo;
    invoke-virtual/range {v5 .. v10}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result p1

    move-object v5, v10

    .end local v8    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .end local v10    # "lineInfo":Landroid/text/TextLine$LineInfo;
    .restart local v3    # "fmi":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v5    # "lineInfo":Landroid/text/TextLine$LineInfo;
    return p1
.end method

.method greylist-max-o nextTab(F)F
    .registers 3
    .param p1, "h"    # F

    .line 1850
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    if-eqz v0, :cond_b

    .line 1851
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    move-result v0

    return v0

    .line 1853
    :cond_b
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FF)F

    move-result v0

    return v0
.end method

.method public blacklist set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    .registers 30
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p9, "ellipsisStart"    # I
    .param p10, "ellipsisEnd"    # I
    .param p11, "useFallbackLineSpacing"    # Z

    .line 221
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p9

    move/from16 v6, p10

    iput-object v1, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    .line 222
    iput-object v2, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    .line 223
    iput v3, v0, Landroid/text/TextLine;->mStart:I

    .line 224
    sub-int v7, v4, v3

    iput v7, v0, Landroid/text/TextLine;->mLen:I

    .line 225
    move/from16 v7, p5

    iput v7, v0, Landroid/text/TextLine;->mDir:I

    .line 226
    move-object/from16 v8, p6

    iput-object v8, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    .line 227
    move/from16 v9, p11

    iput-boolean v9, v0, Landroid/text/TextLine;->mUseFallbackExtent:Z

    .line 228
    iget-object v10, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    if-eqz v10, :cond_df

    .line 231
    move/from16 v10, p7

    iput-boolean v10, v0, Landroid/text/TextLine;->mHasTabs:Z

    .line 232
    const/4 v11, 0x0

    iput-object v11, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 234
    const/4 v12, 0x0

    .line 235
    .local v12, "hasReplacement":Z
    instance-of v13, v2, Landroid/text/Spanned;

    const/4 v15, 0x0

    if-eqz v13, :cond_4f

    .line 236
    move-object v13, v2

    check-cast v13, Landroid/text/Spanned;

    iput-object v13, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    .line 237
    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    const/16 v16, 0x1

    iget-object v14, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    invoke-virtual {v13, v14, v3, v4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 238
    iget-object v13, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    iget v13, v13, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v13, :cond_4c

    move/from16 v13, v16

    goto :goto_4d

    :cond_4c
    move v13, v15

    :goto_4d
    move v12, v13

    goto :goto_51

    .line 235
    :cond_4f
    const/16 v16, 0x1

    .line 241
    :goto_51
    iput-object v11, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 242
    instance-of v13, v2, Landroid/text/PrecomputedText;

    if-eqz v13, :cond_6e

    .line 245
    move-object v13, v2

    check-cast v13, Landroid/text/PrecomputedText;

    iput-object v13, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 246
    iget-object v13, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    invoke-virtual {v13}, Landroid/text/PrecomputedText;->getParams()Landroid/text/PrecomputedText$Params;

    move-result-object v13

    invoke-virtual {v13}, Landroid/text/PrecomputedText$Params;->getTextPaint()Landroid/text/TextPaint;

    move-result-object v13

    invoke-virtual {v13, v1}, Landroid/text/TextPaint;->equalsForTextMeasurement(Landroid/graphics/Paint;)Z

    move-result v13

    if-nez v13, :cond_6e

    .line 247
    iput-object v11, v0, Landroid/text/TextLine;->mComputed:Landroid/text/PrecomputedText;

    .line 251
    :cond_6e
    iput-boolean v12, v0, Landroid/text/TextLine;->mCharsValid:Z

    .line 253
    iget-boolean v11, v0, Landroid/text/TextLine;->mCharsValid:Z

    if-eqz v11, :cond_c6

    .line 254
    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    if-eqz v11, :cond_7f

    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    array-length v11, v11

    iget v13, v0, Landroid/text/TextLine;->mLen:I

    if-ge v11, v13, :cond_87

    .line 255
    :cond_7f
    iget v11, v0, Landroid/text/TextLine;->mLen:I

    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    move-result-object v11

    iput-object v11, v0, Landroid/text/TextLine;->mChars:[C

    .line 257
    :cond_87
    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    invoke-static {v2, v3, v4, v11, v15}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 258
    if-eqz v12, :cond_c6

    .line 264
    iget-object v11, v0, Landroid/text/TextLine;->mChars:[C

    .line 265
    .local v11, "chars":[C
    move/from16 v13, p3

    .local v13, "i":I
    :goto_92
    if-ge v13, v4, :cond_c6

    .line 266
    iget-object v14, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v14, v13, v4}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v14

    .line 267
    .local v14, "inext":I
    iget-object v15, v0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    invoke-virtual {v15, v13, v14}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    move-result v15

    if-eqz v15, :cond_c1

    sub-int v15, v13, v3

    if-ge v15, v6, :cond_aa

    sub-int v15, v14, v3

    if-gt v15, v5, :cond_c1

    .line 270
    :cond_aa
    sub-int v15, v13, v3

    const v17, 0xfffc

    aput-char v17, v11, v15

    .line 271
    sub-int v15, v13, v3

    add-int/lit8 v15, v15, 0x1

    .local v15, "j":I
    sub-int v1, v14, v3

    .local v1, "e":I
    :goto_b7
    if-ge v15, v1, :cond_c1

    .line 272
    const v17, 0xfeff

    aput-char v17, v11, v15

    .line 271
    add-int/lit8 v15, v15, 0x1

    goto :goto_b7

    .line 265
    .end local v1    # "e":I
    .end local v15    # "j":I
    :cond_c1
    move v13, v14

    move-object/from16 v1, p1

    const/4 v15, 0x0

    goto :goto_92

    .line 278
    .end local v11    # "chars":[C
    .end local v13    # "i":I
    .end local v14    # "inext":I
    :cond_c6
    move-object/from16 v1, p8

    iput-object v1, v0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    .line 279
    const/4 v11, 0x0

    iput v11, v0, Landroid/text/TextLine;->mAddedWordSpacingInPx:F

    .line 280
    const/4 v11, 0x0

    iput-boolean v11, v0, Landroid/text/TextLine;->mIsJustifying:Z

    .line 282
    if-eq v5, v6, :cond_d4

    move v13, v5

    goto :goto_d5

    :cond_d4
    move v13, v11

    :goto_d5
    iput v13, v0, Landroid/text/TextLine;->mEllipsisStart:I

    .line 283
    if-eq v5, v6, :cond_db

    move v15, v6

    goto :goto_dc

    :cond_db
    move v15, v11

    :goto_dc
    iput v15, v0, Landroid/text/TextLine;->mEllipsisEnd:I

    .line 284
    return-void

    .line 229
    .end local v12    # "hasReplacement":Z
    :cond_df
    move/from16 v10, p7

    move-object/from16 v1, p8

    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Directions cannot be null"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method blacklist shape(Landroid/text/TextShaper$GlyphsConsumer;)V
    .registers 16
    .param p1, "consumer"    # Landroid/text/TextShaper$GlyphsConsumer;

    .line 503
    const/4 v1, 0x0

    .line 504
    .local v1, "horizontal":F
    const/4 v8, 0x0

    .line 505
    .local v8, "x":F
    iget-object v2, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v9

    .line 506
    .local v9, "runCount":I
    const/4 v2, 0x0

    move v10, v2

    .local v10, "runIndex":I
    :goto_a
    if-ge v10, v9, :cond_75

    .line 507
    iget-object v2, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v10}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v11

    .line 508
    .local v11, "runStart":I
    iget v2, p0, Landroid/text/TextLine;->mLen:I

    if-le v11, v2, :cond_18

    goto/16 :goto_75

    .line 509
    :cond_18
    iget-object v2, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v10}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v2

    add-int/2addr v2, v11

    iget v3, p0, Landroid/text/TextLine;->mLen:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 510
    .local v12, "runLimit":I
    iget-object v2, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    invoke-virtual {v2, v10}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v4

    .line 512
    .local v4, "runIsRtl":Z
    iget v2, p0, Landroid/text/TextLine;->mDir:I

    invoke-static {v10, v9, v2}, Landroid/text/TextLine;->calculateRunFlag(III)I

    move-result v7

    .line 513
    .local v7, "runFlag":I
    move v2, v11

    .line 514
    .local v2, "segStart":I
    iget-boolean v3, p0, Landroid/text/TextLine;->mHasTabs:Z

    if-eqz v3, :cond_38

    move v3, v11

    goto :goto_39

    :cond_38
    move v3, v12

    :goto_39
    move v13, v1

    .end local v1    # "horizontal":F
    .local v3, "j":I
    .local v13, "horizontal":F
    :goto_3a
    if-gt v3, v12, :cond_71

    .line 515
    if-eq v3, v12, :cond_46

    invoke-direct {p0, v3}, Landroid/text/TextLine;->charAt(I)C

    move-result v1

    const/16 v5, 0x9

    if-ne v1, v5, :cond_6e

    .line 516
    :cond_46
    add-float v5, v8, v13

    add-int/lit8 v1, v9, -0x1

    if-ne v10, v1, :cond_53

    iget v1, p0, Landroid/text/TextLine;->mLen:I

    if-eq v3, v1, :cond_51

    goto :goto_53

    :cond_51
    const/4 v1, 0x0

    goto :goto_54

    :cond_53
    :goto_53
    const/4 v1, 0x1

    :goto_54
    move v6, v1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/TextLine;->shapeRun(Landroid/text/TextShaper$GlyphsConsumer;IIZFZI)F

    move-result v5

    add-float/2addr v13, v5

    .line 519
    if-eq v3, v12, :cond_6b

    .line 520
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    int-to-float v1, v1

    iget v5, p0, Landroid/text/TextLine;->mDir:I

    int-to-float v5, v5

    mul-float/2addr v5, v13

    invoke-virtual {p0, v5}, Landroid/text/TextLine;->nextTab(F)F

    move-result v5

    mul-float/2addr v1, v5

    move v13, v1

    .line 522
    :cond_6b
    add-int/lit8 v1, v3, 0x1

    move v2, v1

    .line 514
    :cond_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    .line 506
    .end local v2    # "segStart":I
    .end local v3    # "j":I
    .end local v4    # "runIsRtl":Z
    .end local v7    # "runFlag":I
    .end local v11    # "runStart":I
    .end local v12    # "runLimit":I
    :cond_71
    add-int/lit8 v10, v10, 0x1

    move v1, v13

    goto :goto_a

    .line 526
    .end local v10    # "runIndex":I
    .end local v13    # "horizontal":F
    .restart local v1    # "horizontal":F
    :cond_75
    :goto_75
    return-void
.end method
