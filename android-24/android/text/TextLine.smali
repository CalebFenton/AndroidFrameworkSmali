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
    .line 361
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
    .line 362
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
    .line 363
    .local v13, "w":F
    add-float v7, p5, v13

    #@1b
    .line 364
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
    .line 363
    invoke-direct/range {v1 .. v12}, Landroid/text/TextLine;->handleRun(IIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@30
    .line 365
    return v13

    #@31
    .line 361
    .end local v13    # "w":F
    :cond_0
    const/4 v1, 0x0

    #@32
    goto :goto_0

    #@33
    .line 369
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
    .line 368
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
    .line 956
    move-object/from16 v0, p0

    #@2
    iget-boolean v1, v0, Landroid/text/TextLine;->mCharsValid:Z

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 957
    sub-int v4, p4, p3

    #@8
    .line 958
    .local v4, "count":I
    sub-int v6, p6, p5

    #@a
    .line 959
    .local v6, "contextCount":I
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/text/TextLine;->mChars:[C

    #@e
    .line 960
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
    .line 959
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun([CIIIIFFZLandroid/graphics/Paint;)V

    #@20
    .line 954
    .end local v4    # "count":I
    .end local v6    # "contextCount":I
    :goto_0
    return-void

    #@21
    .line 962
    :cond_0
    move-object/from16 v0, p0

    #@23
    iget v0, v0, Landroid/text/TextLine;->mStart:I

    #@25
    move/from16 v17, v0

    #@27
    .line 963
    .local v17, "delta":I
    move-object/from16 v0, p0

    #@29
    iget-object v8, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@2b
    add-int v9, v17, p3

    #@2d
    add-int v10, v17, p4

    #@2f
    .line 964
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
    .line 963
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
    .line 655
    iget v1, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@2
    .line 656
    .local v1, "previousTop":I
    iget v2, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@4
    .line 657
    .local v2, "previousAscent":I
    iget v3, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@6
    .line 658
    .local v3, "previousDescent":I
    iget v4, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@8
    .line 659
    .local v4, "previousBottom":I
    iget v5, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@a
    .line 661
    .local v5, "previousLeading":I
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@d
    move-object v0, p0

    #@e
    .line 663
    invoke-static/range {v0 .. v5}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    #@11
    .line 654
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
    .line 588
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
    .line 592
    :cond_0
    if-eqz p6, :cond_2

    #@e
    .line 593
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
    .line 588
    :cond_1
    const/4 v3, 0x0

    #@23
    goto :goto_0

    #@24
    .line 595
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
    .line 598
    :cond_3
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@3c
    .line 599
    .local v2, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@3e
    iget-object v3, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@40
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@43
    .line 601
    move/from16 v4, p2

    #@45
    .line 603
    .local v4, "spanStart":I
    move-object/from16 v0, p0

    #@47
    iget-object v3, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@49
    if-nez v3, :cond_5

    #@4b
    .line 604
    move/from16 v20, p3

    #@4d
    .line 640
    .local v20, "spanLimit":I
    :cond_4
    if-eqz p4, :cond_b

    #@4f
    const/4 v6, 0x1

    #@50
    .line 641
    .local v6, "dir":I
    :goto_1
    if-eqz p6, :cond_c

    #@52
    const/4 v8, 0x0

    #@53
    .line 642
    .local v8, "cursorOpt":I
    :goto_2
    move-object/from16 v0, p0

    #@55
    iget-boolean v3, v0, Landroid/text/TextLine;->mCharsValid:Z

    #@57
    if-eqz v3, :cond_d

    #@59
    .line 643
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
    .line 606
    .end local v6    # "dir":I
    .end local v8    # "cursorOpt":I
    .end local v20    # "spanLimit":I
    :cond_5
    if-eqz p6, :cond_6

    #@68
    add-int/lit8 v22, p5, 0x1

    #@6a
    .line 607
    .local v22, "target":I
    :goto_3
    move-object/from16 v0, p0

    #@6c
    iget v3, v0, Landroid/text/TextLine;->mStart:I

    #@6e
    add-int v17, v3, p3

    #@70
    .line 609
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
    .line 610
    const-class v7, Landroid/text/style/MetricAffectingSpan;

    #@7b
    .line 609
    move/from16 v0, v17

    #@7d
    invoke-interface {v3, v5, v0, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@80
    move-result v3

    #@81
    .line 610
    move-object/from16 v0, p0

    #@83
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@85
    .line 609
    sub-int v20, v3, v5

    #@87
    .line 611
    .restart local v20    # "spanLimit":I
    move/from16 v0, v20

    #@89
    move/from16 v1, v22

    #@8b
    if-lt v0, v1, :cond_7

    #@8d
    .line 617
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
    .line 618
    move-object/from16 v0, p0

    #@98
    iget v7, v0, Landroid/text/TextLine;->mStart:I

    #@9a
    add-int v7, v7, v20

    #@9c
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@9e
    .line 617
    invoke-interface {v3, v5, v7, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@a1
    move-result-object v21

    #@a2
    check-cast v21, [Landroid/text/style/MetricAffectingSpan;

    #@a4
    .line 619
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
    .line 621
    .restart local v21    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v21

    #@b4
    array-length v3, v0

    #@b5
    if-lez v3, :cond_4

    #@b7
    .line 622
    const/16 v18, 0x0

    #@b9
    .line 623
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
    .line 624
    aget-object v19, v21, v16

    #@c4
    .line 625
    .local v19, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v19

    #@c6
    instance-of v3, v0, Landroid/text/style/ReplacementSpan;

    #@c8
    if-eqz v3, :cond_8

    #@ca
    move-object/from16 v18, v19

    #@cc
    .line 626
    check-cast v18, Landroid/text/style/ReplacementSpan;

    #@ce
    .line 623
    :goto_6
    add-int/lit8 v16, v16, 0x1

    #@d0
    goto :goto_5

    #@d1
    .line 606
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
    .line 614
    .restart local v17    # "limit":I
    .restart local v20    # "spanLimit":I
    :cond_7
    move/from16 v4, v20

    #@d6
    goto :goto_4

    #@d7
    .line 628
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
    .line 632
    .end local v19    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_9
    if-eqz v18, :cond_4

    #@df
    .line 635
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
    .line 640
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
    .line 641
    :cond_c
    const/4 v8, 0x2

    #@e9
    .restart local v8    # "cursorOpt":I
    goto/16 :goto_2

    #@eb
    .line 646
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
    .line 647
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
    .line 646
    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->getTextRunCursor(Ljava/lang/CharSequence;IIIII)I

    #@107
    move-result v3

    #@108
    .line 647
    move-object/from16 v0, p0

    #@10a
    iget v5, v0, Landroid/text/TextLine;->mStart:I

    #@10c
    .line 646
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
    .line 791
    const/16 v23, 0x0

    #@2
    .line 793
    .local v23, "ret":F
    move-object/from16 v0, p0

    #@4
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    #@6
    add-int v4, v1, p3

    #@8
    .line 794
    .local v4, "textStart":I
    move-object/from16 v0, p0

    #@a
    iget v1, v0, Landroid/text/TextLine;->mStart:I

    #@c
    add-int v5, v1, p4

    #@e
    .line 796
    .local v5, "textLimit":I
    if-nez p12, :cond_0

    #@10
    if-eqz p6, :cond_2

    #@12
    if-eqz p5, :cond_2

    #@14
    .line 797
    :cond_0
    const/4 v7, 0x0

    #@15
    .line 798
    .local v7, "previousTop":I
    const/4 v8, 0x0

    #@16
    .line 799
    .local v8, "previousAscent":I
    const/4 v9, 0x0

    #@17
    .line 800
    .local v9, "previousDescent":I
    const/4 v10, 0x0

    #@18
    .line 801
    .local v10, "previousBottom":I
    const/4 v11, 0x0

    #@19
    .line 803
    .local v11, "previousLeading":I
    if-eqz p11, :cond_6

    #@1b
    const/16 v22, 0x1

    #@1d
    .line 805
    .local v22, "needUpdateMetrics":Z
    :goto_0
    if-eqz v22, :cond_1

    #@1f
    .line 806
    move-object/from16 v0, p11

    #@21
    iget v7, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@23
    .line 807
    move-object/from16 v0, p11

    #@25
    iget v8, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@27
    .line 808
    move-object/from16 v0, p11

    #@29
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@2b
    .line 809
    move-object/from16 v0, p11

    #@2d
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@2f
    .line 810
    move-object/from16 v0, p11

    #@31
    iget v11, v0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@33
    .line 813
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
    .line 815
    if-eqz v22, :cond_2

    #@46
    move-object/from16 v6, p11

    #@48
    .line 816
    invoke-static/range {v6 .. v11}, Landroid/text/TextLine;->updateMetrics(Landroid/graphics/Paint$FontMetricsInt;IIIII)V

    #@4b
    .line 821
    .end local v7    # "previousTop":I
    .end local v8    # "previousAscent":I
    .end local v9    # "previousDescent":I
    .end local v10    # "previousBottom":I
    .end local v11    # "previousLeading":I
    .end local v22    # "needUpdateMetrics":Z
    :cond_2
    if-eqz p6, :cond_4

    #@4d
    .line 822
    if-eqz p5, :cond_3

    #@4f
    .line 823
    sub-float p7, p7, v23

    #@51
    .line 825
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
    .line 829
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
    .line 803
    .restart local v7    # "previousTop":I
    .restart local v8    # "previousAscent":I
    .restart local v9    # "previousDescent":I
    .restart local v10    # "previousBottom":I
    .restart local v11    # "previousLeading":I
    .restart local v23    # "ret":F
    :cond_6
    const/16 v22, 0x0

    #@73
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
    .line 856
    move/from16 v0, p1

    #@2
    move/from16 v1, p2

    #@4
    if-ne v0, v1, :cond_1

    #@6
    .line 857
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@a
    .line 858
    .local v3, "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@c
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@e
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@11
    .line 859
    if-eqz p10, :cond_0

    #@13
    .line 860
    move-object/from16 v0, p10

    #@15
    invoke-static {v0, v3}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@18
    .line 862
    :cond_0
    const/4 v2, 0x0

    #@19
    return v2

    #@1a
    .line 865
    .end local v3    # "wp":Landroid/text/TextPaint;
    :cond_1
    move-object/from16 v0, p0

    #@1c
    iget-object v2, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@1e
    if-nez v2, :cond_4

    #@20
    .line 866
    move-object/from16 v0, p0

    #@22
    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@24
    .line 867
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@26
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@28
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@2b
    .line 868
    move/from16 v8, p2

    #@2d
    .line 870
    .local v8, "mlimit":I
    if-nez p11, :cond_2

    #@2f
    move/from16 v0, p2

    #@31
    move/from16 v1, p2

    #@33
    if-ge v0, v1, :cond_3

    #@35
    :cond_2
    const/4 v15, 0x1

    #@36
    :goto_0
    move-object/from16 v2, p0

    #@38
    move/from16 v4, p1

    #@3a
    move/from16 v5, p3

    #@3c
    move/from16 v6, p1

    #@3e
    move/from16 v7, p3

    #@40
    move/from16 v8, p4

    #@42
    move-object/from16 v9, p5

    #@44
    move/from16 v10, p6

    #@46
    move/from16 v11, p7

    #@48
    move/from16 v12, p8

    #@4a
    move/from16 v13, p9

    #@4c
    move-object/from16 v14, p10

    #@4e
    move/from16 v16, p2

    #@50
    .line 869
    invoke-direct/range {v2 .. v16}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F

    #@53
    .end local v8    # "mlimit":I
    move-result v2

    #@54
    return v2

    #@55
    .line 870
    .restart local v8    # "mlimit":I
    :cond_3
    const/4 v15, 0x0

    #@56
    goto :goto_0

    #@57
    .line 873
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v8    # "mlimit":I
    :cond_4
    move-object/from16 v0, p0

    #@59
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@5b
    move-object/from16 v0, p0

    #@5d
    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@5f
    move-object/from16 v0, p0

    #@61
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@63
    add-int v6, v6, p1

    #@65
    move-object/from16 v0, p0

    #@67
    iget v9, v0, Landroid/text/TextLine;->mStart:I

    #@69
    add-int v9, v9, p3

    #@6b
    invoke-virtual {v2, v4, v6, v9}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    #@6e
    .line 874
    move-object/from16 v0, p0

    #@70
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@72
    move-object/from16 v0, p0

    #@74
    iget-object v4, v0, Landroid/text/TextLine;->mSpanned:Landroid/text/Spanned;

    #@76
    move-object/from16 v0, p0

    #@78
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@7a
    add-int v6, v6, p1

    #@7c
    move-object/from16 v0, p0

    #@7e
    iget v9, v0, Landroid/text/TextLine;->mStart:I

    #@80
    add-int v9, v9, p3

    #@82
    invoke-virtual {v2, v4, v6, v9}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    #@85
    .line 881
    move/from16 v26, p6

    #@87
    .line 882
    .local v26, "originalX":F
    move/from16 v7, p1

    #@89
    .local v7, "i":I
    :goto_1
    move/from16 v0, p2

    #@8b
    if-ge v7, v0, :cond_13

    #@8d
    .line 883
    move-object/from16 v0, p0

    #@8f
    iget-object v3, v0, Landroid/text/TextLine;->mWorkPaint:Landroid/text/TextPaint;

    #@91
    .line 884
    .restart local v3    # "wp":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@93
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@95
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@98
    .line 886
    move-object/from16 v0, p0

    #@9a
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@9c
    move-object/from16 v0, p0

    #@9e
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@a0
    add-int/2addr v4, v7

    #@a1
    move-object/from16 v0, p0

    #@a3
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@a5
    add-int v6, v6, p3

    #@a7
    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    #@aa
    move-result v2

    #@ab
    .line 887
    move-object/from16 v0, p0

    #@ad
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@af
    .line 886
    sub-int v24, v2, v4

    #@b1
    .line 888
    .local v24, "inext":I
    move/from16 v0, v24

    #@b3
    move/from16 v1, p2

    #@b5
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@b8
    move-result v8

    #@b9
    .line 890
    .restart local v8    # "mlimit":I
    const/4 v5, 0x0

    #@ba
    .line 892
    .local v5, "replacement":Landroid/text/style/ReplacementSpan;
    const/4 v11, 0x0

    #@bb
    .end local v5    # "replacement":Landroid/text/style/ReplacementSpan;
    .local v11, "j":I
    :goto_2
    move-object/from16 v0, p0

    #@bd
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@bf
    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    #@c1
    if-ge v11, v2, :cond_8

    #@c3
    .line 895
    move-object/from16 v0, p0

    #@c5
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@c7
    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    #@c9
    aget v2, v2, v11

    #@cb
    move-object/from16 v0, p0

    #@cd
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@cf
    add-int/2addr v4, v8

    #@d0
    if-ge v2, v4, :cond_5

    #@d2
    .line 896
    move-object/from16 v0, p0

    #@d4
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@d6
    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    #@d8
    aget v2, v2, v11

    #@da
    move-object/from16 v0, p0

    #@dc
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@de
    add-int/2addr v4, v7

    #@df
    if-gt v2, v4, :cond_6

    #@e1
    .line 892
    :cond_5
    :goto_3
    add-int/lit8 v11, v11, 0x1

    #@e3
    goto :goto_2

    #@e4
    .line 897
    :cond_6
    move-object/from16 v0, p0

    #@e6
    iget-object v2, v0, Landroid/text/TextLine;->mMetricAffectingSpanSpanSet:Landroid/text/SpanSet;

    #@e8
    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@ea
    check-cast v2, [Landroid/text/style/MetricAffectingSpan;

    #@ec
    aget-object v28, v2, v11

    #@ee
    .line 898
    .local v28, "span":Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v28

    #@f0
    instance-of v2, v0, Landroid/text/style/ReplacementSpan;

    #@f2
    if-eqz v2, :cond_7

    #@f4
    move-object/from16 v5, v28

    #@f6
    .line 899
    check-cast v5, Landroid/text/style/ReplacementSpan;

    #@f8
    .local v5, "replacement":Landroid/text/style/ReplacementSpan;
    goto :goto_3

    #@f9
    .line 903
    .end local v5    # "replacement":Landroid/text/style/ReplacementSpan;
    :cond_7
    move-object/from16 v0, v28

    #@fb
    invoke-virtual {v0, v3}, Landroid/text/style/MetricAffectingSpan;->updateDrawState(Landroid/text/TextPaint;)V

    #@fe
    goto :goto_3

    #@ff
    .line 907
    .end local v28    # "span":Landroid/text/style/MetricAffectingSpan;
    :cond_8
    if-eqz v5, :cond_c

    #@101
    .line 909
    if-nez p11, :cond_9

    #@103
    move/from16 v0, p2

    #@105
    if-ge v8, v0, :cond_b

    #@107
    :cond_9
    const/16 v16, 0x1

    #@109
    :goto_4
    move-object/from16 v4, p0

    #@10b
    move-object v6, v3

    #@10c
    move/from16 v9, p4

    #@10e
    move-object/from16 v10, p5

    #@110
    move/from16 v11, p6

    #@112
    move/from16 v12, p7

    #@114
    move/from16 v13, p8

    #@116
    move/from16 v14, p9

    #@118
    move-object/from16 v15, p10

    #@11a
    .line 908
    invoke-direct/range {v4 .. v16}, Landroid/text/TextLine;->handleReplacement(Landroid/text/style/ReplacementSpan;Landroid/text/TextPaint;IIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;Z)F

    #@11d
    .end local v11    # "j":I
    move-result v2

    #@11e
    add-float p6, p6, v2

    #@120
    .line 882
    :cond_a
    move/from16 v7, v24

    #@122
    goto/16 :goto_1

    #@124
    .line 909
    .restart local v11    # "j":I
    :cond_b
    const/16 v16, 0x0

    #@126
    goto :goto_4

    #@127
    .line 913
    :cond_c
    move v11, v7

    #@128
    :goto_5
    if-ge v11, v8, :cond_a

    #@12a
    .line 914
    move-object/from16 v0, p0

    #@12c
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@12e
    move-object/from16 v0, p0

    #@130
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@132
    add-int/2addr v4, v11

    #@133
    move-object/from16 v0, p0

    #@135
    iget v6, v0, Landroid/text/TextLine;->mStart:I

    #@137
    add-int v6, v6, v24

    #@139
    invoke-virtual {v2, v4, v6}, Landroid/text/SpanSet;->getNextTransition(II)I

    #@13c
    move-result v2

    #@13d
    .line 915
    move-object/from16 v0, p0

    #@13f
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@141
    .line 914
    sub-int v12, v2, v4

    #@143
    .line 916
    .local v12, "jnext":I
    invoke-static {v12, v8}, Ljava/lang/Math;->min(II)I

    #@146
    move-result v23

    #@147
    .line 918
    .local v23, "offset":I
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Landroid/text/TextLine;->mPaint:Landroid/text/TextPaint;

    #@14b
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    #@14e
    .line 919
    const/16 v25, 0x0

    #@150
    .local v25, "k":I
    :goto_6
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@154
    iget v2, v2, Landroid/text/SpanSet;->numberOfSpans:I

    #@156
    move/from16 v0, v25

    #@158
    if-ge v0, v2, :cond_f

    #@15a
    .line 921
    move-object/from16 v0, p0

    #@15c
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@15e
    iget-object v2, v2, Landroid/text/SpanSet;->spanStarts:[I

    #@160
    aget v2, v2, v25

    #@162
    move-object/from16 v0, p0

    #@164
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@166
    add-int v4, v4, v23

    #@168
    if-ge v2, v4, :cond_d

    #@16a
    .line 922
    move-object/from16 v0, p0

    #@16c
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@16e
    iget-object v2, v2, Landroid/text/SpanSet;->spanEnds:[I

    #@170
    aget v2, v2, v25

    #@172
    move-object/from16 v0, p0

    #@174
    iget v4, v0, Landroid/text/TextLine;->mStart:I

    #@176
    add-int/2addr v4, v11

    #@177
    if-gt v2, v4, :cond_e

    #@179
    .line 919
    :cond_d
    :goto_7
    add-int/lit8 v25, v25, 0x1

    #@17b
    goto :goto_6

    #@17c
    .line 924
    :cond_e
    move-object/from16 v0, p0

    #@17e
    iget-object v2, v0, Landroid/text/TextLine;->mCharacterStyleSpanSet:Landroid/text/SpanSet;

    #@180
    iget-object v2, v2, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@182
    check-cast v2, [Landroid/text/style/CharacterStyle;

    #@184
    aget-object v27, v2, v25

    #@186
    .line 925
    .local v27, "span":Landroid/text/style/CharacterStyle;
    move-object/from16 v0, v27

    #@188
    invoke-virtual {v0, v3}, Landroid/text/style/CharacterStyle;->updateDrawState(Landroid/text/TextPaint;)V

    #@18b
    goto :goto_7

    #@18c
    .line 929
    .end local v27    # "span":Landroid/text/style/CharacterStyle;
    :cond_f
    move-object/from16 v0, p0

    #@18e
    iget v2, v0, Landroid/text/TextLine;->mLen:I

    #@190
    if-ge v12, v2, :cond_10

    #@192
    .line 930
    const/4 v2, 0x0

    #@193
    invoke-virtual {v3, v2}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    #@196
    .line 933
    :cond_10
    if-nez p11, :cond_11

    #@198
    move/from16 v0, p2

    #@19a
    if-ge v12, v0, :cond_12

    #@19c
    :cond_11
    const/16 v22, 0x1

    #@19e
    :goto_8
    move-object/from16 v9, p0

    #@1a0
    move-object v10, v3

    #@1a1
    move v13, v7

    #@1a2
    move/from16 v14, v24

    #@1a4
    move/from16 v15, p4

    #@1a6
    move-object/from16 v16, p5

    #@1a8
    move/from16 v17, p6

    #@1aa
    move/from16 v18, p7

    #@1ac
    move/from16 v19, p8

    #@1ae
    move/from16 v20, p9

    #@1b0
    move-object/from16 v21, p10

    #@1b2
    .line 932
    invoke-direct/range {v9 .. v23}, Landroid/text/TextLine;->handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F

    #@1b5
    move-result v2

    #@1b6
    add-float p6, p6, v2

    #@1b8
    .line 913
    move v11, v12

    #@1b9
    goto/16 :goto_5

    #@1bb
    .line 933
    :cond_12
    const/16 v22, 0x0

    #@1bd
    goto :goto_8

    #@1be
    .line 937
    .end local v3    # "wp":Landroid/text/TextPaint;
    .end local v8    # "mlimit":I
    .end local v11    # "j":I
    .end local v12    # "jnext":I
    .end local v23    # "offset":I
    .end local v24    # "inext":I
    .end local v25    # "k":I
    :cond_13
    sub-float v2, p6, v26

    #@1c0
    return v2
.end method

.method private handleText(Landroid/text/TextPaint;IIIIZLandroid/graphics/Canvas;FIIILandroid/graphics/Paint$FontMetricsInt;ZI)F
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
    .param p14, "offset"    # I

    #@0
    .prologue
    .line 701
    if-eqz p12, :cond_0

    #@2
    .line 702
    move-object/from16 v0, p12

    #@4
    move-object/from16 v1, p1

    #@6
    invoke-static {v0, v1}, Landroid/text/TextLine;->expandMetricsFromPaint(Landroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@9
    .line 705
    :cond_0
    sub-int v20, p3, p2

    #@b
    .line 707
    .local v20, "runLen":I
    if-nez v20, :cond_1

    #@d
    .line 708
    const/4 v2, 0x0

    #@e
    return v2

    #@f
    .line 711
    :cond_1
    const/16 v19, 0x0

    #@11
    .line 713
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
    .line 714
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@23
    iget-boolean v2, v0, Landroid/text/TextLine;->mCharsValid:Z

    #@25
    if-eqz v2, :cond_a

    #@27
    .line 715
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
    move/from16 v9, p14

    #@39
    invoke-virtual/range {v2 .. v9}, Landroid/text/TextPaint;->getRunAdvance([CIIIIZI)F

    #@3c
    move-result v19

    #@3d
    .line 724
    :cond_3
    :goto_1
    if-eqz p7, :cond_7

    #@3f
    .line 725
    if-eqz p6, :cond_4

    #@41
    .line 726
    sub-float p8, p8, v19

    #@43
    .line 729
    :cond_4
    move-object/from16 v0, p1

    #@45
    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    #@47
    if-eqz v2, :cond_5

    #@49
    .line 730
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    #@4c
    move-result v17

    #@4d
    .line 731
    .local v17, "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    #@50
    move-result-object v18

    #@51
    .line 733
    .local v18, "previousStyle":Landroid/graphics/Paint$Style;
    move-object/from16 v0, p1

    #@53
    iget v2, v0, Landroid/text/TextPaint;->bgColor:I

    #@55
    move-object/from16 v0, p1

    #@57
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    #@5a
    .line 734
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@5c
    move-object/from16 v0, p1

    #@5e
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@61
    .line 735
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
    .line 737
    move-object/from16 v0, p1

    #@74
    move-object/from16 v1, v18

    #@76
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@79
    .line 738
    move-object/from16 v0, p1

    #@7b
    move/from16 v1, v17

    #@7d
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@80
    .line 741
    .end local v17    # "previousColor":I
    .end local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    :cond_5
    move-object/from16 v0, p1

    #@82
    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    #@84
    if-eqz v2, :cond_6

    #@86
    .line 743
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
    .line 745
    .local v4, "underlineTop":F
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getColor()I

    #@9a
    move-result v17

    #@9b
    .line 746
    .restart local v17    # "previousColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->getStyle()Landroid/graphics/Paint$Style;

    #@9e
    move-result-object v18

    #@9f
    .line 747
    .restart local v18    # "previousStyle":Landroid/graphics/Paint$Style;
    invoke-virtual/range {p1 .. p1}, Landroid/text/TextPaint;->isAntiAlias()Z

    #@a2
    move-result v16

    #@a3
    .line 749
    .local v16, "previousAntiAlias":Z
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    #@a5
    move-object/from16 v0, p1

    #@a7
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@aa
    .line 750
    const/4 v2, 0x1

    #@ab
    move-object/from16 v0, p1

    #@ad
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@b0
    .line 752
    move-object/from16 v0, p1

    #@b2
    iget v2, v0, Landroid/text/TextPaint;->underlineColor:I

    #@b4
    move-object/from16 v0, p1

    #@b6
    invoke-virtual {v0, v2}, Landroid/text/TextPaint;->setColor(I)V

    #@b9
    .line 753
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
    .line 755
    move-object/from16 v0, p1

    #@cc
    move-object/from16 v1, v18

    #@ce
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    #@d1
    .line 756
    move-object/from16 v0, p1

    #@d3
    move/from16 v1, v17

    #@d5
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    #@d8
    .line 757
    move-object/from16 v0, p1

    #@da
    move/from16 v1, v16

    #@dc
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    #@df
    .line 761
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
    .line 760
    invoke-direct/range {v5 .. v14}, Landroid/text/TextLine;->drawTextRun(Landroid/graphics/Canvas;Landroid/text/TextPaint;IIIIZFI)V

    #@fa
    .line 764
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
    .line 713
    .restart local v19    # "ret":F
    :cond_9
    if-eqz p6, :cond_3

    #@104
    goto/16 :goto_0

    #@106
    .line 718
    :cond_a
    move-object/from16 v0, p0

    #@108
    iget v15, v0, Landroid/text/TextLine;->mStart:I

    #@10a
    .line 719
    .local v15, "delta":I
    move-object/from16 v0, p0

    #@10c
    iget-object v3, v0, Landroid/text/TextLine;->mText:Ljava/lang/CharSequence;

    #@10e
    add-int v4, v15, p2

    #@110
    add-int v5, v15, p3

    #@112
    .line 720
    add-int v6, v15, p4

    #@114
    add-int v7, v15, p5

    #@116
    add-int v9, v15, p14

    #@118
    move-object/from16 v2, p1

    #@11a
    move/from16 v8, p6

    #@11c
    .line 719
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
    .line 387
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
    .line 669
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@2
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@8
    .line 670
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@a
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    #@d
    move-result v0

    #@e
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@10
    .line 671
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@12
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@18
    .line 672
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@1a
    invoke-static {v0, p4}, Ljava/lang/Math;->max(II)I

    #@1d
    move-result v0

    #@1e
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@20
    .line 673
    iget v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@22
    invoke-static {v0, p5}, Ljava/lang/Math;->max(II)I

    #@25
    move-result v0

    #@26
    iput v0, p0, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    #@28
    .line 668
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;FIII)V
    .locals 18
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
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@4
    if-nez v1, :cond_1

    #@6
    .line 195
    move-object/from16 v0, p0

    #@8
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@a
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@c
    if-ne v1, v2, :cond_0

    #@e
    .line 196
    move-object/from16 v0, p0

    #@10
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    #@12
    const/4 v3, 0x0

    #@13
    const/4 v5, 0x0

    #@14
    const/4 v10, 0x0

    #@15
    move-object/from16 v1, p0

    #@17
    move-object/from16 v2, p1

    #@19
    move/from16 v6, p2

    #@1b
    move/from16 v7, p3

    #@1d
    move/from16 v8, p4

    #@1f
    move/from16 v9, p5

    #@21
    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    #@24
    .line 197
    return-void

    #@25
    .line 199
    :cond_0
    move-object/from16 v0, p0

    #@27
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@29
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@2b
    if-ne v1, v2, :cond_1

    #@2d
    .line 200
    move-object/from16 v0, p0

    #@2f
    iget v4, v0, Landroid/text/TextLine;->mLen:I

    #@31
    const/4 v3, 0x0

    #@32
    const/4 v5, 0x1

    #@33
    const/4 v10, 0x0

    #@34
    move-object/from16 v1, p0

    #@36
    move-object/from16 v2, p1

    #@38
    move/from16 v6, p2

    #@3a
    move/from16 v7, p3

    #@3c
    move/from16 v8, p4

    #@3e
    move/from16 v9, p5

    #@40
    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    #@43
    .line 201
    return-void

    #@44
    .line 205
    :cond_1
    const/4 v12, 0x0

    #@45
    .line 206
    .local v12, "h":F
    move-object/from16 v0, p0

    #@47
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@49
    iget-object v0, v1, Landroid/text/Layout$Directions;->mDirections:[I

    #@4b
    move-object/from16 v17, v0

    #@4d
    .line 208
    .local v17, "runs":[I
    move-object/from16 v0, v17

    #@4f
    array-length v1, v0

    #@50
    add-int/lit8 v14, v1, -0x2

    #@52
    .line 209
    .local v14, "lastRunIndex":I
    const/4 v13, 0x0

    #@53
    .local v13, "i":I
    :goto_0
    move-object/from16 v0, v17

    #@55
    array-length v1, v0

    #@56
    if-ge v13, v1, :cond_c

    #@58
    .line 210
    aget v16, v17, v13

    #@5a
    .line 211
    .local v16, "runStart":I
    add-int/lit8 v1, v13, 0x1

    #@5c
    aget v1, v17, v1

    #@5e
    const v2, 0x3ffffff

    #@61
    and-int/2addr v1, v2

    #@62
    add-int v15, v16, v1

    #@64
    .line 212
    .local v15, "runLimit":I
    move-object/from16 v0, p0

    #@66
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    #@68
    if-le v15, v1, :cond_2

    #@6a
    .line 213
    move-object/from16 v0, p0

    #@6c
    iget v15, v0, Landroid/text/TextLine;->mLen:I

    #@6e
    .line 215
    :cond_2
    add-int/lit8 v1, v13, 0x1

    #@70
    aget v1, v17, v1

    #@72
    const/high16 v2, 0x4000000

    #@74
    and-int/2addr v1, v2

    #@75
    if-eqz v1, :cond_4

    #@77
    const/4 v5, 0x1

    #@78
    .line 217
    .local v5, "runIsRtl":Z
    :goto_1
    move/from16 v3, v16

    #@7a
    .line 218
    .local v3, "segstart":I
    move-object/from16 v0, p0

    #@7c
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@7e
    if-eqz v1, :cond_5

    #@80
    move/from16 v4, v16

    #@82
    .local v4, "j":I
    :goto_2
    if-gt v4, v15, :cond_b

    #@84
    .line 219
    const/4 v11, 0x0

    #@85
    .line 220
    .local v11, "codept":I
    move-object/from16 v0, p0

    #@87
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@89
    if-eqz v1, :cond_6

    #@8b
    if-ge v4, v15, :cond_6

    #@8d
    .line 221
    move-object/from16 v0, p0

    #@8f
    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    #@91
    aget-char v11, v1, v4

    #@93
    .line 222
    const v1, 0xd800

    #@96
    if-lt v11, v1, :cond_6

    #@98
    const v1, 0xdc00

    #@9b
    if-ge v11, v1, :cond_6

    #@9d
    add-int/lit8 v1, v4, 0x1

    #@9f
    if-ge v1, v15, :cond_6

    #@a1
    .line 223
    move-object/from16 v0, p0

    #@a3
    iget-object v1, v0, Landroid/text/TextLine;->mChars:[C

    #@a5
    invoke-static {v1, v4}, Ljava/lang/Character;->codePointAt([CI)I

    #@a8
    move-result v11

    #@a9
    .line 224
    const v1, 0xffff

    #@ac
    if-le v11, v1, :cond_6

    #@ae
    .line 225
    add-int/lit8 v4, v4, 0x1

    #@b0
    .line 218
    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    #@b2
    goto :goto_2

    #@b3
    .line 215
    .end local v3    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v11    # "codept":I
    :cond_4
    const/4 v5, 0x0

    #@b4
    .restart local v5    # "runIsRtl":Z
    goto :goto_1

    #@b5
    .line 218
    .restart local v3    # "segstart":I
    :cond_5
    move v4, v15

    #@b6
    .restart local v4    # "j":I
    goto :goto_2

    #@b7
    .line 231
    .restart local v11    # "codept":I
    :cond_6
    if-eq v4, v15, :cond_7

    #@b9
    const/16 v1, 0x9

    #@bb
    if-ne v11, v1, :cond_3

    #@bd
    .line 232
    :cond_7
    add-float v6, p2, v12

    #@bf
    .line 233
    if-ne v13, v14, :cond_8

    #@c1
    move-object/from16 v0, p0

    #@c3
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    #@c5
    if-eq v4, v1, :cond_a

    #@c7
    :cond_8
    const/4 v10, 0x1

    #@c8
    :goto_4
    move-object/from16 v1, p0

    #@ca
    move-object/from16 v2, p1

    #@cc
    move/from16 v7, p3

    #@ce
    move/from16 v8, p4

    #@d0
    move/from16 v9, p5

    #@d2
    .line 232
    invoke-direct/range {v1 .. v10}, Landroid/text/TextLine;->drawRun(Landroid/graphics/Canvas;IIZFIIIZ)F

    #@d5
    move-result v1

    #@d6
    add-float/2addr v12, v1

    #@d7
    .line 235
    const/16 v1, 0x9

    #@d9
    if-ne v11, v1, :cond_9

    #@db
    .line 236
    move-object/from16 v0, p0

    #@dd
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    #@df
    int-to-float v1, v1

    #@e0
    move-object/from16 v0, p0

    #@e2
    iget v2, v0, Landroid/text/TextLine;->mDir:I

    #@e4
    int-to-float v2, v2

    #@e5
    mul-float/2addr v2, v12

    #@e6
    move-object/from16 v0, p0

    #@e8
    invoke-virtual {v0, v2}, Landroid/text/TextLine;->nextTab(F)F

    #@eb
    move-result v2

    #@ec
    mul-float v12, v1, v2

    #@ee
    .line 238
    :cond_9
    add-int/lit8 v3, v4, 0x1

    #@f0
    goto :goto_3

    #@f1
    .line 233
    :cond_a
    const/4 v10, 0x0

    #@f2
    goto :goto_4

    #@f3
    .line 209
    .end local v11    # "codept":I
    :cond_b
    add-int/lit8 v13, v13, 0x2

    #@f5
    goto/16 :goto_0

    #@f7
    .line 193
    .end local v3    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v15    # "runLimit":I
    .end local v16    # "runStart":I
    :cond_c
    return-void
.end method

.method getOffsetToLeftRightOf(IZ)I
    .locals 28
    .param p1, "cursor"    # I
    .param p2, "toLeft"    # Z

    #@0
    .prologue
    .line 421
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/text/TextLine;->mLen:I

    #@4
    move/from16 v16, v0

    #@6
    .line 422
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
    .line 423
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
    .line 425
    .local v26, "runs":[I
    const/16 v25, 0x0

    #@19
    .line 420
    .local v25, "runLevel":I
    const/4 v4, 0x0

    #@1a
    .line 425
    .local v4, "runStart":I
    move/from16 v5, v16

    #@1c
    .local v5, "runLimit":I
    const/16 v17, -0x1

    #@1e
    .line 426
    .local v17, "newCaret":I
    const/16 v27, 0x0

    #@20
    .line 428
    .local v27, "trailing":Z
    if-nez p1, :cond_3

    #@22
    .line 429
    const/4 v3, -0x2

    #@23
    .line 507
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
    .line 508
    .local v8, "advance":Z
    :goto_2
    if-eqz v8, :cond_10

    #@2c
    const/4 v2, 0x2

    #@2d
    :goto_3
    add-int v10, v3, v2

    #@2f
    .line 509
    .local v10, "otherRunIndex":I
    if-ltz v10, :cond_18

    #@31
    move-object/from16 v0, v26

    #@33
    array-length v2, v0

    #@34
    if-ge v10, v2, :cond_18

    #@36
    .line 510
    aget v2, v26, v10

    #@38
    add-int/lit8 v11, v2, 0x0

    #@3a
    .line 512
    .local v11, "otherRunStart":I
    add-int/lit8 v2, v10, 0x1

    #@3c
    aget v2, v26, v2

    #@3e
    const v7, 0x3ffffff

    #@41
    and-int/2addr v2, v7

    #@42
    .line 511
    add-int v12, v11, v2

    #@44
    .line 513
    .local v12, "otherRunLimit":I
    move/from16 v0, v16

    #@46
    if-le v12, v0, :cond_1

    #@48
    .line 514
    move/from16 v12, v16

    #@4a
    .line 516
    :cond_1
    add-int/lit8 v2, v10, 0x1

    #@4c
    aget v2, v26, v2

    #@4e
    ushr-int/lit8 v2, v2, 0x1a

    #@50
    and-int/lit8 v18, v2, 0x3f

    #@52
    .line 518
    .local v18, "otherRunLevel":I
    and-int/lit8 v2, v18, 0x1

    #@54
    if-eqz v2, :cond_11

    #@56
    const/4 v13, 0x1

    #@57
    .line 520
    .local v13, "otherRunIsRtl":Z
    :goto_4
    move/from16 v0, p2

    #@59
    if-ne v0, v13, :cond_12

    #@5b
    const/4 v8, 0x1

    #@5c
    .line 521
    .local v8, "advance":Z
    :goto_5
    const/4 v2, -0x1

    #@5d
    move/from16 v0, v17

    #@5f
    if-ne v0, v2, :cond_15

    #@61
    .line 524
    if-eqz v8, :cond_13

    #@63
    move v14, v11

    #@64
    :goto_6
    move-object/from16 v9, p0

    #@66
    move v15, v8

    #@67
    .line 522
    invoke-direct/range {v9 .. v15}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    #@6a
    move-result v17

    #@6b
    .line 525
    if-eqz v8, :cond_14

    #@6d
    .end local v12    # "otherRunLimit":I
    :goto_7
    move/from16 v0, v17

    #@6f
    if-ne v0, v12, :cond_16

    #@71
    .line 528
    move v3, v10

    #@72
    .line 529
    move/from16 v25, v18

    #@74
    .line 530
    goto :goto_1

    #@75
    .line 422
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
    .line 430
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
    .line 431
    move-object/from16 v0, v26

    #@80
    array-length v3, v0

    #@81
    .restart local v3    # "runIndex":I
    goto :goto_1

    #@82
    .line 435
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
    .line 436
    aget v2, v26, v3

    #@8a
    add-int/lit8 v4, v2, 0x0

    #@8c
    .line 437
    move/from16 v0, p1

    #@8e
    if-lt v0, v4, :cond_a

    #@90
    .line 438
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
    .line 439
    move/from16 v0, v16

    #@9c
    if-le v5, v0, :cond_5

    #@9e
    .line 440
    move/from16 v5, v16

    #@a0
    .line 442
    :cond_5
    move/from16 v0, p1

    #@a2
    if-ge v0, v5, :cond_a

    #@a4
    .line 443
    add-int/lit8 v2, v3, 0x1

    #@a6
    aget v2, v26, v2

    #@a8
    ushr-int/lit8 v2, v2, 0x1a

    #@aa
    and-int/lit8 v25, v2, 0x3f

    #@ac
    .line 445
    move/from16 v0, p1

    #@ae
    if-ne v0, v4, :cond_7

    #@b0
    .line 450
    add-int/lit8 v20, p1, -0x1

    #@b2
    .line 451
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
    .line 452
    aget v2, v26, v21

    #@bd
    add-int/lit8 v24, v2, 0x0

    #@bf
    .line 453
    .local v24, "prevRunStart":I
    move/from16 v0, v20

    #@c1
    move/from16 v1, v24

    #@c3
    if-lt v0, v1, :cond_9

    #@c5
    .line 455
    add-int/lit8 v2, v21, 0x1

    #@c7
    aget v2, v26, v2

    #@c9
    const v7, 0x3ffffff

    #@cc
    and-int/2addr v2, v7

    #@cd
    .line 454
    add-int v23, v24, v2

    #@cf
    .line 456
    .local v23, "prevRunLimit":I
    move/from16 v0, v23

    #@d1
    move/from16 v1, v16

    #@d3
    if-le v0, v1, :cond_6

    #@d5
    .line 457
    move/from16 v23, v16

    #@d7
    .line 459
    :cond_6
    move/from16 v0, v20

    #@d9
    move/from16 v1, v23

    #@db
    if-ge v0, v1, :cond_9

    #@dd
    .line 460
    add-int/lit8 v2, v21, 0x1

    #@df
    aget v2, v26, v2

    #@e1
    ushr-int/lit8 v2, v2, 0x1a

    #@e3
    and-int/lit8 v22, v2, 0x3f

    #@e5
    .line 462
    .local v22, "prevRunLevel":I
    move/from16 v0, v22

    #@e7
    move/from16 v1, v25

    #@e9
    if-ge v0, v1, :cond_9

    #@eb
    .line 464
    move/from16 v3, v21

    #@ed
    .line 465
    move/from16 v25, v22

    #@ef
    .line 466
    move/from16 v4, v24

    #@f1
    .line 467
    move/from16 v5, v23

    #@f3
    .line 468
    const/16 v27, 0x1

    #@f5
    .line 485
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
    .line 486
    and-int/lit8 v2, v25, 0x1

    #@fc
    if-eqz v2, :cond_b

    #@fe
    const/4 v6, 0x1

    #@ff
    .line 487
    .local v6, "runIsRtl":Z
    :goto_a
    move/from16 v0, p2

    #@101
    if-ne v0, v6, :cond_c

    #@103
    const/4 v8, 0x1

    #@104
    .line 488
    .local v8, "advance":Z
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
    .line 490
    invoke-direct/range {v2 .. v8}, Landroid/text/TextLine;->getOffsetBeforeAfter(IIIZIZ)I

    #@116
    move-result v17

    #@117
    .line 494
    if-eqz v8, :cond_e

    #@119
    move v2, v5

    #@11a
    :goto_d
    move/from16 v0, v17

    #@11c
    if-eq v0, v2, :cond_0

    #@11e
    .line 495
    return v17

    #@11f
    .line 451
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
    .line 435
    .end local v20    # "pos":I
    .end local v21    # "prevRunIndex":I
    .end local v24    # "prevRunStart":I
    :cond_a
    add-int/lit8 v3, v3, 0x2

    #@124
    goto/16 :goto_8

    #@126
    .line 486
    :cond_b
    const/4 v6, 0x0

    #@127
    goto :goto_a

    #@128
    .line 487
    .restart local v6    # "runIsRtl":Z
    :cond_c
    const/4 v8, 0x0

    #@129
    goto :goto_b

    #@12a
    .restart local v8    # "advance":Z
    :cond_d
    move v2, v4

    #@12b
    .line 488
    goto :goto_c

    #@12c
    :cond_e
    move v2, v4

    #@12d
    .line 494
    goto :goto_d

    #@12e
    .line 507
    .end local v6    # "runIsRtl":Z
    .end local v8    # "advance":Z
    :cond_f
    const/4 v8, 0x0

    #@12f
    goto/16 :goto_2

    #@131
    .line 508
    .restart local v8    # "advance":Z
    :cond_10
    const/4 v2, -0x2

    #@132
    goto/16 :goto_3

    #@134
    .line 518
    .restart local v10    # "otherRunIndex":I
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v18    # "otherRunLevel":I
    :cond_11
    const/4 v13, 0x0

    #@135
    goto/16 :goto_4

    #@137
    .line 520
    .restart local v13    # "otherRunIsRtl":Z
    :cond_12
    const/4 v8, 0x0

    #@138
    .local v8, "advance":Z
    goto/16 :goto_5

    #@13a
    :cond_13
    move v14, v12

    #@13b
    .line 524
    goto/16 :goto_6

    #@13d
    :cond_14
    move v12, v11

    #@13e
    .line 525
    goto/16 :goto_7

    #@140
    .line 536
    :cond_15
    move/from16 v0, v18

    #@142
    move/from16 v1, v25

    #@144
    if-ge v0, v1, :cond_16

    #@146
    .line 538
    if-eqz v8, :cond_17

    #@148
    move/from16 v17, v11

    #@14a
    .line 565
    .end local v8    # "advance":Z
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    :cond_16
    :goto_e
    return v17

    #@14b
    .line 538
    .restart local v8    # "advance":Z
    .restart local v11    # "otherRunStart":I
    .restart local v12    # "otherRunLimit":I
    .restart local v13    # "otherRunIsRtl":Z
    .restart local v18    # "otherRunLevel":I
    :cond_17
    move/from16 v17, v12

    #@14d
    goto :goto_e

    #@14e
    .line 543
    .end local v11    # "otherRunStart":I
    .end local v12    # "otherRunLimit":I
    .end local v13    # "otherRunIsRtl":Z
    .end local v18    # "otherRunLevel":I
    .local v8, "advance":Z
    :cond_18
    const/4 v2, -0x1

    #@14f
    move/from16 v0, v17

    #@151
    if-ne v0, v2, :cond_1a

    #@153
    .line 547
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
    .line 559
    :cond_1a
    move/from16 v0, v17

    #@161
    move/from16 v1, v16

    #@163
    if-gt v0, v1, :cond_16

    #@165
    .line 560
    if-eqz v8, :cond_1b

    #@167
    move/from16 v17, v16

    #@169
    goto :goto_e

    #@16a
    .line 420
    :cond_1b
    const/16 v17, 0x0

    #@16c
    .line 560
    goto :goto_e
.end method

.method measure(IZLandroid/graphics/Paint$FontMetricsInt;)F
    .locals 18
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 268
    if-eqz p2, :cond_0

    #@2
    add-int/lit8 v16, p1, -0x1

    #@4
    .line 269
    .local v16, "target":I
    :goto_0
    if-gez v16, :cond_1

    #@6
    .line 270
    const/4 v1, 0x0

    #@7
    return v1

    #@8
    .end local v16    # "target":I
    :cond_0
    move/from16 v16, p1

    #@a
    .line 268
    goto :goto_0

    #@b
    .line 273
    .restart local v16    # "target":I
    :cond_1
    const/4 v10, 0x0

    #@c
    .line 275
    .local v10, "h":F
    move-object/from16 v0, p0

    #@e
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@10
    if-nez v1, :cond_3

    #@12
    .line 276
    move-object/from16 v0, p0

    #@14
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@16
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@18
    if-ne v1, v3, :cond_2

    #@1a
    .line 277
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
    .line 279
    :cond_2
    move-object/from16 v0, p0

    #@2d
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@2f
    sget-object v3, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@31
    if-ne v1, v3, :cond_3

    #@33
    .line 280
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
    .line 284
    :cond_3
    move-object/from16 v0, p0

    #@46
    iget-object v8, v0, Landroid/text/TextLine;->mChars:[C

    #@48
    .line 285
    .local v8, "chars":[C
    move-object/from16 v0, p0

    #@4a
    iget-object v1, v0, Landroid/text/TextLine;->mDirections:Landroid/text/Layout$Directions;

    #@4c
    iget-object v15, v1, Landroid/text/Layout$Directions;->mDirections:[I

    #@4e
    .line 286
    .local v15, "runs":[I
    const/4 v11, 0x0

    #@4f
    .local v11, "i":I
    :goto_1
    array-length v1, v15

    #@50
    if-ge v11, v1, :cond_13

    #@52
    .line 287
    aget v14, v15, v11

    #@54
    .line 288
    .local v14, "runStart":I
    add-int/lit8 v1, v11, 0x1

    #@56
    aget v1, v15, v1

    #@58
    const v3, 0x3ffffff

    #@5b
    and-int/2addr v1, v3

    #@5c
    add-int v13, v14, v1

    #@5e
    .line 289
    .local v13, "runLimit":I
    move-object/from16 v0, p0

    #@60
    iget v1, v0, Landroid/text/TextLine;->mLen:I

    #@62
    if-le v13, v1, :cond_4

    #@64
    .line 290
    move-object/from16 v0, p0

    #@66
    iget v13, v0, Landroid/text/TextLine;->mLen:I

    #@68
    .line 292
    :cond_4
    add-int/lit8 v1, v11, 0x1

    #@6a
    aget v1, v15, v1

    #@6c
    const/high16 v3, 0x4000000

    #@6e
    and-int/2addr v1, v3

    #@6f
    if-eqz v1, :cond_6

    #@71
    const/4 v5, 0x1

    #@72
    .line 294
    .local v5, "runIsRtl":Z
    :goto_2
    move v2, v14

    #@73
    .line 295
    .local v2, "segstart":I
    move-object/from16 v0, p0

    #@75
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@77
    if-eqz v1, :cond_7

    #@79
    move v4, v14

    #@7a
    .local v4, "j":I
    :goto_3
    if-gt v4, v13, :cond_12

    #@7c
    .line 296
    const/4 v9, 0x0

    #@7d
    .line 297
    .local v9, "codept":I
    move-object/from16 v0, p0

    #@7f
    iget-boolean v1, v0, Landroid/text/TextLine;->mHasTabs:Z

    #@81
    if-eqz v1, :cond_8

    #@83
    if-ge v4, v13, :cond_8

    #@85
    .line 298
    aget-char v9, v8, v4

    #@87
    .line 299
    const v1, 0xd800

    #@8a
    if-lt v9, v1, :cond_8

    #@8c
    const v1, 0xdc00

    #@8f
    if-ge v9, v1, :cond_8

    #@91
    add-int/lit8 v1, v4, 0x1

    #@93
    if-ge v1, v13, :cond_8

    #@95
    .line 300
    invoke-static {v8, v4}, Ljava/lang/Character;->codePointAt([CI)I

    #@98
    move-result v9

    #@99
    .line 301
    const v1, 0xffff

    #@9c
    if-le v9, v1, :cond_8

    #@9e
    .line 302
    add-int/lit8 v4, v4, 0x1

    #@a0
    .line 295
    :cond_5
    :goto_4
    add-int/lit8 v4, v4, 0x1

    #@a2
    goto :goto_3

    #@a3
    .line 292
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v9    # "codept":I
    :cond_6
    const/4 v5, 0x0

    #@a4
    .restart local v5    # "runIsRtl":Z
    goto :goto_2

    #@a5
    .line 295
    .restart local v2    # "segstart":I
    :cond_7
    move v4, v13

    #@a6
    .restart local v4    # "j":I
    goto :goto_3

    #@a7
    .line 308
    .restart local v9    # "codept":I
    :cond_8
    if-eq v4, v13, :cond_9

    #@a9
    const/16 v1, 0x9

    #@ab
    if-ne v9, v1, :cond_5

    #@ad
    .line 309
    :cond_9
    move/from16 v0, v16

    #@af
    if-lt v0, v2, :cond_a

    #@b1
    move/from16 v0, v16

    #@b3
    if-ge v0, v4, :cond_a

    #@b5
    const/4 v12, 0x1

    #@b6
    .line 311
    .local v12, "inSegment":Z
    :goto_5
    move-object/from16 v0, p0

    #@b8
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    #@ba
    const/4 v3, -0x1

    #@bb
    if-ne v1, v3, :cond_b

    #@bd
    const/4 v1, 0x1

    #@be
    :goto_6
    if-ne v1, v5, :cond_c

    #@c0
    const/4 v7, 0x1

    #@c1
    .line 312
    .local v7, "advance":Z
    :goto_7
    if-eqz v12, :cond_d

    #@c3
    if-eqz v7, :cond_d

    #@c5
    move-object/from16 v1, p0

    #@c7
    move/from16 v3, p1

    #@c9
    move-object/from16 v6, p3

    #@cb
    .line 313
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@ce
    move-result v1

    #@cf
    add-float/2addr v10, v1

    #@d0
    return v10

    #@d1
    .line 309
    .end local v7    # "advance":Z
    .end local v12    # "inSegment":Z
    :cond_a
    const/4 v12, 0x0

    #@d2
    .restart local v12    # "inSegment":Z
    goto :goto_5

    #@d3
    .line 311
    :cond_b
    const/4 v1, 0x0

    #@d4
    goto :goto_6

    #@d5
    :cond_c
    const/4 v7, 0x0

    #@d6
    .restart local v7    # "advance":Z
    goto :goto_7

    #@d7
    :cond_d
    move-object/from16 v1, p0

    #@d9
    move v3, v4

    #@da
    move-object/from16 v6, p3

    #@dc
    .line 316
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@df
    move-result v17

    #@e0
    .line 317
    .local v17, "w":F
    if-eqz v7, :cond_e

    #@e2
    .end local v17    # "w":F
    :goto_8
    add-float v10, v10, v17

    #@e4
    .line 319
    if-eqz v12, :cond_f

    #@e6
    .line 320
    const/4 v6, 0x0

    #@e7
    move-object/from16 v1, p0

    #@e9
    move/from16 v3, p1

    #@eb
    invoke-direct/range {v1 .. v6}, Landroid/text/TextLine;->measureRun(IIIZLandroid/graphics/Paint$FontMetricsInt;)F

    #@ee
    move-result v1

    #@ef
    add-float/2addr v10, v1

    #@f0
    return v10

    #@f1
    .line 317
    .restart local v17    # "w":F
    :cond_e
    move/from16 v0, v17

    #@f3
    neg-float v0, v0

    #@f4
    move/from16 v17, v0

    #@f6
    goto :goto_8

    #@f7
    .line 323
    .end local v17    # "w":F
    :cond_f
    const/16 v1, 0x9

    #@f9
    if-ne v9, v1, :cond_11

    #@fb
    .line 324
    move/from16 v0, p1

    #@fd
    if-ne v0, v4, :cond_10

    #@ff
    .line 325
    return v10

    #@100
    .line 327
    :cond_10
    move-object/from16 v0, p0

    #@102
    iget v1, v0, Landroid/text/TextLine;->mDir:I

    #@104
    int-to-float v1, v1

    #@105
    move-object/from16 v0, p0

    #@107
    iget v3, v0, Landroid/text/TextLine;->mDir:I

    #@109
    int-to-float v3, v3

    #@10a
    mul-float/2addr v3, v10

    #@10b
    move-object/from16 v0, p0

    #@10d
    invoke-virtual {v0, v3}, Landroid/text/TextLine;->nextTab(F)F

    #@110
    move-result v3

    #@111
    mul-float v10, v1, v3

    #@113
    .line 328
    move/from16 v0, v16

    #@115
    if-ne v0, v4, :cond_11

    #@117
    .line 329
    return v10

    #@118
    .line 333
    :cond_11
    add-int/lit8 v2, v4, 0x1

    #@11a
    goto :goto_4

    #@11b
    .line 286
    .end local v7    # "advance":Z
    .end local v9    # "codept":I
    .end local v12    # "inSegment":Z
    :cond_12
    add-int/lit8 v11, v11, 0x2

    #@11d
    goto/16 :goto_1

    #@11f
    .line 338
    .end local v2    # "segstart":I
    .end local v4    # "j":I
    .end local v5    # "runIsRtl":Z
    .end local v13    # "runLimit":I
    .end local v14    # "runStart":I
    :cond_13
    return v10
.end method

.method metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    .locals 2
    .param p1, "fmi"    # Landroid/graphics/Paint$FontMetricsInt;

    #@0
    .prologue
    .line 251
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
    .line 975
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 976
    iget-object v0, p0, Landroid/text/TextLine;->mTabs:Landroid/text/Layout$TabStops;

    #@6
    invoke-virtual {v0, p1}, Landroid/text/Layout$TabStops;->nextTab(F)F

    #@9
    move-result v0

    #@a
    return v0

    #@b
    .line 978
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
