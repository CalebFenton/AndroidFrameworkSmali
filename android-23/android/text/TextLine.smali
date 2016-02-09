.class Landroid/text/TextLine;
.super Ljava/lang/Object;
.source "TextLine.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sCached:[Landroid/text/TextLine;


# instance fields
.field private final mCharacterStyleSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/CharacterStyle;",
            ">;"
        }
    .end annotation
.end field

.field private mChars:[C

.field private mCharsValid:Z

.field private mDir:I

.field private mDirections:Landroid/text/Layout$Directions;

.field private mHasTabs:Z

.field private mLen:I

.field private final mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/MetricAffectingSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private final mReplacementSpanSpanSet:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/ReplacementSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mSpanned:Landroid/text/Spanned;

.field private mStart:I

.field private mTabs:Landroid/text/Layout$TabStops;

.field private mText:Ljava/lang/CharSequence;

.field private final mWorkPaint:Landroid/text/TextPaint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 67
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Landroid/text/TextLine;

    #@3
    sput-object v0, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@5
    .line 45
    return-void
.end method

.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 59
    new-instance v0, Landroid/text/TextPaint;

    #@5
    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    #@8
    iput-object v0, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@a
    .line 61
    new-instance v0, Landroid/text/SpanSet;

    #@c
    const-class v1, Landroid/text/style/MetricAffectingSpan;

    #@e
    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    #@11
    .line 60
    iput-object v0, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@13
    .line 63
    new-instance v0, Landroid/text/SpanSet;

    #@15
    const-class v1, Landroid/text/style/CharacterStyle;

    #@17
    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    #@1a
    .line 62
    iput-object v0, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@1c
    .line 65
    new-instance v0, Landroid/text/SpanSet;

    #@1e
    const-class v1, Landroid/text/style/ReplacementSpan;

    #@20
    invoke-direct {v0, v1}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    #@23
    .line 64
    iput-object v0, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    #@25
    .line 45
    return-void
.end method

.method private drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F
    .locals 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "start"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "x"    # F
    .param p6, "top"    # I
    .param p7, "y"    # I
    .param p8, "bottom"    # I
    .param p9, "needWidth"    # Z

    #@0
    .prologue
    .line 391
    iget v1, p0, Landroid/text/TextLine;->mDir:I

    #@2
    const/4 v2, 0x1

    #@3
    if-ne v1, v2, :cond_0

    #@5
    const/4 v1, 0x1

    #@6
    :goto_0
    move/from16 v0, p4

    #@8
    if-ne v1, v0, :cond_1

    #@a
    .line 392
    const/4 v6, 0x0

    #@b
    move-object v1, p0

    #@c
    move/from16 v2, p2

    #@e
    move/from16 v3, p3

    #@10
    move/from16 v4, p3

    #@12
    move/from16 v5, p4

    #@14
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@17
    move-result v1

    #@18
    neg-float v13, v1

    #@19
    .line 393
    .local v13, "w":F
    add-float v7, p5, v13

    #@1b
    .line 394
    const/4 v11, 0x0

    #@1c
    const/4 v12, 0x0

    #@1d
    move-object v1, p0

    #@1e
    move/from16 v2, p2

    #@20
    move/from16 v3, p3

    #@22
    move/from16 v4, p3

    #@24
    move/from16 v5, p4

    #@26
    move-object v6, p1

    #@27
    move/from16 v8, p6

    #@29
    move/from16 v9, p7

    #@2b
    move/from16 v10, p8

    #@2d
    .line 393
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@30
    .line 395
    return v13

    #@31
    .line 391
    .end local v13    # "w":F
    :cond_0
    const/4 v1, 0x0

    #@32
    goto :goto_0

    #@33
    .line 399
    :cond_1
    const/4 v11, 0x0

    #@34
    move-object v1, p0

    #@35
    move/from16 v2, p2

    #@37
    move/from16 v3, p3

    #@39
    move/from16 v4, p3

    #@3b
    move/from16 v5, p4

    #@3d
    move-object v6, p1

    #@3e
    move/from16 v7, p5

    #@40
    move/from16 v8, p6

    #@42
    move/from16 v9, p7

    #@44
    move/from16 v10, p8

    #@46
    move/from16 v12, p9

    #@48
    .line 398
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@4b
    move-result v1

    #@4c
    return v1
.end method

.method private drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V
    .locals 18
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "wp"    # Landroid/text/TextPaint;
    .param p3, "start"    # I
    .param p4, "end"    # I
    .param p5, "contextStart"    # I
    .param p6, "contextEnd"    # I
    .param p7, "runIsRtl"    # Z
    .param p8, "x"    # F
    .param p9, "y"    # I

    #@0
    .prologue
    .line 984
    move-object/from16 v0, p0

    #@2
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 985
    sub-int v4, p4, p3

    #@8
    .line 986
    .local v4, "count":I
    sub-int v6, p6, p5

    #@a
    .line 987
    .local v6, "contextCount":I
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    #@e
    .line 988
    move/from16 v0, p9

    #@10
    int-to-float v8, v0

    #@11
    move-object/from16 v1, p1

    #@13
    move/from16 v3, p3

    #@15
    move/from16 v5, p5

    #@17
    move/from16 v7, p8

    #@19
    move/from16 v9, p7

    #@1b
    move-object/from16 v10, p2

    #@1d
    .line 987
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    #@20
    .line 982
    .end local v4    # "count":I
    .end local v6    # "contextCount":I
    :goto_0
    return-void

    #@21
    .line 990
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget v0, v0, Landroid/text/TextLine;->mStart:I

    #@25
    move/from16 v17, v0

    #@27
    .line 991
    .local v17, "delta":I
    move-object/from16 v0, p0

    #@29
    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@2b
    add-int v9, v17, p3

    #@2d
    add-int v10, v17, p4

    #@2f
    .line 992
    add-int v11, v17, p5

    #@31
    add-int v12, v17, p6

    #@33
    move/from16 v0, p9

    #@35
    int-to-float v14, v0

    #@36
    move-object/from16 v7, p1

    #@38
    move/from16 v13, p8

    #@3a
    move/from16 v15, p7

    #@3c
    move-object/from16 v16, p2

    #@3e
    .line 991
    invoke-virtual/range {v7 .. v16}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    #@41
    goto :goto_0
.end method

.method private static expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V
    .locals 6
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "wp"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 685
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@2
    .line 686
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@4
    .line 687
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@6
    .line 688
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@8
    .line 689
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@a
    .line 691
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@d
    move-object v0, p0

    #@e
    .line 693
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    #@11
    .line 684
    return-void
.end method

.method private getOffsetBeforeAfter(IIIZIZ)I
    .locals 23
    .param p1, "runIndex"    # I
    .param p2, "runStart"    # I
    .param p3, "runLimit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "offset"    # I
    .param p6, "after"    # Z

    #@0
    .prologue
    .line 618
    if-ltz p1, :cond_0

    #@2
    if-eqz p6, :cond_1

    #@4
    move-object/from16 v0, p0

    #@6
    iget v3, v0, Landroid/text/TextLine;->mLen:I

    #@8
    :goto_0
    move/from16 v0, p5

    #@a
    if-ne v0, v3, :cond_3

    #@c
    .line 622
    :cond_0
    if-eqz p6, :cond_2

    #@e
    .line 623
    move-object/from16 v0, p0

    #@10
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@12
    move-object/from16 v0, p0

    #@14
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@16
    add-int v5, v5, p5

    #@18
    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    #@1b
    move-result v3

    #@1c
    move-object/from16 v0, p0

    #@1e
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@20
    sub-int/2addr v3, v5

    #@21
    return v3

    #@22
    .line 618
    :cond_1
    const/4 v3, 0x0

    #@23
    goto :goto_0

    #@24
    .line 625
    :cond_2
    move-object/from16 v0, p0

    #@26
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@28
    move-object/from16 v0, p0

    #@2a
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@2c
    add-int v5, v5, p5

    #@2e
    invoke-static {v3, v5}, Landroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    #@31
    move-result v3

    #@32
    move-object/from16 v0, p0

    #@34
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@36
    sub-int/2addr v3, v5

    #@37
    return v3

    #@38
    .line 628
    :cond_3
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@3c
    .line 629
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@40
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@43
    .line 631
    move/from16 v4, p2

    #@45
    .line 633
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@49
    if-nez v3, :cond_5

    #@4b
    .line 634
    move/from16 v20, p3

    #@4d
    .line 670
    .local v20, "spanLimit":I
    :cond_4
    if-eqz p4, :cond_b

    #@4f
    const/4 v6, 0x1

    #@50
    .line 671
    .local v6, "dir":I
    :goto_1
    if-eqz p6, :cond_c

    #@52
    const/4 v8, 0x0

    #@53
    .line 672
    .local v8, "cursorOpt":I
    :goto_2
    move-object/from16 v0, p0

    #@55
    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    #@57
    if-eqz v3, :cond_d

    #@59
    .line 673
    move-object/from16 v0, p0

    #@5b
    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    #@5d
    sub-int v5, v20, v4

    #@5f
    move/from16 v7, p5

    #@61
    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->getTextRunCursor([CIIIII)I

    #@64
    move-result v3

    #@65
    return v3

    #@66
    .line 636
    .end local v6    # "dir":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_5
    if-eqz p6, :cond_6

    #@68
    add-int/lit8 v22, p5, 0x1

    #@6a
    .line 637
    .local v22, "target":I
    :goto_3
    move-object/from16 v0, p0

    #@6c
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    #@6e
    add-int v17, v3, p3

    #@70
    .line 639
    .local v17, "limit":I
    :goto_4
    move-object/from16 v0, p0

    #@72
    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@74
    move-object/from16 v0, p0

    #@76
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@78
    add-int/2addr v5, v4

    #@79
    .line 640
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    #@7b
    .line 639
    move/from16 v0, v17

    #@7d
    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@80
    move-result v3

    #@81
    .line 640
    move-object/from16 v0, p0

    #@83
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@85
    .line 639
    sub-int v20, v3, v5

    #@87
    .line 641
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    #@89
    move/from16 v1, v22

    #@8b
    if-lt v0, v1, :cond_7

    #@8d
    .line 647
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@91
    move-object/from16 v0, p0

    #@93
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@95
    add-int/2addr v5, v4

    #@96
    .line 648
    move-object/from16 v0, p0

    #@98
    iget v7, v0, Landroid/text/TextLine;->mStart:I

    #@9a
    add-int v7, v7, v20

    #@9c
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@9e
    .line 647
    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a1
    move-result-object v21

    #@a2
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    #@a4
    .line 649
    .local v21, "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, p0

    #@a6
    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@a8
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    #@aa
    move-object/from16 v0, v21

    #@ac
    invoke-static {v0, v3, v5}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    #@af
    move-result-object v21

    #@b0
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    #@b2
    .line 651
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    #@b4
    array-length v3, v0

    #@b5
    if-lez v3, :cond_4

    #@b7
    .line 652
    const/16 v18, 0x0

    #@b9
    .line 653
    .local v18, "replacement":Landroid/text/style/ReplacementSpan;
    const/16 v16, 0x0

    #@bb
    .end local v18    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v16, "j":I
    :goto_5
    move-object/from16 v0, v21

    #@bd
    array-length v3, v0

    #@be
    move/from16 v0, v16

    #@c0
    if-ge v0, v3, :cond_9

    #@c2
    .line 654
    aget-object v19, v21, v16

    #@c4
    .line 655
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    #@c6
    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    #@c8
    if-eqz v3, :cond_8

    #@ca
    move-object/from16 v18, v19

    #@cc
    .line 656
    check-cast v18, Landroid/text/style/ReplacementSpan;

    #@ce
    .line 653
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@d0
    goto :goto_5

    #@d1
    .line 636
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .end local v20    # "spanLimit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_6
    move/from16 v22, p5

    #@d3
    .restart local v22    # "target":I
    goto :goto_3

    #@d4
    .line 644
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    :cond_7
    move/from16 v4, v20

    #@d6
    goto :goto_4

    #@d7
    .line 658
    .restart local v16    # "j":I
    .restart local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_8
    move-object/from16 v0, v19

    #@d9
    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    #@dc
    goto :goto_6

    #@dd
    .line 662
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_9
    if-eqz v18, :cond_4

    #@df
    .line 665
    if-eqz p6, :cond_a

    #@e1
    .end local v20    # "spanLimit":I
    :goto_7
    return v20

    #@e2
    .restart local v20    # "spanLimit":I
    :cond_a
    move/from16 v20, v4

    #@e4
    goto :goto_7

    #@e5
    .line 670
    .end local v16    # "j":I
    .end local v17    # "limit":I
    .end local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    .end local v22    # "target":I
    :cond_b
    const/4 v6, 0x0

    #@e6
    .restart local v6    # "dir":I
    goto/16 :goto_1

    #@e8
    .line 671
    :cond_c
    const/4 v8, 0x2

    #@e9
    .restart local v8    # "cursorOpt":I
    goto/16 :goto_2

    #@eb
    .line 676
    :cond_d
    move-object/from16 v0, p0

    #@ed
    iget-object v10, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@ef
    move-object/from16 v0, p0

    #@f1
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    #@f3
    add-int v11, v3, v4

    #@f5
    .line 677
    move-object/from16 v0, p0

    #@f7
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    #@f9
    add-int v12, v3, v20

    #@fb
    move-object/from16 v0, p0

    #@fd
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    #@ff
    add-int v14, v3, p5

    #@101
    move-object v9, v2

    #@102
    move v13, v6

    #@103
    move v15, v8

    #@104
    .line 676
    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    #@107
    move-result v3

    #@108
    .line 677
    move-object/from16 v0, p0

    #@10a
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@10c
    .line 676
    sub-int/2addr v3, v5

    #@10d
    return v3
.end method

.method private handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 24
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

    #@0
    .prologue
    .line 820
    const/16 v23, 0x0

    #@2
    .line 822
    .local v23, "ret":F
    move-object/from16 v0, p0

    #@4
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    #@6
    add-int v4, v1, p3

    #@8
    .line 823
    .local v4, "textStart":I
    move-object/from16 v0, p0

    #@a
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    #@c
    add-int v5, v1, p4

    #@e
    .line 825
    .local v5, "textLimit":I
    if-nez p12, :cond_0

    #@10
    if-eqz p6, :cond_2

    #@12
    if-eqz p5, :cond_2

    #@14
    .line 826
    :cond_0
    const/4 v7, 0x0

    #@15
    .line 827
    .local v7, "previousTop":I
    const/4 v8, 0x0

    #@16
    .line 828
    .local v8, "previousAscent":I
    const/4 v9, 0x0

    #@17
    .line 829
    .local v9, "previousDescent":I
    const/4 v10, 0x0

    #@18
    .line 830
    .local v10, "previousBottom":I
    const/4 v11, 0x0

    #@19
    .line 832
    .local v11, "previousLeading":I
    if-eqz p11, :cond_6

    #@1b
    const/16 v22, 0x1

    #@1d
    .line 834
    .local v22, "needUpdateMetrics":Z
    :goto_0
    if-eqz v22, :cond_1

    #@1f
    .line 835
    move-object/from16 v0, p11

    #@21
    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@23
    .line 836
    move-object/from16 v0, p11

    #@25
    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@27
    .line 837
    move-object/from16 v0, p11

    #@29
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@2b
    .line 838
    move-object/from16 v0, p11

    #@2d
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@2f
    .line 839
    move-object/from16 v0, p11

    #@31
    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@33
    .line 842
    :cond_1
    move-object/from16 v0, p0

    #@35
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@37
    move-object/from16 v1, p1

    #@39
    move-object/from16 v2, p2

    #@3b
    move-object/from16 v6, p11

    #@3d
    invoke-virtual/range {v1 .. v6}, Landroid/text/style/ReplacementSpan;->getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I

    #@40
    move-result v1

    #@41
    int-to-float v0, v1

    #@42
    move/from16 v23, v0

    #@44
    .line 844
    if-eqz v22, :cond_2

    #@46
    move-object/from16 v6, p11

    #@48
    .line 845
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    #@4b
    .line 850
    .end local v7    # "previousTop":I
    .end local v8    # "previousAscent":I
    .end local v9    # "previousDescent":I
    .end local v10    # "previousBottom":I
    .end local v11    # "previousLeading":I
    .end local v22    # "needUpdateMetrics":Z
    :cond_2
    if-eqz p6, :cond_4

    #@4d
    .line 851
    if-eqz p5, :cond_3

    #@4f
    .line 852
    sub-float p7, p7, v23

    #@51
    .line 854
    :cond_3
    move-object/from16 v0, p0

    #@53
    iget-object v14, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@55
    move-object/from16 v12, p1

    #@57
    move-object/from16 v13, p6

    #@59
    move v15, v4

    #@5a
    move/from16 v16, v5

    #@5c
    move/from16 v17, p7

    #@5e
    move/from16 v18, p8

    #@60
    move/from16 v19, p9

    #@62
    move/from16 v20, p10

    #@64
    move-object/from16 v21, p2

    #@66
    invoke-virtual/range {v12 .. v21}, Landroid/text/style/ReplacementSpan;->draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V

    #@69
    .line 858
    :cond_4
    if-eqz p5, :cond_5

    #@6b
    move/from16 v0, v23

    #@6d
    neg-float v0, v0

    #@6e
    move/from16 v23, v0

    #@70
    .end local v23    # "ret":F
    :cond_5
    return v23

    #@71
    .line 832
    .restart local v7    # "previousTop":I
    .restart local v8    # "previousAscent":I
    .restart local v9    # "previousDescent":I
    .restart local v10    # "previousBottom":I
    .restart local v11    # "previousLeading":I
    .restart local v23    # "ret":F
    :cond_6
    const/16 v22, 0x0

    #@73
    .restart local v22    # "needUpdateMetrics":Z
    goto :goto_0
.end method

.method private handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 29
    .param p1, "start"    # I
    .param p2, "measureLimit"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "c"    # Landroid/graphics/Canvas;
    .param p6, "x"    # F
    .param p7, "top"    # I
    .param p8, "y"    # I
    .param p9, "bottom"    # I
    .param p10, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p11, "needWidth"    # Z

    #@0
    .prologue
    .line 885
    move/from16 v0, p1

    #@2
    move/from16 v1, p2

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 886
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@a
    .line 887
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@e
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@11
    .line 888
    if-eqz p10, :cond_0

    #@13
    .line 889
    move-object/from16 v0, p10

    #@15
    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@18
    .line 891
    :cond_0
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 894
    .end local v3    # "wp":Landroid/text/TextPaint;
    :cond_1
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@1e
    if-nez v2, :cond_4

    #@20
    .line 895
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@24
    .line 896
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@28
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@2b
    .line 897
    move/from16 v5, p2

    #@2d
    .line 899
    .local v5, "mlimit":I
    if-nez p11, :cond_2

    #@2f
    move/from16 v0, p2

    #@31
    if-ge v5, v0, :cond_3

    #@33
    :cond_2
    const/4 v15, 0x1

    #@34
    :goto_0
    move-object/from16 v2, p0

    #@36
    move/from16 v4, p1

    #@38
    move/from16 v6, p1

    #@3a
    move/from16 v7, p3

    #@3c
    move/from16 v8, p4

    #@3e
    move-object/from16 v9, p5

    #@40
    move/from16 v10, p6

    #@42
    move/from16 v11, p7

    #@44
    move/from16 v12, p8

    #@46
    move/from16 v13, p9

    #@48
    move-object/from16 v14, p10

    #@4a
    .line 898
    invoke-direct/range {v2 .. v15}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@4d
    move-result v2

    #@4e
    return v2

    #@4f
    .line 899
    :cond_3
    const/4 v15, 0x0

    #@50
    goto :goto_0

    #@51
    .line 902
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    :cond_4
    move-object/from16 v0, p0

    #@53
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@55
    move-object/from16 v0, p0

    #@57
    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@59
    move-object/from16 v0, p0

    #@5b
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@5d
    add-int v6, v6, p1

    #@5f
    move-object/from16 v0, p0

    #@61
    iget v8, v0, Landroid/text/TextLine;->mStart:I

    #@63
    add-int v8, v8, p3

    #@65
    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    #@68
    .line 903
    move-object/from16 v0, p0

    #@6a
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@6c
    move-object/from16 v0, p0

    #@6e
    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@70
    move-object/from16 v0, p0

    #@72
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@74
    add-int v6, v6, p1

    #@76
    move-object/from16 v0, p0

    #@78
    iget v8, v0, Landroid/text/TextLine;->mStart:I

    #@7a
    add-int v8, v8, p3

    #@7c
    invoke-virtual {v2, v4, v6, v8}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    #@7f
    .line 910
    move/from16 v26, p6

    #@81
    .line 911
    .local v26, "originalX":F
    move/from16 v9, p1

    #@83
    .local v9, "i":I
    :goto_1
    move/from16 v0, p2

    #@85
    if-ge v9, v0, :cond_13

    #@87
    .line 912
    move-object/from16 v0, p0

    #@89
    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@8b
    .line 913
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@8d
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@8f
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@92
    .line 915
    move-object/from16 v0, p0

    #@94
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@96
    move-object/from16 v0, p0

    #@98
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@9a
    add-int/2addr v4, v9

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@9f
    add-int v6, v6, p3

    #@a1
    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    #@a4
    move-result v2

    #@a5
    .line 916
    move-object/from16 v0, p0

    #@a7
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@a9
    .line 915
    sub-int v24, v2, v4

    #@ab
    .line 917
    .local v24, "inext":I
    move/from16 v0, v24

    #@ad
    move/from16 v1, p2

    #@af
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@b2
    move-result v5

    #@b3
    .line 919
    .restart local v5    # "mlimit":I
    const/4 v7, 0x0

    #@b4
    .line 921
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v12, 0x0

    #@b5
    .end local v7    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v12, "j":I
    :goto_2
    move-object/from16 v0, p0

    #@b7
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@b9
    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    #@bb
    if-ge v12, v2, :cond_8

    #@bd
    .line 924
    move-object/from16 v0, p0

    #@bf
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@c1
    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    #@c3
    aget v2, v2, v12

    #@c5
    move-object/from16 v0, p0

    #@c7
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@c9
    add-int/2addr v4, v5

    #@ca
    if-ge v2, v4, :cond_5

    #@cc
    .line 925
    move-object/from16 v0, p0

    #@ce
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@d0
    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    #@d2
    aget v2, v2, v12

    #@d4
    move-object/from16 v0, p0

    #@d6
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@d8
    add-int/2addr v4, v9

    #@d9
    if-gt v2, v4, :cond_6

    #@db
    .line 921
    :cond_5
    :goto_3
    add-int/lit8 v12, v12, 0x1

    #@dd
    goto :goto_2

    #@de
    .line 926
    :cond_6
    move-object/from16 v0, p0

    #@e0
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@e2
    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@e4
    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    #@e6
    aget-object v28, v2, v12

    #@e8
    .line 927
    .local v28, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    #@ea
    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    #@ec
    if-eqz v2, :cond_7

    #@ee
    move-object/from16 v7, v28

    #@f0
    .line 928
    check-cast v7, Landroid/text/style/ReplacementSpan;

    #@f2
    .local v7, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_3

    #@f3
    .line 932
    .end local v7    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_7
    move-object/from16 v0, v28

    #@f5
    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    #@f8
    goto :goto_3

    #@f9
    .line 936
    .end local v28    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v7, :cond_c

    #@fb
    .line 938
    if-nez p11, :cond_9

    #@fd
    move/from16 v0, p2

    #@ff
    if-ge v5, v0, :cond_b

    #@101
    :cond_9
    const/16 v18, 0x1

    #@103
    :goto_4
    move-object/from16 v6, p0

    #@105
    move-object v8, v3

    #@106
    move v10, v5

    #@107
    move/from16 v11, p4

    #@109
    move-object/from16 v12, p5

    #@10b
    move/from16 v13, p6

    #@10d
    move/from16 v14, p7

    #@10f
    move/from16 v15, p8

    #@111
    move/from16 v16, p9

    #@113
    move-object/from16 v17, p10

    #@115
    .line 937
    invoke-direct/range {v6 .. v18}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@118
    .end local v12    # "j":I
    move-result v2

    #@119
    add-float p6, p6, v2

    #@11b
    .line 911
    :cond_a
    move/from16 v9, v24

    #@11d
    goto/16 :goto_1

    #@11f
    .line 938
    .restart local v12    # "j":I
    :cond_b
    const/16 v18, 0x0

    #@121
    goto :goto_4

    #@122
    .line 942
    :cond_c
    move v12, v9

    #@123
    :goto_5
    if-ge v12, v5, :cond_a

    #@125
    .line 943
    move-object/from16 v0, p0

    #@127
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@129
    move-object/from16 v0, p0

    #@12b
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@12d
    add-int/2addr v4, v12

    #@12e
    move-object/from16 v0, p0

    #@130
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@132
    add-int/2addr v6, v5

    #@133
    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    #@136
    move-result v2

    #@137
    .line 944
    move-object/from16 v0, p0

    #@139
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@13b
    .line 943
    sub-int v13, v2, v4

    #@13d
    .line 946
    .local v13, "jnext":I
    move-object/from16 v0, p0

    #@13f
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@141
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@144
    .line 947
    const/16 v25, 0x0

    #@146
    .local v25, "k":I
    :goto_6
    move-object/from16 v0, p0

    #@148
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@14a
    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    #@14c
    move/from16 v0, v25

    #@14e
    if-ge v0, v2, :cond_f

    #@150
    .line 949
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@154
    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    #@156
    aget v2, v2, v25

    #@158
    move-object/from16 v0, p0

    #@15a
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@15c
    add-int/2addr v4, v13

    #@15d
    if-ge v2, v4, :cond_d

    #@15f
    .line 950
    move-object/from16 v0, p0

    #@161
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@163
    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    #@165
    aget v2, v2, v25

    #@167
    move-object/from16 v0, p0

    #@169
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@16b
    add-int/2addr v4, v12

    #@16c
    if-gt v2, v4, :cond_e

    #@16e
    .line 947
    :cond_d
    :goto_7
    add-int/lit8 v25, v25, 0x1

    #@170
    goto :goto_6

    #@171
    .line 952
    :cond_e
    move-object/from16 v0, p0

    #@173
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@175
    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@177
    check-cast v2, [Landroid/text/style/CharacterStyle;

    #@179
    aget-object v27, v2, v25

    #@17b
    .line 953
    .local v27, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v27

    #@17d
    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    #@180
    goto :goto_7

    #@181
    .line 957
    .end local v27    # "span":Landroid/text/style/CharacterStyle;
    :cond_f
    move-object/from16 v0, p0

    #@183
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    #@185
    if-ge v13, v2, :cond_10

    #@187
    .line 958
    const/4 v2, 0x0

    #@188
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    #@18b
    .line 961
    :cond_10
    if-nez p11, :cond_11

    #@18d
    move/from16 v0, p2

    #@18f
    if-ge v13, v0, :cond_12

    #@191
    :cond_11
    const/16 v23, 0x1

    #@193
    :goto_8
    move-object/from16 v10, p0

    #@195
    move-object v11, v3

    #@196
    move v14, v9

    #@197
    move/from16 v15, v24

    #@199
    move/from16 v16, p4

    #@19b
    move-object/from16 v17, p5

    #@19d
    move/from16 v18, p6

    #@19f
    move/from16 v19, p7

    #@1a1
    move/from16 v20, p8

    #@1a3
    move/from16 v21, p9

    #@1a5
    move-object/from16 v22, p10

    #@1a7
    .line 960
    invoke-direct/range {v10 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@1aa
    move-result v2

    #@1ab
    add-float p6, p6, v2

    #@1ad
    .line 942
    move v12, v13

    #@1ae
    goto/16 :goto_5

    #@1b0
    .line 961
    :cond_12
    const/16 v23, 0x0

    #@1b2
    goto :goto_8

    #@1b3
    .line 965
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v5    # "mlimit":I
    .end local v12    # "j":I
    .end local v13    # "jnext":I
    .end local v24    # "inext":I
    .end local v25    # "k":I
    :cond_13
    sub-float v2, p6, v26

    #@1b5
    return v2
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F
    .locals 21
    .param p1, "wp"    # Landroid/text/TextPaint;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "contextStart"    # I
    .param p5, "contextEnd"    # I
    .param p6, "runIsRtl"    # Z
    .param p7, "c"    # Landroid/graphics/Canvas;
    .param p8, "x"    # F
    .param p9, "top"    # I
    .param p10, "y"    # I
    .param p11, "bottom"    # I
    .param p12, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p13, "needWidth"    # Z

    #@0
    .prologue
    .line 730
    if-eqz p12, :cond_0

    #@2
    .line 731
    move-object/from16 v0, p12

    #@4
    move-object/from16 v1, p1

    #@6
    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@9
    .line 734
    :cond_0
    sub-int v20, p3, p2

    #@b
    .line 736
    .local v20, "runLen":I
    if-nez v20, :cond_1

    #@d
    .line 737
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 740
    :cond_1
    const/16 v19, 0x0

    #@11
    .line 742
    .local v19, "ret":F
    if-nez p13, :cond_2

    #@13
    if-eqz p7, :cond_3

    #@15
    move-object/from16 v0, p1

    #@17
    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    #@19
    if-nez v2, :cond_2

    #@1b
    move-object/from16 v0, p1

    #@1d
    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    #@1f
    if-eqz v2, :cond_9

    #@21
    .line 743
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@23
    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    #@25
    if-eqz v2, :cond_a

    #@27
    .line 744
    move-object/from16 v0, p0

    #@29
    iget-object v3, v0, Landroid/text/TextLine;->mChars:[C

    #@2b
    move-object/from16 v2, p1

    #@2d
    move/from16 v4, p2

    #@2f
    move/from16 v5, p3

    #@31
    move/from16 v6, p4

    #@33
    move/from16 v7, p5

    #@35
    move/from16 v8, p6

    #@37
    move/from16 v9, p3

    #@39
    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    #@3c
    move-result v19

    #@3d
    .line 753
    :cond_3
    :goto_1
    if-eqz p7, :cond_7

    #@3f
    .line 754
    if-eqz p6, :cond_4

    #@41
    .line 755
    sub-float p8, p8, v19

    #@43
    .line 758
    :cond_4
    move-object/from16 v0, p1

    #@45
    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    #@47
    if-eqz v2, :cond_5

    #@49
    .line 759
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    #@4c
    move-result v17

    #@4d
    .line 760
    .local v17, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    #@50
    move-result-object v18

    #@51
    .line 762
    .local v18, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    #@53
    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    #@5a
    .line 763
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@5c
    move-object/from16 v0, p1

    #@5e
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@61
    .line 764
    move/from16 v0, p9

    #@63
    int-to-float v4, v0

    #@64
    add-float v5, p8, v19

    #@66
    move/from16 v0, p11

    #@68
    int-to-float v6, v0

    #@69
    move-object/from16 v2, p7

    #@6b
    move/from16 v3, p8

    #@6d
    move-object/from16 v7, p1

    #@6f
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@72
    .line 766
    move-object/from16 v0, p1

    #@74
    move-object/from16 v1, v18

    #@76
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@79
    .line 767
    move-object/from16 v0, p1

    #@7b
    move/from16 v1, v17

    #@7d
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@80
    .line 770
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_5
    move-object/from16 v0, p1

    #@82
    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    #@84
    if-eqz v2, :cond_6

    #@86
    .line 772
    move-object/from16 v0, p1

    #@88
    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    #@8a
    add-int v2, v2, p10

    #@8c
    int-to-float v2, v2

    #@8d
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getTextSize()F

    #@90
    move-result v3

    #@91
    const v5, 0x3de38e39

    #@94
    mul-float/2addr v3, v5

    #@95
    add-float v4, v2, v3

    #@97
    .line 774
    .local v4, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    #@9a
    move-result v17

    #@9b
    .line 775
    .restart local v17    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    #@9e
    move-result-object v18

    #@9f
    .line 776
    .restart local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    #@a2
    move-result v16

    #@a3
    .line 778
    .local v16, "previousAntiAlias":Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@aa
    .line 779
    const/4 v2, 0x1

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@b0
    .line 781
    move-object/from16 v0, p1

    #@b2
    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    #@b9
    .line 782
    add-float v5, p8, v19

    #@bb
    move-object/from16 v0, p1

    #@bd
    iget v2, v0, Landroid/text/TextPaint;->underlineThickness:F

    #@bf
    add-float v6, v4, v2

    #@c1
    move-object/from16 v2, p7

    #@c3
    move/from16 v3, p8

    #@c5
    move-object/from16 v7, p1

    #@c7
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    #@ca
    .line 784
    move-object/from16 v0, p1

    #@cc
    move-object/from16 v1, v18

    #@ce
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@d1
    .line 785
    move-object/from16 v0, p1

    #@d3
    move/from16 v1, v17

    #@d5
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@d8
    .line 786
    move-object/from16 v0, p1

    #@da
    move/from16 v1, v16

    #@dc
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@df
    .line 790
    .end local v4    # "underlineTop":F
    .end local v16    # "previousAntiAlias":Z
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_6
    move-object/from16 v0, p1

    #@e1
    iget v2, v0, Landroid/text/TextPaint;->baselineShift:I

    #@e3
    add-int v14, p10, v2

    #@e5
    move-object/from16 v5, p0

    #@e7
    move-object/from16 v6, p7

    #@e9
    move-object/from16 v7, p1

    #@eb
    move/from16 v8, p2

    #@ed
    move/from16 v9, p3

    #@ef
    move/from16 v10, p4

    #@f1
    move/from16 v11, p5

    #@f3
    move/from16 v12, p6

    #@f5
    move/from16 v13, p8

    #@f7
    .line 789
    invoke-direct/range {v5 .. v14}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    #@fa
    .line 793
    :cond_7
    if-eqz p6, :cond_8

    #@fc
    move/from16 v0, v19

    #@fe
    neg-float v0, v0

    #@ff
    move/from16 v19, v0

    #@101
    .end local v19    # "ret":F
    :cond_8
    return v19

    #@102
    .line 742
    .restart local v19    # "ret":F
    :cond_9
    if-eqz p6, :cond_3

    #@104
    goto/16 :goto_0

    #@106
    .line 747
    :cond_a
    move-object/from16 v0, p0

    #@108
    iget v15, v0, Landroid/text/TextLine;->mStart:I

    #@10a
    .line 748
    .local v15, "delta":I
    move-object/from16 v0, p0

    #@10c
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@10e
    add-int v4, v15, p2

    #@110
    add-int v5, v15, p3

    #@112
    .line 749
    add-int v6, v15, p4

    #@114
    add-int v7, v15, p5

    #@116
    add-int v9, v15, p3

    #@118
    move-object/from16 v2, p1

    #@11a
    move/from16 v8, p6

    #@11c
    .line 748
    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance(Ljava/lang/CharSequence;IIIIZI)F

    #@11f
    move-result v19

    #@120
    goto/16 :goto_1
.end method

.method private measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 12
    .param p1, "start"    # I
    .param p2, "offset"    # I
    .param p3, "limit"    # I
    .param p4, "runIsRtl"    # Z
    .param p5, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 417
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    const/4 v7, 0x0

    #@3
    const/4 v8, 0x0

    #@4
    const/4 v9, 0x0

    #@5
    const/4 v11, 0x1

    #@6
    move-object v0, p0

    #@7
    move v1, p1

    #@8
    move v2, p2

    #@9
    move v3, p3

    #@a
    move/from16 v4, p4

    #@c
    move-object/from16 v10, p5

    #@e
    invoke-direct/range {v0 .. v11}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@11
    move-result v0

    #@12
    return v0
.end method

.method static obtain()Landroid/text/TextLine;
    .locals 5

    #@0
    .prologue
    .line 76
    sget-object v3, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@2
    monitor-enter v3

    #@3
    .line 77
    :try_start_0
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@5
    array-length v0, v2

    #@6
    .local v0, "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    #@8
    if-ltz v0, :cond_1

    #@a
    .line 78
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@c
    aget-object v2, v2, v0

    #@e
    if-eqz v2, :cond_0

    #@10
    .line 79
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@12
    aget-object v1, v2, v0

    #@14
    .line 80
    .local v1, "tl":Landroid/text/TextLine;
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@16
    const/4 v4, 0x0

    #@17
    aput-object v4, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    monitor-exit v3

    #@1a
    .line 81
    return-object v1

    #@1b
    .end local v1    # "tl":Landroid/text/TextLine;
    :cond_1
    monitor-exit v3

    #@1c
    .line 85
    new-instance v1, Landroid/text/TextLine;

    #@1e
    invoke-direct {v1}, Landroid/text/TextLine;-><init>()V

    #@21
    .line 89
    .restart local v1    # "tl":Landroid/text/TextLine;
    return-object v1

    #@22
    .line 76
    .end local v1    # "tl":Landroid/text/TextLine;
    :catchall_0
    move-exception v2

    #@23
    monitor-exit v3

    #@24
    throw v2
.end method

.method static recycle(Landroid/text/TextLine;)Landroid/text/TextLine;
    .locals 4
    .param p0, "tl"    # Landroid/text/TextLine;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 100
    iput-object v3, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@3
    .line 101
    iput-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@5
    .line 102
    iput-object v3, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@7
    .line 103
    iput-object v3, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@9
    .line 104
    iput-object v3, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    #@b
    .line 105
    iput-object v3, p0, Landroid/text/TextLine;->mChars:[C

    #@d
    .line 107
    iget-object v1, p0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@f
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    #@12
    .line 108
    iget-object v1, p0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@14
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    #@17
    .line 109
    iget-object v1, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    #@19
    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    #@1c
    .line 111
    sget-object v2, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@1e
    monitor-enter v2

    #@1f
    .line 112
    const/4 v0, 0x0

    #@20
    .local v0, "i":I
    :goto_0
    :try_start_0
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@22
    array-length v1, v1

    #@23
    if-ge v0, v1, :cond_0

    #@25
    .line 113
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@27
    aget-object v1, v1, v0

    #@29
    if-nez v1, :cond_1

    #@2b
    .line 114
    sget-object v1, Landroid/text/TextLine;->sCached:[Landroid/text/TextLine;

    #@2d
    aput-object p0, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2f
    :cond_0
    monitor-exit v2

    #@30
    .line 119
    return-object v3

    #@31
    .line 112
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@33
    goto :goto_0

    #@34
    .line 111
    :catchall_0
    move-exception v1

    #@35
    monitor-exit v2

    #@36
    throw v1
.end method

.method static updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V
    .locals 1
    .param p0, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p1, "previousTop"    # I
    .param p2, "previousAscent"    # I
    .param p3, "previousDescent"    # I
    .param p4, "previousBottom"    # I
    .param p5, "previousLeading"    # I

    #@0
    .prologue
    .line 699
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@8
    .line 700
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@a
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@10
    .line 701
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@12
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@18
    .line 702
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@1a
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@20
    .line 703
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@22
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@28
    .line 698
    return-void
.end method


# virtual methods
.method ascent(I)F
    .locals 7
    .param p1, "pos"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1004
    iget-object v4, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@3
    if-nez v4, :cond_0

    #@5
    .line 1005
    iget-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@7
    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    #@a
    move-result v3

    #@b
    return v3

    #@c
    .line 1008
    :cond_0
    iget v4, p0, Landroid/text/TextLine;->mStart:I

    #@e
    add-int/2addr p1, v4

    #@f
    .line 1009
    iget-object v4, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@11
    add-int/lit8 v5, p1, 0x1

    #@13
    const-class v6, Landroid/text/style/MetricAffectingSpan;

    #@15
    invoke-interface {v4, p1, v5, v6}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@18
    move-result-object v1

    #@19
    check-cast v1, [Landroid/text/style/MetricAffectingSpan;

    #@1b
    .line 1010
    .local v1, "spans":[Landroid/text/style/MetricAffectingSpan;
    array-length v4, v1

    #@1c
    if-nez v4, :cond_1

    #@1e
    .line 1011
    iget-object v3, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@20
    invoke-virtual {v3}, Landroid/text/TextPaint;->ascent()F

    #@23
    move-result v3

    #@24
    return v3

    #@25
    .line 1014
    :cond_1
    iget-object v2, p0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@27
    .line 1015
    .local v2, "wp":Landroid/text/TextPaint;
    iget-object v4, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@29
    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@2c
    .line 1016
    array-length v4, v1

    #@2d
    :goto_0
    if-ge v3, v4, :cond_2

    #@2f
    aget-object v0, v1, v3

    #@31
    .line 1017
    .local v0, "span":Landroid/text/style/MetricAffectingSpan;
    invoke-virtual {v0, v2}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    #@34
    .line 1016
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1019
    .end local v0    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_2
    invoke-virtual {v2}, Landroid/text/TextPaint;->ascent()F

    #@3a
    move-result v3

    #@3b
    return v3
.end method

.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 25
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "x"    # F
    .param p3, "top"    # I
    .param p4, "y"    # I
    .param p5, "bottom"    # I

    #@0
    .prologue
    .line 194
    move-object/from16 v0, p0

    #@2
    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@4
    if-nez v2, :cond_1

    #@6
    .line 195
    move-object/from16 v0, p0

    #@8
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@a
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@c
    if-ne v2, v3, :cond_0

    #@e
    .line 196
    move-object/from16 v0, p0

    #@10
    iget v5, v0, Landroid/text/TextLine;->mLen:I

    #@12
    const/4 v4, 0x0

    #@13
    const/4 v6, 0x0

    #@14
    const/4 v11, 0x0

    #@15
    move-object/from16 v2, p0

    #@17
    move-object/from16 v3, p1

    #@19
    move/from16 v7, p2

    #@1b
    move/from16 v8, p3

    #@1d
    move/from16 v9, p4

    #@1f
    move/from16 v10, p5

    #@21
    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    #@24
    .line 197
    return-void

    #@25
    .line 199
    :cond_0
    move-object/from16 v0, p0

    #@27
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@29
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@2b
    if-ne v2, v3, :cond_1

    #@2d
    .line 200
    move-object/from16 v0, p0

    #@2f
    iget v5, v0, Landroid/text/TextLine;->mLen:I

    #@31
    const/4 v4, 0x0

    #@32
    const/4 v6, 0x1

    #@33
    const/4 v11, 0x0

    #@34
    move-object/from16 v2, p0

    #@36
    move-object/from16 v3, p1

    #@38
    move/from16 v7, p2

    #@3a
    move/from16 v8, p3

    #@3c
    move/from16 v9, p4

    #@3e
    move/from16 v10, p5

    #@40
    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    #@43
    .line 201
    return-void

    #@44
    .line 205
    :cond_1
    const/16 v17, 0x0

    #@46
    .line 206
    .local v17, "h":F
    move-object/from16 v0, p0

    #@48
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@4a
    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    #@4c
    move-object/from16 v22, v0

    #@4e
    .line 207
    .local v22, "runs":[I
    const/16 v16, 0x0

    #@50
    .line 209
    .local v16, "emojiRect":Landroid/graphics/RectF;
    move-object/from16 v0, v22

    #@52
    array-length v2, v0

    #@53
    add-int/lit8 v19, v2, -0x2

    #@55
    .line 210
    .local v19, "lastRunIndex":I
    const/16 v18, 0x0

    #@57
    .end local v16    # "emojiRect":Landroid/graphics/RectF;
    .local v18, "i":I
    :goto_0
    move-object/from16 v0, v22

    #@59
    array-length v2, v0

    #@5a
    move/from16 v0, v18

    #@5c
    if-ge v0, v2, :cond_10

    #@5e
    .line 211
    aget v21, v22, v18

    #@60
    .line 212
    .local v21, "runStart":I
    add-int/lit8 v2, v18, 0x1

    #@62
    aget v2, v22, v2

    #@64
    const v3, 0x3ffffff

    #@67
    and-int/2addr v2, v3

    #@68
    add-int v20, v21, v2

    #@6a
    .line 213
    .local v20, "runLimit":I
    move-object/from16 v0, p0

    #@6c
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    #@6e
    move/from16 v0, v20

    #@70
    if-le v0, v2, :cond_2

    #@72
    .line 214
    move-object/from16 v0, p0

    #@74
    iget v0, v0, Landroid/text/TextLine;->mLen:I

    #@76
    move/from16 v20, v0

    #@78
    .line 216
    :cond_2
    add-int/lit8 v2, v18, 0x1

    #@7a
    aget v2, v22, v2

    #@7c
    const/high16 v3, 0x4000000

    #@7e
    and-int/2addr v2, v3

    #@7f
    if-eqz v2, :cond_8

    #@81
    const/4 v6, 0x1

    #@82
    .line 218
    .local v6, "runIsRtl":Z
    :goto_1
    move/from16 v4, v21

    #@84
    .line 219
    .local v4, "segstart":I
    move-object/from16 v0, p0

    #@86
    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@88
    if-eqz v2, :cond_9

    #@8a
    move/from16 v5, v21

    #@8c
    .local v5, "j":I
    :goto_2
    move/from16 v0, v20

    #@8e
    if-gt v5, v0, :cond_f

    #@90
    .line 220
    const/4 v15, 0x0

    #@91
    .line 221
    .local v15, "codept":I
    const/4 v13, 0x0

    #@92
    .line 223
    .local v13, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@94
    iget-boolean v2, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@96
    if-eqz v2, :cond_3

    #@98
    move/from16 v0, v20

    #@9a
    if-ge v5, v0, :cond_3

    #@9c
    .line 224
    move-object/from16 v0, p0

    #@9e
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    #@a0
    aget-char v15, v2, v5

    #@a2
    .line 225
    const v2, 0xd800

    #@a5
    if-lt v15, v2, :cond_3

    #@a7
    const v2, 0xdc00

    #@aa
    if-ge v15, v2, :cond_3

    #@ac
    add-int/lit8 v2, v5, 0x1

    #@ae
    move/from16 v0, v20

    #@b0
    if-ge v2, v0, :cond_3

    #@b2
    .line 226
    move-object/from16 v0, p0

    #@b4
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    #@b6
    invoke-static {v2, v5}, Ljava/lang/Character;->codePointAt([CI)I

    #@b9
    move-result v15

    #@ba
    .line 227
    sget v2, Landroid/text/Layout;->MIN_EMOJI:I

    #@bc
    if-lt v15, v2, :cond_a

    #@be
    sget v2, Landroid/text/Layout;->MAX_EMOJI:I

    #@c0
    if-gt v15, v2, :cond_a

    #@c2
    .line 228
    sget-object v2, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    #@c4
    invoke-virtual {v2, v15}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    #@c7
    move-result-object v13

    #@c8
    .line 236
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    :cond_3
    move/from16 v0, v20

    #@ca
    if-eq v5, v0, :cond_4

    #@cc
    const/16 v2, 0x9

    #@ce
    if-ne v15, v2, :cond_b

    #@d0
    .line 237
    :cond_4
    :goto_3
    add-float v7, p2, v17

    #@d2
    .line 238
    move/from16 v0, v18

    #@d4
    move/from16 v1, v19

    #@d6
    if-ne v0, v1, :cond_5

    #@d8
    move-object/from16 v0, p0

    #@da
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    #@dc
    if-eq v5, v2, :cond_c

    #@de
    :cond_5
    const/4 v11, 0x1

    #@df
    :goto_4
    move-object/from16 v2, p0

    #@e1
    move-object/from16 v3, p1

    #@e3
    move/from16 v8, p3

    #@e5
    move/from16 v9, p4

    #@e7
    move/from16 v10, p5

    #@e9
    .line 237
    invoke-direct/range {v2 .. v11}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    #@ec
    move-result v2

    #@ed
    add-float v17, v17, v2

    #@ef
    .line 240
    const/16 v2, 0x9

    #@f1
    if-ne v15, v2, :cond_d

    #@f3
    .line 241
    move-object/from16 v0, p0

    #@f5
    iget v2, v0, Landroid/text/TextLine;->mDir:I

    #@f7
    int-to-float v2, v2

    #@f8
    move-object/from16 v0, p0

    #@fa
    iget v3, v0, Landroid/text/TextLine;->mDir:I

    #@fc
    int-to-float v3, v3

    #@fd
    mul-float v3, v3, v17

    #@ff
    move-object/from16 v0, p0

    #@101
    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    #@104
    move-result v3

    #@105
    mul-float v17, v2, v3

    #@107
    .line 257
    :cond_6
    :goto_5
    add-int/lit8 v4, v5, 0x1

    #@109
    .line 219
    :cond_7
    :goto_6
    add-int/lit8 v5, v5, 0x1

    #@10b
    goto :goto_2

    #@10c
    .line 216
    .end local v4    # "segstart":I
    .end local v5    # "j":I
    .end local v6    # "runIsRtl":Z
    .end local v15    # "codept":I
    :cond_8
    const/4 v6, 0x0

    #@10d
    .restart local v6    # "runIsRtl":Z
    goto/16 :goto_1

    #@10f
    .line 219
    .restart local v4    # "segstart":I
    :cond_9
    move/from16 v5, v20

    #@111
    .restart local v5    # "j":I
    goto/16 :goto_2

    #@113
    .line 229
    .restart local v13    # "bm":Landroid/graphics/Bitmap;
    .restart local v15    # "codept":I
    :cond_a
    const v2, 0xffff

    #@116
    if-le v15, v2, :cond_3

    #@118
    .line 230
    add-int/lit8 v5, v5, 0x1

    #@11a
    .line 231
    goto :goto_6

    #@11b
    .line 236
    .end local v13    # "bm":Landroid/graphics/Bitmap;
    :cond_b
    if-eqz v13, :cond_7

    #@11d
    goto :goto_3

    #@11e
    .line 238
    :cond_c
    const/4 v11, 0x0

    #@11f
    goto :goto_4

    #@120
    .line 242
    :cond_d
    if-eqz v13, :cond_6

    #@122
    .line 243
    move-object/from16 v0, p0

    #@124
    invoke-virtual {v0, v5}, Landroid/text/TextLine;->ascent(I)F

    #@127
    move-result v14

    #@128
    .line 244
    .local v14, "bmAscent":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    #@12b
    move-result v2

    #@12c
    int-to-float v12, v2

    #@12d
    .line 245
    .local v12, "bitmapHeight":F
    neg-float v2, v14

    #@12e
    div-float v23, v2, v12

    #@130
    .line 246
    .local v23, "scale":F
    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getWidth()I

    #@133
    move-result v2

    #@134
    int-to-float v2, v2

    #@135
    mul-float v24, v2, v23

    #@137
    .line 248
    .local v24, "width":F
    if-nez v16, :cond_e

    #@139
    .line 249
    new-instance v16, Landroid/graphics/RectF;

    #@13b
    invoke-direct/range {v16 .. v16}, Landroid/graphics/RectF;-><init>()V

    #@13e
    .line 251
    :cond_e
    add-float v2, p2, v17

    #@140
    move/from16 v0, p4

    #@142
    int-to-float v3, v0

    #@143
    add-float/2addr v3, v14

    #@144
    .line 252
    add-float v7, p2, v17

    #@146
    add-float v7, v7, v24

    #@148
    move/from16 v0, p4

    #@14a
    int-to-float v8, v0

    #@14b
    .line 251
    move-object/from16 v0, v16

    #@14d
    invoke-virtual {v0, v2, v3, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    #@150
    .line 253
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@154
    const/4 v3, 0x0

    #@155
    move-object/from16 v0, p1

    #@157
    move-object/from16 v1, v16

    #@159
    invoke-virtual {v0, v13, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    #@15c
    .line 254
    add-float v17, v17, v24

    #@15e
    .line 255
    add-int/lit8 v5, v5, 0x1

    #@160
    goto :goto_5

    #@161
    .line 210
    .end local v12    # "bitmapHeight":F
    .end local v14    # "bmAscent":F
    .end local v15    # "codept":I
    .end local v23    # "scale":F
    .end local v24    # "width":F
    :cond_f
    add-int/lit8 v18, v18, 0x2

    #@163
    goto/16 :goto_0

    #@165
    .line 193
    .end local v4    # "segstart":I
    .end local v5    # "j":I
    .end local v6    # "runIsRtl":Z
    .end local v20    # "runLimit":I
    .end local v21    # "runStart":I
    :cond_10
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 28
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    #@0
    .prologue
    .line 451
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/text/TextLine;->mLen:I

    #@4
    move/from16 v16, v0

    #@6
    .line 452
    .local v16, "lineEnd":I
    move-object/from16 v0, p0

    #@8
    iget v2, v0, Landroid/text/TextLine;->mDir:I

    #@a
    const/4 v7, -0x1

    #@b
    if-ne v2, v7, :cond_2

    #@d
    const/16 v19, 0x1

    #@f
    .line 453
    .local v19, "paraIsRtl":Z
    :goto_0
    move-object/from16 v0, p0

    #@11
    iget-object v2, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@13
    iget-object v0, v2, Landroid/text/Layout$Directions;->mDirections:[I

    #@15
    move-object/from16 v26, v0

    #@17
    .line 455
    .local v26, "runs":[I
    const/16 v25, 0x0

    #@19
    .line 450
    .local v25, "runLevel":I
    const/4 v4, 0x0

    #@1a
    .line 455
    .local v4, "runStart":I
    move/from16 v5, v16

    #@1c
    .local v5, "runLimit":I
    const/16 v17, -0x1

    #@1e
    .line 456
    .local v17, "newCaret":I
    const/16 v27, 0x0

    #@20
    .line 458
    .local v27, "trailing":Z
    if-nez p1, :cond_3

    #@22
    .line 459
    const/4 v3, -0x2

    #@23
    .line 537
    .local v3, "runIndex":I
    :cond_0
    :goto_1
    move/from16 v0, p2

    #@25
    move/from16 v1, v19

    #@27
    if-ne v0, v1, :cond_f

    #@29
    const/4 v8, 0x1

    #@2a
    .line 538
    .local v8, "advance":Z
    :goto_2
    if-eqz v8, :cond_10

    #@2c
    const/4 v2, 0x2

    #@2d
    :goto_3
    add-int v10, v3, v2

    #@2f
    .line 539
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_18

    #@31
    move-object/from16 v0, v26

    #@33
    array-length v2, v0

    #@34
    if-ge v10, v2, :cond_18

    #@36
    .line 540
    aget v2, v26, v10

    #@38
    add-int/lit8 v11, v2, 0x0

    #@3a
    .line 542
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    #@3c
    aget v2, v26, v2

    #@3e
    const v7, 0x3ffffff

    #@41
    and-int/2addr v2, v7

    #@42
    .line 541
    add-int v12, v11, v2

    #@44
    .line 543
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    #@46
    if-le v12, v0, :cond_1

    #@48
    .line 544
    move/from16 v12, v16

    #@4a
    .line 546
    :cond_1
    add-int/lit8 v2, v10, 0x1

    #@4c
    aget v2, v26, v2

    #@4e
    ushr-int/lit8 v2, v2, 0x1a

    #@50
    and-int/lit8 v18, v2, 0x3f

    #@52
    .line 548
    .local v18, "otherRunLevel":I
    and-int/lit8 v2, v18, 0x1

    #@54
    if-eqz v2, :cond_11

    #@56
    const/4 v13, 0x1

    #@57
    .line 550
    .local v13, "otherRunIsRtl":Z
    :goto_4
    move/from16 v0, p2

    #@59
    if-ne v0, v13, :cond_12

    #@5b
    const/4 v8, 0x1

    #@5c
    .line 551
    :goto_5
    const/4 v2, -0x1

    #@5d
    move/from16 v0, v17

    #@5f
    if-ne v0, v2, :cond_15

    #@61
    .line 554
    if-eqz v8, :cond_13

    #@63
    move v14, v11

    #@64
    :goto_6
    move-object/from16 v9, p0

    #@66
    move v15, v8

    #@67
    .line 552
    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    #@6a
    move-result v17

    #@6b
    .line 555
    if-eqz v8, :cond_14

    #@6d
    .end local v12    # "otherRunLimit":I
    :goto_7
    move/from16 v0, v17

    #@6f
    if-ne v0, v12, :cond_16

    #@71
    .line 558
    move v3, v10

    #@72
    .line 559
    move/from16 v25, v18

    #@74
    .line 560
    goto :goto_1

    #@75
    .line 452
    .end local v3    # "runIndex":I
    .end local v4    # "runStart":I
    .end local v5    # "runLimit":I
    .end local v8    # "advance":Z
    .end local v10    # "otherRunIndex":I
    .end local v11    # "otherRunStart":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v17    # "newCaret":I
    .end local v18    # "otherRunLevel":I
    .end local v19    # "paraIsRtl":Z
    .end local v25    # "runLevel":I
    .end local v26    # "runs":[I
    .end local v27    # "trailing":Z
    :cond_2
    const/16 v19, 0x0

    #@77
    .restart local v19    # "paraIsRtl":Z
    goto :goto_0

    #@78
    .line 460
    .restart local v4    # "runStart":I
    .restart local v5    # "runLimit":I
    .restart local v17    # "newCaret":I
    .restart local v25    # "runLevel":I
    .restart local v26    # "runs":[I
    .restart local v27    # "trailing":Z
    :cond_3
    move/from16 v0, p1

    #@7a
    move/from16 v1, v16

    #@7c
    if-ne v0, v1, :cond_4

    #@7e
    .line 461
    move-object/from16 v0, v26

    #@80
    array-length v3, v0

    #@81
    .restart local v3    # "runIndex":I
    goto :goto_1

    #@82
    .line 465
    .end local v3    # "runIndex":I
    :cond_4
    const/4 v3, 0x0

    #@83
    .restart local v3    # "runIndex":I
    :goto_8
    move-object/from16 v0, v26

    #@85
    array-length v2, v0

    #@86
    if-ge v3, v2, :cond_7

    #@88
    .line 466
    aget v2, v26, v3

    #@8a
    add-int/lit8 v4, v2, 0x0

    #@8c
    .line 467
    move/from16 v0, p1

    #@8e
    if-lt v0, v4, :cond_a

    #@90
    .line 468
    add-int/lit8 v2, v3, 0x1

    #@92
    aget v2, v26, v2

    #@94
    const v7, 0x3ffffff

    #@97
    and-int/2addr v2, v7

    #@98
    add-int v5, v4, v2

    #@9a
    .line 469
    move/from16 v0, v16

    #@9c
    if-le v5, v0, :cond_5

    #@9e
    .line 470
    move/from16 v5, v16

    #@a0
    .line 472
    :cond_5
    move/from16 v0, p1

    #@a2
    if-ge v0, v5, :cond_a

    #@a4
    .line 473
    add-int/lit8 v2, v3, 0x1

    #@a6
    aget v2, v26, v2

    #@a8
    ushr-int/lit8 v2, v2, 0x1a

    #@aa
    and-int/lit8 v25, v2, 0x3f

    #@ac
    .line 475
    move/from16 v0, p1

    #@ae
    if-ne v0, v4, :cond_7

    #@b0
    .line 480
    add-int/lit8 v20, p1, -0x1

    #@b2
    .line 481
    .local v20, "pos":I
    const/16 v21, 0x0

    #@b4
    .local v21, "prevRunIndex":I
    :goto_9
    move-object/from16 v0, v26

    #@b6
    array-length v2, v0

    #@b7
    move/from16 v0, v21

    #@b9
    if-ge v0, v2, :cond_7

    #@bb
    .line 482
    aget v2, v26, v21

    #@bd
    add-int/lit8 v24, v2, 0x0

    #@bf
    .line 483
    .local v24, "prevRunStart":I
    move/from16 v0, v20

    #@c1
    move/from16 v1, v24

    #@c3
    if-lt v0, v1, :cond_9

    #@c5
    .line 485
    add-int/lit8 v2, v21, 0x1

    #@c7
    aget v2, v26, v2

    #@c9
    const v7, 0x3ffffff

    #@cc
    and-int/2addr v2, v7

    #@cd
    .line 484
    add-int v23, v24, v2

    #@cf
    .line 486
    .local v23, "prevRunLimit":I
    move/from16 v0, v23

    #@d1
    move/from16 v1, v16

    #@d3
    if-le v0, v1, :cond_6

    #@d5
    .line 487
    move/from16 v23, v16

    #@d7
    .line 489
    :cond_6
    move/from16 v0, v20

    #@d9
    move/from16 v1, v23

    #@db
    if-ge v0, v1, :cond_9

    #@dd
    .line 490
    add-int/lit8 v2, v21, 0x1

    #@df
    aget v2, v26, v2

    #@e1
    ushr-int/lit8 v2, v2, 0x1a

    #@e3
    and-int/lit8 v22, v2, 0x3f

    #@e5
    .line 492
    .local v22, "prevRunLevel":I
    move/from16 v0, v22

    #@e7
    move/from16 v1, v25

    #@e9
    if-ge v0, v1, :cond_9

    #@eb
    .line 494
    move/from16 v3, v21

    #@ed
    .line 495
    move/from16 v25, v22

    #@ef
    .line 496
    move/from16 v4, v24

    #@f1
    .line 497
    move/from16 v5, v23

    #@f3
    .line 498
    const/16 v27, 0x1

    #@f5
    .line 515
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v22    # "prevRunLevel":I
    .end local v23    # "prevRunLimit":I
    .end local v24    # "prevRunStart":I
    :cond_7
    move-object/from16 v0, v26

    #@f7
    array-length v2, v0

    #@f8
    if-eq v3, v2, :cond_0

    #@fa
    .line 516
    and-int/lit8 v2, v25, 0x1

    #@fc
    if-eqz v2, :cond_b

    #@fe
    const/4 v6, 0x1

    #@ff
    .line 517
    .local v6, "runIsRtl":Z
    :goto_a
    move/from16 v0, p2

    #@101
    if-ne v0, v6, :cond_c

    #@103
    const/4 v8, 0x1

    #@104
    .line 518
    .restart local v8    # "advance":Z
    :goto_b
    if-eqz v8, :cond_d

    #@106
    move v2, v5

    #@107
    :goto_c
    move/from16 v0, p1

    #@109
    if-ne v0, v2, :cond_8

    #@10b
    move/from16 v0, v27

    #@10d
    if-eq v8, v0, :cond_0

    #@10f
    :cond_8
    move-object/from16 v2, p0

    #@111
    move/from16 v7, p1

    #@113
    .line 520
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    #@116
    move-result v17

    #@117
    .line 524
    if-eqz v8, :cond_e

    #@119
    move v2, v5

    #@11a
    :goto_d
    move/from16 v0, v17

    #@11c
    if-eq v0, v2, :cond_0

    #@11e
    .line 525
    return v17

    #@11f
    .line 481
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    .restart local v20    # "pos":I
    .restart local v21    # "prevRunIndex":I
    .restart local v24    # "prevRunStart":I
    :cond_9
    add-int/lit8 v21, v21, 0x2

    #@121
    goto :goto_9

    #@122
    .line 465
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v24    # "prevRunStart":I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    #@124
    goto/16 :goto_8

    #@126
    .line 516
    :cond_b
    const/4 v6, 0x0

    #@127
    .restart local v6    # "runIsRtl":Z
    goto :goto_a

    #@128
    .line 517
    :cond_c
    const/4 v8, 0x0

    #@129
    .restart local v8    # "advance":Z
    goto :goto_b

    #@12a
    :cond_d
    move v2, v4

    #@12b
    .line 518
    goto :goto_c

    #@12c
    :cond_e
    move v2, v4

    #@12d
    .line 524
    goto :goto_d

    #@12e
    .line 537
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_f
    const/4 v8, 0x0

    #@12f
    .restart local v8    # "advance":Z
    goto/16 :goto_2

    #@131
    .line 538
    :cond_10
    const/4 v2, -0x2

    #@132
    goto/16 :goto_3

    #@134
    .line 548
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v18    # "otherRunLevel":I
    :cond_11
    const/4 v13, 0x0

    #@135
    .restart local v13    # "otherRunIsRtl":Z
    goto/16 :goto_4

    #@137
    .line 550
    :cond_12
    const/4 v8, 0x0

    #@138
    goto/16 :goto_5

    #@13a
    :cond_13
    move v14, v12

    #@13b
    .line 554
    goto/16 :goto_6

    #@13d
    :cond_14
    move v12, v11

    #@13e
    .line 555
    goto/16 :goto_7

    #@140
    .line 566
    :cond_15
    move/from16 v0, v18

    #@142
    move/from16 v1, v25

    #@144
    if-ge v0, v1, :cond_16

    #@146
    .line 568
    if-eqz v8, :cond_17

    #@148
    move/from16 v17, v11

    #@14a
    .line 595
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    :cond_16
    :goto_e
    return v17

    #@14b
    .line 568
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v18    # "otherRunLevel":I
    :cond_17
    move/from16 v17, v12

    #@14d
    goto :goto_e

    #@14e
    .line 573
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    :cond_18
    const/4 v2, -0x1

    #@14f
    move/from16 v0, v17

    #@151
    if-ne v0, v2, :cond_1a

    #@153
    .line 577
    if-eqz v8, :cond_19

    #@155
    move-object/from16 v0, p0

    #@157
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    #@159
    add-int/lit8 v17, v2, 0x1

    #@15b
    goto :goto_e

    #@15c
    :cond_19
    const/16 v17, -0x1

    #@15e
    goto :goto_e

    #@15f
    .line 589
    :cond_1a
    move/from16 v0, v17

    #@161
    move/from16 v1, v16

    #@163
    if-gt v0, v1, :cond_16

    #@165
    .line 590
    if-eqz v8, :cond_1b

    #@167
    move/from16 v17, v16

    #@169
    goto :goto_e

    #@16a
    .line 450
    :cond_1b
    const/16 v17, 0x0

    #@16c
    .line 590
    goto :goto_e
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 21
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 287
    if-eqz p2, :cond_0

    #@2
    add-int/lit8 v18, p1, -0x1

    #@4
    .line 288
    .local v18, "target":I
    :goto_0
    if-gez v18, :cond_1

    #@6
    .line 289
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .line 287
    .end local v18    # "target":I
    :cond_0
    move/from16 v18, p1

    #@a
    .restart local v18    # "target":I
    goto :goto_0

    #@b
    .line 292
    :cond_1
    const/4 v12, 0x0

    #@c
    .line 294
    .local v12, "h":F
    move-object/from16 v0, p0

    #@e
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@10
    if-nez v1, :cond_3

    #@12
    .line 295
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@16
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@18
    if-ne v1, v3, :cond_2

    #@1a
    .line 296
    move-object/from16 v0, p0

    #@1c
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    #@1e
    const/4 v2, 0x0

    #@1f
    const/4 v5, 0x0

    #@20
    move-object/from16 v1, p0

    #@22
    move/from16 v3, p1

    #@24
    move-object/from16 v6, p3

    #@26
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@29
    move-result v1

    #@2a
    return v1

    #@2b
    .line 298
    :cond_2
    move-object/from16 v0, p0

    #@2d
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@2f
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@31
    if-ne v1, v3, :cond_3

    #@33
    .line 299
    move-object/from16 v0, p0

    #@35
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    #@37
    const/4 v2, 0x0

    #@38
    const/4 v5, 0x1

    #@39
    move-object/from16 v1, p0

    #@3b
    move/from16 v3, p1

    #@3d
    move-object/from16 v6, p3

    #@3f
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@42
    move-result v1

    #@43
    return v1

    #@44
    .line 303
    :cond_3
    move-object/from16 v0, p0

    #@46
    iget-object v10, v0, Landroid/text/TextLine;->mChars:[C

    #@48
    .line 304
    .local v10, "chars":[C
    move-object/from16 v0, p0

    #@4a
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@4c
    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    #@4e
    move-object/from16 v17, v0

    #@50
    .line 305
    .local v17, "runs":[I
    const/4 v13, 0x0

    #@51
    .local v13, "i":I
    :goto_1
    move-object/from16 v0, v17

    #@53
    array-length v1, v0

    #@54
    if-ge v13, v1, :cond_16

    #@56
    .line 306
    aget v16, v17, v13

    #@58
    .line 307
    .local v16, "runStart":I
    add-int/lit8 v1, v13, 0x1

    #@5a
    aget v1, v17, v1

    #@5c
    const v3, 0x3ffffff

    #@5f
    and-int/2addr v1, v3

    #@60
    add-int v15, v16, v1

    #@62
    .line 308
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    #@64
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    #@66
    if-le v15, v1, :cond_4

    #@68
    .line 309
    move-object/from16 v0, p0

    #@6a
    iget v15, v0, Landroid/text/TextLine;->mLen:I

    #@6c
    .line 311
    :cond_4
    add-int/lit8 v1, v13, 0x1

    #@6e
    aget v1, v17, v1

    #@70
    const/high16 v3, 0x4000000

    #@72
    and-int/2addr v1, v3

    #@73
    if-eqz v1, :cond_7

    #@75
    const/4 v5, 0x1

    #@76
    .line 313
    .local v5, "runIsRtl":Z
    :goto_2
    move/from16 v2, v16

    #@78
    .line 314
    .local v2, "segstart":I
    move-object/from16 v0, p0

    #@7a
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@7c
    if-eqz v1, :cond_8

    #@7e
    move/from16 v4, v16

    #@80
    .local v4, "j":I
    :goto_3
    if-gt v4, v15, :cond_15

    #@82
    .line 315
    const/4 v11, 0x0

    #@83
    .line 316
    .local v11, "codept":I
    const/4 v8, 0x0

    #@84
    .line 318
    .local v8, "bm":Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    #@86
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@88
    if-eqz v1, :cond_5

    #@8a
    if-ge v4, v15, :cond_5

    #@8c
    .line 319
    aget-char v11, v10, v4

    #@8e
    .line 320
    const v1, 0xd800

    #@91
    if-lt v11, v1, :cond_5

    #@93
    const v1, 0xdc00

    #@96
    if-ge v11, v1, :cond_5

    #@98
    add-int/lit8 v1, v4, 0x1

    #@9a
    if-ge v1, v15, :cond_5

    #@9c
    .line 321
    invoke-static {v10, v4}, Ljava/lang/Character;->codePointAt([CI)I

    #@9f
    move-result v11

    #@a0
    .line 322
    sget v1, Landroid/text/Layout;->MIN_EMOJI:I

    #@a2
    if-lt v11, v1, :cond_9

    #@a4
    sget v1, Landroid/text/Layout;->MAX_EMOJI:I

    #@a6
    if-gt v11, v1, :cond_9

    #@a8
    .line 323
    sget-object v1, Landroid/text/Layout;->EMOJI_FACTORY:Landroid/emoji/EmojiFactory;

    #@aa
    invoke-virtual {v1, v11}, Landroid/emoji/EmojiFactory;->getBitmapFromAndroidPua(I)Landroid/graphics/Bitmap;

    #@ad
    move-result-object v8

    #@ae
    .line 331
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    :cond_5
    if-eq v4, v15, :cond_6

    #@b0
    const/16 v1, 0x9

    #@b2
    if-ne v11, v1, :cond_b

    #@b4
    .line 332
    :cond_6
    :goto_4
    move/from16 v0, v18

    #@b6
    if-lt v0, v2, :cond_c

    #@b8
    move/from16 v0, v18

    #@ba
    if-ge v0, v4, :cond_c

    #@bc
    const/4 v14, 0x1

    #@bd
    .line 334
    .local v14, "inSegment":Z
    :goto_5
    move-object/from16 v0, p0

    #@bf
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    #@c1
    const/4 v3, -0x1

    #@c2
    if-ne v1, v3, :cond_d

    #@c4
    const/4 v1, 0x1

    #@c5
    :goto_6
    if-ne v1, v5, :cond_e

    #@c7
    const/4 v7, 0x1

    #@c8
    .line 335
    .local v7, "advance":Z
    :goto_7
    if-eqz v14, :cond_f

    #@ca
    if-eqz v7, :cond_f

    #@cc
    move-object/from16 v1, p0

    #@ce
    move/from16 v3, p1

    #@d0
    move-object/from16 v6, p3

    #@d2
    .line 336
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@d5
    move-result v1

    #@d6
    add-float/2addr v12, v1

    #@d7
    return v12

    #@d8
    .line 311
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v7    # "advance":Z
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_7
    const/4 v5, 0x0

    #@d9
    .restart local v5    # "runIsRtl":Z
    goto :goto_2

    #@da
    .line 314
    .restart local v2    # "segstart":I
    :cond_8
    move v4, v15

    #@db
    .restart local v4    # "j":I
    goto :goto_3

    #@dc
    .line 324
    .restart local v8    # "bm":Landroid/graphics/Bitmap;
    .restart local v11    # "codept":I
    :cond_9
    const v1, 0xffff

    #@df
    if-le v11, v1, :cond_5

    #@e1
    .line 325
    add-int/lit8 v4, v4, 0x1

    #@e3
    .line 314
    .end local v8    # "bm":Landroid/graphics/Bitmap;
    :cond_a
    :goto_8
    add-int/lit8 v4, v4, 0x1

    #@e5
    goto :goto_3

    #@e6
    .line 331
    :cond_b
    if-eqz v8, :cond_a

    #@e8
    goto :goto_4

    #@e9
    .line 332
    :cond_c
    const/4 v14, 0x0

    #@ea
    .restart local v14    # "inSegment":Z
    goto :goto_5

    #@eb
    .line 334
    :cond_d
    const/4 v1, 0x0

    #@ec
    goto :goto_6

    #@ed
    :cond_e
    const/4 v7, 0x0

    #@ee
    .restart local v7    # "advance":Z
    goto :goto_7

    #@ef
    :cond_f
    move-object/from16 v1, p0

    #@f1
    move v3, v4

    #@f2
    move-object/from16 v6, p3

    #@f4
    .line 339
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@f7
    move-result v19

    #@f8
    .line 340
    .local v19, "w":F
    if-eqz v7, :cond_10

    #@fa
    .end local v19    # "w":F
    :goto_9
    add-float v12, v12, v19

    #@fc
    .line 342
    if-eqz v14, :cond_11

    #@fe
    .line 343
    const/4 v6, 0x0

    #@ff
    move-object/from16 v1, p0

    #@101
    move/from16 v3, p1

    #@103
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@106
    move-result v1

    #@107
    add-float/2addr v12, v1

    #@108
    return v12

    #@109
    .line 340
    .restart local v19    # "w":F
    :cond_10
    move/from16 v0, v19

    #@10b
    neg-float v0, v0

    #@10c
    move/from16 v19, v0

    #@10e
    goto :goto_9

    #@10f
    .line 346
    .end local v19    # "w":F
    :cond_11
    const/16 v1, 0x9

    #@111
    if-ne v11, v1, :cond_13

    #@113
    .line 347
    move/from16 v0, p1

    #@115
    if-ne v0, v4, :cond_12

    #@117
    .line 348
    return v12

    #@118
    .line 350
    :cond_12
    move-object/from16 v0, p0

    #@11a
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    #@11c
    int-to-float v1, v1

    #@11d
    move-object/from16 v0, p0

    #@11f
    iget v3, v0, Landroid/text/TextLine;->mDir:I

    #@121
    int-to-float v3, v3

    #@122
    mul-float/2addr v3, v12

    #@123
    move-object/from16 v0, p0

    #@125
    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    #@128
    move-result v3

    #@129
    mul-float v12, v1, v3

    #@12b
    .line 351
    move/from16 v0, v18

    #@12d
    if-ne v0, v4, :cond_13

    #@12f
    .line 352
    return v12

    #@130
    .line 356
    :cond_13
    if-eqz v8, :cond_14

    #@132
    .line 357
    move-object/from16 v0, p0

    #@134
    invoke-virtual {v0, v4}, Landroid/text/TextLine;->ascent(I)F

    #@137
    move-result v9

    #@138
    .line 358
    .local v9, "bmAscent":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    #@13b
    move-result v1

    #@13c
    int-to-float v1, v1

    #@13d
    neg-float v3, v9

    #@13e
    mul-float/2addr v1, v3

    #@13f
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    #@142
    move-result v3

    #@143
    int-to-float v3, v3

    #@144
    div-float v20, v1, v3

    #@146
    .line 359
    .local v20, "wid":F
    move-object/from16 v0, p0

    #@148
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    #@14a
    int-to-float v1, v1

    #@14b
    mul-float v1, v1, v20

    #@14d
    add-float/2addr v12, v1

    #@14e
    .line 360
    add-int/lit8 v4, v4, 0x1

    #@150
    .line 363
    .end local v9    # "bmAscent":F
    .end local v20    # "wid":F
    :cond_14
    add-int/lit8 v2, v4, 0x1

    #@152
    goto :goto_8

    #@153
    .line 305
    .end local v7    # "advance":Z
    .end local v11    # "codept":I
    .end local v14    # "inSegment":Z
    :cond_15
    add-int/lit8 v13, v13, 0x2

    #@155
    goto/16 :goto_1

    #@157
    .line 368
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v15    # "runLimit":I
    .end local v16    # "runStart":I
    :cond_16
    return v12
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 270
    iget v0, p0, Landroid/text/TextLine;->mLen:I

    #@2
    const/4 v1, 0x0

    #@3
    invoke-virtual {p0, v0, v1, p1}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    #@6
    move-result v0

    #@7
    return v0
.end method

.method nextTab(F)F
    .locals 1
    .param p1, "h"    # F

    #@0
    .prologue
    .line 1029
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1030
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    #@6
    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 1032
    :cond_0
    const/16 v0, 0x14

    #@d
    invoke-static {p1, v0}, Landroid/text/Layout$TabStops;->nextDefaultStop(FI)F

    #@10
    move-result v0

    #@11
    return v0
.end method

.method set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V
    .locals 9
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "start"    # I
    .param p4, "limit"    # I
    .param p5, "dir"    # I
    .param p6, "directions"    # Landroid/text/Layout$Directions;
    .param p7, "hasTabs"    # Z
    .param p8, "tabStops"    # Landroid/text/Layout$TabStops;

    #@0
    .prologue
    .line 136
    iput-object p1, p0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@2
    .line 137
    iput-object p2, p0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@4
    .line 138
    iput p3, p0, Landroid/text/TextLine;->mStart:I

    #@6
    .line 139
    sub-int v7, p4, p3

    #@8
    iput v7, p0, Landroid/text/TextLine;->mLen:I

    #@a
    .line 140
    iput p5, p0, Landroid/text/TextLine;->mDir:I

    #@c
    .line 141
    iput-object p6, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@e
    .line 142
    iget-object v7, p0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@10
    if-nez v7, :cond_0

    #@12
    .line 143
    new-instance v7, Ljava/lang/IllegalArgumentException;

    #@14
    const-string/jumbo v8, "Directions cannot be null"

    #@17
    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1a
    throw v7

    #@1b
    .line 145
    :cond_0
    move/from16 v0, p7

    #@1d
    iput-boolean v0, p0, Landroid/text/TextLine;->mHasTabs:Z

    #@1f
    .line 146
    const/4 v7, 0x0

    #@20
    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@22
    .line 148
    const/4 v3, 0x0

    #@23
    .line 149
    .local v3, "hasReplacement":Z
    instance-of v7, p2, Landroid/text/Spanned;

    #@25
    if-eqz v7, :cond_1

    #@27
    move-object v7, p2

    #@28
    .line 150
    check-cast v7, Landroid/text/Spanned;

    #@2a
    iput-object v7, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@2c
    .line 151
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    #@2e
    iget-object v8, p0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@30
    invoke-virtual {v7, v8, p3, p4}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    #@33
    .line 152
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    #@35
    iget v7, v7, Landroid/text/SpanSet;->numberOfSpans:I

    #@37
    if-lez v7, :cond_5

    #@39
    const/4 v3, 0x1

    #@3a
    .line 155
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    #@3c
    if-nez p7, :cond_2

    #@3e
    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@40
    if-eq p6, v7, :cond_6

    #@42
    :cond_2
    const/4 v7, 0x1

    #@43
    :goto_1
    iput-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    #@45
    .line 157
    iget-boolean v7, p0, Landroid/text/TextLine;->mCharsValid:Z

    #@47
    if-eqz v7, :cond_8

    #@49
    .line 158
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    #@4b
    if-eqz v7, :cond_3

    #@4d
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    #@4f
    array-length v7, v7

    #@50
    iget v8, p0, Landroid/text/TextLine;->mLen:I

    #@52
    if-ge v7, v8, :cond_4

    #@54
    .line 159
    :cond_3
    iget v7, p0, Landroid/text/TextLine;->mLen:I

    #@56
    invoke-static {v7}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedCharArray(I)[C

    #@59
    move-result-object v7

    #@5a
    iput-object v7, p0, Landroid/text/TextLine;->mChars:[C

    #@5c
    .line 161
    :cond_4
    iget-object v7, p0, Landroid/text/TextLine;->mChars:[C

    #@5e
    const/4 v8, 0x0

    #@5f
    invoke-static {p2, p3, p4, v7, v8}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    #@62
    .line 162
    if-eqz v3, :cond_8

    #@64
    .line 168
    iget-object v1, p0, Landroid/text/TextLine;->mChars:[C

    #@66
    .line 169
    .local v1, "chars":[C
    move v4, p3

    #@67
    .local v4, "i":I
    :goto_2
    if-ge v4, p4, :cond_8

    #@69
    .line 170
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    #@6b
    invoke-virtual {v7, v4, p4}, Landroid/text/SpanSet;->getNextTransition(II)I

    #@6e
    move-result v5

    #@6f
    .line 171
    .local v5, "inext":I
    iget-object v7, p0, Landroid/text/TextLine;->mReplacementSpanSpanSet:Landroid/text/SpanSet;

    #@71
    invoke-virtual {v7, v4, v5}, Landroid/text/SpanSet;->hasSpansIntersecting(II)Z

    #@74
    move-result v7

    #@75
    if-eqz v7, :cond_7

    #@77
    .line 173
    sub-int v7, v4, p3

    #@79
    const v8, 0xfffc

    #@7c
    aput-char v8, v1, v7

    #@7e
    .line 174
    sub-int v7, v4, p3

    #@80
    add-int/lit8 v6, v7, 0x1

    #@82
    .local v6, "j":I
    sub-int v2, v5, p3

    #@84
    .local v2, "e":I
    :goto_3
    if-ge v6, v2, :cond_7

    #@86
    .line 175
    const v7, 0xfeff

    #@89
    aput-char v7, v1, v6

    #@8b
    .line 174
    add-int/lit8 v6, v6, 0x1

    #@8d
    goto :goto_3

    #@8e
    .line 152
    .end local v1    # "chars":[C
    .end local v2    # "e":I
    .end local v4    # "i":I
    .end local v5    # "inext":I
    .end local v6    # "j":I
    :cond_5
    const/4 v3, 0x0

    #@8f
    goto :goto_0

    #@90
    .line 155
    :cond_6
    const/4 v7, 0x0

    #@91
    goto :goto_1

    #@92
    .line 169
    .restart local v1    # "chars":[C
    .restart local v4    # "i":I
    .restart local v5    # "inext":I
    :cond_7
    move v4, v5

    #@93
    goto :goto_2

    #@94
    .line 181
    .end local v1    # "chars":[C
    .end local v4    # "i":I
    .end local v5    # "inext":I
    :cond_8
    move-object/from16 v0, p8

    #@96
    iput-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    #@98
    .line 135
    return-void
.end method
