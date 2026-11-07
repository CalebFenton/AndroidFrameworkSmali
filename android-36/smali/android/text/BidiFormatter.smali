.class public final Landroid/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/BidiFormatter$DirectionalityEstimator;,
        Landroid/text/BidiFormatter$Builder;
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_FLAGS:I = 0x2

.field private static final greylist-max-o DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

.field private static final greylist-max-o DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

.field private static greylist-max-o DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic; = null

.field private static final greylist-max-o DIR_LTR:I = -0x1

.field private static final greylist-max-o DIR_RTL:I = 0x1

.field private static final greylist-max-o DIR_UNKNOWN:I = 0x0

.field private static final greylist-max-o EMPTY_STRING:Ljava/lang/String; = ""

.field private static final greylist-max-o FLAG_STEREO_RESET:I = 0x2

.field private static final greylist-max-o LRE:C = '\u202a'

.field private static final greylist-max-o LRM:C = '\u200e'

.field private static final greylist-max-o LRM_STRING:Ljava/lang/String;

.field private static final greylist-max-o PDF:C = '\u202c'

.field private static final greylist-max-o RLE:C = '\u202b'

.field private static final greylist-max-o RLM:C = '\u200f'

.field private static final greylist-max-o RLM_STRING:Ljava/lang/String;


# instance fields
.field private final greylist-max-o mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

.field private final greylist-max-o mFlags:I

.field private final greylist-max-o mIsRtlContext:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_TEXT_DIRECTION_HEURISTIC()Landroid/text/TextDirectionHeuristic;
    .registers 1

    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;
    .registers 1

    invoke-static {p0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smisRtlLocale(Ljava/util/Locale;)Z
    .registers 1

    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 91
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    .line 121
    const/16 v0, 0x200e

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    .line 126
    const/16 v0, 0x200f

    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    .line 219
    new-instance v0, Landroid/text/BidiFormatter;

    sget-object v1, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v2, v3, v1}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    .line 224
    new-instance v0, Landroid/text/BidiFormatter;

    const/4 v1, 0x1

    sget-object v2, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    invoke-direct {v0, v1, v3, v2}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    return-void
.end method

.method private constructor greylist-max-o <init>(ZILandroid/text/TextDirectionHeuristic;)V
    .registers 4
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-boolean p1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    .line 272
    iput p2, p0, Landroid/text/BidiFormatter;->mFlags:I

    .line 273
    iput-object p3, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    .line 274
    return-void
.end method

.method synthetic constructor blacklist <init>(ZILandroid/text/TextDirectionHeuristic;Landroid/text/BidiFormatter-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    return-void
.end method

.method private static greylist-max-o getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;
    .registers 2
    .param p0, "isRtlContext"    # Z

    .line 518
    if-eqz p0, :cond_5

    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    goto :goto_7

    :cond_5
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    :goto_7
    return-object v0
.end method

.method private static greylist-max-o getEntryDir(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 570
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    move-result v0

    return v0
.end method

.method private static greylist-max-o getExitDir(Ljava/lang/CharSequence;)I
    .registers 3
    .param p0, "str"    # Ljava/lang/CharSequence;

    .line 553
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    move-result v0

    return v0
.end method

.method public static whitelist getInstance()Landroid/text/BidiFormatter;
    .registers 1

    .line 240
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 262
    invoke-static {p0}, Landroid/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

    move-result v0

    invoke-static {v0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getInstance(Z)Landroid/text/BidiFormatter;
    .registers 2
    .param p0, "rtlContext"    # Z

    .line 251
    invoke-static {p0}, Landroid/text/BidiFormatter;->getDefaultInstanceFromContext(Z)Landroid/text/BidiFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o isRtlLocale(Ljava/util/Locale;)Z
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;

    .line 528
    invoke-static {p0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method


# virtual methods
.method public whitelist getStereoReset()Z
    .registers 2

    .line 288
    iget v0, p0, Landroid/text/BidiFormatter;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist isRtl(Ljava/lang/CharSequence;)Z
    .registers 5
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 368
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {v0, p1, v1, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    return v0
.end method

.method public whitelist isRtl(Ljava/lang/String;)Z
    .registers 3
    .param p1, "str"    # Ljava/lang/String;

    .line 357
    invoke-virtual {p0, p1}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public whitelist isRtlContext()Z
    .registers 2

    .line 280
    iget-boolean v0, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    return v0
.end method

.method public greylist-max-o markAfter(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 309
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 311
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 312
    :cond_16
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    return-object v1

    .line 314
    :cond_19
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 315
    :cond_26
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    return-object v1

    .line 317
    :cond_29
    const-string v1, ""

    return-object v1
.end method

.method public greylist-max-o markBefore(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .registers 6
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 338
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 340
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-nez v1, :cond_19

    if-nez v0, :cond_16

    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_19

    .line 341
    :cond_16
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    return-object v1

    .line 343
    :cond_19
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eqz v1, :cond_29

    if-eqz v0, :cond_26

    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_29

    .line 344
    :cond_26
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    return-object v1

    .line 346
    :cond_29
    const-string v1, ""

    return-object v1
.end method

.method public whitelist unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;

    .line 514
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 465
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    .line 421
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 422
    :cond_4
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    move-result v0

    .line 423
    .local v0, "isRtl":Z
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 424
    .local v1, "result":Landroid/text/SpannableStringBuilder;
    invoke-virtual {p0}, Landroid/text/BidiFormatter;->getStereoReset()Z

    move-result v2

    if-eqz v2, :cond_29

    if-eqz p3, :cond_29

    .line 425
    nop

    .line 426
    if-eqz v0, :cond_20

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_22

    :cond_20
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 425
    :goto_22
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markBefore(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 428
    :cond_29
    iget-boolean v2, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    if-eq v0, v2, :cond_40

    .line 429
    if-eqz v0, :cond_32

    const/16 v2, 0x202b

    goto :goto_34

    :cond_32
    const/16 v2, 0x202a

    :goto_34
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 430
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 431
    const/16 v2, 0x202c

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_43

    .line 433
    :cond_40
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 435
    :goto_43
    if-eqz p3, :cond_54

    .line 436
    nop

    .line 437
    if-eqz v0, :cond_4b

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_4d

    :cond_4b
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 436
    :goto_4d
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markAfter(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 439
    :cond_54
    return-object v1
.end method

.method public whitelist unicodeWrap(Ljava/lang/CharSequence;Z)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "str"    # Ljava/lang/CharSequence;
    .param p2, "isolate"    # Z

    .line 492
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .line 503
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    .line 452
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;
    .registers 5
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    .line 403
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 404
    :cond_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    .line 479
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
