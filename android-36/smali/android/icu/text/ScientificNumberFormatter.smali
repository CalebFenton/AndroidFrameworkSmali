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
.field private static final greylist-max-o SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;


# instance fields
.field private final greylist-max-o fmt:Landroid/icu/text/DecimalFormat;

.field private final greylist-max-o preExponent:Ljava/lang/String;

.field private final greylist-max-o style:Landroid/icu/text/ScientificNumberFormatter$Style;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 316
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/text/ScientificNumberFormatter$SuperscriptStyle;-><init>(Landroid/icu/text/ScientificNumberFormatter-IA;)V

    sput-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V
    .registers 4
    .param p1, "decimalFormat"    # Landroid/icu/text/DecimalFormat;
    .param p2, "preExponent"    # Ljava/lang/String;
    .param p3, "style"    # Landroid/icu/text/ScientificNumberFormatter$Style;

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    iput-object p1, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    .line 321
    iput-object p2, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    .line 323
    return-void
.end method

.method private static greylist-max-o getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .registers 6
    .param p0, "decimalFormat"    # Landroid/icu/text/DecimalFormat;
    .param p1, "style"    # Landroid/icu/text/ScientificNumberFormatter$Style;

    .line 301
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v0

    .line 302
    .local v0, "dfs":Landroid/icu/text/DecimalFormatSymbols;
    new-instance v1, Landroid/icu/text/ScientificNumberFormatter;

    .line 303
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormat;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/text/DecimalFormat;

    invoke-static {v0}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    .line 302
    return-object v1
.end method

.method private static greylist-max-o getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;
    .registers 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "style"    # Landroid/icu/text/ScientificNumberFormatter$Style;

    .line 308
    nop

    .line 309
    invoke-static {p0}, Landroid/icu/text/DecimalFormat;->getScientificInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DecimalFormat;

    .line 310
    .local v0, "decimalFormat":Landroid/icu/text/DecimalFormat;
    new-instance v1, Landroid/icu/text/ScientificNumberFormatter;

    .line 312
    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->getDecimalFormatSymbols()Landroid/icu/text/DecimalFormatSymbols;

    move-result-object v2

    invoke-static {v2}, Landroid/icu/text/ScientificNumberFormatter;->getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, p1}, Landroid/icu/text/ScientificNumberFormatter;-><init>(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Landroid/icu/text/ScientificNumberFormatter$Style;)V

    .line 310
    return-object v1
.end method

.method public static whitelist test-api getMarkupInstance(Landroid/icu/text/DecimalFormat;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .registers 4
    .param p0, "df"    # Landroid/icu/text/DecimalFormat;
    .param p1, "beginMarkup"    # Ljava/lang/String;
    .param p2, "endMarkup"    # Ljava/lang/String;

    .line 97
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getMarkupInstance(Landroid/icu/util/ULocale;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/ScientificNumberFormatter;
    .registers 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "beginMarkup"    # Ljava/lang/String;
    .param p2, "endMarkup"    # Ljava/lang/String;

    .line 79
    new-instance v0, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;

    invoke-direct {v0, p1, p2}, Landroid/icu/text/ScientificNumberFormatter$MarkupStyle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getPreExponent(Landroid/icu/text/DecimalFormatSymbols;)Ljava/lang/String;
    .registers 5
    .param p0, "dfs"    # Landroid/icu/text/DecimalFormatSymbols;

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 293
    .local v0, "preExponent":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getExponentMultiplicationSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    invoke-virtual {p0}, Landroid/icu/text/DecimalFormatSymbols;->getDigits()[C

    move-result-object v1

    .line 295
    .local v1, "digits":[C
    const/4 v2, 0x1

    aget-char v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-char v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static whitelist test-api getSuperscriptInstance(Landroid/icu/text/DecimalFormat;)Landroid/icu/text/ScientificNumberFormatter;
    .registers 2
    .param p0, "df"    # Landroid/icu/text/DecimalFormat;

    .line 64
    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstance(Landroid/icu/text/DecimalFormat;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getSuperscriptInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/ScientificNumberFormatter;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 51
    sget-object v0, Landroid/icu/text/ScientificNumberFormatter;->SUPER_SCRIPT:Landroid/icu/text/ScientificNumberFormatter$Style;

    invoke-static {p0, v0}, Landroid/icu/text/ScientificNumberFormatter;->getInstanceForLocale(Landroid/icu/util/ULocale;Landroid/icu/text/ScientificNumberFormatter$Style;)Landroid/icu/text/ScientificNumberFormatter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public whitelist test-api format(Ljava/lang/Object;)Ljava/lang/String;
    .registers 6
    .param p1, "number"    # Ljava/lang/Object;

    .line 108
    iget-object v0, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    monitor-enter v0

    .line 109
    :try_start_3
    iget-object v1, p0, Landroid/icu/text/ScientificNumberFormatter;->style:Landroid/icu/text/ScientificNumberFormatter$Style;

    iget-object v2, p0, Landroid/icu/text/ScientificNumberFormatter;->fmt:Landroid/icu/text/DecimalFormat;

    .line 110
    invoke-virtual {v2, p1}, Landroid/icu/text/DecimalFormat;->formatToCharacterIterator(Ljava/lang/Object;)Ljava/text/AttributedCharacterIterator;

    move-result-object v2

    iget-object v3, p0, Landroid/icu/text/ScientificNumberFormatter;->preExponent:Ljava/lang/String;

    .line 109
    invoke-virtual {v1, v2, v3}, Landroid/icu/text/ScientificNumberFormatter$Style;->format(Ljava/text/AttributedCharacterIterator;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 112
    :catchall_13
    move-exception v1

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v1
.end method
