.class public final Landroid/support/v4/text/BidiFormatter;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/BidiFormatter$Builder;,
        Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;
    }
.end annotation


# static fields
.field private static final DEFAULT_FLAGS:I = 0x2

.field private static final DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static final DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

.field private static DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat; = null

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
.field private final mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

.field private final mFlags:I

.field private final mIsRtlContext:Z


# direct methods
.method static synthetic -get0()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    #@2
    return-object v0
.end method

.method static synthetic -get2()Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .locals 1

    #@0
    sget-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Ljava/util/Locale;)Z
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    invoke-static {p0}, Landroid/support/v4/text/BidiFormatter;->isRtlLocale(Ljava/util/Locale;)Z

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
    .line 83
    sget-object v0, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->FIRSTSTRONG_LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@3
    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@5
    .line 113
    const/16 v0, 0x200e

    #@7
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    sput-object v0, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@d
    .line 118
    const/16 v0, 0x200f

    #@f
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    sput-object v0, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@15
    .line 215
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    #@17
    .line 218
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@19
    .line 216
    const/4 v2, 0x0

    #@1a
    .line 215
    invoke-direct {v0, v2, v3, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    #@1d
    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_LTR_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    #@1f
    .line 220
    new-instance v0, Landroid/support/v4/text/BidiFormatter;

    #@21
    .line 223
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->DEFAULT_TEXT_DIRECTION_HEURISTIC:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@23
    .line 221
    const/4 v2, 0x1

    #@24
    .line 220
    invoke-direct {v0, v2, v3, v1}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    #@27
    sput-object v0, Landroid/support/v4/text/BidiFormatter;->DEFAULT_RTL_INSTANCE:Landroid/support/v4/text/BidiFormatter;

    #@29
    .line 78
    return-void
.end method

.method private constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V
    .locals 0
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@0
    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 261
    iput-boolean p1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@5
    .line 262
    iput p2, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

    #@7
    .line 263
    iput-object p3, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@9
    .line 260
    return-void
.end method

.method synthetic constructor <init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;Landroid/support/v4/text/BidiFormatter;)V
    .locals 0
    .param p1, "isRtlContext"    # Z
    .param p2, "flags"    # I
    .param p3, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/text/BidiFormatter;-><init>(ZILandroid/support/v4/text/TextDirectionHeuristicCompat;)V

    #@3
    return-void
.end method

