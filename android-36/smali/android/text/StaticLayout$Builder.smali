.class public final Landroid/text/StaticLayout$Builder;
.super Ljava/lang/Object;
.source "StaticLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/StaticLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final greylist-max-o sPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Landroid/text/StaticLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAddLastLineLineSpacing:Z

.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private greylist-max-o mBreakStrategy:I

.field private blacklist mCalculateBounds:Z

.field private greylist-max-o mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mEnd:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private final greylist-max-o mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private greylist-max-o mLeftIndents:[I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private greylist-max-o mMaxLines:I

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private greylist-max-o mRightIndents:[I

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private greylist-max-o mStart:I

.field private greylist-max-o mText:Ljava/lang/CharSequence;

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAddLastLineLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmAlignment(Landroid/text/StaticLayout$Builder;)Landroid/text/Layout$Alignment;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBreakStrategy(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCalculateBounds(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mCalculateBounds:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsize(Landroid/text/StaticLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsizedWidth(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEnd(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackLineSpacing(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFontMetricsInt(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHyphenationFrequency(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludePad(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJustificationMode(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLeftIndents(Landroid/text/StaticLayout$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakConfig(Landroid/text/StaticLayout$Builder;)Landroid/graphics/text/LineBreakConfig;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMaxLines(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumFontMetrics(Landroid/text/StaticLayout$Builder;)Landroid/graphics/Paint$FontMetrics;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaint(Landroid/text/StaticLayout$Builder;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRightIndents(Landroid/text/StaticLayout$Builder;)[I
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingAdd(Landroid/text/StaticLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingMult(Landroid/text/StaticLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmStart(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmText(Landroid/text/StaticLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextDir(Landroid/text/StaticLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .registers 1

    iget-object p0, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseBoundsForWidth(Landroid/text/StaticLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/StaticLayout$Builder;->mUseBoundsForWidth:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/text/StaticLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 609
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 607
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 85
    return-void
.end method

.method public static whitelist obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;
    .registers 9
    .param p0, "source"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "paint"    # Landroid/text/TextPaint;
    .param p4, "width"    # I

    .line 101
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout$Builder;

    .line 102
    .local v0, "b":Landroid/text/StaticLayout$Builder;
    if-nez v0, :cond_10

    .line 103
    new-instance v1, Landroid/text/StaticLayout$Builder;

    invoke-direct {v1}, Landroid/text/StaticLayout$Builder;-><init>()V

    move-object v0, v1

    .line 107
    :cond_10
    iput-object p0, v0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 108
    iput p1, v0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 109
    iput p2, v0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 110
    iput-object p3, v0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 111
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 112
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 113
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 114
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 115
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 116
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 117
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    .line 118
    iput p4, v0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 119
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 120
    const v3, 0x7fffffff

    iput v3, v0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 121
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 122
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 123
    iput v1, v0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 124
    sget-object v3, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v3, v0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 125
    iput-boolean v1, v0, Landroid/text/StaticLayout$Builder;->mUseBoundsForWidth:Z

    .line 126
    iput-object v2, v0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 127
    return-object v0
.end method

.method private static greylist-max-o recycle(Landroid/text/StaticLayout$Builder;)V
    .registers 2
    .param p0, "b"    # Landroid/text/StaticLayout$Builder;

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 136
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 137
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 138
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 139
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 140
    sget-object v0, Landroid/text/StaticLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 141
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/StaticLayout;
    .registers 5

    .line 549
    new-instance v0, Landroid/text/StaticLayout;

    iget-boolean v1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    iget-object v2, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_a

    .line 550
    const/4 v2, 0x7

    goto :goto_b

    :cond_a
    const/4 v2, 0x5

    :goto_b
    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout$Builder;ZILandroid/text/StaticLayout-IA;)V

    .line 551
    .local v0, "result":Landroid/text/StaticLayout;
    invoke-static {p0}, Landroid/text/StaticLayout$Builder;->recycle(Landroid/text/StaticLayout$Builder;)V

    .line 552
    return-object v0
.end method

.method blacklist buildPartialStaticLayoutForDynamicLayout(ZLandroid/text/StaticLayout;)Landroid/text/StaticLayout;
    .registers 5
    .param p1, "trackpadding"    # Z
    .param p2, "recycle"    # Landroid/text/StaticLayout;

    .line 569
    if-nez p2, :cond_9

    .line 570
    new-instance v0, Landroid/text/StaticLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/text/StaticLayout;-><init>(Landroid/text/StaticLayout-IA;)V

    move-object p2, v0

    .line 572
    :cond_9
    const-string v0, "Generating StaticLayout For DynamicLayout"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 574
    :try_start_e
    iget-boolean v0, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    invoke-virtual {p2, p0, v0, p1}, Landroid/text/StaticLayout;->generate(Landroid/text/StaticLayout$Builder;ZZ)V
    :try_end_13
    .catchall {:try_start_e .. :try_end_13} :catchall_18

    .line 576
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 577
    nop

    .line 578
    return-object p2

    .line 576
    :catchall_18
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 577
    throw v0
.end method

.method greylist-max-o finish()V
    .registers 2

    .line 145
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 146
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 147
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 148
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 149
    iput-object v0, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 150
    return-void
.end method

.method greylist-max-o setAddLastLineLineSpacing(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 416
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mAddLastLineLineSpacing:Z

    .line 417
    return-object p0
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 215
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 216
    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "breakStrategy"    # I

    .line 348
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mBreakStrategy:I

    .line 349
    return-object p0
.end method

.method public blacklist setCalculateBounds(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "value"    # Z

    .line 497
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mCalculateBounds:Z

    .line 498
    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 312
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 313
    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "ellipsizedWidth"    # I

    .line 295
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 296
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .line 371
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mHyphenationFrequency:I

    .line 372
    return-object p0
.end method

.method public whitelist setIncludePad(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "includePad"    # Z

    .line 261
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mIncludePad:Z

    .line 262
    return-object p0
.end method

.method public whitelist setIndents([I[I)Landroid/text/StaticLayout$Builder;
    .registers 3
    .param p1, "leftIndents"    # [I
    .param p2, "rightIndents"    # [I

    .line 385
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLeftIndents:[I

    .line 386
    iput-object p2, p0, Landroid/text/StaticLayout$Builder;->mRightIndents:[I

    .line 387
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "justificationMode"    # I

    .line 404
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mJustificationMode:I

    .line 405
    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 432
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 433
    return-object p0
.end method

.method public whitelist setLineSpacing(FF)Landroid/text/StaticLayout$Builder;
    .registers 3
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .line 245
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mSpacingAdd:F

    .line 246
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mSpacingMult:F

    .line 247
    return-object p0
.end method

.method public whitelist setMaxLines(I)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "maxLines"    # I

    .line 327
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mMaxLines:I

    .line 328
    return-object p0
.end method

.method public whitelist setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 534
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 535
    return-object p0
.end method

.method public greylist-max-o setPaint(Landroid/text/TextPaint;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .line 186
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 187
    return-object p0
.end method

.method public whitelist setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "shiftDrawingOffsetForStartOverhang"    # Z

    .line 486
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    .line 487
    return-object p0
.end method

.method public whitelist setText(Ljava/lang/CharSequence;)Landroid/text/StaticLayout$Builder;
    .registers 4
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 153
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/StaticLayout$Builder;->setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o setText(Ljava/lang/CharSequence;II)Landroid/text/StaticLayout$Builder;
    .registers 4
    .param p1, "source"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 170
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mText:Ljava/lang/CharSequence;

    .line 171
    iput p2, p0, Landroid/text/StaticLayout$Builder;->mStart:I

    .line 172
    iput p3, p0, Landroid/text/StaticLayout$Builder;->mEnd:I

    .line 173
    return-object p0
.end method

.method public whitelist setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 229
    iput-object p1, p0, Landroid/text/StaticLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 230
    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "useBoundsForWidth"    # Z

    .line 457
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mUseBoundsForWidth:Z

    .line 458
    return-object p0
.end method

.method public whitelist setUseLineSpacingFromFallbacks(Z)Landroid/text/StaticLayout$Builder;
    .registers 2
    .param p1, "useLineSpacingFromFallbacks"    # Z

    .line 280
    iput-boolean p1, p0, Landroid/text/StaticLayout$Builder;->mFallbackLineSpacing:Z

    .line 281
    return-object p0
.end method

.method public greylist-max-o setWidth(I)Landroid/text/StaticLayout$Builder;
    .registers 3
    .param p1, "width"    # I

    .line 200
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mWidth:I

    .line 201
    iget-object v0, p0, Landroid/text/StaticLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    if-nez v0, :cond_8

    .line 202
    iput p1, p0, Landroid/text/StaticLayout$Builder;->mEllipsizedWidth:I

    .line 204
    :cond_8
    return-object p0
.end method
