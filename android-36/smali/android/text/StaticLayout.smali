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
.field private static final greylist-max-o CHAR_NEW_LINE:C = '\n'

.field private static final greylist-max-o COLUMNS_ELLIPSIZE:I = 0x7

.field private static final greylist-max-o COLUMNS_NORMAL:I = 0x5

.field private static final greylist-max-o DEFAULT_MAX_LINE_HEIGHT:I = -0x1

.field private static final greylist-max-o DESCENT:I = 0x2

.field private static final greylist-max-o DIR:I = 0x0

.field private static final greylist-max-o DIR_SHIFT:I = 0x1e

.field private static final greylist-max-o ELLIPSIS_COUNT:I = 0x6

.field private static final greylist ELLIPSIS_START:I = 0x5

.field private static final blacklist END_HYPHEN_MASK:I = 0x7

.field private static final greylist-max-o EXTRA:I = 0x3

.field private static final greylist-max-o EXTRA_ROUNDING:D = 0.5

.field private static final greylist-max-o HYPHEN:I = 0x4

.field private static final greylist-max-o HYPHEN_MASK:I = 0xff

.field private static final greylist-max-o START:I = 0x0

.field private static final blacklist START_HYPHEN_BITS_SHIFT:I = 0x3

.field private static final blacklist START_HYPHEN_MASK:I = 0x18

.field private static final greylist-max-o START_MASK:I = 0x1fffffff

.field private static final greylist-max-o TAB:I = 0x0

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field private static final greylist-max-o TAB_MASK:I = 0x20000000

.field static final greylist-max-o TAG:Ljava/lang/String; = "StaticLayout"

.field private static final greylist-max-o TOP:I = 0x1


# instance fields
.field private greylist-max-o mBottomPadding:I

.field private greylist mColumns:I

.field private blacklist mDrawingBounds:Landroid/graphics/RectF;

.field private greylist-max-o mEllipsized:Z

