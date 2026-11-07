.class public Landroid/text/MeasuredParagraph;
.super Ljava/lang/Object;
.source "MeasuredParagraph.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/MeasuredParagraph$StyleRunCallback;
    }
.end annotation


# static fields
.field private static final greylist-max-o OBJECT_REPLACEMENT_CHARACTER:C = '\ufffc'

.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/MeasuredParagraph;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBidi:Landroid/icu/text/Bidi;

.field private greylist-max-o mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

.field private final greylist-max-o mCachedPaint:Landroid/text/TextPaint;

.field private greylist-max-o mCopiedBuffer:[C

.field private greylist-max-o mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mLevels:Landroid/text/AutoGrowArray$ByteArray;

.field private final blacklist mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

.field private greylist-max-o mLtrWithoutBidi:Z

.field private blacklist mMeasuredText:Landroid/graphics/text/MeasuredText;

.field private greylist-max-o mParaDir:I

.field private greylist-max-o mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

.field private greylist-max-o mSpanned:Landroid/text/Spanned;

.field private greylist-max-o mTextLength:I

.field private greylist-max-o mTextStart:I

.field private greylist-max-o mWholeWidth:F

.field private greylist-max-o mWidths:Landroid/text/AutoGrowArray$FloatArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 77
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 3

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Landroid/text/AutoGrowArray$ByteArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$ByteArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    .line 130
    new-instance v0, Landroid/text/AutoGrowArray$FloatArray;

    invoke-direct {v0}, Landroid/text/AutoGrowArray$FloatArray;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 134
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    .line 138
    new-instance v0, Landroid/text/AutoGrowArray$IntArray;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/text/AutoGrowArray$IntArray;-><init>(I)V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    .line 144
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    .line 146
    new-instance v0, Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-direct {v0}, Landroid/graphics/text/LineBreakConfig$Builder;-><init>()V

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    .line 75
    return-void
.end method

.method private blacklist applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .registers 21
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p3, "spans"    # [Landroid/text/style/MetricAffectingSpan;
    .param p4, "lbcSpans"    # [Landroid/text/style/LineBreakConfigSpan;
    .param p5, "start"    # I
    .param p6, "end"    # I
    .param p7, "builder"    # Landroid/graphics/text/MeasuredText$Builder;
    .param p8, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 822
    move-object v7, p3

    move-object/from16 v8, p4

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 824
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    iput v2, v1, Landroid/text/TextPaint;->baselineShift:I

    .line 826
    if-eqz p7, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    move v9, v1

    .line 828
    .local v9, "needFontMetrics":Z
    if-eqz v9, :cond_20

    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    if-nez v1, :cond_20

    .line 829
    new-instance v1, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v1}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v1, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    .line 832
    :cond_20
    const/4 v1, 0x0

    .line 833
    .local v1, "replacement":Landroid/text/style/ReplacementSpan;
    if-eqz v7, :cond_39

    .line 834
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_24
    array-length v4, v7

    if-ge v3, v4, :cond_39

    .line 835
    aget-object v4, v7, v3

    .line 836
    .local v4, "span":Landroid/text/style/MetricAffectingSpan;
    instance-of v5, v4, Landroid/text/style/ReplacementSpan;

    if-eqz v5, :cond_31

    .line 838
    move-object v1, v4

    check-cast v1, Landroid/text/style/ReplacementSpan;

    goto :goto_36

    .line 841
    :cond_31
    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    .line 834
    .end local v4    # "span":Landroid/text/style/MetricAffectingSpan;
    :goto_36
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 846
    .end local v3    # "i":I
    :cond_39
    if-eqz v8, :cond_59

    .line 847
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v3, p2}, Landroid/graphics/text/LineBreakConfig$Builder;->reset(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 848
    array-length v3, v8

    :goto_41
    if-ge v2, v3, :cond_51

    aget-object v5, v8, v2

    .line 849
    .local v5, "lbcSpan":Landroid/text/style/LineBreakConfigSpan;
    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v5}, Landroid/text/style/LineBreakConfigSpan;->getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/graphics/text/LineBreakConfig$Builder;->merge(Landroid/graphics/text/LineBreakConfig;)Landroid/graphics/text/LineBreakConfig$Builder;

    .line 848
    .end local v5    # "lbcSpan":Landroid/text/style/LineBreakConfigSpan;
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 851
    :cond_51
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mLineBreakConfigBuilder:Landroid/graphics/text/LineBreakConfig$Builder;

    invoke-virtual {v2}, Landroid/graphics/text/LineBreakConfig$Builder;->build()Landroid/graphics/text/LineBreakConfig;

    move-result-object v2

    move-object v10, v2

    .end local p2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .local v2, "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    goto :goto_5a

    .line 846
    .end local v2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .restart local p2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    :cond_59
    move-object v10, p2

    .line 854
    .end local p2    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .local v10, "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    :goto_5a
    iget v2, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v2, p5, v2

    .line 855
    .local v2, "startInCopiedBuffer":I
    iget v3, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    sub-int v3, p6, v3

    .line 857
    .local v3, "endInCopiedBuffer":I
    if-eqz p7, :cond_6b

    .line 858
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 861
    :cond_6b
    if-eqz v1, :cond_7c

    .line 862
    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move-object v11, v1

    move v1, v2

    move v2, v3

    move-object v4, v10

    .end local v3    # "endInCopiedBuffer":I
    .local v1, "startInCopiedBuffer":I
    .local v2, "endInCopiedBuffer":I
    .local v11, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_8a

    .line 865
    .end local v11    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v1, "replacement":Landroid/text/style/ReplacementSpan;
    .local v2, "startInCopiedBuffer":I
    .restart local v3    # "endInCopiedBuffer":I
    :cond_7c
    move-object v11, v1

    move v1, v2

    move v2, v3

    .end local v3    # "endInCopiedBuffer":I
    .local v1, "startInCopiedBuffer":I
    .local v2, "endInCopiedBuffer":I
    .restart local v11    # "replacement":Landroid/text/style/ReplacementSpan;
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    move-object v0, p0

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-object v4, v10

    .end local v10    # "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    .local v4, "lineBreakConfig":Landroid/graphics/text/LineBreakConfig;
    invoke-direct/range {v0 .. v6}, Landroid/text/MeasuredParagraph;->applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 869
    :goto_8a
    if-eqz v9, :cond_e3

    .line 870
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v3, v3, Landroid/text/TextPaint;->baselineShift:I

    if-gez v3, :cond_a9

    .line 871
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 872
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_bf

    .line 874
    :cond_a9
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 875
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mCachedPaint:Landroid/text/TextPaint;

    iget v6, v6, Landroid/text/TextPaint;->baselineShift:I

    add-int/2addr v5, v6

    iput v5, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 878
    :goto_bf
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 879
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 880
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 881
    iget-object v3, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {v3, v5}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 883
    :cond_e3
    return-void
