.class public final Landroid/text/DynamicLayout$Builder;
.super Ljava/lang/Object;
.source "DynamicLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/DynamicLayout;
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
            "Landroid/text/DynamicLayout$Builder;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mAlignment:Landroid/text/Layout$Alignment;

.field private greylist-max-o mBase:Ljava/lang/CharSequence;

.field private greylist-max-o mBreakStrategy:I

.field private greylist-max-o mDisplay:Ljava/lang/CharSequence;

.field private greylist-max-o mEllipsize:Landroid/text/TextUtils$TruncateAt;

.field private greylist-max-o mEllipsizedWidth:I

.field private greylist-max-o mFallbackLineSpacing:Z

.field private final greylist-max-o mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

.field private greylist-max-o mHyphenationFrequency:I

.field private greylist-max-o mIncludePad:Z

.field private greylist-max-o mJustificationMode:I

.field private blacklist mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

.field private blacklist mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private greylist-max-o mPaint:Landroid/text/TextPaint;

.field private blacklist mShiftDrawingOffsetForStartOverhang:Z

.field private greylist-max-o mSpacingAdd:F

.field private greylist-max-o mSpacingMult:F

.field private greylist-max-o mTextDir:Landroid/text/TextDirectionHeuristic;

.field private blacklist mUseBoundsForWidth:Z

