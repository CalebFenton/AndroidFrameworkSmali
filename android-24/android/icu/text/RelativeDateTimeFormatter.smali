.class public final Landroid/icu/text/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Cache;,
        Landroid/icu/text/RelativeDateTimeFormatter$Direction;,
        Landroid/icu/text/RelativeDateTimeFormatter$Loader;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelDateTimeFmtDataSink;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Style;
    }
.end annotation


# static fields
.field private static final cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

.field private static final fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;


# instance fields
.field private final breakIterator:Landroid/icu/text/BreakIterator;

.field private final capitalizationContext:Landroid/icu/text/DisplayContext;

.field private final combinedDateAndTime:Landroid/icu/text/MessageFormat;

.field private final dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

.field private final locale:Landroid/icu/util/ULocale;

.field private final numberFormat:Landroid/icu/text/NumberFormat;

.field private final patternMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pluralRules:Landroid/icu/text/PluralRules;

.field private final qualitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

.field private styleToDateFormatSymbolsWidth:[I


# direct methods
.method static synthetic -get0()[Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/RelativeDateTimeFormatter;->keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 568
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@3
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@5
    .line 985
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    #@7
    const/4 v1, 0x0

    #@8
    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V

    #@b
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    #@d
    .line 71
    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p3, "combinedDateAndTime"    # Landroid/icu/text/MessageFormat;
    .param p4, "pluralRules"    # Landroid/icu/text/PluralRules;
    .param p5, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p6, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p7, "capitalizationContext"    # Landroid/icu/text/DisplayContext;
    .param p8, "breakIterator"    # Landroid/icu/text/BreakIterator;
    .param p9, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;>;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[[",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/icu/text/MessageFormat;",
            "Landroid/icu/text/PluralRules;",
            "Landroid/icu/text/NumberFormat;",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Landroid/icu/text/DisplayContext;",
            "Landroid/icu/text/BreakIterator;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 497
    .local p1, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    .local p2, "patternMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 379
    const/4 v0, 0x1

    #@4
    const/4 v1, 0x3

    #@5
    const/4 v2, 0x2

    #@6
    .line 378
    filled-new-array {v0, v1, v2}, [I

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    #@c
    .line 507
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@e
    .line 508
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    #@10
    .line 509
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Landroid/icu/text/MessageFormat;

    #@12
    .line 510
    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    #@14
    .line 511
    iput-object p5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@16
    .line 512
    iput-object p6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@18
    .line 513
    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@1b
    move-result-object v0

    #@1c
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@1e
    if-eq v0, v1, :cond_0

    #@20
    .line 514
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@22
    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 516
    :cond_0
    iput-object p7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    #@2c
    .line 517
    iput-object p8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@2e
    .line 518
    iput-object p9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    #@30
    .line 519
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    #@32
    invoke-direct {v0, p9}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@35
    iput-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    #@37
    .line 506
    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originalFormattedString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 484
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@3
    if-eqz v0, :cond_0

    #@5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@8
    move-result v0

    #@9
    if-nez v0, :cond_1

    #@b
    .line 486
    :cond_0
    return-object p1

    #@c
    .line 485
    :cond_1
    invoke-static {p1, v1}, Landroid/icu/lang/UCharacter;->codePointAt(Ljava/lang/CharSequence;I)I

    #@f
    move-result v0

    #@10
    invoke-static {v0}, Landroid/icu/lang/UCharacter;->isLowerCase(I)Z

    #@13
    move-result v0

    #@14
    if-eqz v0, :cond_0

    #@16
    .line 488
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@18
    monitor-enter v1

    #@19
    .line 490
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    #@1b
    .line 492
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@1d
    .line 493
    const/16 v3, 0x300

    #@1f
    .line 489
    invoke-static {v0, p1, v2, v3}, Landroid/icu/lang/UCharacter;->toTitleCase(Landroid/icu/util/ULocale;Ljava/lang/String;Landroid/icu/text/BreakIterator;I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v0

    #@23
    monitor-exit v1

    #@24
    return-object v0

    #@25
    .line 488
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method private getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;
    .locals 6
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 425
    :cond_0
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v2

    #@7
    check-cast v2, Ljava/util/EnumMap;

    #@9
    .line 426
    .local v2, "unitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    if-eqz v2, :cond_1

    #@b
    .line 427
    invoke-virtual {v2, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Ljava/util/EnumMap;

    #@11
    .line 428
    .local v0, "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    #@13
    .line 429
    invoke-virtual {v0, p3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, Ljava/lang/String;

    #@19
    .line 430
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@1b
    .line 431
    return-object v1

    #@1c
    .line 439
    .end local v0    # "dirMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    .end local v1    # "result":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@1e
    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@21
    move-result v4

    #@22
    aget-object p1, v3, v4

    #@24
    if-nez p1, :cond_0

    #@26
    .line 440
    return-object v5
.end method

.method public static getInstance()Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 4

    #@0
    .prologue
    .line 261
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@6
    sget-object v2, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@8
    const/4 v3, 0x0

    #@9
    invoke-static {v0, v3, v1, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 271
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@4
    const/4 v2, 0x0

    #@5
    invoke-static {p0, v2, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 294
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Style;->LONG:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    sget-object v1, Landroid/icu/text/DisplayContext;->CAPITALIZATION_NONE:Landroid/icu/text/DisplayContext;

    #@4
    invoke-static {p0, p1, v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 11
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;
    .param p2, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p3, "capitalizationContext"    # Landroid/icu/text/DisplayContext;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 312
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    #@3
    invoke-virtual {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    #@6
    move-result-object v10

    #@7
    .line 313
    .local v10, "data":Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    if-nez p1, :cond_1

    #@9
    .line 314
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@c
    move-result-object p1

    #@d
    .line 318
    :goto_0
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter;

    #@f
    .line 319
    iget-object v1, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@11
    .line 320
    iget-object v2, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->relUnitPatternMap:Ljava/util/EnumMap;

    #@13
    .line 321
    new-instance v3, Landroid/icu/text/MessageFormat;

    #@15
    iget-object v4, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    #@17
    invoke-direct {v3, v4}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@1a
    .line 322
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@1d
    move-result-object v4

    #@1e
    .line 326
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@20
    if-ne p3, v5, :cond_0

    #@22
    .line 327
    invoke-static {p0}, Landroid/icu/text/BreakIterator;->getSentenceInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/BreakIterator;

    #@25
    move-result-object v8

    #@26
    :cond_0
    move-object v5, p1

    #@27
    move-object v6, p2

    #@28
    move-object v7, p3

    #@29
    move-object v9, p0

    #@2a
    .line 318
    invoke-direct/range {v0 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V

    #@2d
    return-object v0

    #@2e
    .line 316
    :cond_1
    invoke-virtual {p1}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@31
    move-result-object p1

    #@32
    .end local p1    # "nf":Landroid/icu/text/NumberFormat;
    check-cast p1, Landroid/icu/text/NumberFormat;

    #@34
    .restart local p1    # "nf":Landroid/icu/text/NumberFormat;
    goto :goto_0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 281
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "nf"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 341
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/NumberFormat;)Landroid/icu/text/RelativeDateTimeFormatter;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 6
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p3, "pastFutureIndex"    # I
    .param p4, "pluralForm"    # Landroid/icu/impl/StandardPlural;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 535
    invoke-virtual {p4}, Landroid/icu/impl/StandardPlural;->ordinal()I

    #@4
    move-result v0

    #@5
    .line 537
    .local v0, "pluralIndex":I
    :cond_0
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->patternMap:Ljava/util/EnumMap;

    #@7
    invoke-virtual {v3, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v2

    #@b
    check-cast v2, Ljava/util/EnumMap;

    #@d
    .line 538
    .local v2, "unitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;[[Ljava/lang/String;>;"
    if-eqz v2, :cond_1

    #@f
    .line 539
    invoke-virtual {v2, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [[Ljava/lang/String;

    #@15
    .line 540
    .local v1, "spfCompiledPatterns":[[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@17
    .line 541
    aget-object v3, v1, p3

    #@19
    aget-object v3, v3, v0

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 542
    aget-object v3, v1, p3

    #@1f
    aget-object v3, v3, v0

    #@21
    return-object v3

    #@22
    .line 550
    .end local v1    # "spfCompiledPatterns":[[Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/icu/text/RelativeDateTimeFormatter;->fallbackCache:[Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@24
    invoke-virtual {p1}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@27
    move-result v4

    #@28
    aget-object p1, v3, v4

    #@2a
    if-nez p1, :cond_0

    #@2c
    .line 551
    return-object v5
.end method

.method private getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;
    .locals 2
    .param p1, "style"    # Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p3, "pastFutureIndex"    # I
    .param p4, "pluralForm"    # Landroid/icu/impl/StandardPlural;

    #@0
    .prologue
    .line 524
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@2
    if-eq p4, v1, :cond_0

    #@4
    .line 525
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 526
    .local v0, "formatter":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 527
    return-object v0

    #@b
    .line 530
    .end local v0    # "formatter":Ljava/lang/String;
    :cond_0
    sget-object v1, Landroid/icu/impl/StandardPlural;->OTHER:Landroid/icu/impl/StandardPlural;

    #@d
    invoke-direct {p0, p1, p2, p3, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method private static keyToDirection(Landroid/icu/impl/UResource$Key;)Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .locals 1
    .param p0, "key"    # Landroid/icu/impl/UResource$Key;

    #@0
    .prologue
    .line 602
    const-string/jumbo v0, "-2"

    #@3
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    .line 603
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@b
    return-object v0

    #@c
    .line 605
    :cond_0
    const-string/jumbo v0, "-1"

    #@f
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@12
    move-result v0

    #@13
    if-eqz v0, :cond_1

    #@15
    .line 606
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@17
    return-object v0

    #@18
    .line 608
    :cond_1
    const-string/jumbo v0, "0"

    #@1b
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@1e
    move-result v0

    #@1f
    if-eqz v0, :cond_2

    #@21
    .line 609
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@23
    return-object v0

    #@24
    .line 611
    :cond_2
    const-string/jumbo v0, "1"

    #@27
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@2a
    move-result v0

    #@2b
    if-eqz v0, :cond_3

    #@2d
    .line 612
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2f
    return-object v0

    #@30
    .line 614
    :cond_3
    const-string/jumbo v0, "2"

    #@33
    invoke-virtual {p0, v0}, Landroid/icu/impl/UResource$Key;->contentEquals(Ljava/lang/CharSequence;)Z

    #@36
    move-result v0

    #@37
    if-eqz v0, :cond_4

    #@39
    .line 615
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@3b
    return-object v0

    #@3c
    .line 617
    :cond_4
    const/4 v0, 0x0

    #@3d
    return-object v0
.end method


# virtual methods
.method public combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "relativeDateString"    # Ljava/lang/String;
    .param p2, "timeString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 453
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Landroid/icu/text/MessageFormat;

    #@2
    .line 454
    const/4 v1, 0x2

    #@3
    new-array v1, v1, [Ljava/lang/Object;

    #@5
    const/4 v2, 0x0

    #@6
    aput-object p2, v1, v2

    #@8
    const/4 v2, 0x1

    #@9
    aput-object p1, v1, v2

    #@b
    new-instance v2, Ljava/lang/StringBuffer;

    #@d
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@10
    const/4 v3, 0x0

    #@11
    .line 453
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/text/MessageFormat;->format([Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@18
    move-result-object v0

    #@19
    return-object v0
.end method

.method public format(DLandroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;)Ljava/lang/String;
    .locals 11
    .param p1, "quantity"    # D
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p4, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@0
    .prologue
    .line 357
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2
    if-eq p3, v6, :cond_0

    #@4
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@6
    if-eq p3, v6, :cond_0

    #@8
    .line 358
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v7, "direction must be NEXT or LAST"

    #@d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v6

    #@11
    .line 361
    :cond_0
    sget-object v6, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@13
    if-ne p3, v6, :cond_1

    #@15
    const/4 v3, 0x1

    #@16
    .line 365
    .local v3, "pastFutureIndex":I
    :goto_0
    iget-object v7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@18
    monitor-enter v7

    #@19
    .line 366
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    #@1b
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@1e
    .line 367
    .local v1, "formatStr":Ljava/lang/StringBuffer;
    sget-object v0, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@20
    .line 368
    .local v0, "fieldPosition":Landroid/icu/impl/DontCareFieldPosition;
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@23
    move-result-object v6

    #@24
    .line 369
    iget-object v8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@26
    iget-object v9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    #@28
    .line 368
    invoke-static {v6, v8, v9, v1, v0}, Landroid/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;

    #@2b
    move-result-object v4

    #@2c
    .line 371
    .local v4, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2e
    invoke-direct {p0, v6, p4, v3, v4}, Landroid/icu/text/RelativeDateTimeFormatter;->getRelativeUnitPluralPattern(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;ILandroid/icu/impl/StandardPlural;)Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    .line 372
    .local v2, "formatter":Ljava/lang/String;
    const/4 v6, 0x1

    #@33
    new-array v6, v6, [Ljava/lang/CharSequence;

    #@35
    const/4 v8, 0x0

    #@36
    aput-object v1, v6, v8

    #@38
    invoke-static {v2, v6}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3b
    move-result-object v5

    #@3c
    .local v5, "result":Ljava/lang/String;
    monitor-exit v7

    #@3d
    .line 374
    invoke-direct {p0, v5}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@40
    move-result-object v6

    #@41
    return-object v6

    #@42
    .line 361
    .end local v0    # "fieldPosition":Landroid/icu/impl/DontCareFieldPosition;
    .end local v1    # "formatStr":Ljava/lang/StringBuffer;
    .end local v2    # "formatter":Ljava/lang/String;
    .end local v3    # "pastFutureIndex":I
    .end local v4    # "pluralForm":Landroid/icu/impl/StandardPlural;
    .end local v5    # "result":Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    #@43
    .restart local v3    # "pastFutureIndex":I
    goto :goto_0

    #@44
    .line 365
    :catchall_0
    move-exception v6

    #@45
    monitor-exit v7

    #@46
    throw v6
.end method

.method public format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .locals 7
    .param p1, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 393
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@3
    if-ne p2, v4, :cond_0

    #@5
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@7
    if-eq p1, v4, :cond_0

    #@9
    .line 394
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v4, "NOW can only accept direction PLAIN."

    #@e
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v3

    #@12
    .line 398
    :cond_0
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@14
    if-ne p1, v4, :cond_2

    #@16
    sget-object v4, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@18
    invoke-virtual {v4}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    #@1b
    move-result v4

    #@1c
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    #@1f
    move-result v5

    #@20
    if-gt v4, v5, :cond_2

    #@22
    .line 399
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    #@25
    move-result v4

    #@26
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SATURDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@28
    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    #@2b
    move-result v5

    #@2c
    if-gt v4, v5, :cond_2

    #@2e
    .line 401
    invoke-virtual {p2}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    #@31
    move-result v4

    #@32
    sget-object v5, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->SUNDAY:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@34
    invoke-virtual {v5}, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->ordinal()I

    #@37
    move-result v5

    #@38
    sub-int/2addr v4, v5

    #@39
    add-int/lit8 v0, v4, 0x1

    #@3b
    .line 403
    .local v0, "dateSymbolsDayOrdinal":I
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->dateFormatSymbols:Landroid/icu/text/DateFormatSymbols;

    #@3d
    .line 404
    iget-object v5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->styleToDateFormatSymbolsWidth:[I

    #@3f
    iget-object v6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@41
    invoke-virtual {v6}, Landroid/icu/text/RelativeDateTimeFormatter$Style;->ordinal()I

    #@44
    move-result v6

    #@45
    aget v5, v5, v6

    #@47
    .line 403
    const/4 v6, 0x1

    #@48
    invoke-virtual {v4, v6, v5}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    #@4b
    move-result-object v1

    #@4c
    .line 405
    .local v1, "dayNames":[Ljava/lang/String;
    aget-object v2, v1, v0

    #@4e
    .line 410
    .end local v0    # "dateSymbolsDayOrdinal":I
    .end local v1    # "dayNames":[Ljava/lang/String;
    .local v2, "result":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_1

    #@50
    invoke-direct {p0, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@53
    move-result-object v3

    #@54
    :cond_1
    return-object v3

    #@55
    .line 408
    .end local v2    # "result":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@57
    invoke-direct {p0, v4, p2, p1}, Landroid/icu/text/RelativeDateTimeFormatter;->getAbsoluteUnitString(Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/text/RelativeDateTimeFormatter$Direction;)Ljava/lang/String;

    #@5a
    move-result-object v2

    #@5b
    .restart local v2    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public getCapitalizationContext()Landroid/icu/text/DisplayContext;
    .locals 1

    #@0
    .prologue
    .line 473
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    #@2
    return-object v0
.end method

.method public getFormatStyle()Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    #@0
    .prologue
    .line 480
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 464
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    monitor-enter v1

    #@3
    .line 465
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@5
    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/text/NumberFormat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    monitor-exit v1

    #@c
    return-object v0

    #@d
    .line 464
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