.end method

.method private blacklist applyReplacementRun(Landroid/text/style/ReplacementSpan;IILandroid/text/TextPaint;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .registers 13
    .param p1, "replacement"    # Landroid/text/style/ReplacementSpan;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;
    .param p6, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 732
    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v3, p2, v0

    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextStart:I

    add-int v4, p3, v0

    iget-object v5, p0, Landroid/text/MeasuredParagraph;->mCachedFm:Landroid/graphics/Paint$FontMetricsInt;

    move-object v0, p1

    move-object v1, p4

    .end local p1    # "replacement":Landroid/text/style/ReplacementSpan;
    .end local p4    # "paint":Landroid/text/TextPaint;
    .local v0, "replacement":Landroid/text/style/ReplacementSpan;
    .local v1, "paint":Landroid/text/TextPaint;
    invoke-virtual/range {v0 .. v5}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    move-result p1

    int-to-float p1, p1

    .line 734
    .local p1, "width":F
    if-nez p5, :cond_30

    .line 736
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p4, p2, p1}, Landroid/text/AutoGrowArray$FloatArray;->set(IF)V

    .line 737
    add-int/lit8 p4, p2, 0x1

    if-le p3, p4, :cond_2a

    .line 738
    iget-object p4, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {p4}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object p4

    add-int/lit8 v2, p2, 0x1

    const/4 v3, 0x0

    invoke-static {p4, v2, p3, v3}, Ljava/util/Arrays;->fill([FIIF)V

    .line 740
    :cond_2a
    iget p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    add-float/2addr p4, p1

    iput p4, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    goto :goto_35

    .line 742
    :cond_30
    sub-int p4, p3, p2

    invoke-virtual {p5, v1, p4, p1}, Landroid/graphics/text/MeasuredText$Builder;->appendReplacementRun(Landroid/graphics/Paint;IF)Landroid/graphics/text/MeasuredText$Builder;

    .line 744
    :goto_35
    if-eqz p6, :cond_3c

    .line 745
    sub-int p4, p3, p2

    invoke-interface {p6, v1, p4, p1}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendReplacementRun(Landroid/graphics/Paint;IF)V

    .line 747
    :cond_3c
    return-void
.end method

.method private blacklist applyStyleRun(IILandroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V
    .registers 26
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "config"    # Landroid/graphics/text/LineBreakConfig;
    .param p5, "builder"    # Landroid/graphics/text/MeasuredText$Builder;
    .param p6, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 756
    move-object/from16 v1, p0

    move/from16 v11, p2

    move-object/from16 v2, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object/from16 v14, p6

    iget-boolean v0, v1, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    if-eqz v0, :cond_76

    .line 758
    if-nez v13, :cond_60

    .line 761
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v3

    .line 762
    .local v3, "oldFlag":I
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v2, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 765
    :try_start_1f
    iget v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_21
    .catchall {:try_start_1f .. :try_end_21} :catchall_57

    move v4, v3

    .end local v3    # "oldFlag":I
    .local v4, "oldFlag":I
    :try_start_22
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    sub-int v5, v11, p1

    sub-int v7, v11, p1

    iget-object v6, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 767
    invoke-virtual {v6}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v9
    :try_end_2e
    .catchall {:try_start_22 .. :try_end_2e} :catchall_51

    .line 765
    const/4 v8, 0x0

    move/from16 v6, p1

    move/from16 v10, p1

    move v15, v4

    move/from16 v4, p1

    .end local v4    # "oldFlag":I
    .local v15, "oldFlag":I
    :try_start_36
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3
    :try_end_3a
    .catchall {:try_start_36 .. :try_end_3a} :catchall_4a

    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    add-float/2addr v0, v3

    :try_start_40
    iput v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_42
    .catchall {:try_start_40 .. :try_end_42} :catchall_48

    .line 769
    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setFlags(I)V

    .line 770
    nop

    .line 771
    .end local v15    # "oldFlag":I
    const/4 v15, 0x0

    goto :goto_69

    .line 769
    .restart local v15    # "oldFlag":I
    :catchall_48
    move-exception v0

    goto :goto_5c

    :catchall_4a
    move-exception v0

    move/from16 v18, v4

    move-object v4, v2

    move/from16 v2, v18

    goto :goto_5c

    .end local v15    # "oldFlag":I
    .restart local v4    # "oldFlag":I
    :catchall_51
    move-exception v0

    move v15, v4

    move-object v4, v2

    move/from16 v2, p1

    .end local v4    # "oldFlag":I
    .restart local v15    # "oldFlag":I
    goto :goto_5c

    .end local v15    # "oldFlag":I
    .restart local v3    # "oldFlag":I
    :catchall_57
    move-exception v0

    move-object v4, v2

    move v15, v3

    move/from16 v2, p1

    .end local v3    # "oldFlag":I
    .restart local v15    # "oldFlag":I
    :goto_5c
    invoke-virtual {v4, v15}, Landroid/text/TextPaint;->setFlags(I)V

    .line 770
    throw v0

    .line 772
    .end local v15    # "oldFlag":I
    :cond_60
    move-object v4, v2

    move/from16 v2, p1

    sub-int v0, v11, v2

    const/4 v15, 0x0

    invoke-virtual {v13, v4, v12, v0, v15}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 774
    :goto_69
    if-eqz v14, :cond_73

    .line 775
    sub-int v0, v11, v2

    invoke-interface {v14, v4, v12, v0, v15}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    move-object v2, v4

    goto/16 :goto_100

    .line 774
    :cond_73
    move-object v2, v4

    goto/16 :goto_100

    .line 779
    :cond_76
    move-object v4, v2

    const/4 v15, 0x0

    move/from16 v2, p1

    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0, v2}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v0

    .line 782
    .local v0, "level":B
    move/from16 v3, p1

    .local v3, "levelStart":I
    add-int/lit8 v5, v2, 0x1

    move v6, v5

    move v5, v3

    move v3, v0

    .line 783
    .end local v0    # "level":B
    .local v3, "level":B
    .local v5, "levelStart":I
    .local v6, "levelEnd":I
    :goto_87
    if-eq v6, v11, :cond_96

    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0, v6}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v0

    if-eq v0, v3, :cond_92

    goto :goto_96

    :cond_92
    move-object v2, v4

    move v15, v6

    goto/16 :goto_109

    .line 784
    :cond_96
    :goto_96
    and-int/lit8 v0, v3, 0x1

    if-eqz v0, :cond_9d

    const/4 v0, 0x1

    move v8, v0

    goto :goto_9e

    :cond_9d
    move v8, v15

    .line 785
    .local v8, "isRtl":Z
    :goto_9e
    if-nez v13, :cond_ea

    .line 786
    move v7, v5

    .end local v5    # "levelStart":I
    .local v7, "levelStart":I
    sub-int v5, v6, v7

    .line 787
    .local v5, "levelLength":I
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v9

    .line 788
    .local v9, "oldFlag":I
    invoke-virtual {v4}, Landroid/text/TextPaint;->getFlags()I

    move-result v0

    or-int/lit16 v0, v0, 0x6000

    invoke-virtual {v4, v0}, Landroid/text/TextPaint;->setFlags(I)V

    .line 791
    :try_start_b0
    iget v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_b2
    .catchall {:try_start_b0 .. :try_end_b2} :catchall_df

    move v10, v3

    .end local v3    # "level":B
    .local v10, "level":B
    :try_start_b3
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v15, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    .line 793
    invoke-virtual {v15}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v15
    :try_end_bb
    .catchall {:try_start_b3 .. :try_end_bb} :catchall_d7

    .line 791
    move/from16 v16, v6

    .end local v6    # "levelEnd":I
    .local v16, "levelEnd":I
    move v6, v7

    move v4, v7

    .end local v7    # "levelStart":I
    .local v4, "levelStart":I
    move v7, v5

    move/from16 v17, v10

    .end local v10    # "level":B
    .local v17, "level":B
    move v10, v4

    move-object/from16 v2, p3

    move v11, v9

    move-object v9, v15

    move/from16 v15, v16

    .end local v9    # "oldFlag":I
    .end local v16    # "levelEnd":I
    .local v11, "oldFlag":I
    .local v15, "levelEnd":I
    :try_start_c9
    invoke-virtual/range {v2 .. v10}, Landroid/text/TextPaint;->getTextRunAdvances([CIIIIZ[FI)F

    move-result v3

    add-float/2addr v0, v3

    iput v0, v1, Landroid/text/MeasuredParagraph;->mWholeWidth:F
    :try_end_d0
    .catchall {:try_start_c9 .. :try_end_d0} :catchall_d5

    .line 795
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setFlags(I)V

    .line 796
    nop

    .line 797
    .end local v5    # "levelLength":I
    .end local v11    # "oldFlag":I
    goto :goto_f4

    .line 795
    .restart local v5    # "levelLength":I
    .restart local v11    # "oldFlag":I
    :catchall_d5
    move-exception v0

    goto :goto_e6

    .end local v4    # "levelStart":I
    .end local v11    # "oldFlag":I
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    .restart local v6    # "levelEnd":I
    .restart local v7    # "levelStart":I
    .restart local v9    # "oldFlag":I
    .restart local v10    # "level":B
    :catchall_d7
    move-exception v0

    move-object v2, v4

    move v15, v6

    move v4, v7

    move v11, v9

    move/from16 v17, v10

    .end local v6    # "levelEnd":I
    .end local v7    # "levelStart":I
    .end local v9    # "oldFlag":I
    .end local v10    # "level":B
    .restart local v4    # "levelStart":I
    .restart local v11    # "oldFlag":I
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    goto :goto_e6

    .end local v4    # "levelStart":I
    .end local v11    # "oldFlag":I
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    .restart local v3    # "level":B
    .restart local v6    # "levelEnd":I
    .restart local v7    # "levelStart":I
    .restart local v9    # "oldFlag":I
    :catchall_df
    move-exception v0

    move/from16 v17, v3

    move-object v2, v4

    move v15, v6

    move v4, v7

    move v11, v9

    .end local v3    # "level":B
    .end local v6    # "levelEnd":I
    .end local v7    # "levelStart":I
    .end local v9    # "oldFlag":I
    .restart local v4    # "levelStart":I
    .restart local v11    # "oldFlag":I
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    :goto_e6
    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setFlags(I)V

    .line 796
    throw v0

    .line 798
    .end local v4    # "levelStart":I
    .end local v11    # "oldFlag":I
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    .restart local v3    # "level":B
    .local v5, "levelStart":I
    .restart local v6    # "levelEnd":I
    :cond_ea
    move/from16 v17, v3

    move-object v2, v4

    move v4, v5

    move v15, v6

    .end local v3    # "level":B
    .end local v5    # "levelStart":I
    .end local v6    # "levelEnd":I
    .restart local v4    # "levelStart":I
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    sub-int v6, v15, v4

    invoke-virtual {v13, v2, v12, v6, v8}, Landroid/graphics/text/MeasuredText$Builder;->appendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)Landroid/graphics/text/MeasuredText$Builder;

    .line 800
    :goto_f4
    if-eqz v14, :cond_fb

    .line 801
    sub-int v6, v15, v4

    invoke-interface {v14, v2, v12, v6, v8}, Landroid/text/MeasuredParagraph$StyleRunCallback;->onAppendStyleRun(Landroid/graphics/Paint;Landroid/graphics/text/LineBreakConfig;IZ)V

    .line 803
    :cond_fb
    move/from16 v11, p2

    if-ne v15, v11, :cond_101

    .line 804
    nop

    .line 811
    .end local v4    # "levelStart":I
    .end local v8    # "isRtl":Z
    .end local v15    # "levelEnd":I
    .end local v17    # "level":B
    :goto_100
    return-void

    .line 806
    .restart local v4    # "levelStart":I
    .restart local v8    # "isRtl":Z
    .restart local v15    # "levelEnd":I
    .restart local v17    # "level":B
    :cond_101
    move v0, v15

    .line 807
    .end local v4    # "levelStart":I
    .local v0, "levelStart":I
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v3, v15}, Landroid/text/AutoGrowArray$ByteArray;->get(I)B

    move-result v3

    move v5, v0

    .line 782
    .end local v0    # "levelStart":I
    .end local v8    # "isRtl":Z
    .end local v17    # "level":B
    .restart local v3    # "level":B
    .restart local v5    # "levelStart":I
    :goto_109
    add-int/lit8 v6, v15, 0x1

    move-object v4, v2

    const/4 v15, 0x0

    move/from16 v2, p1

    .end local v15    # "levelEnd":I
    .restart local v6    # "levelEnd":I
    goto/16 :goto_87