.field private greylist-max-o mWidth:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmAlignment(Landroid/text/DynamicLayout$Builder;)Landroid/text/Layout$Alignment;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBase(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmBreakStrategy(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDisplay(Landroid/text/DynamicLayout$Builder;)Ljava/lang/CharSequence;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsize(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextUtils$TruncateAt;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmEllipsizedWidth(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFallbackLineSpacing(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFontMetricsInt(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetricsInt;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHyphenationFrequency(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIncludePad(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmJustificationMode(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLineBreakConfig(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/text/LineBreakConfig;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinimumFontMetrics(Landroid/text/DynamicLayout$Builder;)Landroid/graphics/Paint$FontMetrics;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPaint(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextPaint;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShiftDrawingOffsetForStartOverhang(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingAdd(Landroid/text/DynamicLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSpacingMult(Landroid/text/DynamicLayout$Builder;)F
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTextDir(Landroid/text/DynamicLayout$Builder;)Landroid/text/TextDirectionHeuristic;
    .registers 1

    iget-object p0, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUseBoundsForWidth(Landroid/text/DynamicLayout$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/text/DynamicLayout$Builder;->mUseBoundsForWidth:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/text/DynamicLayout$Builder;)I
    .registers 1

    iget p0, p0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$smrecycle(Landroid/text/DynamicLayout$Builder;)V
    .registers 1

    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 426
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    sget-object v0, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 424
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mFontMetricsInt:Landroid/graphics/Paint$FontMetricsInt;

    .line 71
    return-void
.end method

.method public static whitelist obtain(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)Landroid/text/DynamicLayout$Builder;
    .registers 6
    .param p0, "base"    # Ljava/lang/CharSequence;
    .param p1, "paint"    # Landroid/text/TextPaint;
    .param p2, "width"    # I

    .line 79
    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/DynamicLayout$Builder;

    .line 80
    .local v0, "b":Landroid/text/DynamicLayout$Builder;
    if-nez v0, :cond_10

    .line 81
    new-instance v1, Landroid/text/DynamicLayout$Builder;

    invoke-direct {v1}, Landroid/text/DynamicLayout$Builder;-><init>()V

    move-object v0, v1

    .line 85
    :cond_10
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    .line 86
    iput-object p0, v0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 87
    iput-object p1, v0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 88
    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mWidth:I

    .line 89
    sget-object v1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 90
    sget-object v1, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 91
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    .line 92
    const/4 v1, 0x0

    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    .line 94
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    .line 95
    iput p2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    .line 96
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 97
    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    .line 98
    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    .line 99
    iput v1, v0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    .line 100
    sget-object v1, Landroid/graphics/text/LineBreakConfig;->NONE:Landroid/graphics/text/LineBreakConfig;

    iput-object v1, v0, Landroid/text/DynamicLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 101
    return-object v0
.end method

.method private static greylist-max-o recycle(Landroid/text/DynamicLayout$Builder;)V
    .registers 2
    .param p0, "b"    # Landroid/text/DynamicLayout$Builder;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mBase:Ljava/lang/CharSequence;

    .line 110
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 111
    iput-object v0, p0, Landroid/text/DynamicLayout$Builder;->mPaint:Landroid/text/TextPaint;

    .line 112
    sget-object v0, Landroid/text/DynamicLayout$Builder;->sPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/text/DynamicLayout;
    .registers 3

    .line 399
    new-instance v0, Landroid/text/DynamicLayout;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/DynamicLayout;-><init>(Landroid/text/DynamicLayout$Builder;Landroid/text/DynamicLayout-IA;)V

    .line 400
    .local v0, "result":Landroid/text/DynamicLayout;
    invoke-static {p0}, Landroid/text/DynamicLayout$Builder;->recycle(Landroid/text/DynamicLayout$Builder;)V

    .line 401
    return-object v0
.end method

.method public whitelist setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "alignment"    # Landroid/text/Layout$Alignment;

    .line 137
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mAlignment:Landroid/text/Layout$Alignment;

    .line 138
    return-object p0
.end method

.method public whitelist setBreakStrategy(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "breakStrategy"    # I

    .line 246
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mBreakStrategy:I

    .line 247
    return-object p0
.end method

.method public whitelist setDisplayText(Ljava/lang/CharSequence;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "display"    # Ljava/lang/CharSequence;

    .line 125
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mDisplay:Ljava/lang/CharSequence;

    .line 126
    return-object p0
.end method

.method public whitelist setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "ellipsize"    # Landroid/text/TextUtils$TruncateAt;

    .line 232
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsize:Landroid/text/TextUtils$TruncateAt;

    .line 233
    return-object p0
.end method

.method public whitelist setEllipsizedWidth(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "ellipsizedWidth"    # I

    .line 216
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mEllipsizedWidth:I

    .line 217
    return-object p0
.end method

.method public whitelist setHyphenationFrequency(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "hyphenationFrequency"    # I

    .line 262
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mHyphenationFrequency:I

    .line 263
    return-object p0
.end method

.method public whitelist setIncludePad(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "includePad"    # Z

    .line 183
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mIncludePad:Z

    .line 184
    return-object p0
.end method

.method public whitelist setJustificationMode(I)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "justificationMode"    # I

    .line 276
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mJustificationMode:I

    .line 277
    return-object p0
.end method

.method public whitelist setLineBreakConfig(Landroid/graphics/text/LineBreakConfig;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "lineBreakConfig"    # Landroid/graphics/text/LineBreakConfig;

    .line 293
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mLineBreakConfig:Landroid/graphics/text/LineBreakConfig;

    .line 294
    return-object p0
.end method

.method public whitelist setLineSpacing(FF)Landroid/text/DynamicLayout$Builder;
    .registers 3
    .param p1, "spacingAdd"    # F
    .param p2, "spacingMult"    # F

    .line 167
    iput p1, p0, Landroid/text/DynamicLayout$Builder;->mSpacingAdd:F

    .line 168
    iput p2, p0, Landroid/text/DynamicLayout$Builder;->mSpacingMult:F

    .line 169
    return-object p0
.end method

.method public whitelist setMinimumFontMetrics(Landroid/graphics/Paint$FontMetrics;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "minimumFontMetrics"    # Landroid/graphics/Paint$FontMetrics;

    .line 384
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mMinimumFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 385
    return-object p0
.end method

.method public whitelist setShiftDrawingOffsetForStartOverhang(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "shiftDrawingOffsetForStartOverhang"    # Z

    .line 347
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mShiftDrawingOffsetForStartOverhang:Z

    .line 348
    return-object p0
.end method

.method public whitelist setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "textDir"    # Landroid/text/TextDirectionHeuristic;

    .line 151
    iput-object p1, p0, Landroid/text/DynamicLayout$Builder;->mTextDir:Landroid/text/TextDirectionHeuristic;

    .line 152
    return-object p0
.end method

.method public whitelist setUseBoundsForWidth(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "useBoundsForWidth"    # Z

    .line 318
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mUseBoundsForWidth:Z

    .line 319
    return-object p0
.end method

.method public whitelist setUseLineSpacingFromFallbacks(Z)Landroid/text/DynamicLayout$Builder;
    .registers 2
    .param p1, "useLineSpacingFromFallbacks"    # Z

    .line 202
    iput-boolean p1, p0, Landroid/text/DynamicLayout$Builder;->mFallbackLineSpacing:Z

    .line 203
    return-object p0
.end method
