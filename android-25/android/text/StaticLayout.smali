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
    .line 533
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 534
    iget-object v1, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@6
    .line 538
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
    .line 533
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V

    #@14
    .line 1293
    const v0, 0x7fffffff

    #@17
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@19
    .line 540
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@1b
    if-eqz v0, :cond_2

    #@1d
    .line 541
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    #@20
    move-result-object v7

    #@21
    check-cast v7, Landroid/text/Layout$Ellipsizer;

    #@23
    .line 543
    .local v7, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v7, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@25
    .line 544
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@27
    iput v0, v7, Landroid/text/Layout$Ellipsizer;->mWidth:I

    #@29
    .line 545
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@2b
    iput-object v0, v7, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    #@2d
    .line 546
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@2f
    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@31
    .line 548
    const/4 v0, 0x6

    #@32
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@34
    .line 554
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
    .line 555
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@44
    array-length v0, v0

    #@45
    new-array v0, v0, [I

    #@47
    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@49
    .line 556
    iget v0, p1, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    #@4b
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@4d
    .line 558
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    #@4f
    iput-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@51
    .line 559
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    #@53
    iput-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@55
    .line 561
    iget-boolean v0, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@57
    iget-boolean v1, p1, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@59
    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    #@5c
    .line 532
    return-void

    #@5d
    .line 535
    :cond_0
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@5f
    instance-of v0, v0, Landroid/text/Spanned;

    #@61
    if-eqz v0, :cond_1

    #@63
    .line 536
    new-instance v1, Landroid/text/Layout$SpannedEllipsizer;

    #@65
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@67
    invoke-direct {v1, v0}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@6a
    goto :goto_0

    #@6b
    .line 537
    :cond_1
    new-instance v1, Landroid/text/Layout$Ellipsizer;

    #@6d
    iget-object v0, p1, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@6f
    invoke-direct {v1, v0}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@72
    goto :goto_0

    #@73
    .line 550
    :cond_2
    const/4 v0, 0x4

    #@74
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@76
    .line 551
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
    .line 525
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
    .line 527
    const/4 v0, 0x6

    #@10
    iput v0, p0, Landroid/text/StaticLayout;->mColumns:I

    #@12
    .line 528
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
    .line 529
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@22
    array-length v0, v0

    #@23
    new-array v0, v0, [I

    #@25
    iput-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@27
    .line 524
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
    .line 443
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
    .line 442
    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    #@15
    .line 441
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
    .line 465
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    .line 466
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
    .line 464
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    #@1e
    .line 463
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
    .line 455
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
    .line 454
    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    #@1c
    .line 453
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
    .line 478
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
    .line 485
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
    .line 501
    .local v10, "b":Landroid/text/StaticLayout$Builder;
    if-eqz p11, :cond_2

    #@4a
    .line 502
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    #@4d
    move-result-object v11

    #@4e
    check-cast v11, Landroid/text/Layout$Ellipsizer;

    #@50
    .line 504
    .local v11, "e":Landroid/text/Layout$Ellipsizer;
    iput-object p0, v11, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    #@52
    .line 505
    move/from16 v0, p12

    #@54
    iput v0, v11, Landroid/text/Layout$Ellipsizer;->mWidth:I

    #@56
    .line 506
    move-object/from16 v0, p11

    #@58
    iput-object v0, v11, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    #@5a
    .line 507
    move/from16 v0, p12

    #@5c
    iput v0, p0, Landroid/text/StaticLayout;->mEllipsizedWidth:I

    #@5e
    .line 509
    const/4 v2, 0x6

    #@5f
    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@61
    .line 515
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
    .line 516
    iget-object v2, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@71
    array-length v2, v2

    #@72
    new-array v2, v2, [I

    #@74
    iput-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    #@76
    .line 517
    move/from16 v0, p13

    #@78
    iput v0, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@7a
    .line 519
    iget-boolean v2, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@7c
    iget-boolean v3, v10, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    #@7e
    invoke-virtual {p0, v10, v2, v3}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V

    #@81
    .line 521
    invoke-static {v10}, Landroid/text/StaticLayout$Builder;->-wrap0(Landroid/text/StaticLayout$Builder;)V

    #@84
    .line 477
    return-void

    #@85
    .line 480
    .end local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_0
    instance-of v2, p1, Landroid/text/Spanned;

    #@87
    if-eqz v2, :cond_1

    #@89
    .line 481
    new-instance v3, Landroid/text/Layout$SpannedEllipsizer;

    #@8b
    invoke-direct {v3, p1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@8e
    goto/16 :goto_0

    #@90
    .line 482
    :cond_1
    new-instance v3, Landroid/text/Layout$Ellipsizer;

    #@92
    invoke-direct {v3, p1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    #@95
    goto/16 :goto_0

    #@97
    .line 511
    .restart local v10    # "b":Landroid/text/StaticLayout$Builder;
    :cond_2
    const/4 v2, 0x4

    #@98
    iput v2, p0, Landroid/text/StaticLayout;->mColumns:I

    #@9a
    .line 512
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
    .line 422
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
    .line 421
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
    .line 433
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
    .line 432
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
    .line 1010
    cmpg-float v17, p8, p5

    #@2
    if-gtz v17, :cond_0

    #@4
    if-eqz p10, :cond_3

    #@6
    .line 1018
    :cond_0
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@8
    move-object/from16 v0, p6

    #@a
    move-object/from16 v1, v17

    #@c
    if-ne v0, v1, :cond_4

    #@e
    .line 1019
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    #@10
    :goto_0
    const/16 v18, 0x0

    #@12
    const/16 v19, 0x1

    #@14
    .line 1017
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
    .line 1020
    .local v6, "ellipsisWidth":F
    const/4 v5, 0x0

    #@21
    .line 1021
    .local v5, "ellipsisStart":I
    const/4 v4, 0x0

    #@22
    .line 1022
    .local v4, "ellipsisCount":I
    sub-int v10, p2, p1

    #@24
    .line 1025
    .local v10, "len":I
    sget-object v17, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    #@26
    move-object/from16 v0, p6

    #@28
    move-object/from16 v1, v17

    #@2a
    if-ne v0, v1, :cond_7

    #@2c
    .line 1026
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
    .line 1027
    const/4 v15, 0x0

    #@3b
    .line 1030
    .local v15, "sum":F
    move v7, v10

    #@3c
    .local v7, "i":I
    :goto_1
    if-lez v7, :cond_1

    #@3e
    .line 1031
    add-int/lit8 v17, v7, -0x1

    #@40
    add-int v17, v17, p1

    #@42
    sub-int v17, v17, p4

    #@44
    aget v16, p3, v17

    #@46
    .line 1033
    .local v16, "w":F
    add-float v17, v16, v15

    #@48
    add-float v17, v17, v6

    #@4a
    cmpl-float v17, v17, p5

    #@4c
    if-lez v17, :cond_5

    #@4e
    .line 1040
    .end local v16    # "w":F
    :cond_1
    const/4 v5, 0x0

    #@4f
    .line 1041
    move v4, v7

    #@50
    .line 1105
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
    .line 1106
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
    .line 1009
    return-void

    #@75
    .line 1012
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
    .line 1013
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
    .line 1014
    return-void

    #@9e
    .line 1019
    :cond_4
    sget-object v17, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    #@a0
    goto/16 :goto_0

    #@a2
    .line 1037
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
    .line 1030
    add-int/lit8 v7, v7, -0x1

    #@a6
    goto :goto_1

    #@a7
    .line 1043
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
    .line 1044
    const-string/jumbo v17, "StaticLayout"

    #@b5
    const-string/jumbo v18, "Start Ellipsis only supported with one line"

    #@b8
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@bb
    goto :goto_2

    #@bc
    .line 1047
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
    .line 1049
    :cond_8
    const/4 v15, 0x0

    #@cd
    .line 1052
    .restart local v15    # "sum":F
    const/4 v7, 0x0

    #@ce
    .restart local v7    # "i":I
    :goto_3
    if-ge v7, v10, :cond_9

    #@d0
    .line 1053
    add-int v17, v7, p1

    #@d2
    sub-int v17, v17, p4

    #@d4
    aget v16, p3, v17

    #@d6
    .line 1055
    .restart local v16    # "w":F
    add-float v17, v16, v15

    #@d8
    add-float v17, v17, v6

    #@da
    cmpl-float v17, v17, p5

    #@dc
    if-lez v17, :cond_d

    #@de
    .line 1062
    .end local v16    # "w":F
    :cond_9
    move v5, v7

    #@df
    .line 1063
    sub-int v4, v10, v7

    #@e1
    .line 1064
    if-eqz p10, :cond_2

    #@e3
    if-nez v4, :cond_2

    #@e5
    if-lez v10, :cond_2

    #@e7
    .line 1065
    add-int/lit8 v5, v10, -0x1

    #@e9
    .line 1066
    const/4 v4, 0x1

    #@ea
    goto/16 :goto_2

    #@ec
    .line 1048
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
    .line 1070
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
    .line 1071
    const/4 v11, 0x0

    #@103
    .local v11, "lsum":F
    const/4 v14, 0x0

    #@104
    .line 1072
    .local v14, "rsum":F
    const/4 v9, 0x0

    #@105
    .local v9, "left":I
    move v13, v10

    #@106
    .line 1074
    .local v13, "right":I
    sub-float v17, p5, v6

    #@108
    const/high16 v18, 0x40000000    # 2.0f

    #@10a
    div-float v12, v17, v18

    #@10c
    .line 1075
    .local v12, "ravail":F
    move v13, v10

    #@10d
    :goto_4
    if-lez v13, :cond_b

    #@10f
    .line 1076
    add-int/lit8 v17, v13, -0x1

    #@111
    add-int v17, v17, p1

    #@113
    sub-int v17, v17, p4

    #@115
    aget v16, p3, v17

    #@117
    .line 1078
    .restart local v16    # "w":F
    add-float v17, v16, v14

    #@119
    cmpl-float v17, v17, v12

    #@11b
    if-lez v17, :cond_e

    #@11d
    .line 1085
    .end local v16    # "w":F
    :cond_b
    sub-float v17, p5, v6

    #@11f
    sub-float v8, v17, v14

    #@121
    .line 1086
    .local v8, "lavail":F
    const/4 v9, 0x0

    #@122
    :goto_5
    if-ge v9, v13, :cond_c

    #@124
    .line 1087
    add-int v17, v9, p1

    #@126
    sub-int v17, v17, p4

    #@128
    aget v16, p3, v17

    #@12a
    .line 1089
    .restart local v16    # "w":F
    add-float v17, v16, v11

    #@12c
    cmpl-float v17, v17, v8

    #@12e
    if-lez v17, :cond_f

    #@130
    .line 1096
    .end local v16    # "w":F
    :cond_c
    move v5, v9

    #@131
    .line 1097
    sub-int v4, v13, v9

    #@133
    goto/16 :goto_2

    #@135
    .line 1059
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
    .line 1052
    add-int/lit8 v7, v7, 0x1

    #@139
    goto :goto_3

    #@13a
    .line 1082
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
    .line 1075
    add-int/lit8 v13, v13, -0x1

    #@13e
    goto :goto_4

    #@13f
    .line 1093
    .restart local v8    # "lavail":F
    :cond_f
    add-float v11, v11, v16

    #@141
    .line 1086
    add-int/lit8 v9, v9, 0x1

    #@143
    goto :goto_5

    #@144
    .line 1099
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
    .line 1100
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

.method static native nLoadHyphenator(Ljava/nio/ByteBuffer;I)J
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
    .line 881
    move-object/from16 v0, p0

    #@2
    iget v0, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@4
    move/from16 v22, v0

    #@6
    .line 882
    .local v22, "j":I
    move-object/from16 v0, p0

    #@8
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    #@a
    mul-int v26, v22, v2

    #@c
    .line 883
    .local v26, "off":I
    move-object/from16 v0, p0

    #@e
    iget v2, v0, Landroid/text/StaticLayout;->mColumns:I

    #@10
    add-int v2, v2, v26

    #@12
    add-int/lit8 v27, v2, 0x1

    #@14
    .line 884
    .local v27, "want":I
    move-object/from16 v0, p0

    #@16
    iget-object v0, v0, Landroid/text/StaticLayout;->mLines:[I

    #@18
    move-object/from16 v25, v0

    #@1a
    .line 886
    .local v25, "lines":[I
    move-object/from16 v0, v25

    #@1c
    array-length v2, v0

    #@1d
    move/from16 v0, v27

    #@1f
    if-lt v0, v2, :cond_0

    #@21
    .line 888
    const-class v2, Landroid/text/Layout$Directions;

    #@23
    invoke-static/range {v27 .. v27}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    #@26
    move-result v3

    #@27
    .line 887
    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    #@2a
    move-result-object v20

    #@2b
    check-cast v20, [Landroid/text/Layout$Directions;

    #@2d
    .line 889
    .local v20, "grow2":[Landroid/text/Layout$Directions;
    move-object/from16 v0, p0

    #@2f
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@31
    .line 890
    move-object/from16 v0, p0

    #@33
    iget-object v3, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@35
    array-length v3, v3

    #@36
    .line 889
    const/4 v4, 0x0

    #@37
    const/4 v5, 0x0

    #@38
    move-object/from16 v0, v20

    #@3a
    invoke-static {v2, v4, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@3d
    .line 891
    move-object/from16 v0, v20

    #@3f
    move-object/from16 v1, p0

    #@41
    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@43
    .line 893
    move-object/from16 v0, v20

    #@45
    array-length v2, v0

    #@46
    new-array v0, v2, [I

    #@48
    move-object/from16 v19, v0

    #@4a
    .line 894
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
    .line 895
    move-object/from16 v0, v19

    #@58
    move-object/from16 v1, p0

    #@5a
    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    #@5c
    .line 896
    move-object/from16 v25, v19

    #@5e
    .line 899
    .end local v19    # "grow":[I
    .end local v20    # "grow2":[Landroid/text/Layout$Directions;
    :cond_0
    if-eqz p11, :cond_3

    #@60
    .line 900
    move/from16 v0, p4

    #@62
    move-object/from16 v1, p13

    #@64
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@66
    .line 901
    move/from16 v0, p5

    #@68
    move-object/from16 v1, p13

    #@6a
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@6c
    .line 902
    move/from16 v0, p6

    #@6e
    move-object/from16 v1, p13

    #@70
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@72
    .line 903
    move/from16 v0, p7

    #@74
    move-object/from16 v1, p13

    #@76
    iput v0, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@78
    .line 905
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
    .line 906
    aget-object v2, p11, v21

    #@83
    instance-of v2, v2, Landroid/text/style/LineHeightSpan$WithDensity;

    #@85
    if-eqz v2, :cond_1

    #@87
    .line 907
    aget-object v2, p11, v21

    #@89
    check-cast v2, Landroid/text/style/LineHeightSpan$WithDensity;

    #@8b
    .line 908
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
    .line 907
    invoke-interface/range {v2 .. v9}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    #@9c
    .line 905
    :goto_1
    add-int/lit8 v21, v21, 0x1

    #@9e
    goto :goto_0

    #@9f
    .line 911
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
    .line 915
    :cond_2
    move-object/from16 v0, p13

    #@b3
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@b5
    move/from16 p4, v0

    #@b7
    .line 916
    move-object/from16 v0, p13

    #@b9
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@bb
    move/from16 p5, v0

    #@bd
    .line 917
    move-object/from16 v0, p13

    #@bf
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@c1
    move/from16 p6, v0

    #@c3
    .line 918
    move-object/from16 v0, p13

    #@c5
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@c7
    move/from16 p7, v0

    #@c9
    .line 921
    .end local v21    # "i":I
    :cond_3
    if-nez v22, :cond_e

    #@cb
    const/16 v18, 0x1

    #@cd
    .line 922
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
    .line 923
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
    .line 925
    .local v23, "lastLine":Z
    :goto_4
    if-eqz v18, :cond_6

    #@e2
    .line 926
    if-eqz p21, :cond_5

    #@e4
    .line 927
    sub-int v2, p6, p4

    #@e6
    move-object/from16 v0, p0

    #@e8
    iput v2, v0, Landroid/text/StaticLayout;->mTopPadding:I

    #@ea
    .line 930
    :cond_5
    if-eqz p20, :cond_6

    #@ec
    .line 931
    move/from16 p4, p6

    #@ee
    .line 937
    :cond_6
    if-eqz v23, :cond_8

    #@f0
    .line 938
    if-eqz p21, :cond_7

    #@f2
    .line 939
    sub-int v2, p7, p5

    #@f4
    move-object/from16 v0, p0

    #@f6
    iput v2, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    #@f8
    .line 942
    :cond_7
    if-eqz p20, :cond_8

    #@fa
    .line 943
    move/from16 p5, p7

    #@fc
    .line 948
    :cond_8
    if-eqz p15, :cond_9

    #@fe
    if-eqz v23, :cond_11

    #@100
    .line 956
    :cond_9
    const/4 v15, 0x0

    #@101
    .line 959
    .local v15, "extra":I
    :goto_5
    add-int/lit8 v2, v26, 0x0

    #@103
    aput p2, v25, v2

    #@105
    .line 960
    add-int/lit8 v2, v26, 0x1

    #@107
    aput p8, v25, v2

    #@109
    .line 961
    add-int/lit8 v2, v26, 0x2

    #@10b
    add-int v3, p5, v15

    #@10d
    aput v3, v25, v2

    #@10f
    .line 963
    sub-int v2, p5, p4

    #@111
    add-int/2addr v2, v15

    #@112
    add-int p8, p8, v2

    #@114
    .line 964
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
    .line 965
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
    .line 969
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
    .line 970
    add-int/lit8 v2, v26, 0x3

    #@135
    aput p14, v25, v2

    #@137
    .line 972
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
    .line 973
    sget-object v24, Landroid/text/StaticLayout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@142
    .line 977
    .local v24, "linedirs":Landroid/text/Layout$Directions;
    if-eqz p18, :cond_13

    #@144
    .line 978
    move-object/from16 v0, p0

    #@146
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@148
    aput-object v24, v2, v22

    #@14a
    .line 984
    :goto_6
    if-eqz p25, :cond_d

    #@14c
    .line 987
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
    .line 990
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
    .line 992
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
    .line 994
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
    .line 995
    invoke-direct/range {v2 .. v12}, Landroid/text/StaticLayout;->calculateEllipsis(II[FIFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    #@188
    .line 1001
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
    .line 1002
    return p8

    #@193
    .line 921
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
    .line 922
    :cond_f
    const/4 v13, 0x0

    #@198
    goto/16 :goto_3

    #@19a
    .line 923
    .restart local v13    # "currentLineIsTheLastVisibleOne":Z
    :cond_10
    const/16 v23, 0x0

    #@19c
    .restart local v23    # "lastLine":Z
    goto/16 :goto_4

    #@19e
    .line 949
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
    .line 950
    .local v16, "ex":D
    const-wide/16 v2, 0x0

    #@1ad
    cmpl-double v2, v16, v2

    #@1af
    if-ltz v2, :cond_12

    #@1b1
    .line 951
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    #@1b3
    add-double v2, v2, v16

    #@1b5
    double-to-int v15, v2

    #@1b6
    .restart local v15    # "extra":I
    goto/16 :goto_5

    #@1b8
    .line 953
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
    .line 980
    .end local v16    # "ex":D
    .restart local v24    # "linedirs":Landroid/text/Layout$Directions;
    :cond_13
    move-object/from16 v0, p0

    #@1c4
    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    #@1c6
    sub-int v4, p2, p24

    #@1c8
    .line 981
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
    .line 980
    invoke-static/range {v2 .. v7}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    #@1d5
    move-result-object v2

    #@1d6
    aput-object v2, v8, v22

    #@1d8
    goto/16 :goto_6

    #@1da
    .line 987
    :cond_14
    const/4 v12, 0x0

    #@1db
    .restart local v12    # "forceEllipsis":Z
    goto :goto_7

    #@1dc
    .line 991
    :cond_15
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@1de
    move-object/from16 v0, p25

    #@1e0
    if-eq v0, v2, :cond_b

    #@1e2
    .line 990
    const/4 v14, 0x1

    #@1e3
    goto :goto_8

    #@1e4
    .line 993
    :cond_16
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@1e6
    move-object/from16 v0, p25

    #@1e8
    if-ne v0, v2, :cond_17

    #@1ea
    const/4 v2, 0x1

    #@1eb
    :goto_9
    move v14, v2

    #@1ec
    goto :goto_8

    #@1ed
    :cond_17
    const/4 v2, 0x0

    #@1ee
    goto :goto_9
.end method


# virtual methods
.method generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .locals 118
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    #@0
    .prologue
    .line 565
    move-object/from16 v0, p1

    #@2
    iget-object v5, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    #@4
    .line 566
    .local v5, "source":Ljava/lang/CharSequence;
    move-object/from16 v0, p1

    #@6
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    #@8
    move/from16 v72, v0

    #@a
    .line 567
    .local v72, "bufStart":I
    move-object/from16 v0, p1

    #@c
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    #@e
    move/from16 v37, v0

    #@10
    .line 568
    .local v37, "bufEnd":I
    move-object/from16 v0, p1

    #@12
    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    #@14
    move-object/from16 v46, v0

    #@16
    .line 569
    .local v46, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p1

    #@18
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    #@1a
    move/from16 v100, v0

    #@1c
    .line 570
    .local v100, "outerWidth":I
    move-object/from16 v0, p1

    #@1e
    iget-object v8, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@20
    .line 571
    .local v8, "textDir":Landroid/text/TextDirectionHeuristic;
    move-object/from16 v0, p1

    #@22
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    #@24
    move/from16 v27, v0

    #@26
    .line 572
    .local v27, "spacingmult":F
    move-object/from16 v0, p1

    #@28
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    #@2a
    move/from16 v28, v0

    #@2c
    .line 573
    .local v28, "spacingadd":F
    move-object/from16 v0, p1

    #@2e
    iget v9, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    #@30
    int-to-float v0, v9

    #@31
    move/from16 v44, v0

    #@33
    .line 574
    .local v44, "ellipsizedWidth":F
    move-object/from16 v0, p1

    #@35
    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    #@37
    move-object/from16 v43, v0

    #@39
    .line 575
    .local v43, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    new-instance v95, Landroid/text/StaticLayout$LineBreaks;

    #@3b
    invoke-direct/range {v95 .. v95}, Landroid/text/StaticLayout$LineBreaks;-><init>()V

    #@3e
    .line 577
    .local v95, "lineBreaks":Landroid/text/StaticLayout$LineBreaks;
    const/4 v9, 0x4

    #@3f
    new-array v0, v9, [I

    #@41
    move-object/from16 v107, v0

    #@43
    .line 580
    .local v107, "spanEndCache":[I
    const/16 v9, 0x10

    #@45
    new-array v0, v9, [I

    #@47
    move-object/from16 v85, v0

    #@49
    .line 581
    .local v85, "fmCache":[I
    invoke-virtual/range {v46 .. v46}, Landroid/text/TextPaint;->getTextLocale()Ljava/util/Locale;

    #@4c
    move-result-object v9

    #@4d
    move-object/from16 v0, p1

    #@4f
    invoke-static {v0, v9}, Landroid/text/StaticLayout$Builder;->-wrap1(Landroid/text/StaticLayout$Builder;Ljava/util/Locale;)V

    #@52
    .line 583
    const/4 v9, 0x0

    #@53
    move-object/from16 v0, p0

    #@55
    iput v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@57
    .line 585
    const/16 v26, 0x0

    #@59
    .line 586
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
    .line 588
    .local v33, "needMultiply":Z
    :goto_0
    move-object/from16 v0, p1

    #@68
    iget-object v0, v0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    #@6a
    move-object/from16 v31, v0

    #@6c
    .line 589
    .local v31, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v30, 0x0

    #@6e
    .line 591
    .local v30, "chooseHtv":[I
    move-object/from16 v0, p1

    #@70
    iget-object v4, v0, Landroid/text/StaticLayout$Builder;->mMeasuredText:Landroid/text/MeasuredText;

    #@72
    .line 593
    .local v4, "measured":Landroid/text/MeasuredText;
    const/16 v113, 0x0

    #@74
    .line 594
    .local v113, "spanned":Landroid/text/Spanned;
    instance-of v9, v5, Landroid/text/Spanned;

    #@76
    if-eqz v9, :cond_1

    #@78
    move-object/from16 v113, v5

    #@7a
    .line 595
    check-cast v113, Landroid/text/Spanned;

    #@7c
    .line 598
    .end local v113    # "spanned":Landroid/text/Spanned;
    :cond_1
    move/from16 v6, v72

    #@7e
    .end local v30    # "chooseHtv":[I
    .local v6, "paraStart":I
    :goto_1
    move/from16 v0, v37

    #@80
    if-gt v6, v0, :cond_2a

    #@82
    .line 599
    const/16 v9, 0xa

    #@84
    move/from16 v0, v37

    #@86
    invoke-static {v5, v9, v6, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@89
    move-result v7

    #@8a
    .line 600
    .local v7, "paraEnd":I
    if-gez v7, :cond_4

    #@8c
    .line 601
    move/from16 v7, v37

    #@8e
    .line 605
    :goto_2
    const/4 v15, 0x1

    #@8f
    .line 606
    .local v15, "firstWidthLineCount":I
    move/from16 v82, v100

    #@91
    .line 607
    .local v82, "firstWidth":I
    move/from16 v102, v100

    #@93
    .line 609
    .local v102, "restWidth":I
    const/16 v29, 0x0

    #@95
    .line 611
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v113, :cond_6

    #@97
    .line 613
    const-class v9, Landroid/text/style/LeadingMarginSpan;

    #@99
    .line 612
    move-object/from16 v0, v113

    #@9b
    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@9e
    move-result-object v105

    #@9f
    check-cast v105, [Landroid/text/style/LeadingMarginSpan;

    #@a1
    .line 614
    .local v105, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v89, 0x0

    #@a3
    .local v89, "i":I
    :goto_3
    move-object/from16 v0, v105

    #@a5
    array-length v9, v0

    #@a6
    move/from16 v0, v89

    #@a8
    if-ge v0, v9, :cond_5

    #@aa
    .line 615
    aget-object v97, v105, v89

    #@ac
    .line 616
    .local v97, "lms":Landroid/text/style/LeadingMarginSpan;
    aget-object v9, v105, v89

    #@ae
    const/4 v10, 0x1

    #@af
    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@b2
    move-result v9

    #@b3
    sub-int v82, v82, v9

    #@b5
    .line 617
    aget-object v9, v105, v89

    #@b7
    const/4 v10, 0x0

    #@b8
    invoke-interface {v9, v10}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@bb
    move-result v9

    #@bc
    sub-int v102, v102, v9

    #@be
    .line 621
    move-object/from16 v0, v97

    #@c0
    instance-of v9, v0, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@c2
    if-eqz v9, :cond_2

    #@c4
    move-object/from16 v98, v97

    #@c6
    .line 622
    check-cast v98, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@c8
    .line 624
    .local v98, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    invoke-interface/range {v98 .. v98}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    #@cb
    move-result v9

    #@cc
    .line 623
    invoke-static {v15, v9}, Ljava/lang/Math;->max(II)I

    #@cf
    move-result v15

    #@d0
    .line 614
    .end local v98    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    :cond_2
    add-int/lit8 v89, v89, 0x1

    #@d2
    goto :goto_3

    #@d3
    .line 586
    .end local v4    # "measured":Landroid/text/MeasuredText;
    .end local v6    # "paraStart":I
    .end local v7    # "paraEnd":I
    .end local v15    # "firstWidthLineCount":I
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v33    # "needMultiply":Z
    .end local v82    # "firstWidth":I
    .end local v89    # "i":I
    .end local v97    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v102    # "restWidth":I
    .end local v105    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_3
    const/16 v33, 0x0

    #@d5
    .restart local v33    # "needMultiply":Z
    goto :goto_0

    #@d6
    .line 603
    .restart local v4    # "measured":Landroid/text/MeasuredText;
    .restart local v6    # "paraStart":I
    .restart local v7    # "paraEnd":I
    .restart local v31    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    #@d8
    goto :goto_2

    #@d9
    .line 628
    .restart local v15    # "firstWidthLineCount":I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v82    # "firstWidth":I
    .restart local v89    # "i":I
    .restart local v102    # "restWidth":I
    .restart local v105    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_5
    const-class v9, Landroid/text/style/LineHeightSpan;

    #@db
    move-object/from16 v0, v113

    #@dd
    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@e0
    move-result-object v29

    #@e1
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    check-cast v29, [Landroid/text/style/LineHeightSpan;

    #@e3
    .line 630
    .local v29, "chooseHt":[Landroid/text/style/LineHeightSpan;
    move-object/from16 v0, v29

    #@e5
    array-length v9, v0

    #@e6
    if-nez v9, :cond_7

    #@e8
    .line 631
    const/16 v29, 0x0

    #@ea
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v89    # "i":I
    .end local v105    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_6
    move-object/from16 v9, p1

    #@ec
    .line 655
    invoke-virtual/range {v4 .. v9}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@ef
    .line 656
    iget-object v12, v4, Landroid/text/MeasuredText;->mChars:[C

    #@f1
    .line 657
    .local v12, "chs":[C
    iget-object v0, v4, Landroid/text/MeasuredText;->mWidths:[F

    #@f3
    move-object/from16 v41, v0

    #@f5
    .line 658
    .local v41, "widths":[F
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    #@f7
    move-object/from16 v34, v0

    #@f9
    .line 659
    .local v34, "chdirs":[B
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    #@fb
    move/from16 v35, v0

    #@fd
    .line 660
    .local v35, "dir":I
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    #@ff
    move/from16 v36, v0

    #@101
    .line 663
    .local v36, "easy":Z
    const/16 v17, 0x0

    #@103
    .line 664
    .local v17, "variableTabStops":[I
    if-eqz v113, :cond_c

    #@105
    .line 666
    const-class v9, Landroid/text/style/TabStopSpan;

    #@107
    .line 665
    move-object/from16 v0, v113

    #@109
    invoke-static {v0, v6, v7, v9}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@10c
    move-result-object v115

    #@10d
    check-cast v115, [Landroid/text/style/TabStopSpan;

    #@10f
    .line 667
    .local v115, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v115

    #@111
    array-length v9, v0

    #@112
    if-lez v9, :cond_c

    #@114
    .line 668
    move-object/from16 v0, v115

    #@116
    array-length v9, v0

    #@117
    new-array v0, v9, [I

    #@119
    move-object/from16 v116, v0

    #@11b
    .line 669
    .local v116, "stops":[I
    const/16 v89, 0x0

    #@11d
    .restart local v89    # "i":I
    :goto_4
    move-object/from16 v0, v115

    #@11f
    array-length v9, v0

    #@120
    move/from16 v0, v89

    #@122
    if-ge v0, v9, :cond_b

    #@124
    .line 670
    aget-object v9, v115, v89

    #@126
    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    #@129
    move-result v9

    #@12a
    aput v9, v116, v89

    #@12c
    .line 669
    add-int/lit8 v89, v89, 0x1

    #@12e
    goto :goto_4

    #@12f
    .line 633
    .end local v12    # "chs":[C
    .end local v17    # "variableTabStops":[I
    .end local v34    # "chdirs":[B
    .end local v35    # "dir":I
    .end local v36    # "easy":Z
    .end local v41    # "widths":[F
    .end local v115    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v116    # "stops":[I
    .restart local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v105    # "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_7
    if-eqz v30, :cond_8

    #@131
    .line 634
    move-object/from16 v0, v30

    #@133
    array-length v9, v0

    #@134
    move-object/from16 v0, v29

    #@136
    array-length v10, v0

    #@137
    if-ge v9, v10, :cond_9

    #@139
    .line 635
    :cond_8
    move-object/from16 v0, v29

    #@13b
    array-length v9, v0

    #@13c
    invoke-static {v9}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    #@13f
    move-result-object v30

    #@140
    .line 638
    :cond_9
    const/16 v89, 0x0

    #@142
    :goto_5
    move-object/from16 v0, v29

    #@144
    array-length v9, v0

    #@145
    move/from16 v0, v89

    #@147
    if-ge v0, v9, :cond_6

    #@149
    .line 639
    aget-object v9, v29, v89

    #@14b
    move-object/from16 v0, v113

    #@14d
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@150
    move-result v99

    #@151
    .line 641
    .local v99, "o":I
    move/from16 v0, v99

    #@153
    if-ge v0, v6, :cond_a

    #@155
    .line 645
    move-object/from16 v0, p0

    #@157
    move/from16 v1, v99

    #@159
    invoke-virtual {v0, v1}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    #@15c
    move-result v9

    #@15d
    move-object/from16 v0, p0

    #@15f
    invoke-virtual {v0, v9}, Landroid/text/StaticLayout;->getLineTop(I)I

    #@162
    move-result v9

    #@163
    aput v9, v30, v89

    #@165
    .line 638
    :goto_6
    add-int/lit8 v89, v89, 0x1

    #@167
    goto :goto_5

    #@168
    .line 649
    :cond_a
    aput v26, v30, v89

    #@16a
    goto :goto_6

    #@16b
    .line 672
    .end local v29    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v99    # "o":I
    .end local v105    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .restart local v12    # "chs":[C
    .restart local v17    # "variableTabStops":[I
    .restart local v34    # "chdirs":[B
    .restart local v35    # "dir":I
    .restart local v36    # "easy":Z
    .restart local v41    # "widths":[F
    .restart local v115    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v116    # "stops":[I
    :cond_b
    move-object/from16 v0, v116

    #@16d
    array-length v9, v0

    #@16e
    const/4 v10, 0x0

    #@16f
    move-object/from16 v0, v116

    #@171
    invoke-static {v0, v10, v9}, Ljava/util/Arrays;->sort([III)V

    #@174
    .line 673
    move-object/from16 v17, v116

    #@176
    .line 677
    .end local v17    # "variableTabStops":[I
    .end local v89    # "i":I
    .end local v115    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v116    # "stops":[I
    :cond_c
    move-object/from16 v0, p1

    #@178
    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@17a
    sub-int v13, v7, v6

    #@17c
    .line 678
    move/from16 v0, v82

    #@17e
    int-to-float v14, v0

    #@17f
    move/from16 v0, v102

    #@181
    int-to-float v0, v0

    #@182
    move/from16 v16, v0

    #@184
    .line 679
    move-object/from16 v0, p1

    #@186
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    #@188
    move/from16 v19, v0

    #@18a
    move-object/from16 v0, p1

    #@18c
    iget v0, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    #@18e
    move/from16 v20, v0

    #@190
    const/16 v18, 0x14

    #@192
    .line 677
    invoke-static/range {v10 .. v20}, Landroid/text/StaticLayout;->nSetupParagraph(J[CIFIF[IIII)V

    #@195
    .line 680
    move-object/from16 v0, p0

    #@197
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@199
    if-nez v9, :cond_d

    #@19b
    move-object/from16 v0, p0

    #@19d
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@19f
    if-eqz v9, :cond_13

    #@1a1
    .line 684
    :cond_d
    move-object/from16 v0, p0

    #@1a3
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1a5
    if-nez v9, :cond_e

    #@1a7
    const/16 v93, 0x0

    #@1a9
    .line 685
    .local v93, "leftLen":I
    :goto_7
    move-object/from16 v0, p0

    #@1ab
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1ad
    if-nez v9, :cond_f

    #@1af
    const/16 v103, 0x0

    #@1b1
    .line 686
    .local v103, "rightLen":I
    :goto_8
    move/from16 v0, v93

    #@1b3
    move/from16 v1, v103

    #@1b5
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    #@1b8
    move-result v9

    #@1b9
    move-object/from16 v0, p0

    #@1bb
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@1bd
    sub-int/2addr v9, v10

    #@1be
    const/4 v10, 0x1

    #@1bf
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    #@1c2
    move-result v91

    #@1c3
    .line 687
    .local v91, "indentsLen":I
    move/from16 v0, v91

    #@1c5
    new-array v0, v0, [I

    #@1c7
    move-object/from16 v90, v0

    #@1c9
    .line 688
    .local v90, "indents":[I
    const/16 v89, 0x0

    #@1cb
    .restart local v89    # "i":I
    :goto_9
    move/from16 v0, v89

    #@1cd
    move/from16 v1, v91

    #@1cf
    if-ge v0, v1, :cond_12

    #@1d1
    .line 689
    move-object/from16 v0, p0

    #@1d3
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1d5
    if-nez v9, :cond_10

    #@1d7
    const/16 v94, 0x0

    #@1d9
    .line 691
    .local v94, "leftMargin":I
    :goto_a
    move-object/from16 v0, p0

    #@1db
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1dd
    if-nez v9, :cond_11

    #@1df
    const/16 v104, 0x0

    #@1e1
    .line 693
    .local v104, "rightMargin":I
    :goto_b
    add-int v9, v94, v104

    #@1e3
    aput v9, v90, v89

    #@1e5
    .line 688
    add-int/lit8 v89, v89, 0x1

    #@1e7
    goto :goto_9

    #@1e8
    .line 684
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v93    # "leftLen":I
    .end local v94    # "leftMargin":I
    .end local v103    # "rightLen":I
    .end local v104    # "rightMargin":I
    :cond_e
    move-object/from16 v0, p0

    #@1ea
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1ec
    array-length v0, v9

    #@1ed
    move/from16 v93, v0

    #@1ef
    .restart local v93    # "leftLen":I
    goto :goto_7

    #@1f0
    .line 685
    :cond_f
    move-object/from16 v0, p0

    #@1f2
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@1f4
    array-length v0, v9

    #@1f5
    move/from16 v103, v0

    #@1f7
    goto :goto_8

    #@1f8
    .line 690
    .restart local v89    # "i":I
    .restart local v90    # "indents":[I
    .restart local v91    # "indentsLen":I
    .restart local v103    # "rightLen":I
    :cond_10
    move-object/from16 v0, p0

    #@1fa
    iget-object v9, v0, Landroid/text/StaticLayout;->mLeftIndents:[I

    #@1fc
    move-object/from16 v0, p0

    #@1fe
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@200
    add-int v10, v10, v89

    #@202
    add-int/lit8 v11, v93, -0x1

    #@204
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@207
    move-result v10

    #@208
    aget v94, v9, v10

    #@20a
    .restart local v94    # "leftMargin":I
    goto :goto_a

    #@20b
    .line 692
    :cond_11
    move-object/from16 v0, p0

    #@20d
    iget-object v9, v0, Landroid/text/StaticLayout;->mRightIndents:[I

    #@20f
    move-object/from16 v0, p0

    #@211
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@213
    add-int v10, v10, v89

    #@215
    add-int/lit8 v11, v103, -0x1

    #@217
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    #@21a
    move-result v10

    #@21b
    aget v104, v9, v10

    #@21d
    goto :goto_b

    #@21e
    .line 695
    .end local v94    # "leftMargin":I
    :cond_12
    move-object/from16 v0, p1

    #@220
    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@222
    move-object/from16 v0, v90

    #@224
    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nSetIndents(J[I)V

    #@227
    .line 701
    .end local v89    # "i":I
    .end local v90    # "indents":[I
    .end local v91    # "indentsLen":I
    .end local v93    # "leftLen":I
    .end local v103    # "rightLen":I
    :cond_13
    const/16 v86, 0x0

    #@229
    .line 702
    .local v86, "fmCacheCount":I
    const/16 v108, 0x0

    #@22b
    .line 703
    .local v108, "spanEndCacheCount":I
    move/from16 v112, v6

    #@22d
    .local v112, "spanStart":I
    :goto_c
    move/from16 v0, v112

    #@22f
    if-ge v0, v7, :cond_17

    #@231
    .line 704
    mul-int/lit8 v9, v86, 0x4

    #@233
    move-object/from16 v0, v85

    #@235
    array-length v10, v0

    #@236
    if-lt v9, v10, :cond_14

    #@238
    .line 705
    mul-int/lit8 v9, v86, 0x4

    #@23a
    mul-int/lit8 v9, v9, 0x2

    #@23c
    new-array v0, v9, [I

    #@23e
    move-object/from16 v88, v0

    #@240
    .line 706
    .local v88, "grow":[I
    mul-int/lit8 v9, v86, 0x4

    #@242
    const/4 v10, 0x0

    #@243
    const/4 v11, 0x0

    #@244
    move-object/from16 v0, v85

    #@246
    move-object/from16 v1, v88

    #@248
    invoke-static {v0, v10, v1, v11, v9}, Ljava/lang/System;->arraycopy([II[III)V

    #@24b
    .line 707
    move-object/from16 v85, v88

    #@24d
    .line 710
    .end local v88    # "grow":[I
    :cond_14
    move-object/from16 v0, v107

    #@24f
    array-length v9, v0

    #@250
    move/from16 v0, v108

    #@252
    if-lt v0, v9, :cond_15

    #@254
    .line 711
    mul-int/lit8 v9, v108, 0x2

    #@256
    new-array v0, v9, [I

    #@258
    move-object/from16 v88, v0

    #@25a
    .line 712
    .restart local v88    # "grow":[I
    const/4 v9, 0x0

    #@25b
    const/4 v10, 0x0

    #@25c
    move-object/from16 v0, v107

    #@25e
    move-object/from16 v1, v88

    #@260
    move/from16 v2, v108

    #@262
    invoke-static {v0, v9, v1, v10, v2}, Ljava/lang/System;->arraycopy([II[III)V

    #@265
    .line 713
    move-object/from16 v107, v88

    #@267
    .line 716
    .end local v88    # "grow":[I
    :cond_15
    if-nez v113, :cond_16

    #@269
    .line 717
    move/from16 v106, v7

    #@26b
    .line 718
    .local v106, "spanEnd":I
    sub-int v111, v7, v112

    #@26d
    .line 719
    .local v111, "spanLen":I
    move-object/from16 v0, v46

    #@26f
    move/from16 v1, v111

    #@271
    move-object/from16 v2, v31

    #@273
    invoke-virtual {v4, v0, v1, v2}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@276
    .line 732
    :goto_d
    mul-int/lit8 v9, v86, 0x4

    #@278
    add-int/lit8 v9, v9, 0x0

    #@27a
    move-object/from16 v0, v31

    #@27c
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@27e
    aput v10, v85, v9

    #@280
    .line 733
    mul-int/lit8 v9, v86, 0x4

    #@282
    add-int/lit8 v9, v9, 0x1

    #@284
    move-object/from16 v0, v31

    #@286
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@288
    aput v10, v85, v9

    #@28a
    .line 734
    mul-int/lit8 v9, v86, 0x4

    #@28c
    add-int/lit8 v9, v9, 0x2

    #@28e
    move-object/from16 v0, v31

    #@290
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@292
    aput v10, v85, v9

    #@294
    .line 735
    mul-int/lit8 v9, v86, 0x4

    #@296
    add-int/lit8 v9, v9, 0x3

    #@298
    move-object/from16 v0, v31

    #@29a
    iget v10, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@29c
    aput v10, v85, v9

    #@29e
    .line 736
    add-int/lit8 v86, v86, 0x1

    #@2a0
    .line 738
    aput v106, v107, v108

    #@2a2
    .line 739
    add-int/lit8 v108, v108, 0x1

    #@2a4
    .line 703
    move/from16 v112, v106

    #@2a6
    goto :goto_c

    #@2a7
    .line 722
    .end local v106    # "spanEnd":I
    .end local v111    # "spanLen":I
    :cond_16
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@2a9
    .line 721
    move-object/from16 v0, v113

    #@2ab
    move/from16 v1, v112

    #@2ad
    invoke-interface {v0, v1, v7, v9}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@2b0
    move-result v106

    #@2b1
    .line 723
    .restart local v106    # "spanEnd":I
    sub-int v111, v106, v112

    #@2b3
    .line 725
    .restart local v111    # "spanLen":I
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@2b5
    move-object/from16 v0, v113

    #@2b7
    move/from16 v1, v112

    #@2b9
    move/from16 v2, v106

    #@2bb
    invoke-interface {v0, v1, v2, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@2be
    move-result-object v114

    #@2bf
    check-cast v114, [Landroid/text/style/MetricAffectingSpan;

    #@2c1
    .line 726
    .local v114, "spans":[Landroid/text/style/MetricAffectingSpan;
    const-class v9, Landroid/text/style/MetricAffectingSpan;

    #@2c3
    move-object/from16 v0, v114

    #@2c5
    move-object/from16 v1, v113

    #@2c7
    invoke-static {v0, v1, v9}, Landroid/text/TextUtils;->removeEmptySpans([Ljava/lang/Object;Landroid/text/Spanned;Ljava/lang/Class;)[Ljava/lang/Object;

    #@2ca
    move-result-object v114

    #@2cb
    .end local v114    # "spans":[Landroid/text/style/MetricAffectingSpan;
    check-cast v114, [Landroid/text/style/MetricAffectingSpan;

    #@2cd
    .line 727
    .restart local v114    # "spans":[Landroid/text/style/MetricAffectingSpan;
    move-object/from16 v0, v46

    #@2cf
    move-object/from16 v1, v114

    #@2d1
    move/from16 v2, v111

    #@2d3
    move-object/from16 v3, v31

    #@2d5
    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/text/MeasuredText;->addStyleRun(Landroid/text/TextPaint;[Landroid/text/style/MetricAffectingSpan;ILandroid/graphics/Paint$FontMetricsInt;)F

    #@2d8
    goto :goto_d

    #@2d9
    .line 742
    .end local v106    # "spanEnd":I
    .end local v111    # "spanLen":I
    .end local v114    # "spans":[Landroid/text/style/MetricAffectingSpan;
    :cond_17
    move-object/from16 v0, p1

    #@2db
    iget-wide v10, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2dd
    move-object/from16 v0, v41

    #@2df
    invoke-static {v10, v11, v0}, Landroid/text/StaticLayout;->nGetWidths(J[F)V

    #@2e2
    .line 743
    move-object/from16 v0, p1

    #@2e4
    iget-wide v0, v0, Landroid/text/StaticLayout$Builder;->mNativePtr:J

    #@2e6
    move-wide/from16 v18, v0

    #@2e8
    move-object/from16 v0, v95

    #@2ea
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    #@2ec
    move-object/from16 v21, v0

    #@2ee
    .line 744
    move-object/from16 v0, v95

    #@2f0
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    #@2f2
    move-object/from16 v22, v0

    #@2f4
    move-object/from16 v0, v95

    #@2f6
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    #@2f8
    move-object/from16 v23, v0

    #@2fa
    move-object/from16 v0, v95

    #@2fc
    iget-object v9, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    #@2fe
    array-length v0, v9

    #@2ff
    move/from16 v24, v0

    #@301
    move-object/from16 v20, v95

    #@303
    .line 743
    invoke-static/range {v18 .. v24}, Landroid/text/StaticLayout;->nComputeLineBreaks(JLandroid/text/StaticLayout$LineBreaks;[I[F[II)I

    #@306
    move-result v78

    #@307
    .line 746
    .local v78, "breakCount":I
    move-object/from16 v0, v95

    #@309
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->breaks:[I

    #@30b
    move-object/from16 v80, v0

    #@30d
    .line 747
    .local v80, "breaks":[I
    move-object/from16 v0, v95

    #@30f
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->widths:[F

    #@311
    move-object/from16 v96, v0

    #@313
    .line 748
    .local v96, "lineWidths":[F
    move-object/from16 v0, v95

    #@315
    iget-object v0, v0, Landroid/text/StaticLayout$LineBreaks;->flags:[I

    #@317
    move-object/from16 v84, v0

    #@319
    .line 750
    .local v84, "flags":[I
    move-object/from16 v0, p0

    #@31b
    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@31d
    move-object/from16 v0, p0

    #@31f
    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@321
    sub-int v101, v9, v10

    #@323
    .line 751
    .local v101, "remainingLineCount":I
    if-eqz v43, :cond_1c

    #@325
    .line 752
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    #@327
    move-object/from16 v0, v43

    #@329
    if-eq v0, v9, :cond_19

    #@32b
    .line 753
    move-object/from16 v0, p0

    #@32d
    iget v9, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@32f
    const/4 v10, 0x1

    #@330
    if-ne v9, v10, :cond_1b

    #@332
    .line 754
    sget-object v9, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    #@334
    move-object/from16 v0, v43

    #@336
    if-eq v0, v9, :cond_1a

    #@338
    const/16 v81, 0x1

    #@33a
    .line 755
    .local v81, "ellipsisMayBeApplied":Z
    :goto_e
    if-lez v101, :cond_20

    #@33c
    move/from16 v0, v101

    #@33e
    move/from16 v1, v78

    #@340
    if-ge v0, v1, :cond_20

    #@342
    if-eqz v81, :cond_20

    #@344
    .line 758
    const/16 v117, 0x0

    #@346
    .line 759
    .local v117, "width":F
    const/16 v83, 0x0

    #@348
    .line 760
    .local v83, "flag":I
    add-int/lit8 v89, v101, -0x1

    #@34a
    .restart local v89    # "i":I
    :goto_f
    move/from16 v0, v89

    #@34c
    move/from16 v1, v78

    #@34e
    if-ge v0, v1, :cond_1f

    #@350
    .line 761
    add-int/lit8 v9, v78, -0x1

    #@352
    move/from16 v0, v89

    #@354
    if-ne v0, v9, :cond_1d

    #@356
    .line 762
    aget v9, v96, v89

    #@358
    add-float v117, v117, v9

    #@35a
    .line 768
    :cond_18
    aget v9, v84, v89

    #@35c
    const/high16 v10, 0x20000000

    #@35e
    and-int/2addr v9, v10

    #@35f
    or-int v83, v83, v9

    #@361
    .line 760
    add-int/lit8 v89, v89, 0x1

    #@363
    goto :goto_f

    #@364
    .line 752
    .end local v81    # "ellipsisMayBeApplied":Z
    .end local v83    # "flag":I
    .end local v89    # "i":I
    .end local v117    # "width":F
    :cond_19
    const/16 v81, 0x1

    #@366
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@367
    .line 754
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_1a
    const/16 v81, 0x0

    #@369
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@36a
    .line 753
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_1b
    const/16 v81, 0x0

    #@36c
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@36d
    .line 751
    .end local v81    # "ellipsisMayBeApplied":Z
    :cond_1c
    const/16 v81, 0x0

    #@36f
    .restart local v81    # "ellipsisMayBeApplied":Z
    goto :goto_e

    #@370
    .line 764
    .restart local v83    # "flag":I
    .restart local v89    # "i":I
    .restart local v117    # "width":F
    :cond_1d
    if-nez v89, :cond_1e

    #@372
    const/16 v92, 0x0

    #@374
    .local v92, "j":I
    :goto_10
    aget v9, v80, v89

    #@376
    move/from16 v0, v92

    #@378
    if-ge v0, v9, :cond_18

    #@37a
    .line 765
    aget v9, v41, v92

    #@37c
    add-float v117, v117, v9

    #@37e
    .line 764
    add-int/lit8 v92, v92, 0x1

    #@380
    goto :goto_10

    #@381
    .end local v92    # "j":I
    :cond_1e
    add-int/lit8 v9, v89, -0x1

    #@383
    aget v92, v80, v9

    #@385
    .restart local v92    # "j":I
    goto :goto_10

    #@386
    .line 771
    .end local v92    # "j":I
    :cond_1f
    add-int/lit8 v9, v101, -0x1

    #@388
    add-int/lit8 v10, v78, -0x1

    #@38a
    aget v10, v80, v10

    #@38c
    aput v10, v80, v9

    #@38e
    .line 772
    add-int/lit8 v9, v101, -0x1

    #@390
    aput v117, v96, v9

    #@392
    .line 773
    add-int/lit8 v9, v101, -0x1

    #@394
    aput v83, v84, v9

    #@396
    .line 775
    move/from16 v78, v101

    #@398
    .line 779
    .end local v83    # "flag":I
    .end local v89    # "i":I
    .end local v117    # "width":F
    :cond_20
    move/from16 v20, v6

    #@39a
    .line 781
    .local v20, "here":I
    const/16 v24, 0x0

    #@39c
    .local v24, "fmTop":I
    const/16 v25, 0x0

    #@39e
    .local v25, "fmBottom":I
    const/16 v22, 0x0

    #@3a0
    .local v22, "fmAscent":I
    const/16 v23, 0x0

    #@3a2
    .line 782
    .local v23, "fmDescent":I
    const/16 v87, 0x0

    #@3a4
    .line 783
    .local v87, "fmCacheIndex":I
    const/16 v109, 0x0

    #@3a6
    .line 784
    .local v109, "spanEndCacheIndex":I
    const/16 v79, 0x0

    #@3a8
    .line 785
    .local v79, "breakIndex":I
    move/from16 v112, v6

    #@3aa
    move/from16 v110, v109

    #@3ac
    .end local v109    # "spanEndCacheIndex":I
    .local v110, "spanEndCacheIndex":I
    :goto_11
    move/from16 v0, v112

    #@3ae
    if-ge v0, v7, :cond_29

    #@3b0
    .line 787
    add-int/lit8 v109, v110, 0x1

    #@3b2
    .end local v110    # "spanEndCacheIndex":I
    .restart local v109    # "spanEndCacheIndex":I
    aget v106, v107, v110

    #@3b4
    .line 790
    .restart local v106    # "spanEnd":I
    mul-int/lit8 v9, v87, 0x4

    #@3b6
    add-int/lit8 v9, v9, 0x0

    #@3b8
    aget v9, v85, v9

    #@3ba
    move-object/from16 v0, v31

    #@3bc
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@3be
    .line 791
    mul-int/lit8 v9, v87, 0x4

    #@3c0
    add-int/lit8 v9, v9, 0x1

    #@3c2
    aget v9, v85, v9

    #@3c4
    move-object/from16 v0, v31

    #@3c6
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@3c8
    .line 792
    mul-int/lit8 v9, v87, 0x4

    #@3ca
    add-int/lit8 v9, v9, 0x2

    #@3cc
    aget v9, v85, v9

    #@3ce
    move-object/from16 v0, v31

    #@3d0
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@3d2
    .line 793
    mul-int/lit8 v9, v87, 0x4

    #@3d4
    add-int/lit8 v9, v9, 0x3

    #@3d6
    aget v9, v85, v9

    #@3d8
    move-object/from16 v0, v31

    #@3da
    iput v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@3dc
    .line 794
    add-int/lit8 v87, v87, 0x1

    #@3de
    .line 796
    move-object/from16 v0, v31

    #@3e0
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@3e2
    move/from16 v0, v24

    #@3e4
    if-ge v9, v0, :cond_21

    #@3e6
    .line 797
    move-object/from16 v0, v31

    #@3e8
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@3ea
    move/from16 v24, v0

    #@3ec
    .line 799
    :cond_21
    move-object/from16 v0, v31

    #@3ee
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@3f0
    move/from16 v0, v22

    #@3f2
    if-ge v9, v0, :cond_22

    #@3f4
    .line 800
    move-object/from16 v0, v31

    #@3f6
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@3f8
    move/from16 v22, v0

    #@3fa
    .line 802
    :cond_22
    move-object/from16 v0, v31

    #@3fc
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@3fe
    move/from16 v0, v23

    #@400
    if-le v9, v0, :cond_23

    #@402
    .line 803
    move-object/from16 v0, v31

    #@404
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@406
    move/from16 v23, v0

    #@408
    .line 805
    :cond_23
    move-object/from16 v0, v31

    #@40a
    iget v9, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@40c
    move/from16 v0, v25

    #@40e
    if-le v9, v0, :cond_24

    #@410
    .line 806
    move-object/from16 v0, v31

    #@412
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@414
    move/from16 v25, v0

    #@416
    .line 810
    :cond_24
    :goto_12
    move/from16 v0, v79

    #@418
    move/from16 v1, v78

    #@41a
    if-ge v0, v1, :cond_25

    #@41c
    aget v9, v80, v79

    #@41e
    add-int/2addr v9, v6

    #@41f
    move/from16 v0, v112

    #@421
    if-ge v9, v0, :cond_25

    #@423
    .line 811
    add-int/lit8 v79, v79, 0x1

    #@425
    goto :goto_12

    #@426
    .line 814
    :cond_25
    move/from16 v0, v79

    #@428
    move/from16 v1, v78

    #@42a
    if-ge v0, v1, :cond_28

    #@42c
    aget v9, v80, v79

    #@42e
    add-int/2addr v9, v6

    #@42f
    move/from16 v0, v106

    #@431
    if-gt v9, v0, :cond_28

    #@433
    .line 815
    aget v9, v80, v79

    #@435
    add-int v21, v6, v9

    #@437
    .line 817
    .local v21, "endPos":I
    move/from16 v0, v21

    #@439
    move/from16 v1, v37

    #@43b
    if-ge v0, v1, :cond_26

    #@43d
    const/16 v47, 0x1

    #@43f
    .line 821
    .local v47, "moreChars":Z
    :goto_13
    aget v32, v84, v79

    #@441
    .line 824
    aget v45, v96, v79

    #@443
    move-object/from16 v18, p0

    #@445
    move-object/from16 v19, v5

    #@447
    move/from16 v38, p2

    #@449
    move/from16 v39, p3

    #@44b
    move-object/from16 v40, v12

    #@44d
    move/from16 v42, v6

    #@44f
    .line 819
    invoke-direct/range {v18 .. v47}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    #@452
    move-result v26

    #@453
    .line 826
    move/from16 v0, v21

    #@455
    move/from16 v1, v106

    #@457
    if-ge v0, v1, :cond_27

    #@459
    .line 828
    move-object/from16 v0, v31

    #@45b
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@45d
    move/from16 v24, v0

    #@45f
    .line 829
    move-object/from16 v0, v31

    #@461
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@463
    move/from16 v25, v0

    #@465
    .line 830
    move-object/from16 v0, v31

    #@467
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@469
    move/from16 v22, v0

    #@46b
    .line 831
    move-object/from16 v0, v31

    #@46d
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@46f
    move/from16 v23, v0

    #@471
    .line 836
    :goto_14
    move/from16 v20, v21

    #@473
    .line 837
    add-int/lit8 v79, v79, 0x1

    #@475
    .line 839
    move-object/from16 v0, p0

    #@477
    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@479
    move-object/from16 v0, p0

    #@47b
    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@47d
    if-lt v9, v10, :cond_25

    #@47f
    .line 840
    return-void

    #@480
    .line 817
    .end local v47    # "moreChars":Z
    :cond_26
    const/16 v47, 0x0

    #@482
    .restart local v47    # "moreChars":Z
    goto :goto_13

    #@483
    .line 833
    :cond_27
    const/16 v23, 0x0

    #@485
    const/16 v22, 0x0

    #@487
    const/16 v25, 0x0

    #@489
    const/16 v24, 0x0

    #@48b
    goto :goto_14

    #@48c
    .line 785
    .end local v21    # "endPos":I
    .end local v47    # "moreChars":Z
    :cond_28
    move/from16 v112, v106

    #@48e
    move/from16 v110, v109

    #@490
    .end local v109    # "spanEndCacheIndex":I
    .restart local v110    # "spanEndCacheIndex":I
    goto/16 :goto_11

    #@492
    .line 845
    .end local v106    # "spanEnd":I
    :cond_29
    move/from16 v0, v37

    #@494
    if-ne v7, v0, :cond_2d

    #@496
    .line 849
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
    .end local v96    # "lineWidths":[F
    .end local v101    # "remainingLineCount":I
    .end local v102    # "restWidth":I
    .end local v108    # "spanEndCacheCount":I
    .end local v110    # "spanEndCacheIndex":I
    .end local v112    # "spanStart":I
    :cond_2a
    move/from16 v0, v37

    #@498
    move/from16 v1, v72

    #@49a
    if-eq v0, v1, :cond_2b

    #@49c
    add-int/lit8 v9, v37, -0x1

    #@49e
    invoke-interface {v5, v9}, Ljava/lang/CharSequence;->charAt(I)C

    #@4a1
    move-result v9

    #@4a2
    const/16 v10, 0xa

    #@4a4
    if-ne v9, v10, :cond_2c

    #@4a6
    .line 850
    :cond_2b
    move-object/from16 v0, p0

    #@4a8
    iget v9, v0, Landroid/text/StaticLayout;->mLineCount:I

    #@4aa
    move-object/from16 v0, p0

    #@4ac
    iget v10, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    #@4ae
    if-ge v9, v10, :cond_2c

    #@4b0
    move-object/from16 v48, v4

    #@4b2
    move-object/from16 v49, v5

    #@4b4
    move/from16 v50, v37

    #@4b6
    move/from16 v51, v37

    #@4b8
    move-object/from16 v52, v8

    #@4ba
    move-object/from16 v53, p1

    #@4bc
    .line 853
    invoke-virtual/range {v48 .. v53}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@4bf
    .line 855
    move-object/from16 v0, v46

    #@4c1
    move-object/from16 v1, v31

    #@4c3
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    #@4c6
    .line 858
    move-object/from16 v0, v31

    #@4c8
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    #@4ca
    move/from16 v52, v0

    #@4cc
    move-object/from16 v0, v31

    #@4ce
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    #@4d0
    move/from16 v53, v0

    #@4d2
    .line 859
    move-object/from16 v0, v31

    #@4d4
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    #@4d6
    move/from16 v54, v0

    #@4d8
    move-object/from16 v0, v31

    #@4da
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    #@4dc
    move/from16 v55, v0

    #@4de
    .line 863
    iget-object v0, v4, Landroid/text/MeasuredText;->mLevels:[B

    #@4e0
    move-object/from16 v64, v0

    #@4e2
    iget v0, v4, Landroid/text/MeasuredText;->mDir:I

    #@4e4
    move/from16 v65, v0

    #@4e6
    iget-boolean v0, v4, Landroid/text/MeasuredText;->mEasy:Z

    #@4e8
    move/from16 v66, v0

    #@4ea
    .line 866
    const/16 v75, 0x0

    #@4ec
    .line 861
    const/16 v59, 0x0

    #@4ee
    .line 862
    const/16 v60, 0x0

    #@4f0
    const/16 v62, 0x0

    #@4f2
    .line 864
    const/16 v70, 0x0

    #@4f4
    .line 865
    const/16 v71, 0x0

    #@4f6
    .line 866
    const/16 v77, 0x0

    #@4f8
    move-object/from16 v48, p0

    #@4fa
    move-object/from16 v49, v5

    #@4fc
    move/from16 v50, v37

    #@4fe
    move/from16 v51, v37

    #@500
    move/from16 v56, v26

    #@502
    move/from16 v57, v27

    #@504
    move/from16 v58, v28

    #@506
    move-object/from16 v61, v31

    #@508
    move/from16 v63, v33

    #@50a
    move/from16 v67, v37

    #@50c
    move/from16 v68, p2

    #@50e
    move/from16 v69, p3

    #@510
    move-object/from16 v73, v43

    #@512
    move/from16 v74, v44

    #@514
    move-object/from16 v76, v46

    #@516
    .line 857
    invoke-direct/range {v48 .. v77}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;IZ[BIZIZZ[C[FILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    #@519
    move-result v26

    #@51a
    .line 564
    :cond_2c
    return-void

    #@51b
    .line 598
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
    .restart local v96    # "lineWidths":[F
    .restart local v101    # "remainingLineCount":I
    .restart local v102    # "restWidth":I
    .restart local v108    # "spanEndCacheCount":I
    .restart local v110    # "spanEndCacheIndex":I
    .restart local v112    # "spanStart":I
    :cond_2d
    move v6, v7

    #@51c
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
    .line 1136
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    #@2
    return v0
.end method

.method public getLineDescent(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1146
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v1, p1

    #@5
    add-int/lit8 v1, v1, 0x2

    #@7
    aget v0, v0, v1

    #@9
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
    .line 1115
    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    #@3
    .line 1116
    .local v1, "high":I
    const/4 v3, -0x1

    #@4
    .line 1118
    .local v3, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    #@6
    .line 1119
    .local v2, "lines":[I
    :goto_0
    sub-int v4, v1, v3

    #@8
    const/4 v5, 0x1

    #@9
    if-le v4, v5, :cond_1

    #@b
    .line 1120
    add-int v4, v1, v3

    #@d
    shr-int/lit8 v0, v4, 0x1

    #@f
    .line 1121
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
    .line 1122
    move v1, v0

    #@19
    goto :goto_0

    #@1a
    .line 1124
    :cond_0
    move v3, v0

    #@1b
    goto :goto_0

    #@1c
    .line 1127
    .end local v0    # "guess":I
    :cond_1
    if-gez v3, :cond_2

    #@1e
    .line 1128
    return v6

    #@1f
    .line 1130
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
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1141
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    #@2
    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    #@4
    mul-int/2addr v1, p1

    #@5
    add-int/lit8 v1, v1, 0x1

    #@7
    aget v0, v0, v1

    #@9
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