.end method

.method public static greylist-max-o buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p4, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 413
    if-nez p4, :cond_7

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p4

    .line 414
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    :goto_8
    invoke-direct {v0, p0, p1, p2, p3}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 415
    return-object v0
.end method

.method public static greylist-max-o buildForMeasurement(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 16
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 440
    if-nez p5, :cond_7

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p5

    :goto_8
    move-object v1, v0

    .line 441
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-direct {v1, p1, p2, p3, p4}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 443
    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    iget v2, v1, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v0, v2}, Landroid/text/AutoGrowArray$FloatArray;->resize(I)V

    .line 444
    iget v0, v1, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_18

    .line 445
    return-object v1

    .line 448
    :cond_18
    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_2a

    .line 450
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    move v6, p2

    move v7, p3

    .end local p0    # "paint":Landroid/text/TextPaint;
    .end local p2    # "start":I
    .end local p3    # "end":I
    .local v2, "paint":Landroid/text/TextPaint;
    .local v6, "start":I
    .local v7, "end":I
    invoke-direct/range {v1 .. v9}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    move p0, v6

    move p2, v7

    .end local v6    # "start":I
    .end local v7    # "end":I
    .local p0, "start":I
    .local p2, "end":I
    goto :goto_77

    .line 456
    .end local v2    # "paint":Landroid/text/TextPaint;
    .local p0, "paint":Landroid/text/TextPaint;
    .local p2, "start":I
    .restart local p3    # "end":I
    :cond_2a
    move-object v2, p0

    move p0, p2

    move p2, p3

    .end local p3    # "end":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local p0, "start":I
    .local p2, "end":I
    move p3, p0

    move v6, p3

    .local v6, "spanStart":I
    :goto_2f
    if-ge v6, p2, :cond_77

    .line 457
    iget-object p3, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {p3, v6, p2, v0}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result p3

    .line 459
    .local p3, "maSpanEnd":I
    iget-object v0, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v0, v6, p2, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v0

    .line 461
    .local v0, "lbcSpanEnd":I
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 462
    .local v7, "spanEnd":I
    iget-object v3, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v4, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v3, v6, v7, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 464
    .local v3, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v4, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v4, v6, v7, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LineBreakConfigSpan;

    .line 466
    .local v4, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    iget-object v5, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v3, v5, v8}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    move-object v3, v5

    check-cast v3, [Landroid/text/style/MetricAffectingSpan;

    .line 467
    iget-object v5, v1, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {v4, v5, v8}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    .line 469
    .end local v4    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .local v5, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    .end local v3    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    const/4 v3, 0x0

    invoke-direct/range {v1 .. v9}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 456
    .end local v0    # "lbcSpanEnd":I
    .end local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v5    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .end local p3    # "maSpanEnd":I
    move v6, v7

    goto :goto_2f

    .line 474
    .end local v6    # "spanStart":I
    .end local v7    # "spanEnd":I
    :cond_77
    :goto_77
    return-object v1
.end method

.method public static blacklist buildForStaticLayout(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;
    .registers 23
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "computeBounds"    # Z
    .param p9, "hint"    # Landroid/text/MeasuredParagraph;
    .param p10, "recycle"    # Landroid/text/MeasuredParagraph;

    .line 532
    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object v11

    return-object v11
.end method

.method private static blacklist buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .registers 31
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "computeBounds"    # Z
    .param p9, "hint"    # Landroid/text/MeasuredParagraph;
    .param p10, "recycle"    # Landroid/text/MeasuredParagraph;
    .param p11, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 585
    move/from16 v6, p4

    move-object/from16 v9, p9

    if-nez p10, :cond_b

    invoke-static {}, Landroid/text/MeasuredParagraph;->obtain()Landroid/text/MeasuredParagraph;

    move-result-object v0

    goto :goto_d

    :cond_b
    move-object/from16 v0, p10

    :goto_d
    move-object v10, v0

    .line 586
    .local v10, "mt":Landroid/text/MeasuredParagraph;
    move-object/from16 v11, p2

    move/from16 v5, p3

    move-object/from16 v12, p5

    invoke-direct {v10, v11, v5, v6, v12}, Landroid/text/MeasuredParagraph;->resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V

    .line 588
    if-nez v9, :cond_34

    .line 589
    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>([C)V

    .line 590
    move/from16 v13, p6

    invoke-virtual {v0, v13}, Landroid/graphics/text/MeasuredText$Builder;->setComputeHyphenation(I)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    .line 591
    move/from16 v14, p7

    invoke-virtual {v0, v14}, Landroid/graphics/text/MeasuredText$Builder;->setComputeLayout(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    .line 592
    move/from16 v15, p8

    invoke-virtual {v0, v15}, Landroid/graphics/text/MeasuredText$Builder;->setComputeBounds(Z)Landroid/graphics/text/MeasuredText$Builder;

    move-result-object v0

    move-object v7, v0

    .local v0, "builder":Landroid/graphics/text/MeasuredText$Builder;
    goto :goto_42

    .line 594
    .end local v0    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    :cond_34
    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    new-instance v0, Landroid/graphics/text/MeasuredText$Builder;

    iget-object v1, v9, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-direct {v0, v1}, Landroid/graphics/text/MeasuredText$Builder;-><init>(Landroid/graphics/text/MeasuredText;)V

    move-object v7, v0

    .line 596
    .local v7, "builder":Landroid/graphics/text/MeasuredText$Builder;
    :goto_42
    iget v0, v10, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-nez v0, :cond_4e

    .line 599
    invoke-virtual {v7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    goto/16 :goto_d2

    .line 601
    :cond_4e
    iget-object v0, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    if-nez v0, :cond_65

    .line 603
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v8, p11

    move-object v0, v10

    .end local v10    # "mt":Landroid/text/MeasuredParagraph;
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    invoke-direct/range {v0 .. v8}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 605
    .end local v0    # "mt":Landroid/text/MeasuredParagraph;
    .restart local v10    # "mt":Landroid/text/MeasuredParagraph;
    iget-object v0, v10, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0, v6}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    goto/16 :goto_cc

    .line 610
    :cond_65
    move/from16 v0, p3

    .local v0, "spanStart":I
    :goto_67
    if-ge v0, v6, :cond_cb

    .line 611
    iget-object v1, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v2, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v1, v0, v6, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    .line 613
    .local v1, "maSpanEnd":I
    iget-object v2, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v3, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v2, v0, v6, v3}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v2

    .line 615
    .local v2, "lbcSpanEnd":I
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 616
    .local v3, "spanEnd":I
    iget-object v4, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v4, v0, v3, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/MetricAffectingSpan;

    .line 618
    .local v4, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v5, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LineBreakConfigSpan;

    invoke-interface {v5, v0, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LineBreakConfigSpan;

    .line 620
    .local v5, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    iget-object v8, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    move/from16 v16, v0

    .end local v0    # "spanStart":I
    .local v16, "spanStart":I
    const-class v0, Landroid/text/style/MetricAffectingSpan;

    invoke-static {v4, v8, v0}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/MetricAffectingSpan;

    .line 622
    .end local v4    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v0, "spans":[Landroid/text/style/MetricAffectingSpan;
    iget-object v4, v10, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/LineBreakConfigSpan;

    invoke-static {v5, v4, v8}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/style/LineBreakConfigSpan;

    .line 624
    .end local v5    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .local v4, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v18, p11

    move-object v13, v0

    move-object v14, v4

    move-object/from16 v17, v7

    move/from16 v15, v16

    move/from16 v16, v3

    .end local v0    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v3    # "spanEnd":I
    .end local v4    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .end local v7    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    .local v13, "spans":[Landroid/text/style/MetricAffectingSpan;
    .local v14, "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    .local v15, "spanStart":I
    .local v16, "spanEnd":I
    .local v17, "builder":Landroid/graphics/text/MeasuredText$Builder;
    invoke-direct/range {v10 .. v18}, Landroid/text/MeasuredParagraph;->applyMetricsAffectingSpan(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;[Landroid/text/style/MetricAffectingSpan;[Landroid/text/style/LineBreakConfigSpan;IILandroid/graphics/text/MeasuredText$Builder;Landroid/text/MeasuredParagraph$StyleRunCallback;)V

    .line 626
    move/from16 v0, v16

    .end local v16    # "spanEnd":I
    .end local v17    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    .local v0, "spanEnd":I
    .restart local v7    # "builder":Landroid/graphics/text/MeasuredText$Builder;
    iget-object v3, v10, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v3, v0}, Landroid/text/AutoGrowArray$IntArray;->append(I)V

    .line 610
    .end local v1    # "maSpanEnd":I
    .end local v2    # "lbcSpanEnd":I
    .end local v13    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v14    # "lbcSpans":[Landroid/text/style/LineBreakConfigSpan;
    move v1, v0

    move-object/from16 v11, p2

    move-object/from16 v12, p5

    move/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    .end local v15    # "spanStart":I
    .local v1, "spanStart":I
    goto :goto_67

    .end local v1    # "spanStart":I
    .local v0, "spanStart":I
    :cond_cb
    move v15, v0

    .line 629
    .end local v0    # "spanStart":I
    :goto_cc
    invoke-virtual {v7}, Landroid/graphics/text/MeasuredText$Builder;->build()Landroid/graphics/text/MeasuredText;

    move-result-object v0

    iput-object v0, v10, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 632
    :goto_d2
    return-object v10
.end method

.method public static blacklist buildForStaticLayoutTest(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZLandroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;
    .registers 21
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "hyphenationMode"    # I
    .param p7, "computeLayout"    # Z
    .param p8, "testCallback"    # Landroid/text/MeasuredParagraph$StyleRunCallback;

    .line 568
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v11, p8

    invoke-static/range {v0 .. v11}, Landroid/text/MeasuredParagraph;->buildForStaticLayoutInternal(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;IZZLandroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph;Landroid/text/MeasuredParagraph$StyleRunCallback;)Landroid/text/MeasuredParagraph;

    move-result-object v8

    return-object v8
.end method

.method private static greylist-max-o obtain()Landroid/text/MeasuredParagraph;
    .registers 2

    .line 80
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/MeasuredParagraph;

    .line 81
    .local v0, "mt":Landroid/text/MeasuredParagraph;
    if-eqz v0, :cond_c

    move-object v1, v0

    goto :goto_11

    :cond_c
    new-instance v1, Landroid/text/MeasuredParagraph;

    invoke-direct {v1}, Landroid/text/MeasuredParagraph;-><init>()V

    :goto_11
    return-object v1
.end method

.method private greylist-max-o reset()V
    .registers 3

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 166
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    .line 168
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 169
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->clear()V

    .line 170
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 171
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$IntArray;->clear()V

    .line 172
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    .line 173
    iput-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 174
    return-void
.end method

.method private greylist-max-o resetAndAnalyzeBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;)V
    .registers 22
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 647
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-direct {v0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 648
    instance-of v5, v1, Landroid/text/Spanned;

    if-eqz v5, :cond_15

    move-object v5, v1

    check-cast v5, Landroid/text/Spanned;

    goto :goto_16

    :cond_15
    const/4 v5, 0x0

    :goto_16
    iput-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    .line 649
    iput v2, v0, Landroid/text/MeasuredParagraph;->mTextStart:I

    .line 650
    sub-int v5, v3, v2

    iput v5, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 652
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    if-eqz v5, :cond_29

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v5, v5

    iget v6, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-eq v5, v6, :cond_2f

    .line 653
    :cond_29
    iget v5, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    new-array v5, v5, [C

    iput-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    .line 655
    :cond_2f
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    const/4 v6, 0x0

    invoke-static {v1, v2, v3, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 658
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const v7, 0xfffc

    if-eqz v5, :cond_6d

    .line 659
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v5, v2, v3, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 661
    .local v5, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_47
    array-length v9, v5

    if-ge v8, v9, :cond_6d

    .line 662
    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v10, v5, v8

    invoke-interface {v9, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    sub-int/2addr v9, v2

    .line 663
    .local v9, "startInPara":I
    iget-object v10, v0, Landroid/text/MeasuredParagraph;->mSpanned:Landroid/text/Spanned;

    aget-object v11, v5, v8

    invoke-interface {v10, v11}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    sub-int/2addr v10, v2

    .line 665
    .local v10, "endInPara":I
    if-gez v9, :cond_5f

    const/4 v9, 0x0

    .line 666
    :cond_5f
    iget v11, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-le v10, v11, :cond_65

    iget v10, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 667
    :cond_65
    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    invoke-static {v11, v9, v10, v7}, Ljava/util/Arrays;->fill([CIIC)V

    .line 661
    .end local v9    # "startInPara":I
    .end local v10    # "endInPara":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_47

    .line 671
    .end local v5    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v8    # "i":I
    :cond_6d
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v8, 0x1

    if-eq v4, v5, :cond_7a

    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-eq v4, v5, :cond_7a

    sget-object v5, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_8c

    :cond_7a
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    .line 674
    invoke-static {v5, v6, v9}, Landroid/text/TextUtils;->doesNotNeedBidi([CII)Z

    move-result v5

    if-eqz v5, :cond_8c

    .line 675
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$ByteArray;->clear()V

    .line 676
    iput-boolean v8, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 677
    return-void

    .line 680
    :cond_8c
    sget-object v5, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_94

    .line 681
    const/4 v5, 0x0

    move/from16 v16, v5

    .local v5, "bidiRequest":I
    goto :goto_b9

    .line 682
    .end local v5    # "bidiRequest":I
    :cond_94
    sget-object v5, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_9c

    .line 683
    const/4 v5, 0x1

    move/from16 v16, v5

    .restart local v5    # "bidiRequest":I
    goto :goto_b9

    .line 684
    .end local v5    # "bidiRequest":I
    :cond_9c
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_a5

    .line 685
    const/16 v5, 0x7e

    move/from16 v16, v5

    .restart local v5    # "bidiRequest":I
    goto :goto_b9

    .line 686
    .end local v5    # "bidiRequest":I
    :cond_a5
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    if-ne v4, v5, :cond_ae

    .line 687
    const/16 v5, 0x7f

    move/from16 v16, v5

    .restart local v5    # "bidiRequest":I
    goto :goto_b9

    .line 689
    .end local v5    # "bidiRequest":I
    :cond_ae
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget v9, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-interface {v4, v5, v6, v9}, Landroid/text/TextDirectionHeuristic;->isRtl([CII)Z

    move-result v5

    .line 690
    .local v5, "isRtl":Z
    move v9, v5

    move/from16 v16, v9

    .line 692
    .end local v5    # "isRtl":Z
    .local v16, "bidiRequest":I
    :goto_b9
    new-instance v10, Landroid/icu/text/Bidi;

    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v15, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v10, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 694
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v5, v5

    if-lez v5, :cond_10a

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    iget-object v9, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v9, v9

    sub-int/2addr v9, v8

    .line 695
    invoke-virtual {v5, v9}, Landroid/icu/text/Bidi;->getParagraphIndex(I)I

    move-result v5

    if-eqz v5, :cond_10a

    .line 703
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_da
    iget v8, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v5, v8, :cond_fb

    .line 704
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char v8, v8, v5

    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v8

    if-eqz v8, :cond_e9

    .line 706
    goto :goto_f8

    .line 708
    :cond_e9
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aget-char v8, v8, v5

    invoke-static {v8}, Landroid/icu/lang/UCharacter;->getDirection(I)I

    move-result v8

    const/4 v9, 0x7

    if-ne v8, v9, :cond_f8

    .line 710
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    aput-char v7, v8, v5

    .line 703
    :cond_f8
    :goto_f8
    add-int/lit8 v5, v5, 0x1

    goto :goto_da

    .line 713
    .end local v5    # "i":I
    :cond_fb
    new-instance v10, Landroid/icu/text/Bidi;

    iget-object v11, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    array-length v15, v5

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v10 .. v16}, Landroid/icu/text/Bidi;-><init>([CI[BIII)V

    iput-object v10, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    .line 715
    :cond_10a
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    iget v7, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    invoke-virtual {v5, v7}, Landroid/text/AutoGrowArray$ByteArray;->resize(I)V

    .line 716
    iget-object v5, v0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v5}, Landroid/text/AutoGrowArray$ByteArray;->getRawArray()[B

    move-result-object v5

    .line 717
    .local v5, "rawArray":[B
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_118
    iget v8, v0, Landroid/text/MeasuredParagraph;->mTextLength:I

    if-ge v7, v8, :cond_127

    .line 718
    iget-object v8, v0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v8, v7}, Landroid/icu/text/Bidi;->getLevelAt(I)B

    move-result v8

    aput-byte v8, v5, v7

    .line 717
    add-int/lit8 v7, v7, 0x1

    goto :goto_118

    .line 720
    .end local v7    # "i":I
    :cond_127
    iput-boolean v6, v0, Landroid/text/MeasuredParagraph;->mLtrWithoutBidi:Z

    .line 721
    return-void
.end method


# virtual methods
.method greylist-max-o breakText(IZF)I
    .registers 10
    .param p1, "limit"    # I
    .param p2, "forwards"    # Z
    .param p3, "width"    # F

    .line 894
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 895
    .local v0, "w":[F
    const/16 v1, 0x20

    const/4 v2, 0x0

    if-eqz p2, :cond_27

    .line 896
    const/4 v3, 0x0

    .line 897
    .local v3, "i":I
    :goto_c
    if-ge v3, p1, :cond_19

    .line 898
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 899
    cmpg-float v4, p3, v2

    if-gez v4, :cond_16

    goto :goto_19

    .line 900
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 902
    :cond_19
    :goto_19
    if-lez v3, :cond_26

    iget-object v2, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v4, v3, -0x1

    aget-char v2, v2, v4

    if-ne v2, v1, :cond_26

    add-int/lit8 v3, v3, -0x1

    goto :goto_19

    .line 903
    :cond_26
    return v3

    .line 905
    .end local v3    # "i":I
    :cond_27
    add-int/lit8 v3, p1, -0x1

    .line 906
    .restart local v3    # "i":I
    :goto_29
    if-ltz v3, :cond_36

    .line 907
    aget v4, v0, v3

    sub-float/2addr p3, v4

    .line 908
    cmpg-float v4, p3, v2

    if-gez v4, :cond_33

    goto :goto_36

    .line 909
    :cond_33
    add-int/lit8 v3, v3, -0x1

    goto :goto_29

    .line 911
    :cond_36
    :goto_36
    add-int/lit8 v4, p1, -0x1

    if-ge v3, v4, :cond_4d

    iget-object v4, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v4, v4, v5

    if-eq v4, v1, :cond_4a

    add-int/lit8 v4, v3, 0x1

    aget v4, v0, v4

    cmpl-float v4, v4, v2

    if-nez v4, :cond_4d

    .line 912
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 914
    :cond_4d
    sub-int v1, p1, v3

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public greylist-max-o getBounds(IILandroid/graphics/Rect;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # Landroid/graphics/Rect;

    .line 369
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getBounds(IILandroid/graphics/Rect;)V

    .line 370
    return-void
.end method

.method public blacklist getCharWidthAt(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 390
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1}, Landroid/graphics/text/MeasuredText;->getCharWidthAt(I)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getChars()[C
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mCopiedBuffer:[C

    return-object v0
.end method

.method public greylist-max-o getDirections(II)Landroid/text/Layout$Directions;
    .registers 14
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 219
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    if-nez v0, :cond_7

    .line 220
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 225
    :cond_7
    const/4 v0, 0x1

    if-ne p1, p2, :cond_19

    .line 226
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v1

    and-int/2addr v0, v1

    if-nez v0, :cond_16

    .line 227
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 229
    :cond_16
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 234
    :cond_19
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v1, p1, p2}, Landroid/icu/text/Bidi;->createLineBidi(II)Landroid/icu/text/Bidi;

    move-result-object v1

    .line 238
    .local v1, "bidi":Landroid/icu/text/Bidi;
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    if-ne v2, v0, :cond_4b

    .line 239
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v3

    if-ne v3, v0, :cond_2f

    .line 240
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-object v0

    .line 241
    :cond_2f
    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v0

    if-nez v0, :cond_38

    .line 242
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    return-object v0

    .line 244
    :cond_38
    new-instance v0, Landroid/text/Layout$Directions;

    .line 245
    invoke-virtual {v1, v2}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x1a

    sub-int v4, p2, p1

    or-int/2addr v3, v4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/Layout$Directions;-><init>([I)V

    .line 244
    return-object v0

    .line 250
    :cond_4b
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v2

    new-array v2, v2, [B

    .line 251
    .local v2, "levels":[B
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_52
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v4

    if-ge v3, v4, :cond_62

    .line 252
    invoke-virtual {v1, v3}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 251
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 254
    .end local v3    # "i":I
    :cond_62
    invoke-static {v2}, Landroid/icu/text/Bidi;->reorderVisual([B)[I

    move-result-object v3

    .line 256
    .local v3, "visualOrders":[I
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [I

    .line 257
    .local v4, "dirs":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_6f
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v6

    if-ge v5, v6, :cond_a9

    .line 259
    iget-object v6, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v6}, Landroid/icu/text/Bidi;->getBaseLevel()I

    move-result v6

    and-int/2addr v6, v0

    if-ne v6, v0, :cond_87

    .line 262
    invoke-virtual {v1}, Landroid/icu/text/Bidi;->getRunCount()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int/2addr v6, v0

    aget v6, v3, v6

    .local v6, "vIndex":I
    goto :goto_89

    .line 264
    .end local v6    # "vIndex":I
    :cond_87
    aget v6, v3, v5

    .line 268
    .restart local v6    # "vIndex":I
    :goto_89
    mul-int/lit8 v7, v5, 0x2

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunStart(I)I

    move-result v8

    aput v8, v4, v7

    .line 269
    mul-int/lit8 v7, v5, 0x2

    add-int/2addr v7, v0

    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunLevel(I)I

    move-result v8

    shl-int/lit8 v8, v8, 0x1a

    .line 270
    invoke-virtual {v1, v6}, Landroid/icu/text/Bidi;->getRunLimit(I)I

    move-result v9

    mul-int/lit8 v10, v5, 0x2

    aget v10, v4, v10

    sub-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v4, v7

    .line 257
    .end local v6    # "vIndex":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_6f

    .line 273
    .end local v5    # "i":I
    :cond_a9
    new-instance v0, Landroid/text/Layout$Directions;

    invoke-direct {v0, v4}, Landroid/text/Layout$Directions;-><init>([I)V

    return-object v0
.end method

.method public greylist-max-o getFontMetrics()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    .line 321
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public blacklist getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    .line 380
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/text/MeasuredText;->getFontMetricsInt(IILandroid/graphics/Paint$FontMetricsInt;)V

    .line 381
    return-void
.end method

.method public blacklist getMeasuredText()Landroid/graphics/text/MeasuredText;
    .registers 2

    .line 332
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    return-object v0
.end method

.method public greylist-max-o getMemoryUsage()I
    .registers 2

    .line 938
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0}, Landroid/graphics/text/MeasuredText;->getMemoryUsage()I

    move-result v0

    return v0
.end method

.method public greylist-max-o getParagraphDir()I
    .registers 3

    .line 203
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 204
    return v1

    .line 206
    :cond_6
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mBidi:Landroid/icu/text/Bidi;

    invoke-virtual {v0}, Landroid/icu/text/Bidi;->getParaLevel()B

    move-result v0

    and-int/2addr v0, v1

    if-nez v0, :cond_10

    .line 207
    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    .line 206
    :goto_11
    return v1
.end method

.method public greylist-max-o getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;
    .registers 2

    .line 308
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    return-object v0
.end method

.method public greylist-max-o getTextLength()I
    .registers 2

    .line 183
    iget v0, p0, Landroid/text/MeasuredParagraph;->mTextLength:I

    return v0
.end method

.method public greylist-max-o getWholeWidth()F
    .registers 2

    .line 284
    iget v0, p0, Landroid/text/MeasuredParagraph;->mWholeWidth:F

    return v0
.end method

.method public greylist-max-o getWidth(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 346
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    if-nez v0, :cond_15

    .line 348
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v0

    .line 349
    .local v0, "widths":[F
    const/4 v1, 0x0

    .line 350
    .local v1, "r":F
    move v2, p1

    .local v2, "i":I
    :goto_c
    if-ge v2, p2, :cond_14

    .line 351
    aget v3, v0, v2

    add-float/2addr v1, v3

    .line 350
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 353
    .end local v2    # "i":I
    :cond_14
    return v1

    .line 356
    .end local v0    # "widths":[F
    .end local v1    # "r":F
    :cond_15
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mMeasuredText:Landroid/graphics/text/MeasuredText;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/text/MeasuredText;->getWidth(II)F

    move-result v0

    return v0
.end method

.method public greylist-max-o getWidths()Landroid/text/AutoGrowArray$FloatArray;
    .registers 2

    .line 295
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    return-object v0
.end method

.method greylist-max-o measure(II)F
    .registers 7
    .param p1, "start"    # I
    .param p2, "limit"    # I

    .line 925
    const/4 v0, 0x0

    .line 926
    .local v0, "width":F
    iget-object v1, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v1}, Landroid/text/AutoGrowArray$FloatArray;->getRawArray()[F

    move-result-object v1

    .line 927
    .local v1, "w":[F
    move v2, p1

    .local v2, "i":I
    :goto_8
    if-ge v2, p2, :cond_10

    .line 928
    aget v3, v1, v2

    add-float/2addr v0, v3

    .line 927
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 930
    .end local v2    # "i":I
    :cond_10
    return v0
.end method

.method public greylist-max-o recycle()V
    .registers 2

    .line 91
    invoke-virtual {p0}, Landroid/text/MeasuredParagraph;->release()V

    .line 92
    sget-object v0, Landroid/text/MeasuredParagraph;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public greylist-max-o release()V
    .registers 2

    .line 154
    invoke-direct {p0}, Landroid/text/MeasuredParagraph;->reset()V

    .line 155
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mLevels:Landroid/text/AutoGrowArray$ByteArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$ByteArray;->clearWithReleasingLargeArray()V

    .line 156
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mWidths:Landroid/text/AutoGrowArray$FloatArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$FloatArray;->clearWithReleasingLargeArray()V

    .line 157
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mFontMetrics:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 158
    iget-object v0, p0, Landroid/text/MeasuredParagraph;->mSpanEndCache:Landroid/text/AutoGrowArray$IntArray;

    invoke-virtual {v0}, Landroid/text/AutoGrowArray$IntArray;->clearWithReleasingLargeArray()V

    .line 159
    return-void
.end method
