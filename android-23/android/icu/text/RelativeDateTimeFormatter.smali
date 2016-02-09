.class public final Landroid/icu/text/RelativeDateTimeFormatter;
.super Ljava/lang/Object;
.source "RelativeDateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/RelativeDateTimeFormatter$Style;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;,
        Landroid/icu/text/RelativeDateTimeFormatter$Direction;,
        Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;,
        Landroid/icu/text/RelativeDateTimeFormatter$Cache;,
        Landroid/icu/text/RelativeDateTimeFormatter$Loader;
    }
.end annotation


# static fields
.field private static final cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;


# instance fields
.field private final breakIterator:Landroid/icu/text/BreakIterator;

.field private final capitalizationContext:Landroid/icu/text/DisplayContext;

.field private final combinedDateAndTime:Landroid/icu/text/MessageFormat;

.field private final locale:Landroid/icu/util/ULocale;

.field private final numberFormat:Landroid/icu/text/NumberFormat;

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

.field private final quantitativeUnitMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Style;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;",
            "[",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final style:Landroid/icu/text/RelativeDateTimeFormatter$Style;


# direct methods
.method static synthetic -wrap0(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 0
    .param p0, "qualitativeUnits"    # Ljava/util/EnumMap;
    .param p1, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .param p2, "bundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "plain"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2, p3}, Landroid/icu/text/RelativeDateTimeFormatter;->addQualitativeUnit(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap1(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;)V
    .locals 0
    .param p0, "qualitativeUnits"    # Ljava/util/EnumMap;
    .param p1, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .param p2, "current"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0, p1, p2}, Landroid/icu/text/RelativeDateTimeFormatter;->addQualitativeUnit(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 870
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;-><init>(Landroid/icu/text/RelativeDateTimeFormatter$Cache;)V

    #@6
    sput-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    #@8
    .line 66
    return-void
.end method

.method private constructor <init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V
    .locals 2
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
            "[",
            "Landroid/icu/text/QuantityFormatter;",
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
    .line 513
    .local p1, "qualitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;>;"
    .local p2, "quantitativeUnitMap":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Style;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$RelativeUnit;[Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 523
    iput-object p1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@5
    .line 524
    iput-object p2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->quantitativeUnitMap:Ljava/util/EnumMap;

    #@7
    .line 525
    iput-object p3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Landroid/icu/text/MessageFormat;

    #@9
    .line 526
    iput-object p4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    #@b
    .line 527
    iput-object p5, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@d
    .line 528
    iput-object p6, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@f
    .line 529
    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->type()Landroid/icu/text/DisplayContext$Type;

    #@12
    move-result-object v0

    #@13
    sget-object v1, Landroid/icu/text/DisplayContext$Type;->CAPITALIZATION:Landroid/icu/text/DisplayContext$Type;

    #@15
    if-eq v0, v1, :cond_0

    #@17
    .line 530
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@19
    invoke-virtual {p7}, Landroid/icu/text/DisplayContext;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v0

    #@21
    .line 532
    :cond_0
    iput-object p7, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    #@23
    .line 533
    iput-object p8, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@25
    .line 534
    iput-object p9, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    #@27
    .line 522
    return-void
.end method

.method private static addOptionalDirection(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p2, "bundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 507
    .local p0, "unitStrings":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    invoke-virtual {p2, p3}, Landroid/icu/impl/ICUResourceBundle;->findStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 508
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@6
    .line 509
    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    .line 506
    :cond_0
    return-void
.end method

.method private static addQualitativeUnit(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .locals 3
    .param p1, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .param p2, "bundle"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "plain"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Landroid/icu/impl/ICUResourceBundle;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 492
    .local p0, "qualitativeUnits":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/EnumMap;

    #@2
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@4
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    .line 493
    .local v0, "unitStrings":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@9
    const-string/jumbo v2, "-1"

    #@c
    invoke-virtual {p2, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    .line 494
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->THIS:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@15
    const-string/jumbo v2, "0"

    #@18
    invoke-virtual {p2, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    .line 495
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@21
    const-string/jumbo v2, "1"

    #@24
    invoke-virtual {p2, v2}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v0, v1, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    .line 496
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2d
    const-string/jumbo v2, "-2"

    #@30
    invoke-static {v0, v1, p2, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->addOptionalDirection(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@33
    .line 497
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT_2:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@35
    const-string/jumbo v2, "2"

    #@38
    invoke-static {v0, v1, p2, v2}, Landroid/icu/text/RelativeDateTimeFormatter;->addOptionalDirection(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@3b
    .line 498
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@3d
    invoke-virtual {v0, v1, p3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 499
    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@43
    .line 490
    return-void
.end method

.method private static addQualitativeUnit(Ljava/util/EnumMap;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/lang/String;)V
    .locals 2
    .param p1, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;
    .param p2, "current"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/RelativeDateTimeFormatter$Direction;",
            "Ljava/lang/String;",
            ">;>;",
            "Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 483
    .local p0, "qualitativeUnits":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;>;"
    new-instance v0, Ljava/util/EnumMap;

    #@2
    const-class v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@4
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@7
    .line 484
    .local v0, "unitStrings":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/RelativeDateTimeFormatter$Direction;Ljava/lang/String;>;"
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@9
    invoke-virtual {v0, v1, p2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    .line 485
    invoke-virtual {p0, p1, v0}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 481
    return-void
.end method

.method private adjustForContext(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "originalFormattedString"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 465
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
    .line 467
    :cond_0
    return-object p1

    #@c
    .line 466
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
    .line 469
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@18
    monitor-enter v1

    #@19
    .line 471
    :try_start_0
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->locale:Landroid/icu/util/ULocale;

    #@1b
    .line 473
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->breakIterator:Landroid/icu/text/BreakIterator;

    #@1d
    .line 474
    const/16 v3, 0x300

    #@1f
    .line 470
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
    .line 469
    :catchall_0
    move-exception v0

    #@26
    monitor-exit v1

    #@27
    throw v0
.end method

.method public static getInstance()Landroid/icu/text/RelativeDateTimeFormatter;
    .locals 4

    #@0
    .prologue
    .line 276
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
    .line 287
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
    .line 313
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
    .line 333
    sget-object v0, Landroid/icu/text/RelativeDateTimeFormatter;->cache:Landroid/icu/text/RelativeDateTimeFormatter$Cache;

    #@3
    invoke-virtual {v0, p0}, Landroid/icu/text/RelativeDateTimeFormatter$Cache;->get(Landroid/icu/util/ULocale;)Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;

    #@6
    move-result-object v10

    #@7
    .line 334
    .local v10, "data":Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;
    if-nez p1, :cond_1

    #@9
    .line 335
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@c
    move-result-object p1

    #@d
    .line 339
    :goto_0
    new-instance v0, Landroid/icu/text/RelativeDateTimeFormatter;

    #@f
    .line 340
    iget-object v1, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@11
    .line 341
    iget-object v2, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->quantitativeUnitMap:Ljava/util/EnumMap;

    #@13
    .line 342
    new-instance v3, Landroid/icu/text/MessageFormat;

    #@15
    iget-object v4, v10, Landroid/icu/text/RelativeDateTimeFormatter$RelativeDateTimeFormatterData;->dateTimePattern:Ljava/lang/String;

    #@17
    invoke-direct {v3, v4}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;)V

    #@1a
    .line 343
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@1d
    move-result-object v4

    #@1e
    .line 347
    sget-object v5, Landroid/icu/text/DisplayContext;->CAPITALIZATION_FOR_BEGINNING_OF_SENTENCE:Landroid/icu/text/DisplayContext;

    #@20
    if-ne p3, v5, :cond_0

    #@22
    .line 348
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
    .line 339
    invoke-direct/range {v0 .. v9}, Landroid/icu/text/RelativeDateTimeFormatter;-><init>(Ljava/util/EnumMap;Ljava/util/EnumMap;Landroid/icu/text/MessageFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/NumberFormat;Landroid/icu/text/RelativeDateTimeFormatter$Style;Landroid/icu/text/DisplayContext;Landroid/icu/text/BreakIterator;Landroid/icu/util/ULocale;)V

    #@2d
    return-object v0

    #@2e
    .line 337
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
    .line 299
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
    .line 365
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

.method private getQuantity(Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Z)Landroid/icu/text/QuantityFormatter;
    .locals 3
    .param p1, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;
    .param p2, "isFuture"    # Z

    #@0
    .prologue
    .line 538
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->quantitativeUnitMap:Ljava/util/EnumMap;

    #@2
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@4
    invoke-virtual {v1, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v1

    #@8
    check-cast v1, Ljava/util/EnumMap;

    #@a
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, [Landroid/icu/text/QuantityFormatter;

    #@10
    .line 539
    .local v0, "quantities":[Landroid/icu/text/QuantityFormatter;
    if-eqz p2, :cond_0

    #@12
    const/4 v1, 0x1

    #@13
    aget-object v1, v0, v1

    #@15
    :goto_0
    return-object v1

    #@16
    :cond_0
    const/4 v1, 0x0

    #@17
    aget-object v1, v0, v1

    #@19
    goto :goto_0
.end method


# virtual methods
.method public combineDateAndTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "relativeDateString"    # Ljava/lang/String;
    .param p2, "timeString"    # Ljava/lang/String;

    #@0
    .prologue
    .line 427
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->combinedDateAndTime:Landroid/icu/text/MessageFormat;

    #@2
    .line 428
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
    .line 427
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
    .locals 5
    .param p1, "quantity"    # D
    .param p3, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p4, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;

    #@0
    .prologue
    .line 382
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->LAST:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@2
    if-eq p3, v1, :cond_0

    #@4
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@6
    if-eq p3, v1, :cond_0

    #@8
    .line 383
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v2, "direction must be NEXT or LAST"

    #@d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v1

    #@11
    .line 388
    :cond_0
    iget-object v2, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@13
    monitor-enter v2

    #@14
    .line 390
    :try_start_0
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->NEXT:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@16
    if-ne p3, v1, :cond_1

    #@18
    const/4 v1, 0x1

    #@19
    .line 389
    :goto_0
    invoke-direct {p0, p4, v1}, Landroid/icu/text/RelativeDateTimeFormatter;->getQuantity(Landroid/icu/text/RelativeDateTimeFormatter$RelativeUnit;Z)Landroid/icu/text/QuantityFormatter;

    #@1c
    move-result-object v1

    #@1d
    .line 391
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@1f
    iget-object v4, p0, Landroid/icu/text/RelativeDateTimeFormatter;->pluralRules:Landroid/icu/text/PluralRules;

    #@21
    .line 389
    invoke-virtual {v1, p1, p2, v3, v4}, Landroid/icu/text/QuantityFormatter;->format(DLandroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    move-result-object v0

    #@25
    .local v0, "result":Ljava/lang/String;
    monitor-exit v2

    #@26
    .line 393
    invoke-direct {p0, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    return-object v1

    #@2b
    .line 390
    .end local v0    # "result":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    #@2c
    goto :goto_0

    #@2d
    .line 388
    :catchall_0
    move-exception v1

    #@2e
    monitor-exit v2

    #@2f
    throw v1
.end method

.method public format(Landroid/icu/text/RelativeDateTimeFormatter$Direction;Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;)Ljava/lang/String;
    .locals 4
    .param p1, "direction"    # Landroid/icu/text/RelativeDateTimeFormatter$Direction;
    .param p2, "unit"    # Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 409
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;->NOW:Landroid/icu/text/RelativeDateTimeFormatter$AbsoluteUnit;

    #@3
    if-ne p2, v1, :cond_0

    #@5
    sget-object v1, Landroid/icu/text/RelativeDateTimeFormatter$Direction;->PLAIN:Landroid/icu/text/RelativeDateTimeFormatter$Direction;

    #@7
    if-eq p1, v1, :cond_0

    #@9
    .line 410
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@b
    const-string/jumbo v2, "NOW can only accept direction PLAIN."

    #@e
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@11
    throw v1

    #@12
    .line 412
    :cond_0
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->qualitativeUnitMap:Ljava/util/EnumMap;

    #@14
    iget-object v3, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@16
    invoke-virtual {v1, v3}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v1

    #@1a
    check-cast v1, Ljava/util/EnumMap;

    #@1c
    invoke-virtual {v1, p2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    move-result-object v1

    #@20
    check-cast v1, Ljava/util/EnumMap;

    #@22
    invoke-virtual {v1, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v0

    #@26
    check-cast v0, Ljava/lang/String;

    #@28
    .line 413
    .local v0, "result":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@2a
    invoke-direct {p0, v0}, Landroid/icu/text/RelativeDateTimeFormatter;->adjustForContext(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    :goto_0
    return-object v1

    #@2f
    :cond_1
    move-object v1, v2

    #@30
    goto :goto_0
.end method

.method public getCapitalizationContext()Landroid/icu/text/DisplayContext;
    .locals 1

    #@0
    .prologue
    .line 451
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->capitalizationContext:Landroid/icu/text/DisplayContext;

    #@2
    return-object v0
.end method

.method public getFormatStyle()Landroid/icu/text/RelativeDateTimeFormatter$Style;
    .locals 1

    #@0
    .prologue
    .line 461
    iget-object v0, p0, Landroid/icu/text/RelativeDateTimeFormatter;->style:Landroid/icu/text/RelativeDateTimeFormatter$Style;

    #@2
    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 2

    #@0
    .prologue
    .line 439
    iget-object v1, p0, Landroid/icu/text/RelativeDateTimeFormatter;->numberFormat:Landroid/icu/text/NumberFormat;

    #@2
    monitor-enter v1

    #@3
    .line 440
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
    .line 439
    :catchall_0
    move-exception v0

    #@e
    monitor-exit v1

    #@f
    throw v0
.end method
