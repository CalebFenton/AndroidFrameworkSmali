.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$TabStops;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$CharacterBoundsListener;,
        Landroid/text/Layout$HorizontalMeasurementProvider;,
        Landroid/text/Layout$TextInclusionStrategy;,
        Landroid/text/Layout$SelectionRectangleConsumer;,
        Landroid/text/Layout$Builder;,
        Landroid/text/Layout$TextSelectionLayout;,
        Landroid/text/Layout$Direction;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$JustificationMode;,
        Landroid/text/Layout$HyphenationFrequency;,
        Landroid/text/Layout$BreakStrategy;
    }
.end annotation


# static fields
.field public static final whitelist BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final whitelist BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final whitelist BREAK_STRATEGY_SIMPLE:I = 0x0

.field public static final whitelist DEFAULT_LINESPACING_ADDITION:F = 0.0f

.field public static final whitelist DEFAULT_LINESPACING_MULTIPLIER:F = 1.0f

.field public static final greylist DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field public static final greylist DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final whitelist DIR_LEFT_TO_RIGHT:I = 0x1

.field static final greylist DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final greylist-max-o DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final greylist-max-o DIR_REQUEST_LTR:I = 0x1

.field static final greylist-max-o DIR_REQUEST_RTL:I = -0x1

.field public static final whitelist DIR_RIGHT_TO_LEFT:I = -0x1

.field private static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_ALPHA_PERCENTAGE:F = 0.7f

.field static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_FACTOR:F = 0.5f

.field static final blacklist HIGH_CONTRAST_TEXT_BACKGROUND_CORNER_RADIUS_MIN_DP:F = 5.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_FACTOR:F = 0.0f

.field private static final blacklist HIGH_CONTRAST_TEXT_BORDER_WIDTH_MIN_PX:F = 0.0f

.field public static final whitelist HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final whitelist HYPHENATION_FREQUENCY_FULL_FAST:I = 0x4

.field public static final whitelist HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field public static final whitelist HYPHENATION_FREQUENCY_NORMAL_FAST:I = 0x3

.field public static final whitelist INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

.field public static final whitelist JUSTIFICATION_MODE_INTER_CHARACTER:I = 0x2

.field public static final whitelist JUSTIFICATION_MODE_INTER_WORD:I = 0x1

.field public static final whitelist JUSTIFICATION_MODE_NONE:I = 0x0

.field private static final greylist-max-o NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final greylist-max-o RUN_LENGTH_MASK:I = 0x3ffffff

.field static final greylist-max-o RUN_LEVEL_MASK:I = 0x3f

.field static final greylist-max-o RUN_LEVEL_SHIFT:I = 0x1a

.field static final greylist-max-o RUN_RTL_FLAG:I = 0x4000000

.field private static final blacklist TAB_INCREMENT:F = 20.0f

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_LEFT_TO_RIGHT:I = 0x1

.field public static final greylist-max-o TEXT_SELECTION_LAYOUT_RIGHT_TO_LEFT:I

.field private static final greylist-max-o sTempRect:Landroid/graphics/Rect;


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private blacklist mBreakStrategy:I

.field private blacklist mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private blacklist mEllipsizedWidth:I

.field private blacklist mFallbackLineSpacing:Z

.field private blacklist mHyphenationFrequency:I

