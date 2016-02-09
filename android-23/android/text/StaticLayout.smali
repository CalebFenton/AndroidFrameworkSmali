.class public Landroid/text/StaticLayout;
.super Landroid/text/Layout;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/StaticLayout$Builder;,
        Landroid/text/StaticLayout$LineBreaks;
    }
.end annotation


# static fields
.field private static final CHAR_NEW_LINE:C = '\n'

.field private static final COLUMNS_ELLIPSIZE:I = 0x6

.field private static final COLUMNS_NORMAL:I = 0x4

.field private static final DESCENT:I = 0x2

.field private static final DIR:I = 0x0

.field private static final DIR_SHIFT:I = 0x1e

.field private static final ELLIPSIS_COUNT:I = 0x5

.field private static final ELLIPSIS_START:I = 0x4

.field private static final EXTRA_ROUNDING:D = 0.5

.field private static final HYPHEN:I = 0x3

.field private static final START:I = 0x0

.field private static final START_MASK:I = 0x1fffffff

.field private static final TAB:I = 0x0

.field private static final TAB_INCREMENT:I = 0x14

.field private static final TAB_MASK:I = 0x20000000

.field static final TAG:Ljava/lang/String; = "StaticLayout"

.field private static final TOP:I = 0x1


# instance fields
.field private mBottomPadding:I

.field private mColumns:I

.field private mEllipsizedWidth:I