.method private static getEntryDir(Ljava/lang/String;)I
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 482
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    #@6
    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getEntryDir()I

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
    .line 465
    new-instance v0, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, p0, v1}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;-><init>(Ljava/lang/String;Z)V

    #@6
    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$DirectionalityEstimator;->getExitDir()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public static getInstance()Landroid/support/v4/text/BidiFormatter;
    .locals 1

    #@0
    .prologue
    .line 234
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>()V

    #@5
    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/support/v4/text/BidiFormatter;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 252
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Ljava/util/Locale;)V

    #@5
    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Z)Landroid/support/v4/text/BidiFormatter;
    .locals 1
    .param p0, "rtlContext"    # Z

    #@0
    .prologue
    .line 243
    new-instance v0, Landroid/support/v4/text/BidiFormatter$Builder;

    #@2
    invoke-direct {v0, p0}, Landroid/support/v4/text/BidiFormatter$Builder;-><init>(Z)V

    #@5
    invoke-virtual {v0}, Landroid/support/v4/text/BidiFormatter$Builder;->build()Landroid/support/v4/text/BidiFormatter;

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
    .line 440
    invoke-static {p0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

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

.method private markAfter(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@0
    .prologue
    .line 297
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p2, p1, v2, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result v0

    #@9
    .line 299
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 300
    :cond_0
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 302
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getExitDir(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_3

    #@26
    .line 303
    :cond_2
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 305
    :cond_3
    const-string/jumbo v1, ""

    #@2c
    return-object v1
.end method

.method private markBefore(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@0
    .prologue
    .line 324
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@3
    move-result v1

    #@4
    const/4 v2, 0x0

    #@5
    invoke-interface {p2, p1, v2, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@8
    move-result v0

    #@9
    .line 326
    .local v0, "isRtl":Z
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@b
    if-nez v1, :cond_1

    #@d
    if-nez v0, :cond_0

    #@f
    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    const/4 v2, 0x1

    #@14
    if-ne v1, v2, :cond_1

    #@16
    .line 327
    :cond_0
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->LRM_STRING:Ljava/lang/String;

    #@18
    return-object v1

    #@19
    .line 329
    :cond_1
    iget-boolean v1, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@1b
    if-eqz v1, :cond_3

    #@1d
    if-eqz v0, :cond_2

    #@1f
    invoke-static {p1}, Landroid/support/v4/text/BidiFormatter;->getEntryDir(Ljava/lang/String;)I

    #@22
    move-result v1

    #@23
    const/4 v2, -0x1

    #@24
    if-ne v1, v2, :cond_3

    #@26
    .line 330
    :cond_2
    sget-object v1, Landroid/support/v4/text/BidiFormatter;->RLM_STRING:Ljava/lang/String;

    #@28
    return-object v1

    #@29
    .line 332
    :cond_3
    const-string/jumbo v1, ""

    #@2c
    return-object v1
.end method


# virtual methods
.method public getStereoReset()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 278
    iget v1, p0, Landroid/support/v4/text/BidiFormatter;->mFlags:I

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
    .line 343
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@5
    move-result v1

    #@6
    const/4 v2, 0x0

    #@7
    invoke-interface {v0, p1, v2, v1}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@a
    move-result v0

    #@b
    return v0
.end method

.method public isRtlContext()Z
    .locals 1

    #@0
    .prologue
    .line 270
    iget-boolean v0, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@2
    return v0
.end method

.method public unicodeWrap(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    #@0
    .prologue
    .line 430
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@2
    const/4 v1, 0x1

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@0
    .prologue
    .line 406
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "heuristic"    # Landroid/support/v4/text/TextDirectionHeuristicCompat;
    .param p3, "isolate"    # Z

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 376
    if-nez p1, :cond_0

    #@3
    return-object v2

    #@4
    .line 377
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    const/4 v3, 0x0

    #@9
    invoke-interface {p2, p1, v3, v2}, Landroid/support/v4/text/TextDirectionHeuristicCompat;->isRtl(Ljava/lang/CharSequence;II)Z

    #@c
    move-result v0

    #@d
    .line 378
    .local v0, "isRtl":Z
    new-instance v1, Ljava/lang/StringBuilder;

    #@f
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@12
    .line 379
    .local v1, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/support/v4/text/BidiFormatter;->getStereoReset()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_1

    #@18
    if-eqz p3, :cond_1

    #@1a
    .line 381
    if-eqz v0, :cond_3

    #@1c
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@1e
    .line 380
    :goto_0
    invoke-direct {p0, p1, v2}, Landroid/support/v4/text/BidiFormatter;->markBefore(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    .line 383
    :cond_1
    iget-boolean v2, p0, Landroid/support/v4/text/BidiFormatter;->mIsRtlContext:Z

    #@27
    if-eq v0, v2, :cond_5

    #@29
    .line 384
    if-eqz v0, :cond_4

    #@2b
    const/16 v2, 0x202b

    #@2d
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@30
    .line 385
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    .line 386
    const/16 v2, 0x202c

    #@35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@38
    .line 390
    :goto_2
    if-eqz p3, :cond_2

    #@3a
    .line 392
    if-eqz v0, :cond_6

    #@3c
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->RTL:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@3e
    .line 391
    :goto_3
    invoke-direct {p0, p1, v2}, Landroid/support/v4/text/BidiFormatter;->markAfter(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;)Ljava/lang/String;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 394
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    return-object v2

    #@4a
    .line 381
    :cond_3
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@4c
    goto :goto_0

    #@4d
    .line 384
    :cond_4
    const/16 v2, 0x202a

    #@4f
    goto :goto_1

    #@50
    .line 388
    :cond_5
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@53
    goto :goto_2

    #@54
    .line 392
    :cond_6
    sget-object v2, Landroid/support/v4/text/TextDirectionHeuristicsCompat;->LTR:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@56
    goto :goto_3
.end method

.method public unicodeWrap(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "isolate"    # Z

    #@0
    .prologue
    .line 419
    iget-object v0, p0, Landroid/support/v4/text/BidiFormatter;->mDefaultTextDirectionHeuristicCompat:Landroid/support/v4/text/TextDirectionHeuristicCompat;

    #@2
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v4/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/support/v4/text/TextDirectionHeuristicCompat;Z)Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