.field private blacklist mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLeftIndents:[I

.field private greylist-max-o mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mLineInfo:Landroid/text/TextLine$LineInfo;

.field private blacklist mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist mPaint:Landroid/text/TextPaint;

.field private blacklist mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private blacklist mSpanColors:Landroid/text/SpanColors;

.field private greylist-max-o mSpannedText:Z

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I

.field private final greylist-max-o mWorkPaint:Landroid/text/TextPaint;

.field private final blacklist mWorkPlainPaint:Landroid/graphics/Paint;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSpanColors(Landroid/text/Layout;)Landroid/text/SpanColors;
    .registers 1

    iget-object p0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpannedText(Landroid/text/Layout;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/Layout;->mSpannedText:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/Layout;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mellipsize(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetHorizontal(Landroid/text/Layout;IZ)F
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/text/Layout;->getHorizontal(IZ)F

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mgetLineHorizontals(Landroid/text/Layout;IZZ)[F
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/text/Layout;->getLineHorizontals(IZZ)[F

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misHighContrastTextDark(Landroid/text/Layout;I)Z
    .registers 2

    invoke-direct {p0, p1}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 167
    const-class v0, Landroid/text/style/ParagraphStyle;

    .line 168
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ParagraphStyle;

    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 212
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_ANY_OVERLAP:Landroid/text/Layout$TextInclusionStrategy;

    .line 220
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_CENTER:Landroid/text/Layout$TextInclusionStrategy;

    .line 229
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroid/text/Layout$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroid/text/Layout;->INCLUSION_STRATEGY_CONTAINS_ALL:Landroid/text/Layout$TextInclusionStrategy;

    .line 3695
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    .line 3756
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x3ffffff

    const/4 v2, 0x0

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    .line 3762
    new-instance v0, Landroid/text/Layout$Directions;

    const v1, 0x7ffffff

    filled-new-array {v2, v1}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    return-void
.end method

.method protected constructor whitelist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 29
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    .line 317
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sget-object v18, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const v12, 0x7fffffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v21}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V

    .line 321
    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FFZZILandroid/text/TextUtils$TruncateAt;III[I[IILandroid/graphics/text/LineBreakConfig;ZZLandroid/graphics/Paint$FontMetrics;)V
    .registers 38
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F
    .param p8, "includePad"    # Z
    .param p9, "fallbackLineSpacing"    # Z
    .param p10, "ellipsizedWidth"    # I
    .param p11, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p12, "maxLines"    # I
    .param p13, "breakStrategy"    # I
    .param p14, "hyphenationFrequency"    # I
    .param p15, "leftIndents"    # [I
    .param p16, "rightIndents"    # [I
    .param p17, "justificationMode"    # I
    .param p18, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;
    .param p19, "useBoundsForWidth"    # Z
    .param p20, "shiftDrawingOffsetForStartOverhang"    # Z
    .param p21, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 372
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p11

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 3689
    new-instance v5, Landroid/text/TextPaint;

    invoke-direct {v5}, Landroid/text/TextPaint;-><init>()V

    iput-object v5, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 3690
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    iput-object v5, v0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    .line 3692
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3715
    const/4 v5, 0x0

    iput-object v5, v0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    .line 374
    if-ltz v3, :cond_83

    .line 381
    if-eqz v2, :cond_2b

    .line 382
    const/4 v5, 0x0

    iput v5, v2, Landroid/text/TextPaint;->bgColor:I

    .line 383
    iput v5, v2, Landroid/text/TextPaint;->baselineShift:I

    .line 386
    :cond_2b
    iput-object v1, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 387
    iput-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 388
    iput v3, v0, Landroid/text/Layout;->mWidth:I

    .line 389
    move-object/from16 v5, p4

    iput-object v5, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 390
    move/from16 v6, p6

    iput v6, v0, Landroid/text/Layout;->mSpacingMult:F

    .line 391
    move/from16 v7, p7

    iput v7, v0, Landroid/text/Layout;->mSpacingAdd:F

    .line 392
    instance-of v8, v1, Landroid/text/Spanned;

    iput-boolean v8, v0, Landroid/text/Layout;->mSpannedText:Z

    .line 393
    move-object/from16 v8, p5

    iput-object v8, v0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 394
    move/from16 v9, p8

    iput-boolean v9, v0, Landroid/text/Layout;->mIncludePad:Z

    .line 395
    move/from16 v10, p9

    iput-boolean v10, v0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    .line 396
    if-nez v4, :cond_51

    move v11, v3

    goto :goto_53

    :cond_51
    move/from16 v11, p10

    :goto_53
    iput v11, v0, Landroid/text/Layout;->mEllipsizedWidth:I

    .line 397
    iput-object v4, v0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 398
    move/from16 v11, p12

    iput v11, v0, Landroid/text/Layout;->mMaxLines:I

    .line 399
    move/from16 v12, p13

    iput v12, v0, Landroid/text/Layout;->mBreakStrategy:I

    .line 400
    move/from16 v13, p14

    iput v13, v0, Landroid/text/Layout;->mHyphenationFrequency:I

    .line 401
    move-object/from16 v14, p15

    iput-object v14, v0, Landroid/text/Layout;->mLeftIndents:[I

    .line 402
    move-object/from16 v15, p16

    iput-object v15, v0, Landroid/text/Layout;->mRightIndents:[I

    .line 403
    move/from16 v1, p17

    iput v1, v0, Landroid/text/Layout;->mJustificationMode:I

    .line 404
    move-object/from16 v1, p18

    iput-object v1, v0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 405
    move/from16 v1, p19

    iput-boolean v1, v0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    .line 406
    move/from16 v1, p20

    iput-boolean v1, v0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    .line 407
    move-object/from16 v1, p21

    iput-object v1, v0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 409
    invoke-direct {v0}, Landroid/text/Layout;->initSpanColors()V

    .line 410
    return-void

    .line 375
    :cond_83
    move-object/from16 v5, p4

    move-object/from16 v8, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    move-object/from16 v14, p15

    move-object/from16 v15, p16

    move-object/from16 v1, p21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 29
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 3066
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 3067
    .local v4, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 3068
    .local v5, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 3070
    .local v6, "dirs":Landroid/text/Layout$Directions;
    if-le v5, v4, :cond_24

    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v8, v5, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_24

    .line 3071
    add-int/lit8 v5, v5, -0x1

    .line 3074
    :cond_24
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_25
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v8, v8

    if-ge v7, v8, :cond_8f

    .line 3075
    iget-object v8, v6, Landroid/text/Layout$Directions;->mDirections:[I

    aget v8, v8, v7

    add-int/2addr v8, v4

    .line 3076
    .local v8, "here":I
    iget-object v9, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v10, v7, 0x1

    aget v9, v9, v10

    const v10, 0x3ffffff

    and-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 3078
    .local v9, "there":I
    if-le v9, v5, :cond_3d

    .line 3079
    move v9, v5

    .line 3082
    :cond_3d
    if-gt v2, v9, :cond_84

    if-lt v3, v8, :cond_84

    .line 3083
    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 3084
    .local v10, "st":I
    invoke-static {v3, v9}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 3086
    .local v11, "en":I
    if-eq v10, v11, :cond_7f

    .line 3087
    const/4 v12, 0x0

    invoke-direct {v0, v10, v12, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v13

    .line 3088
    .local v13, "h1":F
    const/4 v14, 0x1

    invoke-direct {v0, v11, v14, v1, v12}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v15

    .line 3090
    .local v15, "h2":F
    invoke-static {v13, v15}, Ljava/lang/Math;->min(FF)F

    move-result v17

    .line 3091
    .local v17, "left":F
    invoke-static {v13, v15}, Ljava/lang/Math;->max(FF)F

    move-result v19

    .line 3094
    .local v19, "right":F
    iget-object v12, v6, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v18, v7, 0x1

    aget v12, v12, v18

    const/high16 v18, 0x4000000

    and-int v12, v12, v18

    if-eqz v12, :cond_6c

    .line 3095
    const/16 v21, 0x0

    goto :goto_6e

    .line 3096
    :cond_6c
    move/from16 v21, v14

    :goto_6e
    nop

    .line 3098
    .local v21, "layout":I
    move/from16 v12, p4

    int-to-float v14, v12

    move/from16 v0, p5

    int-to-float v1, v0

    move-object/from16 v16, p6

    move/from16 v20, v1

    move/from16 v18, v14

    invoke-interface/range {v16 .. v21}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_88

    .line 3086
    .end local v13    # "h1":F
    .end local v15    # "h2":F
    .end local v17    # "left":F
    .end local v19    # "right":F
    .end local v21    # "layout":I
    :cond_7f
    move/from16 v12, p4

    move/from16 v0, p5

    goto :goto_88

    .line 3082
    .end local v10    # "st":I
    .end local v11    # "en":I
    :cond_84
    move/from16 v12, p4

    move/from16 v0, p5

    .line 3074
    .end local v8    # "here":I
    .end local v9    # "there":I
    :goto_88
    add-int/lit8 v7, v7, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    goto :goto_25

    :cond_8f
    move/from16 v12, p4

    move/from16 v0, p5

    .line 3102
    .end local v7    # "i":I
    return-void
.end method

.method private blacklist determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 664
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 665
    const/4 v0, 0x0

    return-object v0

    .line 668
    :cond_8
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Landroid/graphics/BlendMode;->MULTIPLY:Landroid/graphics/BlendMode;

    goto :goto_19

    .line 669
    :cond_17
    sget-object v0, Landroid/graphics/BlendMode;->DIFFERENCE:Landroid/graphics/BlendMode;

    .line 668
    :goto_19
    return-object v0
.end method

.method private blacklist drawHighContrastBackground(Landroid/graphics/Canvas;II)V
    .registers 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 1024
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 1025
    return-void

    .line 1028
    :cond_7
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_f

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v1, :cond_18

    .line 1029
    :cond_f
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getAlpha()I

    move-result v1

    if-nez v1, :cond_18

    .line 1030
    return-void

    .line 1034
    :cond_18
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 1035
    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextSize()F

    move-result v1

    const/4 v2, 0x0

    mul-float/2addr v1, v2

    .line 1034
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1036
    .local v4, "padding":F
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget v1, v1, Landroid/text/TextPaint;->density:F

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v1, v3

    iget-object v3, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 1038
    invoke-virtual {v3}, Landroid/text/TextPaint;->getTextSize()F

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v3, v5

    .line 1036
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 1043
    .local v6, "cornerRadius":F
    const v1, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v7

    .line 1044
    .local v7, "white":I
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v8

    .line 1046
    .local v8, "black":I
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getColor()I

    move-result v2

    .line 1047
    .local v2, "originalTextColor":I
    iget-object v3, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    .line 1048
    .local v3, "bgPaint":Landroid/graphics/Paint;
    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 1049
    invoke-direct {p0, v2}, Landroid/text/Layout;->isHighContrastTextDark(I)Z

    move-result v1

    if-eqz v1, :cond_58

    move v1, v7

    goto :goto_59

    :cond_58
    move v1, v8

    :goto_59
    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1050
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1052
    move/from16 v9, p2

    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1053
    .local v10, "start":I
    move/from16 v11, p3

    invoke-virtual {p0, v11}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v12

    .line 1058
    .local v12, "end":I
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_80

    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v1, :cond_80

    .line 1059
    iget-object v1, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    iget-object v5, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    iget-object v13, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v13, Landroid/text/Spanned;

    invoke-virtual {v1, v5, v13, v10, v12}, Landroid/text/SpanColors;->init(Landroid/text/TextPaint;Landroid/text/Spanned;II)V

    .line 1062
    :cond_80
    new-instance v5, Landroid/text/Layout$1;

    move-object v1, p0

    move-object v0, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v8}, Landroid/text/Layout$1;-><init>(Landroid/text/Layout;ILandroid/graphics/Paint;FLandroid/graphics/Canvas;FII)V

    move v5, v11

    move-object v11, v3

    move v3, v9

    move v9, v8

    move v8, v7

    move v7, v6

    move v6, v4

    move v4, v5

    move-object v5, v0

    move-object v0, v1

    move v1, v10

    move v10, v2

    move v2, v12

    .end local v3    # "bgPaint":Landroid/graphics/Paint;
    .end local v4    # "padding":F
    .end local v12    # "end":I
    .local v1, "start":I
    .local v2, "end":I
    .local v6, "padding":F
    .local v7, "cornerRadius":F
    .local v8, "white":I
    .local v9, "black":I
    .local v10, "originalTextColor":I
    .local v11, "bgPaint":Landroid/graphics/Paint;
    invoke-direct/range {v0 .. v5}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    .line 1167
    iget-object v3, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-eqz v3, :cond_a1

    .line 1168
    iget-object v3, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v3}, Landroid/text/SpanColors;->recycle()V

    .line 1170
    :cond_a1
    return-void
.end method

.method private greylist-max-o ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .registers 20
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    .line 3472
    move/from16 v0, p3

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    .line 3473
    .local v1, "ellipsisCount":I
    if-nez v1, :cond_9

    .line 3474
    return-void

    .line 3476
    :cond_9
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    .line 3477
    .local v2, "ellipsisStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 3479
    .local v3, "lineStart":I
    invoke-static/range {p6 .. p6}, Landroid/text/TextUtils;->getEllipsisString(Landroid/text/TextUtils$TruncateAt;)Ljava/lang/String;

    move-result-object v4

    .line 3480
    .local v4, "ellipsisString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 3482
    .local v5, "ellipsisStringLen":I
    const/4 v6, 0x0

    if-lt v1, v5, :cond_1e

    const/4 v7, 0x1

    goto :goto_1f

    :cond_1e
    move v7, v6

    .line 3483
    .local v7, "useEllipsisString":Z
    :goto_1f
    sub-int v8, p1, v2

    sub-int/2addr v8, v3

    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3484
    .local v6, "min":I
    sub-int v8, p2, v2

    sub-int/2addr v8, v3

    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 3486
    .local v8, "max":I
    move v9, v6

    .local v9, "i":I
    :goto_2e
    if-ge v9, v8, :cond_47

    .line 3488
    if-eqz v7, :cond_39

    if-ge v9, v5, :cond_39

    .line 3489
    invoke-virtual {v4, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .local v10, "c":C
    goto :goto_3c

    .line 3491
    .end local v10    # "c":C
    :cond_39
    const v10, 0xfeff

    .line 3494
    .restart local v10    # "c":C
    :goto_3c
    add-int v11, v9, v2

    add-int/2addr v11, v3

    .line 3495
    .local v11, "a":I
    add-int v12, p5, v11

    sub-int/2addr v12, p1

    aput-char v10, p4, v12

    .line 3486
    .end local v10    # "c":C
    .end local v11    # "a":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    .line 3497
    .end local v9    # "i":I
    :cond_47
    return-void
.end method

.method private blacklist fillHorizontalBoundsForLine(I[F)V
    .registers 16
    .param p1, "line"    # I
    .param p2, "horizontalBounds"    # [F

    .line 1811
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 1812
    .local v3, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v4

    .line 1813
    .local v4, "lineEnd":I
    sub-int v12, v4, v3

    .line 1815
    .local v12, "lineLength":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 1816
    .local v5, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 1818
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 1819
    .local v7, "hasTab":Z
    const/4 v0, 0x0

    .line 1820
    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_38

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_38

    .line 1823
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    .line 1824
    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 1825
    .local v1, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v1

    if-lez v2, :cond_38

    .line 1826
    new-instance v2, Landroid/text/Layout$TabStops;

    const/high16 v8, 0x41a00000    # 20.0f

    invoke-direct {v2, v8, v1}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v0, v2

    move-object v8, v0

    goto :goto_39

    .line 1830
    .end local v1    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_38
    move-object v8, v0

    .end local v0    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    :goto_39
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 1831
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1832
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 1833
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 1831
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1834
    if-eqz p2, :cond_5c

    array-length v1, p2

    mul-int/lit8 v2, v12, 0x2

    if-ge v1, v2, :cond_60

    .line 1835
    :cond_5c
    mul-int/lit8 v1, v12, 0x2

    new-array p2, v1, [F

    .line 1838
    :cond_60
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/text/TextLine;->measureAllBounds([F[F)V

    .line 1839
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1840
    return-void
.end method

.method private blacklist forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V
    .registers 26
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "startLine"    # I
    .param p4, "endLine"    # I
    .param p5, "listener"    # Landroid/text/Layout$CharacterBoundsListener;

    .line 1911
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1912
    .local v1, "horizontalBounds":[F
    move/from16 v2, p3

    move v4, v2

    .local v4, "line":I
    :goto_6
    move/from16 v9, p4

    if-gt v4, v9, :cond_86

    .line 1913
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 1914
    .local v10, "lineStart":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v11

    .line 1915
    .local v11, "lineEnd":I
    sub-int v12, v11, v10

    .line 1916
    .local v12, "lineLength":I
    if-eqz v1, :cond_1b

    array-length v2, v1

    mul-int/lit8 v3, v12, 0x2

    if-ge v2, v3, :cond_1f

    .line 1917
    :cond_1b
    mul-int/lit8 v2, v12, 0x2

    new-array v1, v2, [F

    .line 1919
    :cond_1f
    invoke-direct {v0, v4, v1}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    .line 1921
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v13

    .line 1922
    .local v13, "lineLeft":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v14

    .line 1923
    .local v14, "lineRight":I
    invoke-direct {v0, v4, v13, v14}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v15

    .line 1925
    .local v15, "lineStartPos":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    .line 1926
    .local v2, "lineTop":I
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    .line 1928
    .local v3, "lineBottom":I
    move/from16 v5, p1

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 1929
    .local v16, "startIndex":I
    move/from16 v6, p2

    invoke-static {v6, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1930
    .local v7, "endIndex":I
    move/from16 v8, v16

    .local v8, "index":I
    :goto_44
    if-ge v8, v7, :cond_7b

    .line 1931
    sub-int v17, v8, v10

    .line 1932
    .local v17, "offset":I
    mul-int/lit8 v18, v17, 0x2

    aget v18, v1, v18

    int-to-float v0, v15

    add-float v18, v18, v0

    .line 1933
    .local v18, "left":F
    mul-int/lit8 v0, v17, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    move/from16 v19, v0

    int-to-float v0, v15

    add-float v0, v19, v0

    .line 1935
    .local v0, "right":F
    int-to-float v6, v2

    move/from16 v19, v8

    .end local v8    # "index":I
    .local v19, "index":I
    int-to-float v8, v3

    move/from16 v5, v18

    move/from16 v18, v3

    move/from16 v3, v19

    move/from16 v19, v7

    move v7, v0

    move v0, v2

    move-object/from16 v2, p5

    .end local v2    # "lineTop":I
    .local v0, "lineTop":I
    .local v3, "index":I
    .local v5, "left":F
    .local v7, "right":F
    .local v18, "lineBottom":I
    .local v19, "endIndex":I
    invoke-interface/range {v2 .. v8}, Landroid/text/Layout$CharacterBoundsListener;->onCharacterBounds(IIFFFF)V

    .line 1930
    .end local v5    # "left":F
    .end local v7    # "right":F
    .end local v17    # "offset":I
    add-int/lit8 v8, v3, 0x1

    move/from16 v5, p1

    move/from16 v6, p2

    move v2, v0

    move/from16 v3, v18

    move/from16 v7, v19

    move-object/from16 v0, p0

    .end local v3    # "index":I
    .restart local v8    # "index":I
    goto :goto_44

    .end local v0    # "lineTop":I
    .end local v18    # "lineBottom":I
    .end local v19    # "endIndex":I
    .restart local v2    # "lineTop":I
    .local v3, "lineBottom":I
    .local v7, "endIndex":I
    :cond_7b
    move v0, v2

    move/from16 v18, v3

    move/from16 v19, v7

    move v3, v8

    .line 1912
    .end local v2    # "lineTop":I
    .end local v3    # "lineBottom":I
    .end local v7    # "endIndex":I
    .end local v8    # "index":I
    .end local v10    # "lineStart":I
    .end local v11    # "lineEnd":I
    .end local v12    # "lineLength":I
    .end local v13    # "lineLeft":I
    .end local v14    # "lineRight":I
    .end local v15    # "lineStartPos":I
    .end local v16    # "startIndex":I
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    goto :goto_6

    .line 1938
    .end local v4    # "line":I
    :cond_86
    invoke-interface/range {p5 .. p5}, Landroid/text/Layout$CharacterBoundsListener;->onEnd()V

    .line 1939
    return-void
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .registers 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    .line 254
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    invoke-static {p0, p1, p2, p3, v0}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F

    move-result v0

    return v0
.end method

.method public static greylist-max-o getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;)F
    .registers 12
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 265
    const v5, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p0    # "source":Ljava/lang/CharSequence;
    .end local p1    # "start":I
    .end local p2    # "end":I
    .end local p3    # "paint":Landroid/text/TextPaint;
    .end local p4    # "textDir":Landroid/text/TextDirectionHeuristic;
    .local v0, "source":Ljava/lang/CharSequence;
    .local v1, "start":I
    .local v2, "end":I
    .local v3, "paint":Landroid/text/TextPaint;
    .local v4, "textDir":Landroid/text/TextDirectionHeuristic;
    invoke-static/range {v0 .. v6}, Landroid/text/Layout;->getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F

    move-result p0

    return p0
.end method

.method public static whitelist getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .registers 4
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 242
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, v0, v1, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v0

    return v0
.end method

.method public static blacklist getDesiredWidthWithLimit(Ljava/lang/CharSequence;IILandroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;FZ)F
    .registers 14
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "upperLimit"    # F
    .param p6, "useBoundsForWidth"    # Z

    .line 277
    const/4 v0, 0x0

    .line 280
    .local v0, "need":F
    move v1, p1

    move v3, v1

    .local v3, "i":I
    :goto_3
    if-gt v3, p2, :cond_2d

    .line 281
    const/16 v1, 0xa

    invoke-static {p0, v1, v3, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    .line 283
    .local v1, "next":I
    if-gez v1, :cond_10

    .line 284
    move v1, p2

    move v4, v1

    goto :goto_11

    .line 283
    :cond_10
    move v4, v1

    .line 287
    .end local v1    # "next":I
    .local v4, "next":I
    :goto_11
    move-object v2, p0

    move-object v1, p3

    move-object v5, p4

    move v6, p6

    .end local p0    # "source":Ljava/lang/CharSequence;
    .end local p3    # "paint":Landroid/text/TextPaint;
    .end local p4    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local p6    # "useBoundsForWidth":Z
    .local v1, "paint":Landroid/text/TextPaint;
    .local v2, "source":Ljava/lang/CharSequence;
    .local v5, "textDir":Landroid/text/TextDirectionHeuristic;
    .local v6, "useBoundsForWidth":Z
    invoke-static/range {v1 .. v6}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F

    move-result p0

    .line 288
    .local p0, "w":F
    cmpl-float p3, p0, p5

    if-lez p3, :cond_1e

    .line 289
    return p5

    .line 292
    :cond_1e
    cmpl-float p3, p0, v0

    if-lez p3, :cond_24

    .line 293
    move p3, p0

    move v0, p3

    .line 295
    :cond_24
    nop

    .end local p0    # "w":F
    add-int/lit8 v4, v4, 0x1

    .line 280
    move v3, v4

    move-object p3, v1

    move-object p0, v2

    move-object p4, v5

    move p6, v6

    goto :goto_3

    .line 298
    .end local v1    # "paint":Landroid/text/TextPaint;
    .end local v2    # "source":Ljava/lang/CharSequence;
    .end local v3    # "i":I
    .end local v4    # "next":I
    .end local v5    # "textDir":Landroid/text/TextDirectionHeuristic;
    .end local v6    # "useBoundsForWidth":Z
    .local p0, "source":Ljava/lang/CharSequence;
    .restart local p3    # "paint":Landroid/text/TextPaint;
    .restart local p4    # "textDir":Landroid/text/TextDirectionHeuristic;
    .restart local p6    # "useBoundsForWidth":Z
    :cond_2d
    return v0
.end method

.method private static blacklist getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 25
    .param p0, "area"    # Landroid/graphics/RectF;
    .param p1, "lineTop"    # I
    .param p2, "lineBottom"    # I
    .param p3, "lineStartOffset"    # I
    .param p4, "lineStartPos"    # I
    .param p5, "horizontalBounds"    # [F
    .param p6, "runStartOffset"    # I
    .param p7, "runEndOffset"    # I
    .param p8, "runLeft"    # F
    .param p9, "runRight"    # F
    .param p10, "isRtl"    # Z
    .param p11, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p12, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;

    .line 2704
    move/from16 v0, p4

    move-object/from16 v1, p11

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p9, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_d1

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p8, v2

    if-lez v2, :cond_15

    move-object/from16 v10, p12

    goto/16 :goto_d3

    .line 2712
    :cond_15
    const/4 v2, 0x1

    if-nez p10, :cond_1e

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p9

    if-gez v4, :cond_26

    :cond_1e
    if-eqz p10, :cond_29

    iget v4, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p8

    if-gtz v4, :cond_29

    .line 2713
    :cond_26
    add-int/lit8 v4, p7, -0x1

    .local v4, "lastCharOffset":I
    goto :goto_55

    .line 2715
    .end local v4    # "lastCharOffset":I
    :cond_29
    move/from16 v4, p6

    .line 2716
    .local v4, "low":I
    move/from16 v5, p7

    .line 2718
    .local v5, "high":I
    :goto_2d
    sub-int v6, v5, v4

    if-le v6, v2, :cond_4f

    .line 2719
    add-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    .line 2721
    .local v6, "guess":I
    int-to-float v7, v0

    mul-int/lit8 v8, v6, 0x2

    aget v8, p5, v8

    add-float/2addr v7, v8

    .line 2722
    .local v7, "pos":F
    if-nez p10, :cond_43

    iget v8, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_4b

    :cond_43
    if-eqz p10, :cond_4d

    iget v8, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4d

    .line 2723
    :cond_4b
    move v5, v6

    goto :goto_4e

    .line 2725
    :cond_4d
    move v4, v6

    .line 2727
    .end local v7    # "pos":F
    :goto_4e
    goto :goto_2d

    .line 2731
    .end local v6    # "guess":I
    :cond_4f
    if-eqz p10, :cond_53

    move v6, v5

    goto :goto_54

    :cond_53
    move v6, v4

    :goto_54
    move v4, v6

    .line 2738
    .end local v5    # "high":I
    .local v4, "lastCharOffset":I
    :goto_55
    add-int v5, p3, v4

    add-int/2addr v5, v2

    .line 2739
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v5

    .line 2740
    .local v5, "segmentStartOffset":I
    if-ne v5, v3, :cond_5f

    .line 2743
    return v3

    .line 2745
    :cond_5f
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v6

    .line 2746
    .local v6, "segmentEndOffset":I
    add-int v7, p3, p6

    if-gt v6, v7, :cond_68

    .line 2749
    return v3

    .line 2753
    :cond_68
    add-int v7, p3, p6

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2754
    add-int v7, p3, p7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 2756
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    const/4 v10, 0x0

    invoke-direct {v7, v10, v8, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2759
    .local v7, "segmentBounds":Landroid/graphics/RectF;
    :goto_7c
    int-to-float v8, v0

    sub-int v9, v6, p3

    sub-int/2addr v9, v2

    mul-int/lit8 v9, v9, 0x2

    .line 2760
    xor-int/lit8 v10, p10, 0x1

    add-int/2addr v9, v10

    aget v9, p5, v9

    add-float/2addr v8, v9

    .line 2761
    .local v8, "segmentEnd":F
    if-nez p10, :cond_90

    iget v9, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v8, v9

    if-ltz v9, :cond_98

    :cond_90
    if-eqz p10, :cond_99

    iget v9, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_99

    .line 2764
    :cond_98
    return v3

    .line 2767
    :cond_99
    int-to-float v9, v0

    sub-int v10, v5, p3

    mul-int/lit8 v10, v10, 0x2

    .line 2768
    add-int v10, v10, p10

    aget v10, p5, v10

    add-float/2addr v9, v10

    .line 2769
    .local v9, "segmentStart":F
    if-eqz p10, :cond_a7

    move v10, v8

    goto :goto_a8

    :cond_a7
    move v10, v9

    :goto_a8
    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 2770
    if-eqz p10, :cond_ae

    move v10, v9

    goto :goto_af

    :cond_ae
    move v10, v8

    :goto_af
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 2771
    move-object/from16 v10, p12

    invoke-interface {v10, v7, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_ba

    .line 2772
    return v6

    .line 2775
    :cond_ba
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->previousEndBoundary(I)I

    move-result v6

    .line 2776
    if-eq v6, v3, :cond_d0

    add-int v11, p3, p6

    if-gt v6, v11, :cond_c5

    goto :goto_d0

    .line 2781
    :cond_c5
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v5

    .line 2784
    add-int v11, p3, p6

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2785
    .end local v8    # "segmentEnd":F
    .end local v9    # "segmentStart":F
    goto :goto_7c

    .line 2779
    .restart local v8    # "segmentEnd":F
    .restart local v9    # "segmentStart":F
    :cond_d0
    :goto_d0
    return v3

    .line 2704
    .end local v4    # "lastCharOffset":I
    .end local v5    # "segmentStartOffset":I
    .end local v6    # "segmentEndOffset":I
    .end local v7    # "segmentBounds":Landroid/graphics/RectF;
    .end local v8    # "segmentEnd":F
    .end local v9    # "segmentStart":F
    :cond_d1
    move-object/from16 v10, p12

    .line 2706
    :goto_d3
    return v3
.end method

.method private greylist-max-o getHorizontal(IZ)F
    .registers 4
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    .line 1712
    if-eqz p2, :cond_7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    goto :goto_b

    :cond_7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    move-result v0

    :goto_b
    return v0
.end method

.method private greylist-max-o getHorizontal(IZIZ)F
    .registers 22
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    .line 1722
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1723
    .local v5, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 1724
    .local v6, "end":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 1725
    .local v7, "dir":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v9

    .line 1726
    .local v9, "hasTab":Z
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 1728
    .local v8, "directions":Landroid/text/Layout$Directions;
    const/4 v2, 0x0

    .line 1729
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v9, :cond_3a

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v3, v3, Landroid/text/Spanned;

    if-eqz v3, :cond_3a

    .line 1732
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Landroid/text/style/TabStopSpan;

    invoke-static {v3, v5, v6, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/style/TabStopSpan;

    .line 1733
    .local v3, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v4, v3

    if-lez v4, :cond_3a

    .line 1734
    new-instance v4, Landroid/text/Layout$TabStops;

    const/high16 v10, 0x41a00000    # 20.0f

    invoke-direct {v4, v10, v3}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v4

    move-object v10, v2

    goto :goto_3b

    .line 1738
    .end local v3    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_3a
    move-object v10, v2

    .end local v2    # "tabStops":Landroid/text/Layout$TabStops;
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    :goto_3b
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v11

    .line 1739
    .local v11, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1740
    move-object v2, v11

    .end local v11    # "tl":Landroid/text/TextLine;
    .local v2, "tl":Landroid/text/TextLine;
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v12

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v13

    add-int/2addr v12, v13

    .line 1741
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 1739
    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1742
    sub-int v12, p1, v5

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/4 v14, 0x0

    move/from16 v13, p2

    move-object v11, v2

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v11    # "tl":Landroid/text/TextLine;
    invoke-virtual/range {v11 .. v16}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;Landroid/text/TextLine$LineInfo;)F

    move-result v2

    .line 1743
    .local v2, "wid":F
    invoke-static {v11}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1745
    if-eqz p4, :cond_74

    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_74

    .line 1746
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v2, v3

    .line 1748
    :cond_74
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1749
    .local v3, "left":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v4

    .line 1751
    .local v4, "right":I
    invoke-direct {v0, v1, v3, v4}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v2

    return v12
.end method

.method private greylist-max-o getHorizontal(IZZ)F
    .registers 6
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    .line 1716
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1718
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    move-result v1

    return v1
.end method

.method private greylist-max-o getJustifyWidth(I)F
    .registers 18
    .param p1, "lineNum"    # I

    .line 690
    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 692
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v3, 0x0

    .line 693
    .local v3, "left":I
    iget v4, v0, Landroid/text/Layout;->mWidth:I

    .line 695
    .local v4, "right":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 697
    .local v5, "dir":I
    sget-object v6, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 698
    .local v6, "spans":[Landroid/text/style/ParagraphStyle;
    iget-boolean v7, v0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_a0

    .line 699
    iget-object v7, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v7, Landroid/text/Spanned;

    .line 700
    .local v7, "sp":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v9

    .line 702
    .local v9, "start":I
    if-eqz v9, :cond_2d

    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v11, v9, -0x1

    invoke-interface {v10, v11}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0xa

    if-ne v10, v11, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v10, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    move v10, v8

    .line 704
    .local v10, "isFirstParaLine":Z
    :goto_2e
    if-eqz v10, :cond_5b

    .line 705
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    move-result v11

    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-interface {v7, v9, v11, v12}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 707
    .local v11, "spanEnd":I
    const-class v12, Landroid/text/style/ParagraphStyle;

    invoke-static {v7, v9, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Landroid/text/style/ParagraphStyle;

    .line 709
    array-length v12, v6

    sub-int/2addr v12, v8

    .local v12, "n":I
    :goto_47
    if-ltz v12, :cond_5b

    .line 710
    aget-object v13, v6, v12

    instance-of v13, v13, Landroid/text/style/AlignmentSpan;

    if-eqz v13, :cond_58

    .line 711
    aget-object v13, v6, v12

    check-cast v13, Landroid/text/style/AlignmentSpan;

    invoke-interface {v13}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 712
    goto :goto_5b

    .line 709
    :cond_58
    add-int/lit8 v12, v12, -0x1

    goto :goto_47

    .line 717
    .end local v11    # "spanEnd":I
    .end local v12    # "n":I
    :cond_5b
    :goto_5b
    array-length v11, v6

    .line 718
    .local v11, "length":I
    move v12, v10

    .line 719
    .local v12, "useFirstLineMargin":Z
    const/4 v13, 0x0

    .local v13, "n":I
    :goto_5e
    if-ge v13, v11, :cond_82

    .line 720
    aget-object v14, v6, v13

    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v14, :cond_7e

    .line 721
    aget-object v14, v6, v13

    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v14

    .line 722
    .local v14, "count":I
    aget-object v15, v6, v13

    invoke-interface {v7, v15}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v15

    .line 723
    .local v15, "startLine":I
    add-int v8, v15, v14

    if-ge v1, v8, :cond_7e

    .line 724
    const/4 v12, 0x1

    .line 725
    goto :goto_82

    .line 719
    .end local v14    # "count":I
    .end local v15    # "startLine":I
    :cond_7e
    add-int/lit8 v13, v13, 0x1

    const/4 v8, 0x1

    goto :goto_5e

    .line 729
    .end local v13    # "n":I
    :cond_82
    :goto_82
    const/4 v8, 0x0

    .local v8, "n":I
    :goto_83
    if-ge v8, v11, :cond_a0

    .line 730
    aget-object v13, v6, v8

    instance-of v13, v13, Landroid/text/style/LeadingMarginSpan;

    if-eqz v13, :cond_9d

    .line 731
    aget-object v13, v6, v8

    check-cast v13, Landroid/text/style/LeadingMarginSpan;

    .line 732
    .local v13, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v14, -0x1

    if-ne v5, v14, :cond_98

    .line 733
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    sub-int/2addr v4, v14

    goto :goto_9d

    .line 735
    :cond_98
    invoke-interface {v13, v12}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v14

    add-int/2addr v3, v14

    .line 729
    .end local v13    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9d
    :goto_9d
    add-int/lit8 v8, v8, 0x1

    goto :goto_83

    .line 742
    .end local v7    # "sp":Landroid/text/Spanned;
    .end local v8    # "n":I
    .end local v9    # "start":I
    .end local v10    # "isFirstParaLine":Z
    .end local v11    # "length":I
    .end local v12    # "useFirstLineMargin":Z
    :cond_a0
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_ad

    .line 743
    const/4 v7, 0x1

    if-ne v5, v7, :cond_aa

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_ac

    :cond_aa
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    .local v7, "align":Landroid/text/Layout$Alignment;
    :goto_ac
    goto :goto_bb

    .line 744
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_ad
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v2, v7, :cond_ba

    .line 745
    const/4 v7, 0x1

    if-ne v5, v7, :cond_b7

    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_b9

    :cond_b7
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_b9
    goto :goto_bb

    .line 747
    .end local v7    # "align":Landroid/text/Layout$Alignment;
    :cond_ba
    move-object v7, v2

    .line 751
    .restart local v7    # "align":Landroid/text/Layout$Alignment;
    :goto_bb
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_d1

    .line 752
    const/4 v8, 0x1

    if-ne v5, v8, :cond_c9

    .line 753
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .local v8, "indentWidth":I
    goto :goto_ed

    .line 755
    .end local v8    # "indentWidth":I
    :cond_c9
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_ed

    .line 757
    .end local v8    # "indentWidth":I
    :cond_d1
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v7, v8, :cond_e7

    .line 758
    const/4 v8, 0x1

    if-ne v5, v8, :cond_e0

    .line 759
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    neg-int v8, v8

    .restart local v8    # "indentWidth":I
    goto :goto_ed

    .line 761
    .end local v8    # "indentWidth":I
    :cond_e0
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .restart local v8    # "indentWidth":I
    goto :goto_ed

    .line 764
    .end local v8    # "indentWidth":I
    :cond_e7
    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v0, v1, v8}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v8

    .line 767
    .restart local v8    # "indentWidth":I
    :goto_ed
    sub-int v9, v4, v3

    sub-int/2addr v9, v8

    int-to-float v9, v9

    return v9
.end method

.method private greylist-max-o getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .registers 16
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    .line 2174
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2175
    .local v3, "start":I
    if-eqz p3, :cond_b

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    :goto_f
    move v4, v0

    .line 2176
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 2177
    .local v7, "hasTabs":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2178
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2180
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2181
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2182
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2183
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2184
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2185
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2186
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v8

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    add-int/2addr v10, v8

    .line 2187
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2185
    move-object v8, p2

    .end local p2    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2188
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result p2

    if-eqz p2, :cond_5b

    .line 2189
    iget p2, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v2

    invoke-virtual {v0, p2, v2}, Landroid/text/TextLine;->justify(IF)V

    .line 2191
    :cond_5b
    iget-boolean p2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p2, v2}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result p2

    .line 2192
    .local p2, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2193
    return p2
.end method

.method private greylist-max-o getLineExtent(IZ)F
    .registers 15
    .param p1, "line"    # I
    .param p2, "full"    # Z

    .line 2072
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2073
    .local v3, "start":I
    if-eqz p2, :cond_b

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    goto :goto_f

    :cond_b
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v0

    :goto_f
    move v4, v0

    .line 2075
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v7

    .line 2076
    .local v7, "hasTabs":Z
    const/4 v0, 0x0

    .line 2077
    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_36

    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v1, v1, Landroid/text/Spanned;

    if-eqz v1, :cond_36

    .line 2080
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    const-class v2, Landroid/text/style/TabStopSpan;

    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/TabStopSpan;

    .line 2081
    .local v1, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v1

    if-lez v2, :cond_36

    .line 2082
    new-instance v2, Landroid/text/Layout$TabStops;

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-direct {v2, v5, v1}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v0, v2

    move-object v8, v0

    goto :goto_37

    .line 2085
    .end local v1    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_36
    move-object v8, v0

    .end local v0    # "tabStops":Landroid/text/Layout$TabStops;
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    :goto_37
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2087
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_3f

    .line 2088
    const/4 v0, 0x0

    return v0

    .line 2090
    :cond_3f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2092
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2093
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2094
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2095
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2096
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2097
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2098
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v11

    add-int/2addr v10, v11

    .line 2099
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2097
    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2100
    invoke-direct {p0, p1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 2101
    iget v2, p0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {p0, p1}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v9

    invoke-virtual {v0, v2, v9}, Landroid/text/TextLine;->justify(IF)V

    .line 2103
    :cond_81
    iget-boolean v2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v9, 0x0

    invoke-virtual {v0, v9, v9, v2, v9}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v2

    .line 2104
    .local v2, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2105
    return v2
.end method

.method private greylist-max-o getLineHorizontals(IZZ)[F
    .registers 21
    .param p1, "line"    # I
    .param p2, "clamped"    # Z
    .param p3, "primary"    # Z

    .line 1763
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1764
    .local v4, "start":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1765
    .local v5, "end":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 1766
    .local v6, "dir":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v8

    .line 1767
    .local v8, "hasTab":Z
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 1769
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v1, 0x0

    .line 1770
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_38

    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v2, v2, Landroid/text/Spanned;

    if-eqz v2, :cond_38

    .line 1773
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/TabStopSpan;

    .line 1774
    .local v2, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v3, v2

    if-lez v3, :cond_38

    .line 1775
    new-instance v3, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v3, v9, v2}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v1, v3

    move-object v9, v1

    goto :goto_39

    .line 1779
    .end local v2    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_38
    move-object v9, v1

    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    :goto_39
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v1

    .line 1780
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1781
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v10

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v12

    add-int/2addr v11, v12

    .line 1782
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v12

    .line 1780
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1783
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->primaryIsTrailingPreviousAllLineOffsets(I)[Z

    move-result-object v2

    .line 1784
    .local v2, "trailings":[Z
    if-nez p3, :cond_68

    .line 1785
    const/4 v3, 0x0

    .local v3, "offset":I
    :goto_5c
    array-length v10, v2

    if-ge v3, v10, :cond_68

    .line 1786
    aget-boolean v10, v2, v3

    xor-int/lit8 v10, v10, 0x1

    aput-boolean v10, v2, v3

    .line 1785
    add-int/lit8 v3, v3, 0x1

    goto :goto_5c

    .line 1789
    .end local v3    # "offset":I
    :cond_68
    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/text/TextLine;->measureAllOffsets([ZLandroid/graphics/Paint$FontMetricsInt;)[F

    move-result-object v3

    .line 1790
    .local v3, "wid":[F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1792
    if-eqz p2, :cond_87

    .line 1793
    const/4 v10, 0x0

    .local v10, "offset":I
    :goto_73
    array-length v11, v3

    if-ge v10, v11, :cond_87

    .line 1794
    aget v11, v3, v10

    iget v12, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v12, v12

    cmpl-float v11, v11, v12

    if-lez v11, :cond_84

    .line 1795
    iget v11, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v11, v11

    aput v11, v3, v10

    .line 1793
    :cond_84
    add-int/lit8 v10, v10, 0x1

    goto :goto_73

    .line 1799
    .end local v10    # "offset":I
    :cond_87
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v10

    .line 1800
    .local v10, "left":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v11

    .line 1802
    .local v11, "right":I
    move/from16 v12, p1

    invoke-direct {v0, v12, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v13

    .line 1803
    .local v13, "lineStartPos":I
    sub-int v14, v5, v4

    add-int/lit8 v14, v14, 0x1

    new-array v14, v14, [F

    .line 1804
    .local v14, "horizontal":[F
    const/4 v15, 0x0

    .local v15, "offset":I
    :goto_9c
    array-length v0, v14

    if-ge v15, v0, :cond_ab

    .line 1805
    int-to-float v0, v13

    aget v16, v3, v15

    add-float v0, v0, v16

    aput v0, v14, v15

    .line 1804
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    goto :goto_9c

    .line 1807
    .end local v15    # "offset":I
    :cond_ab
    return-object v14
.end method

.method private greylist-max-o getLineStartPos(III)I
    .registers 14
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    .line 1209
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 1210
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 1212
    .local v1, "dir":I
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    const/4 v3, 0x1

    if-ne v0, v2, :cond_16

    .line 1213
    if-ne v1, v3, :cond_12

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_14

    :cond_12
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_14
    move-object v0, v2

    goto :goto_22

    .line 1214
    :cond_16
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_22

    .line 1215
    if-ne v1, v3, :cond_1f

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_21

    :cond_1f
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_21
    move-object v0, v2

    .line 1219
    :cond_22
    :goto_22
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v0, v2, :cond_38

    .line 1220
    if-ne v1, v3, :cond_30

    .line 1221
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p2

    .local v2, "x":I
    goto :goto_99

    .line 1223
    .end local v2    # "x":I
    :cond_30
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v2

    add-int/2addr v2, p3

    .restart local v2    # "x":I
    goto :goto_99

    .line 1226
    .end local v2    # "x":I
    :cond_38
    const/4 v2, 0x0

    .line 1227
    .local v2, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v4, :cond_68

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v4

    if-eqz v4, :cond_68

    .line 1228
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v4, Landroid/text/Spanned;

    .line 1229
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1230
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    move-result v6

    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v6

    .line 1232
    .local v6, "spanEnd":I
    const-class v7, Landroid/text/style/TabStopSpan;

    invoke-static {v4, v5, v6, v7}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/TabStopSpan;

    .line 1234
    .local v7, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v8, v7

    if-lez v8, :cond_68

    .line 1235
    new-instance v8, Landroid/text/Layout$TabStops;

    const/high16 v9, 0x41a00000    # 20.0f

    invoke-direct {v8, v9, v7}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v2, v8

    .line 1238
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "spanEnd":I
    .end local v7    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_68
    const/4 v4, 0x0

    invoke-direct {p0, p1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v4

    float-to-int v4, v4

    .line 1239
    .local v4, "max":I
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v0, v5, :cond_8a

    .line 1240
    if-ne v1, v3, :cond_7f

    .line 1241
    sub-int v3, p3, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .local v3, "x":I
    goto :goto_99

    .line 1244
    .end local v3    # "x":I
    :cond_7f
    sub-int v3, p2, v4

    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v5}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v5

    add-int/2addr v3, v5

    move v2, v3

    .restart local v3    # "x":I
    goto :goto_99

    .line 1247
    .end local v3    # "x":I
    :cond_8a
    and-int/lit8 v4, v4, -0x2

    .line 1248
    add-int v5, p2, p3

    sub-int/2addr v5, v4

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    add-int/2addr v6, v3

    shr-int v3, v5, v6

    move v2, v3

    .line 1251
    .end local v4    # "max":I
    .local v2, "x":I
    :goto_99
    return v2
.end method

.method private blacklist getLineVisibleEnd(IIIZ)I
    .registers 8
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "trailingSpaceAtLastLineIsVisible"    # Z

    .line 2806
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2811
    .local v0, "text":Ljava/lang/CharSequence;
    if-eqz p4, :cond_d

    .line 2812
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_d

    .line 2813
    return p3

    .line 2817
    :cond_d
    :goto_d
    if-le p3, p2, :cond_26

    .line 2818
    add-int/lit8 v1, p3, -0x1

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2820
    .local v1, "ch":C
    const/16 v2, 0xa

    if-ne v1, v2, :cond_1c

    .line 2821
    add-int/lit8 v2, p3, -0x1

    return v2

    .line 2824
    :cond_1c
    invoke-static {v1}, Landroid/text/TextLine;->isLineEndSpace(C)Z

    move-result v2

    if-nez v2, :cond_23

    .line 2825
    goto :goto_26

    .line 2817
    :cond_23
    add-int/lit8 p3, p3, -0x1

    goto :goto_d

    .line 2830
    .end local v1    # "ch":C
    :cond_26
    :goto_26
    return p3
.end method

.method private greylist-max-o getOffsetAtStartOf(I)I
    .registers 9
    .param p1, "offset"    # I

    .line 2947
    if-nez p1, :cond_4

    .line 2948
    const/4 v0, 0x0

    return v0

    .line 2950
    :cond_4
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2951
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-interface {v0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 2953
    .local v1, "c":C
    const v2, 0xdc00

    if-lt v1, v2, :cond_26

    const v2, 0xdfff

    if-gt v1, v2, :cond_26

    .line 2954
    add-int/lit8 v2, p1, -0x1

    invoke-interface {v0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 2956
    .local v2, "c1":C
    const v3, 0xd800

    if-lt v2, v3, :cond_26

    const v3, 0xdbff

    if-gt v2, v3, :cond_26

    .line 2957
    add-int/lit8 p1, p1, -0x1

    .line 2960
    .end local v2    # "c1":C
    :cond_26
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_53

    .line 2961
    move-object v2, v0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/ReplacementSpan;

    invoke-interface {v2, p1, p1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/ReplacementSpan;

    .line 2964
    .local v2, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_36
    array-length v4, v2

    if-ge v3, v4, :cond_53

    .line 2965
    move-object v4, v0

    check-cast v4, Landroid/text/Spanned;

    aget-object v5, v2, v3

    invoke-interface {v4, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 2966
    .local v4, "start":I
    move-object v5, v0

    check-cast v5, Landroid/text/Spanned;

    aget-object v6, v2, v3

    invoke-interface {v5, v6}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 2968
    .local v5, "end":I
    if-ge v4, p1, :cond_50

    if-le v5, p1, :cond_50

    .line 2969
    move p1, v4

    .line 2964
    .end local v4    # "start":I
    .end local v5    # "end":I
    :cond_50
    add-int/lit8 v3, v3, 0x1

    goto :goto_36

    .line 2973
    .end local v2    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v3    # "i":I
    :cond_53
    return p1
.end method

.method private greylist-max-o getOffsetToLeftRightOf(IZ)I
    .registers 25
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    .line 2891
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 2892
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2893
    .local v4, "lineStart":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2894
    .local v5, "lineEnd":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    .line 2896
    .local v6, "lineDir":I
    const/4 v7, 0x0

    .line 2897
    .local v7, "lineChanged":Z
    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v6, v8, :cond_1e

    move v8, v10

    goto :goto_1f

    :cond_1e
    move v8, v9

    :goto_1f
    if-ne v2, v8, :cond_22

    move v9, v10

    .line 2899
    .local v9, "advance":Z
    :cond_22
    if-eqz v9, :cond_32

    .line 2900
    if-ne v1, v5, :cond_3b

    .line 2901
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    sub-int/2addr v8, v10

    if-ge v3, v8, :cond_31

    .line 2902
    const/4 v7, 0x1

    .line 2903
    add-int/lit8 v3, v3, 0x1

    goto :goto_3b

    .line 2905
    :cond_31
    return v1

    .line 2909
    :cond_32
    if-ne v1, v4, :cond_3b

    .line 2910
    if-lez v3, :cond_3a

    .line 2911
    const/4 v7, 0x1

    .line 2912
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 2914
    :cond_3a
    return v1

    .line 2919
    :cond_3b
    :goto_3b
    if-eqz v7, :cond_57

    .line 2920
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 2921
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 2922
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v8

    .line 2923
    .local v8, "newDir":I
    if-eq v8, v6, :cond_53

    .line 2927
    xor-int/lit8 v10, v2, 0x1

    .line 2928
    .end local p2    # "toLeft":Z
    .local v10, "toLeft":Z
    move v6, v8

    move v13, v4

    move v14, v5

    move v15, v6

    move v2, v10

    goto :goto_5a

    .line 2923
    .end local v10    # "toLeft":Z
    .restart local p2    # "toLeft":Z
    :cond_53
    move v13, v4

    move v14, v5

    move v15, v6

    goto :goto_5a

    .line 2919
    .end local v8    # "newDir":I
    :cond_57
    move v13, v4

    move v14, v5

    move v15, v6

    .line 2932
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v6    # "lineDir":I
    .end local p2    # "toLeft":Z
    .local v2, "toLeft":Z
    .local v13, "lineStart":I
    .local v14, "lineEnd":I
    .local v15, "lineDir":I
    :goto_5a
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v16

    .line 2934
    .local v16, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v10

    .line 2936
    .local v10, "tl":Landroid/text/TextLine;
    iget-object v11, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v12, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2937
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v19

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v0, v3}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v20, v4, v5

    .line 2938
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v21

    .line 2936
    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v21}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2939
    sub-int v4, v1, v13

    invoke-virtual {v10, v4, v2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v4

    add-int v1, v13, v4

    .line 2940
    .end local p1    # "caret":I
    .local v1, "caret":I
    invoke-static {v10}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2941
    return v1
.end method

.method private greylist-max-o getParagraphLeadingMargin(I)I
    .registers 16
    .param p1, "line"    # I

    .line 3238
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3239
    return v1

    .line 3241
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v0, Landroid/text/Spanned;

    .line 3243
    .local v0, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 3244
    .local v2, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 3245
    .local v3, "lineEnd":I
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    invoke-interface {v0, v2, v3, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v4

    .line 3247
    .local v4, "spanEnd":I
    const-class v5, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v0, v2, v4, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/LeadingMarginSpan;

    .line 3249
    .local v5, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v6, v5

    if-nez v6, :cond_24

    .line 3250
    return v1

    .line 3253
    :cond_24
    const/4 v6, 0x0

    .line 3255
    .local v6, "margin":I
    const/4 v7, 0x1

    if-eqz v2, :cond_35

    add-int/lit8 v8, v2, -0x1

    invoke-interface {v0, v8}, Landroid/text/Spanned;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_33

    goto :goto_35

    :cond_33
    move v8, v1

    goto :goto_36

    :cond_35
    :goto_35
    move v8, v7

    .line 3256
    .local v8, "useFirstLineMargin":Z
    :goto_36
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_37
    array-length v10, v5

    if-ge v9, v10, :cond_5d

    .line 3257
    aget-object v10, v5, v9

    instance-of v10, v10, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v10, :cond_5a

    .line 3258
    aget-object v10, v5, v9

    invoke-interface {v0, v10}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    .line 3259
    .local v10, "spStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v11

    .line 3260
    .local v11, "spanLine":I
    aget-object v12, v5, v9

    check-cast v12, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v12}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v12

    .line 3262
    .local v12, "count":I
    add-int v13, v11, v12

    if-ge p1, v13, :cond_58

    move v13, v7

    goto :goto_59

    :cond_58
    move v13, v1

    :goto_59
    or-int/2addr v8, v13

    .line 3256
    .end local v10    # "spStart":I
    .end local v11    # "spanLine":I
    .end local v12    # "count":I
    :cond_5a
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 3265
    .end local v9    # "i":I
    :cond_5d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5e
    array-length v7, v5

    if-ge v1, v7, :cond_6b

    .line 3266
    aget-object v7, v5, v1

    .line 3267
    .local v7, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v7, v8}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v9

    add-int/2addr v6, v9

    .line 3265
    .end local v7    # "span":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 3270
    .end local v1    # "i":I
    :cond_6b
    return v6
.end method

.method static greylist-max-o getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .registers 6
    .param p0, "text"    # Landroid/text/Spanned;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/text/Spanned;",
            "II",
            "Ljava/lang/Class<",
            "TT;>;)[TT;"
        }
    .end annotation

    .line 3459
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-ne p1, p2, :cond_9

    if-lez p1, :cond_9

    .line 3460
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3463
    :cond_9
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    if-eqz v0, :cond_16

    .line 3464
    move-object v0, p0

    check-cast v0, Landroid/text/SpannableStringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 3466
    :cond_16
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I
    .registers 25
    .param p0, "area"    # Landroid/graphics/RectF;
    .param p1, "lineTop"    # I
    .param p2, "lineBottom"    # I
    .param p3, "lineStartOffset"    # I
    .param p4, "lineStartPos"    # I
    .param p5, "horizontalBounds"    # [F
    .param p6, "runStartOffset"    # I
    .param p7, "runEndOffset"    # I
    .param p8, "runLeft"    # F
    .param p9, "runRight"    # F
    .param p10, "isRtl"    # Z
    .param p11, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p12, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;

    .line 2587
    move/from16 v0, p4

    move-object/from16 v1, p11

    iget v2, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, p9, v2

    const/4 v3, -0x1

    if-ltz v2, :cond_d0

    iget v2, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, p8, v2

    if-lez v2, :cond_15

    move-object/from16 v10, p12

    goto/16 :goto_d2

    .line 2595
    :cond_15
    const/4 v2, 0x1

    if-nez p10, :cond_1e

    iget v4, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, p8

    if-lez v4, :cond_26

    :cond_1e
    if-eqz p10, :cond_29

    iget v4, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v4, v4, p9

    if-ltz v4, :cond_29

    .line 2596
    :cond_26
    move/from16 v4, p6

    .local v4, "firstCharOffset":I
    goto :goto_55

    .line 2598
    .end local v4    # "firstCharOffset":I
    :cond_29
    move/from16 v4, p6

    .line 2599
    .local v4, "low":I
    move/from16 v5, p7

    .line 2601
    .local v5, "high":I
    :goto_2d
    sub-int v6, v5, v4

    if-le v6, v2, :cond_4f

    .line 2602
    add-int v6, v5, v4

    div-int/lit8 v6, v6, 0x2

    .line 2604
    .local v6, "guess":I
    int-to-float v7, v0

    mul-int/lit8 v8, v6, 0x2

    aget v8, p5, v8

    add-float/2addr v7, v8

    .line 2605
    .local v7, "pos":F
    if-nez p10, :cond_43

    iget v8, p0, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v7, v8

    if-gtz v8, :cond_4b

    :cond_43
    if-eqz p10, :cond_4d

    iget v8, p0, Landroid/graphics/RectF;->right:F

    cmpg-float v8, v7, v8

    if-gez v8, :cond_4d

    .line 2606
    :cond_4b
    move v5, v6

    goto :goto_4e

    .line 2608
    :cond_4d
    move v4, v6

    .line 2610
    .end local v7    # "pos":F
    :goto_4e
    goto :goto_2d

    .line 2614
    .end local v6    # "guess":I
    :cond_4f
    if-eqz p10, :cond_53

    move v6, v5

    goto :goto_54

    :cond_53
    move v6, v4

    :goto_54
    move v4, v6

    .line 2620
    .end local v5    # "high":I
    .local v4, "firstCharOffset":I
    :goto_55
    add-int v5, p3, v4

    .line 2621
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v5

    .line 2622
    .local v5, "segmentEndOffset":I
    if-ne v5, v3, :cond_5e

    .line 2625
    return v3

    .line 2627
    :cond_5e
    invoke-virtual {v1, v5}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result v6

    .line 2628
    .local v6, "segmentStartOffset":I
    add-int v7, p3, p7

    if-lt v6, v7, :cond_67

    .line 2631
    return v3

    .line 2635
    :cond_67
    add-int v7, p3, p6

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 2636
    add-int v7, p3, p7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2638
    new-instance v7, Landroid/graphics/RectF;

    int-to-float v8, p1

    int-to-float v9, p2

    const/4 v10, 0x0

    invoke-direct {v7, v10, v8, v10, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 2641
    .local v7, "segmentBounds":Landroid/graphics/RectF;
    :goto_7b
    int-to-float v8, v0

    sub-int v9, v6, p3

    mul-int/lit8 v9, v9, 0x2

    .line 2642
    add-int v9, v9, p10

    aget v9, p5, v9

    add-float/2addr v8, v9

    .line 2643
    .local v8, "segmentStart":F
    if-nez p10, :cond_8d

    iget v9, p0, Landroid/graphics/RectF;->right:F

    cmpl-float v9, v8, v9

    if-gtz v9, :cond_95

    :cond_8d
    if-eqz p10, :cond_96

    iget v9, p0, Landroid/graphics/RectF;->left:F

    cmpg-float v9, v8, v9

    if-gez v9, :cond_96

    .line 2646
    :cond_95
    return v3

    .line 2649
    :cond_96
    int-to-float v9, v0

    sub-int v10, v5, p3

    sub-int/2addr v10, v2

    mul-int/lit8 v10, v10, 0x2

    .line 2650
    xor-int/lit8 v11, p10, 0x1

    add-int/2addr v10, v11

    aget v10, p5, v10

    add-float/2addr v9, v10

    .line 2651
    .local v9, "segmentEnd":F
    if-eqz p10, :cond_a6

    move v10, v9

    goto :goto_a7

    :cond_a6
    move v10, v8

    :goto_a7
    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 2652
    if-eqz p10, :cond_ad

    move v10, v8

    goto :goto_ae

    :cond_ad
    move v10, v9

    :goto_ae
    iput v10, v7, Landroid/graphics/RectF;->right:F

    .line 2653
    move-object/from16 v10, p12

    invoke-interface {v10, v7, p0}, Landroid/text/Layout$TextInclusionStrategy;->isSegmentInside(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result v11

    if-eqz v11, :cond_b9

    .line 2654
    return v6

    .line 2657
    :cond_b9
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->nextStartBoundary(I)I

    move-result v6

    .line 2658
    if-eq v6, v3, :cond_cf

    add-int v11, p3, p7

    if-lt v6, v11, :cond_c4

    goto :goto_cf

    .line 2663
    :cond_c4
    invoke-virtual {v1, v6}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result v5

    .line 2666
    add-int v11, p3, p7

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 2667
    .end local v8    # "segmentStart":F
    .end local v9    # "segmentEnd":F
    goto :goto_7b

    .line 2661
    .restart local v8    # "segmentStart":F
    .restart local v9    # "segmentEnd":F
    :cond_cf
    :goto_cf
    return v3

    .line 2587
    .end local v4    # "firstCharOffset":I
    .end local v5    # "segmentEndOffset":I
    .end local v6    # "segmentStartOffset":I
    .end local v7    # "segmentBounds":Landroid/graphics/RectF;
    .end local v8    # "segmentStart":F
    .end local v9    # "segmentEnd":F
    :cond_d0
    move-object/from16 v10, p12

    .line 2589
    :goto_d2
    return v3
.end method

.method private blacklist getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I
    .registers 27
    .param p1, "line"    # I
    .param p2, "area"    # Landroid/graphics/RectF;
    .param p3, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p4, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;
    .param p5, "getStart"    # Z

    .line 2499
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 2500
    .local v3, "lineTop":I
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v4

    .line 2502
    .local v4, "lineBottom":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2503
    .local v5, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v15

    .line 2504
    .local v15, "lineEndOffset":I
    const/16 v16, -0x1

    if-ne v5, v15, :cond_1a

    .line 2505
    return v16

    .line 2508
    :cond_1a
    sub-int v6, v15, v5

    mul-int/lit8 v6, v6, 0x2

    new-array v7, v6, [F

    .line 2509
    .local v7, "horizontalBounds":[F
    invoke-direct {v0, v1, v7}, Landroid/text/Layout;->fillHorizontalBoundsForLine(I[F)V

    .line 2511
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v6

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v8

    invoke-direct {v0, v1, v6, v8}, Landroid/text/Layout;->getLineStartPos(III)I

    move-result v6

    .line 2514
    .local v6, "lineStartPos":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 2515
    .local v8, "directions":Landroid/text/Layout$Directions;
    const/16 v17, 0x1

    if-eqz p5, :cond_38

    goto :goto_3e

    :cond_38
    invoke-virtual {v8}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 2516
    .local v2, "runIndex":I
    :goto_3e
    if-eqz p5, :cond_46

    invoke-virtual {v8}, Landroid/text/Layout$Directions;->getRunCount()I

    move-result v9

    if-lt v2, v9, :cond_4a

    :cond_46
    if-nez p5, :cond_b7

    if-ltz v2, :cond_b7

    .line 2518
    :cond_4a
    invoke-virtual {v8, v2}, Landroid/text/Layout$Directions;->getRunStart(I)I

    move-result v9

    .line 2519
    .local v9, "runStartOffset":I
    nop

    .line 2520
    invoke-virtual {v8, v2}, Landroid/text/Layout$Directions;->getRunLength(I)I

    move-result v10

    add-int/2addr v10, v9

    sub-int v11, v15, v5

    .line 2519
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 2522
    .local v10, "runEndOffset":I
    invoke-virtual {v8, v2}, Landroid/text/Layout$Directions;->isRunRtl(I)Z

    move-result v12

    .line 2523
    .local v12, "isRtl":Z
    int-to-float v11, v6

    .line 2524
    if-eqz v12, :cond_68

    .line 2525
    add-int/lit8 v13, v10, -0x1

    mul-int/lit8 v13, v13, 0x2

    aget v13, v7, v13

    goto :goto_6c

    .line 2526
    :cond_68
    mul-int/lit8 v13, v9, 0x2

    aget v13, v7, v13

    :goto_6c
    add-float/2addr v11, v13

    .line 2527
    .local v11, "runLeft":F
    int-to-float v13, v6

    .line 2528
    if-eqz v12, :cond_77

    .line 2529
    mul-int/lit8 v14, v9, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v7, v14

    goto :goto_7f

    .line 2530
    :cond_77
    add-int/lit8 v14, v10, -0x1

    mul-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v14, v7, v14

    :goto_7f
    add-float/2addr v13, v14

    .line 2533
    .local v13, "runRight":F
    if-eqz p5, :cond_95

    .line 2534
    move-object/from16 v14, p4

    move/from16 v19, v2

    move-object/from16 v18, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    move-object/from16 v2, p2

    move-object/from16 v13, p3

    .end local v2    # "runIndex":I
    .end local v13    # "runRight":F
    .local v8, "runStartOffset":I
    .local v9, "runEndOffset":I
    .local v10, "runLeft":F
    .local v11, "runRight":F
    .local v18, "directions":Landroid/text/Layout$Directions;
    .local v19, "runIndex":I
    invoke-static/range {v2 .. v14}, Landroid/text/Layout;->getStartOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v20

    goto :goto_a7

    .line 2539
    .end local v18    # "directions":Landroid/text/Layout$Directions;
    .end local v19    # "runIndex":I
    .restart local v2    # "runIndex":I
    .local v8, "directions":Landroid/text/Layout$Directions;
    .local v9, "runStartOffset":I
    .local v10, "runEndOffset":I
    .local v11, "runLeft":F
    .restart local v13    # "runRight":F
    :cond_95
    move/from16 v19, v2

    move-object/from16 v18, v8

    move v8, v9

    move v9, v10

    move v10, v11

    move v11, v13

    .end local v2    # "runIndex":I
    .end local v13    # "runRight":F
    .local v8, "runStartOffset":I
    .local v9, "runEndOffset":I
    .local v10, "runLeft":F
    .local v11, "runRight":F
    .restart local v18    # "directions":Landroid/text/Layout$Directions;
    .restart local v19    # "runIndex":I
    move-object/from16 v2, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    invoke-static/range {v2 .. v14}, Landroid/text/Layout;->getEndOffsetForAreaWithinRun(Landroid/graphics/RectF;IIII[FIIFFZLandroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)I

    move-result v20

    :goto_a7
    nop

    .line 2544
    .local v20, "result":I
    if-ltz v20, :cond_ab

    .line 2545
    return v20

    .line 2548
    :cond_ab
    if-eqz p5, :cond_b0

    move/from16 v2, v17

    goto :goto_b2

    :cond_b0
    move/from16 v2, v16

    :goto_b2
    add-int v2, v19, v2

    .line 2549
    .end local v8    # "runStartOffset":I
    .end local v9    # "runEndOffset":I
    .end local v10    # "runLeft":F
    .end local v11    # "runRight":F
    .end local v12    # "isRtl":Z
    .end local v19    # "runIndex":I
    .end local v20    # "result":I
    .restart local v2    # "runIndex":I
    move-object/from16 v8, v18

    goto :goto_3e

    .line 2516
    .end local v18    # "directions":Landroid/text/Layout$Directions;
    .local v8, "directions":Landroid/text/Layout$Directions;
    :cond_b7
    move/from16 v19, v2

    move-object/from16 v18, v8

    .line 2550
    .end local v2    # "runIndex":I
    .end local v8    # "directions":Landroid/text/Layout$Directions;
    .restart local v18    # "directions":Landroid/text/Layout$Directions;
    .restart local v19    # "runIndex":I
    return v16
.end method

.method private blacklist initSpanColors()V
    .registers 2

    .line 413
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 414
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    if-nez v0, :cond_16

    .line 415
    new-instance v0, Landroid/text/SpanColors;

    invoke-direct {v0}, Landroid/text/SpanColors;-><init>()V

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    goto :goto_1f

    .line 417
    :cond_16
    iget-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    invoke-virtual {v0}, Landroid/text/SpanColors;->recycle()V

    goto :goto_1f

    .line 420
    :cond_1c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/Layout;->mSpanColors:Landroid/text/SpanColors;

    .line 422
    :goto_1f
    return-void
.end method

.method private blacklist isHighContrastTextDark(I)Z
    .registers 8
    .param p1, "color"    # I

    .line 677
    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 678
    .local v0, "lab":[D
    invoke-static {p1, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    .line 679
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method private greylist-max-o isJustificationRequired(I)Z
    .registers 6
    .param p1, "lineNum"    # I

    .line 684
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 685
    :cond_6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    .line 686
    .local v0, "lineEnd":I
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_1f

    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method static synthetic blacklist lambda$fillCharacterBounds$2(II[FIIFFFF)V
    .registers 11
    .param p0, "boundsStart"    # I
    .param p1, "start"    # I
    .param p2, "bounds"    # [F
    .param p3, "index"    # I
    .param p4, "lineNum"    # I
    .param p5, "left"    # F
    .param p6, "lineTop"    # F
    .param p7, "right"    # F
    .param p8, "lineBottom"    # F

    .line 1886
    sub-int v0, p3, p1

    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, p0

    .line 1887
    .local v0, "boundsIndex":I
    aput p5, p2, v0

    .line 1888
    add-int/lit8 v1, v0, 0x1

    aput p6, p2, v1

    .line 1889
    add-int/lit8 v1, v0, 0x2

    aput p7, p2, v1

    .line 1890
    add-int/lit8 v1, v0, 0x3

    aput p8, p2, v1

    .line 1891
    return-void
.end method

.method static synthetic blacklist lambda$getSelectionPath$3(Landroid/graphics/Path;FFFFI)V
    .registers 12
    .param p0, "dest"    # Landroid/graphics/Path;
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F
    .param p5, "textSelectionLayout"    # I

    .line 3113
    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p0    # "dest":Landroid/graphics/Path;
    .end local p1    # "left":F
    .end local p2    # "top":F
    .end local p3    # "right":F
    .end local p4    # "bottom":F
    .local v0, "dest":Landroid/graphics/Path;
    .local v1, "left":F
    .local v2, "top":F
    .local v3, "right":F
    .local v4, "bottom":F
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method static synthetic blacklist lambda$static$0(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 4
    .param p0, "segmentBounds"    # Landroid/graphics/RectF;
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 222
    invoke-virtual {p0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    return v0
.end method

.method static synthetic blacklist lambda$static$1(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .registers 3
    .param p0, "segmentBounds"    # Landroid/graphics/RectF;
    .param p1, "area"    # Landroid/graphics/RectF;

    .line 230
    invoke-virtual {p1, p0}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    return v0
.end method

.method private static blacklist measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Z)F
    .registers 26
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p5, "useBoundsForWidth"    # Z

    .line 3275
    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    const/4 v1, 0x0

    .line 3276
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 3278
    .local v2, "tl":Landroid/text/TextLine;
    move-object/from16 v13, p4

    :try_start_d
    invoke-static {v3, v4, v5, v13, v1}, Landroid/text/MeasuredParagraph;->buildForBidi(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/MeasuredParagraph;)Landroid/text/MeasuredParagraph;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_d .. :try_end_11} :catchall_d7

    move-object v14, v0

    .line 3279
    .end local v1    # "mt":Landroid/text/MeasuredParagraph;
    .local v14, "mt":Landroid/text/MeasuredParagraph;
    :try_start_12
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getChars()[C

    move-result-object v0

    .line 3280
    .local v0, "chars":[C
    array-length v1, v0

    move v15, v1

    .line 3281
    .local v15, "len":I
    const/4 v1, 0x0

    invoke-virtual {v14, v1, v15}, Landroid/text/MeasuredParagraph;->getDirections(II)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 3282
    .local v7, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->getParagraphDir()I

    move-result v6

    .line 3283
    .local v6, "dir":I
    const/4 v8, 0x0

    .line 3284
    .local v8, "hasTabs":Z
    const/4 v9, 0x0

    .line 3286
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v10, 0x0

    .line 3287
    .local v10, "margin":I
    instance-of v11, v3, Landroid/text/Spanned;

    if-eqz v11, :cond_56

    .line 3288
    move-object v11, v3

    check-cast v11, Landroid/text/Spanned;

    .line 3289
    .local v11, "spanned":Landroid/text/Spanned;
    const-class v12, Landroid/text/style/LeadingMarginSpan;

    invoke-static {v11, v4, v5, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    .line 3291
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v1, v12

    move/from16 v16, v10

    const/4 v10, 0x0

    .end local v10    # "margin":I
    .local v16, "margin":I
    :goto_37
    if-ge v10, v1, :cond_51

    aget-object v17, v12, v10

    move-object/from16 v18, v17

    .line 3292
    .local v18, "lms":Landroid/text/style/LeadingMarginSpan;
    move-object/from16 v17, v0

    .end local v0    # "chars":[C
    .local v17, "chars":[C
    const/4 v0, 0x1

    move/from16 v19, v1

    move-object/from16 v1, v18

    .end local v18    # "lms":Landroid/text/style/LeadingMarginSpan;
    .local v1, "lms":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v1, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v0
    :try_end_48
    .catchall {:try_start_12 .. :try_end_48} :catchall_d2

    add-int v16, v16, v0

    .line 3291
    .end local v1    # "lms":Landroid/text/style/LeadingMarginSpan;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v19

    goto :goto_37

    .end local v17    # "chars":[C
    .restart local v0    # "chars":[C
    :cond_51
    move-object/from16 v17, v0

    .end local v0    # "chars":[C
    .restart local v17    # "chars":[C
    move/from16 v0, v16

    goto :goto_59

    .line 3287
    .end local v11    # "spanned":Landroid/text/Spanned;
    .end local v12    # "spans":[Landroid/text/style/LeadingMarginSpan;
    .end local v16    # "margin":I
    .end local v17    # "chars":[C
    .restart local v0    # "chars":[C
    .restart local v10    # "margin":I
    :cond_56
    move-object/from16 v17, v0

    .end local v0    # "chars":[C
    .restart local v17    # "chars":[C
    move v0, v10

    .line 3295
    .end local v10    # "margin":I
    .local v0, "margin":I
    :goto_59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5a
    if-ge v1, v15, :cond_a5

    .line 3296
    :try_start_5c
    aget-char v10, v17, v1

    const/16 v11, 0x9

    if-ne v10, v11, :cond_97

    .line 3297
    const/4 v8, 0x1

    .line 3298
    instance-of v10, v3, Landroid/text/Spanned;

    if-eqz v10, :cond_92

    .line 3299
    move-object v10, v3

    check-cast v10, Landroid/text/Spanned;

    .line 3300
    .local v10, "spanned":Landroid/text/Spanned;
    const-class v11, Landroid/text/style/TabStopSpan;

    invoke-interface {v10, v4, v5, v11}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v11

    .line 3302
    .local v11, "spanEnd":I
    const-class v12, Landroid/text/style/TabStopSpan;

    invoke-static {v10, v4, v11, v12}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Landroid/text/style/TabStopSpan;

    .line 3304
    .local v12, "spans":[Landroid/text/style/TabStopSpan;
    move/from16 v16, v1

    .end local v1    # "i":I
    .local v16, "i":I
    array-length v1, v12

    if-lez v1, :cond_8f

    .line 3305
    new-instance v1, Landroid/text/Layout$TabStops;
    :try_end_7f
    .catchall {:try_start_5c .. :try_end_7f} :catchall_9e

    move-object/from16 v18, v2

    .end local v2    # "tl":Landroid/text/TextLine;
    .local v18, "tl":Landroid/text/TextLine;
    const/high16 v2, 0x41a00000    # 20.0f

    :try_start_83
    invoke-direct {v1, v2, v12}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V
    :try_end_86
    .catchall {:try_start_83 .. :try_end_86} :catchall_88

    move-object v9, v1

    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .local v1, "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_91

    .line 3316
    .end local v0    # "margin":I
    .end local v1    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "hasTabs":Z
    .end local v10    # "spanned":Landroid/text/Spanned;
    .end local v11    # "spanEnd":I
    .end local v12    # "spans":[Landroid/text/style/TabStopSpan;
    .end local v15    # "len":I
    .end local v16    # "i":I
    .end local v17    # "chars":[C
    :catchall_88
    move-exception v0

    move/from16 v4, p5

    move-object v1, v14

    move-object/from16 v2, v18

    goto :goto_da

    .line 3304
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v0    # "margin":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    .restart local v6    # "dir":I
    .restart local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v8    # "hasTabs":Z
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v10    # "spanned":Landroid/text/Spanned;
    .restart local v11    # "spanEnd":I
    .restart local v12    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v15    # "len":I
    .restart local v16    # "i":I
    .restart local v17    # "chars":[C
    :cond_8f
    move-object/from16 v18, v2

    .line 3307
    .end local v2    # "tl":Landroid/text/TextLine;
    .end local v10    # "spanned":Landroid/text/Spanned;
    .end local v11    # "spanEnd":I
    .end local v12    # "spans":[Landroid/text/style/TabStopSpan;
    .restart local v18    # "tl":Landroid/text/TextLine;
    :goto_91
    goto :goto_a9

    .line 3298
    .end local v16    # "i":I
    .end local v18    # "tl":Landroid/text/TextLine;
    .local v1, "i":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    :cond_92
    move/from16 v16, v1

    move-object/from16 v18, v2

    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v16    # "i":I
    .restart local v18    # "tl":Landroid/text/TextLine;
    goto :goto_a9

    .line 3295
    .end local v16    # "i":I
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v1    # "i":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    :cond_97
    move/from16 v16, v1

    move-object/from16 v18, v2

    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v16    # "i":I
    .restart local v18    # "tl":Landroid/text/TextLine;
    add-int/lit8 v1, v16, 0x1

    .end local v16    # "i":I
    .restart local v1    # "i":I
    goto :goto_5a

    .line 3316
    .end local v0    # "margin":I
    .end local v1    # "i":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "hasTabs":Z
    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v15    # "len":I
    .end local v17    # "chars":[C
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    :catchall_9e
    move-exception v0

    move-object/from16 v18, v2

    move/from16 v4, p5

    move-object v1, v14

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v18    # "tl":Landroid/text/TextLine;
    goto :goto_da

    .line 3295
    .end local v18    # "tl":Landroid/text/TextLine;
    .restart local v0    # "margin":I
    .restart local v1    # "i":I
    .restart local v2    # "tl":Landroid/text/TextLine;
    .restart local v6    # "dir":I
    .restart local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v8    # "hasTabs":Z
    .restart local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v15    # "len":I
    .restart local v17    # "chars":[C
    :cond_a5
    move/from16 v16, v1

    move-object/from16 v18, v2

    .line 3311
    .end local v1    # "i":I
    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v18    # "tl":Landroid/text/TextLine;
    :goto_a9
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move-object/from16 v2, p0

    move-object/from16 v1, v18

    .end local v18    # "tl":Landroid/text/TextLine;
    .local v1, "tl":Landroid/text/TextLine;
    :try_start_b0
    invoke-virtual/range {v1 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V
    :try_end_b3
    .catchall {:try_start_b0 .. :try_end_b3} :catchall_cc

    move-object v2, v1

    .line 3314
    .end local v1    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    int-to-float v1, v0

    const/4 v3, 0x0

    move/from16 v4, p5

    :try_start_b8
    invoke-virtual {v2, v3, v3, v4, v3}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3
    :try_end_c0
    .catchall {:try_start_b8 .. :try_end_c0} :catchall_ca

    add-float/2addr v1, v3

    .line 3316
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 3317
    if-eqz v14, :cond_c9

    .line 3318
    invoke-virtual {v14}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 3314
    :cond_c9
    return v1

    .line 3316
    .end local v0    # "margin":I
    .end local v6    # "dir":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .end local v8    # "hasTabs":Z
    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v15    # "len":I
    .end local v17    # "chars":[C
    :catchall_ca
    move-exception v0

    goto :goto_d5

    .end local v2    # "tl":Landroid/text/TextLine;
    .restart local v1    # "tl":Landroid/text/TextLine;
    :catchall_cc
    move-exception v0

    move/from16 v4, p5

    move-object v2, v1

    move-object v1, v14

    .end local v1    # "tl":Landroid/text/TextLine;
    .restart local v2    # "tl":Landroid/text/TextLine;
    goto :goto_da

    :catchall_d2
    move-exception v0

    move/from16 v4, p5

    :goto_d5
    move-object v1, v14

    goto :goto_da

    .end local v14    # "mt":Landroid/text/MeasuredParagraph;
    .local v1, "mt":Landroid/text/MeasuredParagraph;
    :catchall_d7
    move-exception v0

    move/from16 v4, p5

    :goto_da
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 3317
    if-eqz v1, :cond_e2

    .line 3318
    invoke-virtual {v1}, Landroid/text/MeasuredParagraph;->recycle()V

    .line 3320
    :cond_e2
    throw v0
.end method

.method static greylist-max-o nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .registers 10
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    .line 3402
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3403
    .local v0, "nh":F
    const/4 v1, 0x0

    .line 3405
    .local v1, "alltabs":Z
    instance-of v2, p0, Landroid/text/Spanned;

    if-eqz v2, :cond_3f

    .line 3406
    if-nez p4, :cond_14

    .line 3407
    move-object v2, p0

    check-cast v2, Landroid/text/Spanned;

    const-class v3, Landroid/text/style/TabStopSpan;

    invoke-static {v2, p1, p2, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p4

    .line 3408
    const/4 v1, 0x1

    .line 3411
    :cond_14
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    array-length v3, p4

    if-ge v2, v3, :cond_37

    .line 3412
    if-nez v1, :cond_21

    .line 3413
    aget-object v3, p4, v2

    instance-of v3, v3, Landroid/text/style/TabStopSpan;

    if-nez v3, :cond_21

    .line 3414
    goto :goto_34

    .line 3417
    :cond_21
    aget-object v3, p4, v2

    check-cast v3, Landroid/text/style/TabStopSpan;

    invoke-interface {v3}, Landroid/text/style/TabStopSpan;->getTabStop()I

    move-result v3

    .line 3419
    .local v3, "where":I
    int-to-float v4, v3

    cmpg-float v4, v4, v0

    if-gez v4, :cond_34

    int-to-float v4, v3

    cmpl-float v4, v4, p3

    if-lez v4, :cond_34

    .line 3420
    int-to-float v0, v3

    .line 3411
    .end local v3    # "where":I
    :cond_34
    :goto_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3423
    .end local v2    # "i":I
    :cond_37
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v2, v0, v2

    if-eqz v2, :cond_3f

    .line 3424
    return v0

    .line 3427
    :cond_3f
    const/high16 v2, 0x41a00000    # 20.0f

    add-float v3, p3, v2

    div-float/2addr v3, v2

    float-to-int v3, v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    return v3
.end method

.method private static blacklist setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .registers 4
    .param p0, "p"    # Landroid/graphics/Paint;
    .param p1, "blendMode"    # Landroid/graphics/BlendMode;
    .param p2, "outPaint"    # Landroid/graphics/Paint;

    .line 544
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 545
    :cond_4
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 546
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setBlendMode(Landroid/graphics/BlendMode;)V

    .line 548
    const/16 v0, -0x100

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 549
    return-object p2
.end method

.method private static blacklist shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z
    .registers 2
    .param p0, "canvas"    # Landroid/graphics/Canvas;

    .line 540
    invoke-static {}, Lcom/android/graphics/hwui/flags/Flags;->highContrastTextSmallTextRect()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Landroid/graphics/Canvas;->isHighContrastTextEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method


# virtual methods
.method public whitelist computeDrawingBoundingBox()Landroid/graphics/RectF;
    .registers 22

    .line 1304
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1305
    .local v1, "left":F
    const/4 v2, 0x0

    .line 1306
    .local v2, "right":F
    const/4 v3, 0x0

    .line 1307
    .local v3, "top":F
    const/4 v4, 0x0

    .line 1308
    .local v4, "bottom":F
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v5

    .line 1309
    .local v5, "tl":Landroid/text/TextLine;
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    .line 1310
    .local v6, "rectF":Landroid/graphics/RectF;
    const/4 v7, 0x0

    .local v7, "line":I
    :goto_10
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-ge v7, v8, :cond_104

    .line 1311
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v8

    .line 1312
    .local v8, "start":I
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    move-result v9

    .line 1314
    .local v9, "end":I
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v12

    .line 1315
    .local v12, "hasTabs":Z
    const/4 v10, 0x0

    .line 1316
    .local v10, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v12, :cond_43

    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    instance-of v11, v11, Landroid/text/Spanned;

    if-eqz v11, :cond_43

    .line 1319
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v11, Landroid/text/Spanned;

    const-class v13, Landroid/text/style/TabStopSpan;

    invoke-static {v11, v8, v9, v13}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Landroid/text/style/TabStopSpan;

    .line 1321
    .local v11, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v13, v11

    if-lez v13, :cond_43

    .line 1322
    new-instance v13, Landroid/text/Layout$TabStops;

    const/high16 v14, 0x41a00000    # 20.0f

    invoke-direct {v13, v14, v11}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    move-object v10, v13

    goto :goto_44

    .line 1325
    .end local v11    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_43
    move-object v13, v10

    .end local v10    # "tabStops":Landroid/text/Layout$TabStops;
    .local v13, "tabStops":Landroid/text/Layout$TabStops;
    :goto_44
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v11

    .line 1327
    .local v11, "directions":Landroid/text/Layout$Directions;
    if-nez v11, :cond_52

    .line 1328
    move v0, v3

    move-object/from16 v16, v5

    move-object/from16 v18, v6

    move v3, v7

    goto/16 :goto_f9

    .line 1330
    :cond_52
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v10

    .line 1332
    .local v10, "dir":I
    move-object v14, v6

    .end local v6    # "rectF":Landroid/graphics/RectF;
    .local v14, "rectF":Landroid/graphics/RectF;
    iget-object v6, v0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 1333
    .local v6, "paint":Landroid/text/TextPaint;
    iget-object v15, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 1334
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 1335
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 1336
    iget-object v15, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1337
    move-object/from16 v16, v14

    .end local v14    # "rectF":Landroid/graphics/RectF;
    .local v16, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v14

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v17

    invoke-virtual {v0, v7}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v18

    add-int v17, v17, v18

    .line 1338
    move-object/from16 v18, v16

    .end local v16    # "rectF":Landroid/graphics/RectF;
    .local v18, "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v16

    .line 1336
    move/from16 v19, v17

    move/from16 v17, v3

    move v3, v7

    move-object v7, v15

    move/from16 v15, v19

    move/from16 v19, v4

    move-object/from16 v4, v18

    .end local v7    # "line":I
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .local v3, "line":I
    .local v4, "rectF":Landroid/graphics/RectF;
    .local v17, "top":F
    .local v19, "bottom":F
    invoke-virtual/range {v5 .. v16}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 1339
    invoke-direct {v0, v3}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v7

    if-eqz v7, :cond_a2

    .line 1340
    iget v7, v0, Landroid/text/Layout;->mJustificationMode:I

    invoke-direct {v0, v3}, Landroid/text/Layout;->getJustifyWidth(I)F

    move-result v14

    invoke-virtual {v5, v7, v14}, Landroid/text/TextLine;->justify(IF)V

    .line 1342
    :cond_a2
    const/4 v7, 0x0

    const/4 v14, 0x0

    invoke-virtual {v5, v14, v4, v7, v14}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    .line 1344
    iget v7, v4, Landroid/graphics/RectF;->left:F

    .line 1345
    .local v7, "lineLeft":F
    iget v14, v4, Landroid/graphics/RectF;->right:F

    .line 1346
    .local v14, "lineRight":F
    iget v15, v4, Landroid/graphics/RectF;->top:F

    move-object/from16 v16, v5

    .end local v5    # "tl":Landroid/text/TextLine;
    .local v16, "tl":Landroid/text/TextLine;
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v15, v5

    .line 1347
    .local v15, "lineTop":F
    iget v5, v4, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v18, v4

    .end local v4    # "rectF":Landroid/graphics/RectF;
    .restart local v18    # "rectF":Landroid/graphics/RectF;
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v5, v4

    .line 1348
    .local v5, "lineBottom":F
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    const/4 v0, -0x1

    if-ne v4, v0, :cond_d2

    .line 1349
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v7, v0

    .line 1350
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v14, v0

    .line 1353
    :cond_d2
    if-nez v3, :cond_df

    .line 1354
    move v0, v7

    .line 1355
    .end local v1    # "left":F
    .local v0, "left":F
    move v1, v14

    .line 1356
    .end local v2    # "right":F
    .local v1, "right":F
    move v2, v15

    .line 1357
    .end local v17    # "top":F
    .local v2, "top":F
    move v4, v5

    move/from16 v20, v1

    move v1, v0

    move v0, v2

    move/from16 v2, v20

    .end local v19    # "bottom":F
    .local v4, "bottom":F
    goto :goto_f9

    .line 1359
    .end local v0    # "left":F
    .end local v4    # "bottom":F
    .local v1, "left":F
    .local v2, "right":F
    .restart local v17    # "top":F
    .restart local v19    # "bottom":F
    :cond_df
    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 1360
    .end local v1    # "left":F
    .restart local v0    # "left":F
    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1361
    .end local v2    # "right":F
    .local v1, "right":F
    move/from16 v4, v17

    .end local v17    # "top":F
    .local v4, "top":F
    invoke-static {v4, v15}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 1362
    .end local v4    # "top":F
    .local v2, "top":F
    move/from16 v4, v19

    .end local v19    # "bottom":F
    .local v4, "bottom":F
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    move/from16 v20, v1

    move v1, v0

    move v0, v2

    move/from16 v2, v20

    .line 1310
    .end local v5    # "lineBottom":F
    .end local v6    # "paint":Landroid/text/TextPaint;
    .end local v7    # "lineLeft":F
    .end local v8    # "start":I
    .end local v9    # "end":I
    .end local v10    # "dir":I
    .end local v11    # "directions":Landroid/text/Layout$Directions;
    .end local v12    # "hasTabs":Z
    .end local v13    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v14    # "lineRight":F
    .end local v15    # "lineTop":F
    .local v0, "top":F
    .local v1, "left":F
    .local v2, "right":F
    :goto_f9
    add-int/lit8 v7, v3, 0x1

    move v3, v0

    move-object/from16 v5, v16

    move-object/from16 v6, v18

    move-object/from16 v0, p0

    .end local v3    # "line":I
    .local v7, "line":I
    goto/16 :goto_10

    .end local v0    # "top":F
    .end local v16    # "tl":Landroid/text/TextLine;
    .end local v18    # "rectF":Landroid/graphics/RectF;
    .local v3, "top":F
    .local v5, "tl":Landroid/text/TextLine;
    .local v6, "rectF":Landroid/graphics/RectF;
    :cond_104
    move v0, v4

    move-object/from16 v16, v5

    move v4, v3

    .line 1365
    .end local v3    # "top":F
    .end local v5    # "tl":Landroid/text/TextLine;
    .end local v7    # "line":I
    .local v0, "bottom":F
    .local v4, "top":F
    .restart local v16    # "tl":Landroid/text/TextLine;
    invoke-static/range {v16 .. v16}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 1366
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v1, v4, v2, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v3
.end method

.method public whitelist draw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 452
    const/4 v0, 0x0

    move-object v1, v0

    check-cast v1, Landroid/graphics/Path;

    move-object v1, v0

    check-cast v1, Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 453
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "selectionHighlight"    # Landroid/graphics/Path;
    .param p3, "selectionHighlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    .line 470
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "selectionHighlight":Landroid/graphics/Path;
    .end local p3    # "selectionHighlightPaint":Landroid/graphics/Paint;
    .end local p4    # "cursorOffsetVertical":I
    .local v1, "canvas":Landroid/graphics/Canvas;
    .local v4, "selectionHighlight":Landroid/graphics/Path;
    .local v5, "selectionHighlightPaint":Landroid/graphics/Paint;
    .local v6, "cursorOffsetVertical":I
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    .line 471
    return-void
.end method

.method public whitelist draw(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .registers 20
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "selectionPath"    # Landroid/graphics/Path;
    .param p5, "selectionPaint"    # Landroid/graphics/Paint;
    .param p6, "cursorOffsetVertical"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "I)V"
        }
    .end annotation

    .line 502
    .local p2, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p3, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    const/4 v2, 0x0

    .line 503
    .local v2, "leftShift":F
    iget-boolean v3, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    const/4 v9, 0x0

    if-eqz v3, :cond_1c

    iget-boolean v3, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    if-eqz v3, :cond_1c

    .line 504
    invoke-virtual {p0}, Landroid/text/Layout;->computeDrawingBoundingBox()Landroid/graphics/RectF;

    move-result-object v3

    .line 505
    .local v3, "drawingRect":Landroid/graphics/RectF;
    iget v4, v3, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v4, v9

    if-gez v4, :cond_1c

    .line 506
    iget v4, v3, Landroid/graphics/RectF;->left:F

    neg-float v2, v4

    .line 507
    invoke-virtual {p1, v2, v9}, Landroid/graphics/Canvas;->translate(FF)V

    move v10, v2

    goto :goto_1d

    .line 510
    .end local v3    # "drawingRect":Landroid/graphics/RectF;
    :cond_1c
    move v10, v2

    .end local v2    # "leftShift":F
    .local v10, "leftShift":F
    :goto_1d
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v11

    .line 511
    .local v11, "lineRange":J
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v7

    .line 512
    .local v7, "firstLine":I
    invoke-static {v11, v12}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v8

    .line 513
    .local v8, "lastLine":I
    if-gez v8, :cond_2c

    return-void

    .line 515
    :cond_2c
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 516
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    goto :goto_44

    .line 518
    :cond_36
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 522
    :goto_44
    invoke-virtual {p0, p1, v7, v8}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 527
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 528
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v0 .. v8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 532
    :cond_5b
    cmpl-float v0, v10, v9

    if-eqz v0, :cond_63

    .line 535
    neg-float v0, v10

    invoke-virtual {p1, v0, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 537
    :cond_63
    return-void
.end method

.method public whitelist drawBackground(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 584
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 585
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 586
    .local v2, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v3

    .line 587
    .local v3, "lastLine":I
    if-gez v3, :cond_f

    return-void

    .line 588
    :cond_f
    invoke-virtual {p0, p1, v2, v3}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 589
    return-void
.end method

.method public greylist-max-r drawBackground(Landroid/graphics/Canvas;II)V
    .registers 25
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 949
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p3}, Landroid/text/Layout;->drawHighContrastBackground(Landroid/graphics/Canvas;II)V

    .line 955
    iget-boolean v2, v0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v2, :cond_e7

    .line 956
    iget-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    if-nez v2, :cond_18

    .line 957
    new-instance v2, Landroid/text/SpanSet;

    const-class v3, Landroid/text/style/LineBackgroundSpan;

    invoke-direct {v2, v3}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    iput-object v2, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    .line 960
    :cond_18
    iget-object v2, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    move-object v11, v2

    check-cast v11, Landroid/text/Spanned;

    .line 961
    .local v11, "buffer":Landroid/text/Spanned;
    invoke-interface {v11}, Landroid/text/Spanned;->length()I

    move-result v2

    .line 962
    .local v2, "textLength":I
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    const/4 v4, 0x0

    invoke-virtual {v3, v11, v4, v2}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    .line 964
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    if-lez v3, :cond_df

    .line 965
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    .line 966
    .local v3, "previousLineBottom":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 967
    .local v4, "previousLineEnd":I
    sget-object v5, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 968
    .local v5, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v6, 0x0

    .line 969
    .local v6, "spansLength":I
    move-object v7, v5

    .end local v5    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v7, "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 970
    .local v5, "paint":Landroid/text/TextPaint;
    const/4 v8, 0x0

    .line 971
    .local v8, "spanEnd":I
    move-object v9, v7

    .end local v7    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v9, "spans":[Landroid/text/style/ParagraphStyle;
    iget v7, v0, Landroid/text/Layout;->mWidth:I

    .line 972
    .local v7, "width":I
    move/from16 v10, p2

    move v12, v8

    move v8, v3

    move v3, v12

    move v12, v4

    move v14, v10

    .end local v4    # "previousLineEnd":I
    .local v3, "spanEnd":I
    .local v8, "previousLineBottom":I
    .local v12, "previousLineEnd":I
    .local v14, "i":I
    :goto_46
    move/from16 v15, p3

    if-gt v14, v15, :cond_dc

    .line 973
    move v4, v12

    .line 974
    .restart local v4    # "previousLineEnd":I
    .local v12, "start":I
    add-int/lit8 v10, v14, 0x1

    invoke-virtual {v0, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v13

    .line 975
    .local v13, "end":I
    move/from16 v16, v13

    .line 977
    .end local v4    # "previousLineEnd":I
    .local v16, "previousLineEnd":I
    move v10, v8

    .line 978
    .local v8, "ltop":I
    .local v10, "previousLineBottom":I
    add-int/lit8 v4, v14, 0x1

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 979
    .local v4, "lbottom":I
    move/from16 v17, v4

    .line 980
    .end local v10    # "previousLineBottom":I
    .local v17, "previousLineBottom":I
    invoke-virtual {v0, v14}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v10

    sub-int v10, v4, v10

    .line 982
    .local v10, "lbaseline":I
    if-lt v13, v3, :cond_a8

    .line 985
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1, v12, v2}, Landroid/text/SpanSet;->getNextTransition(II)I

    move-result v1

    .line 987
    .end local v3    # "spanEnd":I
    .local v1, "spanEnd":I
    const/4 v3, 0x0

    .line 989
    .end local v6    # "spansLength":I
    .local v3, "spansLength":I
    if-ne v12, v13, :cond_73

    if-nez v12, :cond_70

    goto :goto_73

    :cond_70
    move-object/from16 v18, v9

    goto :goto_ac

    .line 992
    :cond_73
    :goto_73
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_74
    move/from16 v18, v1

    .end local v1    # "spanEnd":I
    .local v18, "spanEnd":I
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget v1, v1, Landroid/text/SpanSet;->numberOfSpans:I

    if-ge v6, v1, :cond_a3

    .line 995
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanStarts:[I

    aget v1, v1, v6

    if-ge v1, v13, :cond_9e

    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spanEnds:[I

    aget v1, v1, v6

    if-gt v1, v12, :cond_8d

    .line 996
    goto :goto_9e

    .line 997
    :cond_8d
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    iget-object v1, v1, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    check-cast v1, [Landroid/text/style/LineBackgroundSpan;

    aget-object v1, v1, v6

    invoke-static {v9, v3, v1}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/ParagraphStyle;

    .line 999
    .end local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v3, v3, 0x1

    move-object v9, v1

    .line 992
    .end local v1    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_9e
    :goto_9e
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v18

    goto :goto_74

    :cond_a3
    move/from16 v1, v18

    move-object/from16 v18, v9

    goto :goto_ac

    .line 982
    .end local v18    # "spanEnd":I
    .local v3, "spanEnd":I
    .local v6, "spansLength":I
    :cond_a8
    move v1, v3

    move v3, v6

    move-object/from16 v18, v9

    .line 1004
    .end local v6    # "spansLength":I
    .end local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v1, "spanEnd":I
    .local v3, "spansLength":I
    .local v18, "spans":[Landroid/text/style/ParagraphStyle;
    :goto_ac
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_ad
    if-ge v6, v3, :cond_c7

    .line 1005
    aget-object v9, v18, v6

    check-cast v9, Landroid/text/style/LineBackgroundSpan;

    .line 1006
    .local v9, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    move/from16 v19, v6

    .end local v6    # "n":I
    .local v19, "n":I
    const/4 v6, 0x0

    move/from16 v20, v3

    move-object v3, v9

    move v9, v10

    move v10, v4

    move-object/from16 v4, p1

    .end local v4    # "lbottom":I
    .local v3, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    .local v9, "lbaseline":I
    .local v10, "lbottom":I
    .local v20, "spansLength":I
    invoke-interface/range {v3 .. v14}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    .line 1004
    .end local v3    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    add-int/lit8 v6, v19, 0x1

    move v4, v10

    move/from16 v3, v20

    move v10, v9

    .end local v19    # "n":I
    .restart local v6    # "n":I
    goto :goto_ad

    .end local v9    # "lbaseline":I
    .end local v20    # "spansLength":I
    .local v3, "spansLength":I
    .restart local v4    # "lbottom":I
    .local v10, "lbaseline":I
    :cond_c7
    move/from16 v20, v3

    move/from16 v19, v6

    move v9, v10

    move v10, v4

    .line 972
    .end local v3    # "spansLength":I
    .end local v4    # "lbottom":I
    .end local v6    # "n":I
    .end local v8    # "ltop":I
    .end local v10    # "lbaseline":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .restart local v20    # "spansLength":I
    add-int/lit8 v14, v14, 0x1

    move v3, v1

    move/from16 v12, v16

    move/from16 v8, v17

    move-object/from16 v9, v18

    move/from16 v6, v20

    move/from16 v1, p2

    goto/16 :goto_46

    .end local v1    # "spanEnd":I
    .end local v16    # "previousLineEnd":I
    .end local v17    # "previousLineBottom":I
    .end local v18    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    .local v3, "spanEnd":I
    .local v6, "spansLength":I
    .local v8, "previousLineBottom":I
    .local v9, "spans":[Landroid/text/style/ParagraphStyle;
    .local v12, "previousLineEnd":I
    :cond_dc
    move v10, v8

    move v4, v12

    .end local v8    # "previousLineBottom":I
    .end local v12    # "previousLineEnd":I
    .local v4, "previousLineEnd":I
    .local v10, "previousLineBottom":I
    goto :goto_e1

    .line 964
    .end local v3    # "spanEnd":I
    .end local v4    # "previousLineEnd":I
    .end local v5    # "paint":Landroid/text/TextPaint;
    .end local v6    # "spansLength":I
    .end local v7    # "width":I
    .end local v9    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v10    # "previousLineBottom":I
    .end local v14    # "i":I
    :cond_df
    move/from16 v15, p3

    .line 1012
    :goto_e1
    iget-object v1, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    invoke-virtual {v1}, Landroid/text/SpanSet;->recycle()V

    goto :goto_e9

    .line 955
    .end local v2    # "textLength":I
    .end local v11    # "buffer":Landroid/text/Spanned;
    :cond_e7
    move/from16 v15, p3

    .line 1014
    :goto_e9
    return-void
.end method

.method public blacklist drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "selectionPath"    # Landroid/graphics/Path;
    .param p5, "selectionPaint"    # Landroid/graphics/Paint;
    .param p6, "cursorOffsetVertical"    # I
    .param p7, "firstLine"    # I
    .param p8, "lastLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    .line 620
    .local p2, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p3, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    if-nez p2, :cond_5

    if-nez p3, :cond_5

    .line 621
    return-void

    .line 623
    :cond_5
    const/4 v0, 0x0

    if-eqz p6, :cond_c

    int-to-float v1, p6

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 625
    :cond_c
    :try_start_c
    invoke-direct {p0, p1}, Landroid/text/Layout;->determineHighContrastHighlightBlendMode(Landroid/graphics/Canvas;)Landroid/graphics/BlendMode;

    move-result-object v1

    .line 626
    .local v1, "blendMode":Landroid/graphics/BlendMode;
    if-eqz p2, :cond_56

    .line 627
    if-eqz p3, :cond_4e

    .line 631
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_46

    .line 636
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1f
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 637
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    .line 638
    .local v3, "highlight":Landroid/graphics/Path;
    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Paint;

    .line 639
    .local v4, "highlightPaint":Landroid/graphics/Paint;
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_3e

    .line 640
    iget-object v5, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {v4, v1, v5}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v5

    move-object v4, v5

    .line 644
    :cond_3e
    if-eqz v3, :cond_43

    .line 645
    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 636
    .end local v3    # "highlight":Landroid/graphics/Path;
    .end local v4    # "highlightPaint":Landroid/graphics/Paint;
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 632
    .end local v2    # "i":I
    :cond_46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "The highlight path size is different from the size of highlight paints"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/text/Layout;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .end local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .end local p4    # "selectionPath":Landroid/graphics/Path;
    .end local p5    # "selectionPaint":Landroid/graphics/Paint;
    .end local p6    # "cursorOffsetVertical":I
    .end local p7    # "firstLine":I
    .end local p8    # "lastLine":I
    throw v2

    .line 628
    .restart local p0    # "this":Landroid/text/Layout;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .restart local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .restart local p4    # "selectionPath":Landroid/graphics/Path;
    .restart local p5    # "selectionPaint":Landroid/graphics/Paint;
    .restart local p6    # "cursorOffsetVertical":I
    .restart local p7    # "firstLine":I
    .restart local p8    # "lastLine":I
    :cond_4e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "if highlight is specified, highlightPaint must be specified."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/text/Layout;
    .end local p1    # "canvas":Landroid/graphics/Canvas;
    .end local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .end local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .end local p4    # "selectionPath":Landroid/graphics/Path;
    .end local p5    # "selectionPaint":Landroid/graphics/Paint;
    .end local p6    # "cursorOffsetVertical":I
    .end local p7    # "firstLine":I
    .end local p8    # "lastLine":I
    throw v2

    .line 650
    .restart local p0    # "this":Landroid/text/Layout;
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    .restart local p2    # "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .restart local p3    # "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    .restart local p4    # "selectionPath":Landroid/graphics/Path;
    .restart local p5    # "selectionPaint":Landroid/graphics/Paint;
    .restart local p6    # "cursorOffsetVertical":I
    .restart local p7    # "firstLine":I
    .restart local p8    # "lastLine":I
    :cond_56
    if-eqz p4, :cond_68

    .line 651
    invoke-static {p1}, Landroid/text/Layout;->shouldDrawHighlightsOnTop(Landroid/graphics/Canvas;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 652
    iget-object v2, p0, Landroid/text/Layout;->mWorkPlainPaint:Landroid/graphics/Paint;

    invoke-static {p5, v1, v2}, Landroid/text/Layout;->setToHighlightPaint(Landroid/graphics/Paint;Landroid/graphics/BlendMode;Landroid/graphics/Paint;)Landroid/graphics/Paint;

    move-result-object v2

    move-object p5, v2

    .line 655
    :cond_65
    invoke-virtual {p1, p4, p5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
    :try_end_68
    .catchall {:try_start_c .. :try_end_68} :catchall_70

    .line 658
    .end local v1    # "blendMode":Landroid/graphics/BlendMode;
    :cond_68
    if-eqz p6, :cond_6f

    neg-int v1, p6

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 660
    :cond_6f
    return-void

    .line 658
    :catchall_70
    move-exception v1

    if-eqz p6, :cond_78

    neg-int v2, p6

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 659
    :cond_78
    throw v1
.end method

.method public whitelist drawText(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 564
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    move-result-wide v0

    .line 565
    .local v0, "lineRange":J
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    move-result v2

    .line 566
    .local v2, "firstLine":I
    invoke-static {v0, v1}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    move-result v3

    .line 567
    .local v3, "lastLine":I
    if-gez v3, :cond_f

    return-void

    .line 568
    :cond_f
    invoke-virtual {p0, p1, v2, v3}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    .line 569
    return-void
.end method

.method public greylist-max-r drawText(Landroid/graphics/Canvas;II)V
    .registers 39
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    .line 775
    move-object/from16 v12, p0

    move/from16 v13, p2

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    .line 776
    .local v0, "previousLineBottom":I
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 777
    .local v1, "previousLineEnd":I
    sget-object v2, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    .line 778
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    const/4 v3, 0x0

    .line 779
    .local v3, "spanEnd":I
    iget-object v15, v12, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 780
    .local v15, "paint":Landroid/text/TextPaint;
    iget-object v4, v12, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v15, v4}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 781
    iget-object v8, v12, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 783
    .local v8, "buf":Ljava/lang/CharSequence;
    iget-object v4, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 784
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    const/4 v5, 0x0

    .line 785
    .local v5, "tabStops":Landroid/text/Layout$TabStops;
    const/4 v6, 0x0

    .line 787
    .local v6, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v14

    .line 791
    .local v14, "tl":Landroid/text/TextLine;
    move/from16 v7, p2

    move-object v9, v5

    move v5, v0

    move-object v0, v9

    move v9, v1

    move v1, v7

    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    .local v1, "lineNum":I
    .local v5, "previousLineBottom":I
    .local v9, "previousLineEnd":I
    :goto_27
    move/from16 v7, p3

    if-gt v1, v7, :cond_341

    .line 792
    move/from16 v17, v9

    .line 793
    .local v9, "start":I
    .local v17, "previousLineEnd":I
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {v12, v10}, Landroid/text/Layout;->getLineStart(I)I

    move-result v10

    .line 794
    .end local v17    # "previousLineEnd":I
    .local v10, "previousLineEnd":I
    invoke-direct {v12, v1}, Landroid/text/Layout;->isJustificationRequired(I)Z

    move-result v26

    .line 795
    .local v26, "justify":Z
    const/4 v11, 0x1

    invoke-direct {v12, v1, v9, v10, v11}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v18

    .line 797
    .local v18, "end":I
    move/from16 v16, v11

    invoke-virtual {v12, v1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 798
    invoke-virtual {v12, v1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v11

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 800
    move/from16 v19, v5

    .line 801
    .local v19, "ltop":I
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v12, v11}, Landroid/text/Layout;->getLineTop(I)I

    move-result v21

    .line 802
    .local v21, "lbottom":I
    move/from16 v27, v21

    .line 803
    .end local v5    # "previousLineBottom":I
    .local v27, "previousLineBottom":I
    invoke-virtual {v12, v1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v5

    sub-int v20, v21, v5

    .line 805
    .local v20, "lbaseline":I
    move-object v11, v4

    .end local v4    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v11, "paraAlign":Landroid/text/Layout$Alignment;
    invoke-virtual {v12, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v4

    .line 806
    .local v4, "dir":I
    const/4 v5, 0x0

    .line 807
    .local v5, "left":I
    move-object/from16 v22, v0

    .end local v0    # "tabStops":Landroid/text/Layout$TabStops;
    .local v22, "tabStops":Landroid/text/Layout$TabStops;
    iget v0, v12, Landroid/text/Layout;->mWidth:I

    .line 809
    .local v0, "right":I
    move/from16 v17, v0

    .end local v0    # "right":I
    .local v17, "right":I
    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    move-object/from16 v23, v14

    .end local v14    # "tl":Landroid/text/TextLine;
    .local v23, "tl":Landroid/text/TextLine;
    if-eqz v0, :cond_1eb

    .line 810
    move-object v0, v8

    check-cast v0, Landroid/text/Spanned;

    .line 811
    .local v0, "sp":Landroid/text/Spanned;
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 812
    .local v14, "textLength":I
    if-eqz v9, :cond_88

    move-object/from16 v25, v2

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v25, "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v2, v9, -0x1

    invoke-interface {v8, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    move/from16 v28, v5

    .end local v5    # "left":I
    .local v28, "left":I
    const/16 v5, 0xa

    if-ne v2, v5, :cond_86

    goto :goto_8c

    :cond_86
    const/4 v2, 0x0

    goto :goto_8e

    .end local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v28    # "left":I
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v5    # "left":I
    :cond_88
    move-object/from16 v25, v2

    move/from16 v28, v5

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v5    # "left":I
    .restart local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v28    # "left":I
    :goto_8c
    move/from16 v2, v16

    .line 824
    .local v2, "isFirstParaLine":Z
    :goto_8e
    if-lt v9, v3, :cond_cf

    if-eq v1, v13, :cond_98

    if-eqz v2, :cond_95

    goto :goto_98

    :cond_95
    move/from16 v29, v2

    goto :goto_d1

    .line 825
    :cond_98
    :goto_98
    const-class v5, Landroid/text/style/ParagraphStyle;

    invoke-interface {v0, v9, v14, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v3

    .line 827
    const-class v5, Landroid/text/style/ParagraphStyle;

    invoke-static {v0, v9, v3, v5}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ParagraphStyle;

    .line 829
    .end local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v5, "spans":[Landroid/text/style/ParagraphStyle;
    iget-object v11, v12, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 830
    move/from16 v29, v2

    .end local v2    # "isFirstParaLine":Z
    .local v29, "isFirstParaLine":Z
    array-length v2, v5

    add-int/lit8 v2, v2, -0x1

    .local v2, "n":I
    :goto_ad
    if-ltz v2, :cond_c3

    .line 831
    move/from16 v25, v2

    .end local v2    # "n":I
    .local v25, "n":I
    aget-object v2, v5, v25

    instance-of v2, v2, Landroid/text/style/AlignmentSpan;

    if-eqz v2, :cond_c0

    .line 832
    aget-object v2, v5, v25

    check-cast v2, Landroid/text/style/AlignmentSpan;

    invoke-interface {v2}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v2

    .line 833
    .end local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    goto :goto_c6

    .line 830
    .end local v2    # "paraAlign":Landroid/text/Layout$Alignment;
    .restart local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    :cond_c0
    add-int/lit8 v2, v25, -0x1

    .end local v25    # "n":I
    .local v2, "n":I
    goto :goto_ad

    :cond_c3
    move/from16 v25, v2

    .end local v2    # "n":I
    .restart local v25    # "n":I
    move-object v2, v11

    .line 837
    .end local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v25    # "n":I
    .local v2, "paraAlign":Landroid/text/Layout$Alignment;
    :goto_c6
    const/4 v6, 0x0

    move-object/from16 v30, v2

    move-object v2, v5

    move/from16 v25, v3

    move/from16 v31, v6

    goto :goto_d9

    .line 824
    .end local v5    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v29    # "isFirstParaLine":Z
    .local v2, "isFirstParaLine":Z
    .restart local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v25, "spans":[Landroid/text/style/ParagraphStyle;
    :cond_cf
    move/from16 v29, v2

    .line 842
    .end local v2    # "isFirstParaLine":Z
    .restart local v29    # "isFirstParaLine":Z
    :goto_d1
    move-object/from16 v30, v11

    move-object/from16 v2, v25

    move/from16 v31, v6

    move/from16 v25, v3

    .end local v3    # "spanEnd":I
    .end local v6    # "tabStopsIsInitialized":Z
    .end local v11    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v25, "spanEnd":I
    .local v30, "paraAlign":Landroid/text/Layout$Alignment;
    .local v31, "tabStopsIsInitialized":Z
    :goto_d9
    array-length v3, v2

    .line 843
    .local v3, "length":I
    move/from16 v5, v29

    .line 844
    .local v5, "useFirstLineMargin":Z
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_dd
    if-ge v6, v3, :cond_10c

    .line 845
    aget-object v11, v2, v6

    instance-of v11, v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    if-eqz v11, :cond_101

    .line 846
    aget-object v11, v2, v6

    check-cast v11, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    invoke-interface {v11}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    move-result v11

    .line 847
    .local v11, "count":I
    move-object/from16 v32, v2

    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v32, "spans":[Landroid/text/style/ParagraphStyle;
    aget-object v2, v32, v6

    invoke-interface {v0, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v12, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v2

    .line 850
    .local v2, "startLine":I
    move-object/from16 v33, v0

    .end local v0    # "sp":Landroid/text/Spanned;
    .local v33, "sp":Landroid/text/Spanned;
    add-int v0, v2, v11

    if-ge v1, v0, :cond_105

    .line 851
    const/4 v5, 0x1

    .line 852
    goto :goto_110

    .line 845
    .end local v11    # "count":I
    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "sp":Landroid/text/Spanned;
    .restart local v0    # "sp":Landroid/text/Spanned;
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    :cond_101
    move-object/from16 v33, v0

    move-object/from16 v32, v2

    .line 844
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v33    # "sp":Landroid/text/Spanned;
    :cond_105
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v32

    move-object/from16 v0, v33

    goto :goto_dd

    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "sp":Landroid/text/Spanned;
    .restart local v0    # "sp":Landroid/text/Spanned;
    .restart local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    :cond_10c
    move-object/from16 v33, v0

    move-object/from16 v32, v2

    .line 856
    .end local v0    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v6    # "n":I
    .restart local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v33    # "sp":Landroid/text/Spanned;
    :goto_110
    const/4 v0, 0x0

    .local v0, "n":I
    :goto_111
    if-ge v0, v3, :cond_1c2

    .line 857
    aget-object v2, v32, v0

    instance-of v2, v2, Landroid/text/style/LeadingMarginSpan;

    if-eqz v2, :cond_181

    .line 858
    aget-object v2, v32, v0

    check-cast v2, Landroid/text/style/LeadingMarginSpan;

    .line 859
    .local v2, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_151

    .line 860
    move v13, v1

    move/from16 v16, v3

    move/from16 v3, v17

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v11, v29

    move-object/from16 v1, p1

    move/from16 v17, v0

    move-object v0, v2

    move/from16 v29, v10

    move-object v2, v15

    move/from16 v10, v18

    move-object/from16 v15, v22

    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v19

    .end local v1    # "lineNum":I
    .end local v19    # "ltop":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v2, "paint":Landroid/text/TextPaint;
    .local v3, "right":I
    .local v5, "ltop":I
    .local v6, "lbaseline":I
    .local v7, "lbottom":I
    .local v10, "end":I
    .local v11, "isFirstParaLine":Z
    .local v13, "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .local v16, "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v29, "previousLineEnd":I
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 863
    move/from16 v19, v3

    .end local v3    # "right":I
    .local v19, "right":I
    invoke-interface {v0, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v1

    sub-int v1, v19, v1

    move-object/from16 v12, p0

    move/from16 v19, v1

    move v0, v5

    move v1, v7

    move v5, v4

    move v4, v6

    .end local v19    # "right":I
    .local v1, "right":I
    goto/16 :goto_19f

    .line 865
    .end local v6    # "lbaseline":I
    .end local v7    # "lbottom":I
    .end local v11    # "isFirstParaLine":Z
    .end local v13    # "lineNum":I
    .end local v16    # "length":I
    .local v0, "n":I
    .local v1, "lineNum":I
    .local v2, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v3, "length":I
    .local v5, "useFirstLineMargin":Z
    .local v10, "previousLineEnd":I
    .local v14, "textLength":I
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v29, "isFirstParaLine":Z
    :cond_151
    move v13, v1

    move/from16 v16, v3

    move/from16 v6, v20

    move/from16 v7, v21

    move/from16 v11, v29

    move/from16 v29, v10

    move/from16 v10, v18

    move/from16 v18, v14

    move v14, v5

    move/from16 v5, v19

    move/from16 v19, v17

    move/from16 v17, v0

    move-object v0, v2

    move-object v2, v15

    move-object/from16 v15, v22

    .end local v1    # "lineNum":I
    .end local v3    # "length":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "margin":Landroid/text/style/LeadingMarginSpan;
    .local v2, "paint":Landroid/text/TextPaint;
    .local v5, "ltop":I
    .restart local v6    # "lbaseline":I
    .restart local v7    # "lbottom":I
    .local v10, "end":I
    .restart local v11    # "isFirstParaLine":Z
    .restart local v13    # "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v19, "right":I
    .local v29, "previousLineEnd":I
    move-object/from16 v12, p0

    move-object/from16 v1, p1

    move/from16 v3, v28

    .end local v28    # "left":I
    .local v3, "left":I
    invoke-interface/range {v0 .. v12}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    .line 868
    move v1, v6

    move-object v6, v0

    move v0, v5

    move v5, v4

    move v4, v1

    move v1, v7

    .end local v7    # "lbottom":I
    .local v0, "ltop":I
    .local v1, "lbottom":I
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v6, "margin":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v6, v14}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    move-result v7

    add-int v28, v3, v7

    .end local v3    # "left":I
    .restart local v28    # "left":I
    goto :goto_19f

    .line 857
    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v6    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v11    # "isFirstParaLine":Z
    .end local v13    # "lineNum":I
    .end local v16    # "length":I
    .local v0, "n":I
    .local v1, "lineNum":I
    .local v3, "length":I
    .local v4, "dir":I
    .local v5, "useFirstLineMargin":Z
    .local v10, "previousLineEnd":I
    .local v14, "textLength":I
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v29, "isFirstParaLine":Z
    :cond_181
    move/from16 v2, v17

    move/from16 v17, v0

    move/from16 v0, v19

    move/from16 v19, v2

    move v13, v1

    move/from16 v16, v3

    move-object v2, v15

    move/from16 v1, v21

    move-object/from16 v15, v22

    move/from16 v3, v28

    move/from16 v11, v29

    move/from16 v29, v10

    move/from16 v10, v18

    move/from16 v18, v14

    move v14, v5

    move v5, v4

    move/from16 v4, v20

    .line 856
    .end local v3    # "length":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v0, "ltop":I
    .local v1, "lbottom":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v10, "end":I
    .restart local v11    # "isFirstParaLine":Z
    .restart local v13    # "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v19, "right":I
    .local v29, "previousLineEnd":I
    :goto_19f
    add-int/lit8 v3, v17, 0x1

    move/from16 v7, p3

    move/from16 v21, v1

    move/from16 v20, v4

    move v4, v5

    move v1, v13

    move v5, v14

    move-object/from16 v22, v15

    move/from16 v14, v18

    move/from16 v17, v19

    move/from16 v13, p2

    move/from16 v19, v0

    move-object v15, v2

    move v0, v3

    move/from16 v18, v10

    move/from16 v3, v16

    move/from16 v10, v29

    const/16 v16, 0x1

    move/from16 v29, v11

    .end local v17    # "n":I
    .local v3, "n":I
    goto/16 :goto_111

    .end local v2    # "paint":Landroid/text/TextPaint;
    .end local v11    # "isFirstParaLine":Z
    .end local v13    # "lineNum":I
    .end local v16    # "length":I
    .local v0, "n":I
    .local v1, "lineNum":I
    .local v3, "length":I
    .local v4, "dir":I
    .local v5, "useFirstLineMargin":Z
    .local v10, "previousLineEnd":I
    .local v14, "textLength":I
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .local v29, "isFirstParaLine":Z
    :cond_1c2
    move/from16 v2, v17

    move/from16 v17, v0

    move/from16 v0, v19

    move/from16 v19, v2

    move v13, v1

    move/from16 v16, v3

    move-object v2, v15

    move/from16 v1, v21

    move-object/from16 v15, v22

    move/from16 v3, v28

    move/from16 v11, v29

    move/from16 v29, v10

    move/from16 v10, v18

    move/from16 v18, v14

    move v14, v5

    move v5, v4

    move/from16 v4, v20

    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "left":I
    .local v0, "ltop":I
    .local v1, "lbottom":I
    .restart local v2    # "paint":Landroid/text/TextPaint;
    .local v3, "left":I
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v10, "end":I
    .restart local v11    # "isFirstParaLine":Z
    .restart local v13    # "lineNum":I
    .local v14, "useFirstLineMargin":Z
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .restart local v16    # "length":I
    .local v17, "n":I
    .local v18, "textLength":I
    .local v19, "right":I
    .local v29, "previousLineEnd":I
    move/from16 v28, v25

    move/from16 v6, v31

    move-object/from16 v11, v32

    move/from16 v31, v3

    move/from16 v3, v19

    goto :goto_208

    .line 809
    .end local v0    # "ltop":I
    .end local v13    # "lineNum":I
    .end local v14    # "useFirstLineMargin":Z
    .end local v16    # "length":I
    .end local v25    # "spanEnd":I
    .end local v29    # "previousLineEnd":I
    .end local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v31    # "tabStopsIsInitialized":Z
    .end local v32    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v33    # "sp":Landroid/text/Spanned;
    .local v1, "lineNum":I
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "spanEnd":I
    .local v4, "dir":I
    .local v5, "left":I
    .local v6, "tabStopsIsInitialized":Z
    .local v10, "previousLineEnd":I
    .local v11, "paraAlign":Landroid/text/Layout$Alignment;
    .local v15, "paint":Landroid/text/TextPaint;
    .local v17, "right":I
    .local v18, "end":I
    .local v19, "ltop":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_1eb
    move v13, v1

    move-object/from16 v25, v2

    move/from16 v28, v5

    move/from16 v29, v10

    move-object v2, v15

    move/from16 v10, v18

    move/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v15, v22

    move v5, v4

    move/from16 v4, v20

    .end local v18    # "end":I
    .end local v19    # "ltop":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v0    # "ltop":I
    .local v1, "lbottom":I
    .local v2, "paint":Landroid/text/TextPaint;
    .local v4, "lbaseline":I
    .local v5, "dir":I
    .local v10, "end":I
    .restart local v13    # "lineNum":I
    .local v15, "tabStops":Landroid/text/Layout$TabStops;
    .local v25, "spans":[Landroid/text/style/ParagraphStyle;
    .restart local v28    # "left":I
    .restart local v29    # "previousLineEnd":I
    move-object/from16 v30, v11

    move-object/from16 v11, v25

    move/from16 v31, v28

    move/from16 v28, v3

    move/from16 v3, v17

    .line 874
    .end local v17    # "right":I
    .end local v25    # "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "right":I
    .local v11, "spans":[Landroid/text/style/ParagraphStyle;
    .local v28, "spanEnd":I
    .restart local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .local v31, "left":I
    :goto_208
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineContainsTab(I)Z

    move-result v21

    .line 876
    .local v21, "hasTab":Z
    if-eqz v21, :cond_222

    if-nez v6, :cond_222

    .line 877
    const/high16 v7, 0x41a00000    # 20.0f

    if-nez v15, :cond_21a

    .line 878
    new-instance v14, Landroid/text/Layout$TabStops;

    invoke-direct {v14, v7, v11}, Landroid/text/Layout$TabStops;-><init>(F[Ljava/lang/Object;)V

    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .local v14, "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_21e

    .line 880
    .end local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v15    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_21a
    invoke-virtual {v15, v7, v11}, Landroid/text/Layout$TabStops;->reset(F[Ljava/lang/Object;)V

    move-object v14, v15

    .line 882
    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v14    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_21e
    const/4 v6, 0x1

    move/from16 v32, v6

    goto :goto_225

    .line 886
    .end local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v15    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_222
    move-object v14, v15

    move/from16 v32, v6

    .end local v6    # "tabStopsIsInitialized":Z
    .end local v15    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v14    # "tabStops":Landroid/text/Layout$TabStops;
    .local v32, "tabStopsIsInitialized":Z
    :goto_225
    move-object/from16 v6, v30

    .line 887
    .local v6, "align":Landroid/text/Layout$Alignment;
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    if-ne v6, v7, :cond_235

    .line 888
    const/4 v7, 0x1

    if-ne v5, v7, :cond_231

    .line 889
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_233

    :cond_231
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_233
    move-object v6, v15

    goto :goto_244

    .line 890
    :cond_235
    const/4 v7, 0x1

    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    if-ne v6, v15, :cond_243

    .line 891
    if-ne v5, v7, :cond_23f

    .line 892
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    goto :goto_241

    :cond_23f
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    :goto_241
    move-object v6, v15

    goto :goto_244

    .line 890
    :cond_243
    move-object v15, v6

    .line 897
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .local v15, "align":Landroid/text/Layout$Alignment;
    :goto_244
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    if-ne v15, v6, :cond_263

    .line 898
    if-ne v5, v7, :cond_256

    .line 899
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    .line 900
    .local v6, "indentWidth":I
    add-int v7, v31, v6

    move/from16 v33, v6

    move v6, v7

    .local v7, "x":I
    goto :goto_2a5

    .line 902
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_256
    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v6}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v6

    neg-int v6, v6

    .line 903
    .restart local v6    # "indentWidth":I
    sub-int v7, v3, v6

    move/from16 v33, v6

    move v6, v7

    .restart local v7    # "x":I
    goto :goto_2a5

    .line 906
    .end local v6    # "indentWidth":I
    .end local v7    # "x":I
    :cond_263
    const/4 v6, 0x0

    invoke-direct {v12, v13, v14, v6}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    move-result v6

    float-to-int v6, v6

    .line 907
    .local v6, "max":I
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    if-ne v15, v7, :cond_28f

    .line 908
    const/4 v7, 0x1

    if-ne v5, v7, :cond_280

    .line 909
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    neg-int v7, v7

    .line 910
    .local v7, "indentWidth":I
    sub-int v16, v3, v6

    sub-int v16, v16, v7

    move/from16 v33, v7

    move/from16 v6, v16

    .local v16, "x":I
    goto :goto_2a5

    .line 912
    .end local v7    # "indentWidth":I
    .end local v16    # "x":I
    :cond_280
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 913
    .restart local v7    # "indentWidth":I
    sub-int v16, v31, v6

    add-int v16, v16, v7

    move/from16 v33, v7

    move/from16 v6, v16

    .restart local v16    # "x":I
    goto :goto_2a5

    .line 916
    .end local v7    # "indentWidth":I
    .end local v16    # "x":I
    :cond_28f
    sget-object v7, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    invoke-virtual {v12, v13, v7}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    move-result v7

    .line 917
    .restart local v7    # "indentWidth":I
    and-int/lit8 v6, v6, -0x2

    .line 918
    add-int v17, v3, v31

    sub-int v17, v17, v6

    const/16 v16, 0x1

    shr-int/lit8 v16, v17, 0x1

    add-int v16, v16, v7

    move/from16 v33, v7

    move/from16 v6, v16

    .line 922
    .end local v7    # "indentWidth":I
    .local v6, "x":I
    .local v33, "indentWidth":I
    :goto_2a5
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v7

    .line 923
    .local v7, "directions":Landroid/text/Layout$Directions;
    move/from16 v34, v0

    .end local v0    # "ltop":I
    .local v34, "ltop":I
    sget-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    if-ne v7, v0, :cond_2d7

    iget-boolean v0, v12, Landroid/text/Layout;->mSpannedText:Z

    if-nez v0, :cond_2d7

    if-nez v21, :cond_2d7

    if-nez v26, :cond_2d7

    .line 925
    move-object/from16 v16, v8

    .end local v8    # "buf":Ljava/lang/CharSequence;
    .local v16, "buf":Ljava/lang/CharSequence;
    int-to-float v8, v6

    move/from16 v17, v9

    .end local v9    # "start":I
    .local v17, "start":I
    int-to-float v9, v4

    move v0, v4

    move/from16 v19, v5

    move-object/from16 v20, v7

    move v7, v10

    move-object/from16 v5, v16

    move-object/from16 v4, p1

    move-object v10, v2

    move v2, v6

    move/from16 v6, v17

    .end local v4    # "lbaseline":I
    .end local v16    # "buf":Ljava/lang/CharSequence;
    .end local v17    # "start":I
    .local v0, "lbaseline":I
    .local v2, "x":I
    .local v5, "buf":Ljava/lang/CharSequence;
    .local v6, "start":I
    .local v7, "end":I
    .local v10, "paint":Landroid/text/TextPaint;
    .local v19, "dir":I
    .local v20, "directions":Landroid/text/Layout$Directions;
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    move v9, v6

    move/from16 v18, v7

    move-object v8, v5

    move-object/from16 v22, v14

    move-object/from16 v14, v23

    .end local v5    # "buf":Ljava/lang/CharSequence;
    .end local v6    # "start":I
    .end local v7    # "end":I
    .restart local v8    # "buf":Ljava/lang/CharSequence;
    .restart local v9    # "start":I
    .restart local v18    # "end":I
    goto :goto_32d

    .line 923
    .end local v0    # "lbaseline":I
    .end local v18    # "end":I
    .end local v19    # "dir":I
    .end local v20    # "directions":Landroid/text/Layout$Directions;
    .local v2, "paint":Landroid/text/TextPaint;
    .restart local v4    # "lbaseline":I
    .local v5, "dir":I
    .local v6, "x":I
    .local v7, "directions":Landroid/text/Layout$Directions;
    .local v10, "end":I
    :cond_2d7
    move v0, v4

    move/from16 v19, v5

    move-object/from16 v20, v7

    move/from16 v18, v10

    move-object v10, v2

    move v2, v6

    .line 927
    .end local v4    # "lbaseline":I
    .end local v5    # "dir":I
    .end local v6    # "x":I
    .end local v7    # "directions":Landroid/text/Layout$Directions;
    .restart local v0    # "lbaseline":I
    .local v2, "x":I
    .local v10, "paint":Landroid/text/TextPaint;
    .restart local v18    # "end":I
    .restart local v19    # "dir":I
    .restart local v20    # "directions":Landroid/text/Layout$Directions;
    nop

    .line 928
    move-object/from16 v16, v23

    .end local v23    # "tl":Landroid/text/TextLine;
    .local v16, "tl":Landroid/text/TextLine;
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v23

    .line 929
    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v4

    invoke-virtual {v12, v13}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v5

    add-int v24, v4, v5

    .line 930
    invoke-virtual {v12}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v25

    .line 927
    move/from16 v17, v9

    move-object/from16 v22, v14

    move-object v6, v15

    move-object/from16 v14, v16

    move-object/from16 v16, v8

    move-object v15, v10

    .end local v8    # "buf":Ljava/lang/CharSequence;
    .end local v9    # "start":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .local v6, "align":Landroid/text/Layout$Alignment;
    .local v14, "tl":Landroid/text/TextLine;
    .local v15, "paint":Landroid/text/TextPaint;
    .local v16, "buf":Ljava/lang/CharSequence;
    .restart local v17    # "start":I
    .restart local v22    # "tabStops":Landroid/text/Layout$TabStops;
    invoke-virtual/range {v14 .. v25}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 931
    move/from16 v7, v18

    move/from16 v4, v19

    move-object/from16 v15, v20

    move/from16 v5, v21

    .end local v16    # "buf":Ljava/lang/CharSequence;
    .end local v17    # "start":I
    .end local v18    # "end":I
    .end local v19    # "dir":I
    .end local v20    # "directions":Landroid/text/Layout$Directions;
    .end local v21    # "hasTab":Z
    .local v4, "dir":I
    .local v5, "hasTab":Z
    .local v7, "end":I
    .restart local v8    # "buf":Ljava/lang/CharSequence;
    .restart local v9    # "start":I
    .restart local v10    # "paint":Landroid/text/TextPaint;
    .local v15, "directions":Landroid/text/Layout$Directions;
    if-eqz v26, :cond_31b

    .line 932
    move/from16 v20, v0

    .end local v0    # "lbaseline":I
    .local v20, "lbaseline":I
    iget v0, v12, Landroid/text/Layout;->mJustificationMode:I

    sub-int v16, v3, v31

    move/from16 v21, v1

    .end local v1    # "lbottom":I
    .local v21, "lbottom":I
    sub-int v1, v16, v33

    int-to-float v1, v1

    invoke-virtual {v14, v0, v1}, Landroid/text/TextLine;->justify(IF)V

    goto :goto_31f

    .line 931
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .restart local v0    # "lbaseline":I
    .restart local v1    # "lbottom":I
    :cond_31b
    move/from16 v20, v0

    move/from16 v21, v1

    .line 934
    .end local v0    # "lbaseline":I
    .end local v1    # "lbottom":I
    .restart local v20    # "lbaseline":I
    .restart local v21    # "lbottom":I
    :goto_31f
    int-to-float v0, v2

    move-object/from16 v17, p1

    move/from16 v18, v0

    move-object/from16 v16, v14

    move/from16 v19, v34

    .end local v14    # "tl":Landroid/text/TextLine;
    .end local v34    # "ltop":I
    .local v16, "tl":Landroid/text/TextLine;
    .local v19, "ltop":I
    invoke-virtual/range {v16 .. v21}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    move/from16 v0, v19

    .line 791
    .end local v2    # "x":I
    .end local v3    # "right":I
    .end local v4    # "dir":I
    .end local v5    # "hasTab":Z
    .end local v6    # "align":Landroid/text/Layout$Alignment;
    .end local v7    # "end":I
    .end local v9    # "start":I
    .end local v15    # "directions":Landroid/text/Layout$Directions;
    .end local v16    # "tl":Landroid/text/TextLine;
    .end local v19    # "ltop":I
    .end local v20    # "lbaseline":I
    .end local v21    # "lbottom":I
    .end local v26    # "justify":Z
    .end local v31    # "left":I
    .end local v33    # "indentWidth":I
    .restart local v14    # "tl":Landroid/text/TextLine;
    :goto_32d
    add-int/lit8 v1, v13, 0x1

    move/from16 v13, p2

    move-object v15, v10

    move-object v2, v11

    move-object/from16 v0, v22

    move/from16 v5, v27

    move/from16 v3, v28

    move/from16 v9, v29

    move-object/from16 v4, v30

    move/from16 v6, v32

    .end local v13    # "lineNum":I
    .local v1, "lineNum":I
    goto/16 :goto_27

    .line 938
    .end local v1    # "lineNum":I
    .end local v10    # "paint":Landroid/text/TextPaint;
    .end local v11    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v22    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v27    # "previousLineBottom":I
    .end local v28    # "spanEnd":I
    .end local v29    # "previousLineEnd":I
    .end local v30    # "paraAlign":Landroid/text/Layout$Alignment;
    .end local v32    # "tabStopsIsInitialized":Z
    .local v0, "tabStops":Landroid/text/Layout$TabStops;
    .local v2, "spans":[Landroid/text/style/ParagraphStyle;
    .local v3, "spanEnd":I
    .local v4, "paraAlign":Landroid/text/Layout$Alignment;
    .local v5, "previousLineBottom":I
    .local v6, "tabStopsIsInitialized":Z
    .local v9, "previousLineEnd":I
    .local v15, "paint":Landroid/text/TextPaint;
    :cond_341
    invoke-static {v14}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 939
    return-void
.end method

.method public blacklist drawWithoutText(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .registers 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p4, "selectionPath"    # Landroid/graphics/Path;
    .param p5, "selectionPaint"    # Landroid/graphics/Paint;
    .param p6, "cursorOffsetVertical"    # I
    .param p7, "firstLine"    # I
    .param p8, "lastLine"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/Paint;",
            ">;",
            "Landroid/graphics/Path;",
            "Landroid/graphics/Paint;",
            "III)V"
        }
    .end annotation

    .line 603
    .local p2, "highlightPaths":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Path;>;"
    .local p3, "highlightPaints":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Paint;>;"
    invoke-virtual {p0, p1, p7, p8}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;II)V

    .line 604
    invoke-virtual/range {p0 .. p8}, Landroid/text/Layout;->drawHighlights(Landroid/graphics/Canvas;Ljava/util/List;Ljava/util/List;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    .line 606
    return-void
.end method

.method public whitelist fillCharacterBounds(II[FI)V
    .registers 13
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "bounds"    # [F
    .param p4, "boundsStart"    # I

    .line 1861
    if-ltz p1, :cond_60

    if-lt p2, p1, :cond_60

    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p2, v0, :cond_60

    .line 1866
    if-eqz p3, :cond_56

    .line 1870
    sub-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x4

    .line 1871
    .local v0, "neededLength":I
    array-length v1, p3

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_2f

    .line 1877
    if-ne p1, p2, :cond_19

    .line 1878
    return-void

    .line 1881
    :cond_19
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v5

    .line 1882
    .local v5, "startLine":I
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 1884
    .local v6, "endLine":I
    new-instance v7, Landroid/text/Layout$$ExternalSyntheticLambda4;

    invoke-direct {v7, p4, p1, p3}, Landroid/text/Layout$$ExternalSyntheticLambda4;-><init>(II[F)V

    move-object v2, p0

    move v3, p1

    move v4, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v3, "start":I
    .local v4, "end":I
    invoke-direct/range {v2 .. v7}, Landroid/text/Layout;->forEachCharacterBounds(IIIILandroid/text/Layout$CharacterBoundsListener;)V

    .line 1892
    return-void

    .line 1872
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v5    # "startLine":I
    .end local v6    # "endLine":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_2f
    move v3, p1

    move v4, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bounds doesn\'t have enough space to store the result, needed: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " had: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    array-length v1, p3

    sub-int/2addr v1, p4

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1867
    .end local v0    # "neededLength":I
    .end local v3    # "start":I
    .end local v4    # "end":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_56
    move v3, p1

    move v4, p2

    .end local p1    # "start":I
    .end local p2    # "end":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bounds can\'t be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1861
    .end local v3    # "start":I
    .end local v4    # "end":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_60
    move-object v2, p0

    move v3, p1

    move v4, p2

    .line 1862
    .end local p1    # "start":I
    .end local p2    # "end":I
    .restart local v3    # "start":I
    .restart local v4    # "end":I
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "given range: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " is out of the text range: 0, "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, v2, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 1863
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final whitelist getAlignment()Landroid/text/Layout$Alignment;
    .registers 2

    .line 4366
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    return-object v0
.end method

.method public abstract whitelist getBottomPadding()I
.end method

.method public final whitelist getBreakStrategy()I
    .registers 2

    .line 4524
    iget v0, p0, Landroid/text/Layout;->mBreakStrategy:I

    return v0
.end method

.method public whitelist getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .registers 21
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    .line 3002
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 3004
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v3

    .line 3005
    .local v3, "line":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3006
    .local v4, "top":I
    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3008
    .local v5, "bottom":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->shouldClampCursor(I)Z

    move-result v6

    .line 3009
    .local v6, "clamped":Z
    move/from16 v7, p1

    invoke-virtual {v0, v7, v6}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v8

    const/high16 v9, 0x3f000000    # 0.5f

    sub-float/2addr v8, v9

    .line 3011
    .local v8, "h1":F
    const/4 v10, 0x1

    invoke-static {v2, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v11

    .line 3012
    const/16 v12, 0x800

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v12

    or-int/2addr v11, v12

    .line 3013
    .local v11, "caps":I
    const/4 v12, 0x2

    invoke-static {v2, v12}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    move-result v13

    .line 3014
    .local v13, "fn":I
    const/4 v14, 0x0

    .line 3016
    .local v14, "dist":I
    if-nez v11, :cond_39

    if-eqz v13, :cond_43

    .line 3017
    :cond_39
    sub-int v15, v5, v4

    shr-int/lit8 v14, v15, 0x2

    .line 3019
    if-eqz v13, :cond_40

    .line 3020
    add-int/2addr v4, v14

    .line 3021
    :cond_40
    if-eqz v11, :cond_43

    .line 3022
    sub-int/2addr v5, v14

    .line 3025
    :cond_43
    cmpg-float v15, v8, v9

    if-gez v15, :cond_49

    .line 3026
    const/high16 v8, 0x3f000000    # 0.5f

    .line 3028
    :cond_49
    int-to-float v15, v4

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3029
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3031
    if-ne v11, v12, :cond_6f

    .line 3032
    int-to-float v15, v5

    invoke-virtual {v1, v8, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3033
    int-to-float v15, v14

    sub-float v15, v8, v15

    move/from16 v16, v9

    add-int v9, v5, v14

    int-to-float v9, v9

    invoke-virtual {v1, v15, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3034
    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3035
    int-to-float v9, v14

    add-float/2addr v9, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_a1

    .line 3036
    :cond_6f
    move/from16 v16, v9

    if-ne v11, v10, :cond_a1

    .line 3037
    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3038
    int-to-float v9, v14

    sub-float v9, v8, v9

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3040
    int-to-float v9, v14

    sub-float v9, v8, v9

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float v15, v15, v16

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3041
    int-to-float v9, v14

    add-float/2addr v9, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    sub-float v15, v15, v16

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3043
    int-to-float v9, v14

    add-float/2addr v9, v8

    add-int v15, v5, v14

    int-to-float v15, v15

    invoke-virtual {v1, v9, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3044
    int-to-float v9, v5

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3047
    :cond_a1
    :goto_a1
    if-ne v13, v12, :cond_bd

    .line 3048
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3049
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3050
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3051
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_ed

    .line 3052
    :cond_bd
    if-ne v13, v10, :cond_ed

    .line 3053
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3054
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3056
    int-to-float v9, v14

    sub-float v9, v8, v9

    sub-int v10, v4, v14

    int-to-float v10, v10

    add-float v10, v10, v16

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3057
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    add-float v10, v10, v16

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3059
    int-to-float v9, v14

    add-float/2addr v9, v8

    sub-int v10, v4, v14

    int-to-float v10, v10

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 3060
    int-to-float v9, v4

    invoke-virtual {v1, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 3062
    :cond_ed
    :goto_ed
    return-void
.end method

.method public abstract whitelist getEllipsisCount(I)I
.end method

.method public abstract whitelist getEllipsisStart(I)I
.end method

.method public final whitelist getEllipsize()Landroid/text/TextUtils$TruncateAt;
    .registers 2

    .line 4495
    iget-object v0, p0, Landroid/text/Layout;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object v0
.end method

.method public whitelist getEllipsizedWidth()I
    .registers 2

    .line 4476
    iget v0, p0, Landroid/text/Layout;->mEllipsizedWidth:I

    return v0
.end method

.method public blacklist getEndHyphenEdit(I)I
    .registers 3
    .param p1, "line"    # I

    .line 1456
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 1271
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getHeight(Z)I
    .registers 3
    .param p1, "cap"    # Z

    .line 1282
    invoke-virtual {p0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method public final whitelist getHyphenationFrequency()I
    .registers 2

    .line 4537
    iget v0, p0, Landroid/text/Layout;->mHyphenationFrequency:I

    return v0
.end method

.method public greylist-max-o getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    .line 1465
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getJustificationMode()I
    .registers 2

    .line 4592
    iget v0, p0, Landroid/text/Layout;->mJustificationMode:I

    return v0
.end method

.method public final whitelist getLeftIndents()[I
    .registers 5

    .line 4553
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    if-nez v0, :cond_6

    .line 4554
    const/4 v0, 0x0

    return-object v0

    .line 4556
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 4557
    .local v0, "newArray":[I
    iget-object v1, p0, Landroid/text/Layout;->mLeftIndents:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4558
    return-object v0
.end method

.method public final whitelist getLineAscent(I)I
    .registers 5
    .param p1, "line"    # I

    .line 2868
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v1

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBaseline(I)I
    .registers 4
    .param p1, "line"    # I

    .line 2859
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final whitelist getLineBottom(I)I
    .registers 3
    .param p1, "line"    # I

    .line 2837
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getLineBottom(IZ)I
    .registers 5
    .param p1, "line"    # I
    .param p2, "includeLineSpacing"    # Z

    .line 2847
    if-eqz p2, :cond_9

    .line 2848
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0

    .line 2850
    :cond_9
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineExtra(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public whitelist getLineBounds(ILandroid/graphics/Rect;)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    .line 1378
    if-eqz p2, :cond_17

    .line 1379
    const/4 v0, 0x0

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 1380
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->top:I

    .line 1381
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    iput v0, p2, Landroid/graphics/Rect;->right:I

    .line 1382
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    .line 1384
    :cond_17
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v0

    return v0
.end method

.method public whitelist getLineBreakConfig()Landroid/graphics/text/LineBreakConfig;
    .registers 2

    .line 4606
    iget-object v0, p0, Landroid/text/Layout;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object v0
.end method

.method public abstract whitelist getLineContainsTab(I)Z
.end method

.method public abstract whitelist getLineCount()I
.end method

.method public abstract whitelist getLineDescent(I)I
.end method

.method public abstract whitelist getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final whitelist getLineEnd(I)I
    .registers 3
    .param p1, "line"    # I

    .line 2792
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getLineExtra(I)I
    .registers 3
    .param p1, "line"    # I

    .line 2879
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getLineForOffset(I)I
    .registers 6
    .param p1, "offset"    # I

    .line 2226
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 2228
    .local v1, "low":I
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 2229
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 2231
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 2232
    move v0, v2

    goto :goto_5

    .line 2234
    :cond_16
    move v1, v2

    goto :goto_5

    .line 2237
    .end local v2    # "guess":I
    :cond_18
    if-gez v1, :cond_1c

    .line 2238
    const/4 v2, 0x0

    return v2

    .line 2240
    :cond_1c
    return v1
.end method

.method public whitelist getLineForVertical(I)I
    .registers 6
    .param p1, "vertical"    # I

    .line 2203
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    .local v0, "high":I
    const/4 v1, -0x1

    .line 2205
    .local v1, "low":I
    :goto_5
    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_18

    .line 2206
    add-int v2, v0, v1

    div-int/lit8 v2, v2, 0x2

    .line 2208
    .local v2, "guess":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v3

    if-le v3, p1, :cond_16

    .line 2209
    move v0, v2

    goto :goto_5

    .line 2211
    :cond_16
    move v1, v2

    goto :goto_5

    .line 2214
    .end local v2    # "guess":I
    :cond_18
    if-gez v1, :cond_1c

    .line 2215
    const/4 v2, 0x0

    return v2

    .line 2217
    :cond_1c
    return v1
.end method

.method public whitelist getLineLeft(I)F
    .registers 10
    .param p1, "line"    # I

    .line 1946
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 1947
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 1951
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_c

    .line 1952
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1959
    :cond_c
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_58

    .line 1975
    :pswitch_14
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2d

    .line 1972
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_17
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1973
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2d

    .line 1969
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1a
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 1970
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2d

    .line 1966
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1d
    if-ne v0, v3, :cond_22

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_24

    :cond_22
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 1967
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_24
    goto :goto_2d

    .line 1962
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_25
    if-ne v0, v3, :cond_2a

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2c

    :cond_2a
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 1963
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_2c
    nop

    .line 1981
    :goto_2d
    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_66

    .line 1992
    :pswitch_34
    const/4 v3, 0x0

    return v3

    .line 1990
    :pswitch_36
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    sub-float/2addr v3, v4

    return v3

    .line 1983
    :pswitch_3f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    move-result v3

    .line 1984
    .local v3, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 1988
    .local v4, "max":F
    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_58
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1d
        :pswitch_1a
        :pswitch_14
        :pswitch_17
    .end packed-switch

    :pswitch_data_66
    .packed-switch 0x2
        :pswitch_3f
        :pswitch_34
        :pswitch_36
    .end packed-switch
.end method

.method public whitelist getLineLetterSpacingUnitCount(IZ)I
    .registers 16
    .param p1, "line"    # I
    .param p2, "includeTrailingWhitespace"    # Z

    .line 2133
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v3

    .line 2134
    .local v3, "start":I
    const/4 v12, 0x0

    if-eqz p2, :cond_d

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v0

    move v4, v0

    goto :goto_1c

    .line 2135
    :cond_d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1, v12}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v0

    move v4, v0

    :goto_1c
    nop

    .line 2140
    .local v4, "end":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v6

    .line 2142
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_24

    .line 2143
    return v12

    .line 2145
    :cond_24
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    .line 2147
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v0

    .line 2148
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mWorkPaint:Landroid/text/TextPaint;

    .line 2149
    .local v1, "paint":Landroid/text/TextPaint;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    .line 2150
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getStartHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStartHyphenEdit(I)V

    .line 2151
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEndHyphenEdit(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setEndHyphenEdit(I)V

    .line 2152
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 2154
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v7

    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v8

    add-int v10, v7, v8

    .line 2155
    invoke-virtual {p0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v11

    .line 2152
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2156
    iget-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    if-nez v2, :cond_65

    .line 2157
    new-instance v2, Landroid/text/TextLine$LineInfo;

    invoke-direct {v2}, Landroid/text/TextLine$LineInfo;-><init>()V

    iput-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    .line 2159
    :cond_65
    iget-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {v2, v12}, Landroid/text/TextLine$LineInfo;->setClusterCount(I)V

    .line 2160
    iget-boolean v2, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    iget-object v7, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    const/4 v8, 0x0

    invoke-virtual {v0, v8, v8, v2, v7}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;Landroid/graphics/RectF;ZLandroid/text/TextLine$LineInfo;)F

    .line 2161
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2162
    iget-object v2, p0, Landroid/text/Layout;->mLineInfo:Landroid/text/TextLine$LineInfo;

    invoke-virtual {v2}, Landroid/text/TextLine$LineInfo;->getClusterCount()I

    move-result v2

    return v2
.end method

.method public whitelist getLineMax(I)F
    .registers 5
    .param p1, "line"    # I

    .line 2049
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 2050
    .local v0, "margin":F
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 2051
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    neg-float v2, v1

    :goto_12
    add-float/2addr v2, v0

    return v2
.end method

.method public greylist-max-r getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .registers 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1181
    sget-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    monitor-enter v0

    .line 1182
    :try_start_3
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_13

    .line 1184
    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 1187
    :cond_13
    sget-object v1, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 1188
    .local v1, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    .line 1189
    .local v4, "dbottom":I
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_40

    .line 1191
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1192
    .local v0, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v5

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1194
    .local v5, "bottom":I
    if-lt v0, v5, :cond_33

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1195
    :cond_33
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v2

    invoke-virtual {p0, v5}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2

    .line 1189
    .end local v0    # "top":I
    .end local v1    # "dtop":I
    .end local v4    # "dbottom":I
    .end local v5    # "bottom":I
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1
.end method

.method public whitelist getLineRight(I)F
    .registers 10
    .param p1, "line"    # I

    .line 2001
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    .line 2002
    .local v0, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v1

    .line 2006
    .local v1, "align":Landroid/text/Layout$Alignment;
    if-nez v1, :cond_c

    .line 2007
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2011
    :cond_c
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_56

    .line 2027
    :pswitch_14
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .local v2, "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2d

    .line 2024
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_17
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2025
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2d

    .line 2021
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1a
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 2022
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    goto :goto_2d

    .line 2018
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_1d
    if-ne v0, v3, :cond_22

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    goto :goto_24

    :cond_22
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    .line 2019
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_24
    goto :goto_2d

    .line 2014
    .end local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :pswitch_25
    if-ne v0, v3, :cond_2a

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    goto :goto_2c

    :cond_2a
    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    .line 2015
    .restart local v2    # "resultAlign":Landroid/text/Layout$Alignment;
    :goto_2c
    nop

    .line 2030
    :goto_2d
    invoke-virtual {v2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v3

    packed-switch v3, :pswitch_data_64

    .line 2040
    :pswitch_34
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v3

    return v3

    .line 2038
    :pswitch_39
    iget v3, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v3, v3

    return v3

    .line 2032
    :pswitch_3d
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    move-result v3

    .line 2033
    .local v3, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    move-result v4

    .line 2036
    .local v4, "max":F
    int-to-float v5, v3

    iget v6, p0, Landroid/text/Layout;->mWidth:I

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-float v5, v5

    return v5

    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_25
        :pswitch_1d
        :pswitch_1a
        :pswitch_14
        :pswitch_17
    .end packed-switch

    :pswitch_data_64
    .packed-switch 0x2
        :pswitch_3d
        :pswitch_34
        :pswitch_39
    .end packed-switch
.end method

.method public final whitelist getLineSpacingAmount()F
    .registers 2

    .line 4433
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    return v0
.end method

.method public final whitelist getLineSpacingMultiplier()F
    .registers 2

    .line 4406
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    return v0
.end method

.method public abstract whitelist getLineStart(I)I
.end method

.method public abstract whitelist getLineTop(I)I
.end method

.method public whitelist getLineVisibleEnd(I)I
    .registers 5
    .param p1, "line"    # I

    .line 2800
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/text/Layout;->getLineVisibleEnd(IIIZ)I

    move-result v0

    return v0
.end method

.method public whitelist getLineWidth(I)F
    .registers 5
    .param p1, "line"    # I

    .line 2059
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v0

    int-to-float v0, v0

    .line 2060
    .local v0, "margin":F
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Landroid/text/Layout;->getLineExtent(IZ)F

    move-result v1

    .line 2061
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_11

    move v2, v1

    goto :goto_12

    :cond_11
    neg-float v2, v1

    :goto_12
    add-float/2addr v2, v0

    return v2
.end method

.method public final whitelist getMaxLines()I
    .registers 2

    .line 4511
    iget v0, p0, Landroid/text/Layout;->mMaxLines:I

    return v0
.end method

.method public whitelist getMinimumFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .registers 2

    .line 4652
    iget-object v0, p0, Landroid/text/Layout;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object v0
.end method

.method public whitelist getOffsetForHorizontal(IF)I
    .registers 4
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    .line 2249
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    move-result v0

    return v0
.end method

.method public greylist-max-o getOffsetForHorizontal(IFZ)I
    .registers 25
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    .line 2264
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v6

    .line 2265
    .local v6, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 2267
    .local v5, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v8

    .line 2269
    .local v8, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    move-result-object v2

    .line 2271
    .local v2, "tl":Landroid/text/TextLine;
    iget-object v3, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    iget-object v4, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    .line 2273
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v11

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v9

    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v10

    add-int v12, v9, v10

    .line 2274
    invoke-virtual {v0}, Landroid/text/Layout;->isFallbackLineSpacingEnabled()Z

    move-result v13

    .line 2271
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v13}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;IIZ)V

    .line 2275
    new-instance v3, Landroid/text/Layout$HorizontalMeasurementProvider;

    move/from16 v4, p3

    invoke-direct {v3, v0, v1, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;-><init>(Landroid/text/Layout;IZ)V

    .line 2279
    .local v3, "horizontal":Landroid/text/Layout$HorizontalMeasurementProvider;
    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v7

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    if-ne v1, v7, :cond_44

    .line 2280
    move v7, v6

    .local v7, "max":I
    goto :goto_52

    .line 2282
    .end local v7    # "max":I
    :cond_44
    sub-int v7, v6, v5

    add-int/lit8 v10, v6, -0x1

    .line 2283
    invoke-virtual {v0, v10}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v10

    .line 2282
    xor-int/2addr v10, v9

    invoke-virtual {v2, v7, v10}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v7

    add-int/2addr v7, v5

    .line 2285
    .restart local v7    # "max":I
    :goto_52
    move v10, v5

    .line 2286
    .local v10, "best":I
    invoke-virtual {v3, v5}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v11

    sub-float v11, v11, p2

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 2288
    .local v11, "bestdist":F
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_5e
    iget-object v13, v8, Landroid/text/Layout$Directions;->mDirections:[I

    array-length v13, v13

    if-ge v12, v13, :cond_132

    .line 2289
    iget-object v13, v8, Landroid/text/Layout$Directions;->mDirections:[I

    aget v13, v13, v12

    add-int/2addr v13, v5

    .line 2290
    .local v13, "here":I
    iget-object v14, v8, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v15, v12, 0x1

    aget v14, v14, v15

    const v15, 0x3ffffff

    and-int/2addr v14, v15

    add-int/2addr v14, v13

    .line 2291
    .local v14, "there":I
    iget-object v15, v8, Landroid/text/Layout$Directions;->mDirections:[I

    add-int/lit8 v16, v12, 0x1

    aget v15, v15, v16

    const/high16 v16, 0x4000000

    and-int v15, v15, v16

    const/16 v16, 0x0

    if-eqz v15, :cond_83

    move v15, v9

    goto :goto_85

    :cond_83
    move/from16 v15, v16

    .line 2292
    .local v15, "isRtl":Z
    :goto_85
    if-eqz v15, :cond_8a

    const/16 v17, -0x1

    goto :goto_8c

    :cond_8a
    move/from16 v17, v9

    :goto_8c
    move/from16 v18, v17

    .line 2294
    .local v18, "swap":I
    if-le v14, v7, :cond_91

    .line 2295
    move v14, v7

    .line 2296
    :cond_91
    add-int/lit8 v17, v14, -0x1

    add-int/lit8 v17, v17, 0x1

    .local v17, "high":I
    add-int/lit8 v19, v13, 0x1

    add-int/lit8 v19, v19, -0x1

    move/from16 v9, v19

    .line 2298
    .local v9, "low":I
    :goto_9b
    sub-int v1, v17, v9

    const/4 v4, 0x1

    if-le v1, v4, :cond_cb

    .line 2299
    add-int v1, v17, v9

    div-int/lit8 v1, v1, 0x2

    .line 2300
    .local v1, "guess":I
    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    move-result v4

    .line 2302
    .local v4, "adguess":I
    invoke-virtual {v3, v4}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v20

    move/from16 v0, v18

    move/from16 v18, v1

    .end local v1    # "guess":I
    .local v0, "swap":I
    .local v18, "guess":I
    int-to-float v1, v0

    mul-float v20, v20, v1

    int-to-float v1, v0

    mul-float v1, v1, p2

    cmpl-float v1, v20, v1

    if-ltz v1, :cond_bf

    .line 2303
    move/from16 v1, v18

    move/from16 v17, v1

    .end local v17    # "high":I
    .local v1, "high":I
    goto :goto_c2

    .line 2305
    .end local v1    # "high":I
    .restart local v17    # "high":I
    :cond_bf
    move/from16 v1, v18

    move v9, v1

    .line 2307
    .end local v4    # "adguess":I
    :goto_c2
    move/from16 v1, p1

    move/from16 v4, p3

    move/from16 v18, v0

    move-object/from16 v0, p0

    goto :goto_9b

    .line 2309
    .end local v0    # "swap":I
    .local v18, "swap":I
    :cond_cb
    move/from16 v0, v18

    .end local v18    # "swap":I
    .restart local v0    # "swap":I
    add-int/lit8 v1, v13, 0x1

    if-ge v9, v1, :cond_d3

    .line 2310
    add-int/lit8 v9, v13, 0x1

    .line 2312
    :cond_d3
    if-ge v9, v14, :cond_113

    .line 2313
    sub-int v1, v9, v5

    invoke-virtual {v2, v1, v15}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v1

    add-int/2addr v1, v5

    .line 2314
    .local v1, "aft":I
    sub-int v4, v1, v5

    move/from16 v18, v0

    if-nez v15, :cond_e4

    const/4 v0, 0x1

    goto :goto_e6

    :cond_e4
    move/from16 v0, v16

    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :goto_e6
    invoke-virtual {v2, v4, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    add-int v9, v0, v5

    .line 2315
    if-lt v9, v13, :cond_115

    if-ge v9, v14, :cond_115

    .line 2316
    invoke-virtual {v3, v9}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2317
    .local v0, "dist":F
    if-ge v1, v14, :cond_10c

    .line 2318
    invoke-virtual {v3, v1}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v4

    sub-float v4, v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 2320
    .local v4, "other":F
    cmpg-float v16, v4, v0

    if-gez v16, :cond_10c

    .line 2321
    move v0, v4

    .line 2322
    move v9, v1

    .line 2326
    .end local v4    # "other":F
    :cond_10c
    cmpg-float v4, v0, v11

    if-gez v4, :cond_115

    .line 2327
    move v11, v0

    .line 2328
    move v10, v9

    goto :goto_115

    .line 2312
    .end local v1    # "aft":I
    .end local v18    # "swap":I
    .local v0, "swap":I
    :cond_113
    move/from16 v18, v0

    .line 2333
    .end local v0    # "swap":I
    .restart local v18    # "swap":I
    :cond_115
    :goto_115
    invoke-virtual {v3, v13}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2335
    .local v0, "dist":F
    cmpg-float v1, v0, v11

    if-gez v1, :cond_127

    .line 2336
    move v1, v0

    .line 2337
    .end local v11    # "bestdist":F
    .local v1, "bestdist":F
    move v4, v13

    move v11, v1

    move v10, v4

    .line 2288
    .end local v0    # "dist":F
    .end local v1    # "bestdist":F
    .end local v9    # "low":I
    .end local v13    # "here":I
    .end local v14    # "there":I
    .end local v15    # "isRtl":Z
    .end local v17    # "high":I
    .end local v18    # "swap":I
    .restart local v11    # "bestdist":F
    :cond_127
    add-int/lit8 v12, v12, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v4, p3

    const/4 v9, 0x1

    goto/16 :goto_5e

    .line 2341
    .end local v12    # "i":I
    :cond_132
    invoke-virtual {v3, v7}, Landroid/text/Layout$HorizontalMeasurementProvider;->get(I)F

    move-result v0

    sub-float v0, v0, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 2343
    .restart local v0    # "dist":F
    cmpg-float v1, v0, v11

    if-gtz v1, :cond_141

    .line 2344
    move v10, v7

    .line 2347
    :cond_141
    invoke-static {v2}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    .line 2348
    return v10
.end method

.method public whitelist getOffsetToLeftOf(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 2883
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public whitelist getOffsetToRightOf(I)I
    .registers 3
    .param p1, "offset"    # I

    .line 2887
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    move-result v0

    return v0
.end method

.method public final whitelist getPaint()Landroid/text/TextPaint;
    .registers 2

    .line 4341
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    return-object v0
.end method

.method public final whitelist getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .registers 7
    .param p1, "line"    # I

    .line 3190
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 3192
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v1, p0, Landroid/text/Layout;->mSpannedText:Z

    if-eqz v1, :cond_25

    .line 3193
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    check-cast v1, Landroid/text/Spanned;

    .line 3194
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    .line 3195
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    const-class v4, Landroid/text/style/AlignmentSpan;

    .line 3194
    invoke-static {v1, v2, v3, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/AlignmentSpan;

    .line 3198
    .local v2, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v3, v2

    .line 3199
    .local v3, "spanLength":I
    if-lez v3, :cond_25

    .line 3200
    add-int/lit8 v4, v3, -0x1

    aget-object v4, v2, v4

    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    move-result-object v0

    .line 3204
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spans":[Landroid/text/style/AlignmentSpan;
    .end local v3    # "spanLength":I
    :cond_25
    return-object v0
.end method

.method public abstract whitelist getParagraphDirection(I)I
.end method

.method public final whitelist getParagraphLeft(I)I
    .registers 5
    .param p1, "line"    # I

    .line 3211
    const/4 v0, 0x0

    .line 3212
    .local v0, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 3213
    .local v1, "dir":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_12

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_d

    goto :goto_12

    .line 3216
    :cond_d
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    return v2

    .line 3214
    :cond_12
    :goto_12
    return v0
.end method

.method public final whitelist getParagraphRight(I)I
    .registers 5
    .param p1, "line"    # I

    .line 3223
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    .line 3224
    .local v0, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    .line 3225
    .local v1, "dir":I
    const/4 v2, 0x1

    if-eq v1, v2, :cond_15

    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    if-nez v2, :cond_e

    goto :goto_15

    .line 3228
    :cond_e
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    move-result v2

    sub-int v2, v0, v2

    return v2

    .line 3226
    :cond_15
    :goto_15
    return v0
.end method

.method public whitelist getPrimaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 1677
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getPrimaryHorizontal(IZ)F
    .registers 5
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1687
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1688
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public whitelist getRangeForRect(Landroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;)[I
    .registers 16
    .param p1, "area"    # Landroid/graphics/RectF;
    .param p2, "segmentFinder"    # Landroid/text/SegmentFinder;
    .param p3, "inclusionStrategy"    # Landroid/text/Layout$TextInclusionStrategy;

    .line 2420
    iget v0, p1, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 2421
    .local v0, "startLine":I
    iget v1, p1, Landroid/graphics/RectF;->top:F

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v3

    int-to-float v3, v3

    cmpl-float v1, v1, v3

    const/4 v3, 0x0

    if-lez v1, :cond_1f

    .line 2422
    add-int/lit8 v0, v0, 0x1

    .line 2423
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    if-lt v0, v1, :cond_1d

    .line 2425
    return-object v3

    .line 2423
    :cond_1d
    move v5, v0

    goto :goto_20

    .line 2421
    :cond_1f
    move v5, v0

    .line 2430
    .end local v0    # "startLine":I
    .local v5, "startLine":I
    :goto_20
    iget v0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    .line 2431
    .local v0, "endLine":I
    if-nez v0, :cond_35

    iget v1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_35

    .line 2433
    return-object v3

    .line 2435
    :cond_35
    if-ge v0, v5, :cond_38

    .line 2437
    return-object v3

    .line 2440
    :cond_38
    const/4 v9, 0x1

    move-object v4, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    .end local p1    # "area":Landroid/graphics/RectF;
    .end local p2    # "segmentFinder":Landroid/text/SegmentFinder;
    .end local p3    # "inclusionStrategy":Landroid/text/Layout$TextInclusionStrategy;
    .local v6, "area":Landroid/graphics/RectF;
    .local v7, "segmentFinder":Landroid/text/SegmentFinder;
    .local v8, "inclusionStrategy":Landroid/text/Layout$TextInclusionStrategy;
    invoke-direct/range {v4 .. v9}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p1

    move-object v9, v7

    move-object v10, v8

    move-object v8, v6

    .line 2444
    .end local v6    # "area":Landroid/graphics/RectF;
    .end local v7    # "segmentFinder":Landroid/text/SegmentFinder;
    .local v8, "area":Landroid/graphics/RectF;
    .local v9, "segmentFinder":Landroid/text/SegmentFinder;
    .local v10, "inclusionStrategy":Landroid/text/Layout$TextInclusionStrategy;
    .local p1, "start":I
    :goto_44
    const/4 p2, -0x1

    if-ne p1, p2, :cond_53

    if-ge v5, v0, :cond_53

    .line 2445
    add-int/lit8 v7, v5, 0x1

    .line 2446
    .end local v5    # "startLine":I
    .local v7, "startLine":I
    const/4 v11, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p1

    move v5, v7

    goto :goto_44

    .line 2449
    .end local v7    # "startLine":I
    .restart local v5    # "startLine":I
    :cond_53
    if-ne p1, p2, :cond_56

    .line 2451
    return-object v3

    .line 2454
    :cond_56
    const/4 v11, 0x0

    move-object v6, p0

    move v7, v0

    .end local v0    # "endLine":I
    .local v7, "endLine":I
    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p3

    .line 2458
    .end local v7    # "endLine":I
    .restart local v0    # "endLine":I
    .local p3, "end":I
    :goto_5d
    if-ne p3, p2, :cond_6b

    if-ge v5, v0, :cond_6b

    .line 2459
    add-int/lit8 v7, v0, -0x1

    .line 2460
    .end local v0    # "endLine":I
    .restart local v7    # "endLine":I
    const/4 v11, 0x0

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Landroid/text/Layout;->getStartOrEndOffsetForAreaWithinLine(ILandroid/graphics/RectF;Landroid/text/SegmentFinder;Landroid/text/Layout$TextInclusionStrategy;Z)I

    move-result p3

    move v0, v7

    goto :goto_5d

    .line 2463
    .end local v7    # "endLine":I
    .restart local v0    # "endLine":I
    :cond_6b
    if-ne p3, p2, :cond_6e

    .line 2465
    return-object v3

    .line 2472
    :cond_6e
    add-int/lit8 p2, p1, 0x1

    invoke-virtual {v9, p2}, Landroid/text/SegmentFinder;->previousStartBoundary(I)I

    move-result p1

    .line 2473
    add-int/lit8 p2, p3, -0x1

    invoke-virtual {v9, p2}, Landroid/text/SegmentFinder;->nextEndBoundary(I)I

    move-result p2

    .line 2475
    .end local p3    # "end":I
    .local p2, "end":I
    filled-new-array {p1, p2}, [I

    move-result-object p3

    return-object p3
.end method

.method public final whitelist getRightIndents()[I
    .registers 5

    .line 4574
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    if-nez v0, :cond_6

    .line 4575
    const/4 v0, 0x0

    return-object v0

    .line 4577
    :cond_6
    iget-object v0, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 4578
    .local v0, "newArray":[I
    iget-object v1, p0, Landroid/text/Layout;->mRightIndents:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4579
    return-object v0
.end method

.method public greylist-max-o getRunRange(I)J
    .registers 12
    .param p1, "offset"    # I

    .line 1536
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1537
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1538
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3d

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_3d

    .line 1541
    :cond_12
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1542
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1543
    .local v4, "lineStart":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    array-length v6, v2

    if-ge v5, v6, :cond_34

    .line 1544
    aget v6, v2, v5

    add-int/2addr v6, v4

    .line 1545
    .local v6, "start":I
    add-int/lit8 v7, v5, 0x1

    aget v7, v2, v7

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    add-int/2addr v7, v6

    .line 1546
    .local v7, "limit":I
    if-lt p1, v6, :cond_31

    if-ge p1, v7, :cond_31

    .line 1547
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v8

    return-wide v8

    .line 1543
    .end local v6    # "start":I
    .end local v7    # "limit":I
    :cond_31
    add-int/lit8 v5, v5, 0x2

    goto :goto_19

    .line 1551
    .end local v5    # "i":I
    :cond_34
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    invoke-static {v3, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v5

    return-wide v5

    .line 1539
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    :cond_3d
    :goto_3d
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-static {v3, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v2

    return-wide v2
.end method

.method public whitelist getSecondaryHorizontal(I)F
    .registers 3
    .param p1, "offset"    # I

    .line 1697
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    move-result v0

    return v0
.end method

.method public greylist-max-r getSecondaryHorizontal(IZ)F
    .registers 5
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    .line 1707
    invoke-virtual {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    move-result v0

    .line 1708
    .local v0, "trailing":Z
    xor-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    move-result v1

    return v1
.end method

.method public final greylist-max-o getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V
    .registers 22
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "consumer"    # Landroid/text/Layout$SelectionRectangleConsumer;

    .line 3128
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-ne v1, v2, :cond_9

    .line 3129
    return-void

    .line 3132
    :cond_9
    if-ge v2, v1, :cond_13

    .line 3133
    move/from16 v3, p2

    .line 3134
    .local v3, "temp":I
    move/from16 v2, p1

    .line 3135
    .end local p2    # "end":I
    .local v2, "end":I
    move v1, v3

    move v3, v2

    move v2, v1

    .end local p1    # "start":I
    .local v1, "start":I
    goto :goto_15

    .line 3132
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "temp":I
    .restart local p1    # "start":I
    .restart local p2    # "end":I
    :cond_13
    move v3, v2

    move v2, v1

    .line 3138
    .end local p1    # "start":I
    .end local p2    # "end":I
    .local v2, "start":I
    .local v3, "end":I
    :goto_15
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v1

    .line 3139
    .local v1, "startline":I
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v7

    .line 3141
    .local v7, "endline":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3142
    .local v4, "top":I
    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3144
    .local v5, "bottom":I
    if-ne v1, v7, :cond_36

    .line 3145
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    move v9, v5

    move v5, v7

    move v7, v1

    move v1, v5

    move/from16 v17, v2

    move v5, v9

    .end local v3    # "end":I
    .end local v5    # "bottom":I
    .local v9, "bottom":I
    .local v16, "end":I
    goto/16 :goto_db

    .line 3147
    .end local v9    # "bottom":I
    .end local v16    # "end":I
    .restart local v3    # "end":I
    .restart local v5    # "bottom":I
    :cond_36
    move/from16 v16, v3

    move v9, v5

    .end local v3    # "end":I
    .end local v5    # "bottom":I
    .restart local v9    # "bottom":I
    .restart local v16    # "end":I
    iget v3, v0, Landroid/text/Layout;->mWidth:I

    int-to-float v10, v3

    .line 3149
    .local v10, "width":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 3150
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 3149
    move-object/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3152
    move/from16 v17, v2

    .end local v2    # "start":I
    .local v17, "start":I
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_66

    .line 3153
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v11

    int-to-float v12, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v2

    int-to-float v14, v2

    const/4 v15, 0x0

    const/4 v13, 0x0

    move v2, v10

    move-object/from16 v10, p3

    .end local v10    # "width":F
    .local v2, "width":F
    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    move v13, v2

    goto :goto_78

    .line 3156
    .end local v2    # "width":F
    .restart local v10    # "width":F
    :cond_66
    move v2, v10

    .end local v10    # "width":F
    .restart local v2    # "width":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v11

    int-to-float v12, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    int-to-float v14, v5

    const/4 v15, 0x1

    move-object/from16 v10, p3

    move v13, v2

    .end local v2    # "width":F
    .local v13, "width":F
    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3160
    :goto_78
    add-int/lit8 v2, v1, 0x1

    move v5, v9

    .end local v9    # "bottom":I
    .local v2, "i":I
    .restart local v5    # "bottom":I
    :goto_7b
    if-ge v2, v7, :cond_a1

    .line 3161
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3162
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v5

    .line 3163
    invoke-virtual {v0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v6

    if-ne v6, v3, :cond_95

    .line 3164
    int-to-float v12, v4

    int-to-float v14, v5

    const/4 v15, 0x0

    const/4 v11, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    goto :goto_9e

    .line 3166
    :cond_95
    int-to-float v12, v4

    int-to-float v14, v5

    const/4 v15, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3160
    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_7b

    .line 3170
    .end local v2    # "i":I
    :cond_a1
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    .line 3171
    invoke-virtual {v0, v7, v8}, Landroid/text/Layout;->getLineBottom(IZ)I

    move-result v5

    .line 3173
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineStart(I)I

    move-result v2

    move v6, v7

    move v7, v1

    move v1, v6

    move-object/from16 v6, p3

    move v8, v3

    move/from16 v3, v16

    .end local v16    # "end":I
    .local v1, "endline":I
    .restart local v3    # "end":I
    .local v7, "startline":I
    invoke-direct/range {v0 .. v6}, Landroid/text/Layout;->addSelection(IIIIILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3175
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v2

    if-ne v2, v8, :cond_cd

    .line 3176
    int-to-float v12, v4

    move v2, v13

    .end local v13    # "width":F
    .local v2, "width":F
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v13

    int-to-float v14, v5

    const/4 v15, 0x0

    move-object/from16 v10, p3

    move v11, v2

    .end local v2    # "width":F
    .local v11, "width":F
    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .end local v11    # "width":F
    .restart local v2    # "width":F
    goto :goto_db

    .line 3179
    .end local v2    # "width":F
    .restart local v13    # "width":F
    :cond_cd
    move v2, v13

    .end local v13    # "width":F
    .restart local v2    # "width":F
    int-to-float v12, v4

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v13

    int-to-float v14, v5

    const/4 v15, 0x1

    const/4 v11, 0x0

    move-object/from16 v10, p3

    invoke-interface/range {v10 .. v15}, Landroid/text/Layout$SelectionRectangleConsumer;->accept(FFFFI)V

    .line 3183
    .end local v2    # "width":F
    :goto_db
    return-void
.end method

.method public whitelist getSelectionPath(IILandroid/graphics/Path;)V
    .registers 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    .line 3111
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 3112
    new-instance v0, Landroid/text/Layout$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Landroid/text/Layout$$ExternalSyntheticLambda0;-><init>(Landroid/graphics/Path;)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getSelection(IILandroid/text/Layout$SelectionRectangleConsumer;)V

    .line 3114
    return-void
.end method

.method public whitelist getShiftDrawingOffsetForStartOverhang()Z
    .registers 2

    .line 4634
    iget-boolean v0, p0, Landroid/text/Layout;->mShiftDrawingOffsetForStartOverhang:Z

    return v0
.end method

.method public final whitelist getSpacingAdd()F
    .registers 2

    .line 4420
    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingAmount()F

    move-result v0

    return v0
.end method

.method public final whitelist getSpacingMultiplier()F
    .registers 2

    .line 4393
    invoke-virtual {p0}, Landroid/text/Layout;->getLineSpacingMultiplier()F

    move-result v0

    return v0
.end method

.method public blacklist getStartHyphenEdit(I)I
    .registers 3
    .param p1, "line"    # I

    .line 1447
    const/4 v0, 0x0

    return v0
.end method

.method public final whitelist getText()Ljava/lang/CharSequence;
    .registers 2

    .line 4326
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final whitelist getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .registers 2

    .line 4379
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method public abstract whitelist getTopPadding()I
.end method

.method public whitelist getUseBoundsForWidth()Z
    .registers 2

    .line 4620
    iget-boolean v0, p0, Landroid/text/Layout;->mUseBoundsForWidth:Z

    return v0
.end method

.method public final whitelist getWidth()I
    .registers 2

    .line 4353
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    return v0
.end method

.method public final whitelist increaseWidthTo(I)V
    .registers 4
    .param p1, "wid"    # I

    .line 1260
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    if-lt p1, v0, :cond_7

    .line 1264
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    .line 1265
    return-void

    .line 1261
    :cond_7
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "attempted to reduce Layout width"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist isFallbackLineSpacingEnabled()Z
    .registers 2

    .line 4458
    iget-boolean v0, p0, Landroid/text/Layout;->mFallbackLineSpacing:Z

    return v0
.end method

.method public final whitelist isFontPaddingIncluded()Z
    .registers 2

    .line 4445
    iget-boolean v0, p0, Landroid/text/Layout;->mIncludePad:Z

    return v0
.end method

.method public greylist isLevelBoundary(I)Z
    .registers 12
    .param p1, "offset"    # I

    .line 1477
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1478
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1479
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_4c

    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    if-ne v1, v2, :cond_12

    goto :goto_4c

    .line 1483
    :cond_12
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1484
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 1485
    .local v4, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v5

    .line 1486
    .local v5, "lineEnd":I
    const/4 v6, 0x1

    if-eq p1, v4, :cond_30

    if-ne p1, v5, :cond_22

    goto :goto_30

    .line 1492
    :cond_22
    sub-int/2addr p1, v4

    .line 1493
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_24
    array-length v8, v2

    if-ge v7, v8, :cond_2f

    .line 1494
    aget v8, v2, v7

    if-ne p1, v8, :cond_2c

    .line 1495
    return v6

    .line 1493
    :cond_2c
    add-int/lit8 v7, v7, 0x2

    goto :goto_24

    .line 1498
    .end local v7    # "i":I
    :cond_2f
    return v3

    .line 1487
    :cond_30
    :goto_30
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_38

    move v7, v3

    goto :goto_39

    :cond_38
    move v7, v6

    .line 1488
    .local v7, "paraLevel":I
    :goto_39
    if-ne p1, v4, :cond_3d

    move v8, v3

    goto :goto_40

    :cond_3d
    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    .line 1489
    .local v8, "runIndex":I
    :goto_40
    add-int/lit8 v9, v8, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    if-eq v9, v7, :cond_4b

    move v3, v6

    :cond_4b
    return v3

    .line 1480
    .end local v2    # "runs":[I
    .end local v4    # "lineStart":I
    .end local v5    # "lineEnd":I
    .end local v7    # "paraLevel":I
    .end local v8    # "runIndex":I
    :cond_4c
    :goto_4c
    return v3
.end method

.method public whitelist isRtlCharAt(I)Z
    .registers 13
    .param p1, "offset"    # I

    .line 1507
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1508
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v1

    .line 1509
    .local v1, "dirs":Landroid/text/Layout$Directions;
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_e

    .line 1510
    return v3

    .line 1512
    :cond_e
    sget-object v2, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    const/4 v4, 0x1

    if-ne v1, v2, :cond_14

    .line 1513
    return v4

    .line 1515
    :cond_14
    iget-object v2, v1, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1516
    .local v2, "runs":[I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v5

    .line 1517
    .local v5, "lineStart":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    array-length v7, v2

    if-ge v6, v7, :cond_3f

    .line 1518
    aget v7, v2, v6

    add-int/2addr v7, v5

    .line 1519
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1520
    .local v8, "limit":I
    if-lt p1, v7, :cond_3c

    if-ge p1, v8, :cond_3c

    .line 1521
    add-int/lit8 v9, v6, 0x1

    aget v9, v2, v9

    ushr-int/lit8 v9, v9, 0x1a

    and-int/lit8 v9, v9, 0x3f

    .line 1522
    .local v9, "level":I
    and-int/lit8 v10, v9, 0x1

    if-eqz v10, :cond_3b

    move v3, v4

    :cond_3b
    return v3

    .line 1517
    .end local v7    # "start":I
    .end local v8    # "limit":I
    .end local v9    # "level":I
    :cond_3c
    add-int/lit8 v6, v6, 0x2

    goto :goto_1b

    .line 1526
    .end local v6    # "i":I
    :cond_3f
    return v3
.end method

.method protected final whitelist isSpanned()Z
    .registers 2

    .line 3431
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    return v0
.end method

.method public greylist-max-o primaryIsTrailingPrevious(I)Z
    .registers 14
    .param p1, "offset"    # I

    .line 1583
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 1584
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    .line 1585
    .local v1, "lineStart":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    .line 1586
    .local v2, "lineEnd":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v3

    iget-object v3, v3, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1588
    .local v3, "runs":[I
    const/4 v4, -0x1

    .line 1589
    .local v4, "levelAt":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_14
    array-length v6, v3

    const v7, 0x3ffffff

    const/4 v8, 0x0

    if-ge v5, v6, :cond_3a

    .line 1590
    aget v6, v3, v5

    add-int/2addr v6, v1

    .line 1591
    .local v6, "start":I
    add-int/lit8 v9, v5, 0x1

    aget v9, v3, v9

    and-int/2addr v9, v7

    add-int/2addr v9, v6

    .line 1592
    .local v9, "limit":I
    if-le v9, v2, :cond_27

    .line 1593
    move v9, v2

    .line 1595
    :cond_27
    if-lt p1, v6, :cond_37

    if-ge p1, v9, :cond_37

    .line 1596
    if-le p1, v6, :cond_2e

    .line 1598
    return v8

    .line 1600
    :cond_2e
    add-int/lit8 v10, v5, 0x1

    aget v10, v3, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v4, v10, 0x3f

    .line 1601
    goto :goto_3a

    .line 1589
    .end local v6    # "start":I
    .end local v9    # "limit":I
    :cond_37
    add-int/lit8 v5, v5, 0x2

    goto :goto_14

    .line 1604
    .end local v5    # "i":I
    :cond_3a
    :goto_3a
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v4, v5, :cond_48

    .line 1606
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v5

    if-ne v5, v6, :cond_46

    move v5, v8

    goto :goto_47

    :cond_46
    move v5, v6

    :goto_47
    move v4, v5

    .line 1610
    :cond_48
    const/4 v5, -0x1

    .line 1611
    .local v5, "levelBefore":I
    if-ne p1, v1, :cond_56

    .line 1612
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v7

    if-ne v7, v6, :cond_53

    move v7, v8

    goto :goto_54

    :cond_53
    move v7, v6

    :goto_54
    move v5, v7

    goto :goto_78

    .line 1614
    :cond_56
    add-int/lit8 p1, p1, -0x1

    .line 1615
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_59
    array-length v10, v3

    if-ge v9, v10, :cond_78

    .line 1616
    aget v10, v3, v9

    add-int/2addr v10, v1

    .line 1617
    .local v10, "start":I
    add-int/lit8 v11, v9, 0x1

    aget v11, v3, v11

    and-int/2addr v11, v7

    add-int/2addr v11, v10

    .line 1618
    .local v11, "limit":I
    if-le v11, v2, :cond_68

    .line 1619
    move v11, v2

    .line 1621
    :cond_68
    if-lt p1, v10, :cond_75

    if-ge p1, v11, :cond_75

    .line 1622
    add-int/lit8 v7, v9, 0x1

    aget v7, v3, v7

    ushr-int/lit8 v7, v7, 0x1a

    and-int/lit8 v5, v7, 0x3f

    .line 1623
    goto :goto_78

    .line 1615
    .end local v10    # "start":I
    .end local v11    # "limit":I
    :cond_75
    add-int/lit8 v9, v9, 0x2

    goto :goto_59

    .line 1628
    .end local v9    # "i":I
    :cond_78
    :goto_78
    if-ge v5, v4, :cond_7b

    move v8, v6

    :cond_7b
    return v8
.end method

.method public greylist-max-o primaryIsTrailingPreviousAllLineOffsets(I)[Z
    .registers 14
    .param p1, "line"    # I

    .line 1640
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    .line 1641
    .local v0, "lineStart":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    .line 1642
    .local v1, "lineEnd":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    move-result-object v2

    iget-object v2, v2, Landroid/text/Layout$Directions;->mDirections:[I

    .line 1644
    .local v2, "runs":[I
    sub-int v3, v1, v0

    const/4 v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Z

    .line 1646
    .local v3, "trailing":[Z
    sub-int v5, v1, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    .line 1647
    .local v5, "level":[B
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1a
    array-length v7, v2

    if-ge v6, v7, :cond_40

    .line 1648
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1649
    .local v7, "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    const v9, 0x3ffffff

    and-int/2addr v8, v9

    add-int/2addr v8, v7

    .line 1650
    .local v8, "limit":I
    if-le v8, v1, :cond_2c

    .line 1651
    move v8, v1

    .line 1653
    :cond_2c
    if-ne v8, v7, :cond_2f

    .line 1654
    goto :goto_3d

    .line 1656
    :cond_2f
    sub-int v9, v8, v0

    sub-int/2addr v9, v4

    add-int/lit8 v10, v6, 0x1

    aget v10, v2, v10

    ushr-int/lit8 v10, v10, 0x1a

    and-int/lit8 v10, v10, 0x3f

    int-to-byte v10, v10

    aput-byte v10, v5, v9

    .line 1647
    .end local v7    # "start":I
    .end local v8    # "limit":I
    :goto_3d
    add-int/lit8 v6, v6, 0x2

    goto :goto_1a

    .line 1660
    .end local v6    # "i":I
    :cond_40
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_41
    array-length v7, v2

    if-ge v6, v7, :cond_6c

    .line 1661
    aget v7, v2, v6

    add-int/2addr v7, v0

    .line 1662
    .restart local v7    # "start":I
    add-int/lit8 v8, v6, 0x1

    aget v8, v2, v8

    ushr-int/lit8 v8, v8, 0x1a

    and-int/lit8 v8, v8, 0x3f

    int-to-byte v8, v8

    .line 1663
    .local v8, "currentLevel":B
    sub-int v9, v7, v0

    const/4 v10, 0x0

    if-ne v7, v0, :cond_5f

    .line 1664
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v11

    if-ne v11, v4, :cond_5d

    move v11, v10

    goto :goto_64

    :cond_5d
    move v11, v4

    goto :goto_64

    .line 1665
    :cond_5f
    sub-int v11, v7, v0

    sub-int/2addr v11, v4

    aget-byte v11, v5, v11

    :goto_64
    if-le v8, v11, :cond_67

    move v10, v4

    :cond_67
    aput-boolean v10, v3, v9

    .line 1660
    .end local v7    # "start":I
    .end local v8    # "currentLevel":B
    add-int/lit8 v6, v6, 0x2

    goto :goto_41

    .line 1668
    .end local v6    # "i":I
    :cond_6c
    return-object v3
.end method

.method greylist-max-o replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .registers 10
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    .line 430
    if-ltz p3, :cond_16

    .line 434
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    .line 435
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    .line 436
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    .line 437
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    .line 438
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    .line 439
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    .line 440
    instance-of v0, p1, Landroid/text/Spanned;

    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    .line 441
    invoke-direct {p0}, Landroid/text/Layout;->initSpanColors()V

    .line 442
    return-void

    .line 431
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Layout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist-max-r shouldClampCursor(I)Z
    .registers 5
    .param p1, "line"    # I

    .line 2984
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    sparse-switch v0, :sswitch_data_18

    .line 2990
    return v1

    .line 2986
    :sswitch_e
    return v2

    .line 2988
    :sswitch_f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    if-lez v0, :cond_16

    move v1, v2

    :cond_16
    return v1

    nop

    :sswitch_data_18
    .sparse-switch
        0x0 -> :sswitch_f
        0x3 -> :sswitch_e
    .end sparse-switch
.end method
