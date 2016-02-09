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
.method static synthetic -get0()Landroid/text/BidiFormatter;
    .locals 1

    #@0
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/text/BidiFormatter;
    .locals 1

    #@0
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/text/TextDirectionHeuristic;
    .locals 1

    #@0
    sget-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Locale;)Z
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
    .line 87
    sget-object v0, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    #@3
    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@5
    .line 117
    const/16 v0, 0x200e

    #@7
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@d
    .line 122
    const/16 v0, 0x200f

    #@f
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@15
    .line 219
    new-instance v0, Landroid/text/BidiFormatter;

    #@17
    .line 222
    sget-object v1, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@19
    .line 220
    const/4 v2, 0x0

    #@1a
    .line 219
    invoke-direct {v0, v2, v3, v1}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    #@1d
    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/text/BidiFormatter;

    #@1f
    .line 224
    new-instance v0, Landroid/text/BidiFormatter;

    #@21
    .line 227
    sget-object v1, Landroid/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/text/TextDirectionHeuristic;

    #@23
    .line 225
    const/4 v2, 0x1

    #@24
    .line 224
    invoke-direct {v0, v2, v3, v1}, Landroid/text/BidiFormatter;-><init>(ZILandroid/text/TextDirectionHeuristic;)V

    #@27
    sput-object v0, Landroid/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/text/BidiFormatter;

    #@29
    .line 82
    return-void
.end method

.method private constructor <init>(ZILandroid/text/TextDirectionHeuristic;)V
    .locals 0
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 265
    iput-boolean p1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@5
    .line 266
    iput p2, p0, Landroid/text/BidiFormatter;->mFlags:I

    #@7
    .line 267
    iput-object p3, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@9
    .line 264
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

.method private static getEntryDir(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 492
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    #@6
    invoke-virtual {v0}, Landroid/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method private static getExitDir(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 475
    new-instance v0, Landroid/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

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
    .line 238
    new-instance v0, Landroid/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0}, Landroid/text/BidiFormatter$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Landroid/text/BidiFormatter$Builder;->build()Landroid/text/BidiFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 256
    new-instance v0, Landroid/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    #@5
    invoke-virtual {v0}, Landroid/text/BidiFormatter$Builder;->build()Landroid/text/BidiFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Z)Landroid/text/BidiFormatter;
    .locals 1
    .param p0, "rtlContext"    # Z

    #@0
    .prologue
    .line 247
    new-instance v0, Landroid/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/text/BidiFormatter$Builder;-><init>(Z)V

    #@5
    invoke-virtual {v0}, Landroid/text/BidiFormatter$Builder;->build()Landroid/text/BidiFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static isRtlLocale(Ljava/util/Locale;)Z
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 450
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
    .line 282
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

.method public isRtl(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 351
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

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

.method public isRtlContext()Z
    .locals 1

    #@0
    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@2
    return v0
.end method

.method public markAfter(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 303
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p2, p1, v2, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result v0

    #@9
    .line 305
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 306
    :cond_0
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 308
    :cond_1
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_3

    #@26
    .line 309
    :cond_2
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 311
    :cond_3
    const-string/jumbo v1, ""

    #@2c
    return-object v1
.end method

.method public markBefore(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;

    #@0
    .prologue
    .line 332
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p2, p1, v2, v1}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result v0

    #@9
    .line 334
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 335
    :cond_0
    sget-object v1, Landroid/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 337
    :cond_1
    iget-boolean v1, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-static {p1}, Landroid/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_3

    #@26
    .line 338
    :cond_2
    sget-object v1, Landroid/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 340
    :cond_3
    const-string/jumbo v1, ""

    #@2c
    return-object v1
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 440
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
    .line 416
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/text/TextDirectionHeuristic;
    .param p3, "isolate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 385
    if-nez p1, :cond_0

    #@3
    return-object v2

    #@4
    .line 386
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {p2, p1, v3, v2}, Landroid/text/TextDirectionHeuristic;->isRtl(Ljava/lang/CharSequence;II)Z

    #@c
    move-result v0

    #@d
    .line 387
    .local v0, "isRtl":Z
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    .line 388
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/text/BidiFormatter;->getStereoReset()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    if-eqz p3, :cond_1

    #@1a
    .line 390
    if-eqz v0, :cond_3

    #@1c
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@1e
    .line 389
    :goto_0
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markBefore(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 392
    :cond_1
    iget-boolean v2, p0, Landroid/text/BidiFormatter;->mIsRtlContext:Z

    #@27
    if-eq v0, v2, :cond_5

    #@29
    .line 393
    if-eqz v0, :cond_4

    #@2b
    const/16 v2, 0x202b

    #@2d
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 394
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 395
    const/16 v2, 0x202c

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 399
    :goto_2
    if-eqz p3, :cond_2

    #@3a
    .line 401
    if-eqz v0, :cond_6

    #@3c
    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    #@3e
    .line 400
    :goto_3
    invoke-virtual {p0, p1, v2}, Landroid/text/BidiFormatter;->markAfter(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 403
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    return-object v2

    #@4a
    .line 390
    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@4c
    goto :goto_0

    #@4d
    .line 393
    :cond_4
    const/16 v2, 0x202a

    #@4f
    goto :goto_1

    #@50
    .line 397
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_2

    #@54
    .line 401
    :cond_6
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    #@56
    goto :goto_3
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    #@0
    .prologue
    .line 429
    iget-object v0, p0, Landroid/text/BidiFormatter;->mDefaultTextDirectionHeuristic:Landroid/text/TextDirectionHeuristic;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