.field private mLeftIndents:[I

.field private mLineCount:I

.field private mLineDirections:[Landroid/text/Layout$Directions;

.field private mLines:[I

.field private mMaximumVisibleLineCount:I

.field private mRightIndents:[I

.field private mTopPadding:I


# direct methods
.method static synthetic -wrap0(JJJIIZ)F
    .locals 2
    .param p0, "nativePtr"    # J
    .param p2, "nativePaint"    # J
    .param p4, "nativeTypeface"    # J
    .param p6, "start"    # I
    .param p7, "end"    # I
    .param p8, "isRtl"    # Z

    #@0
    .prologue
    invoke-static/range {p0 .. p8}, Landroid/text/StaticLayout;->nAddStyleRun(JJJIIZ)F

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap1()J
    .locals 2

    #@0
    invoke-static {}, Landroid/text/StaticLayout;->nNewBuilder()J

    #@3
    move-result-wide v0

    #@4
    return-wide v0
.end method

.method static synthetic -wrap2(JII[F)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "widths"    # [F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddMeasuredRun(JII[F)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(JIIF)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "width"    # F

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nAddReplacementRun(JIIF)V

    #@3
    return-void
.end method

.method static synthetic -wrap4(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFinishBuilder(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(J)V
    .locals 0
    .param p0, "nativePtr"    # J

    #@0
    .prologue
    invoke-static {p0, p1}, Landroid/text/StaticLayout;->nFreeBuilder(J)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(J[I)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "indents"    # [I

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(JLjava/lang/String;J)V
    .locals 0
    .param p0, "nativePtr"    # J
    .param p2, "locale"    # Ljava/lang/String;
    .param p3, "nativeHyphenator"    # J

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3, p4}, Landroid/text/StaticLayout;->nSetLocale(JLjava/lang/String;J)V

    #@3
    return-void
.end method

.method private constructor <init>(Landroid/text/StaticLayout$Builder;)V
    .locals 8
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    #@0
    .prologue
    .line 531
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 532
    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@6
    .line 536
    :goto_0
    iget-object v2, p1, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@8
    iget v3, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    #@a
    iget-object v4, p1, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    #@c
    iget v5, p1, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    #@e
    iget v6, p1, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    #@10
    move-object v0, p0

    #@11
    .line 531
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@14
    .line 1293
    const v0, 0x7fffffff

    #@17
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@19
    .line 538
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 539
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    #@20
    move-result-object v7

    #@21
    check-cast v7, Landroid/text/Layout$Ellipsizer;

    #@23
    .line 541
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@25
    .line 542
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@27
    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    #@29
    .line 543
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2b
    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    #@2d
    .line 544
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@2f
    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@31
    .line 546
    const/4 v0, 0x6

    #@32
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@34
    .line 552
    .end local v7    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v0, Landroid/text/Layout$Directions;

    #@36
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@38
    mul-int/lit8 v1, v1, 0x2

    #@3a
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    #@3d
    move-result-object v0

    #@3e
    check-cast v0, [Landroid/text/Layout$Directions;

    #@40
    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@42
    .line 553
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@44
    array-length v0, v0

    #@45
    new-array v0, v0, [I

    #@47
    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@49
    .line 554
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    #@4b
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@4d
    .line 556
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    #@4f
    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@51
    .line 557
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    #@53
    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@55
    .line 559
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@57
    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@59
    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    #@5c
    .line 530
    return-void

    #@5d
    .line 533
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@5f
    instance-of v0, v0, Landroid/text/Spanned;

    #@61
    if-eqz v0, :cond_1

    #@63
    .line 534
    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    #@65
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@67
    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@6a
    goto :goto_0

    #@6b
    .line 535
    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    #@6d
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@6f
    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@72
    goto :goto_0

    #@73
    .line 548
    :cond_2
    const/4 v0, 0x4

    #@74
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@76
    .line 549
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mWidth:I

    #@78
    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@7a
    goto :goto_1
.end method

.method synthetic constructor <init>(Landroid/text/StaticLayout$Builder;Landroid/text/StaticLayout;)V
    .locals 0
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;)V

    #@3
    return-void
.end method

.method constructor <init>(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 523
    const/4 v3, 0x0

    #@3
    move-object v0, p0

    #@4
    move-object v1, p1

    #@5
    move-object v4, v2

    #@6
    move v6, v5

    #@7
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@a
    .line 1293
    const v0, 0x7fffffff

    #@d
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@f
    .line 525
    const/4 v0, 0x6

    #@10
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@12
    .line 526
    const-class v0, Landroid/text/Layout$Directions;

    #@14
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@16
    mul-int/lit8 v1, v1, 0x2

    #@18
    invoke-static {v0, v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, [Landroid/text/Layout$Directions;

    #@1e
    iput-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@20
    .line 527
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@22
    array-length v0, v0

    #@23
    new-array v0, v0, [I

    #@25
    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@27
    .line 522
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z

    #@0
    .prologue
    .line 441
    const/4 v10, 0x0

    #@1
    const/4 v11, 0x0

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move v2, p2

    #@5
    move v3, p3

    #@6
    move-object/from16 v4, p4

    #@8
    move/from16 v5, p5

    #@a
    move-object/from16 v6, p6

    #@c
    move/from16 v7, p7

    #@e
    move/from16 v8, p8

    #@10
    move/from16 v9, p9

    #@12
    .line 440
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    #@15
    .line 439
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .param p10, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p11, "ellipsizedWidth"    # I

    #@0
    .prologue
    .line 463
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    .line 464
    const v13, 0x7fffffff

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move/from16 v2, p2

    #@9
    move/from16 v3, p3

    #@b
    move-object/from16 v4, p4

    #@d
    move/from16 v5, p5

    #@f
    move-object/from16 v6, p6

    #@11
    move/from16 v8, p7

    #@13
    move/from16 v9, p8

    #@15
    move/from16 v10, p9

    #@17
    move-object/from16 v11, p10

    #@19
    move/from16 v12, p11

    #@1b
    .line 462
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    #@1e
    .line 461
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 14
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z

    #@0
    .prologue
    .line 453
    const/4 v11, 0x0

    #@1
    const/4 v12, 0x0

    #@2
    const v13, 0x7fffffff

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move/from16 v2, p2

    #@9
    move/from16 v3, p3

    #@b
    move-object/from16 v4, p4

    #@d
    move/from16 v5, p5

    #@f
    move-object/from16 v6, p6

    #@11
    move-object/from16 v7, p7

    #@13
    move/from16 v8, p8

    #@15
    move/from16 v9, p9

    #@17
    move/from16 v10, p10

    #@19
    .line 452
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    #@1c
    .line 451
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .locals 12
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p8, "spacingmult"    # F
    .param p9, "spacingadd"    # F
    .param p10, "includepad"    # Z
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "ellipsizedWidth"    # I
    .param p13, "maxLines"    # I

    #@0
    .prologue
    .line 476
    if-nez p11, :cond_0

    #@2
    move-object v3, p1

    #@3
    :goto_0
    move-object v2, p0

    #@4
    move-object/from16 v4, p4

    #@6
    move/from16 v5, p5

    #@8
    move-object/from16 v6, p6

    #@a
    move-object/from16 v7, p7

    #@c
    move/from16 v8, p8

    #@e
    move/from16 v9, p9

    #@10
    invoke-direct/range {v2 .. v9}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    #@13
    .line 1293
    const v2, 0x7fffffff

    #@16
    iput v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@18
    .line 483
    invoke-static/range {p1 .. p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    #@1b
    move-result-object v2

    #@1c
    move-object/from16 v0, p6

    #@1e
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    #@21
    move-result-object v2

    #@22
    move-object/from16 v0, p7

    #@24
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    #@27
    move-result-object v2

    #@28
    move/from16 v0, p9

    #@2a
    move/from16 v1, p8

    #@2c
    invoke-virtual {v2, v0, v1}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    #@2f
    move-result-object v2

    #@30
    move/from16 v0, p10

    #@32
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    #@35
    move-result-object v2

    #@36
    move/from16 v0, p12

    #@38
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    #@3b
    move-result-object v2

    #@3c
    move-object/from16 v0, p11

    #@3e
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    #@41
    move-result-object v2

    #@42
    move/from16 v0, p13

    #@44
    invoke-virtual {v2, v0}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    #@47
    move-result-object v10

    #@48
    .line 499
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    #@4a
    .line 500
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    #@4d
    move-result-object v11

    #@4e
    check-cast v11, Landroid/text/Layout$Ellipsizer;

    #@50
    .line 502
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@52
    .line 503
    move/from16 v0, p12

    #@54
    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    #@56
    .line 504
    move-object/from16 v0, p11

    #@58
    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    #@5a
    .line 505
    move/from16 v0, p12

    #@5c
    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@5e
    .line 507
    const/4 v2, 0x6

    #@5f
    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@61
    .line 513
    .end local v11    # "e":Landroid/text/Layout$Ellipsizer;
    :goto_1
    const-class v2, Landroid/text/Layout$Directions;

    #@63
    iget v3, p0, Landroid/text/StaticLayout;->mColumns:I

    #@65
    mul-int/lit8 v3, v3, 0x2

    #@67
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    #@6a
    move-result-object v2

    #@6b
    check-cast v2, [Landroid/text/Layout$Directions;

    #@6d
    iput-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@6f
    .line 514
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@71
    array-length v2, v2

    #@72
    new-array v2, v2, [I

    #@74
    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    #@76
    .line 515
    move/from16 v0, p13

    #@78
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@7a
    .line 517
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@7c
    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@7e
    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    #@81
    .line 519
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    #@84
    .line 475
    return-void

    #@85
    .line 478
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    #@87
    if-eqz v2, :cond_1

    #@89
    .line 479
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    #@8b
    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@8e
    goto/16 :goto_0

    #@90
    .line 480
    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    #@92
    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@95
    goto/16 :goto_0

    #@97
    .line 509
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    #@98
    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@9a
    .line 510
    move/from16 v0, p5

    #@9c
    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@9e
    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .locals 10
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z

    #@0
    .prologue
    .line 420
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    const/4 v2, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v4, p2

    #@8
    move v5, p3

    #@9
    move-object v6, p4

    #@a
    move v7, p5

    #@b
    move/from16 v8, p6

    #@d
    move/from16 v9, p7

    #@f
    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    #@12
    .line 419
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V
    .locals 11
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingmult"    # F
    .param p7, "spacingadd"    # F
    .param p8, "includepad"    # Z

    #@0
    .prologue
    .line 431
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v3

    #@4
    const/4 v2, 0x0

    #@5
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v4, p2

    #@8
    move v5, p3

    #@9
    move-object v6, p4

    #@a
    move-object/from16 v7, p5

    #@c
    move/from16 v8, p6

    #@e
    move/from16 v9, p7

    #@10
    move/from16 v10, p8

    #@12
    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZ)V

    #@15
    .line 430
    return-void
.end method

.method private calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .locals 20
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "widths"    # [F
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    #@0
    .prologue
    .line 1000
    cmpg-float v17, p8, p5

    #@2
    if-gtz v17, :cond_0

    #@4
    if-eqz p10, :cond_3

    #@6
    .line 1008
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@8
    move-object/from16 v0, p6

    #@a
    move-object/from16 v1, v17

    #@c
    if-ne v0, v1, :cond_4

    #@e
    .line 1009
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    #@10
    :goto_0
    const/16 v18, 0x0

    #@12
    const/16 v19, 0x1

    #@14
    .line 1007
    move-object/from16 v0, p9

    #@16
    move-object/from16 v1, v17

    #@18
    move/from16 v2, v18

    #@1a
    move/from16 v3, v19

    #@1c
    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText([CII)F

    #@1f
    move-result v6

    #@20
    .line 1010
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    #@21
    .line 1011
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    #@22
    .line 1012
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    #@24
    .line 1015
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@26
    move-object/from16 v0, p6

    #@28
    move-object/from16 v1, v17

    #@2a
    if-ne v0, v1, :cond_7

    #@2c
    .line 1016
    move-object/from16 v0, p0

    #@2e
    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@30
    move/from16 v17, v0

    #@32
    const/16 v18, 0x1

    #@34
    move/from16 v0, v17

    #@36
    move/from16 v1, v18

    #@38
    if-ne v0, v1, :cond_6

    #@3a
    .line 1017
    const/4 v15, 0x0

    #@3b
    .line 1020
    .local v15, "sum":F
    move v7, v10

    #@3c
    .local v7, "i":I
    :goto_1
    if-lez v7, :cond_1

    #@3e
    .line 1021
    add-int/lit8 v17, v7, -0x1

    #@40
    add-int v17, v17, p1

    #@42
    sub-int v17, v17, p4

    #@44
    aget v16, p3, v17

    #@46
    .line 1023
    .local v16, "w":F
    add-float v17, v16, v15

    #@48
    add-float v17, v17, v6

    #@4a
    cmpl-float v17, v17, p5

    #@4c
    if-lez v17, :cond_5

    #@4e
    .line 1030
    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    #@4f
    .line 1031
    move v4, v7

    #@50
    .line 1095
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    #@52
    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    #@54
    move-object/from16 v17, v0

    #@56
    move-object/from16 v0, p0

    #@58
    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    #@5a
    move/from16 v18, v0

    #@5c
    mul-int v18, v18, p7

    #@5e
    add-int/lit8 v18, v18, 0x4

    #@60
    aput v5, v17, v18

    #@62
    .line 1096
    move-object/from16 v0, p0

    #@64
    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    #@66
    move-object/from16 v17, v0

    #@68
    move-object/from16 v0, p0

    #@6a
    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    #@6c
    move/from16 v18, v0

    #@6e
    mul-int v18, v18, p7

    #@70
    add-int/lit8 v18, v18, 0x5

    #@72
    aput v4, v17, v18

    #@74
    .line 999
    return-void

    #@75
    .line 1002
    .end local v4    # "ellipsisCount":I
    .end local v5    # "ellipsisStart":I
    .end local v6    # "ellipsisWidth":F
    .end local v10    # "len":I
    :cond_3
    move-object/from16 v0, p0

    #@77
    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    #@79
    move-object/from16 v17, v0

    #@7b
    move-object/from16 v0, p0

    #@7d
    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    #@7f
    move/from16 v18, v0

    #@81
    mul-int v18, v18, p7

    #@83
    add-int/lit8 v18, v18, 0x4

    #@85
    const/16 v19, 0x0

    #@87
    aput v19, v17, v18

    #@89
    .line 1003
    move-object/from16 v0, p0

    #@8b
    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    #@8d
    move-object/from16 v17, v0

    #@8f
    move-object/from16 v0, p0

    #@91
    iget v0, v0, Landroid/text/StaticLayout;->mColumns:I

    #@93
    move/from16 v18, v0

    #@95
    mul-int v18, v18, p7

    #@97
    add-int/lit8 v18, v18, 0x5

    #@99
    const/16 v19, 0x0

    #@9b
    aput v19, v17, v18

    #@9d
    .line 1004
    return-void

    #@9e
    .line 1009
    :cond_4
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1027
    .restart local v4    # "ellipsisCount":I
    .restart local v5    # "ellipsisStart":I
    .restart local v6    # "ellipsisWidth":F
    .restart local v7    # "i":I
    .restart local v10    # "len":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_5
    add-float v15, v15, v16

    #@a4
    .line 1020
    add-int/lit8 v7, v7, -0x1

    #@a6
    goto :goto_1

    #@a7
    .line 1033
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .end local v16    # "w":F
    :cond_6
    const-string/jumbo v17, "StaticLayout"

    #@aa
    const/16 v18, 0x5

    #@ac
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@af
    move-result v17

    #@b0
    if-eqz v17, :cond_2

    #@b2
    .line 1034
    const-string/jumbo v17, "StaticLayout"

    #@b5
    const-string/jumbo v18, "Start Ellipsis only supported with one line"

    #@b8
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto :goto_2

    #@bc
    .line 1037
    :cond_7
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@be
    move-object/from16 v0, p6

    #@c0
    move-object/from16 v1, v17

    #@c2
    if-eq v0, v1, :cond_8

    #@c4
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@c6
    move-object/from16 v0, p6

    #@c8
    move-object/from16 v1, v17

    #@ca
    if-ne v0, v1, :cond_a

    #@cc
    .line 1039
    :cond_8
    const/4 v15, 0x0

    #@cd
    .line 1042
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    #@ce
    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v10, :cond_9

    #@d0
    .line 1043
    add-int v17, v7, p1

    #@d2
    sub-int v17, v17, p4

    #@d4
    aget v16, p3, v17

    #@d6
    .line 1045
    .restart local v16    # "w":F
    add-float v17, v16, v15

    #@d8
    add-float v17, v17, v6

    #@da
    cmpl-float v17, v17, p5

    #@dc
    if-lez v17, :cond_d

    #@de
    .line 1052
    .end local v16    # "w":F
    :cond_9
    move v5, v7

    #@df
    .line 1053
    sub-int v4, v10, v7

    #@e1
    .line 1054
    if-eqz p10, :cond_2

    #@e3
    if-nez v4, :cond_2

    #@e5
    if-lez v10, :cond_2

    #@e7
    .line 1055
    add-int/lit8 v5, v10, -0x1

    #@e9
    .line 1056
    const/4 v4, 0x1

    #@ea
    goto/16 :goto_2

    #@ec
    .line 1038
    .end local v7    # "i":I
    .end local v15    # "sum":F
    :cond_a
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@ee
    move-object/from16 v0, p6

    #@f0
    move-object/from16 v1, v17

    #@f2
    if-eq v0, v1, :cond_8

    #@f4
    .line 1060
    move-object/from16 v0, p0

    #@f6
    iget v0, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@f8
    move/from16 v17, v0

    #@fa
    const/16 v18, 0x1

    #@fc
    move/from16 v0, v17

    #@fe
    move/from16 v1, v18

    #@100
    if-ne v0, v1, :cond_10

    #@102
    .line 1061
    const/4 v11, 0x0

    #@103
    .local v11, "lsum":F
    const/4 v14, 0x0

    #@104
    .line 1062
    .local v14, "rsum":F
    const/4 v9, 0x0

    #@105
    .local v9, "left":I
    move v13, v10

    #@106
    .line 1064
    .local v13, "right":I
    sub-float v17, p5, v6

    #@108
    const/high16 v18, 0x40000000    # 2.0f

    #@10a
    div-float v12, v17, v18

    #@10c
    .line 1065
    .local v12, "ravail":F
    move v13, v10

    #@10d
    :goto_4
    if-lez v13, :cond_b

    #@10f
    .line 1066
    add-int/lit8 v17, v13, -0x1

    #@111
    add-int v17, v17, p1

    #@113
    sub-int v17, v17, p4

    #@115
    aget v16, p3, v17

    #@117
    .line 1068
    .restart local v16    # "w":F
    add-float v17, v16, v14

    #@119
    cmpl-float v17, v17, v12

    #@11b
    if-lez v17, :cond_e

    #@11d
    .line 1075
    .end local v16    # "w":F
    :cond_b
    sub-float v17, p5, v6

    #@11f
    sub-float v8, v17, v14

    #@121
    .line 1076
    .local v8, "lavail":F
    const/4 v9, 0x0

    #@122
    :goto_5
    if-ge v9, v13, :cond_c

    #@124
    .line 1077
    add-int v17, v9, p1

    #@126
    sub-int v17, v17, p4

    #@128
    aget v16, p3, v17

    #@12a
    .line 1079
    .restart local v16    # "w":F
    add-float v17, v16, v11

    #@12c
    cmpl-float v17, v17, v8

    #@12e
    if-lez v17, :cond_f

    #@130
    .line 1086
    .end local v16    # "w":F
    :cond_c
    move v5, v9

    #@131
    .line 1087
    sub-int v4, v13, v9

    #@133
    goto/16 :goto_2

    #@135
    .line 1049
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .restart local v7    # "i":I
    .restart local v15    # "sum":F
    .restart local v16    # "w":F
    :cond_d
    add-float v15, v15, v16

    #@137
    .line 1042
    add-int/lit8 v7, v7, 0x1

    #@139
    goto :goto_3

    #@13a
    .line 1072
    .end local v7    # "i":I
    .end local v15    # "sum":F
    .restart local v9    # "left":I
    .restart local v11    # "lsum":F
    .restart local v12    # "ravail":F
    .restart local v13    # "right":I
    .restart local v14    # "rsum":F
    :cond_e
    add-float v14, v14, v16

    #@13c
    .line 1065
    add-int/lit8 v13, v13, -0x1

    #@13e
    goto :goto_4

    #@13f
    .line 1083
    .restart local v8    # "lavail":F
    :cond_f
    add-float v11, v11, v16

    #@141
    .line 1076
    add-int/lit8 v9, v9, 0x1

    #@143
    goto :goto_5

    #@144
    .line 1089
    .end local v8    # "lavail":F
    .end local v9    # "left":I
    .end local v11    # "lsum":F
    .end local v12    # "ravail":F
    .end local v13    # "right":I
    .end local v14    # "rsum":F
    .end local v16    # "w":F
    :cond_10
    const-string/jumbo v17, "StaticLayout"

    #@147
    const/16 v18, 0x5

    #@149
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@14c
    move-result v17

    #@14d
    if-eqz v17, :cond_2

    #@14f
    .line 1090
    const-string/jumbo v17, "StaticLayout"

    #@152
    const-string/jumbo v18, "Middle Ellipsis only supported with one line"

    #@155
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@158
    goto/16 :goto_2
.end method

.method private static native nAddMeasuredRun(JII[F)V
.end method

.method private static native nAddReplacementRun(JIIF)V
.end method

.method private static native nAddStyleRun(JJJIIZ)F
.end method

.method private static native nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I
.end method

.method private static native nFinishBuilder(J)V
.end method

.method private static native nFreeBuilder(J)V
.end method

.method private static native nGetWidths(J[F)V
.end method

.method static native nLoadHyphenator(Ljava/lang/String;)J
.end method

.method private static native nNewBuilder()J
.end method

.method private static native nSetIndents(J[I)V
.end method

.method private static native nSetLocale(JLjava/lang/String;J)V
.end method

.method private static native nSetupParagraph(J[CIFIF[IIII)V
.end method

.method private out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .locals 28
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "above"    # I
    .param p5, "below"    # I
    .param p6, "top"    # I
    .param p7, "bottom"    # I
    .param p8, "v"    # I
    .param p9, "spacingmult"    # F
    .param p10, "spacingadd"    # F
    .param p11, "chooseHt"    # [Landroid/text/style/LineHeightSpan;
    .param p12, "chooseHtv"    # [I
    .param p13, "fm"    # Landroid/graphics/Paint$FontMetricsInt;
    .param p14, "flags"    # I
    .param p15, "needMultiply"    # Z
    .param p16, "chdirs"    # [B
    .param p17, "dir"    # I
    .param p18, "easy"    # Z
    .param p19, "bufEnd"    # I
    .param p20, "includePad"    # Z
    .param p21, "trackPad"    # Z
    .param p22, "chs"    # [C
    .param p23, "widths"    # [F
    .param p24, "widthStart"    # I
    .param p25, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p26, "ellipsisWidth"    # F
    .param p27, "textWidth"    # F
    .param p28, "paint"    # Landroid/text/TextPaint;
    .param p29, "moreChars"    # Z

    #@0
    .prologue
    .line 871
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@4
    move/from16 v22, v0

    #@6
    .line 872
    .local v22, "j":I
    move-object/from16 v0, p0

    #@8
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    #@a
    mul-int v26, v22, v2

    #@c
    .line 873
    .local v26, "off":I
    move-object/from16 v0, p0

    #@e
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    #@10
    add-int v2, v2, v26

    #@12
    add-int/lit8 v27, v2, 0x1

    #@14
    .line 874
    .local v27, "want":I
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    #@18
    move-object/from16 v25, v0

    #@1a
    .line 876
    .local v25, "lines":[I
    move-object/from16 v0, v25

    #@1c
    array-length v2, v0

    #@1d
    move/from16 v0, v27

    #@1f
    if-lt v0, v2, :cond_0

    #@21
    .line 878
    const-class v2, Landroid/text/Layout$Directions;

    #@23
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@26
    move-result v3

    #@27
    .line 877
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    #@2a
    move-result-object v20

    #@2b
    check-cast v20, [Landroid/text/Layout$Directions;

    #@2d
    .line 879
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@31
    .line 880
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@35
    array-length v3, v3

    #@36
    .line 879
    const/4 v4, 0x0

    #@37
    const/4 v5, 0x0

    #@38
    move-object/from16 v0, v20

    #@3a
    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 881
    move-object/from16 v0, v20

    #@3f
    move-object/from16 v1, p0

    #@41
    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@43
    .line 883
    move-object/from16 v0, v20

    #@45
    array-length v2, v0

    #@46
    new-array v0, v2, [I

    #@48
    move-object/from16 v19, v0

    #@4a
    .line 884
    .local v19, "grow":[I
    move-object/from16 v0, v25

    #@4c
    array-length v2, v0

    #@4d
    const/4 v3, 0x0

    #@4e
    const/4 v4, 0x0

    #@4f
    move-object/from16 v0, v25

    #@51
    move-object/from16 v1, v19

    #@53
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@56
    .line 885
    move-object/from16 v0, v19

    #@58
    move-object/from16 v1, p0

    #@5a
    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    #@5c
    .line 886
    move-object/from16 v25, v19

    #@5e
    .line 889
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    #@60
    .line 890
    move/from16 v0, p4

    #@62
    move-object/from16 v1, p13

    #@64
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@66
    .line 891
    move/from16 v0, p5

    #@68
    move-object/from16 v1, p13

    #@6a
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@6c
    .line 892
    move/from16 v0, p6

    #@6e
    move-object/from16 v1, p13

    #@70
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@72
    .line 893
    move/from16 v0, p7

    #@74
    move-object/from16 v1, p13

    #@76
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@78
    .line 895
    const/16 v21, 0x0

    #@7a
    .local v21, "i":I
    :goto_0
    move-object/from16 v0, p11

    #@7c
    array-length v2, v0

    #@7d
    move/from16 v0, v21

    #@7f
    if-ge v0, v2, :cond_2

    #@81
    .line 896
    aget-object v2, p11, v21

    #@83
    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    #@85
    if-eqz v2, :cond_1

    #@87
    .line 897
    aget-object v2, p11, v21

    #@89
    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    #@8b
    .line 898
    aget v6, p12, v21

    #@8d
    move-object/from16 v3, p1

    #@8f
    move/from16 v4, p2

    #@91
    move/from16 v5, p3

    #@93
    move/from16 v7, p8

    #@95
    move-object/from16 v8, p13

    #@97
    move-object/from16 v9, p28

    #@99
    .line 897
    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@9c
    .line 895
    :goto_1
    add-int/lit8 v21, v21, 0x1

    #@9e
    goto :goto_0

    #@9f
    .line 901
    :cond_1
    aget-object v2, p11, v21

    #@a1
    aget v6, p12, v21

    #@a3
    move-object/from16 v3, p1

    #@a5
    move/from16 v4, p2

    #@a7
    move/from16 v5, p3

    #@a9
    move/from16 v7, p8

    #@ab
    move-object/from16 v8, p13

    #@ad
    invoke-interface/range {v2 .. v8}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    #@b0
    goto :goto_1

    #@b1
    .line 905
    :cond_2
    move-object/from16 v0, p13

    #@b3
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@b5
    move/from16 p4, v0

    #@b7
    .line 906
    move-object/from16 v0, p13

    #@b9
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@bb
    move/from16 p5, v0

    #@bd
    .line 907
    move-object/from16 v0, p13

    #@bf
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@c1
    move/from16 p6, v0

    #@c3
    .line 908
    move-object/from16 v0, p13

    #@c5
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@c7
    move/from16 p7, v0

    #@c9
    .line 911
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_e

    #@cb
    const/16 v18, 0x1

    #@cd
    .line 912
    .local v18, "firstLine":Z
    :goto_2
    add-int/lit8 v2, v22, 0x1

    #@cf
    move-object/from16 v0, p0

    #@d1
    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@d3
    if-ne v2, v3, :cond_f

    #@d5
    const/4 v13, 0x1

    #@d6
    .line 913
    .local v13, "currentLineIsTheLastVisibleOne":Z
    :goto_3
    if-nez v13, :cond_4

    #@d8
    move/from16 v0, p3

    #@da
    move/from16 v1, p19

    #@dc
    if-ne v0, v1, :cond_10

    #@de
    :cond_4
    const/16 v23, 0x1

    #@e0
    .line 915
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v18, :cond_6

    #@e2
    .line 916
    if-eqz p21, :cond_5

    #@e4
    .line 917
    sub-int v2, p6, p4

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    #@ea
    .line 920
    :cond_5
    if-eqz p20, :cond_6

    #@ec
    .line 921
    move/from16 p4, p6

    #@ee
    .line 927
    :cond_6
    if-eqz v23, :cond_8

    #@f0
    .line 928
    if-eqz p21, :cond_7

    #@f2
    .line 929
    sub-int v2, p7, p5

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    #@f8
    .line 932
    :cond_7
    if-eqz p20, :cond_8

    #@fa
    .line 933
    move/from16 p5, p7

    #@fc
    .line 938
    :cond_8
    if-eqz p15, :cond_9

    #@fe
    if-eqz v23, :cond_11

    #@100
    .line 946
    :cond_9
    const/4 v15, 0x0

    #@101
    .line 949
    .local v15, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    #@103
    aput p2, v25, v2

    #@105
    .line 950
    add-int/lit8 v2, v26, 0x1

    #@107
    aput p8, v25, v2

    #@109
    .line 951
    add-int/lit8 v2, v26, 0x2

    #@10b
    add-int v3, p5, v15

    #@10d
    aput v3, v25, v2

    #@10f
    .line 953
    sub-int v2, p5, p4

    #@111
    add-int/2addr v2, v15

    #@112
    add-int p8, p8, v2

    #@114
    .line 954
    move-object/from16 v0, p0

    #@116
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    #@118
    add-int v2, v2, v26

    #@11a
    add-int/lit8 v2, v2, 0x0

    #@11c
    aput p3, v25, v2

    #@11e
    .line 955
    move-object/from16 v0, p0

    #@120
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    #@122
    add-int v2, v2, v26

    #@124
    add-int/lit8 v2, v2, 0x1

    #@126
    aput p8, v25, v2

    #@128
    .line 959
    add-int/lit8 v2, v26, 0x0

    #@12a
    aget v3, v25, v2

    #@12c
    const/high16 v4, 0x20000000

    #@12e
    and-int v4, v4, p14

    #@130
    or-int/2addr v3, v4

    #@131
    aput v3, v25, v2

    #@133
    .line 960
    add-int/lit8 v2, v26, 0x3

    #@135
    aput p14, v25, v2

    #@137
    .line 962
    add-int/lit8 v2, v26, 0x0

    #@139
    aget v3, v25, v2

    #@13b
    shl-int/lit8 v4, p17, 0x1e

    #@13d
    or-int/2addr v3, v4

    #@13e
    aput v3, v25, v2

    #@140
    .line 963
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@142
    .line 967
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_13

    #@144
    .line 968
    move-object/from16 v0, p0

    #@146
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@148
    aput-object v24, v2, v22

    #@14a
    .line 974
    :goto_6
    if-eqz p25, :cond_d

    #@14c
    .line 977
    if-eqz p29, :cond_14

    #@14e
    move-object/from16 v0, p0

    #@150
    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@152
    add-int/lit8 v2, v2, 0x1

    #@154
    move-object/from16 v0, p0

    #@156
    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@158
    if-ne v2, v3, :cond_14

    #@15a
    const/4 v12, 0x1

    #@15b
    .line 980
    .local v12, "forceEllipsis":Z
    :goto_7
    move-object/from16 v0, p0

    #@15d
    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@15f
    const/4 v3, 0x1

    #@160
    if-ne v2, v3, :cond_a

    #@162
    if-nez p29, :cond_15

    #@164
    :cond_a
    if-eqz v18, :cond_b

    #@166
    if-eqz p29, :cond_15

    #@168
    .line 982
    :cond_b
    if-nez v18, :cond_c

    #@16a
    if-nez v13, :cond_16

    #@16c
    if-eqz p29, :cond_16

    #@16e
    :cond_c
    const/4 v14, 0x0

    #@16f
    .line 984
    .local v14, "doEllipsis":Z
    :goto_8
    if-eqz v14, :cond_d

    #@171
    move-object/from16 v2, p0

    #@173
    move/from16 v3, p2

    #@175
    move/from16 v4, p3

    #@177
    move-object/from16 v5, p23

    #@179
    move/from16 v6, p24

    #@17b
    move/from16 v7, p26

    #@17d
    move-object/from16 v8, p25

    #@17f
    move/from16 v9, v22

    #@181
    move/from16 v10, p27

    #@183
    move-object/from16 v11, p28

    #@185
    .line 985
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    #@188
    .line 991
    .end local v12    # "forceEllipsis":Z
    .end local v14    # "doEllipsis":Z
    :cond_d
    move-object/from16 v0, p0

    #@18a
    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@18c
    add-int/lit8 v2, v2, 0x1

    #@18e
    move-object/from16 v0, p0

    #@190
    iput v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@192
    .line 992
    return p8

    #@193
    .line 911
    .end local v13    # "currentLineIsTheLastVisibleOne":Z
    .end local v15    # "extra":I
    .end local v18    # "firstLine":Z
    .end local v23    # "lastLine":Z
    .end local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_e
    const/16 v18, 0x0

    #@195
    .restart local v18    # "firstLine":Z
    goto/16 :goto_2

    #@197
    .line 912
    :cond_f
    const/4 v13, 0x0

    #@198
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    goto/16 :goto_3

    #@19a
    .line 913
    :cond_10
    const/16 v23, 0x0

    #@19c
    .restart local v23    # "lastLine":Z
    goto/16 :goto_4

    #@19e
    .line 939
    :cond_11
    sub-int v2, p5, p4

    #@1a0
    int-to-float v2, v2

    #@1a1
    const/high16 v3, 0x3f800000    # 1.0f

    #@1a3
    sub-float v3, p9, v3

    #@1a5
    mul-float/2addr v2, v3

    #@1a6
    add-float v2, v2, p10

    #@1a8
    float-to-double v0, v2

    #@1a9
    move-wide/from16 v16, v0

    #@1ab
    .line 940
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    #@1ad
    cmpl-double v2, v16, v2

    #@1af
    if-ltz v2, :cond_12

    #@1b1
    .line 941
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@1b3
    add-double v2, v2, v16

    #@1b5
    double-to-int v15, v2

    #@1b6
    .restart local v15    # "extra":I
    goto/16 :goto_5

    #@1b8
    .line 943
    .end local v15    # "extra":I
    :cond_12
    move-wide/from16 v0, v16

    #@1ba
    neg-double v2, v0

    #@1bb
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@1bd
    add-double/2addr v2, v4

    #@1be
    double-to-int v2, v2

    #@1bf
    neg-int v15, v2

    #@1c0
    .restart local v15    # "extra":I
    goto/16 :goto_5

    #@1c2
    .line 970
    .end local v16    # "ex":D
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_13
    move-object/from16 v0, p0

    #@1c4
    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@1c6
    sub-int v4, p2, p24

    #@1c8
    .line 971
    sub-int v6, p2, p24

    #@1ca
    sub-int v7, p3, p2

    #@1cc
    move/from16 v2, p17

    #@1ce
    move-object/from16 v3, p16

    #@1d0
    move-object/from16 v5, p22

    #@1d2
    .line 970
    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    #@1d5
    move-result-object v2

    #@1d6
    aput-object v2, v8, v22

    #@1d8
    goto/16 :goto_6

    #@1da
    .line 977
    :cond_14
    const/4 v12, 0x0

    #@1db
    .restart local v12    # "forceEllipsis":Z
    goto :goto_7

    #@1dc
    .line 981
    :cond_15
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@1de
    move-object/from16 v0, p25

    #@1e0
    if-eq v0, v2, :cond_b

    #@1e2
    .line 980
    const/4 v14, 0x1

    #@1e3
    .restart local v14    # "doEllipsis":Z
    goto :goto_8

    #@1e4
    .line 983
    .end local v14    # "doEllipsis":Z
    :cond_16
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1e6
    move-object/from16 v0, p25

    #@1e8
    if-ne v0, v2, :cond_17

    #@1ea
    const/4 v14, 0x1

    #@1eb
    .restart local v14    # "doEllipsis":Z
    goto :goto_8

    #@1ec
    .end local v14    # "doEllipsis":Z
    :cond_17
    const/4 v14, 0x0

    #@1ed
    .restart local v14    # "doEllipsis":Z
    goto :goto_8
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 117
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    #@0
    .prologue
    .line 563
    move-object/from16 v0, p1

    #@2
    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@4
    .line 564
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@6
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    #@8
    move/from16 v72, v0

    #@a
    .line 565
    .local v72, "bufStart":I
    move-object/from16 v0, p1

    #@c
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    #@e
    move/from16 v37, v0

    #@10
    .line 566
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    #@12
    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@14
    move-object/from16 v46, v0

    #@16
    .line 567
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    #@18
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    #@1a
    move/from16 v99, v0

    #@1c
    .line 568
    .local v99, "outerWidth":I
    move-object/from16 v0, p1

    #@1e
    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@20
    .line 569
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    #@22
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    #@24
    move/from16 v27, v0

    #@26
    .line 570
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    #@28
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    #@2a
    move/from16 v28, v0

    #@2c
    .line 571
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    #@2e
    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@30
    int-to-float v0, v9

    #@31
    move/from16 v44, v0

    #@33
    .line 572
    .local v44, "ellipsizedWidth":F
    move-object/from16 v0, p1

    #@35
    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@37
    move-object/from16 v43, v0

    #@39
    .line 573
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v94, Landroid/text/StaticLayout$LineBreaks;

    #@3b
    invoke-direct/range {v94 .. v94}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    #@3e
    .line 575
    .local v94, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    #@3f
    new-array v0, v9, [I

    #@41
    move-object/from16 v106, v0

    #@43
    .line 578
    .local v106, "spanEndCache":[I
    const/16 v9, 0x10

    #@45
    new-array v0, v9, [I

    #@47
    move-object/from16 v85, v0

    #@49
    .line 579
    .local v85, "fmCache":[I
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    #@4c
    move-result-object v9

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    #@52
    .line 581
    const/4 v9, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@57
    .line 583
    const/16 v26, 0x0

    #@59
    .line 584
    .local v26, "v":I
    const/high16 v9, 0x3f800000    # 1.0f

    #@5b
    cmpl-float v9, v27, v9

    #@5d
    if-nez v9, :cond_0

    #@5f
    const/4 v9, 0x0

    #@60
    cmpl-float v9, v28, v9

    #@62
    if-eqz v9, :cond_3

    #@64
    :cond_0
    const/16 v33, 0x1

    #@66
    .line 586
    .local v33, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    #@68
    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    #@6a
    move-object/from16 v31, v0

    #@6c
    .line 587
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    #@6e
    .line 589
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    #@70
    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    #@72
    .line 591
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v112, 0x0

    #@74
    .line 592
    .local v112, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    #@76
    if-eqz v9, :cond_1

    #@78
    move-object/from16 v112, v5

    #@7a
    .line 593
    check-cast v112, Landroid/text/Spanned;

    #@7c
    .line 596
    .end local v112    # "spanned":Landroid/text/Spanned;
    :cond_1
    move/from16 v6, v72

    #@7e
    .end local v30    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v37

    #@80
    if-gt v6, v0, :cond_26

    #@82
    .line 597
    const/16 v9, 0xa

    #@84
    move/from16 v0, v37

    #@86
    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@89
    move-result v7

    #@8a
    .line 598
    .local v7, "paraEnd":I
    if-gez v7, :cond_4

    #@8c
    .line 599
    move/from16 v7, v37

    #@8e
    .line 603
    :goto_2
    const/4 v15, 0x1

    #@8f
    .line 604
    .local v15, "firstWidthLineCount":I
    move/from16 v82, v99

    #@91
    .line 605
    .local v82, "firstWidth":I
    move/from16 v101, v99

    #@93
    .line 607
    .local v101, "restWidth":I
    const/16 v29, 0x0

    #@95
    .line 609
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v112, :cond_9

    #@97
    .line 611
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    #@99
    .line 610
    move-object/from16 v0, v112

    #@9b
    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@9e
    move-result-object v104

    #@9f
    check-cast v104, [Landroid/text/style/LeadingMarginSpan;

    #@a1
    .line 612
    .local v104, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v89, 0x0

    #@a3
    .local v89, "i":I
    :goto_3
    move-object/from16 v0, v104

    #@a5
    array-length v9, v0

    #@a6
    move/from16 v0, v89

    #@a8
    if-ge v0, v9, :cond_5

    #@aa
    .line 613
    aget-object v96, v104, v89

    #@ac
    .line 614
    .local v96, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v104, v89

    #@ae
    const/4 v10, 0x1

    #@af
    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@b2
    move-result v9

    #@b3
    sub-int v82, v82, v9

    #@b5
    .line 615
    aget-object v9, v104, v89

    #@b7
    const/4 v10, 0x0

    #@b8
    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@bb
    move-result v9

    #@bc
    sub-int v101, v101, v9

    #@be
    .line 619
    move-object/from16 v0, v96

    #@c0
    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@c2
    if-eqz v9, :cond_2

    #@c4
    move-object/from16 v97, v96

    #@c6
    .line 620
    check-cast v97, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@c8
    .line 622
    .local v97, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v97 .. v97}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    #@cb
    move-result v9

    #@cc
    .line 621
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    #@cf
    move-result v15

    #@d0
    .line 612
    .end local v97    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_2
    add-int/lit8 v89, v89, 0x1

    #@d2
    goto :goto_3

    #@d3
    .line 584
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v82    # "firstWidth":I
    .end local v89    # "i":I
    .end local v96    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v101    # "restWidth":I
    .end local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    const/16 v33, 0x0

    #@d5
    .restart local v33    # "needMultiply":Z
    goto :goto_0

    #@d6
    .line 601
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@d8
    goto :goto_2

    #@d9
    .line 626
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v82    # "firstWidth":I
    .restart local v89    # "i":I
    .restart local v101    # "restWidth":I
    .restart local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    #@db
    move-object/from16 v0, v112

    #@dd
    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@e0
    move-result-object v29

    #@e1
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    #@e3
    .line 628
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    #@e5
    array-length v9, v0

    #@e6
    if-eqz v9, :cond_9

    #@e8
    .line 629
    if-eqz v30, :cond_6

    #@ea
    .line 630
    move-object/from16 v0, v30

    #@ec
    array-length v9, v0

    #@ed
    move-object/from16 v0, v29

    #@ef
    array-length v10, v0

    #@f0
    if-ge v9, v10, :cond_7

    #@f2
    .line 631
    :cond_6
    move-object/from16 v0, v29

    #@f4
    array-length v9, v0

    #@f5
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@f8
    move-result-object v30

    #@f9
    .line 634
    :cond_7
    const/16 v89, 0x0

    #@fb
    :goto_4
    move-object/from16 v0, v29

    #@fd
    array-length v9, v0

    #@fe
    move/from16 v0, v89

    #@100
    if-ge v0, v9, :cond_9

    #@102
    .line 635
    aget-object v9, v29, v89

    #@104
    move-object/from16 v0, v112

    #@106
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@109
    move-result v98

    #@10a
    .line 637
    .local v98, "o":I
    move/from16 v0, v98

    #@10c
    if-ge v0, v6, :cond_8

    #@10e
    .line 641
    move-object/from16 v0, p0

    #@110
    move/from16 v1, v98

    #@112
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    #@115
    move-result v9

    #@116
    move-object/from16 v0, p0

    #@118
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    #@11b
    move-result v9

    #@11c
    aput v9, v30, v89

    #@11e
    .line 634
    :goto_5
    add-int/lit8 v89, v89, 0x1

    #@120
    goto :goto_4

    #@121
    .line 645
    :cond_8
    aput v26, v30, v89

    #@123
    goto :goto_5

    #@124
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v89    # "i":I
    .end local v98    # "o":I
    .end local v104    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object/from16 v9, p1

    #@126
    .line 651
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@129
    .line 652
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    #@12b
    .line 653
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    #@12d
    move-object/from16 v41, v0

    #@12f
    .line 654
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    #@131
    move-object/from16 v34, v0

    #@133
    .line 655
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    #@135
    move/from16 v35, v0

    #@137
    .line 656
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    #@139
    move/from16 v36, v0

    #@13b
    .line 659
    .local v36, "easy":Z
    const/16 v17, 0x0

    #@13d
    .line 660
    .local v17, "variableTabStops":[I
    if-eqz v112, :cond_b

    #@13f
    .line 662
    const-class v9, Landroid/text/style/TabStopSpan;

    #@141
    .line 661
    move-object/from16 v0, v112

    #@143
    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@146
    move-result-object v114

    #@147
    check-cast v114, [Landroid/text/style/TabStopSpan;

    #@149
    .line 663
    .local v114, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v114

    #@14b
    array-length v9, v0

    #@14c
    if-lez v9, :cond_b

    #@14e
    .line 664
    move-object/from16 v0, v114

    #@150
    array-length v9, v0

    #@151
    new-array v0, v9, [I

    #@153
    move-object/from16 v115, v0

    #@155
    .line 665
    .local v115, "stops":[I
    const/16 v89, 0x0

    #@157
    .restart local v89    # "i":I
    :goto_6
    move-object/from16 v0, v114

    #@159
    array-length v9, v0

    #@15a
    move/from16 v0, v89

    #@15c
    if-ge v0, v9, :cond_a

    #@15e
    .line 666
    aget-object v9, v114, v89

    #@160
    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    #@163
    move-result v9

    #@164
    aput v9, v115, v89

    #@166
    .line 665
    add-int/lit8 v89, v89, 0x1

    #@168
    goto :goto_6

    #@169
    .line 668
    :cond_a
    move-object/from16 v0, v115

    #@16b
    array-length v9, v0

    #@16c
    const/4 v10, 0x0

    #@16d
    move-object/from16 v0, v115

    #@16f
    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    #@172
    .line 669
    move-object/from16 v17, v115

    #@174
    .line 673
    .end local v17    # "variableTabStops":[I
    .end local v89    # "i":I
    .end local v114    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v115    # "stops":[I
    :cond_b
    move-object/from16 v0, p1

    #@176
    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@178
    sub-int v13, v7, v6

    #@17a
    .line 674
    move/from16 v0, v82

    #@17c
    int-to-float v14, v0

    #@17d
    move/from16 v0, v101

    #@17f
    int-to-float v0, v0

    #@180
    move/from16 v16, v0

    #@182
    .line 675
    move-object/from16 v0, p1

    #@184
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    #@186
    move/from16 v19, v0

    #@188
    move-object/from16 v0, p1

    #@18a
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    #@18c
    move/from16 v20, v0

    #@18e
    const/16 v18, 0x14

    #@190
    .line 673
    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    #@193
    .line 676
    move-object/from16 v0, p0

    #@195
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@197
    if-nez v9, :cond_c

    #@199
    move-object/from16 v0, p0

    #@19b
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@19d
    if-eqz v9, :cond_12

    #@19f
    .line 680
    :cond_c
    move-object/from16 v0, p0

    #@1a1
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1a3
    if-nez v9, :cond_d

    #@1a5
    const/16 v92, 0x0

    #@1a7
    .line 681
    .local v92, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    #@1a9
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1ab
    if-nez v9, :cond_e

    #@1ad
    const/16 v102, 0x0

    #@1af
    .line 682
    .local v102, "rightLen":I
    :goto_8
    move/from16 v0, v92

    #@1b1
    move/from16 v1, v102

    #@1b3
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@1b6
    move-result v9

    #@1b7
    move-object/from16 v0, p0

    #@1b9
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@1bb
    sub-int/2addr v9, v10

    #@1bc
    const/4 v10, 0x1

    #@1bd
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    #@1c0
    move-result v91

    #@1c1
    .line 683
    .local v91, "indentsLen":I
    move/from16 v0, v91

    #@1c3
    new-array v0, v0, [I

    #@1c5
    move-object/from16 v90, v0

    #@1c7
    .line 684
    .local v90, "indents":[I
    const/16 v89, 0x0

    #@1c9
    .restart local v89    # "i":I
    :goto_9
    move/from16 v0, v89

    #@1cb
    move/from16 v1, v91

    #@1cd
    if-ge v0, v1, :cond_11

    #@1cf
    .line 685
    move-object/from16 v0, p0

    #@1d1
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1d3
    if-nez v9, :cond_f

    #@1d5
    const/16 v93, 0x0

    #@1d7
    .line 687
    .local v93, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    #@1d9
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1db
    if-nez v9, :cond_10

    #@1dd
    const/16 v103, 0x0

    #@1df
    .line 689
    .local v103, "rightMargin":I
    :goto_b
    add-int v9, v93, v103

    #@1e1
    aput v9, v90, v89

    #@1e3
    .line 684
    add-int/lit8 v89, v89, 0x1

    #@1e5
    goto :goto_9

    #@1e6
    .line 680
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v92    # "leftLen":I
    .end local v93    # "leftMargin":I
    .end local v102    # "rightLen":I
    .end local v103    # "rightMargin":I
    :cond_d
    move-object/from16 v0, p0

    #@1e8
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1ea
    array-length v0, v9

    #@1eb
    move/from16 v92, v0

    #@1ed
    .restart local v92    # "leftLen":I
    goto :goto_7

    #@1ee
    .line 681
    :cond_e
    move-object/from16 v0, p0

    #@1f0
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1f2
    array-length v0, v9

    #@1f3
    move/from16 v102, v0

    #@1f5
    .restart local v102    # "rightLen":I
    goto :goto_8

    #@1f6
    .line 686
    .restart local v89    # "i":I
    .restart local v90    # "indents":[I
    .restart local v91    # "indentsLen":I
    :cond_f
    move-object/from16 v0, p0

    #@1f8
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@1fe
    add-int v10, v10, v89

    #@200
    add-int/lit8 v11, v92, -0x1

    #@202
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@205
    move-result v10

    #@206
    aget v93, v9, v10

    #@208
    .restart local v93    # "leftMargin":I
    goto :goto_a

    #@209
    .line 688
    :cond_10
    move-object/from16 v0, p0

    #@20b
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@20d
    move-object/from16 v0, p0

    #@20f
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@211
    add-int v10, v10, v89

    #@213
    add-int/lit8 v11, v102, -0x1

    #@215
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@218
    move-result v10

    #@219
    aget v103, v9, v10

    #@21b
    .restart local v103    # "rightMargin":I
    goto :goto_b

    #@21c
    .line 691
    .end local v93    # "leftMargin":I
    .end local v103    # "rightMargin":I
    :cond_11
    move-object/from16 v0, p1

    #@21e
    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@220
    move-object/from16 v0, v90

    #@222
    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    #@225
    .line 697
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v92    # "leftLen":I
    .end local v102    # "rightLen":I
    :cond_12
    const/16 v86, 0x0

    #@227
    .line 698
    .local v86, "fmCacheCount":I
    const/16 v107, 0x0

    #@229
    .line 699
    .local v107, "spanEndCacheCount":I
    move/from16 v111, v6

    #@22b
    .local v111, "spanStart":I
    :goto_c
    move/from16 v0, v111

    #@22d
    if-ge v0, v7, :cond_16

    #@22f
    .line 700
    mul-int/lit8 v9, v86, 0x4

    #@231
    move-object/from16 v0, v85

    #@233
    array-length v10, v0

    #@234
    if-lt v9, v10, :cond_13

    #@236
    .line 701
    mul-int/lit8 v9, v86, 0x4

    #@238
    mul-int/lit8 v9, v9, 0x2

    #@23a
    new-array v0, v9, [I

    #@23c
    move-object/from16 v88, v0

    #@23e
    .line 702
    .local v88, "grow":[I
    mul-int/lit8 v9, v86, 0x4

    #@240
    const/4 v10, 0x0

    #@241
    const/4 v11, 0x0

    #@242
    move-object/from16 v0, v85

    #@244
    move-object/from16 v1, v88

    #@246
    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@249
    .line 703
    move-object/from16 v85, v88

    #@24b
    .line 706
    .end local v88    # "grow":[I
    :cond_13
    move-object/from16 v0, v106

    #@24d
    array-length v9, v0

    #@24e
    move/from16 v0, v107

    #@250
    if-lt v0, v9, :cond_14

    #@252
    .line 707
    mul-int/lit8 v9, v107, 0x2

    #@254
    new-array v0, v9, [I

    #@256
    move-object/from16 v88, v0

    #@258
    .line 708
    .restart local v88    # "grow":[I
    const/4 v9, 0x0

    #@259
    const/4 v10, 0x0

    #@25a
    move-object/from16 v0, v106

    #@25c
    move-object/from16 v1, v88

    #@25e
    move/from16 v2, v107

    #@260
    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@263
    .line 709
    move-object/from16 v106, v88

    #@265
    .line 712
    .end local v88    # "grow":[I
    :cond_14
    if-nez v112, :cond_15

    #@267
    .line 713
    move/from16 v105, v7

    #@269
    .line 714
    .local v105, "spanEnd":I
    sub-int v110, v105, v111

    #@26b
    .line 715
    .local v110, "spanLen":I
    move-object/from16 v0, v46

    #@26d
    move/from16 v1, v110

    #@26f
    move-object/from16 v2, v31

    #@271
    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@274
    .line 728
    :goto_d
    mul-int/lit8 v9, v86, 0x4

    #@276
    add-int/lit8 v9, v9, 0x0

    #@278
    move-object/from16 v0, v31

    #@27a
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@27c
    aput v10, v85, v9

    #@27e
    .line 729
    mul-int/lit8 v9, v86, 0x4

    #@280
    add-int/lit8 v9, v9, 0x1

    #@282
    move-object/from16 v0, v31

    #@284
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@286
    aput v10, v85, v9

    #@288
    .line 730
    mul-int/lit8 v9, v86, 0x4

    #@28a
    add-int/lit8 v9, v9, 0x2

    #@28c
    move-object/from16 v0, v31

    #@28e
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@290
    aput v10, v85, v9

    #@292
    .line 731
    mul-int/lit8 v9, v86, 0x4

    #@294
    add-int/lit8 v9, v9, 0x3

    #@296
    move-object/from16 v0, v31

    #@298
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@29a
    aput v10, v85, v9

    #@29c
    .line 732
    add-int/lit8 v86, v86, 0x1

    #@29e
    .line 734
    aput v105, v106, v107

    #@2a0
    .line 735
    add-int/lit8 v107, v107, 0x1

    #@2a2
    .line 699
    move/from16 v111, v105

    #@2a4
    goto :goto_c

    #@2a5
    .line 718
    .end local v105    # "spanEnd":I
    .end local v110    # "spanLen":I
    :cond_15
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@2a7
    .line 717
    move-object/from16 v0, v112

    #@2a9
    move/from16 v1, v111

    #@2ab
    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@2ae
    move-result v105

    #@2af
    .line 719
    .restart local v105    # "spanEnd":I
    sub-int v110, v105, v111

    #@2b1
    .line 721
    .restart local v110    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@2b3
    move-object/from16 v0, v112

    #@2b5
    move/from16 v1, v111

    #@2b7
    move/from16 v2, v105

    #@2b9
    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@2bc
    move-result-object v113

    #@2bd
    check-cast v113, [Landroid/text/style/MetricAffectingSpan;

    #@2bf
    .line 722
    .local v113, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@2c1
    move-object/from16 v0, v113

    #@2c3
    move-object/from16 v1, v112

    #@2c5
    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    #@2c8
    move-result-object v113

    #@2c9
    .end local v113    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v113, [Landroid/text/style/MetricAffectingSpan;

    #@2cb
    .line 723
    .restart local v113    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    #@2cd
    move-object/from16 v1, v113

    #@2cf
    move/from16 v2, v110

    #@2d1
    move-object/from16 v3, v31

    #@2d3
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@2d6
    goto :goto_d

    #@2d7
    .line 738
    .end local v105    # "spanEnd":I
    .end local v110    # "spanLen":I
    .end local v113    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_16
    move-object/from16 v0, p1

    #@2d9
    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2db
    move-object/from16 v0, v41

    #@2dd
    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    #@2e0
    .line 739
    move-object/from16 v0, p1

    #@2e2
    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2e4
    move-wide/from16 v18, v0

    #@2e6
    move-object/from16 v0, v94

    #@2e8
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    #@2ea
    move-object/from16 v21, v0

    #@2ec
    .line 740
    move-object/from16 v0, v94

    #@2ee
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    #@2f0
    move-object/from16 v22, v0

    #@2f2
    move-object/from16 v0, v94

    #@2f4
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    #@2f6
    move-object/from16 v23, v0

    #@2f8
    move-object/from16 v0, v94

    #@2fa
    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    #@2fc
    array-length v0, v9

    #@2fd
    move/from16 v24, v0

    #@2ff
    move-object/from16 v20, v94

    #@301
    .line 739
    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    #@304
    move-result v78

    #@305
    .line 742
    .local v78, "breakCount":I
    move-object/from16 v0, v94

    #@307
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    #@309
    move-object/from16 v80, v0

    #@30b
    .line 743
    .local v80, "breaks":[I
    move-object/from16 v0, v94

    #@30d
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    #@30f
    move-object/from16 v95, v0

    #@311
    .line 744
    .local v95, "lineWidths":[F
    move-object/from16 v0, v94

    #@313
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    #@315
    move-object/from16 v84, v0

    #@317
    .line 746
    .local v84, "flags":[I
    move-object/from16 v0, p0

    #@319
    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@31b
    move-object/from16 v0, p0

    #@31d
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@31f
    sub-int v100, v9, v10

    #@321
    .line 747
    .local v100, "remainingLineCount":I
    if-eqz v43, :cond_1a

    #@323
    .line 748
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@325
    move-object/from16 v0, v43

    #@327
    if-eq v0, v9, :cond_17

    #@329
    .line 749
    move-object/from16 v0, p0

    #@32b
    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@32d
    const/4 v10, 0x1

    #@32e
    if-ne v9, v10, :cond_19

    #@330
    .line 750
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@332
    move-object/from16 v0, v43

    #@334
    if-eq v0, v9, :cond_18

    #@336
    const/16 v81, 0x1

    #@338
    .line 751
    .local v81, "ellipsisMayBeApplied":Z
    :goto_e
    if-lez v100, :cond_1c

    #@33a
    move/from16 v0, v100

    #@33c
    move/from16 v1, v78

    #@33e
    if-ge v0, v1, :cond_1c

    #@340
    if-eqz v81, :cond_1c

    #@342
    .line 754
    add-int/lit8 v9, v100, -0x1

    #@344
    add-int/lit8 v10, v78, -0x1

    #@346
    aget v10, v80, v10

    #@348
    aput v10, v80, v9

    #@34a
    .line 756
    const/16 v116, 0x0

    #@34c
    .line 757
    .local v116, "width":F
    const/16 v83, 0x0

    #@34e
    .line 758
    .local v83, "flag":I
    add-int/lit8 v89, v100, -0x1

    #@350
    .restart local v89    # "i":I
    :goto_f
    move/from16 v0, v89

    #@352
    move/from16 v1, v78

    #@354
    if-ge v0, v1, :cond_1b

    #@356
    .line 759
    aget v9, v95, v89

    #@358
    add-float v116, v116, v9

    #@35a
    .line 760
    aget v9, v84, v89

    #@35c
    const/high16 v10, 0x20000000

    #@35e
    and-int/2addr v9, v10

    #@35f
    or-int v83, v83, v9

    #@361
    .line 758
    add-int/lit8 v89, v89, 0x1

    #@363
    goto :goto_f

    #@364
    .line 748
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v83    # "flag":I
    .end local v89    # "i":I
    .end local v116    # "width":F
    :cond_17
    const/16 v81, 0x1

    #@366
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@367
    .line 750
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_18
    const/16 v81, 0x0

    #@369
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@36a
    .line 749
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_19
    const/16 v81, 0x0

    #@36c
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@36d
    .line 747
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_1a
    const/16 v81, 0x0

    #@36f
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@370
    .line 762
    .restart local v83    # "flag":I
    .restart local v89    # "i":I
    .restart local v116    # "width":F
    :cond_1b
    add-int/lit8 v9, v100, -0x1

    #@372
    aput v116, v95, v9

    #@374
    .line 763
    add-int/lit8 v9, v100, -0x1

    #@376
    aput v83, v84, v9

    #@378
    .line 765
    move/from16 v78, v100

    #@37a
    .line 769
    .end local v83    # "flag":I
    .end local v89    # "i":I
    .end local v116    # "width":F
    :cond_1c
    move/from16 v20, v6

    #@37c
    .line 771
    .local v20, "here":I
    const/16 v24, 0x0

    #@37e
    .local v24, "fmTop":I
    const/16 v25, 0x0

    #@380
    .local v25, "fmBottom":I
    const/16 v22, 0x0

    #@382
    .local v22, "fmAscent":I
    const/16 v23, 0x0

    #@384
    .line 772
    .local v23, "fmDescent":I
    const/16 v87, 0x0

    #@386
    .line 773
    .local v87, "fmCacheIndex":I
    const/16 v108, 0x0

    #@388
    .line 774
    .local v108, "spanEndCacheIndex":I
    const/16 v79, 0x0

    #@38a
    .line 775
    .local v79, "breakIndex":I
    move/from16 v111, v6

    #@38c
    move/from16 v109, v108

    #@38e
    .end local v108    # "spanEndCacheIndex":I
    .local v109, "spanEndCacheIndex":I
    :goto_10
    move/from16 v0, v111

    #@390
    if-ge v0, v7, :cond_25

    #@392
    .line 777
    add-int/lit8 v108, v109, 0x1

    #@394
    .end local v109    # "spanEndCacheIndex":I
    .restart local v108    # "spanEndCacheIndex":I
    aget v105, v106, v109

    #@396
    .line 780
    .restart local v105    # "spanEnd":I
    mul-int/lit8 v9, v87, 0x4

    #@398
    add-int/lit8 v9, v9, 0x0

    #@39a
    aget v9, v85, v9

    #@39c
    move-object/from16 v0, v31

    #@39e
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@3a0
    .line 781
    mul-int/lit8 v9, v87, 0x4

    #@3a2
    add-int/lit8 v9, v9, 0x1

    #@3a4
    aget v9, v85, v9

    #@3a6
    move-object/from16 v0, v31

    #@3a8
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3aa
    .line 782
    mul-int/lit8 v9, v87, 0x4

    #@3ac
    add-int/lit8 v9, v9, 0x2

    #@3ae
    aget v9, v85, v9

    #@3b0
    move-object/from16 v0, v31

    #@3b2
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@3b4
    .line 783
    mul-int/lit8 v9, v87, 0x4

    #@3b6
    add-int/lit8 v9, v9, 0x3

    #@3b8
    aget v9, v85, v9

    #@3ba
    move-object/from16 v0, v31

    #@3bc
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@3be
    .line 784
    add-int/lit8 v87, v87, 0x1

    #@3c0
    .line 786
    move-object/from16 v0, v31

    #@3c2
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@3c4
    move/from16 v0, v24

    #@3c6
    if-ge v9, v0, :cond_1d

    #@3c8
    .line 787
    move-object/from16 v0, v31

    #@3ca
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@3cc
    move/from16 v24, v0

    #@3ce
    .line 789
    :cond_1d
    move-object/from16 v0, v31

    #@3d0
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@3d2
    move/from16 v0, v22

    #@3d4
    if-ge v9, v0, :cond_1e

    #@3d6
    .line 790
    move-object/from16 v0, v31

    #@3d8
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@3da
    move/from16 v22, v0

    #@3dc
    .line 792
    :cond_1e
    move-object/from16 v0, v31

    #@3de
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@3e0
    move/from16 v0, v23

    #@3e2
    if-le v9, v0, :cond_1f

    #@3e4
    .line 793
    move-object/from16 v0, v31

    #@3e6
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@3e8
    move/from16 v23, v0

    #@3ea
    .line 795
    :cond_1f
    move-object/from16 v0, v31

    #@3ec
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3ee
    move/from16 v0, v25

    #@3f0
    if-le v9, v0, :cond_20

    #@3f2
    .line 796
    move-object/from16 v0, v31

    #@3f4
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3f6
    move/from16 v25, v0

    #@3f8
    .line 800
    :cond_20
    :goto_11
    move/from16 v0, v79

    #@3fa
    move/from16 v1, v78

    #@3fc
    if-ge v0, v1, :cond_21

    #@3fe
    aget v9, v80, v79

    #@400
    add-int/2addr v9, v6

    #@401
    move/from16 v0, v111

    #@403
    if-ge v9, v0, :cond_21

    #@405
    .line 801
    add-int/lit8 v79, v79, 0x1

    #@407
    goto :goto_11

    #@408
    .line 804
    :cond_21
    move/from16 v0, v79

    #@40a
    move/from16 v1, v78

    #@40c
    if-ge v0, v1, :cond_24

    #@40e
    aget v9, v80, v79

    #@410
    add-int/2addr v9, v6

    #@411
    move/from16 v0, v105

    #@413
    if-gt v9, v0, :cond_24

    #@415
    .line 805
    aget v9, v80, v79

    #@417
    add-int v21, v6, v9

    #@419
    .line 807
    .local v21, "endPos":I
    move/from16 v0, v21

    #@41b
    move/from16 v1, v37

    #@41d
    if-ge v0, v1, :cond_22

    #@41f
    const/16 v47, 0x1

    #@421
    .line 811
    .local v47, "moreChars":Z
    :goto_12
    aget v32, v84, v79

    #@423
    .line 814
    aget v45, v95, v79

    #@425
    move-object/from16 v18, p0

    #@427
    move-object/from16 v19, v5

    #@429
    move/from16 v38, p2

    #@42b
    move/from16 v39, p3

    #@42d
    move-object/from16 v40, v12

    #@42f
    move/from16 v42, v6

    #@431
    .line 809
    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    #@434
    move-result v26

    #@435
    .line 816
    move/from16 v0, v21

    #@437
    move/from16 v1, v105

    #@439
    if-ge v0, v1, :cond_23

    #@43b
    .line 818
    move-object/from16 v0, v31

    #@43d
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@43f
    move/from16 v24, v0

    #@441
    .line 819
    move-object/from16 v0, v31

    #@443
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@445
    move/from16 v25, v0

    #@447
    .line 820
    move-object/from16 v0, v31

    #@449
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@44b
    move/from16 v22, v0

    #@44d
    .line 821
    move-object/from16 v0, v31

    #@44f
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@451
    move/from16 v23, v0

    #@453
    .line 826
    :goto_13
    move/from16 v20, v21

    #@455
    .line 827
    add-int/lit8 v79, v79, 0x1

    #@457
    .line 829
    move-object/from16 v0, p0

    #@459
    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@45b
    move-object/from16 v0, p0

    #@45d
    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@45f
    if-lt v9, v10, :cond_21

    #@461
    .line 830
    return-void

    #@462
    .line 807
    .end local v47    # "moreChars":Z
    :cond_22
    const/16 v47, 0x0

    #@464
    .restart local v47    # "moreChars":Z
    goto :goto_12

    #@465
    .line 823
    :cond_23
    const/16 v23, 0x0

    #@467
    const/16 v22, 0x0

    #@469
    const/16 v25, 0x0

    #@46b
    const/16 v24, 0x0

    #@46d
    goto :goto_13

    #@46e
    .line 775
    .end local v21    # "endPos":I
    .end local v47    # "moreChars":Z
    :cond_24
    move/from16 v111, v105

    #@470
    move/from16 v109, v108

    #@472
    .end local v108    # "spanEndCacheIndex":I
    .restart local v109    # "spanEndCacheIndex":I
    goto/16 :goto_10

    #@474
    .line 835
    .end local v105    # "spanEnd":I
    :cond_25
    move/from16 v0, v37

    #@476
    if-ne v7, v0, :cond_29

    #@478
    .line 839
    .end local v7    # "paraEnd":I
    .end local v12    # "chs":[C
    .end local v15    # "firstWidthLineCount":I
    .end local v20    # "here":I
    .end local v22    # "fmAscent":I
    .end local v23    # "fmDescent":I
    .end local v24    # "fmTop":I
    .end local v25    # "fmBottom":I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v78    # "breakCount":I
    .end local v79    # "breakIndex":I
    .end local v80    # "breaks":[I
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v82    # "firstWidth":I
    .end local v84    # "flags":[I
    .end local v86    # "fmCacheCount":I
    .end local v87    # "fmCacheIndex":I
    .end local v95    # "lineWidths":[F
    .end local v100    # "remainingLineCount":I
    .end local v101    # "restWidth":I
    .end local v107    # "spanEndCacheCount":I
    .end local v109    # "spanEndCacheIndex":I
    .end local v111    # "spanStart":I
    :cond_26
    move/from16 v0, v37

    #@47a
    move/from16 v1, v72

    #@47c
    if-eq v0, v1, :cond_27

    #@47e
    add-int/lit8 v9, v37, -0x1

    #@480
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@483
    move-result v9

    #@484
    const/16 v10, 0xa

    #@486
    if-ne v9, v10, :cond_28

    #@488
    .line 840
    :cond_27
    move-object/from16 v0, p0

    #@48a
    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@48c
    move-object/from16 v0, p0

    #@48e
    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@490
    if-ge v9, v10, :cond_28

    #@492
    move-object/from16 v48, v4

    #@494
    move-object/from16 v49, v5

    #@496
    move/from16 v50, v37

    #@498
    move/from16 v51, v37

    #@49a
    move-object/from16 v52, v8

    #@49c
    move-object/from16 v53, p1

    #@49e
    .line 843
    invoke-virtual/range {v48 .. v53}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@4a1
    .line 845
    move-object/from16 v0, v46

    #@4a3
    move-object/from16 v1, v31

    #@4a5
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@4a8
    .line 848
    move-object/from16 v0, v31

    #@4aa
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@4ac
    move/from16 v52, v0

    #@4ae
    move-object/from16 v0, v31

    #@4b0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@4b2
    move/from16 v53, v0

    #@4b4
    .line 849
    move-object/from16 v0, v31

    #@4b6
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@4b8
    move/from16 v54, v0

    #@4ba
    move-object/from16 v0, v31

    #@4bc
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@4be
    move/from16 v55, v0

    #@4c0
    .line 853
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    #@4c2
    move-object/from16 v64, v0

    #@4c4
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    #@4c6
    move/from16 v65, v0

    #@4c8
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    #@4ca
    move/from16 v66, v0

    #@4cc
    .line 856
    const/16 v75, 0x0

    #@4ce
    .line 851
    const/16 v59, 0x0

    #@4d0
    .line 852
    const/16 v60, 0x0

    #@4d2
    const/16 v62, 0x0

    #@4d4
    .line 854
    const/16 v70, 0x0

    #@4d6
    .line 855
    const/16 v71, 0x0

    #@4d8
    .line 856
    const/16 v77, 0x0

    #@4da
    move-object/from16 v48, p0

    #@4dc
    move-object/from16 v49, v5

    #@4de
    move/from16 v50, v37

    #@4e0
    move/from16 v51, v37

    #@4e2
    move/from16 v56, v26

    #@4e4
    move/from16 v57, v27

    #@4e6
    move/from16 v58, v28

    #@4e8
    move-object/from16 v61, v31

    #@4ea
    move/from16 v63, v33

    #@4ec
    move/from16 v67, v37

    #@4ee
    move/from16 v68, p2

    #@4f0
    move/from16 v69, p3

    #@4f2
    move-object/from16 v73, v43

    #@4f4
    move/from16 v74, v44

    #@4f6
    move-object/from16 v76, v46

    #@4f8
    .line 847
    invoke-direct/range {v48 .. v77}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    #@4fb
    move-result v26

    #@4fc
    .line 562
    :cond_28
    return-void

    #@4fd
    .line 596
    .restart local v7    # "paraEnd":I
    .restart local v12    # "chs":[C
    .restart local v15    # "firstWidthLineCount":I
    .restart local v20    # "here":I
    .restart local v22    # "fmAscent":I
    .restart local v23    # "fmDescent":I
    .restart local v24    # "fmTop":I
    .restart local v25    # "fmBottom":I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v78    # "breakCount":I
    .restart local v79    # "breakIndex":I
    .restart local v80    # "breaks":[I
    .restart local v81    # "ellipsisMayBeApplied":Z
    .restart local v82    # "firstWidth":I
    .restart local v84    # "flags":[I
    .restart local v86    # "fmCacheCount":I
    .restart local v87    # "fmCacheIndex":I
    .restart local v95    # "lineWidths":[F
    .restart local v100    # "remainingLineCount":I
    .restart local v101    # "restWidth":I
    .restart local v107    # "spanEndCacheCount":I
    .restart local v109    # "spanEndCacheIndex":I
    .restart local v111    # "spanStart":I
    :cond_29
    move v6, v7

    #@4fe
    goto/16 :goto_1
.end method

.method public getBottomPadding()I
    .locals 1

    #@0
    .prologue
    .line 1176
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    #@2
    return v0
.end method

.method public getEllipsisCount(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1221
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 1222
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1225
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@9
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@b
    mul-int/2addr v1, p1

    #@c
    add-int/lit8 v1, v1, 0x5

    #@e
    aget v0, v0, v1

    #@10
    return v0
.end method

.method public getEllipsisStart(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1230
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@2
    const/4 v1, 0x6

    #@3
    if-ge v0, v1, :cond_0

    #@5
    .line 1231
    const/4 v0, 0x0

    #@6
    return v0

    #@7
    .line 1234
    :cond_0
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@9
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@b
    mul-int/2addr v1, p1

    #@c
    add-int/lit8 v1, v1, 0x4

    #@e
    aget v0, v0, v1

    #@10
    return v0
.end method

.method public getEllipsizedWidth()I
    .locals 1

    #@0
    .prologue
    .line 1239
    iget v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@2
    return v0
.end method

.method public getHyphen(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1184
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v1, p1

    #@5
    add-int/lit8 v1, v1, 0x3

    #@7
    aget v0, v0, v1

    #@9
    and-int/lit16 v0, v0, 0xff

    #@b
    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 5
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1192
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@3
    if-ne p2, v2, :cond_1

    #@5
    .line 1193
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@7
    if-nez v2, :cond_0

    #@9
    .line 1194
    return v3

    #@a
    .line 1196
    :cond_0
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@c
    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@e
    array-length v3, v3

    #@f
    add-int/lit8 v3, v3, -0x1

    #@11
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@14
    move-result v3

    #@15
    aget v2, v2, v3

    #@17
    return v2

    #@18
    .line 1198
    :cond_1
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@1a
    if-ne p2, v2, :cond_3

    #@1c
    .line 1199
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1e
    if-nez v2, :cond_2

    #@20
    .line 1200
    return v3

    #@21
    .line 1202
    :cond_2
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@23
    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@25
    array-length v3, v3

    #@26
    add-int/lit8 v3, v3, -0x1

    #@28
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@2b
    move-result v3

    #@2c
    aget v2, v2, v3

    #@2e
    neg-int v2, v2

    #@2f
    return v2

    #@30
    .line 1204
    :cond_3
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@32
    if-ne p2, v2, :cond_6

    #@34
    .line 1205
    const/4 v0, 0x0

    #@35
    .line 1206
    .local v0, "left":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@37
    if-eqz v2, :cond_4

    #@39
    .line 1207
    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@3b
    iget-object v3, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@3d
    array-length v3, v3

    #@3e
    add-int/lit8 v3, v3, -0x1

    #@40
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@43
    move-result v3

    #@44
    aget v0, v2, v3

    #@46
    .line 1209
    :cond_4
    const/4 v1, 0x0

    #@47
    .line 1210
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@49
    if-eqz v2, :cond_5

    #@4b
    .line 1211
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@4d
    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@4f
    array-length v3, v3

    #@50
    add-int/lit8 v3, v3, -0x1

    #@52
    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    #@55
    move-result v3

    #@56
    aget v1, v2, v3

    #@58
    .line 1213
    :cond_5
    sub-int v2, v0, v1

    #@5a
    shr-int/lit8 v2, v2, 0x1

    #@5c
    return v2

    #@5d
    .line 1215
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    #@5f
    new-instance v3, Ljava/lang/StringBuilder;

    #@61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@64
    const-string/jumbo v4, "unhandled alignment "

    #@67
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6a
    move-result-object v3

    #@6b
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v3

    #@6f
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@72
    move-result-object v3

    #@73
    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@76
    throw v2
.end method

.method public getLineContainsTab(I)Z
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1161
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    #@3
    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@5
    mul-int/2addr v2, p1

    #@6
    add-int/lit8 v2, v2, 0x0

    #@8
    aget v1, v1, v2

    #@a
    const/high16 v2, 0x20000000

    #@c
    and-int/2addr v1, v2

    #@d
    if-eqz v1, :cond_0

    #@f
    const/4 v0, 0x1

    #@10
    :cond_0
    return v0
.end method

.method public getLineCount()I
    .locals 1

    #@0
    .prologue
    .line 1126
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    #@2
    return v0
.end method

.method public getLineDescent(I)I
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1141
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v2, p1

    #@5
    add-int/lit8 v2, v2, 0x2

    #@7
    aget v0, v1, v2

    #@9
    .line 1142
    .local v0, "descent":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@b
    if-lez v1, :cond_0

    #@d
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@f
    add-int/lit8 v1, v1, -0x1

    #@11
    if-lt p1, v1, :cond_0

    #@13
    .line 1143
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    #@15
    if-eq p1, v1, :cond_0

    #@17
    .line 1144
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    #@1a
    move-result v1

    #@1b
    add-int/2addr v0, v1

    #@1c
    .line 1146
    :cond_0
    return v0
.end method

.method public final getLineDirections(I)Landroid/text/Layout$Directions;
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1166
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@2
    aget-object v0, v0, p1

    #@4
    return-object v0
.end method

.method public getLineForVertical(I)I
    .locals 7
    .param p1, "vertical"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1105
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    #@3
    .line 1106
    .local v1, "high":I
    const/4 v3, -0x1

    #@4
    .line 1108
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    #@6
    .line 1109
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    #@8
    const/4 v5, 0x1

    #@9
    if-le v4, v5, :cond_1

    #@b
    .line 1110
    add-int v4, v1, v3

    #@d
    shr-int/lit8 v0, v4, 0x1

    #@f
    .line 1111
    .local v0, "guess":I
    iget v4, p0, Landroid/text/StaticLayout;->mColumns:I

    #@11
    mul-int/2addr v4, v0

    #@12
    add-int/lit8 v4, v4, 0x1

    #@14
    aget v4, v2, v4

    #@16
    if-le v4, p1, :cond_0

    #@18
    .line 1112
    move v1, v0

    #@19
    goto :goto_0

    #@1a
    .line 1114
    :cond_0
    move v3, v0

    #@1b
    goto :goto_0

    #@1c
    .line 1117
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    #@1e
    .line 1118
    return v6

    #@1f
    .line 1120
    :cond_2
    return v3
.end method

.method public getLineStart(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1151
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v1, p1

    #@5
    add-int/lit8 v1, v1, 0x0

    #@7
    aget v0, v0, v1

    #@9
    const v1, 0x1fffffff

    #@c
    and-int/2addr v0, v1

    #@d
    return v0
.end method

.method public getLineTop(I)I
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1131
    iget-object v1, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v2, p1

    #@5
    add-int/lit8 v2, v2, 0x1

    #@7
    aget v0, v1, v2

    #@9
    .line 1132
    .local v0, "top":I
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@b
    if-lez v1, :cond_0

    #@d
    iget v1, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@f
    if-lt p1, v1, :cond_0

    #@11
    .line 1133
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    #@13
    if-eq p1, v1, :cond_0

    #@15
    .line 1134
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getBottomPadding()I

    #@18
    move-result v1

    #@19
    add-int/2addr v0, v1

    #@1a
    .line 1136
    :cond_0
    return v0
.end method

.method public getParagraphDirection(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1156
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v1, p1

    #@5
    add-int/lit8 v1, v1, 0x0

    #@7
    aget v0, v0, v1

    #@9
    shr-int/lit8 v0, v0, 0x1e

    #@b
    return v0
.end method

.method public getTopPadding()I
    .locals 1

    #@0
    .prologue
    .line 1171
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    #@2
    return v0
.end method
