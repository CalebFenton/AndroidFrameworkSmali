.class public final Landroid/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BidiFormatter$Builder;,
        Landroid/text/BidiFormatter$DirectionalityEstimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic; = null

.field private static final DIR_LTR:I = -0x1

.field private static final DIR_RTL:I = 0x1

.field private static final DIR_UNKNOWN:I = 0x0

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final FLAG_STEREO_RESET:I = 0x2

.field private static final LRE:C = '\u202a'

.field private static final LRM:C = '\u200e'

.field private static final LRM_STRING:Ljava/lang/String;

.field private static final PDF:C = '\u202c'

.field private static final RLE:C = '\u202b'

.field private static final RLM:C = '\u200f'

.field private static final RLM_STRING:Ljava/lang/String;


# instance fields
.field private final mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static synthetic -get0()Landroid/text/TextDirectionHeuristic;
    .locals 1

    #@0
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Z)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "isRtlContext"    # Z

    #@0
    .prologue
    invoke-static {p0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 88
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@3
    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@5
    .line 118
    const/16 v0, 0x200e

    #@7
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@d
    .line 123
    const/16 v0, 0x200f

    #@f
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@15
    .line 216
    new-instance v0, Landroid/text/BidiFormatter;

    #@17
    .line 219
    sget-object v1, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@19
    .line 217
    const/4 v2, 0x0

    #@1a
    .line 216
    invoke-direct {v0, v2, v3, v1}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    #@1d
    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    #@1f
    .line 221
    new-instance v0, Landroid/text/BidiFormatter;

    #@21
    .line 224
    sget-object v1, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@23
    .line 222
    const/4 v2, 0x1

    #@24
    .line 221
    invoke-direct {v0, v2, v3, v1}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    #@27
    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    #@29
    .line 83
    return-void
.end method

.method private constructor <init>(ZILandroid/text/TextDirectionHeuristic;)V
    .locals 0
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 268
    iput-boolean p1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@5
    .line 269
    iput p2, p0, Landroid/text/BidiFormatter;->mFlags:I

    #@7
    .line 270
    iput-object p3, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@9
    .line 267
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter;)V
    .locals 0
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    #@3
    return-void
.end method

.method private static getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "isRtlContext"    # Z

    #@0
    .prologue
    .line 486
    if-eqz p0, :cond_0

    #@2
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    #@4
    :goto_0
    return-object v0

    #@5
    :cond_0
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    #@7
    goto :goto_0
.end method

.method private static getEntryDir(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 538
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    #@6
    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static getExitDir(Ljava/lang/CharSequence;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 521
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    #@6
    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static getInstance()Landroid/text/BidiFormatter;
    .locals 1

    #@0
    .prologue
    .line 237
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    #@7
    move-result v0

    #@8
    invoke-static {v0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 259
    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Z)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "rtlContext"    # Z

    #@0
    .prologue
    .line 248
    invoke-static {p0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 496
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    #@4
    move-result v1

    #@5
    if-ne v1, v0, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 285
    iget v1, p0, Landroid/text/BidiFormatter;->mFlags:I

    #@3
    and-int/lit8 v1, v1, 0x2

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isRtl(Ljava/lang/CharSequence;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 361
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v0, p1, v2, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isRtl(Ljava/lang/String;)Z
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 354
    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public isRtlContext()Z
    .locals 1

    #@0
    .prologue
    .line 277
    iget-boolean v0, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@2
    return v0
.end method

.method public markAfter(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 306
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p2, p1, v2, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result v0

    #@9
    .line 308
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 309
    :cond_0
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 311
    :cond_1
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_3

    #@26
    .line 312
    :cond_2
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 314
    :cond_3
    const-string/jumbo v1, ""

    #@2c
    return-object v1
.end method

.method public markBefore(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 335
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p2, p1, v2, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result v0

    #@9
    .line 337
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 338
    :cond_0
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 340
    :cond_1
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_3

    #@26
    .line 341
    :cond_2
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 343
    :cond_3
    const-string/jumbo v1, ""

    #@2c
    return-object v1
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "str"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 482
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 443
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;
    .locals 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 405
    if-nez p1, :cond_0

    #@3
    return-object v2

    #@4
    .line 406
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {p2, p1, v3, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@c
    move-result v0

    #@d
    .line 407
    .local v0, "isRtl":Z
    new-instance v1, Landroid/text/SpannableStringBuilder;

    #@f
    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    #@12
    .line 408
    .local v1, "result":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Landroid/text/BidiFormatter;->getStereoReset()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    if-eqz p3, :cond_1

    #@1a
    .line 410
    if-eqz v0, :cond_3

    #@1c
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@1e
    .line 409
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@25
    .line 412
    :cond_1
    iget-boolean v2, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@27
    if-eq v0, v2, :cond_5

    #@29
    .line 413
    if-eqz v0, :cond_4

    #@2b
    const/16 v2, 0x202b

    #@2d
    :goto_1
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    #@30
    .line 414
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@33
    .line 415
    const/16 v2, 0x202c

    #@35
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    #@38
    .line 419
    :goto_2
    if-eqz p3, :cond_2

    #@3a
    .line 421
    if-eqz v0, :cond_6

    #@3c
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@3e
    .line 420
    :goto_3
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@45
    .line 423
    :cond_2
    return-object v1

    #@46
    .line 410
    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@48
    goto :goto_0

    #@49
    .line 413
    :cond_4
    const/16 v2, 0x202a

    #@4b
    goto :goto_1

    #@4c
    .line 417
    :cond_5
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    #@4f
    goto :goto_2

    #@50
    .line 421
    :cond_6
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@52
    goto :goto_3
.end method

.method public unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "isolate"    # Z

    #@0
    .prologue
    .line 464
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 475
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 436
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 396
    if-nez p1, :cond_0

    #@3
    return-object v0

    #@4
    .line 397
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    #@7
    move-result-object v0

    #@8
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    #@0
    .prologue
    .line 457
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
