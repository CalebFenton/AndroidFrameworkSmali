.class public abstract Landroid/text/Layout;
.super Ljava/lang/Object;
.source "Layout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/Layout$Alignment;,
        Landroid/text/Layout$Directions;,
        Landroid/text/Layout$Ellipsizer;,
        Landroid/text/Layout$SpannedEllipsizer;,
        Landroid/text/Layout$TabStops;
    }
.end annotation


# static fields
.field private static final synthetic -android-text-Layout$AlignmentSwitchesValues:[I = null

.field public static final BREAK_STRATEGY_BALANCED:I = 0x2

.field public static final BREAK_STRATEGY_HIGH_QUALITY:I = 0x1

.field public static final BREAK_STRATEGY_SIMPLE:I = 0x0

.field static final DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

.field static final DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

.field public static final DIR_LEFT_TO_RIGHT:I = 0x1

.field static final DIR_REQUEST_DEFAULT_LTR:I = 0x2

.field static final DIR_REQUEST_DEFAULT_RTL:I = -0x2

.field static final DIR_REQUEST_LTR:I = 0x1

.field static final DIR_REQUEST_RTL:I = -0x1

.field public static final DIR_RIGHT_TO_LEFT:I = -0x1

.field public static final HYPHENATION_FREQUENCY_FULL:I = 0x2

.field public static final HYPHENATION_FREQUENCY_NONE:I = 0x0

.field public static final HYPHENATION_FREQUENCY_NORMAL:I = 0x1

.field private static final NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

.field static final RUN_LENGTH_MASK:I = 0x3ffffff

.field static final RUN_LEVEL_MASK:I = 0x3f

.field static final RUN_LEVEL_SHIFT:I = 0x1a

.field static final RUN_RTL_FLAG:I = 0x4000000

.field private static final TAB_INCREMENT:I = 0x14

.field private static final sTempRect:Landroid/graphics/Rect;


# instance fields
.field private mAlignment:Landroid/text/Layout$Alignment;

.field private mLineBackgroundSpans:Landroid/text/SpanSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/text/SpanSet",
            "<",
            "Landroid/text/style/LineBackgroundSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mPaint:Landroid/text/TextPaint;

.field private mSpacingAdd:F

.field private mSpacingMult:F

.field private mSpannedText:Z

.field private mText:Ljava/lang/CharSequence;

.field private mTextDir:Landroid/text/TextDirectionHeuristic;

.field private mWidth:I


# direct methods
.method private static synthetic -getandroid-text-Layout$AlignmentSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/text/Layout$Alignment;->values()[Landroid/text/Layout$Alignment;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@10
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x3

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@19
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x1

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@22
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x2

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@2b
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@34
    invoke-virtual {v1}, Landroid/text/Layout$Alignment;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    #@3b
    :goto_4
    sput-object v0, Landroid/text/Layout;->-android-text-Layout$AlignmentSwitchesValues:[I

    #@3d
    return-object v0

    #@3e
    :catch_0
    move-exception v1

    #@3f
    goto :goto_4

    #@40
    :catch_1
    move-exception v1

    #@41
    goto :goto_3

    #@42
    :catch_2
    move-exception v1

    #@43
    goto :goto_2

    #@44
    :catch_3
    move-exception v1

    #@45
    goto :goto_1

    #@46
    :catch_4
    move-exception v1

    #@47
    goto :goto_0
.end method

.method static synthetic -wrap0(Landroid/text/Layout;III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    invoke-direct/range {p0 .. p6}, Landroid/text/Layout;->ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 103
    const-class v0, Landroid/text/style/ParagraphStyle;

    #@3
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, [Landroid/text/style/ParagraphStyle;

    #@9
    .line 102
    sput-object v0, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    #@b
    .line 2043
    new-instance v0, Landroid/graphics/Rect;

    #@d
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    #@10
    sput-object v0, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    #@12
    .line 2074
    new-instance v0, Landroid/text/Layout$Directions;

    #@14
    const v1, 0x3ffffff

    #@17
    filled-new-array {v2, v1}, [I

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    #@1e
    .line 2073
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@20
    .line 2076
    new-instance v0, Landroid/text/Layout$Directions;

    #@22
    const v1, 0x7ffffff

    #@25
    filled-new-array {v2, v1}, [I

    #@28
    move-result-object v1

    #@29
    invoke-direct {v0, v1}, Landroid/text/Layout$Directions;-><init>([I)V

    #@2c
    .line 2075
    sput-object v0, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@2e
    .line 47
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingMult"    # F
    .param p6, "spacingAdd"    # F

    #@0
    .prologue
    .line 158
    sget-object v5, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@2
    move-object v0, p0

    #@3
    move-object v1, p1

    #@4
    move-object v2, p2

    #@5
    move v3, p3

    #@6
    move-object v4, p4

    #@7
    move v6, p5

    #@8
    move v7, p6

    #@9
    invoke-direct/range {v0 .. v7}, Landroid/text/Layout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V

    #@c
    .line 157
    return-void
.end method

.method protected constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;Landroid/text/TextDirectionHeuristic;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "textDir"    # Landroid/text/TextDirectionHeuristic;
    .param p6, "spacingMult"    # F
    .param p7, "spacingAdd"    # F

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2040
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@6
    iput-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@8
    .line 181
    if-gez p3, :cond_0

    #@a
    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v1, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v2, "Layout: "

    #@14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v1

    #@18
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    const-string/jumbo v2, " < 0"

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v1

    #@23
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v0

    #@2b
    .line 188
    :cond_0
    if-eqz p2, :cond_1

    #@2d
    .line 189
    iput v1, p2, Landroid/text/TextPaint;->bgColor:I

    #@2f
    .line 190
    iput v1, p2, Landroid/text/TextPaint;->baselineShift:I

    #@31
    .line 193
    :cond_1
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@33
    .line 194
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@35
    .line 195
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    #@37
    .line 196
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@39
    .line 197
    iput p6, p0, Landroid/text/Layout;->mSpacingMult:F

    #@3b
    .line 198
    iput p7, p0, Landroid/text/Layout;->mSpacingAdd:F

    #@3d
    .line 199
    instance-of v0, p1, Landroid/text/Spanned;

    #@3f
    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    #@41
    .line 200
    iput-object p5, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@43
    .line 179
    return-void
.end method

.method private addSelection(IIIIILandroid/graphics/Path;)V
    .locals 19
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "top"    # I
    .param p5, "bottom"    # I
    .param p6, "dest"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 1501
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    #@3
    move-result v16

    #@4
    .line 1502
    .local v16, "linestart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@7
    move-result v15

    #@8
    .line 1503
    .local v15, "lineend":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@b
    move-result-object v9

    #@c
    .line 1505
    .local v9, "dirs":Landroid/text/Layout$Directions;
    move/from16 v0, v16

    #@e
    if-le v15, v0, :cond_0

    #@10
    move-object/from16 v0, p0

    #@12
    iget-object v3, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@14
    add-int/lit8 v5, v15, -0x1

    #@16
    invoke-interface {v3, v5}, Ljava/lang/CharSequence;->charAt(I)C

    #@19
    move-result v3

    #@1a
    const/16 v5, 0xa

    #@1c
    if-ne v3, v5, :cond_0

    #@1e
    .line 1506
    add-int/lit8 v15, v15, -0x1

    #@20
    .line 1508
    :cond_0
    const/4 v14, 0x0

    #@21
    .local v14, "i":I
    :goto_0
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@23
    array-length v3, v3

    #@24
    if-ge v14, v3, :cond_3

    #@26
    .line 1509
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@28
    aget v3, v3, v14

    #@2a
    add-int v13, v16, v3

    #@2c
    .line 1510
    .local v13, "here":I
    iget-object v3, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@2e
    add-int/lit8 v5, v14, 0x1

    #@30
    aget v3, v3, v5

    #@32
    const v5, 0x3ffffff

    #@35
    and-int/2addr v3, v5

    #@36
    add-int v18, v13, v3

    #@38
    .line 1512
    .local v18, "there":I
    move/from16 v0, v18

    #@3a
    if-le v0, v15, :cond_1

    #@3c
    .line 1513
    move/from16 v18, v15

    #@3e
    .line 1515
    :cond_1
    move/from16 v0, p2

    #@40
    move/from16 v1, v18

    #@42
    if-gt v0, v1, :cond_2

    #@44
    move/from16 v0, p3

    #@46
    if-lt v0, v13, :cond_2

    #@48
    .line 1516
    move/from16 v0, p2

    #@4a
    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    #@4d
    move-result v17

    #@4e
    .line 1517
    .local v17, "st":I
    move/from16 v0, p3

    #@50
    move/from16 v1, v18

    #@52
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    #@55
    move-result v10

    #@56
    .line 1519
    .local v10, "en":I
    move/from16 v0, v17

    #@58
    if-eq v0, v10, :cond_2

    #@5a
    .line 1520
    const/4 v3, 0x0

    #@5b
    const/4 v5, 0x0

    #@5c
    move-object/from16 v0, p0

    #@5e
    move/from16 v1, v17

    #@60
    move/from16 v2, p1

    #@62
    invoke-direct {v0, v1, v3, v2, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    #@65
    move-result v11

    #@66
    .line 1521
    .local v11, "h1":F
    const/4 v3, 0x1

    #@67
    const/4 v5, 0x0

    #@68
    move-object/from16 v0, p0

    #@6a
    move/from16 v1, p1

    #@6c
    invoke-direct {v0, v10, v3, v1, v5}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    #@6f
    move-result v12

    #@70
    .line 1523
    .local v12, "h2":F
    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    #@73
    move-result v4

    #@74
    .line 1524
    .local v4, "left":F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    #@77
    move-result v6

    #@78
    .line 1526
    .local v6, "right":F
    move/from16 v0, p4

    #@7a
    int-to-float v5, v0

    #@7b
    move/from16 v0, p5

    #@7d
    int-to-float v7, v0

    #@7e
    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@80
    move-object/from16 v3, p6

    #@82
    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@85
    .line 1508
    .end local v4    # "left":F
    .end local v6    # "right":F
    .end local v10    # "en":I
    .end local v11    # "h1":F
    .end local v12    # "h2":F
    .end local v17    # "st":I
    :cond_2
    add-int/lit8 v14, v14, 0x2

    #@87
    goto :goto_0

    #@88
    .line 1500
    .end local v13    # "here":I
    .end local v18    # "there":I
    :cond_3
    return-void
.end method

.method private ellipsize(III[CILandroid/text/TextUtils$TruncateAt;)V
    .locals 7
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "line"    # I
    .param p4, "dest"    # [C
    .param p5, "destoff"    # I
    .param p6, "method"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    .line 1887
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisCount(I)I

    #@3
    move-result v2

    #@4
    .line 1889
    .local v2, "ellipsisCount":I
    if-nez v2, :cond_0

    #@6
    .line 1890
    return-void

    #@7
    .line 1893
    :cond_0
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getEllipsisStart(I)I

    #@a
    move-result v3

    #@b
    .line 1894
    .local v3, "ellipsisStart":I
    invoke-virtual {p0, p3}, Landroid/text/Layout;->getLineStart(I)I

    #@e
    move-result v5

    #@f
    .line 1896
    .local v5, "linestart":I
    move v4, v3

    #@10
    .local v4, "i":I
    :goto_0
    add-int v6, v3, v2

    #@12
    if-ge v4, v6, :cond_3

    #@14
    .line 1899
    if-ne v4, v3, :cond_2

    #@16
    .line 1900
    invoke-direct {p0, p6}, Landroid/text/Layout;->getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C

    #@19
    move-result v1

    #@1a
    .line 1905
    :goto_1
    add-int v0, v4, v5

    #@1c
    .line 1907
    .local v0, "a":I
    if-lt v0, p1, :cond_1

    #@1e
    if-ge v0, p2, :cond_1

    #@20
    .line 1908
    add-int v6, p5, v0

    #@22
    sub-int/2addr v6, p1

    #@23
    aput-char v1, p4, v6

    #@25
    .line 1896
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@27
    goto :goto_0

    #@28
    .line 1902
    .end local v0    # "a":I
    :cond_2
    const v1, 0xfeff

    #@2b
    .local v1, "c":C
    goto :goto_1

    #@2c
    .line 1886
    .end local v1    # "c":C
    :cond_3
    return-void
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F
    .locals 5
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 121
    const/4 v1, 0x0

    #@1
    .line 124
    .local v1, "need":F
    move v0, p1

    #@2
    .local v0, "i":I
    :goto_0
    if-gt v0, p2, :cond_2

    #@4
    .line 125
    const/16 v4, 0xa

    #@6
    invoke-static {p0, v4, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    #@9
    move-result v2

    #@a
    .line 127
    .local v2, "next":I
    if-gez v2, :cond_0

    #@c
    .line 128
    move v2, p2

    #@d
    .line 131
    :cond_0
    invoke-static {p3, p0, v0, v2}, Landroid/text/Layout;->measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F

    #@10
    move-result v3

    #@11
    .line 133
    .local v3, "w":F
    cmpl-float v4, v3, v1

    #@13
    if-lez v4, :cond_1

    #@15
    .line 134
    move v1, v3

    #@16
    .line 136
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@18
    .line 124
    move v0, v2

    #@19
    goto :goto_0

    #@1a
    .line 139
    .end local v2    # "next":I
    .end local v3    # "w":F
    :cond_2
    return v1
.end method

.method public static getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F
    .locals 2
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;

    #@0
    .prologue
    .line 111
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {p0, v1, v0, p1}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    #@8
    move-result v0

    #@9
    return v0
.end method

.method private getEllipsisChar(Landroid/text/TextUtils$TruncateAt;)C
    .locals 2
    .param p1, "method"    # Landroid/text/TextUtils$TruncateAt;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1880
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END_SMALL:Landroid/text/TextUtils$TruncateAt;

    #@3
    if-ne p1, v0, :cond_0

    #@5
    .line 1881
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_TWO_DOTS:[C

    #@7
    aget-char v0, v0, v1

    #@9
    .line 1880
    :goto_0
    return v0

    #@a
    .line 1882
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->ELLIPSIS_NORMAL:[C

    #@c
    aget-char v0, v0, v1

    #@e
    goto :goto_0
.end method

.method private getHorizontal(IZ)F
    .locals 1
    .param p1, "offset"    # I
    .param p2, "primary"    # Z

    #@0
    .prologue
    .line 915
    if-eqz p2, :cond_0

    #@2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    #@5
    move-result v0

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    #@a
    move-result v0

    #@b
    goto :goto_0
.end method

.method private getHorizontal(IZIZ)F
    .locals 14
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "line"    # I
    .param p4, "clamped"    # Z

    #@0
    .prologue
    .line 925
    move/from16 v0, p3

    #@2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    #@5
    move-result v4

    #@6
    .line 926
    .local v4, "start":I
    move/from16 v0, p3

    #@8
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    #@b
    move-result v5

    #@c
    .line 927
    .local v5, "end":I
    move/from16 v0, p3

    #@e
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@11
    move-result v6

    #@12
    .line 928
    .local v6, "dir":I
    move/from16 v0, p3

    #@14
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineContainsTab(I)Z

    #@17
    move-result v8

    #@18
    .line 929
    .local v8, "hasTab":Z
    move/from16 v0, p3

    #@1a
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@1d
    move-result-object v7

    #@1e
    .line 931
    .local v7, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x0

    #@1f
    .line 932
    .local v9, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v8, :cond_0

    #@21
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@23
    instance-of v2, v2, Landroid/text/Spanned;

    #@25
    if-eqz v2, :cond_0

    #@27
    .line 935
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@29
    check-cast v2, Landroid/text/Spanned;

    #@2b
    const-class v3, Landroid/text/style/TabStopSpan;

    #@2d
    invoke-static {v2, v4, v5, v3}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@30
    move-result-object v12

    #@31
    check-cast v12, [Landroid/text/style/TabStopSpan;

    #@33
    .line 936
    .local v12, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v2, v12

    #@34
    if-lez v2, :cond_0

    #@36
    .line 937
    new-instance v9, Landroid/text/Layout$TabStops;

    #@38
    .end local v9    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v2, 0x14

    #@3a
    invoke-direct {v9, v2, v12}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    #@3d
    .line 941
    .end local v12    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@40
    move-result-object v1

    #@41
    .line 942
    .local v1, "tl":Landroid/text/TextLine;
    iget-object v2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@43
    iget-object v3, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@45
    invoke-virtual/range {v1 .. v9}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@48
    .line 943
    sub-int v2, p1, v4

    #@4a
    const/4 v3, 0x0

    #@4b
    move/from16 v0, p2

    #@4d
    invoke-virtual {v1, v2, v0, v3}, Landroid/text/TextLine;->measure(IZLandroid/graphics/Paint$FontMetricsInt;)F

    #@50
    move-result v13

    #@51
    .line 944
    .local v13, "wid":F
    invoke-static {v1}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@54
    .line 946
    if-eqz p4, :cond_1

    #@56
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    #@58
    int-to-float v2, v2

    #@59
    cmpl-float v2, v13, v2

    #@5b
    if-lez v2, :cond_1

    #@5d
    .line 947
    iget v2, p0, Landroid/text/Layout;->mWidth:I

    #@5f
    int-to-float v13, v2

    #@60
    .line 949
    :cond_1
    move/from16 v0, p3

    #@62
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphLeft(I)I

    #@65
    move-result v10

    #@66
    .line 950
    .local v10, "left":I
    move/from16 v0, p3

    #@68
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getParagraphRight(I)I

    #@6b
    move-result v11

    #@6c
    .line 952
    .local v11, "right":I
    move/from16 v0, p3

    #@6e
    invoke-direct {p0, v0, v10, v11}, Landroid/text/Layout;->getLineStartPos(III)I

    #@71
    move-result v2

    #@72
    int-to-float v2, v2

    #@73
    add-float/2addr v2, v13

    #@74
    return v2
.end method

.method private getHorizontal(IZZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "trailing"    # Z
    .param p3, "clamped"    # Z

    #@0
    .prologue
    .line 919
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@3
    move-result v0

    #@4
    .line 921
    .local v0, "line":I
    invoke-direct {p0, p1, p2, v0, p3}, Landroid/text/Layout;->getHorizontal(IZIZ)F

    #@7
    move-result v1

    #@8
    return v1
.end method

.method private getLineExtent(ILandroid/text/Layout$TabStops;Z)F
    .locals 10
    .param p1, "line"    # I
    .param p2, "tabStops"    # Landroid/text/Layout$TabStops;
    .param p3, "full"    # Z

    #@0
    .prologue
    .line 1081
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    #@3
    move-result v3

    #@4
    .line 1082
    .local v3, "start":I
    if-eqz p3, :cond_0

    #@6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@9
    move-result v4

    #@a
    .line 1083
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    #@d
    move-result v7

    #@e
    .line 1084
    .local v7, "hasTabs":Z
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@11
    move-result-object v6

    #@12
    .line 1085
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@15
    move-result v5

    #@16
    .line 1087
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@19
    move-result-object v0

    #@1a
    .line 1088
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@1c
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@1e
    move-object v8, p2

    #@1f
    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@22
    .line 1089
    const/4 v1, 0x0

    #@23
    invoke-virtual {v0, v1}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    #@26
    move-result v9

    #@27
    .line 1090
    .local v9, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@2a
    .line 1091
    return v9

    #@2b
    .line 1082
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v4    # "end":I
    .end local v5    # "dir":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabs":Z
    .end local v9    # "width":F
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    #@2e
    move-result v4

    #@2f
    .restart local v4    # "end":I
    goto :goto_0
.end method

.method private getLineExtent(IZ)F
    .locals 12
    .param p1, "line"    # I
    .param p2, "full"    # Z

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 1045
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    #@4
    move-result v3

    #@5
    .line 1046
    .local v3, "start":I
    if-eqz p2, :cond_1

    #@7
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@a
    move-result v4

    #@b
    .line 1048
    .local v4, "end":I
    :goto_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    #@e
    move-result v7

    #@f
    .line 1049
    .local v7, "hasTabs":Z
    const/4 v8, 0x0

    #@10
    .line 1050
    .local v8, "tabStops":Landroid/text/Layout$TabStops;
    if-eqz v7, :cond_0

    #@12
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@14
    instance-of v1, v1, Landroid/text/Spanned;

    #@16
    if-eqz v1, :cond_0

    #@18
    .line 1053
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@1a
    check-cast v1, Landroid/text/Spanned;

    #@1c
    const-class v2, Landroid/text/style/TabStopSpan;

    #@1e
    invoke-static {v1, v3, v4, v2}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v9

    #@22
    check-cast v9, [Landroid/text/style/TabStopSpan;

    #@24
    .line 1054
    .local v9, "tabs":[Landroid/text/style/TabStopSpan;
    array-length v1, v9

    #@25
    if-lez v1, :cond_0

    #@27
    .line 1055
    new-instance v8, Landroid/text/Layout$TabStops;

    #@29
    .end local v8    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v1, 0x14

    #@2b
    invoke-direct {v8, v1, v9}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    #@2e
    .line 1058
    .end local v9    # "tabs":[Landroid/text/style/TabStopSpan;
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@31
    move-result-object v6

    #@32
    .line 1060
    .local v6, "directions":Landroid/text/Layout$Directions;
    if-nez v6, :cond_2

    #@34
    .line 1061
    const/4 v1, 0x0

    #@35
    return v1

    #@36
    .line 1046
    .end local v4    # "end":I
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v7    # "hasTabs":Z
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineVisibleEnd(I)I

    #@39
    move-result v4

    #@3a
    .restart local v4    # "end":I
    goto :goto_0

    #@3b
    .line 1063
    .restart local v6    # "directions":Landroid/text/Layout$Directions;
    .restart local v7    # "hasTabs":Z
    :cond_2
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@3e
    move-result v5

    #@3f
    .line 1065
    .local v5, "dir":I
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@42
    move-result-object v0

    #@43
    .line 1066
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@45
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@47
    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@4a
    .line 1067
    invoke-virtual {v0, v11}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F

    #@4d
    move-result v10

    #@4e
    .line 1068
    .local v10, "width":F
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@51
    .line 1069
    return v10
.end method

.method private getLineStartPos(III)I
    .locals 11
    .param p1, "line"    # I
    .param p2, "left"    # I
    .param p3, "right"    # I

    #@0
    .prologue
    .line 522
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@3
    move-result-object v0

    #@4
    .line 523
    .local v0, "align":Landroid/text/Layout$Alignment;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@7
    move-result v1

    #@8
    .line 525
    .local v1, "dir":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@a
    if-ne v0, v9, :cond_2

    #@c
    .line 526
    const/4 v9, 0x1

    #@d
    if-ne v1, v9, :cond_1

    #@f
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@11
    .line 532
    :cond_0
    :goto_0
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@13
    if-ne v0, v9, :cond_5

    #@15
    .line 533
    const/4 v9, 0x1

    #@16
    if-ne v1, v9, :cond_4

    #@18
    .line 534
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@1a
    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@1d
    move-result v9

    #@1e
    add-int v8, p2, v9

    #@20
    .line 564
    .local v8, "x":I
    :goto_1
    return v8

    #@21
    .line 526
    .end local v8    # "x":I
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@23
    goto :goto_0

    #@24
    .line 527
    :cond_2
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@26
    if-ne v0, v9, :cond_0

    #@28
    .line 528
    const/4 v9, 0x1

    #@29
    if-ne v1, v9, :cond_3

    #@2b
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@2d
    goto :goto_0

    #@2e
    :cond_3
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@30
    goto :goto_0

    #@31
    .line 536
    :cond_4
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@33
    invoke-virtual {p0, p1, v9}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@36
    move-result v9

    #@37
    add-int v8, p3, v9

    #@39
    .restart local v8    # "x":I
    goto :goto_1

    #@3a
    .line 539
    .end local v8    # "x":I
    :cond_5
    const/4 v7, 0x0

    #@3b
    .line 540
    .local v7, "tabStops":Landroid/text/Layout$TabStops;
    iget-boolean v9, p0, Landroid/text/Layout;->mSpannedText:Z

    #@3d
    if-eqz v9, :cond_6

    #@3f
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    #@42
    move-result v9

    #@43
    if-eqz v9, :cond_6

    #@45
    .line 541
    iget-object v4, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@47
    check-cast v4, Landroid/text/Spanned;

    #@49
    .line 542
    .local v4, "spanned":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    #@4c
    move-result v5

    #@4d
    .line 543
    .local v5, "start":I
    invoke-interface {v4}, Landroid/text/Spanned;->length()I

    #@50
    move-result v9

    #@51
    .line 544
    const-class v10, Landroid/text/style/TabStopSpan;

    #@53
    .line 543
    invoke-interface {v4, v5, v9, v10}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@56
    move-result v3

    #@57
    .line 546
    .local v3, "spanEnd":I
    const-class v9, Landroid/text/style/TabStopSpan;

    #@59
    .line 545
    invoke-static {v4, v5, v3, v9}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@5c
    move-result-object v6

    #@5d
    check-cast v6, [Landroid/text/style/TabStopSpan;

    #@5f
    .line 547
    .local v6, "tabSpans":[Landroid/text/style/TabStopSpan;
    array-length v9, v6

    #@60
    if-lez v9, :cond_6

    #@62
    .line 548
    new-instance v7, Landroid/text/Layout$TabStops;

    #@64
    .end local v7    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v9, 0x14

    #@66
    invoke-direct {v7, v9, v6}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    #@69
    .line 551
    .end local v3    # "spanEnd":I
    .end local v4    # "spanned":Landroid/text/Spanned;
    .end local v5    # "start":I
    .end local v6    # "tabSpans":[Landroid/text/style/TabStopSpan;
    :cond_6
    const/4 v9, 0x0

    #@6a
    invoke-direct {p0, p1, v7, v9}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    #@6d
    move-result v9

    #@6e
    float-to-int v2, v9

    #@6f
    .line 552
    .local v2, "max":I
    sget-object v9, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@71
    if-ne v0, v9, :cond_8

    #@73
    .line 553
    const/4 v9, 0x1

    #@74
    if-ne v1, v9, :cond_7

    #@76
    .line 554
    sub-int v9, p3, v2

    #@78
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@7a
    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@7d
    move-result v10

    #@7e
    add-int v8, v9, v10

    #@80
    .restart local v8    # "x":I
    goto :goto_1

    #@81
    .line 557
    .end local v8    # "x":I
    :cond_7
    sub-int v9, p2, v2

    #@83
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@85
    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@88
    move-result v10

    #@89
    add-int v8, v9, v10

    #@8b
    .restart local v8    # "x":I
    goto :goto_1

    #@8c
    .line 560
    .end local v8    # "x":I
    :cond_8
    and-int/lit8 v2, v2, -0x2

    #@8e
    .line 561
    add-int v9, p2, p3

    #@90
    sub-int/2addr v9, v2

    #@91
    sget-object v10, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@93
    invoke-virtual {p0, p1, v10}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@96
    move-result v10

    #@97
    add-int/lit8 v10, v10, 0x1

    #@99
    shr-int v8, v9, v10

    #@9b
    .restart local v8    # "x":I
    goto :goto_1
.end method

.method private getLineVisibleEnd(III)I
    .locals 3
    .param p1, "line"    # I
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1260
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@2
    .line 1262
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v2, v2, -0x1

    #@8
    if-ne p1, v2, :cond_1

    #@a
    .line 1263
    return p3

    #@b
    .line 1266
    .local v0, "ch":C
    :cond_0
    add-int/lit8 p3, p3, -0x1

    #@d
    .end local v0    # "ch":C
    :cond_1
    if-le p3, p2, :cond_4

    #@f
    .line 1267
    add-int/lit8 v2, p3, -0x1

    #@11
    invoke-interface {v1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    #@14
    move-result v0

    #@15
    .line 1269
    .restart local v0    # "ch":C
    const/16 v2, 0xa

    #@17
    if-ne v0, v2, :cond_2

    #@19
    .line 1270
    add-int/lit8 v2, p3, -0x1

    #@1b
    return v2

    #@1c
    .line 1274
    :cond_2
    const/16 v2, 0x20

    #@1e
    if-eq v0, v2, :cond_0

    #@20
    const/16 v2, 0x9

    #@22
    if-eq v0, v2, :cond_0

    #@24
    const/16 v2, 0x1680

    #@26
    if-eq v0, v2, :cond_0

    #@28
    .line 1275
    const/16 v2, 0x2000

    #@2a
    if-gt v2, v0, :cond_3

    #@2c
    const/16 v2, 0x200a

    #@2e
    if-le v0, v2, :cond_5

    #@30
    .line 1276
    :cond_3
    :goto_0
    const/16 v2, 0x205f

    #@32
    if-eq v0, v2, :cond_0

    #@34
    const/16 v2, 0x3000

    #@36
    if-eq v0, v2, :cond_0

    #@38
    .line 1282
    .end local v0    # "ch":C
    :cond_4
    return p3

    #@39
    .line 1275
    .restart local v0    # "ch":C
    :cond_5
    const/16 v2, 0x2007

    #@3b
    if-ne v0, v2, :cond_0

    #@3d
    goto :goto_0
.end method

.method private getOffsetAtStartOf(I)I
    .locals 9
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 1372
    if-nez p1, :cond_0

    #@3
    .line 1373
    return v7

    #@4
    .line 1375
    :cond_0
    iget-object v6, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@6
    .line 1376
    .local v6, "text":Ljava/lang/CharSequence;
    invoke-interface {v6, p1}, Ljava/lang/CharSequence;->charAt(I)C

    #@9
    move-result v0

    #@a
    .line 1378
    .local v0, "c":C
    const v7, 0xdc00

    #@d
    if-lt v0, v7, :cond_1

    #@f
    const v7, 0xdfff

    #@12
    if-gt v0, v7, :cond_1

    #@14
    .line 1379
    add-int/lit8 v7, p1, -0x1

    #@16
    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    #@19
    move-result v1

    #@1a
    .line 1381
    .local v1, "c1":C
    const v7, 0xd800

    #@1d
    if-lt v1, v7, :cond_1

    #@1f
    const v7, 0xdbff

    #@22
    if-gt v1, v7, :cond_1

    #@24
    .line 1382
    add-int/lit8 p1, p1, -0x1

    #@26
    .line 1385
    .end local v1    # "c1":C
    :cond_1
    iget-boolean v7, p0, Landroid/text/Layout;->mSpannedText:Z

    #@28
    if-eqz v7, :cond_3

    #@2a
    move-object v7, v6

    #@2b
    .line 1386
    check-cast v7, Landroid/text/Spanned;

    #@2d
    .line 1387
    const-class v8, Landroid/text/style/ReplacementSpan;

    #@2f
    .line 1386
    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@32
    move-result-object v4

    #@33
    check-cast v4, [Landroid/text/style/ReplacementSpan;

    #@35
    .line 1389
    .local v4, "spans":[Landroid/text/style/ReplacementSpan;
    const/4 v3, 0x0

    #@36
    .local v3, "i":I
    :goto_0
    array-length v7, v4

    #@37
    if-ge v3, v7, :cond_3

    #@39
    move-object v7, v6

    #@3a
    .line 1390
    check-cast v7, Landroid/text/Spanned;

    #@3c
    aget-object v8, v4, v3

    #@3e
    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@41
    move-result v5

    #@42
    .local v5, "start":I
    move-object v7, v6

    #@43
    .line 1391
    check-cast v7, Landroid/text/Spanned;

    #@45
    aget-object v8, v4, v3

    #@47
    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    #@4a
    move-result v2

    #@4b
    .line 1393
    .local v2, "end":I
    if-ge v5, p1, :cond_2

    #@4d
    if-le v2, p1, :cond_2

    #@4f
    .line 1394
    move p1, v5

    #@50
    .line 1389
    :cond_2
    add-int/lit8 v3, v3, 0x1

    #@52
    goto :goto_0

    #@53
    .line 1398
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v4    # "spans":[Landroid/text/style/ReplacementSpan;
    .end local v5    # "start":I
    :cond_3
    return p1
.end method

.method private getOffsetToLeftRightOf(IZ)I
    .locals 13
    .param p1, "caret"    # I
    .param p2, "toLeft"    # Z

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 1318
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@5
    move-result v10

    #@6
    .line 1319
    .local v10, "line":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    #@9
    move-result v3

    #@a
    .line 1320
    .local v3, "lineStart":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    #@d
    move-result v4

    #@e
    .line 1321
    .local v4, "lineEnd":I
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@11
    move-result v5

    #@12
    .line 1323
    .local v5, "lineDir":I
    const/4 v11, 0x0

    #@13
    .line 1324
    .local v11, "lineChanged":Z
    const/4 v1, -0x1

    #@14
    if-ne v5, v1, :cond_2

    #@16
    move v1, v9

    #@17
    :goto_0
    if-ne p2, v1, :cond_3

    #@19
    .line 1326
    .local v9, "advance":Z
    :goto_1
    if-eqz v9, :cond_5

    #@1b
    .line 1327
    if-ne p1, v4, :cond_0

    #@1d
    .line 1328
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@20
    move-result v1

    #@21
    add-int/lit8 v1, v1, -0x1

    #@23
    if-ge v10, v1, :cond_4

    #@25
    .line 1329
    const/4 v11, 0x1

    #@26
    .line 1330
    add-int/lit8 v10, v10, 0x1

    #@28
    .line 1346
    :cond_0
    :goto_2
    if-eqz v11, :cond_1

    #@2a
    .line 1347
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineStart(I)I

    #@2d
    move-result v3

    #@2e
    .line 1348
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineEnd(I)I

    #@31
    move-result v4

    #@32
    .line 1349
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@35
    move-result v12

    #@36
    .line 1350
    .local v12, "newDir":I
    if-eq v12, v5, :cond_1

    #@38
    .line 1354
    if-eqz p2, :cond_7

    #@3a
    const/4 p2, 0x0

    #@3b
    .line 1355
    .local p2, "toLeft":Z
    :goto_3
    move v5, v12

    #@3c
    .line 1359
    .end local v12    # "newDir":I
    .end local p2    # "toLeft":Z
    :cond_1
    invoke-virtual {p0, v10}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@3f
    move-result-object v6

    #@40
    .line 1361
    .local v6, "directions":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@43
    move-result-object v0

    #@44
    .line 1363
    .local v0, "tl":Landroid/text/TextLine;
    iget-object v1, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@46
    iget-object v2, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@48
    const/4 v8, 0x0

    #@49
    invoke-virtual/range {v0 .. v8}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@4c
    .line 1364
    sub-int v1, p1, v3

    #@4e
    invoke-virtual {v0, v1, p2}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    #@51
    move-result v1

    #@52
    add-int p1, v3, v1

    #@54
    .line 1365
    invoke-static {v0}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@57
    move-result-object v0

    #@58
    .line 1366
    return p1

    #@59
    .end local v0    # "tl":Landroid/text/TextLine;
    .end local v6    # "directions":Landroid/text/Layout$Directions;
    .end local v9    # "advance":Z
    .local p2, "toLeft":Z
    :cond_2
    move v1, v7

    #@5a
    .line 1324
    goto :goto_0

    #@5b
    :cond_3
    move v9, v7

    #@5c
    goto :goto_1

    #@5d
    .line 1332
    .restart local v9    # "advance":Z
    :cond_4
    return p1

    #@5e
    .line 1336
    :cond_5
    if-ne p1, v3, :cond_0

    #@60
    .line 1337
    if-lez v10, :cond_6

    #@62
    .line 1338
    const/4 v11, 0x1

    #@63
    .line 1339
    add-int/lit8 v10, v10, -0x1

    #@65
    goto :goto_2

    #@66
    .line 1341
    :cond_6
    return p1

    #@67
    .line 1354
    .restart local v12    # "newDir":I
    :cond_7
    const/4 p2, 0x1

    #@68
    .local p2, "toLeft":Z
    goto :goto_3
.end method

.method private getParagraphLeadingMargin(I)I
    .locals 16
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1643
    move-object/from16 v0, p0

    #@2
    iget-boolean v14, v0, Landroid/text/Layout;->mSpannedText:Z

    #@4
    if-nez v14, :cond_0

    #@6
    .line 1644
    const/4 v14, 0x0

    #@7
    return v14

    #@8
    .line 1646
    :cond_0
    move-object/from16 v0, p0

    #@a
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@c
    check-cast v11, Landroid/text/Spanned;

    #@e
    .line 1648
    .local v11, "spanned":Landroid/text/Spanned;
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    #@11
    move-result v5

    #@12
    .line 1649
    .local v5, "lineStart":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@15
    move-result v4

    #@16
    .line 1651
    .local v4, "lineEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    #@18
    .line 1650
    invoke-interface {v11, v5, v4, v14}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@1b
    move-result v9

    #@1c
    .line 1653
    .local v9, "spanEnd":I
    const-class v14, Landroid/text/style/LeadingMarginSpan;

    #@1e
    .line 1652
    invoke-static {v11, v5, v9, v14}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@21
    move-result-object v12

    #@22
    check-cast v12, [Landroid/text/style/LeadingMarginSpan;

    #@24
    .line 1654
    .local v12, "spans":[Landroid/text/style/LeadingMarginSpan;
    array-length v14, v12

    #@25
    if-nez v14, :cond_1

    #@27
    .line 1655
    const/4 v14, 0x0

    #@28
    return v14

    #@29
    .line 1658
    :cond_1
    const/4 v6, 0x0

    #@2a
    .line 1660
    .local v6, "margin":I
    if-eqz v5, :cond_3

    #@2c
    .line 1661
    add-int/lit8 v14, v5, -0x1

    #@2e
    invoke-interface {v11, v14}, Landroid/text/Spanned;->charAt(I)C

    #@31
    move-result v14

    #@32
    const/16 v15, 0xa

    #@34
    if-ne v14, v15, :cond_4

    #@36
    const/4 v3, 0x1

    #@37
    .line 1663
    .local v3, "isFirstParaLine":Z
    :goto_0
    move v13, v3

    #@38
    .line 1664
    .local v13, "useFirstLineMargin":Z
    const/4 v2, 0x0

    #@39
    .local v2, "i":I
    :goto_1
    array-length v14, v12

    #@3a
    if-ge v2, v14, :cond_6

    #@3c
    .line 1665
    aget-object v14, v12, v2

    #@3e
    instance-of v14, v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@40
    if-eqz v14, :cond_2

    #@42
    .line 1666
    aget-object v14, v12, v2

    #@44
    invoke-interface {v11, v14}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@47
    move-result v7

    #@48
    .line 1667
    .local v7, "spStart":I
    move-object/from16 v0, p0

    #@4a
    invoke-virtual {v0, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    #@4d
    move-result v10

    #@4e
    .line 1668
    .local v10, "spanLine":I
    aget-object v14, v12, v2

    #@50
    check-cast v14, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@52
    invoke-interface {v14}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    #@55
    move-result v1

    #@56
    .line 1670
    .local v1, "count":I
    add-int v14, v10, v1

    #@58
    move/from16 v0, p1

    #@5a
    if-ge v0, v14, :cond_5

    #@5c
    const/4 v14, 0x1

    #@5d
    :goto_2
    or-int/2addr v13, v14

    #@5e
    .line 1664
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@60
    goto :goto_1

    #@61
    .line 1660
    .end local v2    # "i":I
    .end local v3    # "isFirstParaLine":Z
    .end local v13    # "useFirstLineMargin":Z
    :cond_3
    const/4 v3, 0x1

    #@62
    goto :goto_0

    #@63
    .line 1661
    :cond_4
    const/4 v3, 0x0

    #@64
    goto :goto_0

    #@65
    .line 1670
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "isFirstParaLine":Z
    .restart local v7    # "spStart":I
    .restart local v10    # "spanLine":I
    .restart local v13    # "useFirstLineMargin":Z
    :cond_5
    const/4 v14, 0x0

    #@66
    goto :goto_2

    #@67
    .line 1673
    .end local v1    # "count":I
    .end local v7    # "spStart":I
    .end local v10    # "spanLine":I
    :cond_6
    const/4 v2, 0x0

    #@68
    :goto_3
    array-length v14, v12

    #@69
    if-ge v2, v14, :cond_7

    #@6b
    .line 1674
    aget-object v8, v12, v2

    #@6d
    .line 1675
    .local v8, "span":Landroid/text/style/LeadingMarginSpan;
    invoke-interface {v8, v13}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@70
    move-result v14

    #@71
    add-int/2addr v6, v14

    #@72
    .line 1673
    add-int/lit8 v2, v2, 0x1

    #@74
    goto :goto_3

    #@75
    .line 1678
    .end local v8    # "span":Landroid/text/style/LeadingMarginSpan;
    :cond_7
    return v6
.end method

.method static getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 2
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
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 1868
    if-ne p1, p2, :cond_0

    #@3
    if-lez p1, :cond_0

    #@5
    .line 1869
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0

    #@a
    .line 1872
    :cond_0
    instance-of v0, p0, Landroid/text/SpannableStringBuilder;

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1873
    check-cast p0, Landroid/text/SpannableStringBuilder;

    #@10
    .end local p0    # "text":Landroid/text/Spanned;
    invoke-virtual {p0, p1, p2, p3, v1}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;Z)[Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    return-object v0

    #@15
    .line 1875
    .restart local p0    # "text":Landroid/text/Spanned;
    :cond_1
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method static measurePara(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)F
    .locals 23
    .param p0, "paint"    # Landroid/text/TextPaint;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    #@0
    .prologue
    .line 1684
    invoke-static {}, Landroid/text/MeasuredText;->obtain()Landroid/text/MeasuredText;

    #@3
    move-result-object v3

    #@4
    .line 1685
    .local v3, "mt":Landroid/text/MeasuredText;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@7
    move-result-object v22

    #@8
    .line 1687
    .local v22, "tl":Landroid/text/TextLine;
    :try_start_0
    sget-object v7, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@a
    const/4 v8, 0x0

    #@b
    move-object/from16 v4, p1

    #@d
    move/from16 v5, p2

    #@f
    move/from16 v6, p3

    #@11
    invoke-virtual/range {v3 .. v8}, Landroid/text/MeasuredText;->setPara(Ljava/lang/CharSequence;IILandroid/text/TextDirectionHeuristic;Landroid/text/StaticLayout$Builder;)V

    #@14
    .line 1690
    iget-boolean v4, v3, Landroid/text/MeasuredText;->mEasy:Z

    #@16
    if-eqz v4, :cond_0

    #@18
    .line 1691
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@1a
    .line 1692
    .local v10, "directions":Landroid/text/Layout$Directions;
    const/4 v9, 0x1

    #@1b
    .line 1698
    .local v9, "dir":I
    :goto_0
    iget-object v13, v3, Landroid/text/MeasuredText;->mChars:[C

    #@1d
    .line 1699
    .local v13, "chars":[C
    iget v15, v3, Landroid/text/MeasuredText;->mLen:I

    #@1f
    .line 1700
    .local v15, "len":I
    const/4 v11, 0x0

    #@20
    .line 1701
    .local v11, "hasTabs":Z
    const/4 v12, 0x0

    #@21
    .line 1703
    .local v12, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v17, 0x0

    #@23
    .line 1704
    .local v17, "margin":I
    move-object/from16 v0, p1

    #@25
    instance-of v4, v0, Landroid/text/Spanned;

    #@27
    if-eqz v4, :cond_1

    #@29
    .line 1705
    move-object/from16 v0, p1

    #@2b
    check-cast v0, Landroid/text/Spanned;

    #@2d
    move-object/from16 v19, v0

    #@2f
    .line 1707
    .local v19, "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/LeadingMarginSpan;

    #@31
    .line 1706
    move-object/from16 v0, v19

    #@33
    move/from16 v1, p2

    #@35
    move/from16 v2, p3

    #@37
    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@3a
    move-result-object v20

    #@3b
    check-cast v20, [Landroid/text/style/LeadingMarginSpan;

    #@3d
    .line 1708
    .local v20, "spans":[Landroid/text/style/LeadingMarginSpan;
    const/4 v4, 0x0

    #@3e
    move-object/from16 v0, v20

    #@40
    array-length v5, v0

    #@41
    :goto_1
    if-ge v4, v5, :cond_1

    #@43
    aget-object v16, v20, v4

    #@45
    .line 1709
    .local v16, "lms":Landroid/text/style/LeadingMarginSpan;
    const/4 v6, 0x1

    #@46
    move-object/from16 v0, v16

    #@48
    invoke-interface {v0, v6}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@4b
    move-result v6

    #@4c
    add-int v17, v17, v6

    #@4e
    .line 1708
    add-int/lit8 v4, v4, 0x1

    #@50
    goto :goto_1

    #@51
    .line 1694
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v15    # "len":I
    .end local v16    # "lms":Landroid/text/style/LeadingMarginSpan;
    .end local v17    # "margin":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v20    # "spans":[Landroid/text/style/LeadingMarginSpan;
    :cond_0
    iget v4, v3, Landroid/text/MeasuredText;->mDir:I

    #@53
    iget-object v5, v3, Landroid/text/MeasuredText;->mLevels:[B

    #@55
    .line 1695
    iget-object v7, v3, Landroid/text/MeasuredText;->mChars:[C

    #@57
    iget v9, v3, Landroid/text/MeasuredText;->mLen:I

    #@59
    const/4 v6, 0x0

    #@5a
    const/4 v8, 0x0

    #@5b
    .line 1694
    invoke-static/range {v4 .. v9}, Landroid/text/AndroidBidi;->directions(I[BI[CII)Landroid/text/Layout$Directions;

    #@5e
    move-result-object v10

    #@5f
    .line 1696
    .restart local v10    # "directions":Landroid/text/Layout$Directions;
    iget v9, v3, Landroid/text/MeasuredText;->mDir:I

    #@61
    .restart local v9    # "dir":I
    goto :goto_0

    #@62
    .line 1712
    .restart local v11    # "hasTabs":Z
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v13    # "chars":[C
    .restart local v15    # "len":I
    .restart local v17    # "margin":I
    :cond_1
    const/4 v14, 0x0

    #@63
    .local v14, "i":I
    :goto_2
    if-ge v14, v15, :cond_2

    #@65
    .line 1713
    aget-char v4, v13, v14

    #@67
    const/16 v5, 0x9

    #@69
    if-ne v4, v5, :cond_3

    #@6b
    .line 1714
    const/4 v11, 0x1

    #@6c
    .line 1715
    move-object/from16 v0, p1

    #@6e
    instance-of v4, v0, Landroid/text/Spanned;

    #@70
    if-eqz v4, :cond_2

    #@72
    .line 1716
    move-object/from16 v0, p1

    #@74
    check-cast v0, Landroid/text/Spanned;

    #@76
    move-object/from16 v19, v0

    #@78
    .line 1718
    .restart local v19    # "spanned":Landroid/text/Spanned;
    const-class v4, Landroid/text/style/TabStopSpan;

    #@7a
    .line 1717
    move-object/from16 v0, v19

    #@7c
    move/from16 v1, p2

    #@7e
    move/from16 v2, p3

    #@80
    invoke-interface {v0, v1, v2, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@83
    move-result v18

    #@84
    .line 1720
    .local v18, "spanEnd":I
    const-class v4, Landroid/text/style/TabStopSpan;

    #@86
    .line 1719
    move-object/from16 v0, v19

    #@88
    move/from16 v1, p2

    #@8a
    move/from16 v2, v18

    #@8c
    invoke-static {v0, v1, v2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@8f
    move-result-object v21

    #@90
    check-cast v21, [Landroid/text/style/TabStopSpan;

    #@92
    .line 1721
    .local v21, "spans":[Landroid/text/style/TabStopSpan;
    move-object/from16 v0, v21

    #@94
    array-length v4, v0

    #@95
    if-lez v4, :cond_2

    #@97
    .line 1722
    new-instance v12, Landroid/text/Layout$TabStops;

    #@99
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    const/16 v4, 0x14

    #@9b
    move-object/from16 v0, v21

    #@9d
    invoke-direct {v12, v4, v0}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    #@a0
    .end local v18    # "spanEnd":I
    .end local v19    # "spanned":Landroid/text/Spanned;
    .end local v21    # "spans":[Landroid/text/style/TabStopSpan;
    :cond_2
    move-object/from16 v4, v22

    #@a2
    move-object/from16 v5, p0

    #@a4
    move-object/from16 v6, p1

    #@a6
    move/from16 v7, p2

    #@a8
    move/from16 v8, p3

    #@aa
    .line 1728
    invoke-virtual/range {v4 .. v12}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@ad
    .line 1729
    move/from16 v0, v17

    #@af
    int-to-float v4, v0

    #@b0
    const/4 v5, 0x0

    #@b1
    move-object/from16 v0, v22

    #@b3
    invoke-virtual {v0, v5}, Landroid/text/TextLine;->metrics(Landroid/graphics/Paint$FontMetricsInt;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b6
    move-result v5

    #@b7
    add-float/2addr v4, v5

    #@b8
    .line 1731
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@bb
    .line 1732
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@be
    .line 1729
    return v4

    #@bf
    .line 1712
    .restart local v12    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_3
    add-int/lit8 v14, v14, 0x1

    #@c1
    goto :goto_2

    #@c2
    .line 1730
    .end local v9    # "dir":I
    .end local v10    # "directions":Landroid/text/Layout$Directions;
    .end local v11    # "hasTabs":Z
    .end local v12    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v13    # "chars":[C
    .end local v14    # "i":I
    .end local v15    # "len":I
    .end local v17    # "margin":I
    :catchall_0
    move-exception v4

    #@c3
    .line 1731
    invoke-static/range {v22 .. v22}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@c6
    .line 1732
    invoke-static {v3}, Landroid/text/MeasuredText;->recycle(Landroid/text/MeasuredText;)Landroid/text/MeasuredText;

    #@c9
    .line 1730
    throw v4
.end method

.method static nextTab(Ljava/lang/CharSequence;IIF[Ljava/lang/Object;)F
    .locals 6
    .param p0, "text"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "h"    # F
    .param p4, "tabs"    # [Ljava/lang/Object;

    #@0
    .prologue
    const/high16 v5, 0x41a00000    # 20.0f

    #@2
    .line 1811
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    #@5
    .line 1812
    .local v2, "nh":F
    const/4 v0, 0x0

    #@6
    .line 1814
    .local v0, "alltabs":Z
    instance-of v4, p0, Landroid/text/Spanned;

    #@8
    if-eqz v4, :cond_4

    #@a
    .line 1815
    if-nez p4, :cond_0

    #@c
    .line 1816
    check-cast p0, Landroid/text/Spanned;

    #@e
    .end local p0    # "text":Ljava/lang/CharSequence;
    const-class v4, Landroid/text/style/TabStopSpan;

    #@10
    invoke-static {p0, p1, p2, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@13
    move-result-object p4

    #@14
    .line 1817
    const/4 v0, 0x1

    #@15
    .line 1820
    :cond_0
    const/4 v1, 0x0

    #@16
    .local v1, "i":I
    :goto_0
    array-length v4, p4

    #@17
    if-ge v1, v4, :cond_3

    #@19
    .line 1821
    if-nez v0, :cond_2

    #@1b
    .line 1822
    aget-object v4, p4, v1

    #@1d
    instance-of v4, v4, Landroid/text/style/TabStopSpan;

    #@1f
    if-nez v4, :cond_2

    #@21
    .line 1820
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1826
    :cond_2
    aget-object v4, p4, v1

    #@26
    check-cast v4, Landroid/text/style/TabStopSpan;

    #@28
    invoke-interface {v4}, Landroid/text/style/TabStopSpan;->getTabStop()I

    #@2b
    move-result v3

    #@2c
    .line 1828
    .local v3, "where":I
    int-to-float v4, v3

    #@2d
    cmpg-float v4, v4, v2

    #@2f
    if-gez v4, :cond_1

    #@31
    int-to-float v4, v3

    #@32
    cmpl-float v4, v4, p3

    #@34
    if-lez v4, :cond_1

    #@36
    .line 1829
    int-to-float v2, v3

    #@37
    goto :goto_1

    #@38
    .line 1832
    .end local v3    # "where":I
    :cond_3
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    #@3b
    cmpl-float v4, v2, v4

    #@3d
    if-eqz v4, :cond_4

    #@3f
    .line 1833
    return v2

    #@40
    .line 1836
    .end local v1    # "i":I
    :cond_4
    add-float v4, p3, v5

    #@42
    div-float/2addr v4, v5

    #@43
    float-to-int v4, v4

    #@44
    mul-int/lit8 v4, v4, 0x14

    #@46
    int-to-float v4, v4

    #@47
    return v4
.end method

.method private primaryIsTrailingPrevious(I)Z
    .locals 13
    .param p1, "offset"    # I

    #@0
    .prologue
    const v12, 0x3ffffff

    #@3
    const/4 v10, 0x0

    #@4
    const/4 v9, 0x1

    #@5
    .line 828
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@8
    move-result v4

    #@9
    .line 829
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    #@c
    move-result v6

    #@d
    .line 830
    .local v6, "lineStart":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineEnd(I)I

    #@10
    move-result v5

    #@11
    .line 831
    .local v5, "lineEnd":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@14
    move-result-object v11

    #@15
    iget-object v7, v11, Landroid/text/Layout$Directions;->mDirections:[I

    #@17
    .line 833
    .local v7, "runs":[I
    const/4 v1, -0x1

    #@18
    .line 834
    .local v1, "levelAt":I
    const/4 v0, 0x0

    #@19
    .local v0, "i":I
    :goto_0
    array-length v11, v7

    #@1a
    if-ge v0, v11, :cond_2

    #@1c
    .line 835
    aget v11, v7, v0

    #@1e
    add-int v8, v6, v11

    #@20
    .line 836
    .local v8, "start":I
    add-int/lit8 v11, v0, 0x1

    #@22
    aget v11, v7, v11

    #@24
    and-int/2addr v11, v12

    #@25
    add-int v3, v8, v11

    #@27
    .line 837
    .local v3, "limit":I
    if-le v3, v5, :cond_0

    #@29
    .line 838
    move v3, v5

    #@2a
    .line 840
    :cond_0
    if-lt p1, v8, :cond_5

    #@2c
    if-ge p1, v3, :cond_5

    #@2e
    .line 841
    if-le p1, v8, :cond_1

    #@30
    .line 843
    return v10

    #@31
    .line 845
    :cond_1
    add-int/lit8 v11, v0, 0x1

    #@33
    aget v11, v7, v11

    #@35
    ushr-int/lit8 v11, v11, 0x1a

    #@37
    and-int/lit8 v1, v11, 0x3f

    #@39
    .line 849
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_2
    const/4 v11, -0x1

    #@3a
    if-ne v1, v11, :cond_3

    #@3c
    .line 851
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@3f
    move-result v11

    #@40
    if-ne v11, v9, :cond_6

    #@42
    const/4 v1, 0x0

    #@43
    .line 855
    :cond_3
    :goto_1
    const/4 v2, -0x1

    #@44
    .line 856
    .local v2, "levelBefore":I
    if-ne p1, v6, :cond_8

    #@46
    .line 857
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@49
    move-result v11

    #@4a
    if-ne v11, v9, :cond_7

    #@4c
    const/4 v2, 0x0

    #@4d
    .line 873
    :cond_4
    :goto_2
    if-ge v2, v1, :cond_b

    #@4f
    :goto_3
    return v9

    #@50
    .line 834
    .end local v2    # "levelBefore":I
    .restart local v3    # "limit":I
    .restart local v8    # "start":I
    :cond_5
    add-int/lit8 v0, v0, 0x2

    #@52
    goto :goto_0

    #@53
    .line 851
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_6
    const/4 v1, 0x1

    #@54
    goto :goto_1

    #@55
    .line 857
    .restart local v2    # "levelBefore":I
    :cond_7
    const/4 v2, 0x1

    #@56
    goto :goto_2

    #@57
    .line 859
    :cond_8
    add-int/lit8 p1, p1, -0x1

    #@59
    .line 860
    const/4 v0, 0x0

    #@5a
    :goto_4
    array-length v11, v7

    #@5b
    if-ge v0, v11, :cond_4

    #@5d
    .line 861
    aget v11, v7, v0

    #@5f
    add-int v8, v6, v11

    #@61
    .line 862
    .restart local v8    # "start":I
    add-int/lit8 v11, v0, 0x1

    #@63
    aget v11, v7, v11

    #@65
    and-int/2addr v11, v12

    #@66
    add-int v3, v8, v11

    #@68
    .line 863
    .restart local v3    # "limit":I
    if-le v3, v5, :cond_9

    #@6a
    .line 864
    move v3, v5

    #@6b
    .line 866
    :cond_9
    if-lt p1, v8, :cond_a

    #@6d
    if-ge p1, v3, :cond_a

    #@6f
    .line 867
    add-int/lit8 v11, v0, 0x1

    #@71
    aget v11, v7, v11

    #@73
    ushr-int/lit8 v11, v11, 0x1a

    #@75
    and-int/lit8 v2, v11, 0x3f

    #@77
    .line 868
    goto :goto_2

    #@78
    .line 860
    :cond_a
    add-int/lit8 v0, v0, 0x2

    #@7a
    goto :goto_4

    #@7b
    .end local v3    # "limit":I
    .end local v8    # "start":I
    :cond_b
    move v9, v10

    #@7c
    .line 873
    goto :goto_3
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 226
    const/4 v0, 0x0

    #@2
    invoke-virtual {p0, p1, v1, v1, v0}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    #@5
    .line 225
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;I)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I

    #@0
    .prologue
    .line 241
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRangeForDraw(Landroid/graphics/Canvas;)J

    #@3
    move-result-wide v8

    #@4
    .line 242
    .local v8, "lineRange":J
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeStartFromLong(J)I

    #@7
    move-result v5

    #@8
    .line 243
    .local v5, "firstLine":I
    invoke-static {v8, v9}, Landroid/text/TextUtils;->unpackRangeEndFromLong(J)I

    #@b
    move-result v6

    #@c
    .line 244
    .local v6, "lastLine":I
    if-gez v6, :cond_0

    #@e
    return-void

    #@f
    :cond_0
    move-object v0, p0

    #@10
    move-object v1, p1

    #@11
    move-object v2, p2

    #@12
    move-object v3, p3

    #@13
    move v4, p4

    #@14
    .line 246
    invoke-virtual/range {v0 .. v6}, Landroid/text/Layout;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V

    #@17
    .line 248
    invoke-virtual {p0, p1, v5, v6}, Landroid/text/Layout;->drawText(Landroid/graphics/Canvas;II)V

    #@1a
    .line 240
    return-void
.end method

.method public drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/Paint;III)V
    .locals 22
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "highlight"    # Landroid/graphics/Path;
    .param p3, "highlightPaint"    # Landroid/graphics/Paint;
    .param p4, "cursorOffsetVertical"    # I
    .param p5, "firstLine"    # I
    .param p6, "lastLine"    # I

    #@0
    .prologue
    .line 416
    move-object/from16 v0, p0

    #@2
    iget-boolean v3, v0, Landroid/text/Layout;->mSpannedText:Z

    #@4
    if-eqz v3, :cond_7

    #@6
    .line 417
    move-object/from16 v0, p0

    #@8
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@a
    if-nez v3, :cond_0

    #@c
    .line 418
    new-instance v3, Landroid/text/SpanSet;

    #@e
    const-class v5, Landroid/text/style/LineBackgroundSpan;

    #@10
    invoke-direct {v3, v5}, Landroid/text/SpanSet;-><init>(Ljava/lang/Class;)V

    #@13
    move-object/from16 v0, p0

    #@15
    iput-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@17
    .line 421
    :cond_0
    move-object/from16 v0, p0

    #@19
    iget-object v10, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@1b
    check-cast v10, Landroid/text/Spanned;

    #@1d
    .line 422
    .local v10, "buffer":Landroid/text/Spanned;
    invoke-interface {v10}, Landroid/text/Spanned;->length()I

    #@20
    move-result v21

    #@21
    .line 423
    .local v21, "textLength":I
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@25
    const/4 v5, 0x0

    #@26
    move/from16 v0, v21

    #@28
    invoke-virtual {v3, v10, v5, v0}, Landroid/text/SpanSet;->init(Landroid/text/Spanned;II)V

    #@2b
    .line 425
    move-object/from16 v0, p0

    #@2d
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@2f
    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    #@31
    if-lez v3, :cond_6

    #@33
    .line 426
    move-object/from16 v0, p0

    #@35
    move/from16 v1, p5

    #@37
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@3a
    move-result v16

    #@3b
    .line 427
    .local v16, "previousLineBottom":I
    move-object/from16 v0, p0

    #@3d
    move/from16 v1, p5

    #@3f
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    #@42
    move-result v17

    #@43
    .line 428
    .local v17, "previousLineEnd":I
    sget-object v19, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    #@45
    .line 429
    .local v19, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v20, 0x0

    #@47
    .line 430
    .local v20, "spansLength":I
    move-object/from16 v0, p0

    #@49
    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@4b
    .line 431
    .local v4, "paint":Landroid/text/TextPaint;
    const/16 v18, 0x0

    #@4d
    .line 432
    .local v18, "spanEnd":I
    move-object/from16 v0, p0

    #@4f
    iget v6, v0, Landroid/text/Layout;->mWidth:I

    #@51
    .line 433
    .local v6, "width":I
    move/from16 v13, p5

    #@53
    .local v13, "i":I
    :goto_0
    move/from16 v0, p6

    #@55
    if-gt v13, v0, :cond_6

    #@57
    .line 434
    move/from16 v11, v17

    #@59
    .line 435
    .local v11, "start":I
    add-int/lit8 v3, v13, 0x1

    #@5b
    move-object/from16 v0, p0

    #@5d
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineStart(I)I

    #@60
    move-result v12

    #@61
    .line 436
    .local v12, "end":I
    move/from16 v17, v12

    #@63
    .line 438
    move/from16 v7, v16

    #@65
    .line 439
    .local v7, "ltop":I
    add-int/lit8 v3, v13, 0x1

    #@67
    move-object/from16 v0, p0

    #@69
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    #@6c
    move-result v9

    #@6d
    .line 440
    .local v9, "lbottom":I
    move/from16 v16, v9

    #@6f
    .line 441
    move-object/from16 v0, p0

    #@71
    invoke-virtual {v0, v13}, Landroid/text/Layout;->getLineDescent(I)I

    #@74
    move-result v3

    #@75
    sub-int v8, v9, v3

    #@77
    .line 443
    .local v8, "lbaseline":I
    move/from16 v0, v18

    #@79
    if-lt v11, v0, :cond_4

    #@7b
    .line 446
    move-object/from16 v0, p0

    #@7d
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@7f
    move/from16 v0, v21

    #@81
    invoke-virtual {v3, v11, v0}, Landroid/text/SpanSet;->getNextTransition(II)I

    #@84
    move-result v18

    #@85
    .line 448
    const/16 v20, 0x0

    #@87
    .line 450
    if-ne v11, v12, :cond_1

    #@89
    if-nez v11, :cond_4

    #@8b
    .line 453
    :cond_1
    const/4 v14, 0x0

    #@8c
    .local v14, "j":I
    :goto_1
    move-object/from16 v0, p0

    #@8e
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@90
    iget v3, v3, Landroid/text/SpanSet;->numberOfSpans:I

    #@92
    if-ge v14, v3, :cond_4

    #@94
    .line 456
    move-object/from16 v0, p0

    #@96
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@98
    iget-object v3, v3, Landroid/text/SpanSet;->spanStarts:[I

    #@9a
    aget v3, v3, v14

    #@9c
    if-ge v3, v12, :cond_2

    #@9e
    .line 457
    move-object/from16 v0, p0

    #@a0
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@a2
    iget-object v3, v3, Landroid/text/SpanSet;->spanEnds:[I

    #@a4
    aget v3, v3, v14

    #@a6
    if-gt v3, v11, :cond_3

    #@a8
    .line 453
    :cond_2
    :goto_2
    add-int/lit8 v14, v14, 0x1

    #@aa
    goto :goto_1

    #@ab
    .line 459
    :cond_3
    move-object/from16 v0, p0

    #@ad
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@af
    iget-object v3, v3, Landroid/text/SpanSet;->spans:[Ljava/lang/Object;

    #@b1
    check-cast v3, [Landroid/text/style/LineBackgroundSpan;

    #@b3
    aget-object v3, v3, v14

    #@b5
    .line 458
    move-object/from16 v0, v19

    #@b7
    move/from16 v1, v20

    #@b9
    invoke-static {v0, v1, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    #@bc
    move-result-object v19

    #@bd
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v19, [Landroid/text/style/ParagraphStyle;

    #@bf
    .line 460
    .restart local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    add-int/lit8 v20, v20, 0x1

    #@c1
    goto :goto_2

    #@c2
    .line 465
    .end local v14    # "j":I
    :cond_4
    const/4 v15, 0x0

    #@c3
    .local v15, "n":I
    :goto_3
    move/from16 v0, v20

    #@c5
    if-ge v15, v0, :cond_5

    #@c7
    .line 466
    aget-object v2, v19, v15

    #@c9
    check-cast v2, Landroid/text/style/LineBackgroundSpan;

    #@cb
    .line 467
    .local v2, "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    const/4 v5, 0x0

    #@cc
    move-object/from16 v3, p1

    #@ce
    invoke-interface/range {v2 .. v13}, Landroid/text/style/LineBackgroundSpan;->drawBackground(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;III)V

    #@d1
    .line 465
    add-int/lit8 v15, v15, 0x1

    #@d3
    goto :goto_3

    #@d4
    .line 433
    .end local v2    # "lineBackgroundSpan":Landroid/text/style/LineBackgroundSpan;
    :cond_5
    add-int/lit8 v13, v13, 0x1

    #@d6
    goto/16 :goto_0

    #@d8
    .line 473
    .end local v4    # "paint":Landroid/text/TextPaint;
    .end local v6    # "width":I
    .end local v7    # "ltop":I
    .end local v8    # "lbaseline":I
    .end local v9    # "lbottom":I
    .end local v11    # "start":I
    .end local v12    # "end":I
    .end local v13    # "i":I
    .end local v15    # "n":I
    .end local v16    # "previousLineBottom":I
    .end local v17    # "previousLineEnd":I
    .end local v18    # "spanEnd":I
    .end local v19    # "spans":[Landroid/text/style/ParagraphStyle;
    .end local v20    # "spansLength":I
    :cond_6
    move-object/from16 v0, p0

    #@da
    iget-object v3, v0, Landroid/text/Layout;->mLineBackgroundSpans:Landroid/text/SpanSet;

    #@dc
    invoke-virtual {v3}, Landroid/text/SpanSet;->recycle()V

    #@df
    .line 478
    .end local v10    # "buffer":Landroid/text/Spanned;
    .end local v21    # "textLength":I
    :cond_7
    if-eqz p2, :cond_9

    #@e1
    .line 479
    if-eqz p4, :cond_8

    #@e3
    const/4 v3, 0x0

    #@e4
    move/from16 v0, p4

    #@e6
    int-to-float v5, v0

    #@e7
    move-object/from16 v0, p1

    #@e9
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@ec
    .line 480
    :cond_8
    invoke-virtual/range {p1 .. p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    #@ef
    .line 481
    if-eqz p4, :cond_9

    #@f1
    const/4 v3, 0x0

    #@f2
    move/from16 v0, p4

    #@f4
    neg-int v5, v0

    #@f5
    int-to-float v5, v5

    #@f6
    move-object/from16 v0, p1

    #@f8
    invoke-virtual {v0, v3, v5}, Landroid/graphics/Canvas;->translate(FF)V

    #@fb
    .line 411
    :cond_9
    return-void
.end method

.method public drawText(Landroid/graphics/Canvas;II)V
    .locals 47
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "firstLine"    # I
    .param p3, "lastLine"    # I

    #@0
    .prologue
    .line 255
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p2

    #@4
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@7
    move-result v35

    #@8
    .line 256
    .local v35, "previousLineBottom":I
    move-object/from16 v0, p0

    #@a
    move/from16 v1, p2

    #@c
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineStart(I)I

    #@f
    move-result v36

    #@10
    .line 257
    .local v36, "previousLineEnd":I
    sget-object v39, Landroid/text/Layout;->NO_PARA_SPANS:[Landroid/text/style/ParagraphStyle;

    #@12
    .line 258
    .local v39, "spans":[Landroid/text/style/ParagraphStyle;
    const/16 v38, 0x0

    #@14
    .line 259
    .local v38, "spanEnd":I
    move-object/from16 v0, p0

    #@16
    iget-object v5, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@18
    .line 260
    .local v5, "paint":Landroid/text/TextPaint;
    move-object/from16 v0, p0

    #@1a
    iget-object v11, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@1c
    .line 262
    .local v11, "buf":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    #@1e
    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@20
    move-object/from16 v34, v0

    #@22
    .line 263
    .local v34, "paraAlign":Landroid/text/Layout$Alignment;
    const/16 v27, 0x0

    #@24
    .line 264
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    const/16 v42, 0x0

    #@26
    .line 266
    .local v42, "tabStopsIsInitialized":Z
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@29
    move-result-object v44

    #@2a
    .line 270
    .local v44, "tl":Landroid/text/TextLine;
    move/from16 v31, p2

    #@2c
    .local v31, "lineNum":I
    move-object/from16 v41, v27

    #@2e
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .local v41, "tabStops":Landroid/text/Layout$TabStops;
    :goto_0
    move/from16 v0, v31

    #@30
    move/from16 v1, p3

    #@32
    if-gt v0, v1, :cond_18

    #@34
    .line 271
    move/from16 v12, v36

    #@36
    .line 272
    .local v12, "start":I
    add-int/lit8 v4, v31, 0x1

    #@38
    move-object/from16 v0, p0

    #@3a
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineStart(I)I

    #@3d
    move-result v36

    #@3e
    .line 273
    move-object/from16 v0, p0

    #@40
    move/from16 v1, v31

    #@42
    move/from16 v2, v36

    #@44
    invoke-direct {v0, v1, v12, v2}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    #@47
    move-result v13

    #@48
    .line 275
    .local v13, "end":I
    move/from16 v8, v35

    #@4a
    .line 276
    .local v8, "ltop":I
    add-int/lit8 v4, v31, 0x1

    #@4c
    move-object/from16 v0, p0

    #@4e
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@51
    move-result v10

    #@52
    .line 277
    .local v10, "lbottom":I
    move/from16 v35, v10

    #@54
    .line 278
    move-object/from16 v0, p0

    #@56
    move/from16 v1, v31

    #@58
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDescent(I)I

    #@5b
    move-result v4

    #@5c
    sub-int v9, v10, v4

    #@5e
    .line 280
    .local v9, "lbaseline":I
    move-object/from16 v0, p0

    #@60
    move/from16 v1, v31

    #@62
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@65
    move-result v7

    #@66
    .line 281
    .local v7, "dir":I
    const/16 v18, 0x0

    #@68
    .line 282
    .local v18, "left":I
    move-object/from16 v0, p0

    #@6a
    iget v6, v0, Landroid/text/Layout;->mWidth:I

    #@6c
    .line 284
    .local v6, "right":I
    move-object/from16 v0, p0

    #@6e
    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    #@70
    if-eqz v4, :cond_a

    #@72
    move-object/from16 v37, v11

    #@74
    .line 285
    check-cast v37, Landroid/text/Spanned;

    #@76
    .line 286
    .local v37, "sp":Landroid/text/Spanned;
    invoke-interface {v11}, Ljava/lang/CharSequence;->length()I

    #@79
    move-result v43

    #@7a
    .line 287
    .local v43, "textLength":I
    if-eqz v12, :cond_0

    #@7c
    add-int/lit8 v4, v12, -0x1

    #@7e
    invoke-interface {v11, v4}, Ljava/lang/CharSequence;->charAt(I)C

    #@81
    move-result v4

    #@82
    const/16 v15, 0xa

    #@84
    if-ne v4, v15, :cond_6

    #@86
    :cond_0
    const/4 v14, 0x1

    #@87
    .line 299
    .local v14, "isFirstParaLine":Z
    :goto_1
    move/from16 v0, v38

    #@89
    if-lt v12, v0, :cond_3

    #@8b
    move/from16 v0, v31

    #@8d
    move/from16 v1, p2

    #@8f
    if-eq v0, v1, :cond_1

    #@91
    if-eqz v14, :cond_3

    #@93
    .line 301
    :cond_1
    const-class v4, Landroid/text/style/ParagraphStyle;

    #@95
    .line 300
    move-object/from16 v0, v37

    #@97
    move/from16 v1, v43

    #@99
    invoke-interface {v0, v12, v1, v4}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    #@9c
    move-result v38

    #@9d
    .line 302
    const-class v4, Landroid/text/style/ParagraphStyle;

    #@9f
    move-object/from16 v0, v37

    #@a1
    move/from16 v1, v38

    #@a3
    invoke-static {v0, v12, v1, v4}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@a6
    move-result-object v39

    #@a7
    .end local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    check-cast v39, [Landroid/text/style/ParagraphStyle;

    #@a9
    .line 304
    .restart local v39    # "spans":[Landroid/text/style/ParagraphStyle;
    move-object/from16 v0, p0

    #@ab
    iget-object v0, v0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@ad
    move-object/from16 v34, v0

    #@af
    .line 305
    move-object/from16 v0, v39

    #@b1
    array-length v4, v0

    #@b2
    add-int/lit8 v33, v4, -0x1

    #@b4
    .local v33, "n":I
    :goto_2
    if-ltz v33, :cond_2

    #@b6
    .line 306
    aget-object v4, v39, v33

    #@b8
    instance-of v4, v4, Landroid/text/style/AlignmentSpan;

    #@ba
    if-eqz v4, :cond_7

    #@bc
    .line 307
    aget-object v4, v39, v33

    #@be
    check-cast v4, Landroid/text/style/AlignmentSpan;

    #@c0
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    #@c3
    move-result-object v34

    #@c4
    .line 312
    :cond_2
    const/16 v42, 0x0

    #@c6
    .line 317
    .end local v33    # "n":I
    :cond_3
    move-object/from16 v0, v39

    #@c8
    array-length v0, v0

    #@c9
    move/from16 v30, v0

    #@cb
    .line 318
    .local v30, "length":I
    move/from16 v45, v14

    #@cd
    .line 319
    .local v45, "useFirstLineMargin":Z
    const/16 v33, 0x0

    #@cf
    .restart local v33    # "n":I
    :goto_3
    move/from16 v0, v33

    #@d1
    move/from16 v1, v30

    #@d3
    if-ge v0, v1, :cond_4

    #@d5
    .line 320
    aget-object v4, v39, v33

    #@d7
    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@d9
    if-eqz v4, :cond_8

    #@db
    .line 321
    aget-object v4, v39, v33

    #@dd
    check-cast v4, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;

    #@df
    invoke-interface {v4}, Landroid/text/style/LeadingMarginSpan$LeadingMarginSpan2;->getLeadingMarginLineCount()I

    #@e2
    move-result v29

    #@e3
    .line 322
    .local v29, "count":I
    aget-object v4, v39, v33

    #@e5
    move-object/from16 v0, v37

    #@e7
    invoke-interface {v0, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    #@ea
    move-result v4

    #@eb
    move-object/from16 v0, p0

    #@ed
    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineForOffset(I)I

    #@f0
    move-result v40

    #@f1
    .line 325
    .local v40, "startLine":I
    add-int v4, v40, v29

    #@f3
    move/from16 v0, v31

    #@f5
    if-ge v0, v4, :cond_8

    #@f7
    .line 326
    const/16 v45, 0x1

    #@f9
    .line 331
    .end local v29    # "count":I
    .end local v40    # "startLine":I
    .end local v45    # "useFirstLineMargin":Z
    :cond_4
    const/16 v33, 0x0

    #@fb
    :goto_4
    move/from16 v0, v33

    #@fd
    move/from16 v1, v30

    #@ff
    if-ge v0, v1, :cond_a

    #@101
    .line 332
    aget-object v4, v39, v33

    #@103
    instance-of v4, v4, Landroid/text/style/LeadingMarginSpan;

    #@105
    if-eqz v4, :cond_5

    #@107
    .line 333
    aget-object v3, v39, v33

    #@109
    check-cast v3, Landroid/text/style/LeadingMarginSpan;

    #@10b
    .line 334
    .local v3, "margin":Landroid/text/style/LeadingMarginSpan;
    const/4 v4, -0x1

    #@10c
    if-ne v7, v4, :cond_9

    #@10e
    move-object/from16 v4, p1

    #@110
    move-object/from16 v15, p0

    #@112
    .line 335
    invoke-interface/range {v3 .. v15}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    #@115
    .line 338
    move/from16 v0, v45

    #@117
    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@11a
    move-result v4

    #@11b
    sub-int/2addr v6, v4

    #@11c
    .line 331
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_5
    :goto_5
    add-int/lit8 v33, v33, 0x1

    #@11e
    goto :goto_4

    #@11f
    .line 287
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    :cond_6
    const/4 v14, 0x0

    #@120
    .restart local v14    # "isFirstParaLine":Z
    goto/16 :goto_1

    #@122
    .line 305
    .restart local v33    # "n":I
    :cond_7
    add-int/lit8 v33, v33, -0x1

    #@124
    goto :goto_2

    #@125
    .line 319
    .restart local v30    # "length":I
    .restart local v45    # "useFirstLineMargin":Z
    :cond_8
    add-int/lit8 v33, v33, 0x1

    #@127
    goto :goto_3

    #@128
    .end local v45    # "useFirstLineMargin":Z
    .restart local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    :cond_9
    move-object v15, v3

    #@129
    move-object/from16 v16, p1

    #@12b
    move-object/from16 v17, v5

    #@12d
    move/from16 v19, v7

    #@12f
    move/from16 v20, v8

    #@131
    move/from16 v21, v9

    #@133
    move/from16 v22, v10

    #@135
    move-object/from16 v23, v11

    #@137
    move/from16 v24, v12

    #@139
    move/from16 v25, v13

    #@13b
    move/from16 v26, v14

    #@13d
    move-object/from16 v27, p0

    #@13f
    .line 340
    invoke-interface/range {v15 .. v27}, Landroid/text/style/LeadingMarginSpan;->drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V

    #@142
    .line 343
    move/from16 v0, v45

    #@144
    invoke-interface {v3, v0}, Landroid/text/style/LeadingMarginSpan;->getLeadingMargin(Z)I

    #@147
    move-result v4

    #@148
    add-int v18, v18, v4

    #@14a
    goto :goto_5

    #@14b
    .line 349
    .end local v3    # "margin":Landroid/text/style/LeadingMarginSpan;
    .end local v14    # "isFirstParaLine":Z
    .end local v30    # "length":I
    .end local v33    # "n":I
    .end local v37    # "sp":Landroid/text/Spanned;
    .end local v43    # "textLength":I
    :cond_a
    move-object/from16 v0, p0

    #@14d
    move/from16 v1, v31

    #@14f
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineContainsTab(I)Z

    #@152
    move-result v26

    #@153
    .line 351
    .local v26, "hasTab":Z
    if-eqz v26, :cond_b

    #@155
    if-eqz v42, :cond_e

    #@157
    :cond_b
    move-object/from16 v27, v41

    #@159
    .line 361
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .local v27, "tabStops":Landroid/text/Layout$TabStops;
    :goto_6
    move-object/from16 v28, v34

    #@15b
    .line 362
    .local v28, "align":Landroid/text/Layout$Alignment;
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@15d
    move-object/from16 v0, v28

    #@15f
    if-ne v0, v4, :cond_11

    #@161
    .line 363
    const/4 v4, 0x1

    #@162
    if-ne v7, v4, :cond_10

    #@164
    .line 364
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@166
    .line 371
    :cond_c
    :goto_7
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@168
    move-object/from16 v0, v28

    #@16a
    if-ne v0, v4, :cond_14

    #@16c
    .line 372
    const/4 v4, 0x1

    #@16d
    if-ne v7, v4, :cond_13

    #@16f
    .line 373
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@171
    move-object/from16 v0, p0

    #@173
    move/from16 v1, v31

    #@175
    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@178
    move-result v4

    #@179
    add-int v46, v18, v4

    #@17b
    .line 392
    .local v46, "x":I
    :goto_8
    move-object/from16 v0, p0

    #@17d
    move/from16 v1, v31

    #@17f
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getHyphen(I)I

    #@182
    move-result v4

    #@183
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    #@186
    .line 393
    move-object/from16 v0, p0

    #@188
    move/from16 v1, v31

    #@18a
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@18d
    move-result-object v25

    #@18e
    .line 394
    .local v25, "directions":Landroid/text/Layout$Directions;
    sget-object v4, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@190
    move-object/from16 v0, v25

    #@192
    if-ne v0, v4, :cond_d

    #@194
    move-object/from16 v0, p0

    #@196
    iget-boolean v4, v0, Landroid/text/Layout;->mSpannedText:Z

    #@198
    if-eqz v4, :cond_17

    #@19a
    :cond_d
    move-object/from16 v19, v44

    #@19c
    move-object/from16 v20, v5

    #@19e
    move-object/from16 v21, v11

    #@1a0
    move/from16 v22, v12

    #@1a2
    move/from16 v23, v13

    #@1a4
    move/from16 v24, v7

    #@1a6
    .line 398
    invoke-virtual/range {v19 .. v27}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@1a9
    .line 399
    move/from16 v0, v46

    #@1ab
    int-to-float v0, v0

    #@1ac
    move/from16 v21, v0

    #@1ae
    move-object/from16 v19, v44

    #@1b0
    move-object/from16 v20, p1

    #@1b2
    move/from16 v22, v8

    #@1b4
    move/from16 v23, v9

    #@1b6
    move/from16 v24, v10

    #@1b8
    invoke-virtual/range {v19 .. v24}, Landroid/text/TextLine;->draw(Landroid/graphics/Canvas;FIII)V

    #@1bb
    .line 401
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    :goto_9
    const/4 v4, 0x0

    #@1bc
    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->setHyphenEdit(I)V

    #@1bf
    .line 270
    add-int/lit8 v31, v31, 0x1

    #@1c1
    move-object/from16 v41, v27

    #@1c3
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    goto/16 :goto_0

    #@1c5
    .line 352
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    :cond_e
    if-nez v41, :cond_f

    #@1c7
    .line 353
    new-instance v27, Landroid/text/Layout$TabStops;

    #@1c9
    const/16 v4, 0x14

    #@1cb
    move-object/from16 v0, v27

    #@1cd
    move-object/from16 v1, v39

    #@1cf
    invoke-direct {v0, v4, v1}, Landroid/text/Layout$TabStops;-><init>(I[Ljava/lang/Object;)V

    #@1d2
    .line 357
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    :goto_a
    const/16 v42, 0x1

    #@1d4
    goto :goto_6

    #@1d5
    .line 355
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_f
    const/16 v4, 0x14

    #@1d7
    move-object/from16 v0, v41

    #@1d9
    move-object/from16 v1, v39

    #@1db
    invoke-virtual {v0, v4, v1}, Landroid/text/Layout$TabStops;->reset(I[Ljava/lang/Object;)V

    #@1de
    move-object/from16 v27, v41

    #@1e0
    .end local v41    # "tabStops":Landroid/text/Layout$TabStops;
    .restart local v27    # "tabStops":Landroid/text/Layout$TabStops;
    goto :goto_a

    #@1e1
    .line 364
    .restart local v28    # "align":Landroid/text/Layout$Alignment;
    :cond_10
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@1e3
    goto :goto_7

    #@1e4
    .line 365
    :cond_11
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@1e6
    move-object/from16 v0, v28

    #@1e8
    if-ne v0, v4, :cond_c

    #@1ea
    .line 366
    const/4 v4, 0x1

    #@1eb
    if-ne v7, v4, :cond_12

    #@1ed
    .line 367
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@1ef
    goto/16 :goto_7

    #@1f1
    :cond_12
    sget-object v28, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@1f3
    goto/16 :goto_7

    #@1f5
    .line 375
    :cond_13
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@1f7
    move-object/from16 v0, p0

    #@1f9
    move/from16 v1, v31

    #@1fb
    invoke-virtual {v0, v1, v4}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@1fe
    move-result v4

    #@1ff
    add-int v46, v6, v4

    #@201
    .restart local v46    # "x":I
    goto/16 :goto_8

    #@203
    .line 378
    .end local v46    # "x":I
    :cond_14
    const/4 v4, 0x0

    #@204
    move-object/from16 v0, p0

    #@206
    move/from16 v1, v31

    #@208
    move-object/from16 v2, v27

    #@20a
    invoke-direct {v0, v1, v2, v4}, Landroid/text/Layout;->getLineExtent(ILandroid/text/Layout$TabStops;Z)F

    #@20d
    move-result v4

    #@20e
    float-to-int v0, v4

    #@20f
    move/from16 v32, v0

    #@211
    .line 379
    .local v32, "max":I
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@213
    move-object/from16 v0, v28

    #@215
    if-ne v0, v4, :cond_16

    #@217
    .line 380
    const/4 v4, 0x1

    #@218
    if-ne v7, v4, :cond_15

    #@21a
    .line 381
    sub-int v4, v6, v32

    #@21c
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@21e
    move-object/from16 v0, p0

    #@220
    move/from16 v1, v31

    #@222
    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@225
    move-result v15

    #@226
    add-int v46, v4, v15

    #@228
    .restart local v46    # "x":I
    goto/16 :goto_8

    #@22a
    .line 383
    .end local v46    # "x":I
    :cond_15
    sub-int v4, v18, v32

    #@22c
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@22e
    move-object/from16 v0, p0

    #@230
    move/from16 v1, v31

    #@232
    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@235
    move-result v15

    #@236
    add-int v46, v4, v15

    #@238
    .restart local v46    # "x":I
    goto/16 :goto_8

    #@23a
    .line 386
    .end local v46    # "x":I
    :cond_16
    and-int/lit8 v32, v32, -0x2

    #@23c
    .line 387
    add-int v4, v6, v18

    #@23e
    sub-int v4, v4, v32

    #@240
    shr-int/lit8 v4, v4, 0x1

    #@242
    .line 388
    sget-object v15, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    #@244
    move-object/from16 v0, p0

    #@246
    move/from16 v1, v31

    #@248
    invoke-virtual {v0, v1, v15}, Landroid/text/Layout;->getIndentAdjust(ILandroid/text/Layout$Alignment;)I

    #@24b
    move-result v15

    #@24c
    .line 387
    add-int v46, v4, v15

    #@24e
    .restart local v46    # "x":I
    goto/16 :goto_8

    #@250
    .line 394
    .end local v32    # "max":I
    .restart local v25    # "directions":Landroid/text/Layout$Directions;
    :cond_17
    if-nez v26, :cond_d

    #@252
    .line 396
    move/from16 v0, v46

    #@254
    int-to-float v0, v0

    #@255
    move/from16 v23, v0

    #@257
    int-to-float v0, v9

    #@258
    move/from16 v24, v0

    #@25a
    move-object/from16 v19, p1

    #@25c
    move-object/from16 v20, v11

    #@25e
    move/from16 v21, v12

    #@260
    move/from16 v22, v13

    #@262
    move-object/from16 v25, v5

    #@264
    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    #@267
    goto/16 :goto_9

    #@269
    .line 404
    .end local v6    # "right":I
    .end local v7    # "dir":I
    .end local v8    # "ltop":I
    .end local v9    # "lbaseline":I
    .end local v10    # "lbottom":I
    .end local v12    # "start":I
    .end local v13    # "end":I
    .end local v18    # "left":I
    .end local v25    # "directions":Landroid/text/Layout$Directions;
    .end local v26    # "hasTab":Z
    .end local v27    # "tabStops":Landroid/text/Layout$TabStops;
    .end local v28    # "align":Landroid/text/Layout$Alignment;
    .end local v46    # "x":I
    .restart local v41    # "tabStops":Landroid/text/Layout$TabStops;
    :cond_18
    invoke-static/range {v44 .. v44}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@26c
    .line 254
    return-void
.end method

.method public final getAlignment()Landroid/text/Layout$Alignment;
    .locals 1

    #@0
    .prologue
    .line 622
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@2
    return-object v0
.end method

.method public abstract getBottomPadding()I
.end method

.method public getCursorPath(ILandroid/graphics/Path;Ljava/lang/CharSequence;)V
    .locals 12
    .param p1, "point"    # I
    .param p2, "dest"    # Landroid/graphics/Path;
    .param p3, "editingBuffer"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 1426
    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    #@3
    .line 1428
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@6
    move-result v7

    #@7
    .line 1429
    .local v7, "line":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->getLineTop(I)I

    #@a
    move-result v8

    #@b
    .line 1430
    .local v8, "top":I
    add-int/lit8 v9, v7, 0x1

    #@d
    invoke-virtual {p0, v9}, Landroid/text/Layout;->getLineTop(I)I

    #@10
    move-result v0

    #@11
    .line 1432
    .local v0, "bottom":I
    invoke-virtual {p0, v7}, Landroid/text/Layout;->shouldClampCursor(I)Z

    #@14
    move-result v2

    #@15
    .line 1433
    .local v2, "clamped":Z
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    #@18
    move-result v9

    #@19
    const/high16 v10, 0x3f000000    # 0.5f

    #@1b
    sub-float v5, v9, v10

    #@1d
    .line 1434
    .local v5, "h1":F
    invoke-virtual {p0, p1}, Landroid/text/Layout;->isLevelBoundary(I)Z

    #@20
    move-result v9

    #@21
    if-eqz v9, :cond_7

    #@23
    invoke-virtual {p0, p1, v2}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    #@26
    move-result v9

    #@27
    const/high16 v10, 0x3f000000    # 0.5f

    #@29
    sub-float v6, v9, v10

    #@2b
    .line 1436
    .local v6, "h2":F
    :goto_0
    const/4 v9, 0x1

    #@2c
    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@2f
    move-result v9

    #@30
    .line 1437
    const/16 v10, 0x800

    #@32
    invoke-static {p3, v10}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@35
    move-result v10

    #@36
    .line 1436
    or-int v1, v9, v10

    #@38
    .line 1438
    .local v1, "caps":I
    const/4 v9, 0x2

    #@39
    invoke-static {p3, v9}, Landroid/text/method/TextKeyListener;->getMetaState(Ljava/lang/CharSequence;I)I

    #@3c
    move-result v4

    #@3d
    .line 1439
    .local v4, "fn":I
    const/4 v3, 0x0

    #@3e
    .line 1441
    .local v3, "dist":I
    if-nez v1, :cond_0

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 1442
    :cond_0
    sub-int v9, v0, v8

    #@44
    shr-int/lit8 v3, v9, 0x2

    #@46
    .line 1444
    if-eqz v4, :cond_1

    #@48
    .line 1445
    add-int/2addr v8, v3

    #@49
    .line 1446
    :cond_1
    if-eqz v1, :cond_2

    #@4b
    .line 1447
    sub-int/2addr v0, v3

    #@4c
    .line 1450
    :cond_2
    const/high16 v9, 0x3f000000    # 0.5f

    #@4e
    cmpg-float v9, v5, v9

    #@50
    if-gez v9, :cond_3

    #@52
    .line 1451
    const/high16 v5, 0x3f000000    # 0.5f

    #@54
    .line 1452
    :cond_3
    const/high16 v9, 0x3f000000    # 0.5f

    #@56
    cmpg-float v9, v6, v9

    #@58
    if-gez v9, :cond_4

    #@5a
    .line 1453
    const/high16 v6, 0x3f000000    # 0.5f

    #@5c
    .line 1455
    :cond_4
    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    #@5f
    move-result v9

    #@60
    if-nez v9, :cond_8

    #@62
    .line 1456
    int-to-float v9, v8

    #@63
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@66
    .line 1457
    int-to-float v9, v0

    #@67
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@6a
    .line 1466
    :goto_1
    const/4 v9, 0x2

    #@6b
    if-ne v1, v9, :cond_9

    #@6d
    .line 1467
    int-to-float v9, v0

    #@6e
    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@71
    .line 1468
    int-to-float v9, v3

    #@72
    sub-float v9, v6, v9

    #@74
    add-int v10, v0, v3

    #@76
    int-to-float v10, v10

    #@77
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@7a
    .line 1469
    int-to-float v9, v0

    #@7b
    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@7e
    .line 1470
    int-to-float v9, v3

    #@7f
    add-float/2addr v9, v6

    #@80
    add-int v10, v0, v3

    #@82
    int-to-float v10, v10

    #@83
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@86
    .line 1482
    :cond_5
    :goto_2
    const/4 v9, 0x2

    #@87
    if-ne v4, v9, :cond_a

    #@89
    .line 1483
    int-to-float v9, v8

    #@8a
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@8d
    .line 1484
    int-to-float v9, v3

    #@8e
    sub-float v9, v5, v9

    #@90
    sub-int v10, v8, v3

    #@92
    int-to-float v10, v10

    #@93
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@96
    .line 1485
    int-to-float v9, v8

    #@97
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@9a
    .line 1486
    int-to-float v9, v3

    #@9b
    add-float/2addr v9, v5

    #@9c
    sub-int v10, v8, v3

    #@9e
    int-to-float v10, v10

    #@9f
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@a2
    .line 1425
    :cond_6
    :goto_3
    return-void

    #@a3
    .line 1434
    .end local v1    # "caps":I
    .end local v3    # "dist":I
    .end local v4    # "fn":I
    .end local v6    # "h2":F
    :cond_7
    move v6, v5

    #@a4
    .restart local v6    # "h2":F
    goto :goto_0

    #@a5
    .line 1459
    .restart local v1    # "caps":I
    .restart local v3    # "dist":I
    .restart local v4    # "fn":I
    :cond_8
    int-to-float v9, v8

    #@a6
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@a9
    .line 1460
    add-int v9, v8, v0

    #@ab
    shr-int/lit8 v9, v9, 0x1

    #@ad
    int-to-float v9, v9

    #@ae
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@b1
    .line 1462
    add-int v9, v8, v0

    #@b3
    shr-int/lit8 v9, v9, 0x1

    #@b5
    int-to-float v9, v9

    #@b6
    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@b9
    .line 1463
    int-to-float v9, v0

    #@ba
    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@bd
    goto :goto_1

    #@be
    .line 1471
    :cond_9
    const/4 v9, 0x1

    #@bf
    if-ne v1, v9, :cond_5

    #@c1
    .line 1472
    int-to-float v9, v0

    #@c2
    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@c5
    .line 1473
    int-to-float v9, v3

    #@c6
    sub-float v9, v6, v9

    #@c8
    add-int v10, v0, v3

    #@ca
    int-to-float v10, v10

    #@cb
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@ce
    .line 1475
    int-to-float v9, v3

    #@cf
    sub-float v9, v6, v9

    #@d1
    add-int v10, v0, v3

    #@d3
    int-to-float v10, v10

    #@d4
    const/high16 v11, 0x3f000000    # 0.5f

    #@d6
    sub-float/2addr v10, v11

    #@d7
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    #@da
    .line 1476
    int-to-float v9, v3

    #@db
    add-float/2addr v9, v6

    #@dc
    add-int v10, v0, v3

    #@de
    int-to-float v10, v10

    #@df
    const/high16 v11, 0x3f000000    # 0.5f

    #@e1
    sub-float/2addr v10, v11

    #@e2
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@e5
    .line 1478
    int-to-float v9, v3

    #@e6
    add-float/2addr v9, v6

    #@e7
    add-int v10, v0, v3

    #@e9
    int-to-float v10, v10

    #@ea
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    #@ed
    .line 1479
    int-to-float v9, v0

    #@ee
    invoke-virtual {p2, v6, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@f1
    goto :goto_2

    #@f2
    .line 1487
    :cond_a
    const/4 v9, 0x1

    #@f3
    if-ne v4, v9, :cond_6

    #@f5
    .line 1488
    int-to-float v9, v8

    #@f6
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->moveTo(FF)V

    #@f9
    .line 1489
    int-to-float v9, v3

    #@fa
    sub-float v9, v5, v9

    #@fc
    sub-int v10, v8, v3

    #@fe
    int-to-float v10, v10

    #@ff
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@102
    .line 1491
    int-to-float v9, v3

    #@103
    sub-float v9, v5, v9

    #@105
    sub-int v10, v8, v3

    #@107
    int-to-float v10, v10

    #@108
    const/high16 v11, 0x3f000000    # 0.5f

    #@10a
    add-float/2addr v10, v11

    #@10b
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    #@10e
    .line 1492
    int-to-float v9, v3

    #@10f
    add-float/2addr v9, v5

    #@110
    sub-int v10, v8, v3

    #@112
    int-to-float v10, v10

    #@113
    const/high16 v11, 0x3f000000    # 0.5f

    #@115
    add-float/2addr v10, v11

    #@116
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    #@119
    .line 1494
    int-to-float v9, v3

    #@11a
    add-float/2addr v9, v5

    #@11b
    sub-int v10, v8, v3

    #@11d
    int-to-float v10, v10

    #@11e
    invoke-virtual {p2, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    #@121
    .line 1495
    int-to-float v9, v8

    #@122
    invoke-virtual {p2, v5, v9}, Landroid/graphics/Path;->lineTo(FF)V

    #@125
    goto/16 :goto_3
.end method

.method public abstract getEllipsisCount(I)I
.end method

.method public abstract getEllipsisStart(I)I
.end method

.method public getEllipsizedWidth()I
    .locals 1

    #@0
    .prologue
    .line 595
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    #@2
    return v0
.end method

.method public getHeight()I
    .locals 1

    #@0
    .prologue
    .line 615
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@3
    move-result v0

    #@4
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public getHyphen(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 730
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getIndentAdjust(ILandroid/text/Layout$Alignment;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "alignment"    # Landroid/text/Layout$Alignment;

    #@0
    .prologue
    .line 739
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public final getLineAscent(I)I
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1306
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    #@3
    move-result v0

    #@4
    add-int/lit8 v1, p1, 0x1

    #@6
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@9
    move-result v1

    #@a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    #@d
    move-result v2

    #@e
    sub-int/2addr v1, v2

    #@f
    sub-int/2addr v0, v1

    #@10
    return v0
.end method

.method public final getLineBaseline(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1297
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineDescent(I)I

    #@9
    move-result v1

    #@a
    sub-int/2addr v0, v1

    #@b
    return v0
.end method

.method public final getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1289
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineBounds(ILandroid/graphics/Rect;)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "bounds"    # Landroid/graphics/Rect;

    #@0
    .prologue
    .line 661
    if-eqz p2, :cond_0

    #@2
    .line 662
    const/4 v0, 0x0

    #@3
    iput v0, p2, Landroid/graphics/Rect;->left:I

    #@5
    .line 663
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineTop(I)I

    #@8
    move-result v0

    #@9
    iput v0, p2, Landroid/graphics/Rect;->top:I

    #@b
    .line 664
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    #@d
    iput v0, p2, Landroid/graphics/Rect;->right:I

    #@f
    .line 665
    add-int/lit8 v0, p1, 0x1

    #@11
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@14
    move-result v0

    #@15
    iput v0, p2, Landroid/graphics/Rect;->bottom:I

    #@17
    .line 667
    :cond_0
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineBaseline(I)I

    #@1a
    move-result v0

    #@1b
    return v0
.end method

.method public abstract getLineContainsTab(I)Z
.end method

.method public abstract getLineCount()I
.end method

.method public abstract getLineDescent(I)I
.end method

.method public abstract getLineDirections(I)Landroid/text/Layout$Directions;
.end method

.method public final getLineEnd(I)I
    .locals 1
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1248
    add-int/lit8 v0, p1, 0x1

    #@2
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public getLineForOffset(I)I
    .locals 6
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1124
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@4
    move-result v1

    #@5
    .local v1, "high":I
    const/4 v2, -0x1

    #@6
    .line 1126
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    #@8
    const/4 v4, 0x1

    #@9
    if-le v3, v4, :cond_1

    #@b
    .line 1127
    add-int v3, v1, v2

    #@d
    div-int/lit8 v0, v3, 0x2

    #@f
    .line 1129
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineStart(I)I

    #@12
    move-result v3

    #@13
    if-le v3, p1, :cond_0

    #@15
    .line 1130
    move v1, v0

    #@16
    goto :goto_0

    #@17
    .line 1132
    :cond_0
    move v2, v0

    #@18
    goto :goto_0

    #@19
    .line 1135
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    #@1b
    .line 1136
    return v5

    #@1c
    .line 1138
    :cond_2
    return v2
.end method

.method public getLineForVertical(I)I
    .locals 6
    .param p1, "vertical"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 1101
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@4
    move-result v1

    #@5
    .local v1, "high":I
    const/4 v2, -0x1

    #@6
    .line 1103
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    #@8
    const/4 v4, 0x1

    #@9
    if-le v3, v4, :cond_1

    #@b
    .line 1104
    add-int v3, v1, v2

    #@d
    div-int/lit8 v0, v3, 0x2

    #@f
    .line 1106
    .local v0, "guess":I
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineTop(I)I

    #@12
    move-result v3

    #@13
    if-le v3, p1, :cond_0

    #@15
    .line 1107
    move v1, v0

    #@16
    goto :goto_0

    #@17
    .line 1109
    :cond_0
    move v2, v0

    #@18
    goto :goto_0

    #@19
    .line 1112
    .end local v0    # "guess":I
    :cond_1
    if-gez v2, :cond_2

    #@1b
    .line 1113
    return v5

    #@1c
    .line 1115
    :cond_2
    return v2
.end method

.method public getLineLeft(I)F
    .locals 8
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 960
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@5
    move-result v1

    #@6
    .line 961
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@9
    move-result-object v0

    #@a
    .line 963
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@c
    if-ne v0, v5, :cond_0

    #@e
    .line 964
    return v6

    #@f
    .line 965
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@11
    if-ne v0, v5, :cond_2

    #@13
    .line 966
    if-ne v1, v7, :cond_1

    #@15
    .line 967
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    #@18
    move-result v5

    #@19
    int-to-float v5, v5

    #@1a
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@1d
    move-result v6

    #@1e
    sub-float/2addr v5, v6

    #@1f
    return v5

    #@20
    .line 969
    :cond_1
    return v6

    #@21
    .line 970
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@23
    if-ne v0, v5, :cond_3

    #@25
    .line 971
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    #@27
    int-to-float v5, v5

    #@28
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@2b
    move-result v6

    #@2c
    sub-float/2addr v5, v6

    #@2d
    return v5

    #@2e
    .line 972
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@30
    if-ne v0, v5, :cond_5

    #@32
    .line 973
    if-ne v1, v7, :cond_4

    #@34
    .line 974
    return v6

    #@35
    .line 976
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    #@37
    int-to-float v5, v5

    #@38
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@3b
    move-result v6

    #@3c
    sub-float/2addr v5, v6

    #@3d
    return v5

    #@3e
    .line 978
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    #@41
    move-result v2

    #@42
    .line 979
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    #@45
    move-result v4

    #@46
    .line 980
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@49
    move-result v5

    #@4a
    float-to-int v5, v5

    #@4b
    and-int/lit8 v3, v5, -0x2

    #@4d
    .line 982
    .local v3, "max":I
    sub-int v5, v4, v2

    #@4f
    sub-int/2addr v5, v3

    #@50
    div-int/lit8 v5, v5, 0x2

    #@52
    add-int/2addr v5, v2

    #@53
    int-to-float v5, v5

    #@54
    return v5
.end method

.method public getLineMax(I)F
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1022
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    #@3
    move-result v2

    #@4
    int-to-float v0, v2

    #@5
    .line 1023
    .local v0, "margin":F
    const/4 v2, 0x0

    #@6
    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    #@9
    move-result v1

    #@a
    .line 1024
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    #@b
    cmpl-float v2, v1, v2

    #@d
    if-ltz v2, :cond_0

    #@f
    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    #@11
    return v2

    #@12
    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    #@13
    goto :goto_0
.end method

.method public getLineRangeForDraw(Landroid/graphics/Canvas;)J
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    #@0
    .prologue
    const/4 v7, -0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 493
    sget-object v5, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    #@4
    monitor-enter v5

    #@5
    .line 494
    :try_start_0
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    #@7
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    #@a
    move-result v4

    #@b
    if-nez v4, :cond_0

    #@d
    .line 496
    const/4 v4, 0x0

    #@e
    const/4 v6, -0x1

    #@f
    invoke-static {v4, v6}, Landroid/text/TextUtils;->packRangeInLong(II)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    move-result-wide v6

    #@13
    monitor-exit v5

    #@14
    return-wide v6

    #@15
    .line 499
    :cond_0
    :try_start_1
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    #@17
    iget v2, v4, Landroid/graphics/Rect;->top:I

    #@19
    .line 500
    .local v2, "dtop":I
    sget-object v4, Landroid/text/Layout;->sTempRect:Landroid/graphics/Rect;

    #@1b
    iget v1, v4, Landroid/graphics/Rect;->bottom:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1d
    .local v1, "dbottom":I
    monitor-exit v5

    #@1e
    .line 503
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    #@21
    move-result v3

    #@22
    .line 504
    .local v3, "top":I
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    #@25
    move-result v4

    #@26
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineTop(I)I

    #@29
    move-result v4

    #@2a
    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    #@2d
    move-result v0

    #@2e
    .line 506
    .local v0, "bottom":I
    if-lt v3, v0, :cond_1

    #@30
    invoke-static {v6, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@33
    move-result-wide v4

    #@34
    return-wide v4

    #@35
    .line 493
    .end local v0    # "bottom":I
    .end local v1    # "dbottom":I
    .end local v2    # "dtop":I
    .end local v3    # "top":I
    :catchall_0
    move-exception v4

    #@36
    monitor-exit v5

    #@37
    throw v4

    #@38
    .line 507
    .restart local v0    # "bottom":I
    .restart local v1    # "dbottom":I
    .restart local v2    # "dtop":I
    .restart local v3    # "top":I
    :cond_1
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineForVertical(I)I

    #@3b
    move-result v4

    #@3c
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    #@3f
    move-result v5

    #@40
    invoke-static {v4, v5}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@43
    move-result-wide v4

    #@44
    return-wide v4
.end method

.method public getLineRight(I)F
    .locals 7
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v6, -0x1

    #@1
    .line 991
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@4
    move-result v1

    #@5
    .line 992
    .local v1, "dir":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@8
    move-result-object v0

    #@9
    .line 994
    .local v0, "align":Landroid/text/Layout$Alignment;
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_LEFT:Landroid/text/Layout$Alignment;

    #@b
    if-ne v0, v5, :cond_0

    #@d
    .line 995
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    #@10
    move-result v5

    #@11
    int-to-float v5, v5

    #@12
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@15
    move-result v6

    #@16
    add-float/2addr v5, v6

    #@17
    return v5

    #@18
    .line 996
    :cond_0
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    #@1a
    if-ne v0, v5, :cond_2

    #@1c
    .line 997
    if-ne v1, v6, :cond_1

    #@1e
    .line 998
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    #@20
    int-to-float v5, v5

    #@21
    return v5

    #@22
    .line 1000
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    #@25
    move-result v5

    #@26
    int-to-float v5, v5

    #@27
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@2a
    move-result v6

    #@2b
    add-float/2addr v5, v6

    #@2c
    return v5

    #@2d
    .line 1001
    :cond_2
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_RIGHT:Landroid/text/Layout$Alignment;

    #@2f
    if-ne v0, v5, :cond_3

    #@31
    .line 1002
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    #@33
    int-to-float v5, v5

    #@34
    return v5

    #@35
    .line 1003
    :cond_3
    sget-object v5, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    #@37
    if-ne v0, v5, :cond_5

    #@39
    .line 1004
    if-ne v1, v6, :cond_4

    #@3b
    .line 1005
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@3e
    move-result v5

    #@3f
    return v5

    #@40
    .line 1007
    :cond_4
    iget v5, p0, Landroid/text/Layout;->mWidth:I

    #@42
    int-to-float v5, v5

    #@43
    return v5

    #@44
    .line 1009
    :cond_5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphLeft(I)I

    #@47
    move-result v2

    #@48
    .line 1010
    .local v2, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphRight(I)I

    #@4b
    move-result v4

    #@4c
    .line 1011
    .local v4, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineMax(I)F

    #@4f
    move-result v5

    #@50
    float-to-int v5, v5

    #@51
    and-int/lit8 v3, v5, -0x2

    #@53
    .line 1013
    .local v3, "max":I
    sub-int v5, v4, v2

    #@55
    sub-int/2addr v5, v3

    #@56
    div-int/lit8 v5, v5, 0x2

    #@58
    sub-int v5, v4, v5

    #@5a
    int-to-float v5, v5

    #@5b
    return v5
.end method

.method public abstract getLineStart(I)I
.end method

.method public abstract getLineTop(I)I
.end method

.method public getLineVisibleEnd(I)I
    .locals 2
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1256
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    #@3
    move-result v0

    #@4
    add-int/lit8 v1, p1, 0x1

    #@6
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getLineStart(I)I

    #@9
    move-result v1

    #@a
    invoke-direct {p0, p1, v0, v1}, Landroid/text/Layout;->getLineVisibleEnd(III)I

    #@d
    move-result v0

    #@e
    return v0
.end method

.method public getLineWidth(I)F
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1032
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    #@3
    move-result v2

    #@4
    int-to-float v0, v2

    #@5
    .line 1033
    .local v0, "margin":F
    const/4 v2, 0x1

    #@6
    invoke-direct {p0, p1, v2}, Landroid/text/Layout;->getLineExtent(IZ)F

    #@9
    move-result v1

    #@a
    .line 1034
    .local v1, "signedExtent":F
    const/4 v2, 0x0

    #@b
    cmpl-float v2, v1, v2

    #@d
    if-ltz v2, :cond_0

    #@f
    .end local v1    # "signedExtent":F
    :goto_0
    add-float v2, v0, v1

    #@11
    return v2

    #@12
    .restart local v1    # "signedExtent":F
    :cond_0
    neg-float v1, v1

    #@13
    goto :goto_0
.end method

.method public getOffsetForHorizontal(IF)I
    .locals 1
    .param p1, "line"    # I
    .param p2, "horiz"    # F

    #@0
    .prologue
    .line 1146
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IFZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getOffsetForHorizontal(IFZ)I
    .locals 27
    .param p1, "line"    # I
    .param p2, "horiz"    # F
    .param p3, "primary"    # Z

    #@0
    .prologue
    .line 1161
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@3
    move-result v7

    #@4
    .line 1162
    .local v7, "lineEndOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineStart(I)I

    #@7
    move-result v6

    #@8
    .line 1164
    .local v6, "lineStartOffset":I
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@b
    move-result-object v9

    #@c
    .line 1166
    .local v9, "dirs":Landroid/text/Layout$Directions;
    invoke-static {}, Landroid/text/TextLine;->obtain()Landroid/text/TextLine;

    #@f
    move-result-object v3

    #@10
    .line 1168
    .local v3, "tl":Landroid/text/TextLine;
    move-object/from16 v0, p0

    #@12
    iget-object v4, v0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@14
    move-object/from16 v0, p0

    #@16
    iget-object v5, v0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@18
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@1b
    move-result v8

    #@1c
    .line 1169
    const/4 v10, 0x0

    #@1d
    const/4 v11, 0x0

    #@1e
    .line 1168
    invoke-virtual/range {v3 .. v11}, Landroid/text/TextLine;->set(Landroid/text/TextPaint;Ljava/lang/CharSequence;IIILandroid/text/Layout$Directions;ZLandroid/text/Layout$TabStops;)V

    #@21
    .line 1172
    invoke-virtual/range {p0 .. p0}, Landroid/text/Layout;->getLineCount()I

    #@24
    move-result v4

    #@25
    add-int/lit8 v4, v4, -0x1

    #@27
    move/from16 v0, p1

    #@29
    if-ne v0, v4, :cond_1

    #@2b
    .line 1173
    move/from16 v23, v7

    #@2d
    .line 1178
    .local v23, "max":I
    :goto_0
    move v14, v6

    #@2e
    .line 1179
    .local v14, "best":I
    move-object/from16 v0, p0

    #@30
    move/from16 v1, p3

    #@32
    invoke-direct {v0, v6, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    #@35
    move-result v4

    #@36
    sub-float v4, v4, p2

    #@38
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@3b
    move-result v15

    #@3c
    .line 1181
    .local v15, "bestdist":F
    const/16 v20, 0x0

    #@3e
    .local v20, "i":I
    :goto_1
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@40
    array-length v4, v4

    #@41
    move/from16 v0, v20

    #@43
    if-ge v0, v4, :cond_c

    #@45
    .line 1182
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@47
    aget v4, v4, v20

    #@49
    add-int v18, v6, v4

    #@4b
    .line 1183
    .local v18, "here":I
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@4d
    add-int/lit8 v5, v20, 0x1

    #@4f
    aget v4, v4, v5

    #@51
    const v5, 0x3ffffff

    #@54
    and-int/2addr v4, v5

    #@55
    add-int v26, v18, v4

    #@57
    .line 1184
    .local v26, "there":I
    iget-object v4, v9, Landroid/text/Layout$Directions;->mDirections:[I

    #@59
    add-int/lit8 v5, v20, 0x1

    #@5b
    aget v4, v4, v5

    #@5d
    const/high16 v5, 0x4000000

    #@5f
    and-int/2addr v4, v5

    #@60
    if-eqz v4, :cond_3

    #@62
    const/16 v21, 0x1

    #@64
    .line 1185
    .local v21, "isRtl":Z
    :goto_2
    if-eqz v21, :cond_4

    #@66
    const/16 v25, -0x1

    #@68
    .line 1187
    .local v25, "swap":I
    :goto_3
    move/from16 v0, v26

    #@6a
    move/from16 v1, v23

    #@6c
    if-le v0, v1, :cond_0

    #@6e
    .line 1188
    move/from16 v26, v23

    #@70
    .line 1189
    :cond_0
    add-int/lit8 v4, v26, -0x1

    #@72
    add-int/lit8 v19, v4, 0x1

    #@74
    .local v19, "high":I
    add-int/lit8 v4, v18, 0x1

    #@76
    add-int/lit8 v22, v4, -0x1

    #@78
    .line 1191
    .local v22, "low":I
    :goto_4
    sub-int v4, v19, v22

    #@7a
    const/4 v5, 0x1

    #@7b
    if-le v4, v5, :cond_6

    #@7d
    .line 1192
    add-int v4, v19, v22

    #@7f
    div-int/lit8 v17, v4, 0x2

    #@81
    .line 1193
    .local v17, "guess":I
    move-object/from16 v0, p0

    #@83
    move/from16 v1, v17

    #@85
    invoke-direct {v0, v1}, Landroid/text/Layout;->getOffsetAtStartOf(I)I

    #@88
    move-result v12

    #@89
    .line 1195
    .local v12, "adguess":I
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, p3

    #@8d
    invoke-direct {v0, v12, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    #@90
    move-result v4

    #@91
    move/from16 v0, v25

    #@93
    int-to-float v5, v0

    #@94
    mul-float/2addr v4, v5

    #@95
    move/from16 v0, v25

    #@97
    int-to-float v5, v0

    #@98
    mul-float v5, v5, p2

    #@9a
    cmpl-float v4, v4, v5

    #@9c
    if-ltz v4, :cond_5

    #@9e
    .line 1196
    move/from16 v19, v17

    #@a0
    goto :goto_4

    #@a1
    .line 1175
    .end local v12    # "adguess":I
    .end local v14    # "best":I
    .end local v15    # "bestdist":F
    .end local v17    # "guess":I
    .end local v18    # "here":I
    .end local v19    # "high":I
    .end local v20    # "i":I
    .end local v21    # "isRtl":Z
    .end local v22    # "low":I
    .end local v23    # "max":I
    .end local v25    # "swap":I
    .end local v26    # "there":I
    :cond_1
    sub-int v5, v7, v6

    #@a3
    .line 1176
    add-int/lit8 v4, v7, -0x1

    #@a5
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v4}, Landroid/text/Layout;->isRtlCharAt(I)Z

    #@aa
    move-result v4

    #@ab
    if-eqz v4, :cond_2

    #@ad
    const/4 v4, 0x0

    #@ae
    .line 1175
    :goto_5
    invoke-virtual {v3, v5, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    #@b1
    move-result v4

    #@b2
    add-int v23, v4, v6

    #@b4
    .restart local v23    # "max":I
    goto/16 :goto_0

    #@b6
    .line 1176
    .end local v23    # "max":I
    :cond_2
    const/4 v4, 0x1

    #@b7
    goto :goto_5

    #@b8
    .line 1184
    .restart local v14    # "best":I
    .restart local v15    # "bestdist":F
    .restart local v18    # "here":I
    .restart local v20    # "i":I
    .restart local v23    # "max":I
    .restart local v26    # "there":I
    :cond_3
    const/16 v21, 0x0

    #@ba
    goto :goto_2

    #@bb
    .line 1185
    .restart local v21    # "isRtl":Z
    :cond_4
    const/16 v25, 0x1

    #@bd
    .restart local v25    # "swap":I
    goto :goto_3

    #@be
    .line 1198
    .restart local v12    # "adguess":I
    .restart local v17    # "guess":I
    .restart local v19    # "high":I
    .restart local v22    # "low":I
    :cond_5
    move/from16 v22, v17

    #@c0
    goto :goto_4

    #@c1
    .line 1201
    .end local v12    # "adguess":I
    .end local v17    # "guess":I
    :cond_6
    add-int/lit8 v4, v18, 0x1

    #@c3
    move/from16 v0, v22

    #@c5
    if-ge v0, v4, :cond_7

    #@c7
    .line 1202
    add-int/lit8 v22, v18, 0x1

    #@c9
    .line 1204
    :cond_7
    move/from16 v0, v22

    #@cb
    move/from16 v1, v26

    #@cd
    if-ge v0, v1, :cond_9

    #@cf
    .line 1205
    sub-int v4, v22, v6

    #@d1
    move/from16 v0, v21

    #@d3
    invoke-virtual {v3, v4, v0}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    #@d6
    move-result v4

    #@d7
    add-int v13, v4, v6

    #@d9
    .line 1206
    .local v13, "aft":I
    sub-int v5, v13, v6

    #@db
    if-eqz v21, :cond_b

    #@dd
    const/4 v4, 0x0

    #@de
    :goto_6
    invoke-virtual {v3, v5, v4}, Landroid/text/TextLine;->getOffsetToLeftRightOf(IZ)I

    #@e1
    move-result v4

    #@e2
    add-int v22, v4, v6

    #@e4
    .line 1207
    move/from16 v0, v22

    #@e6
    move/from16 v1, v18

    #@e8
    if-lt v0, v1, :cond_9

    #@ea
    move/from16 v0, v22

    #@ec
    move/from16 v1, v26

    #@ee
    if-ge v0, v1, :cond_9

    #@f0
    .line 1208
    move-object/from16 v0, p0

    #@f2
    move/from16 v1, v22

    #@f4
    move/from16 v2, p3

    #@f6
    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    #@f9
    move-result v4

    #@fa
    sub-float v4, v4, p2

    #@fc
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@ff
    move-result v16

    #@100
    .line 1209
    .local v16, "dist":F
    move/from16 v0, v26

    #@102
    if-ge v13, v0, :cond_8

    #@104
    .line 1210
    move-object/from16 v0, p0

    #@106
    move/from16 v1, p3

    #@108
    invoke-direct {v0, v13, v1}, Landroid/text/Layout;->getHorizontal(IZ)F

    #@10b
    move-result v4

    #@10c
    sub-float v4, v4, p2

    #@10e
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@111
    move-result v24

    #@112
    .line 1212
    .local v24, "other":F
    cmpg-float v4, v24, v16

    #@114
    if-gez v4, :cond_8

    #@116
    .line 1213
    move/from16 v16, v24

    #@118
    .line 1214
    move/from16 v22, v13

    #@11a
    .line 1218
    .end local v24    # "other":F
    :cond_8
    cmpg-float v4, v16, v15

    #@11c
    if-gez v4, :cond_9

    #@11e
    .line 1219
    move/from16 v15, v16

    #@120
    .line 1220
    move/from16 v14, v22

    #@122
    .line 1225
    .end local v13    # "aft":I
    .end local v16    # "dist":F
    :cond_9
    move-object/from16 v0, p0

    #@124
    move/from16 v1, v18

    #@126
    move/from16 v2, p3

    #@128
    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    #@12b
    move-result v4

    #@12c
    sub-float v4, v4, p2

    #@12e
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@131
    move-result v16

    #@132
    .line 1227
    .restart local v16    # "dist":F
    cmpg-float v4, v16, v15

    #@134
    if-gez v4, :cond_a

    #@136
    .line 1228
    move/from16 v15, v16

    #@138
    .line 1229
    move/from16 v14, v18

    #@13a
    .line 1181
    :cond_a
    add-int/lit8 v20, v20, 0x2

    #@13c
    goto/16 :goto_1

    #@13e
    .line 1206
    .end local v16    # "dist":F
    .restart local v13    # "aft":I
    :cond_b
    const/4 v4, 0x1

    #@13f
    goto :goto_6

    #@140
    .line 1233
    .end local v13    # "aft":I
    .end local v18    # "here":I
    .end local v19    # "high":I
    .end local v21    # "isRtl":Z
    .end local v22    # "low":I
    .end local v25    # "swap":I
    .end local v26    # "there":I
    :cond_c
    move-object/from16 v0, p0

    #@142
    move/from16 v1, v23

    #@144
    move/from16 v2, p3

    #@146
    invoke-direct {v0, v1, v2}, Landroid/text/Layout;->getHorizontal(IZ)F

    #@149
    move-result v4

    #@14a
    sub-float v4, v4, p2

    #@14c
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    #@14f
    move-result v16

    #@150
    .line 1235
    .restart local v16    # "dist":F
    cmpg-float v4, v16, v15

    #@152
    if-gtz v4, :cond_d

    #@154
    .line 1236
    move/from16 v15, v16

    #@156
    .line 1237
    move/from16 v14, v23

    #@158
    .line 1240
    :cond_d
    invoke-static {v3}, Landroid/text/TextLine;->recycle(Landroid/text/TextLine;)Landroid/text/TextLine;

    #@15b
    .line 1241
    return v14
.end method

.method public getOffsetToLeftOf(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 1310
    const/4 v0, 0x1

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getOffsetToRightOf(I)I
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 1314
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, v0}, Landroid/text/Layout;->getOffsetToLeftRightOf(IZ)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getPaint()Landroid/text/TextPaint;
    .locals 1

    #@0
    .prologue
    .line 580
    iget-object v0, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@2
    return-object v0
.end method

.method public final getParagraphAlignment(I)Landroid/text/Layout$Alignment;
    .locals 7
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1595
    iget-object v0, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@2
    .line 1597
    .local v0, "align":Landroid/text/Layout$Alignment;
    iget-boolean v4, p0, Landroid/text/Layout;->mSpannedText:Z

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 1598
    iget-object v1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@8
    check-cast v1, Landroid/text/Spanned;

    #@a
    .line 1599
    .local v1, "sp":Landroid/text/Spanned;
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    #@d
    move-result v4

    #@e
    .line 1600
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    #@11
    move-result v5

    #@12
    .line 1601
    const-class v6, Landroid/text/style/AlignmentSpan;

    #@14
    .line 1599
    invoke-static {v1, v4, v5, v6}, Landroid/text/Layout;->getParagraphSpans(Landroid/text/Spanned;IILjava/lang/Class;)[Ljava/lang/Object;

    #@17
    move-result-object v3

    #@18
    check-cast v3, [Landroid/text/style/AlignmentSpan;

    #@1a
    .line 1603
    .local v3, "spans":[Landroid/text/style/AlignmentSpan;
    array-length v2, v3

    #@1b
    .line 1604
    .local v2, "spanLength":I
    if-lez v2, :cond_0

    #@1d
    .line 1605
    add-int/lit8 v4, v2, -0x1

    #@1f
    aget-object v4, v3, v4

    #@21
    invoke-interface {v4}, Landroid/text/style/AlignmentSpan;->getAlignment()Landroid/text/Layout$Alignment;

    #@24
    move-result-object v0

    #@25
    .line 1609
    .end local v1    # "sp":Landroid/text/Spanned;
    .end local v2    # "spanLength":I
    .end local v3    # "spans":[Landroid/text/style/AlignmentSpan;
    :cond_0
    return-object v0
.end method

.method public abstract getParagraphDirection(I)I
.end method

.method public final getParagraphLeft(I)I
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1616
    const/4 v1, 0x0

    #@1
    .line 1617
    .local v1, "left":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@4
    move-result v0

    #@5
    .line 1618
    .local v0, "dir":I
    const/4 v2, -0x1

    #@6
    if-eq v0, v2, :cond_0

    #@8
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 1621
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    #@f
    move-result v2

    #@10
    return v2

    #@11
    .line 1619
    :cond_0
    return v1
.end method

.method public final getParagraphRight(I)I
    .locals 3
    .param p1, "line"    # I

    #@0
    .prologue
    .line 1628
    iget v1, p0, Landroid/text/Layout;->mWidth:I

    #@2
    .line 1629
    .local v1, "right":I
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@5
    move-result v0

    #@6
    .line 1630
    .local v0, "dir":I
    const/4 v2, 0x1

    #@7
    if-eq v0, v2, :cond_0

    #@9
    iget-boolean v2, p0, Landroid/text/Layout;->mSpannedText:Z

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1633
    invoke-direct {p0, p1}, Landroid/text/Layout;->getParagraphLeadingMargin(I)I

    #@10
    move-result v2

    #@11
    sub-int v2, v1, v2

    #@13
    return v2

    #@14
    .line 1631
    :cond_0
    return v1
.end method

.method public getPrimaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 882
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getPrimaryHorizontal(IZ)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getPrimaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    #@0
    .prologue
    .line 891
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    #@3
    move-result v0

    #@4
    .line 892
    .local v0, "trailing":Z
    invoke-direct {p0, p1, v0, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    #@7
    move-result v1

    #@8
    return v1
.end method

.method public getRunRange(I)J
    .locals 10
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 809
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@4
    move-result v3

    #@5
    .line 810
    .local v3, "line":I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@8
    move-result-object v0

    #@9
    .line 811
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v7, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@b
    if-eq v0, v7, :cond_0

    #@d
    sget-object v7, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@f
    if-ne v0, v7, :cond_1

    #@11
    .line 812
    :cond_0
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    #@14
    move-result v7

    #@15
    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@18
    move-result-wide v8

    #@19
    return-wide v8

    #@1a
    .line 814
    :cond_1
    iget-object v5, v0, Landroid/text/Layout$Directions;->mDirections:[I

    #@1c
    .line 815
    .local v5, "runs":[I
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineStart(I)I

    #@1f
    move-result v4

    #@20
    .line 816
    .local v4, "lineStart":I
    const/4 v1, 0x0

    #@21
    .local v1, "i":I
    :goto_0
    array-length v7, v5

    #@22
    if-ge v1, v7, :cond_3

    #@24
    .line 817
    aget v7, v5, v1

    #@26
    add-int v6, v4, v7

    #@28
    .line 818
    .local v6, "start":I
    add-int/lit8 v7, v1, 0x1

    #@2a
    aget v7, v5, v7

    #@2c
    const v8, 0x3ffffff

    #@2f
    and-int/2addr v7, v8

    #@30
    add-int v2, v6, v7

    #@32
    .line 819
    .local v2, "limit":I
    if-lt p1, v6, :cond_2

    #@34
    if-ge p1, v2, :cond_2

    #@36
    .line 820
    invoke-static {v6, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@39
    move-result-wide v8

    #@3a
    return-wide v8

    #@3b
    .line 816
    :cond_2
    add-int/lit8 v1, v1, 0x2

    #@3d
    goto :goto_0

    #@3e
    .line 824
    .end local v2    # "limit":I
    .end local v6    # "start":I
    :cond_3
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    #@41
    move-result v7

    #@42
    invoke-static {v9, v7}, Landroid/text/TextUtils;->packRangeInLong(II)J

    #@45
    move-result-wide v8

    #@46
    return-wide v8
.end method

.method public getSecondaryHorizontal(I)F
    .locals 1
    .param p1, "offset"    # I

    #@0
    .prologue
    .line 901
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/text/Layout;->getSecondaryHorizontal(IZ)F

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getSecondaryHorizontal(IZ)F
    .locals 2
    .param p1, "offset"    # I
    .param p2, "clamped"    # Z

    #@0
    .prologue
    .line 910
    invoke-direct {p0, p1}, Landroid/text/Layout;->primaryIsTrailingPrevious(I)Z

    #@3
    move-result v0

    #@4
    .line 911
    .local v0, "trailing":Z
    if-eqz v0, :cond_0

    #@6
    const/4 v1, 0x0

    #@7
    :goto_0
    invoke-direct {p0, p1, v1, p2}, Landroid/text/Layout;->getHorizontal(IZZ)F

    #@a
    move-result v1

    #@b
    return v1

    #@c
    :cond_0
    const/4 v1, 0x1

    #@d
    goto :goto_0
.end method

.method public getSelectionPath(IILandroid/graphics/Path;)V
    .locals 19
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "dest"    # Landroid/graphics/Path;

    #@0
    .prologue
    .line 1539
    invoke-virtual/range {p3 .. p3}, Landroid/graphics/Path;->reset()V

    #@3
    .line 1541
    move/from16 v0, p1

    #@5
    move/from16 v1, p2

    #@7
    if-ne v0, v1, :cond_0

    #@9
    .line 1542
    return-void

    #@a
    .line 1544
    :cond_0
    move/from16 v0, p2

    #@c
    move/from16 v1, p1

    #@e
    if-ge v0, v1, :cond_1

    #@10
    .line 1545
    move/from16 v17, p2

    #@12
    .line 1546
    .local v17, "temp":I
    move/from16 p2, p1

    #@14
    .line 1547
    move/from16 p1, v17

    #@16
    .line 1550
    .end local v17    # "temp":I
    :cond_1
    invoke-virtual/range {p0 .. p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@19
    move-result v3

    #@1a
    .line 1551
    .local v3, "startline":I
    move-object/from16 v0, p0

    #@1c
    move/from16 v1, p2

    #@1e
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@21
    move-result v15

    #@22
    .line 1553
    .local v15, "endline":I
    move-object/from16 v0, p0

    #@24
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineTop(I)I

    #@27
    move-result v6

    #@28
    .line 1554
    .local v6, "top":I
    move-object/from16 v0, p0

    #@2a
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    #@2d
    move-result v7

    #@2e
    .line 1556
    .local v7, "bottom":I
    if-ne v3, v15, :cond_2

    #@30
    move-object/from16 v2, p0

    #@32
    move/from16 v4, p1

    #@34
    move/from16 v5, p2

    #@36
    move-object/from16 v8, p3

    #@38
    .line 1557
    invoke-direct/range {v2 .. v8}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    #@3b
    .line 1538
    :goto_0
    return-void

    #@3c
    .line 1559
    :cond_2
    move-object/from16 v0, p0

    #@3e
    iget v2, v0, Landroid/text/Layout;->mWidth:I

    #@40
    int-to-float v0, v2

    #@41
    move/from16 v18, v0

    #@43
    .line 1561
    .local v18, "width":F
    move-object/from16 v0, p0

    #@45
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineEnd(I)I

    #@48
    move-result v11

    #@49
    .line 1562
    move-object/from16 v0, p0

    #@4b
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    #@4e
    move-result v13

    #@4f
    move-object/from16 v8, p0

    #@51
    move v9, v3

    #@52
    move/from16 v10, p1

    #@54
    move v12, v6

    #@55
    move-object/from16 v14, p3

    #@57
    .line 1561
    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    #@5a
    .line 1564
    move-object/from16 v0, p0

    #@5c
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@5f
    move-result v2

    #@60
    const/4 v4, -0x1

    #@61
    if-ne v2, v4, :cond_3

    #@63
    .line 1565
    move-object/from16 v0, p0

    #@65
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineLeft(I)F

    #@68
    move-result v9

    #@69
    int-to-float v10, v6

    #@6a
    .line 1566
    const/4 v11, 0x0

    #@6b
    move-object/from16 v0, p0

    #@6d
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    #@70
    move-result v2

    #@71
    int-to-float v12, v2

    #@72
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@74
    move-object/from16 v8, p3

    #@76
    .line 1565
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@79
    .line 1571
    :goto_1
    add-int/lit8 v16, v3, 0x1

    #@7b
    .local v16, "i":I
    :goto_2
    move/from16 v0, v16

    #@7d
    if-ge v0, v15, :cond_4

    #@7f
    .line 1572
    move-object/from16 v0, p0

    #@81
    move/from16 v1, v16

    #@83
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    #@86
    move-result v6

    #@87
    .line 1573
    move-object/from16 v0, p0

    #@89
    move/from16 v1, v16

    #@8b
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    #@8e
    move-result v7

    #@8f
    .line 1574
    const/4 v9, 0x0

    #@90
    int-to-float v10, v6

    #@91
    int-to-float v12, v7

    #@92
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@94
    move-object/from16 v8, p3

    #@96
    move/from16 v11, v18

    #@98
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@9b
    .line 1571
    add-int/lit8 v16, v16, 0x1

    #@9d
    goto :goto_2

    #@9e
    .line 1568
    .end local v16    # "i":I
    :cond_3
    move-object/from16 v0, p0

    #@a0
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineRight(I)F

    #@a3
    move-result v9

    #@a4
    int-to-float v10, v6

    #@a5
    .line 1569
    move-object/from16 v0, p0

    #@a7
    invoke-virtual {v0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    #@aa
    move-result v2

    #@ab
    int-to-float v12, v2

    #@ac
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@ae
    move-object/from16 v8, p3

    #@b0
    move/from16 v11, v18

    #@b2
    .line 1568
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@b5
    goto :goto_1

    #@b6
    .line 1577
    .restart local v16    # "i":I
    :cond_4
    move-object/from16 v0, p0

    #@b8
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineTop(I)I

    #@bb
    move-result v6

    #@bc
    .line 1578
    move-object/from16 v0, p0

    #@be
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineBottom(I)I

    #@c1
    move-result v7

    #@c2
    .line 1580
    move-object/from16 v0, p0

    #@c4
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineStart(I)I

    #@c7
    move-result v10

    #@c8
    move-object/from16 v8, p0

    #@ca
    move v9, v15

    #@cb
    move/from16 v11, p2

    #@cd
    move v12, v6

    #@ce
    move v13, v7

    #@cf
    move-object/from16 v14, p3

    #@d1
    invoke-direct/range {v8 .. v14}, Landroid/text/Layout;->addSelection(IIIIILandroid/graphics/Path;)V

    #@d4
    .line 1583
    move-object/from16 v0, p0

    #@d6
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@d9
    move-result v2

    #@da
    const/4 v4, -0x1

    #@db
    if-ne v2, v4, :cond_5

    #@dd
    .line 1584
    int-to-float v10, v6

    #@de
    move-object/from16 v0, p0

    #@e0
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineRight(I)F

    #@e3
    move-result v11

    #@e4
    int-to-float v12, v7

    #@e5
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@e7
    move-object/from16 v8, p3

    #@e9
    move/from16 v9, v18

    #@eb
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@ee
    goto/16 :goto_0

    #@f0
    .line 1586
    :cond_5
    const/4 v9, 0x0

    #@f1
    int-to-float v10, v6

    #@f2
    move-object/from16 v0, p0

    #@f4
    invoke-virtual {v0, v15}, Landroid/text/Layout;->getLineLeft(I)F

    #@f7
    move-result v11

    #@f8
    int-to-float v12, v7

    #@f9
    sget-object v13, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    #@fb
    move-object/from16 v8, p3

    #@fd
    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    #@100
    goto/16 :goto_0
.end method

.method public final getSpacingAdd()F
    .locals 1

    #@0
    .prologue
    .line 636
    iget v0, p0, Landroid/text/Layout;->mSpacingAdd:F

    #@2
    return v0
.end method

.method public final getSpacingMultiplier()F
    .locals 1

    #@0
    .prologue
    .line 629
    iget v0, p0, Landroid/text/Layout;->mSpacingMult:F

    #@2
    return v0
.end method

.method public final getText()Ljava/lang/CharSequence;
    .locals 1

    #@0
    .prologue
    .line 571
    iget-object v0, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@2
    return-object v0
.end method

.method public final getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;
    .locals 1

    #@0
    .prologue
    .line 644
    iget-object v0, p0, Landroid/text/Layout;->mTextDir:Landroid/text/TextDirectionHeuristic;

    #@2
    return-object v0
.end method

.method public abstract getTopPadding()I
.end method

.method public final getWidth()I
    .locals 1

    #@0
    .prologue
    .line 587
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    #@2
    return v0
.end method

.method public final increaseWidthTo(I)V
    .locals 2
    .param p1, "wid"    # I

    #@0
    .prologue
    .line 604
    iget v0, p0, Landroid/text/Layout;->mWidth:I

    #@2
    if-ge p1, v0, :cond_0

    #@4
    .line 605
    new-instance v0, Ljava/lang/RuntimeException;

    #@6
    const-string/jumbo v1, "attempted to reduce Layout width"

    #@9
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c
    throw v0

    #@d
    .line 608
    :cond_0
    iput p1, p0, Landroid/text/Layout;->mWidth:I

    #@f
    .line 603
    return-void
.end method

.method public isLevelBoundary(I)Z
    .locals 11
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v9, 0x1

    #@1
    const/4 v8, 0x0

    #@2
    .line 750
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@5
    move-result v2

    #@6
    .line 751
    .local v2, "line":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@9
    move-result-object v0

    #@a
    .line 752
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@c
    if-eq v0, v10, :cond_0

    #@e
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@10
    if-ne v0, v10, :cond_1

    #@12
    .line 753
    :cond_0
    return v8

    #@13
    .line 756
    :cond_1
    iget-object v7, v0, Landroid/text/Layout$Directions;->mDirections:[I

    #@15
    .line 757
    .local v7, "runs":[I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineStart(I)I

    #@18
    move-result v4

    #@19
    .line 758
    .local v4, "lineStart":I
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineEnd(I)I

    #@1c
    move-result v3

    #@1d
    .line 759
    .local v3, "lineEnd":I
    if-eq p1, v4, :cond_2

    #@1f
    if-ne p1, v3, :cond_6

    #@21
    .line 760
    :cond_2
    invoke-virtual {p0, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@24
    move-result v10

    #@25
    if-ne v10, v9, :cond_4

    #@27
    const/4 v5, 0x0

    #@28
    .line 761
    .local v5, "paraLevel":I
    :goto_0
    if-ne p1, v4, :cond_5

    #@2a
    move v6, v8

    #@2b
    .line 762
    .local v6, "runIndex":I
    :goto_1
    add-int/lit8 v10, v6, 0x1

    #@2d
    aget v10, v7, v10

    #@2f
    ushr-int/lit8 v10, v10, 0x1a

    #@31
    and-int/lit8 v10, v10, 0x3f

    #@33
    if-eq v10, v5, :cond_3

    #@35
    move v8, v9

    #@36
    :cond_3
    return v8

    #@37
    .line 760
    .end local v5    # "paraLevel":I
    .end local v6    # "runIndex":I
    :cond_4
    const/4 v5, 0x1

    #@38
    .restart local v5    # "paraLevel":I
    goto :goto_0

    #@39
    .line 761
    :cond_5
    array-length v10, v7

    #@3a
    add-int/lit8 v6, v10, -0x2

    #@3c
    goto :goto_1

    #@3d
    .line 765
    .end local v5    # "paraLevel":I
    :cond_6
    sub-int/2addr p1, v4

    #@3e
    .line 766
    const/4 v1, 0x0

    #@3f
    .local v1, "i":I
    :goto_2
    array-length v10, v7

    #@40
    if-ge v1, v10, :cond_8

    #@42
    .line 767
    aget v10, v7, v1

    #@44
    if-ne p1, v10, :cond_7

    #@46
    .line 768
    return v9

    #@47
    .line 766
    :cond_7
    add-int/lit8 v1, v1, 0x2

    #@49
    goto :goto_2

    #@4a
    .line 771
    :cond_8
    return v8
.end method

.method public isRtlCharAt(I)Z
    .locals 12
    .param p1, "offset"    # I

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 780
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    #@5
    move-result v4

    #@6
    .line 781
    .local v4, "line":I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineDirections(I)Landroid/text/Layout$Directions;

    #@9
    move-result-object v0

    #@a
    .line 782
    .local v0, "dirs":Landroid/text/Layout$Directions;
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_LEFT_TO_RIGHT:Landroid/text/Layout$Directions;

    #@c
    if-ne v0, v10, :cond_0

    #@e
    .line 783
    return v9

    #@f
    .line 785
    :cond_0
    sget-object v10, Landroid/text/Layout;->DIRS_ALL_RIGHT_TO_LEFT:Landroid/text/Layout$Directions;

    #@11
    if-ne v0, v10, :cond_1

    #@13
    .line 786
    return v8

    #@14
    .line 788
    :cond_1
    iget-object v6, v0, Landroid/text/Layout$Directions;->mDirections:[I

    #@16
    .line 789
    .local v6, "runs":[I
    invoke-virtual {p0, v4}, Landroid/text/Layout;->getLineStart(I)I

    #@19
    move-result v5

    #@1a
    .line 790
    .local v5, "lineStart":I
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    array-length v10, v6

    #@1c
    if-ge v1, v10, :cond_4

    #@1e
    .line 791
    aget v10, v6, v1

    #@20
    add-int v7, v5, v10

    #@22
    .line 792
    .local v7, "start":I
    add-int/lit8 v10, v1, 0x1

    #@24
    aget v10, v6, v10

    #@26
    const v11, 0x3ffffff

    #@29
    and-int/2addr v10, v11

    #@2a
    add-int v3, v7, v10

    #@2c
    .line 793
    .local v3, "limit":I
    if-lt p1, v7, :cond_3

    #@2e
    if-ge p1, v3, :cond_3

    #@30
    .line 794
    add-int/lit8 v10, v1, 0x1

    #@32
    aget v10, v6, v10

    #@34
    ushr-int/lit8 v10, v10, 0x1a

    #@36
    and-int/lit8 v2, v10, 0x3f

    #@38
    .line 795
    .local v2, "level":I
    and-int/lit8 v10, v2, 0x1

    #@3a
    if-eqz v10, :cond_2

    #@3c
    :goto_1
    return v8

    #@3d
    :cond_2
    move v8, v9

    #@3e
    goto :goto_1

    #@3f
    .line 790
    .end local v2    # "level":I
    :cond_3
    add-int/lit8 v1, v1, 0x2

    #@41
    goto :goto_0

    #@42
    .line 799
    .end local v3    # "limit":I
    .end local v7    # "start":I
    :cond_4
    return v9
.end method

.method protected final isSpanned()Z
    .locals 1

    #@0
    .prologue
    .line 1840
    iget-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    #@2
    return v0
.end method

.method replaceWith(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FF)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "paint"    # Landroid/text/TextPaint;
    .param p3, "width"    # I
    .param p4, "align"    # Landroid/text/Layout$Alignment;
    .param p5, "spacingmult"    # F
    .param p6, "spacingadd"    # F

    #@0
    .prologue
    .line 209
    if-gez p3, :cond_0

    #@2
    .line 210
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Layout: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    const-string/jumbo v2, " < 0"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1e
    move-result-object v1

    #@1f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@22
    throw v0

    #@23
    .line 213
    :cond_0
    iput-object p1, p0, Landroid/text/Layout;->mText:Ljava/lang/CharSequence;

    #@25
    .line 214
    iput-object p2, p0, Landroid/text/Layout;->mPaint:Landroid/text/TextPaint;

    #@27
    .line 215
    iput p3, p0, Landroid/text/Layout;->mWidth:I

    #@29
    .line 216
    iput-object p4, p0, Landroid/text/Layout;->mAlignment:Landroid/text/Layout$Alignment;

    #@2b
    .line 217
    iput p5, p0, Landroid/text/Layout;->mSpacingMult:F

    #@2d
    .line 218
    iput p6, p0, Landroid/text/Layout;->mSpacingAdd:F

    #@2f
    .line 219
    instance-of v0, p1, Landroid/text/Spanned;

    #@31
    iput-boolean v0, p0, Landroid/text/Layout;->mSpannedText:Z

    #@33
    .line 208
    return-void
.end method

.method public shouldClampCursor(I)Z
    .locals 4
    .param p1, "line"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1408
    invoke-static {}, Landroid/text/Layout;->-getandroid-text-Layout$AlignmentSwitchesValues()[I

    #@5
    move-result-object v2

    #@6
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    #@9
    move-result-object v3

    #@a
    invoke-virtual {v3}, Landroid/text/Layout$Alignment;->ordinal()I

    #@d
    move-result v3

    #@e
    aget v2, v2, v3

    #@10
    packed-switch v2, :pswitch_data_0

    #@13
    .line 1414
    return v1

    #@14
    .line 1410
    :pswitch_0
    return v0

    #@15
    .line 1412
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    #@18
    move-result v2

    #@19
    if-lez v2, :cond_0

    #@1b
    :goto_0
    return v0

    #@1c
    :cond_0
    move v0, v1

    #@1d
    goto :goto_0

    #@1e
    .line 1408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