.field private greylist-max-o mLeftIndents:[I

.field private greylist mLineCount:I

.field private greylist mLineDirections:[Landroid/text/Layout$Directions;

.field private greylist mLines:[I

.field private greylist-max-o mMaxLineHeight:I

.field private greylist mMaximumVisibleLineCount:I

.field private greylist-max-o mRightIndents:[I

.field private greylist-max-o mTopPadding:I


# direct methods
.method private constructor blacklist <init>()V
    .registers 23

    .line 617
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1611
    iput-object v1, v0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 1626
    const/4 v1, -0x1

    iput v1, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1645
    const v1, 0x7fffffff

    iput v1, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 641
    const/4 v1, 0x7

    iput v1, v0, Landroid/text/StaticLayout;->mColumns:I

    .line 642
    const-class v1, Landroid/text/Layout$Directions;

    const/4 v2, 0x2

    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 643
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, v2

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 644
    return-void
.end method

.method private constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZI)V
    .registers 27
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "trackPadding"    # Z
    .param p3, "columnSize"    # I

    .line 710
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v2, v0

    goto :goto_28

    :cond_c
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_1e

    .line 711
    new-instance v0, Landroid/text/Layout$SpannedEllipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$SpannedEllipsizer;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_27

    :cond_1e
    new-instance v0, Landroid/text/Layout$Ellipsizer;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Ellipsizer;-><init>(Ljava/lang/CharSequence;)V

    :goto_27
    move-object v2, v0

    :goto_28
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v7

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v10

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v14

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v15

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v16

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v17

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v18

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v19

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v20

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/StaticLayout$Builder;)Z

    move-result v21

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v22

    .line 710
    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v22}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 1611
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 1626
    const/4 v0, -0x1

    iput v0, v1, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1645
    const v0, 0x7fffffff

    iput v0, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 718
    move/from16 v2, p3

    iput v2, v1, Landroid/text/StaticLayout;->mColumns:I

    .line 719
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v0

    if-eqz v0, :cond_a6

    .line 720
    invoke-virtual {v1}, Landroid/text/StaticLayout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Layout$Ellipsizer;

    .line 722
    .local v0, "e":Landroid/text/Layout$Ellipsizer;
    iput-object v1, v0, Landroid/text/Layout$Ellipsizer;->mLayout:Landroid/text/Layout;

    .line 723
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    iput v3, v0, Landroid/text/Layout$Ellipsizer;->mWidth:I

    .line 724
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    iput-object v3, v0, Landroid/text/Layout$Ellipsizer;->mMethod:Landroid/text/TextUtils$TruncateAt;

    .line 727
    .end local v0    # "e":Landroid/text/Layout$Ellipsizer;
    :cond_a6
    const-class v0, Landroid/text/Layout$Directions;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/Layout$Directions;

    iput-object v0, v1, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 728
    iget v0, v1, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v0, v3

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLines:[I

    .line 729
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    iput v0, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    .line 731
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mLeftIndents:[I

    .line 732
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/StaticLayout;->mRightIndents:[I

    .line 734
    const-string v0, "Constructing StaticLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 736
    :try_start_d1
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z

    move-result v0
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_e3

    move-object/from16 v3, p1

    move/from16 v4, p2

    :try_start_d9
    invoke-virtual {v1, v3, v0, v4}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V
    :try_end_dc
    .catchall {:try_start_d9 .. :try_end_dc} :catchall_e1

    .line 738
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 739
    nop

    .line 740
    return-void

    .line 738
    :catchall_e1
    move-exception v0

    goto :goto_e8

    :catchall_e3
    move-exception v0

    move-object/from16 v3, p1

    move/from16 v4, p2

    :goto_e8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 739
    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout$Builder;ZILandroid/text/StaticLayout-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/text/StaticLayout-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/text/StaticLayout;-><init>()V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 22
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "bufstart"    # I
    .param p3, "bufend"    # I
    .param p4, "paint"    # Landroid/text/TextPaint;
    .param p5, "outerwidth"    # I
    .param p6, "align"    # Landroid/text/Layout$Alignment;
    .param p7, "spacingmult"    # F
    .param p8, "spacingadd"    # F
    .param p9, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 667
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V

    .line 669
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZLandroid/text/TextUtils$TruncateAt;I)V
    .registers 26
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 681
    sget-object v7, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    const v13, 0x7fffffff

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move/from16 v12, p11

    invoke-direct/range {v0 .. v13}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V

    .line 684
    return-void
.end method

.method public constructor greylist-max-p <init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZLandroid/text/TextUtils$TruncateAt;II)V
    .registers 16
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 698
    invoke-static {p1, p2, p3, p4, p5}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 699
    invoke-virtual {v0, p6}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 700
    invoke-virtual {v0, p7}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 701
    invoke-virtual {v0, p9, p8}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 702
    invoke-virtual {v0, p10}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 703
    invoke-virtual {v0, p11}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 704
    invoke-virtual {v0, p12}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 705
    invoke-virtual {v0, p13}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    .line 706
    if-eqz p11, :cond_24

    const/4 v1, 0x7

    goto :goto_25

    :cond_24
    const/4 v1, 0x5

    .line 698
    :goto_25
    invoke-direct {p0, v0, p10, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZI)V

    .line 707
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V
    .registers 18
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F
    .param p7, "includepad"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 654
    const/4 v2, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 656
    return-void
.end method

.method private blacklist calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V
    .registers 30
    .param p1, "lineStart"    # I
    .param p2, "lineEnd"    # I
    .param p3, "measured"    # Landroid/text/MeasuredParagraph;
    .param p4, "widthStart"    # I
    .param p5, "avail"    # F
    .param p6, "where"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "line"    # I
    .param p8, "textWidth"    # F
    .param p9, "paint"    # Landroid/text/TextPaint;
    .param p10, "forceEllipsis"    # Z

    .line 1291
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p6

    move/from16 v3, p7

    invoke-direct {v0, v3}, Landroid/text/StaticLayout;->getTotalInsets(I)F

    move-result v4

    sub-float v4, p5, v4

    .line 1292
    .end local p5    # "avail":F
    .local v4, "avail":F
    cmpg-float v5, p8, v4

    const/4 v6, 0x5

    if-gtz v5, :cond_28

    if-nez p10, :cond_28

    .line 1294
    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v6

    const/4 v6, 0x0

    aput v6, v5, v7

    .line 1295
    iget-object v5, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v7, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v7, v3

    add-int/lit8 v7, v7, 0x6

    aput v6, v5, v7

    .line 1296
    return-void

    .line 1299
    :cond_28
    invoke-static {v2}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v7, p9

    invoke-virtual {v7, v5}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 1300
    .local v5, "ellipsisWidth":F
    const/4 v8, 0x0

    .line 1301
    .local v8, "ellipsisStart":I
    const/4 v9, 0x0

    .line 1302
    .local v9, "ellipsisCount":I
    sub-int v10, p2, p1

    .line 1305
    .local v10, "len":I
    sget-object v11, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    const-string v13, "StaticLayout"

    const/4 v14, 0x1

    if-ne v2, v11, :cond_81

    .line 1306
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_74

    .line 1307
    const/4 v11, 0x0

    .line 1310
    .local v11, "sum":F
    move v13, v10

    .local v13, "i":I
    :goto_43
    if-lez v13, :cond_70

    .line 1311
    add-int/lit8 v15, v13, -0x1

    add-int v15, v15, p1

    sub-int v15, v15, p4

    invoke-virtual {v1, v15}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v15

    .line 1312
    .local v15, "w":F
    add-float v16, v15, v11

    add-float v16, v16, v5

    cmpl-float v16, v16, v4

    if-lez v16, :cond_6a

    .line 1313
    :goto_57
    if-ge v13, v10, :cond_70

    add-int v16, v13, p1

    const/16 p5, 0x0

    sub-int v12, v16, p4

    .line 1314
    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    cmpl-float v12, v12, p5

    if-nez v12, :cond_70

    .line 1315
    add-int/lit8 v13, v13, 0x1

    goto :goto_57

    .line 1320
    :cond_6a
    const/16 p5, 0x0

    add-float/2addr v11, v15

    .line 1310
    .end local v15    # "w":F
    add-int/lit8 v13, v13, -0x1

    goto :goto_43

    .line 1323
    :cond_70
    const/4 v8, 0x0

    .line 1324
    move v9, v13

    .line 1325
    .end local v11    # "sum":F
    .end local v13    # "i":I
    goto/16 :goto_118

    .line 1326
    :cond_74
    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_118

    .line 1327
    const-string v11, "Start Ellipsis only supported with one line"

    invoke-static {v13, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_118

    .line 1330
    :cond_81
    const/16 p5, 0x0

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_f3

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v2, v11, :cond_f3

    sget-object v11, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    if-ne v2, v11, :cond_90

    goto :goto_f3

    .line 1353
    :cond_90
    iget v11, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v11, v14, :cond_e6

    .line 1354
    const/4 v11, 0x0

    .local v11, "lsum":F
    const/4 v12, 0x0

    .line 1355
    .local v12, "rsum":F
    const/4 v13, 0x0

    .local v13, "left":I
    move v15, v10

    .line 1357
    .local v15, "right":I
    sub-float v16, v4, v5

    const/high16 v17, 0x40000000    # 2.0f

    div-float v16, v16, v17

    .line 1358
    .local v16, "ravail":F
    nop

    :goto_9f
    if-lez v15, :cond_c9

    .line 1359
    add-int/lit8 v17, v15, -0x1

    add-int v17, v17, p1

    sub-int v14, v17, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    .line 1361
    .local v14, "w":F
    add-float v17, v14, v12

    cmpl-float v17, v17, v16

    if-lez v17, :cond_c3

    .line 1362
    :goto_b1
    if-ge v15, v10, :cond_c9

    add-int v17, v15, p1

    sub-int v6, v17, p4

    .line 1363
    invoke-virtual {v1, v6}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v6

    cmpl-float v6, v6, p5

    if-nez v6, :cond_c9

    .line 1365
    add-int/lit8 v15, v15, 0x1

    const/4 v6, 0x5

    goto :goto_b1

    .line 1369
    :cond_c3
    add-float/2addr v12, v14

    .line 1358
    .end local v14    # "w":F
    add-int/lit8 v15, v15, -0x1

    const/4 v6, 0x5

    const/4 v14, 0x1

    goto :goto_9f

    .line 1372
    :cond_c9
    sub-float v6, v4, v5

    sub-float/2addr v6, v12

    .line 1373
    .local v6, "lavail":F
    const/4 v13, 0x0

    :goto_cd
    if-ge v13, v15, :cond_e2

    .line 1374
    add-int v14, v13, p1

    sub-int v14, v14, p4

    invoke-virtual {v1, v14}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v14

    .line 1376
    .restart local v14    # "w":F
    add-float v17, v14, v11

    cmpl-float v17, v17, v6

    if-lez v17, :cond_de

    .line 1377
    goto :goto_e2

    .line 1380
    :cond_de
    add-float/2addr v11, v14

    .line 1373
    .end local v14    # "w":F
    add-int/lit8 v13, v13, 0x1

    goto :goto_cd

    .line 1383
    :cond_e2
    :goto_e2
    move v8, v13

    .line 1384
    sub-int v9, v15, v13

    .line 1385
    .end local v6    # "lavail":F
    .end local v11    # "lsum":F
    .end local v12    # "rsum":F
    .end local v13    # "left":I
    .end local v15    # "right":I
    .end local v16    # "ravail":F
    goto :goto_118

    .line 1386
    :cond_e6
    const/4 v6, 0x5

    invoke-static {v13, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_118

    .line 1387
    const-string v6, "Middle Ellipsis only supported with one line"

    invoke-static {v13, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_118

    .line 1332
    :cond_f3
    :goto_f3
    const/4 v6, 0x0

    .line 1335
    .local v6, "sum":F
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_f5
    if-ge v11, v10, :cond_10b

    .line 1336
    add-int v12, v11, p1

    sub-int v12, v12, p4

    invoke-virtual {v1, v12}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v12

    .line 1338
    .local v12, "w":F
    add-float v13, v12, v6

    add-float/2addr v13, v5

    cmpl-float v13, v13, v4

    if-lez v13, :cond_107

    .line 1339
    goto :goto_10b

    .line 1342
    :cond_107
    add-float/2addr v6, v12

    .line 1335
    .end local v12    # "w":F
    add-int/lit8 v11, v11, 0x1

    goto :goto_f5

    .line 1345
    :cond_10b
    :goto_10b
    move v8, v11

    .line 1346
    sub-int v9, v10, v11

    .line 1347
    if-eqz p10, :cond_117

    if-nez v9, :cond_117

    if-lez v10, :cond_117

    .line 1348
    add-int/lit8 v8, v10, -0x1

    .line 1349
    const/4 v9, 0x1

    .line 1351
    .end local v6    # "sum":F
    .end local v11    # "i":I
    :cond_117
    nop

    .line 1391
    :cond_118
    :goto_118
    const/4 v6, 0x1

    iput-boolean v6, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 1392
    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v11, v3

    const/16 v18, 0x5

    add-int/lit8 v11, v11, 0x5

    aput v8, v6, v11

    .line 1393
    iget-object v6, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v11, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v11, v3

    add-int/lit8 v11, v11, 0x6

    aput v9, v6, v11

    .line 1394
    return-void
.end method

.method private static blacklist getBaseHyphenationFrequency(I)I
    .registers 2
    .param p0, "frequency"    # I

    .line 743
    packed-switch p0, :pswitch_data_a

    .line 752
    const/4 v0, 0x0

    return v0

    .line 746
    :pswitch_5
    const/4 v0, 0x2

    return v0

    .line 749
    :pswitch_7
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private greylist-max-o getTotalInsets(I)F
    .registers 5
    .param p1, "line"    # I

    .line 1397
    const/4 v0, 0x0

    .line 1398
    .local v0, "totalIndent":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_12

    .line 1399
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1401
    :cond_12
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v1, :cond_24

    .line 1402
    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 1404
    :cond_24
    int-to-float v1, v0

    return v1
.end method

.method private blacklist out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I
    .registers 57
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
    .param p14, "hasTab"    # Z
    .param p15, "hyphenEdit"    # I
    .param p16, "needMultiply"    # Z
    .param p17, "measured"    # Landroid/text/MeasuredParagraph;
    .param p18, "bufEnd"    # I
    .param p19, "includePad"    # Z
    .param p20, "trackPad"    # Z
    .param p21, "addLastLineLineSpacing"    # Z
    .param p22, "chs"    # [C
    .param p23, "widthStart"    # I
    .param p24, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p25, "ellipsisWidth"    # F
    .param p26, "textWidth"    # F
    .param p27, "paint"    # Landroid/text/TextPaint;
    .param p28, "moreChars"    # Z

    .line 1131
    move-object/from16 v0, p0

    move-object/from16 v11, p11

    move-object/from16 v7, p13

    move/from16 v12, p18

    move-object/from16 v9, p24

    iget v10, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1132
    .local v10, "j":I
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int v13, v10, v1

    .line 1133
    .local v13, "off":I
    iget v1, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int/2addr v1, v13

    const/4 v14, 0x1

    add-int/lit8 v15, v1, 0x1

    .line 1134
    .local v15, "want":I
    iget-object v1, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 1135
    .local v1, "lines":[I
    invoke-virtual/range {p17 .. p17}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v16

    .line 1137
    .local v16, "dir":I
    array-length v2, v1

    const/4 v3, 0x0

    if-lt v15, v2, :cond_32

    .line 1138
    invoke-static {v15}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v2

    .line 1139
    .local v2, "grow":[I
    array-length v4, v1

    invoke-static {v1, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    iput-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    .line 1141
    move-object v1, v2

    move-object/from16 v17, v1

    goto :goto_34

    .line 1137
    .end local v2    # "grow":[I
    :cond_32
    move-object/from16 v17, v1

    .line 1144
    .end local v1    # "lines":[I
    .local v17, "lines":[I
    :goto_34
    iget-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v1, v1

    if-lt v10, v1, :cond_4f

    .line 1145
    const-class v1, Landroid/text/Layout$Directions;

    .line 1146
    invoke-static {v10}, Lcom/android/internal/util/GrowingArrayUtils;->growSize(I)I

    move-result v2

    .line 1145
    invoke-static {v1, v2}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedArray(Ljava/lang/Class;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/Layout$Directions;

    .line 1147
    .local v1, "grow":[Landroid/text/Layout$Directions;
    iget-object v2, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    iget-object v4, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    array-length v4, v4

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    iput-object v1, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    .line 1151
    .end local v1    # "grow":[Landroid/text/Layout$Directions;
    :cond_4f
    if-eqz v11, :cond_b9

    .line 1152
    move/from16 v1, p4

    iput v1, v7, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1153
    move/from16 v2, p5

    iput v2, v7, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1154
    move/from16 v4, p6

    iput v4, v7, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1155
    move/from16 v5, p7

    iput v5, v7, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1157
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_62
    array-length v8, v11

    if-ge v6, v8, :cond_a5

    .line 1158
    aget-object v8, v11, v6

    instance-of v8, v8, Landroid/text/style/LineHeightSpan$WithDensity;

    if-eqz v8, :cond_84

    .line 1159
    aget-object v8, v11, v6

    check-cast v8, Landroid/text/style/LineHeightSpan$WithDensity;

    aget v5, p12, v6

    .line 1160
    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v19, v6

    move-object v1, v8

    move/from16 v6, p8

    move-object/from16 v8, p27

    .end local v6    # "i":I
    .local v19, "i":I
    invoke-interface/range {v1 .. v8}, Landroid/text/style/LineHeightSpan$WithDensity;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;Landroid/text/TextPaint;)V

    move-object/from16 v1, p13

    goto :goto_98

    .line 1162
    .end local v19    # "i":I
    .restart local v6    # "i":I
    :cond_84
    move/from16 v19, v6

    .end local v6    # "i":I
    .restart local v19    # "i":I
    aget-object v1, v11, v19

    aget v5, p12, v19

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v6, p8

    move-object/from16 v7, p13

    invoke-interface/range {v1 .. v7}, Landroid/text/style/LineHeightSpan;->chooseHeight(Ljava/lang/CharSequence;IIIILandroid/graphics/Paint$FontMetricsInt;)V

    move-object v1, v7

    .line 1157
    :goto_98
    add-int/lit8 v6, v19, 0x1

    move/from16 v2, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object v7, v1

    const/4 v3, 0x0

    move/from16 v1, p4

    .end local v19    # "i":I
    .restart local v6    # "i":I
    goto :goto_62

    :cond_a5
    move/from16 v19, v6

    move-object v1, v7

    .line 1166
    .end local v6    # "i":I
    iget v2, v1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1167
    .end local p4    # "above":I
    .local v2, "above":I
    iget v3, v1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1168
    .end local p5    # "below":I
    .local v3, "below":I
    iget v4, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1169
    .end local p6    # "top":I
    .local v4, "top":I
    iget v5, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v22, v5

    .end local p7    # "bottom":I
    .local v5, "bottom":I
    goto :goto_c2

    .line 1151
    .end local v2    # "above":I
    .end local v3    # "below":I
    .end local v4    # "top":I
    .end local v5    # "bottom":I
    .restart local p4    # "above":I
    .restart local p5    # "below":I
    .restart local p6    # "top":I
    .restart local p7    # "bottom":I
    :cond_b9
    move-object v1, v7

    move/from16 v19, p4

    move/from16 v20, p5

    move/from16 v21, p6

    move/from16 v22, p7

    .line 1172
    .end local p4    # "above":I
    .end local p5    # "below":I
    .end local p6    # "top":I
    .end local p7    # "bottom":I
    .local v19, "above":I
    .local v20, "below":I
    .local v21, "top":I
    .local v22, "bottom":I
    :goto_c2
    if-nez v10, :cond_c6

    move v3, v14

    goto :goto_c7

    :cond_c6
    const/4 v3, 0x0

    :goto_c7
    move/from16 v23, v3

    .line 1173
    .local v23, "firstLine":Z
    add-int/lit8 v2, v10, 0x1

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_d1

    move v3, v14

    goto :goto_d2

    :cond_d1
    const/4 v3, 0x0

    :goto_d2
    move/from16 v24, v3

    .line 1175
    .local v24, "currentLineIsTheLastVisibleOne":Z
    if-eqz v9, :cond_137

    .line 1178
    if-eqz p28, :cond_e1

    iget v2, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/2addr v2, v14

    iget v3, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v3, :cond_e1

    move v3, v14

    goto :goto_e2

    :cond_e1
    const/4 v3, 0x0

    .line 1180
    .local v3, "forceEllipsis":Z
    :goto_e2
    iget v2, v0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ne v2, v14, :cond_e8

    if-nez p28, :cond_ec

    :cond_e8
    if-eqz v23, :cond_f0

    if-nez p28, :cond_f0

    :cond_ec
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v2, :cond_fa

    :cond_f0
    if-nez v23, :cond_fc

    if-nez v24, :cond_f6

    if-nez p28, :cond_fc

    :cond_f6
    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v9, v2, :cond_fc

    :cond_fa
    move v2, v14

    goto :goto_fd

    :cond_fc
    const/4 v2, 0x0

    :goto_fd
    move/from16 v25, v2

    .line 1185
    .local v25, "doEllipsis":Z
    if-eqz v25, :cond_11a

    .line 1186
    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, p23

    move/from16 v5, p25

    move/from16 v8, p26

    move-object v6, v9

    move v7, v10

    move-object/from16 v9, p27

    move v10, v3

    move-object/from16 v3, p17

    .end local v3    # "forceEllipsis":Z
    .local v7, "j":I
    .local v10, "forceEllipsis":Z
    invoke-direct/range {v0 .. v10}, Landroid/text/StaticLayout;->calculateEllipsis(IILandroid/text/MeasuredParagraph;IFLandroid/text/TextUtils$TruncateAt;IFLandroid/text/TextPaint;Z)V

    move v3, v1

    move v1, v4

    move v4, v2

    const/4 v8, 0x0

    goto :goto_140

    .line 1190
    .end local v7    # "j":I
    .restart local v3    # "forceEllipsis":Z
    .local v10, "j":I
    :cond_11a
    move/from16 v4, p3

    move/from16 v1, p23

    move-object v6, v9

    move v7, v10

    move v10, v3

    move/from16 v3, p2

    .end local v3    # "forceEllipsis":Z
    .restart local v7    # "j":I
    .local v10, "forceEllipsis":Z
    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v5, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x5

    const/4 v8, 0x0

    aput v8, v2, v5

    .line 1191
    iget-object v2, v0, Landroid/text/StaticLayout;->mLines:[I

    iget v5, v0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v7

    add-int/lit8 v5, v5, 0x6

    aput v8, v2, v5

    goto :goto_140

    .line 1175
    .end local v7    # "j":I
    .end local v25    # "doEllipsis":Z
    .local v10, "j":I
    :cond_137
    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v1, p23

    move-object v6, v9

    move v7, v10

    const/4 v8, 0x0

    .line 1196
    .end local v10    # "j":I
    .restart local v7    # "j":I
    :goto_140
    iget-boolean v2, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v2, :cond_148

    .line 1197
    const/4 v2, 0x1

    move-object/from16 v5, p1

    .local v2, "lastLine":Z
    goto :goto_16d

    .line 1199
    .end local v2    # "lastLine":Z
    :cond_148
    if-eq v1, v12, :cond_15a

    if-lez v12, :cond_15a

    add-int/lit8 v2, v12, -0x1

    .line 1200
    move-object/from16 v5, p1

    invoke-interface {v5, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v9, 0xa

    if-ne v2, v9, :cond_15c

    move v2, v14

    goto :goto_15d

    .line 1199
    :cond_15a
    move-object/from16 v5, p1

    .line 1200
    :cond_15c
    move v2, v8

    .line 1201
    .local v2, "lastCharIsNewLine":Z
    :goto_15d
    if-ne v4, v12, :cond_164

    if-nez v2, :cond_164

    .line 1202
    const/4 v9, 0x1

    move v2, v9

    .local v9, "lastLine":Z
    goto :goto_16d

    .line 1203
    .end local v9    # "lastLine":Z
    :cond_164
    if-ne v3, v12, :cond_16b

    if-eqz v2, :cond_16b

    .line 1204
    const/4 v9, 0x1

    move v2, v9

    .restart local v9    # "lastLine":Z
    goto :goto_16d

    .line 1206
    .end local v9    # "lastLine":Z
    :cond_16b
    const/4 v9, 0x0

    move v2, v9

    .line 1210
    .local v2, "lastLine":Z
    :goto_16d
    if-eqz v23, :cond_179

    .line 1211
    if-eqz p20, :cond_175

    .line 1212
    sub-int v9, v21, v19

    iput v9, v0, Landroid/text/StaticLayout;->mTopPadding:I

    .line 1215
    :cond_175
    if-eqz p19, :cond_179

    .line 1216
    move/from16 v19, v21

    .line 1222
    :cond_179
    if-eqz v2, :cond_185

    .line 1223
    if-eqz p20, :cond_181

    .line 1224
    sub-int v9, v22, v20

    iput v9, v0, Landroid/text/StaticLayout;->mBottomPadding:I

    .line 1227
    :cond_181
    if-eqz p19, :cond_185

    .line 1228
    move/from16 v20, v22

    .line 1232
    :cond_185
    if-eqz p16, :cond_1b6

    if-nez p21, :cond_191

    if-nez v2, :cond_18c

    goto :goto_191

    :cond_18c
    move/from16 v18, v14

    move/from16 v27, v15

    goto :goto_1ba

    .line 1233
    :cond_191
    :goto_191
    sub-int v9, v20, v19

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v10, p9, v10

    mul-float/2addr v9, v10

    add-float v9, v9, p10

    float-to-double v9, v9

    .line 1234
    .local v9, "ex":D
    const-wide/16 v25, 0x0

    cmpl-double v18, v9, v25

    const-wide/high16 v25, 0x3fe0000000000000L    # 0.5

    if-ltz v18, :cond_1ac

    .line 1235
    move/from16 v18, v14

    move/from16 v27, v15

    .end local v15    # "want":I
    .local v27, "want":I
    add-double v14, v9, v25

    double-to-int v14, v14

    .local v14, "extra":I
    goto :goto_1b5

    .line 1237
    .end local v14    # "extra":I
    .end local v27    # "want":I
    .restart local v15    # "want":I
    :cond_1ac
    move/from16 v18, v14

    move/from16 v27, v15

    .end local v15    # "want":I
    .restart local v27    # "want":I
    neg-double v14, v9

    add-double v14, v14, v25

    double-to-int v14, v14

    neg-int v14, v14

    .line 1239
    .end local v9    # "ex":D
    .restart local v14    # "extra":I
    :goto_1b5
    goto :goto_1bb

    .line 1232
    .end local v14    # "extra":I
    .end local v27    # "want":I
    .restart local v15    # "want":I
    :cond_1b6
    move/from16 v18, v14

    move/from16 v27, v15

    .line 1240
    .end local v15    # "want":I
    .restart local v27    # "want":I
    :goto_1ba
    const/4 v14, 0x0

    .line 1243
    .restart local v14    # "extra":I
    :goto_1bb
    add-int/lit8 v9, v13, 0x0

    aput v3, v17, v9

    .line 1244
    add-int/lit8 v9, v13, 0x1

    aput p8, v17, v9

    .line 1245
    add-int/lit8 v9, v13, 0x2

    add-int v10, v20, v14

    aput v10, v17, v9

    .line 1246
    add-int/lit8 v9, v13, 0x3

    aput v14, v17, v9

    .line 1250
    iget-boolean v9, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-nez v9, :cond_1e0

    if-eqz v24, :cond_1e0

    .line 1252
    if-eqz p19, :cond_1d8

    move/from16 v9, v22

    goto :goto_1da

    :cond_1d8
    move/from16 v9, v20

    .line 1254
    .local v9, "maxLineBelow":I
    :goto_1da
    sub-int v10, v9, v19

    add-int v10, p8, v10

    iput v10, v0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 1257
    .end local v9    # "maxLineBelow":I
    :cond_1e0
    sub-int v9, v20, v19

    add-int/2addr v9, v14

    add-int v9, p8, v9

    .line 1258
    .end local p8    # "v":I
    .local v9, "v":I
    iget v10, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int/2addr v10, v13

    add-int/2addr v10, v8

    aput v4, v17, v10

    .line 1259
    iget v10, v0, Landroid/text/StaticLayout;->mColumns:I

    add-int/2addr v10, v13

    add-int/lit8 v10, v10, 0x1

    aput v9, v17, v10

    .line 1263
    add-int/lit8 v10, v13, 0x0

    aget v15, v17, v10

    if-eqz p14, :cond_1fb

    const/high16 v25, 0x20000000

    goto :goto_1fd

    :cond_1fb
    move/from16 v25, v8

    :goto_1fd
    or-int v15, v15, v25

    aput v15, v17, v10

    .line 1264
    iget-boolean v10, v0, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v10, :cond_230

    .line 1265
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v10, :cond_216

    .line 1266
    add-int/lit8 v10, v13, 0x4

    .line 1267
    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v15

    .line 1266
    invoke-static {v8, v15}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v8

    aput v8, v17, v10

    goto :goto_234

    .line 1268
    :cond_216
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v6, v10, :cond_227

    .line 1269
    add-int/lit8 v10, v13, 0x4

    invoke-static/range {p15 .. p15}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v15

    invoke-static {v15, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v8

    aput v8, v17, v10

    goto :goto_234

    .line 1272
    :cond_227
    add-int/lit8 v10, v13, 0x4

    invoke-static {v8, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v8

    aput v8, v17, v10

    goto :goto_234

    .line 1276
    :cond_230
    add-int/lit8 v8, v13, 0x4

    aput p15, v17, v8

    .line 1279
    :goto_234
    add-int/lit8 v8, v13, 0x0

    aget v10, v17, v8

    shl-int/lit8 v15, v16, 0x1e

    or-int/2addr v10, v15

    aput v10, v17, v8

    .line 1280
    iget-object v8, v0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    sub-int v10, v3, v1

    sub-int v15, v4, v1

    move-object/from16 v1, p17

    invoke-virtual {v1, v10, v15}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v10

    aput-object v10, v8, v7

    .line 1282
    iget v8, v0, Landroid/text/StaticLayout;->mLineCount:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1283
    return v9
.end method

.method static blacklist packHyphenEdit(II)I
    .registers 3
    .param p0, "start"    # I
    .param p1, "end"    # I

    .line 1491
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method static blacklist unpackEndHyphenEdit(I)I
    .registers 2
    .param p0, "packedHyphenEdit"    # I

    .line 1499
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static blacklist unpackStartHyphenEdit(I)I
    .registers 2
    .param p0, "packedHyphenEdit"    # I

    .line 1495
    and-int/lit8 v0, p0, 0x18

    shr-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 2

    .line 1580
    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_a

    .line 1581
    invoke-super {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v0

    iput-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 1583
    :cond_a
    iget-object v0, p0, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method greylist-max-o generate(Landroid/text/StaticLayout$Builder;ZZ)V
    .registers 75
    .param p1, "b"    # Landroid/text/StaticLayout$Builder;
    .param p2, "includepad"    # Z
    .param p3, "trackpad"    # Z

    .line 757
    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 758
    .local v2, "source":Ljava/lang/CharSequence;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I

    move-result v4

    .line 759
    .local v4, "bufStart":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I

    move-result v5

    .line 760
    .local v5, "bufEnd":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;

    move-result-object v28

    .line 761
    .local v28, "paint":Landroid/text/TextPaint;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v0

    .line 762
    .local v0, "outerWidth":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;

    move-result-object v6

    .line 763
    .local v6, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F

    move-result v12

    .line 764
    .local v12, "spacingmult":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F

    move-result v13

    .line 765
    .local v13, "spacingadd":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I

    move-result v3

    int-to-float v14, v3

    .line 766
    .local v14, "ellipsizedWidth":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;

    move-result-object v15

    .line 767
    .local v15, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v22

    .line 769
    .local v22, "addLastLineSpacing":Z
    const/16 v16, 0x0

    .line 770
    .local v16, "lineBreakCapacity":I
    const/16 v17, 0x0

    .line 771
    .local v17, "breaks":[I
    const/16 v18, 0x0

    .line 772
    .local v18, "lineWidths":[F
    const/16 v19, 0x0

    .line 773
    .local v19, "ascents":[F
    const/16 v20, 0x0

    .line 774
    .local v20, "descents":[F
    const/16 v21, 0x0

    .line 775
    .local v21, "hasTabs":[Z
    const/16 v23, 0x0

    .line 777
    .local v23, "hyphenEdits":[I
    const/4 v11, 0x0

    iput v11, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 778
    iput-boolean v11, v1, Landroid/text/StaticLayout;->mEllipsized:Z

    .line 779
    iget v3, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v7, 0x1

    if-ge v3, v7, :cond_49

    move v3, v11

    goto :goto_4a

    :cond_49
    const/4 v3, -0x1

    :goto_4a
    iput v3, v1, Landroid/text/StaticLayout;->mMaxLineHeight:I

    .line 780
    const/4 v3, 0x0

    iput-object v3, v1, Landroid/text/StaticLayout;->mDrawingBounds:Landroid/graphics/RectF;

    .line 781
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z

    move-result v30

    .line 783
    .local v30, "isFallbackLineSpacing":Z
    const/16 v24, 0x0

    .line 784
    .local v24, "v":I
    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v8, v12, v8

    if-nez v8, :cond_63

    const/4 v8, 0x0

    cmpl-float v8, v13, v8

    if-eqz v8, :cond_61

    goto :goto_63

    :cond_61
    move v8, v11

    goto :goto_64

    :cond_63
    :goto_63
    move v8, v7

    :goto_64
    move/from16 v25, v8

    .line 786
    .local v25, "needMultiply":Z
    move/from16 v26, v14

    .end local v14    # "ellipsizedWidth":F
    .local v26, "ellipsizedWidth":F
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v14

    .line 787
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    const/16 v27, 0x0

    .line 790
    .local v27, "chooseHtv":[I
    iget-object v8, v1, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v8, :cond_7c

    iget-object v8, v1, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v8, :cond_77

    goto :goto_7c

    .line 802
    :cond_77
    const/4 v8, 0x0

    move/from16 v33, v0

    move-object v0, v8

    .local v8, "indents":[I
    goto :goto_ba

    .line 791
    .end local v8    # "indents":[I
    :cond_7c
    :goto_7c
    iget-object v8, v1, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v8, :cond_82

    move v8, v11

    goto :goto_85

    :cond_82
    iget-object v8, v1, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v8, v8

    .line 792
    .local v8, "leftLen":I
    :goto_85
    iget-object v9, v1, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v9, :cond_8b

    move v9, v11

    goto :goto_8e

    :cond_8b
    iget-object v9, v1, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v9, v9

    .line 793
    .local v9, "rightLen":I
    :goto_8e
    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 794
    .local v10, "indentsLen":I
    new-array v3, v10, [I

    .line 795
    .local v3, "indents":[I
    const/16 v31, 0x0

    move/from16 v7, v31

    .local v7, "i":I
    :goto_98
    if-ge v7, v8, :cond_a4

    .line 796
    iget-object v11, v1, Landroid/text/StaticLayout;->mLeftIndents:[I

    aget v11, v11, v7

    aput v11, v3, v7

    .line 795
    add-int/lit8 v7, v7, 0x1

    const/4 v11, 0x0

    goto :goto_98

    .line 798
    .end local v7    # "i":I
    :cond_a4
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_a5
    if-ge v7, v9, :cond_b7

    .line 799
    aget v11, v3, v7

    move/from16 v33, v0

    .end local v0    # "outerWidth":I
    .local v33, "outerWidth":I
    iget-object v0, v1, Landroid/text/StaticLayout;->mRightIndents:[I

    aget v0, v0, v7

    add-int/2addr v11, v0

    aput v11, v3, v7

    .line 798
    add-int/lit8 v7, v7, 0x1

    move/from16 v0, v33

    goto :goto_a5

    .end local v33    # "outerWidth":I
    .restart local v0    # "outerWidth":I
    :cond_b7
    move/from16 v33, v0

    .line 801
    .end local v0    # "outerWidth":I
    .end local v7    # "i":I
    .end local v8    # "leftLen":I
    .end local v9    # "rightLen":I
    .end local v10    # "indentsLen":I
    .restart local v33    # "outerWidth":I
    move-object v0, v3

    .line 809
    .end local v3    # "indents":[I
    .local v0, "indents":[I
    :goto_ba
    invoke-static {}, Lcom/android/text/flags/Flags;->fixLineHeightForLocale()Z

    move-result v3

    if-eqz v3, :cond_fc

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    if-eqz v3, :cond_fc

    .line 810
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    float-to-double v7, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    double-to-int v3, v7

    .line 811
    .local v3, "defaultTop":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 812
    .local v7, "defaultAscent":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Paint$FontMetrics;->descent:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 813
    .local v8, "defaultDescent":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;

    move-result-object v9

    iget v9, v9, Landroid/graphics/Paint$FontMetrics;->bottom:F

    float-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v9

    double-to-int v9, v9

    .line 817
    .local v9, "defaultBottom":I
    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 818
    invoke-static {v9, v8}, Ljava/lang/Math;->max(II)I

    move-result v9

    move v11, v3

    goto :goto_101

    .line 820
    .end local v3    # "defaultTop":I
    .end local v7    # "defaultAscent":I
    .end local v8    # "defaultDescent":I
    .end local v9    # "defaultBottom":I
    :cond_fc
    const/4 v3, 0x0

    .line 821
    .restart local v3    # "defaultTop":I
    const/4 v7, 0x0

    .line 822
    .restart local v7    # "defaultAscent":I
    const/4 v8, 0x0

    .line 823
    .restart local v8    # "defaultDescent":I
    const/4 v9, 0x0

    move v11, v3

    .line 826
    .end local v3    # "defaultTop":I
    .restart local v9    # "defaultBottom":I
    .local v11, "defaultTop":I
    :goto_101
    new-instance v3, Landroid/graphics/text/LineBreaker$Builder;

    invoke-direct {v3}, Landroid/graphics/text/LineBreaker$Builder;-><init>()V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    .line 827
    invoke-virtual {v3, v10}, Landroid/graphics/text/LineBreaker$Builder;->setBreakStrategy(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    .line 828
    invoke-static {v10}, Landroid/text/StaticLayout;->getBaseHyphenationFrequency(I)I

    move-result v10

    invoke-virtual {v3, v10}, Landroid/graphics/text/LineBreaker$Builder;->setHyphenationFrequency(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    .line 830
    invoke-virtual {v3, v10}, Landroid/graphics/text/LineBreaker$Builder;->setJustificationMode(I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    .line 831
    invoke-virtual {v3, v0}, Landroid/graphics/text/LineBreaker$Builder;->setIndents([I)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z

    move-result v10

    .line 832
    invoke-virtual {v3, v10}, Landroid/graphics/text/LineBreaker$Builder;->setUseBoundsForWidth(Z)Landroid/graphics/text/LineBreaker$Builder;

    move-result-object v3

    .line 833
    invoke-virtual {v3}, Landroid/graphics/text/LineBreaker$Builder;->build()Landroid/graphics/text/LineBreaker;

    move-result-object v3

    .line 835
    .local v3, "lineBreaker":Landroid/graphics/text/LineBreaker;
    new-instance v10, Landroid/graphics/text/LineBreaker$ParagraphConstraints;

    invoke-direct {v10}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;-><init>()V

    .line 838
    .local v10, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    const/16 v34, 0x0

    .line 839
    .local v34, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    move-object/from16 v35, v0

    .end local v0    # "indents":[I
    .local v35, "indents":[I
    instance-of v0, v2, Landroid/text/Spanned;

    if-eqz v0, :cond_143

    move-object v0, v2

    check-cast v0, Landroid/text/Spanned;

    goto :goto_144

    :cond_143
    const/4 v0, 0x0

    .line 840
    .local v0, "spanned":Landroid/text/Spanned;
    :goto_144
    move-object/from16 v36, v3

    .end local v3    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v36, "lineBreaker":Landroid/graphics/text/LineBreaker;
    instance-of v3, v2, Landroid/text/PrecomputedText;

    if-eqz v3, :cond_1aa

    .line 841
    move-object v3, v2

    check-cast v3, Landroid/text/PrecomputedText;

    .line 842
    .local v3, "precomputed":Landroid/text/PrecomputedText;
    move/from16 v37, v8

    .end local v8    # "defaultDescent":I
    .local v37, "defaultDescent":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v8

    move/from16 v38, v9

    .end local v9    # "defaultBottom":I
    .local v38, "defaultBottom":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v9

    move-object/from16 v39, v10

    .end local v10    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v39, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v10

    .line 843
    move/from16 v32, v7

    move/from16 v40, v12

    move-object/from16 v29, v14

    move-object/from16 v7, v28

    move-object/from16 v12, v36

    const/4 v14, 0x1

    move/from16 v28, v13

    move-object/from16 v13, v39

    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v36    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v39    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v7, "paint":Landroid/text/TextPaint;
    .local v12, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v28, "spacingadd":F
    .local v29, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v32, "defaultAscent":I
    .local v40, "spacingmult":F
    invoke-virtual/range {v3 .. v10}, Landroid/text/PrecomputedText;->checkResultUsable(IILandroid/text/TextDirectionHeuristic;Landroid/text/TextPaint;IILandroid/graphics/text/LineBreakConfig;)I

    move-result v8

    .line 845
    .local v8, "checkResult":I
    packed-switch v8, :pswitch_data_7d6

    goto :goto_1bc

    .line 861
    :pswitch_176
    invoke-virtual {v3}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v34

    goto :goto_1bc

    .line 849
    :pswitch_17b
    new-instance v9, Landroid/text/PrecomputedText$Params$Builder;

    invoke-direct {v9, v7}, Landroid/text/PrecomputedText$Params$Builder;-><init>(Landroid/text/TextPaint;)V

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    .line 851
    invoke-virtual {v9, v10}, Landroid/text/PrecomputedText$Params$Builder;->setBreakStrategy(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    .line 852
    invoke-virtual {v9, v10}, Landroid/text/PrecomputedText$Params$Builder;->setHyphenationFrequency(I)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v9

    .line 853
    invoke-virtual {v9, v6}, Landroid/text/PrecomputedText$Params$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v9

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v10

    .line 854
    invoke-virtual {v9, v10}, Landroid/text/PrecomputedText$Params$Builder;->setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/PrecomputedText$Params$Builder;

    move-result-object v9

    .line 855
    invoke-virtual {v9}, Landroid/text/PrecomputedText$Params$Builder;->build()Landroid/text/PrecomputedText$Params;

    move-result-object v9

    .line 856
    .local v9, "newParams":Landroid/text/PrecomputedText$Params;
    invoke-static {v3, v9}, Landroid/text/PrecomputedText;->create(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;)Landroid/text/PrecomputedText;

    move-result-object v3

    .line 857
    invoke-virtual {v3}, Landroid/text/PrecomputedText;->getParagraphInfo()[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v34

    .line 858
    goto :goto_1bc

    .line 847
    .end local v9    # "newParams":Landroid/text/PrecomputedText$Params;
    :pswitch_1a9
    goto :goto_1bc

    .line 840
    .end local v3    # "precomputed":Landroid/text/PrecomputedText;
    .end local v29    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .end local v38    # "defaultBottom":I
    .end local v40    # "spacingmult":F
    .local v7, "defaultAscent":I
    .local v8, "defaultDescent":I
    .local v9, "defaultBottom":I
    .restart local v10    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v12, "spacingmult":F
    .local v13, "spacingadd":F
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v28, "paint":Landroid/text/TextPaint;
    .restart local v36    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    :cond_1aa
    move/from16 v32, v7

    move/from16 v37, v8

    move/from16 v38, v9

    move/from16 v40, v12

    move-object/from16 v29, v14

    move-object/from16 v7, v28

    move-object/from16 v12, v36

    const/4 v14, 0x1

    move/from16 v28, v13

    move-object v13, v10

    .line 866
    .end local v8    # "defaultDescent":I
    .end local v9    # "defaultBottom":I
    .end local v10    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v36    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v7, "paint":Landroid/text/TextPaint;
    .local v12, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v28, "spacingadd":F
    .restart local v29    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v32    # "defaultAscent":I
    .restart local v37    # "defaultDescent":I
    .restart local v38    # "defaultBottom":I
    .restart local v40    # "spacingmult":F
    :goto_1bc
    if-nez v34, :cond_1ea

    .line 867
    new-instance v3, Landroid/text/PrecomputedText$Params;

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;

    move-result-object v8

    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I

    move-result v10

    move v9, v11

    .end local v11    # "defaultTop":I
    .local v9, "defaultTop":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I

    move-result v11

    move-object/from16 v31, v6

    move-object v6, v3

    move v3, v9

    move-object/from16 v9, v31

    const/16 v31, 0x0

    .end local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v3, "defaultTop":I
    .local v9, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-direct/range {v6 .. v11}, Landroid/text/PrecomputedText$Params;-><init>(Landroid/text/TextPaint;Landroid/graphics/text/LineBreakConfig;Landroid/text/TextDirectionHeuristic;II)V

    move-object v8, v7

    .line 869
    .end local v7    # "paint":Landroid/text/TextPaint;
    .local v6, "param":Landroid/text/PrecomputedText$Params;
    .local v8, "paint":Landroid/text/TextPaint;
    move v7, v3

    move-object v3, v6

    .end local v6    # "param":Landroid/text/PrecomputedText$Params;
    .local v3, "param":Landroid/text/PrecomputedText$Params;
    .local v7, "defaultTop":I
    const/4 v6, 0x0

    move v10, v7

    .end local v7    # "defaultTop":I
    .local v10, "defaultTop":I
    invoke-static/range {p1 .. p1}, Landroid/text/StaticLayout$Builder;->-$$Nest$fgetmCalculateBounds(Landroid/text/StaticLayout$Builder;)Z

    move-result v7

    move/from16 v11, v31

    invoke-static/range {v2 .. v7}, Landroid/text/PrecomputedText;->createMeasuredParagraphs(Ljava/lang/CharSequence;Landroid/text/PrecomputedText$Params;IIZZ)[Landroid/text/PrecomputedText$ParagraphInfo;

    move-result-object v34

    move-object/from16 v3, v34

    goto :goto_1f0

    .line 866
    .end local v3    # "param":Landroid/text/PrecomputedText$Params;
    .end local v8    # "paint":Landroid/text/TextPaint;
    .end local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v10    # "defaultTop":I
    .local v6, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v7, "paint":Landroid/text/TextPaint;
    .restart local v11    # "defaultTop":I
    :cond_1ea
    move-object v9, v6

    move-object v8, v7

    move v10, v11

    const/4 v11, 0x0

    .end local v6    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v7    # "paint":Landroid/text/TextPaint;
    .end local v11    # "defaultTop":I
    .restart local v8    # "paint":Landroid/text/TextPaint;
    .restart local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v10    # "defaultTop":I
    move-object/from16 v3, v34

    .line 873
    .end local v34    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v3, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :goto_1f0
    const/4 v6, 0x0

    move/from16 v7, v16

    move-object/from16 v41, v27

    .end local v16    # "lineBreakCapacity":I
    .end local v27    # "chooseHtv":[I
    .local v6, "paraIndex":I
    .local v7, "lineBreakCapacity":I
    .local v41, "chooseHtv":[I
    :goto_1f5
    array-length v11, v3

    if-ge v6, v11, :cond_70c

    .line 874
    if-nez v6, :cond_1fc

    .line 875
    move v11, v4

    goto :goto_202

    :cond_1fc
    add-int/lit8 v11, v6, -0x1

    aget-object v11, v3, v11

    iget v11, v11, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 876
    .local v11, "paraStart":I
    :goto_202
    aget-object v14, v3, v6

    iget v14, v14, Landroid/text/PrecomputedText$ParagraphInfo;->paragraphEnd:I

    .line 878
    .local v14, "paraEnd":I
    const/16 v27, 0x1

    .line 879
    .local v27, "firstWidthLineCount":I
    move/from16 v34, v33

    .line 880
    .local v34, "firstWidth":I
    move/from16 v36, v33

    .line 882
    .local v36, "restWidth":I
    const/16 v39, 0x0

    .line 883
    .local v39, "chooseHt":[Landroid/text/style/LineHeightSpan;
    if-eqz v0, :cond_2ab

    .line 884
    move-object/from16 v42, v2

    .end local v2    # "source":Ljava/lang/CharSequence;
    .local v42, "source":Ljava/lang/CharSequence;
    const-class v2, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v11, v14, v2}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/LeadingMarginSpan;

    .line 886
    .local v2, "sp":[Landroid/text/style/LeadingMarginSpan;
    const/16 v43, 0x0

    move/from16 v44, v43

    move/from16 v43, v4

    move/from16 v4, v44

    move-object/from16 v44, v3

    move/from16 v3, v27

    .end local v27    # "firstWidthLineCount":I
    .local v3, "firstWidthLineCount":I
    .local v4, "i":I
    .local v43, "bufStart":I
    .local v44, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    :goto_226
    move/from16 v45, v6

    .end local v6    # "paraIndex":I
    .local v45, "paraIndex":I
    array-length v6, v2

    if-ge v4, v6, :cond_25a

    .line 887
    aget-object v6, v2, v4

    .line 888
    .local v6, "lms":Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v46, v2

    .end local v2    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .local v46, "sp":[Landroid/text/style/LeadingMarginSpan;
    aget-object v2, v46, v4

    move/from16 v27, v4

    const/4 v4, 0x1

    .end local v4    # "i":I
    .local v27, "i":I
    invoke-interface {v2, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v2

    sub-int v34, v34, v2

    .line 889
    aget-object v2, v46, v27

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v2

    sub-int v36, v36, v2

    .line 893
    instance-of v2, v6, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v2, :cond_253

    .line 894
    move-object v2, v6

    check-cast v2, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    .line 895
    .local v2, "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    nop

    .line 896
    invoke-interface {v2}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v4

    .line 895
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 886
    .end local v2    # "lms2":Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;
    .end local v6    # "lms":Landroid/text/style/LeadingMarginSpan;
    :cond_253
    add-int/lit8 v4, v27, 0x1

    move/from16 v6, v45

    move-object/from16 v2, v46

    .end local v27    # "i":I
    .restart local v4    # "i":I
    goto :goto_226

    .end local v46    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .local v2, "sp":[Landroid/text/style/LeadingMarginSpan;
    :cond_25a
    move-object/from16 v46, v2

    move/from16 v27, v4

    .line 900
    .end local v2    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .end local v4    # "i":I
    .restart local v46    # "sp":[Landroid/text/style/LeadingMarginSpan;
    const-class v2, Landroid/text/style/LineHeightSpan;

    invoke-static {v0, v11, v14, v2}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/LineHeightSpan;

    .line 902
    .end local v39    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v2, "chooseHt":[Landroid/text/style/LineHeightSpan;
    array-length v4, v2

    if-nez v4, :cond_271

    .line 903
    const/16 v39, 0x0

    move v2, v3

    move/from16 v3, v34

    move/from16 v4, v36

    .end local v2    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v39    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    goto :goto_2bb

    .line 905
    .end local v39    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v2    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_271
    move-object/from16 v4, v41

    .end local v41    # "chooseHtv":[I
    .local v4, "chooseHtv":[I
    if-eqz v4, :cond_27f

    array-length v6, v4

    move/from16 v27, v3

    .end local v3    # "firstWidthLineCount":I
    .local v27, "firstWidthLineCount":I
    array-length v3, v2

    if-ge v6, v3, :cond_27c

    goto :goto_281

    :cond_27c
    move-object/from16 v41, v4

    goto :goto_286

    .end local v27    # "firstWidthLineCount":I
    .restart local v3    # "firstWidthLineCount":I
    :cond_27f
    move/from16 v27, v3

    .line 906
    .end local v3    # "firstWidthLineCount":I
    .restart local v27    # "firstWidthLineCount":I
    :goto_281
    array-length v3, v2

    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v41

    .line 909
    .end local v4    # "chooseHtv":[I
    .restart local v41    # "chooseHtv":[I
    :goto_286
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_287
    array-length v4, v2

    if-ge v3, v4, :cond_2a2

    .line 910
    aget-object v4, v2, v3

    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 912
    .local v4, "o":I
    if-ge v4, v11, :cond_29d

    .line 916
    invoke-virtual {v1, v4}, Landroid/text/StaticLayout;->getLineForOffset(I)I

    move-result v6

    invoke-virtual {v1, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    move-result v6

    aput v6, v41, v3

    goto :goto_29f

    .line 920
    :cond_29d
    aput v24, v41, v3

    .line 909
    .end local v4    # "o":I
    :goto_29f
    add-int/lit8 v3, v3, 0x1

    goto :goto_287

    :cond_2a2
    move-object/from16 v39, v2

    move/from16 v2, v27

    move/from16 v3, v34

    move/from16 v4, v36

    goto :goto_2bb

    .line 883
    .end local v42    # "source":Ljava/lang/CharSequence;
    .end local v43    # "bufStart":I
    .end local v44    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v45    # "paraIndex":I
    .end local v46    # "sp":[Landroid/text/style/LeadingMarginSpan;
    .local v2, "source":Ljava/lang/CharSequence;
    .local v3, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v4, "bufStart":I
    .local v6, "paraIndex":I
    .restart local v39    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    :cond_2ab
    move-object/from16 v42, v2

    move-object/from16 v44, v3

    move/from16 v43, v4

    move/from16 v45, v6

    move-object/from16 v4, v41

    .end local v2    # "source":Ljava/lang/CharSequence;
    .end local v3    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v6    # "paraIndex":I
    .end local v41    # "chooseHtv":[I
    .local v4, "chooseHtv":[I
    .restart local v42    # "source":Ljava/lang/CharSequence;
    .restart local v43    # "bufStart":I
    .restart local v44    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v45    # "paraIndex":I
    move/from16 v2, v27

    move/from16 v3, v34

    move/from16 v4, v36

    .line 926
    .end local v27    # "firstWidthLineCount":I
    .end local v34    # "firstWidth":I
    .end local v36    # "restWidth":I
    .local v2, "firstWidthLineCount":I
    .local v3, "firstWidth":I
    .local v4, "restWidth":I
    .restart local v41    # "chooseHtv":[I
    :goto_2bb
    const/4 v6, 0x0

    .line 927
    .local v6, "variableTabStops":[F
    if-eqz v0, :cond_2f5

    .line 928
    move-object/from16 v27, v6

    .end local v6    # "variableTabStops":[F
    .local v27, "variableTabStops":[F
    const-class v6, Landroid/text/style/TabStopSpan;

    invoke-static {v0, v11, v14, v6}, Landroid/text/StaticLayout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/TabStopSpan;

    .line 930
    .local v6, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v34, v0

    .end local v0    # "spanned":Landroid/text/Spanned;
    .local v34, "spanned":Landroid/text/Spanned;
    array-length v0, v6

    if-lez v0, :cond_2f0

    .line 931
    array-length v0, v6

    new-array v0, v0, [F

    .line 932
    .local v0, "stops":[F
    const/16 v36, 0x0

    move-object/from16 v46, v8

    move/from16 v8, v36

    .local v8, "i":I
    .local v46, "paint":Landroid/text/TextPaint;
    :goto_2d6
    move-object/from16 v36, v9

    .end local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v36, "textDir":Landroid/text/TextDirectionHeuristic;
    array-length v9, v6

    if-ge v8, v9, :cond_2e9

    .line 933
    aget-object v9, v6, v8

    invoke-interface {v9}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v9

    int-to-float v9, v9

    aput v9, v0, v8

    .line 932
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v9, v36

    goto :goto_2d6

    .line 935
    .end local v8    # "i":I
    :cond_2e9
    array-length v8, v0

    const/4 v9, 0x0

    invoke-static {v0, v9, v8}, Ljava/util/Arrays;->sort([FII)V

    .line 936
    move-object v8, v0

    .end local v27    # "variableTabStops":[F
    .local v8, "variableTabStops":[F
    goto :goto_2ff

    .line 930
    .end local v0    # "stops":[F
    .end local v36    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v46    # "paint":Landroid/text/TextPaint;
    .local v8, "paint":Landroid/text/TextPaint;
    .restart local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v27    # "variableTabStops":[F
    :cond_2f0
    move-object/from16 v46, v8

    move-object/from16 v36, v9

    .end local v8    # "paint":Landroid/text/TextPaint;
    .end local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v36    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v46    # "paint":Landroid/text/TextPaint;
    goto :goto_2fd

    .line 927
    .end local v27    # "variableTabStops":[F
    .end local v34    # "spanned":Landroid/text/Spanned;
    .end local v36    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v46    # "paint":Landroid/text/TextPaint;
    .local v0, "spanned":Landroid/text/Spanned;
    .local v6, "variableTabStops":[F
    .restart local v8    # "paint":Landroid/text/TextPaint;
    .restart local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    :cond_2f5
    move-object/from16 v34, v0

    move-object/from16 v27, v6

    move-object/from16 v46, v8

    move-object/from16 v36, v9

    .line 940
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v6    # "variableTabStops":[F
    .end local v8    # "paint":Landroid/text/TextPaint;
    .end local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v27    # "variableTabStops":[F
    .restart local v34    # "spanned":Landroid/text/Spanned;
    .restart local v36    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v46    # "paint":Landroid/text/TextPaint;
    :goto_2fd
    move-object/from16 v0, v27

    .end local v27    # "variableTabStops":[F
    .local v0, "variableTabStops":[F
    :goto_2ff
    aget-object v6, v44, v45

    iget-object v6, v6, Landroid/text/PrecomputedText$ParagraphInfo;->measured:Landroid/text/MeasuredParagraph;

    .line 941
    .local v6, "measuredPara":Landroid/text/MeasuredParagraph;
    move-object/from16 v8, v23

    .end local v23    # "hyphenEdits":[I
    .local v8, "hyphenEdits":[I
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v23

    .line 942
    .local v23, "chs":[C
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getSpanEndCache()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v47

    .line 943
    .local v47, "spanEndCache":[I
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getFontMetrics()Landroid/text/AutoGrowArray$IntArray;

    move-result-object v9

    invoke-virtual {v9}, Landroid/text/AutoGrowArray$IntArray;->getRawArray()[I

    move-result-object v48

    .line 945
    .local v48, "fmCache":[I
    int-to-float v9, v4

    invoke-virtual {v13, v9}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setWidth(F)V

    .line 946
    int-to-float v9, v3

    invoke-virtual {v13, v9, v2}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setIndent(FI)V

    .line 947
    const/high16 v9, 0x41a00000    # 20.0f

    invoke-virtual {v13, v0, v9}, Landroid/graphics/text/LineBreaker$ParagraphConstraints;->setTabStops([FF)V

    .line 949
    nop

    .line 950
    invoke-virtual {v6}, Landroid/text/MeasuredParagraph;->getMeasuredText()Landroid/graphics/text/MeasuredText;

    move-result-object v9

    move-object/from16 v49, v0

    .end local v0    # "variableTabStops":[F
    .local v49, "variableTabStops":[F
    iget v0, v1, Landroid/text/StaticLayout;->mLineCount:I

    .line 949
    invoke-virtual {v12, v9, v13, v0}, Landroid/graphics/text/LineBreaker;->computeLineBreaks(Landroid/graphics/text/MeasuredText;Landroid/graphics/text/LineBreaker$ParagraphConstraints;I)Landroid/graphics/text/LineBreaker$Result;

    move-result-object v0

    .line 951
    .local v0, "res":Landroid/graphics/text/LineBreaker$Result;
    invoke-virtual {v0}, Landroid/graphics/text/LineBreaker$Result;->getLineCount()I

    move-result v9

    .line 952
    .local v9, "breakCount":I
    if-ge v7, v9, :cond_35f

    .line 953
    move v7, v9

    .line 954
    move/from16 v27, v2

    .end local v2    # "firstWidthLineCount":I
    .local v27, "firstWidthLineCount":I
    new-array v2, v7, [I

    .line 955
    .end local v17    # "breaks":[I
    .local v2, "breaks":[I
    move-object/from16 v17, v2

    .end local v2    # "breaks":[I
    .restart local v17    # "breaks":[I
    new-array v2, v7, [F

    .line 956
    .end local v18    # "lineWidths":[F
    .local v2, "lineWidths":[F
    move-object/from16 v18, v2

    .end local v2    # "lineWidths":[F
    .restart local v18    # "lineWidths":[F
    new-array v2, v7, [F

    .line 957
    .end local v19    # "ascents":[F
    .local v2, "ascents":[F
    move-object/from16 v19, v2

    .end local v2    # "ascents":[F
    .restart local v19    # "ascents":[F
    new-array v2, v7, [F

    .line 958
    .end local v20    # "descents":[F
    .local v2, "descents":[F
    move-object/from16 v20, v2

    .end local v2    # "descents":[F
    .restart local v20    # "descents":[F
    new-array v2, v7, [Z

    .line 959
    .end local v21    # "hasTabs":[Z
    .local v2, "hasTabs":[Z
    new-array v8, v7, [I

    move-object/from16 v55, v2

    move/from16 v50, v7

    move-object/from16 v56, v8

    move-object/from16 v51, v17

    move-object/from16 v52, v18

    move-object/from16 v53, v19

    move-object/from16 v54, v20

    goto :goto_36f

    .line 952
    .end local v27    # "firstWidthLineCount":I
    .local v2, "firstWidthLineCount":I
    .restart local v21    # "hasTabs":[Z
    :cond_35f
    move/from16 v27, v2

    .end local v2    # "firstWidthLineCount":I
    .restart local v27    # "firstWidthLineCount":I
    move-object/from16 v55, v21

    move/from16 v50, v7

    move-object/from16 v56, v8

    move-object/from16 v51, v17

    move-object/from16 v52, v18

    move-object/from16 v53, v19

    move-object/from16 v54, v20

    .line 962
    .end local v7    # "lineBreakCapacity":I
    .end local v8    # "hyphenEdits":[I
    .end local v17    # "breaks":[I
    .end local v18    # "lineWidths":[F
    .end local v19    # "ascents":[F
    .end local v20    # "descents":[F
    .end local v21    # "hasTabs":[Z
    .local v50, "lineBreakCapacity":I
    .local v51, "breaks":[I
    .local v52, "lineWidths":[F
    .local v53, "ascents":[F
    .local v54, "descents":[F
    .local v55, "hasTabs":[Z
    .local v56, "hyphenEdits":[I
    :goto_36f
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_370
    if-ge v2, v9, :cond_3a2

    .line 963
    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->getLineBreakOffset(I)I

    move-result v7

    aput v7, v51, v2

    .line 964
    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->getLineWidth(I)F

    move-result v7

    aput v7, v52, v2

    .line 965
    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->getLineAscent(I)F

    move-result v7

    aput v7, v53, v2

    .line 966
    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->getLineDescent(I)F

    move-result v7

    aput v7, v54, v2

    .line 967
    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->hasLineTab(I)Z

    move-result v7

    aput-boolean v7, v55, v2

    .line 968
    nop

    .line 969
    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->getStartLineHyphenEdit(I)I

    move-result v7

    invoke-virtual {v0, v2}, Landroid/graphics/text/LineBreaker$Result;->getEndLineHyphenEdit(I)I

    move-result v8

    invoke-static {v7, v8}, Landroid/text/StaticLayout;->packHyphenEdit(II)I

    move-result v7

    aput v7, v56, v2

    .line 962
    add-int/lit8 v2, v2, 0x1

    goto :goto_370

    .line 972
    .end local v2    # "i":I
    :cond_3a2
    iget v2, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    iget v7, v1, Landroid/text/StaticLayout;->mLineCount:I

    sub-int/2addr v2, v7

    .line 973
    .local v2, "remainingLineCount":I
    if-eqz v15, :cond_3b8

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v7, :cond_3b6

    iget v7, v1, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3b8

    sget-object v7, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    if-eq v15, v7, :cond_3b8

    :cond_3b6
    const/4 v7, 0x1

    goto :goto_3b9

    :cond_3b8
    const/4 v7, 0x0

    :goto_3b9
    move/from16 v57, v7

    .line 977
    .local v57, "ellipsisMayBeApplied":Z
    if-lez v2, :cond_40a

    if-ge v2, v9, :cond_40a

    if-eqz v57, :cond_40a

    .line 980
    const/4 v7, 0x0

    .line 981
    .local v7, "width":F
    const/4 v8, 0x0

    .line 982
    .local v8, "hasTab":Z
    add-int/lit8 v17, v2, -0x1

    move-object/from16 v58, v0

    move/from16 v0, v17

    .local v0, "i":I
    .local v58, "res":Landroid/graphics/text/LineBreaker$Result;
    :goto_3c9
    if-ge v0, v9, :cond_3f5

    .line 983
    add-int/lit8 v1, v9, -0x1

    if-ne v0, v1, :cond_3d5

    .line 984
    aget v1, v52, v0

    add-float/2addr v7, v1

    move/from16 v17, v0

    goto :goto_3ed

    .line 986
    :cond_3d5
    if-nez v0, :cond_3d9

    const/4 v1, 0x0

    goto :goto_3dd

    :cond_3d9
    add-int/lit8 v1, v0, -0x1

    aget v1, v51, v1

    .local v1, "j":I
    :goto_3dd
    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    aget v0, v51, v17

    if-ge v1, v0, :cond_3ed

    .line 987
    invoke-virtual {v6, v1}, Landroid/text/MeasuredParagraph;->getCharWidthAt(I)F

    move-result v0

    add-float/2addr v7, v0

    .line 986
    add-int/lit8 v1, v1, 0x1

    move/from16 v0, v17

    goto :goto_3dd

    .line 990
    .end local v1    # "j":I
    :cond_3ed
    :goto_3ed
    aget-boolean v0, v55, v17

    or-int/2addr v8, v0

    .line 982
    add-int/lit8 v0, v17, 0x1

    move-object/from16 v1, p0

    .end local v17    # "i":I
    .restart local v0    # "i":I
    goto :goto_3c9

    :cond_3f5
    move/from16 v17, v0

    .line 993
    .end local v0    # "i":I
    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v1, v9, -0x1

    aget v1, v51, v1

    aput v1, v51, v0

    .line 994
    add-int/lit8 v0, v2, -0x1

    aput v7, v52, v0

    .line 995
    add-int/lit8 v0, v2, -0x1

    aput-boolean v8, v55, v0

    .line 997
    move v9, v2

    move v0, v9

    goto :goto_40d

    .line 977
    .end local v7    # "width":F
    .end local v8    # "hasTab":Z
    .end local v58    # "res":Landroid/graphics/text/LineBreaker$Result;
    .local v0, "res":Landroid/graphics/text/LineBreaker$Result;
    :cond_40a
    move-object/from16 v58, v0

    .line 1002
    .end local v0    # "res":Landroid/graphics/text/LineBreaker$Result;
    .restart local v58    # "res":Landroid/graphics/text/LineBreaker$Result;
    move v0, v9

    .end local v9    # "breakCount":I
    .local v0, "breakCount":I
    :goto_40d
    move v1, v11

    .line 1004
    .local v1, "here":I
    move v7, v10

    .line 1005
    .local v7, "fmTop":I
    move/from16 v8, v38

    .line 1006
    .local v8, "fmBottom":I
    move/from16 v9, v32

    .line 1007
    .local v9, "fmAscent":I
    move/from16 v17, v37

    .line 1008
    .local v17, "fmDescent":I
    const/16 v18, 0x0

    .line 1009
    .local v18, "fmCacheIndex":I
    const/16 v19, 0x0

    .line 1010
    .local v19, "spanEndCacheIndex":I
    const/16 v20, 0x0

    .line 1011
    .local v20, "breakIndex":I
    move/from16 v21, v11

    move/from16 v70, v17

    move/from16 v17, v1

    move/from16 v1, v70

    move/from16 v70, v21

    move/from16 v21, v2

    move/from16 v2, v70

    .local v1, "fmDescent":I
    .local v2, "spanStart":I
    .local v17, "here":I
    .local v21, "remainingLineCount":I
    :goto_429
    if-ge v2, v14, :cond_693

    .line 1013
    add-int/lit8 v59, v19, 0x1

    move/from16 v60, v3

    .end local v3    # "firstWidth":I
    .end local v19    # "spanEndCacheIndex":I
    .local v59, "spanEndCacheIndex":I
    .local v60, "firstWidth":I
    aget v3, v47, v19

    .line 1016
    .local v3, "spanEnd":I
    mul-int/lit8 v19, v18, 0x4

    const/16 v31, 0x0

    add-int/lit8 v19, v19, 0x0

    move/from16 v61, v4

    .end local v4    # "restWidth":I
    .local v61, "restWidth":I
    aget v4, v48, v19

    move-object/from16 v62, v6

    move-object/from16 v6, v29

    .end local v29    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v6, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v62, "measuredPara":Landroid/text/MeasuredParagraph;
    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1017
    mul-int/lit8 v4, v18, 0x4

    const/16 v16, 0x1

    add-int/lit8 v4, v4, 0x1

    aget v4, v48, v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    .line 1018
    mul-int/lit8 v4, v18, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v4, v48, v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1019
    mul-int/lit8 v4, v18, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v4, v48, v4

    iput v4, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1020
    add-int/lit8 v63, v18, 0x1

    .line 1022
    .end local v18    # "fmCacheIndex":I
    .local v63, "fmCacheIndex":I
    iget v4, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    if-ge v4, v7, :cond_463

    .line 1023
    iget v7, v6, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1025
    :cond_463
    iget v4, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-ge v4, v9, :cond_469

    .line 1026
    iget v9, v6, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1028
    :cond_469
    iget v4, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    if-le v4, v1, :cond_46f

    .line 1029
    iget v1, v6, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1031
    :cond_46f
    iget v4, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    if-le v4, v8, :cond_478

    .line 1032
    iget v8, v6, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v4, v20

    goto :goto_47a

    .line 1031
    :cond_478
    move/from16 v4, v20

    .line 1036
    .end local v20    # "breakIndex":I
    .local v4, "breakIndex":I
    :goto_47a
    if-ge v4, v0, :cond_489

    aget v18, v51, v4

    move/from16 v19, v1

    .end local v1    # "fmDescent":I
    .local v19, "fmDescent":I
    add-int v1, v11, v18

    if-ge v1, v2, :cond_48b

    .line 1037
    add-int/lit8 v4, v4, 0x1

    move/from16 v1, v19

    goto :goto_47a

    .line 1036
    .end local v19    # "fmDescent":I
    .restart local v1    # "fmDescent":I
    :cond_489
    move/from16 v19, v1

    .line 1040
    .end local v1    # "fmDescent":I
    .restart local v19    # "fmDescent":I
    :cond_48b
    move v1, v4

    move/from16 v4, v19

    .end local v19    # "fmDescent":I
    .local v1, "breakIndex":I
    .local v4, "fmDescent":I
    :goto_48e
    if-ge v1, v0, :cond_617

    aget v18, v51, v1

    move/from16 v64, v0

    .end local v0    # "breakCount":I
    .local v64, "breakCount":I
    add-int v0, v11, v18

    if-gt v0, v3, :cond_5dc

    .line 1041
    aget v0, v51, v1

    add-int/2addr v0, v11

    .line 1043
    .local v0, "endPos":I
    if-ge v0, v5, :cond_4a0

    move/from16 v29, v16

    goto :goto_4a2

    :cond_4a0
    move/from16 v29, v31

    .line 1045
    .local v29, "moreChars":Z
    :goto_4a2
    if-eqz v30, :cond_4b1

    .line 1046
    aget v18, v53, v1

    move/from16 v19, v0

    .end local v0    # "endPos":I
    .local v19, "endPos":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_4b4

    .line 1047
    .end local v19    # "endPos":I
    .restart local v0    # "endPos":I
    :cond_4b1
    move/from16 v19, v0

    .end local v0    # "endPos":I
    .restart local v19    # "endPos":I
    move v0, v9

    :goto_4b4
    nop

    .line 1048
    .local v0, "ascent":I
    if-eqz v30, :cond_4c4

    .line 1049
    aget v18, v54, v1

    move/from16 v20, v1

    .end local v1    # "breakIndex":I
    .restart local v20    # "breakIndex":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_4c7

    .line 1050
    .end local v20    # "breakIndex":I
    .restart local v1    # "breakIndex":I
    :cond_4c4
    move/from16 v20, v1

    .end local v1    # "breakIndex":I
    .restart local v20    # "breakIndex":I
    move v1, v4

    :goto_4c7
    nop

    .line 1055
    .local v1, "descent":I
    if-eqz v30, :cond_4d0

    .line 1056
    if-ge v0, v7, :cond_4cd

    .line 1057
    move v7, v0

    .line 1059
    :cond_4cd
    if-le v1, v8, :cond_4d0

    .line 1060
    move v8, v1

    .line 1064
    :cond_4d0
    move/from16 v18, v3

    move/from16 v3, v17

    move/from16 v17, v25

    move-object/from16 v25, v15

    .end local v15    # "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v3, "here":I
    .local v17, "needMultiply":Z
    .local v18, "spanEnd":I
    .local v25, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    aget-boolean v15, v55, v20

    move/from16 v65, v16

    aget v16, v56, v20

    move/from16 v66, v27

    .end local v27    # "firstWidthLineCount":I
    .local v66, "firstWidthLineCount":I
    aget v27, v52, v20

    move/from16 v67, v5

    move v5, v0

    move/from16 v0, v18

    move-object/from16 v18, v62

    move/from16 v62, v4

    move/from16 v4, v19

    move/from16 v19, v67

    move-object/from16 v67, v46

    move/from16 v46, v9

    move/from16 v9, v24

    move/from16 v24, v11

    move/from16 v11, v28

    move-object/from16 v28, v67

    move/from16 v68, v10

    move-object/from16 v67, v36

    move/from16 v10, v40

    move/from16 v69, v65

    move/from16 v40, v2

    move-object/from16 v36, v12

    move/from16 v65, v31

    move-object/from16 v12, v39

    move-object/from16 v2, v42

    move-object/from16 v39, v13

    move/from16 v42, v20

    move/from16 v31, v21

    move-object/from16 v13, v41

    move/from16 v20, p2

    move/from16 v21, p3

    move/from16 v41, v14

    move-object v14, v6

    move v6, v1

    move-object/from16 v1, p0

    .end local v1    # "descent":I
    .end local v20    # "breakIndex":I
    .end local v21    # "remainingLineCount":I
    .local v0, "spanEnd":I
    .local v2, "source":Ljava/lang/CharSequence;
    .local v4, "endPos":I
    .local v5, "ascent":I
    .local v6, "descent":I
    .local v9, "v":I
    .local v10, "spacingmult":F
    .local v11, "spacingadd":F
    .local v12, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v13, "chooseHtv":[I
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v18, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v19, "bufEnd":I
    .local v24, "paraStart":I
    .local v28, "paint":Landroid/text/TextPaint;
    .local v31, "remainingLineCount":I
    .local v36, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v39, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v40, "spanStart":I
    .local v41, "paraEnd":I
    .local v42, "breakIndex":I
    .local v46, "fmAscent":I
    .local v62, "fmDescent":I
    .local v67, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v68, "defaultTop":I
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v9

    .line 1072
    move v15, v11

    move v11, v10

    move-object/from16 v10, v28

    move/from16 v28, v15

    move-object/from16 v16, v12

    move/from16 v12, v17

    move-object/from16 v15, v18

    move/from16 v17, v7

    move/from16 v18, v8

    move v7, v5

    move v8, v6

    move/from16 v6, v19

    move-object v5, v2

    move-object v2, v1

    move v1, v4

    move/from16 v4, v24

    .end local v2    # "source":Ljava/lang/CharSequence;
    .end local v19    # "bufEnd":I
    .end local v24    # "paraStart":I
    .local v1, "endPos":I
    .local v4, "paraStart":I
    .local v5, "source":Ljava/lang/CharSequence;
    .local v6, "bufEnd":I
    .local v7, "ascent":I
    .local v8, "descent":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v11, "spacingmult":F
    .local v12, "needMultiply":Z
    .local v15, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v16, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v17, "fmTop":I
    .local v18, "fmBottom":I
    .local v28, "spacingadd":F
    if-ge v1, v0, :cond_56f

    .line 1074
    move/from16 v19, v0

    .end local v0    # "spanEnd":I
    .local v19, "spanEnd":I
    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    move/from16 v27, v12

    move/from16 v12, v68

    .end local v68    # "defaultTop":I
    .local v12, "defaultTop":I
    .local v27, "needMultiply":Z
    invoke-static {v12, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1075
    .end local v17    # "fmTop":I
    .local v0, "fmTop":I
    move/from16 v17, v0

    .end local v0    # "fmTop":I
    .restart local v17    # "fmTop":I
    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move-object/from16 v21, v13

    move/from16 v13, v38

    .end local v38    # "defaultBottom":I
    .local v13, "defaultBottom":I
    .local v21, "chooseHtv":[I
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1076
    .end local v18    # "fmBottom":I
    .local v0, "fmBottom":I
    move/from16 v18, v0

    .end local v0    # "fmBottom":I
    .restart local v18    # "fmBottom":I
    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move-object/from16 v38, v15

    move/from16 v15, v32

    .end local v32    # "defaultAscent":I
    .local v15, "defaultAscent":I
    .local v38, "measuredPara":Landroid/text/MeasuredParagraph;
    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1077
    .end local v46    # "fmAscent":I
    .local v0, "fmAscent":I
    move/from16 v20, v0

    .end local v0    # "fmAscent":I
    .local v20, "fmAscent":I
    iget v0, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    move/from16 v24, v1

    move/from16 v1, v37

    .end local v37    # "defaultDescent":I
    .local v1, "defaultDescent":I
    .local v24, "endPos":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .end local v62    # "fmDescent":I
    .local v0, "fmDescent":I
    goto :goto_589

    .line 1079
    .end local v19    # "spanEnd":I
    .end local v20    # "fmAscent":I
    .end local v21    # "chooseHtv":[I
    .end local v24    # "endPos":I
    .end local v27    # "needMultiply":Z
    .local v0, "spanEnd":I
    .local v1, "endPos":I
    .local v12, "needMultiply":Z
    .local v13, "chooseHtv":[I
    .local v15, "measuredPara":Landroid/text/MeasuredParagraph;
    .restart local v32    # "defaultAscent":I
    .restart local v37    # "defaultDescent":I
    .local v38, "defaultBottom":I
    .restart local v46    # "fmAscent":I
    .restart local v62    # "fmDescent":I
    .restart local v68    # "defaultTop":I
    :cond_56f
    move/from16 v19, v0

    move/from16 v24, v1

    move/from16 v27, v12

    move-object/from16 v21, v13

    move/from16 v1, v37

    move/from16 v13, v38

    move/from16 v12, v68

    move-object/from16 v38, v15

    move/from16 v15, v32

    .end local v0    # "spanEnd":I
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .end local v68    # "defaultTop":I
    .local v1, "defaultDescent":I
    .local v12, "defaultTop":I
    .local v13, "defaultBottom":I
    .local v15, "defaultAscent":I
    .restart local v19    # "spanEnd":I
    .restart local v21    # "chooseHtv":[I
    .restart local v24    # "endPos":I
    .restart local v27    # "needMultiply":Z
    .local v38, "measuredPara":Landroid/text/MeasuredParagraph;
    move/from16 v0, v65

    .end local v62    # "fmDescent":I
    .local v0, "fmDescent":I
    move/from16 v20, v65

    .end local v46    # "fmAscent":I
    .restart local v20    # "fmAscent":I
    move/from16 v18, v65

    move/from16 v17, v65

    .line 1082
    :goto_589
    move/from16 v3, v24

    .line 1083
    add-int/lit8 v32, v42, 0x1

    .line 1085
    .end local v42    # "breakIndex":I
    .local v32, "breakIndex":I
    move/from16 v37, v0

    .end local v0    # "fmDescent":I
    .local v37, "fmDescent":I
    iget v0, v2, Landroid/text/StaticLayout;->mLineCount:I

    move/from16 v46, v3

    .end local v3    # "here":I
    .local v46, "here":I
    iget v3, v2, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-lt v0, v3, :cond_59c

    iget-boolean v0, v2, Landroid/text/StaticLayout;->mEllipsized:Z

    if-eqz v0, :cond_59c

    .line 1086
    return-void

    .line 1088
    .end local v7    # "ascent":I
    .end local v8    # "descent":I
    .end local v24    # "endPos":I
    .end local v29    # "moreChars":Z
    :cond_59c
    move-object/from16 v42, v5

    move v5, v6

    move/from16 v24, v9

    move-object v6, v14

    move/from16 v7, v17

    move/from16 v8, v18

    move/from16 v3, v19

    move/from16 v9, v20

    move-object/from16 v62, v38

    move/from16 v2, v40

    move/from16 v14, v41

    move/from16 v17, v46

    move/from16 v0, v64

    move-object/from16 v46, v10

    move/from16 v40, v11

    move v10, v12

    move/from16 v38, v13

    move-object/from16 v41, v21

    move/from16 v21, v31

    move-object/from16 v12, v36

    move-object/from16 v13, v39

    move/from16 v31, v65

    move-object/from16 v36, v67

    move v11, v4

    move-object/from16 v39, v16

    move/from16 v4, v37

    move/from16 v16, v69

    move/from16 v37, v1

    move/from16 v1, v32

    move/from16 v32, v15

    move-object/from16 v15, v25

    move/from16 v25, v27

    move/from16 v27, v66

    goto/16 :goto_48e

    .line 1040
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v18    # "fmBottom":I
    .end local v19    # "spanEnd":I
    .end local v20    # "fmAscent":I
    .end local v31    # "remainingLineCount":I
    .end local v66    # "firstWidthLineCount":I
    .end local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v1, "breakIndex":I
    .local v2, "spanStart":I
    .local v3, "spanEnd":I
    .local v4, "fmDescent":I
    .local v5, "bufEnd":I
    .local v6, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v7, "fmTop":I
    .local v8, "fmBottom":I
    .local v9, "fmAscent":I
    .local v10, "defaultTop":I
    .local v11, "paraStart":I
    .local v12, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v14, "paraEnd":I
    .local v15, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v17, "here":I
    .local v21, "remainingLineCount":I
    .local v24, "v":I
    .local v25, "needMultiply":Z
    .local v27, "firstWidthLineCount":I
    .local v32, "defaultAscent":I
    .local v36, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v37, "defaultDescent":I
    .local v38, "defaultBottom":I
    .local v39, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v40, "spacingmult":F
    .local v41, "chooseHtv":[I
    .local v42, "source":Ljava/lang/CharSequence;
    .local v46, "paint":Landroid/text/TextPaint;
    .local v62, "measuredPara":Landroid/text/MeasuredParagraph;
    :cond_5dc
    move/from16 v19, v3

    move/from16 v69, v16

    move/from16 v3, v17

    move/from16 v66, v27

    move/from16 v65, v31

    move-object/from16 v67, v36

    move-object/from16 v16, v39

    move-object/from16 v36, v12

    move-object/from16 v39, v13

    move/from16 v31, v21

    move/from16 v27, v25

    move/from16 v13, v38

    move-object/from16 v21, v41

    move-object/from16 v38, v62

    move/from16 v62, v4

    move v12, v10

    move v4, v11

    move/from16 v41, v14

    move-object/from16 v25, v15

    move/from16 v15, v32

    move/from16 v11, v40

    move-object/from16 v10, v46

    move/from16 v40, v2

    move-object v14, v6

    move/from16 v46, v9

    move/from16 v9, v24

    move-object/from16 v2, p0

    move v6, v5

    move-object/from16 v5, v42

    move/from16 v42, v1

    move/from16 v1, v37

    .end local v2    # "spanStart":I
    .end local v17    # "here":I
    .end local v24    # "v":I
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .local v1, "defaultDescent":I
    .local v3, "here":I
    .local v4, "paraStart":I
    .local v5, "source":Ljava/lang/CharSequence;
    .local v6, "bufEnd":I
    .local v9, "v":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v11, "spacingmult":F
    .local v12, "defaultTop":I
    .local v13, "defaultBottom":I
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v15, "defaultAscent":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "spanEnd":I
    .local v21, "chooseHtv":[I
    .local v25, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v27, "needMultiply":Z
    .restart local v31    # "remainingLineCount":I
    .local v36, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v38, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v39, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v40, "spanStart":I
    .local v41, "paraEnd":I
    .local v42, "breakIndex":I
    .local v46, "fmAscent":I
    .local v62, "fmDescent":I
    .restart local v66    # "firstWidthLineCount":I
    .restart local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    goto :goto_653

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v19    # "spanEnd":I
    .end local v31    # "remainingLineCount":I
    .end local v64    # "breakCount":I
    .end local v66    # "firstWidthLineCount":I
    .end local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "breakCount":I
    .local v1, "breakIndex":I
    .restart local v2    # "spanStart":I
    .local v3, "spanEnd":I
    .local v4, "fmDescent":I
    .local v5, "bufEnd":I
    .local v6, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v9, "fmAscent":I
    .local v10, "defaultTop":I
    .local v11, "paraStart":I
    .local v12, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v14, "paraEnd":I
    .local v15, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v17    # "here":I
    .local v21, "remainingLineCount":I
    .restart local v24    # "v":I
    .local v25, "needMultiply":Z
    .local v27, "firstWidthLineCount":I
    .restart local v32    # "defaultAscent":I
    .local v36, "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v37    # "defaultDescent":I
    .local v38, "defaultBottom":I
    .local v39, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v40, "spacingmult":F
    .local v41, "chooseHtv":[I
    .local v42, "source":Ljava/lang/CharSequence;
    .local v46, "paint":Landroid/text/TextPaint;
    .local v62, "measuredPara":Landroid/text/MeasuredParagraph;
    :cond_617
    move/from16 v64, v0

    move/from16 v19, v3

    move/from16 v69, v16

    move/from16 v3, v17

    move/from16 v66, v27

    move/from16 v65, v31

    move-object/from16 v67, v36

    move-object/from16 v16, v39

    move-object/from16 v36, v12

    move-object/from16 v39, v13

    move/from16 v31, v21

    move/from16 v27, v25

    move/from16 v13, v38

    move-object/from16 v21, v41

    move-object/from16 v38, v62

    move/from16 v62, v4

    move v12, v10

    move v4, v11

    move/from16 v41, v14

    move-object/from16 v25, v15

    move/from16 v15, v32

    move/from16 v11, v40

    move-object/from16 v10, v46

    move/from16 v40, v2

    move-object v14, v6

    move/from16 v46, v9

    move/from16 v9, v24

    move-object/from16 v2, p0

    move v6, v5

    move-object/from16 v5, v42

    move/from16 v42, v1

    move/from16 v1, v37

    .line 1011
    .end local v0    # "breakCount":I
    .end local v2    # "spanStart":I
    .end local v17    # "here":I
    .end local v24    # "v":I
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .local v1, "defaultDescent":I
    .local v3, "here":I
    .local v4, "paraStart":I
    .local v5, "source":Ljava/lang/CharSequence;
    .local v6, "bufEnd":I
    .local v9, "v":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v11, "spacingmult":F
    .local v12, "defaultTop":I
    .local v13, "defaultBottom":I
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v15, "defaultAscent":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .restart local v19    # "spanEnd":I
    .local v21, "chooseHtv":[I
    .local v25, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v27, "needMultiply":Z
    .restart local v31    # "remainingLineCount":I
    .local v36, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v38, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v39, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v40, "spanStart":I
    .local v41, "paraEnd":I
    .local v42, "breakIndex":I
    .local v46, "fmAscent":I
    .local v62, "fmDescent":I
    .restart local v64    # "breakCount":I
    .restart local v66    # "firstWidthLineCount":I
    .restart local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    :goto_653
    move/from16 v0, v19

    move v2, v0

    move/from16 v37, v1

    move/from16 v17, v3

    move/from16 v24, v9

    move/from16 v40, v11

    move-object/from16 v29, v14

    move/from16 v32, v15

    move-object/from16 v15, v25

    move/from16 v25, v27

    move/from16 v14, v41

    move/from16 v20, v42

    move/from16 v9, v46

    move/from16 v19, v59

    move/from16 v3, v60

    move/from16 v1, v62

    move/from16 v18, v63

    move/from16 v0, v64

    move/from16 v27, v66

    move v11, v4

    move-object/from16 v42, v5

    move v5, v6

    move-object/from16 v46, v10

    move v10, v12

    move-object/from16 v41, v21

    move/from16 v21, v31

    move-object/from16 v12, v36

    move-object/from16 v6, v38

    move/from16 v4, v61

    move-object/from16 v36, v67

    move/from16 v38, v13

    move-object/from16 v13, v39

    move-object/from16 v39, v16

    .end local v40    # "spanStart":I
    .local v0, "spanStart":I
    goto/16 :goto_429

    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v31    # "remainingLineCount":I
    .end local v59    # "spanEndCacheIndex":I
    .end local v60    # "firstWidth":I
    .end local v61    # "restWidth":I
    .end local v62    # "fmDescent":I
    .end local v63    # "fmCacheIndex":I
    .end local v64    # "breakCount":I
    .end local v66    # "firstWidthLineCount":I
    .end local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "breakCount":I
    .local v1, "fmDescent":I
    .restart local v2    # "spanStart":I
    .local v3, "firstWidth":I
    .local v4, "restWidth":I
    .local v5, "bufEnd":I
    .local v6, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v9, "fmAscent":I
    .local v10, "defaultTop":I
    .local v11, "paraStart":I
    .local v12, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v14, "paraEnd":I
    .local v15, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v17    # "here":I
    .local v18, "fmCacheIndex":I
    .local v19, "spanEndCacheIndex":I
    .local v20, "breakIndex":I
    .local v21, "remainingLineCount":I
    .restart local v24    # "v":I
    .local v25, "needMultiply":Z
    .local v27, "firstWidthLineCount":I
    .local v29, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v32    # "defaultAscent":I
    .local v36, "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v37    # "defaultDescent":I
    .local v38, "defaultBottom":I
    .local v39, "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v40, "spacingmult":F
    .local v41, "chooseHtv":[I
    .local v42, "source":Ljava/lang/CharSequence;
    .local v46, "paint":Landroid/text/TextPaint;
    :cond_693
    move/from16 v64, v0

    move/from16 v62, v1

    move/from16 v60, v3

    move/from16 v61, v4

    move v4, v11

    move/from16 v31, v21

    move/from16 v66, v27

    move-object/from16 v67, v36

    move/from16 v1, v37

    move-object/from16 v16, v39

    move/from16 v11, v40

    move-object/from16 v21, v41

    const/16 v65, 0x0

    const/16 v69, 0x1

    move/from16 v40, v2

    move-object/from16 v36, v12

    move-object/from16 v39, v13

    move/from16 v41, v14

    move/from16 v27, v25

    move-object/from16 v14, v29

    move/from16 v13, v38

    move-object/from16 v2, p0

    move-object/from16 v38, v6

    move v12, v10

    move-object/from16 v25, v15

    move/from16 v15, v32

    move-object/from16 v10, v46

    move v6, v5

    move-object/from16 v5, v42

    .line 1091
    .end local v0    # "breakCount":I
    .end local v2    # "spanStart":I
    .end local v3    # "firstWidth":I
    .end local v29    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .end local v40    # "spacingmult":F
    .end local v42    # "source":Ljava/lang/CharSequence;
    .end local v46    # "paint":Landroid/text/TextPaint;
    .local v1, "defaultDescent":I
    .local v4, "paraStart":I
    .local v5, "source":Ljava/lang/CharSequence;
    .local v6, "bufEnd":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v11, "spacingmult":F
    .local v12, "defaultTop":I
    .local v13, "defaultBottom":I
    .local v14, "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v15, "defaultAscent":I
    .restart local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .local v21, "chooseHtv":[I
    .local v25, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v27, "needMultiply":Z
    .restart local v31    # "remainingLineCount":I
    .local v36, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v38, "measuredPara":Landroid/text/MeasuredParagraph;
    .local v39, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v41, "paraEnd":I
    .restart local v60    # "firstWidth":I
    .restart local v61    # "restWidth":I
    .restart local v62    # "fmDescent":I
    .restart local v64    # "breakCount":I
    .restart local v66    # "firstWidthLineCount":I
    .restart local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v0, v41

    .end local v41    # "paraEnd":I
    .local v0, "paraEnd":I
    if-ne v0, v6, :cond_6d4

    .line 1092
    move-object/from16 v41, v21

    move/from16 v9, v24

    goto/16 :goto_741

    .line 873
    .end local v0    # "paraEnd":I
    .end local v4    # "paraStart":I
    .end local v7    # "fmTop":I
    .end local v8    # "fmBottom":I
    .end local v9    # "fmAscent":I
    .end local v16    # "chooseHt":[Landroid/text/style/LineHeightSpan;
    .end local v17    # "here":I
    .end local v18    # "fmCacheIndex":I
    .end local v19    # "spanEndCacheIndex":I
    .end local v20    # "breakIndex":I
    .end local v23    # "chs":[C
    .end local v31    # "remainingLineCount":I
    .end local v38    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v47    # "spanEndCache":[I
    .end local v48    # "fmCache":[I
    .end local v49    # "variableTabStops":[F
    .end local v57    # "ellipsisMayBeApplied":Z
    .end local v58    # "res":Landroid/graphics/text/LineBreaker$Result;
    .end local v60    # "firstWidth":I
    .end local v61    # "restWidth":I
    .end local v62    # "fmDescent":I
    .end local v64    # "breakCount":I
    .end local v66    # "firstWidthLineCount":I
    :cond_6d4
    add-int/lit8 v0, v45, 0x1

    move/from16 v37, v1

    move-object v1, v2

    move-object v2, v5

    move v5, v6

    move-object v8, v10

    move/from16 v40, v11

    move v10, v12

    move/from16 v38, v13

    move-object/from16 v29, v14

    move/from16 v32, v15

    move-object/from16 v41, v21

    move-object/from16 v15, v25

    move/from16 v25, v27

    move-object/from16 v12, v36

    move-object/from16 v13, v39

    move/from16 v4, v43

    move-object/from16 v3, v44

    move/from16 v7, v50

    move-object/from16 v17, v51

    move-object/from16 v18, v52

    move-object/from16 v19, v53

    move-object/from16 v20, v54

    move-object/from16 v21, v55

    move-object/from16 v23, v56

    move/from16 v11, v65

    move-object/from16 v9, v67

    move/from16 v14, v69

    move v6, v0

    move-object/from16 v0, v34

    .end local v45    # "paraIndex":I
    .local v0, "paraIndex":I
    goto/16 :goto_1f5

    .end local v1    # "defaultDescent":I
    .end local v11    # "spacingmult":F
    .end local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v27    # "needMultiply":Z
    .end local v34    # "spanned":Landroid/text/Spanned;
    .end local v36    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .end local v39    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .end local v43    # "bufStart":I
    .end local v44    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v50    # "lineBreakCapacity":I
    .end local v51    # "breaks":[I
    .end local v52    # "lineWidths":[F
    .end local v53    # "ascents":[F
    .end local v54    # "descents":[F
    .end local v55    # "hasTabs":[Z
    .end local v56    # "hyphenEdits":[I
    .end local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "spanned":Landroid/text/Spanned;
    .local v2, "source":Ljava/lang/CharSequence;
    .local v3, "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .local v4, "bufStart":I
    .local v5, "bufEnd":I
    .local v6, "paraIndex":I
    .local v7, "lineBreakCapacity":I
    .local v8, "paint":Landroid/text/TextPaint;
    .local v9, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v10, "defaultTop":I
    .local v12, "lineBreaker":Landroid/graphics/text/LineBreaker;
    .local v13, "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .local v15, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .local v17, "breaks":[I
    .local v18, "lineWidths":[F
    .local v19, "ascents":[F
    .local v20, "descents":[F
    .local v21, "hasTabs":[Z
    .local v23, "hyphenEdits":[I
    .local v25, "needMultiply":Z
    .restart local v29    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .restart local v32    # "defaultAscent":I
    .restart local v37    # "defaultDescent":I
    .local v38, "defaultBottom":I
    .restart local v40    # "spacingmult":F
    .local v41, "chooseHtv":[I
    :cond_70c
    move-object/from16 v34, v0

    move-object/from16 v44, v3

    move/from16 v43, v4

    move/from16 v45, v6

    move-object/from16 v67, v9

    move-object/from16 v36, v12

    move-object/from16 v39, v13

    move/from16 v27, v25

    move-object/from16 v14, v29

    move/from16 v13, v38

    move/from16 v11, v40

    move-object/from16 v4, v41

    move v6, v5

    move v12, v10

    move-object/from16 v25, v15

    move/from16 v15, v32

    move-object v5, v2

    move-object v10, v8

    move-object/from16 v8, v23

    move-object v2, v1

    move/from16 v1, v37

    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v2    # "source":Ljava/lang/CharSequence;
    .end local v3    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .end local v9    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v23    # "hyphenEdits":[I
    .end local v29    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .end local v38    # "defaultBottom":I
    .end local v40    # "spacingmult":F
    .end local v41    # "chooseHtv":[I
    .restart local v1    # "defaultDescent":I
    .local v4, "chooseHtv":[I
    .local v5, "source":Ljava/lang/CharSequence;
    .local v6, "bufEnd":I
    .local v8, "hyphenEdits":[I
    .local v10, "paint":Landroid/text/TextPaint;
    .restart local v11    # "spacingmult":F
    .local v12, "defaultTop":I
    .local v13, "defaultBottom":I
    .restart local v14    # "fm":Landroid/graphics/Paint$FontMetricsInt;
    .local v15, "defaultAscent":I
    .local v25, "ellipsize":Landroid/text/TextUtils$TruncateAt;
    .restart local v27    # "needMultiply":Z
    .restart local v34    # "spanned":Landroid/text/Spanned;
    .restart local v36    # "lineBreaker":Landroid/graphics/text/LineBreaker;
    .restart local v39    # "constraints":Landroid/graphics/text/LineBreaker$ParagraphConstraints;
    .restart local v43    # "bufStart":I
    .restart local v44    # "paragraphInfo":[Landroid/text/PrecomputedText$ParagraphInfo;
    .restart local v45    # "paraIndex":I
    .restart local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    move/from16 v50, v7

    move-object/from16 v56, v8

    move-object/from16 v51, v17

    move-object/from16 v52, v18

    move-object/from16 v53, v19

    move-object/from16 v54, v20

    move-object/from16 v55, v21

    move/from16 v9, v24

    .line 1096
    .end local v4    # "chooseHtv":[I
    .end local v7    # "lineBreakCapacity":I
    .end local v8    # "hyphenEdits":[I
    .end local v17    # "breaks":[I
    .end local v18    # "lineWidths":[F
    .end local v19    # "ascents":[F
    .end local v20    # "descents":[F
    .end local v21    # "hasTabs":[Z
    .end local v24    # "v":I
    .end local v45    # "paraIndex":I
    .local v9, "v":I
    .restart local v41    # "chooseHtv":[I
    .restart local v50    # "lineBreakCapacity":I
    .restart local v51    # "breaks":[I
    .restart local v52    # "lineWidths":[F
    .restart local v53    # "ascents":[F
    .restart local v54    # "descents":[F
    .restart local v55    # "hasTabs":[Z
    .restart local v56    # "hyphenEdits":[I
    :goto_741
    move/from16 v4, v43

    .end local v43    # "bufStart":I
    .local v4, "bufStart":I
    if-eq v6, v4, :cond_762

    add-int/lit8 v0, v6, -0x1

    invoke-interface {v5, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-ne v0, v3, :cond_750

    goto :goto_762

    :cond_750
    move/from16 v37, v1

    move-object v2, v5

    move v5, v6

    move-object v7, v10

    move v10, v11

    move/from16 v68, v12

    move/from16 v38, v13

    move/from16 v32, v15

    move/from16 v17, v27

    move-object/from16 v0, v67

    goto/16 :goto_7d4

    :cond_762
    :goto_762
    iget v0, v2, Landroid/text/StaticLayout;->mLineCount:I

    iget v3, v2, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-ge v0, v3, :cond_7c4

    .line 1098
    nop

    .line 1099
    move-object/from16 v0, v67

    const/4 v3, 0x0

    .end local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static {v5, v6, v6, v0, v3}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v18

    .line 1100
    .local v18, "measuredPara":Landroid/text/MeasuredParagraph;
    if-eqz v15, :cond_77d

    if-eqz v1, :cond_77d

    .line 1101
    iput v12, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    .line 1102
    iput v15, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    .line 1103
    iput v1, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    .line 1104
    iput v13, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_780

    .line 1106
    :cond_77d
    invoke-virtual {v10, v14}, Landroid/text/TextPaint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1109
    :goto_780
    move-object/from16 v42, v5

    .end local v5    # "source":Ljava/lang/CharSequence;
    .restart local v42    # "source":Ljava/lang/CharSequence;
    iget v5, v14, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    move/from16 v19, v6

    .end local v6    # "bufEnd":I
    .local v19, "bufEnd":I
    iget v6, v14, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iget v7, v14, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget v8, v14, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    move/from16 v17, v27

    .end local v27    # "needMultiply":Z
    .local v17, "needMultiply":Z
    const/16 v27, 0x0

    const/16 v29, 0x0

    move v3, v12

    .end local v12    # "defaultTop":I
    .local v3, "defaultTop":I
    const/4 v12, 0x0

    move/from16 v38, v13

    .end local v13    # "defaultBottom":I
    .restart local v38    # "defaultBottom":I
    const/4 v13, 0x0

    move/from16 v32, v15

    .end local v15    # "defaultAscent":I
    .restart local v32    # "defaultAscent":I
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v23, 0x0

    move/from16 v43, v4

    .end local v4    # "bufStart":I
    .restart local v43    # "bufStart":I
    move/from16 v4, v19

    move/from16 v68, v3

    move/from16 v3, v19

    .end local v19    # "bufEnd":I
    .local v3, "bufEnd":I
    .restart local v68    # "defaultTop":I
    move/from16 v20, v28

    move-object/from16 v28, v10

    move v10, v11

    move/from16 v11, v20

    move/from16 v20, p2

    move/from16 v21, p3

    move/from16 v37, v1

    move-object v1, v2

    move-object/from16 v2, v42

    move/from16 v24, v43

    .end local v1    # "defaultDescent":I
    .end local v42    # "source":Ljava/lang/CharSequence;
    .end local v43    # "bufStart":I
    .restart local v2    # "source":Ljava/lang/CharSequence;
    .local v10, "spacingmult":F
    .local v11, "spacingadd":F
    .local v24, "bufStart":I
    .local v28, "paint":Landroid/text/TextPaint;
    .restart local v37    # "defaultDescent":I
    invoke-direct/range {v1 .. v29}, Landroid/text/StaticLayout;->out(Ljava/lang/CharSequence;IIIIIIIFF[Landroid/text/style/LineHeightSpan;[ILandroid/graphics/Paint$FontMetricsInt;ZIZLandroid/text/MeasuredParagraph;IZZZ[CILandroid/text/TextUtils$TruncateAt;FFLandroid/text/TextPaint;Z)I

    move-result v9

    move v5, v3

    move/from16 v4, v24

    move-object/from16 v7, v28

    move/from16 v28, v11

    .end local v3    # "bufEnd":I
    .end local v11    # "spacingadd":F
    .end local v24    # "bufStart":I
    .restart local v4    # "bufStart":I
    .local v5, "bufEnd":I
    .local v7, "paint":Landroid/text/TextPaint;
    .local v28, "spacingadd":F
    goto :goto_7d4

    .line 1096
    .end local v0    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v2    # "source":Ljava/lang/CharSequence;
    .end local v7    # "paint":Landroid/text/TextPaint;
    .end local v17    # "needMultiply":Z
    .end local v18    # "measuredPara":Landroid/text/MeasuredParagraph;
    .end local v32    # "defaultAscent":I
    .end local v37    # "defaultDescent":I
    .end local v38    # "defaultBottom":I
    .end local v68    # "defaultTop":I
    .restart local v1    # "defaultDescent":I
    .local v5, "source":Ljava/lang/CharSequence;
    .restart local v6    # "bufEnd":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v11, "spacingmult":F
    .restart local v12    # "defaultTop":I
    .restart local v13    # "defaultBottom":I
    .restart local v15    # "defaultAscent":I
    .restart local v27    # "needMultiply":Z
    .restart local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    :cond_7c4
    move/from16 v37, v1

    move-object v2, v5

    move v5, v6

    move-object v7, v10

    move v10, v11

    move/from16 v68, v12

    move/from16 v38, v13

    move/from16 v32, v15

    move/from16 v17, v27

    move-object/from16 v0, v67

    .line 1120
    .end local v1    # "defaultDescent":I
    .end local v6    # "bufEnd":I
    .end local v11    # "spacingmult":F
    .end local v12    # "defaultTop":I
    .end local v13    # "defaultBottom":I
    .end local v15    # "defaultAscent":I
    .end local v27    # "needMultiply":Z
    .end local v67    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v0    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local v2    # "source":Ljava/lang/CharSequence;
    .local v5, "bufEnd":I
    .restart local v7    # "paint":Landroid/text/TextPaint;
    .local v10, "spacingmult":F
    .restart local v17    # "needMultiply":Z
    .restart local v32    # "defaultAscent":I
    .restart local v37    # "defaultDescent":I
    .restart local v38    # "defaultBottom":I
    .restart local v68    # "defaultTop":I
    :goto_7d4
    return-void

    nop

    :pswitch_data_7d6
    .packed-switch 0x0
        :pswitch_1a9
        :pswitch_17b
        :pswitch_176
    .end packed-switch
.end method

.method public whitelist getBottomPadding()I
    .registers 2

    .line 1485
    iget v0, p0, Landroid/text/StaticLayout;->mBottomPadding:I

    return v0
.end method

.method public whitelist getEllipsisCount(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1560
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 1561
    const/4 v0, 0x0

    return v0

    .line 1564
    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getEllipsisStart(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1569
    iget v0, p0, Landroid/text/StaticLayout;->mColumns:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_7

    .line 1570
    const/4 v0, 0x0

    return v0

    .line 1573
    :cond_7
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .registers 4
    .param p1, "lineNumber"    # I

    .line 1523
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackEndHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-p getHeight(Z)I
    .registers 6
    .param p1, "cap"    # Z

    .line 1595
    const/4 v0, -0x1

    if-eqz p1, :cond_3a

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_3a

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-ne v1, v0, :cond_3a

    .line 1596
    const-string v1, "StaticLayout"

    const/4 v2, 0x5

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 1597
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxLineHeight should not be -1.  maxLines:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lineCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/text/StaticLayout;->mLineCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1602
    :cond_3a
    if-eqz p1, :cond_49

    iget v1, p0, Landroid/text/StaticLayout;->mLineCount:I

    iget v2, p0, Landroid/text/StaticLayout;->mMaximumVisibleLineCount:I

    if-le v1, v2, :cond_49

    iget v1, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    if-eq v1, v0, :cond_49

    .line 1603
    iget v0, p0, Landroid/text/StaticLayout;->mMaxLineHeight:I

    goto :goto_4d

    :cond_49
    invoke-super {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 1602
    :goto_4d
    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 7
    .param p1, "line"    # I
    .param p2, "align"    # Landroid/text/Layout$Alignment;

    .line 1531
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_18

    .line 1532
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-nez v0, :cond_a

    .line 1533
    return v1

    .line 1535
    :cond_a
    iget-object v0, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    return v0

    .line 1537
    :cond_18
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_30

    .line 1538
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-nez v0, :cond_21

    .line 1539
    return v1

    .line 1541
    :cond_21
    iget-object v0, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v1, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    aget v0, v0, v1

    neg-int v0, v0

    return v0

    .line 1543
    :cond_30
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    if-ne p2, v0, :cond_5d

    .line 1544
    const/4 v0, 0x0

    .line 1545
    .local v0, "left":I
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    if-eqz v1, :cond_46

    .line 1546
    iget-object v1, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    iget-object v2, p0, Landroid/text/StaticLayout;->mLeftIndents:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v0, v1, v2

    .line 1548
    :cond_46
    const/4 v1, 0x0

    .line 1549
    .local v1, "right":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    if-eqz v2, :cond_58

    .line 1550
    iget-object v2, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    iget-object v3, p0, Landroid/text/StaticLayout;->mRightIndents:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v1, v2, v3

    .line 1552
    :cond_58
    sub-int v2, v0, v1

    shr-int/lit8 v2, v2, 0x1

    return v2

    .line 1554
    .end local v0    # "left":I
    .end local v1    # "right":I
    :cond_5d
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unhandled alignment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public whitelist getLineContainsTab(I)Z
    .registers 5
    .param p1, "line"    # I

    .line 1467
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    const/4 v2, 0x0

    add-int/2addr v1, v2

    aget v0, v0, v1

    const/high16 v1, 0x20000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    :cond_f
    return v2
.end method

.method public whitelist getLineCount()I
    .registers 2

    .line 1434
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    return v0
.end method

.method public whitelist getLineDescent(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1452
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final whitelist getLineDirections(I)Landroid/text/Layout$Directions;
    .registers 3
    .param p1, "line"    # I

    .line 1472
    invoke-virtual {p0}, Landroid/text/StaticLayout;->getLineCount()I

    move-result v0

    if-gt p1, v0, :cond_b

    .line 1475
    iget-object v0, p0, Landroid/text/StaticLayout;->mLineDirections:[Landroid/text/Layout$Directions;

    aget-object v0, v0, p1

    return-object v0

    .line 1473
    :cond_b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1447
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getLineForVertical(I)I
    .registers 8
    .param p1, "vertical"    # I

    .line 1413
    iget v0, p0, Landroid/text/StaticLayout;->mLineCount:I

    .line 1414
    .local v0, "high":I
    const/4 v1, -0x1

    .line 1416
    .local v1, "low":I
    iget-object v2, p0, Landroid/text/StaticLayout;->mLines:[I

    .line 1417
    .local v2, "lines":[I
    :goto_5
    sub-int v3, v0, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_19

    .line 1418
    add-int v3, v0, v1

    shr-int/2addr v3, v4

    .line 1419
    .local v3, "guess":I
    iget v5, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v5, v3

    add-int/2addr v5, v4

    aget v4, v2, v5

    if-le v4, p1, :cond_17

    .line 1420
    move v0, v3

    goto :goto_5

    .line 1422
    :cond_17
    move v1, v3

    goto :goto_5

    .line 1425
    .end local v3    # "guess":I
    :cond_19
    if-gez v1, :cond_1d

    .line 1426
    const/4 v3, 0x0

    return v3

    .line 1428
    :cond_1d
    return v1
.end method

.method public whitelist getLineStart(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1457
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    const v1, 0x1fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineTop(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1439
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public whitelist getParagraphDirection(I)I
    .registers 4
    .param p1, "line"    # I

    .line 1462
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .registers 4
    .param p1, "lineNumber"    # I

    .line 1511
    iget-object v0, p0, Landroid/text/StaticLayout;->mLines:[I

    iget v1, p0, Landroid/text/StaticLayout;->mColumns:I

    mul-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Landroid/text/StaticLayout;->unpackStartHyphenEdit(I)I

    move-result v0

    return v0
.end method

.method public whitelist getTopPadding()I
    .registers 2

    .line 1480
    iget v0, p0, Landroid/text/StaticLayout;->mTopPadding:I

    return v0
.end method
