.class public final Landroid/icu/text/ScientificNumberFormatter;
.super Ljava/lang/Object;
.source "ScientificNumberFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/ScientificNumberFormatter$Style;,
        Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;,
        Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;
    }
.end annotation


# static fields
.field private static final SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;


# instance fields
.field private final fmt:Landroid/icu/text/DecimalFormat;

.field private final preExponent:Ljava/lang/String;

.field private final style:Landroid/icu/text/ScientificNumberFormatter$Style;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 329
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>(Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;)V

    #@6
    sput-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    #@8
    .line 36
    return-void
.end method

.method private constructor <init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V
    .locals 0
    .param p1, "decimalFormat"    # Landroid/icu/text/DecimalFormat;
    .param p2, "preExponent"    # Ljava/lang/String;
    .param p3, "style"    # Landroid/icu/text/ScientificNumberFormatter$Style;

    #@0
    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 333
    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    #@5
    .line 334
    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    #@7
    .line 335
    iput-object p3, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    #@9
    .line 332
    return-void
.end method

.method private static getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 4
    .param p0, "decimalFormat"    # Landroid/icu/text/DecimalFormat;
    .param p1, "style"    # Landroid/icu/text/ScientificNumberFormatter$Style;

    #@0
    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@3
    move-result-object v0

    #@4
    .line 315
    .local v0, "dfs":Landroid/icu/text/DecimalFormatSymbols;
    new-instance v2, Landroid/icu/text/ScientificNumberFormatter;

    #@6
    .line 316
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    #@9
    move-result-object v1

    #@a
    check-cast v1, Landroid/icu/text/DecimalFormat;

    #@c
    invoke-static {v0}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    #@f
    move-result-object v3

    #@10
    .line 315
    invoke-direct {v2, v1, v3, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    #@13
    return-object v2
.end method

.method private static getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/ScientificNumberFormatter$Style;

    #@0
    .prologue
    .line 322
    invoke-static {p0}, Landroid/icu/text/DecimalFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/icu/text/DecimalFormat;

    #@6
    .line 323
    .local v0, "decimalFormat":Landroid/icu/text/DecimalFormat;
    new-instance v1, Landroid/icu/text/ScientificNumberFormatter;

    #@8
    .line 325
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    #@b
    move-result-object v2

    #@c
    invoke-static {v2}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    .line 323
    invoke-direct {v1, v0, v2, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    #@13
    return-object v1
.end method

.method public static getMarkupInstance(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1
    .param p0, "df"    # Landroid/icu/text/DecimalFormat;
    .param p1, "beginMarkup"    # Ljava/lang/String;
    .param p2, "endMarkup"    # Ljava/lang/String;

    #@0
    .prologue
    .line 108
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 107
    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getMarkupInstance(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "beginMarkup"    # Ljava/lang/String;
    .param p2, "endMarkup"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    #@2
    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@5
    .line 86
    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .locals 4
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    #@0
    .prologue
    .line 305
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 306
    .local v1, "preExponent":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentMultiplicationSign()Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    .line 307
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    #@f
    move-result-object v0

    #@10
    .line 308
    .local v0, "digits":[C
    const/4 v2, 0x1

    #@11
    aget-char v2, v0, v2

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    const/4 v3, 0x0

    #@18
    aget-char v3, v0, v3

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1d
    .line 309
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@20
    move-result-object v2

    #@21
    return-object v2
.end method

.method public static getSuperscriptInstance(Landroid/icu/text/DecimalFormat;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1
    .param p0, "df"    # Landroid/icu/text/DecimalFormat;

    #@0
    .prologue
    .line 68
    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    #@2
    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public static getSuperscriptInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ScientificNumberFormatter;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 52
    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    #@2
    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .param p1, "number"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 121
    iget-object v1, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    #@2
    monitor-enter v1

    #@3
    .line 122
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    #@5
    .line 123
    iget-object v2, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    #@7
    invoke-virtual {v2, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    #@a
    move-result-object v2

    #@b
    .line 124
    iget-object v3, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    #@d
    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/icu/text/ScientificNumberFormatter$Style;->format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    move-result-object v0

    #@11
    monitor-exit v1

    #@12
    return-object v0

    #@13
    .line 121
    :catchall_0
    move-exception v0

    #@14
    monitor-exit v1

    #@15
    throw v0
.end method
