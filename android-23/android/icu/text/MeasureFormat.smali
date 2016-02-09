.class public Landroid/icu/text/MeasureFormat;
.super Landroid/icu/text/UFormat;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$FormatWidth;,
        Landroid/icu/text/MeasureFormat$NumericFormatters;,
        Landroid/icu/text/MeasureFormat$MeasureFormatData;,
        Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;,
        Landroid/icu/text/MeasureFormat$PatternData;,
        Landroid/icu/text/MeasureFormat$MeasureProxy;
    }
.end annotation


# static fields
.field private static final CURRENCY_FORMAT:I = 0x2

.field private static final MEASURE_FORMAT:I = 0x0

.field private static final TIME_UNIT_FORMAT:I = 0x1

.field private static final hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeMeasureFormatData:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$MeasureFormatData;",
            ">;"
        }
    .end annotation
.end field

.field private static final localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache",
            "<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$NumericFormatters;",
            ">;"
        }
    .end annotation
.end field

.field static final serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private final transient integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Landroid/icu/text/PluralRules;

.field private final transient styleToPerPattern:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;"
        }
    .end annotation
.end field

.field private final transient unitToStyleToCountToFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;"
        }
    .end annotation
.end field

.field private final transient unitToStyleToPerUnitPattern:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .param p0, "ordinal"    # I

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 137
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    .line 136
    sput-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    #@7
    .line 140
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@9
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@c
    .line 139
    sput-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    #@e
    .line 143
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 142
    sput-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    #@15
    .line 146
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    #@17
    sget-object v1, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    #@19
    const/4 v2, 0x0

    #@1a
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1d
    move-result-object v2

    #@1e
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@21
    .line 147
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    #@23
    sget-object v1, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    #@25
    const/4 v2, 0x1

    #@26
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@29
    move-result-object v2

    #@2a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 148
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    #@2f
    sget-object v1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    #@31
    const/4 v2, 0x2

    #@32
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@35
    move-result-object v2

    #@36
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@39
    .line 1266
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@3b
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@3e
    .line 1265
    sput-object v0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@40
    .line 110
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 708
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 710
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@6
    .line 711
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@8
    .line 712
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@a
    .line 713
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@c
    .line 714
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@e
    .line 715
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@10
    .line 716
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@12
    .line 717
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToPerUnitPattern:Ljava/util/Map;

    #@14
    .line 718
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->styleToPerPattern:Ljava/util/EnumMap;

    #@16
    .line 708
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Ljava/util/Map;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/util/Map;Ljava/util/EnumMap;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "format"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p6, "formatters"    # Landroid/icu/text/MeasureFormat$NumericFormatters;
    .param p7, "currencyFormat"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .param p8, "integerFormat"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;",
            "Landroid/icu/text/PluralRules;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/text/QuantityFormatter;",
            ">;>;",
            "Landroid/icu/text/MeasureFormat$NumericFormatters;",
            "Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;",
            "Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;>;",
            "Ljava/util/EnumMap",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "Landroid/icu/impl/SimplePatternFormatter;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 685
    .local p5, "unitToStyleToCountToFormat":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    .local p9, "unitToStyleToPerUnitPattern":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;>;"
    .local p10, "styleToPerPattern":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;"
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    .line 696
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/MeasureFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@6
    .line 697
    iput-object p2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    .line 698
    iput-object p3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@a
    .line 699
    iput-object p4, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@c
    .line 700
    iput-object p5, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@e
    .line 701
    iput-object p6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@10
    .line 702
    iput-object p7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@12
    .line 703
    iput-object p8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@14
    .line 704
    iput-object p9, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToPerUnitPattern:Ljava/util/Map;

    #@16
    .line 705
    iput-object p10, p0, Landroid/icu/text/MeasureFormat;->styleToPerPattern:Ljava/util/EnumMap;

    #@18
    .line 695
    return-void
.end method

.method private appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules$StandardPluralCategories;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "affix"    # Ljava/lang/String;
    .param p2, "unit"    # Landroid/icu/util/Currency;
    .param p3, "resolvedCategory"    # Landroid/icu/text/PluralRules$StandardPluralCategories;
    .param p4, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 467
    const-string/jumbo v2, "\u00a4"

    #@4
    .line 468
    .local v2, "replacement":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 469
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@a
    .line 470
    const-string/jumbo v2, "XXX"

    #@d
    .line 471
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 473
    :cond_0
    if-gez v1, :cond_1

    #@13
    .line 474
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 466
    :goto_0
    return-void

    #@17
    .line 477
    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 479
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@20
    invoke-virtual {v4}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    #@23
    move-result v0

    #@24
    .line 480
    .local v0, "currentStyle":I
    const/4 v4, 0x5

    #@25
    if-ne v0, v4, :cond_2

    #@27
    .line 481
    invoke-virtual {p2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 487
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@31
    move-result v3

    #@32
    add-int/2addr v3, v1

    #@33
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    goto :goto_0

    #@3b
    .line 483
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@3d
    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    #@40
    move-result-object v4

    #@41
    sget-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@43
    invoke-virtual {v4, v5}, Landroid/icu/text/NumberFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@46
    move-result-object v4

    #@47
    .line 484
    const/4 v5, 0x1

    #@48
    if-ne v0, v5, :cond_3

    #@4a
    .line 485
    :goto_2
    invoke-virtual {p3}, Landroid/icu/text/PluralRules$StandardPluralCategories;->toString()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    const/4 v6, 0x0

    #@4f
    .line 483
    invoke-virtual {p2, v4, v3, v5, v6}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_1

    #@57
    .line 484
    :cond_3
    const/4 v3, 0x2

    #@58
    goto :goto_2
.end method

.method private static fillInStyleMap(Ljava/util/Map;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Landroid/icu/text/MeasureFormat$FormatWidth;",
            "TT;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;TT;>;"
    const/4 v6, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 829
    invoke-interface {p0}, Ljava/util/Map;->size()I

    #@5
    move-result v4

    #@6
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@9
    move-result-object v5

    #@a
    array-length v5, v5

    #@b
    if-ne v4, v5, :cond_0

    #@d
    .line 830
    return v6

    #@e
    .line 832
    :cond_0
    sget-object v4, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@10
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    .line 833
    .local v0, "fallback":Ljava/lang/Object;, "TT;"
    if-nez v0, :cond_1

    #@16
    .line 834
    sget-object v4, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@18
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 836
    :cond_1
    if-nez v0, :cond_2

    #@1e
    .line 837
    return v3

    #@1f
    .line 839
    :cond_2
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@22
    move-result-object v4

    #@23
    array-length v5, v4

    #@24
    :goto_0
    if-ge v3, v5, :cond_4

    #@26
    aget-object v2, v4, v3

    #@28
    .line 840
    .local v2, "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v1

    #@2c
    .line 841
    .local v1, "item":Ljava/lang/Object;, "TT;"
    if-nez v1, :cond_3

    #@2e
    .line 842
    invoke-interface {p0, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 839
    :cond_3
    add-int/lit8 v3, v3, 0x1

    #@33
    goto :goto_0

    #@34
    .line 845
    .end local v1    # "item":Ljava/lang/Object;, "TT;"
    .end local v2    # "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    :cond_4
    return v6
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;
    .locals 2
    .param p1, "measure"    # Landroid/icu/util/Measure;
    .param p2, "nf"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@0
    .prologue
    .line 868
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 869
    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@7
    .line 867
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 17
    .param p1, "measure"    # Landroid/icu/util/Measure;
    .param p2, "nf"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 877
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@3
    move-result-object v1

    #@4
    instance-of v1, v1, Landroid/icu/util/Currency;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 879
    move-object/from16 v0, p0

    #@a
    iget-object v2, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@c
    .line 880
    new-instance v3, Landroid/icu/util/CurrencyAmount;

    #@e
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@11
    move-result-object v4

    #@12
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@15
    move-result-object v1

    #@16
    check-cast v1, Landroid/icu/util/Currency;

    #@18
    invoke-direct {v3, v4, v1}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    #@1b
    .line 881
    new-instance v1, Ljava/lang/StringBuffer;

    #@1d
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@20
    .line 879
    move-object/from16 v0, p4

    #@22
    invoke-virtual {v2, v3, v1, v0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@25
    move-result-object v1

    #@26
    .line 878
    move-object/from16 v0, p3

    #@28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v1

    #@2c
    return-object v1

    #@2d
    .line 885
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@30
    move-result-object v12

    #@31
    .line 886
    .local v12, "n":Ljava/lang/Number;
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@34
    move-result-object v15

    #@35
    .line 887
    .local v15, "unit":Landroid/icu/util/MeasureUnit;
    new-instance v10, Landroid/icu/text/UFieldPosition;

    #@37
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual/range {p4 .. p4}, Ljava/text/FieldPosition;->getField()I

    #@3e
    move-result v2

    #@3f
    invoke-direct {v10, v1, v2}, Landroid/icu/text/UFieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@42
    .line 888
    .local v10, "fpos":Landroid/icu/text/UFieldPosition;
    new-instance v1, Ljava/lang/StringBuffer;

    #@44
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    #@47
    move-object/from16 v0, p2

    #@49
    invoke-virtual {v0, v12, v1, v10}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@4c
    move-result-object v8

    #@4d
    .line 889
    .local v8, "formattedNumber":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@4f
    iget-object v0, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@51
    move-object/from16 v16, v0

    #@53
    new-instance v1, Landroid/icu/text/PluralRules$FixedDecimal;

    #@55
    invoke-virtual {v12}, Ljava/lang/Number;->doubleValue()D

    #@58
    move-result-wide v2

    #@59
    invoke-virtual {v10}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    #@5c
    move-result v4

    #@5d
    invoke-virtual {v10}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    #@60
    move-result-wide v5

    #@61
    invoke-direct/range {v1 .. v6}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@64
    move-object/from16 v0, v16

    #@66
    invoke-virtual {v0, v1}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@69
    move-result-object v11

    #@6a
    .line 891
    .local v11, "keyword":Ljava/lang/String;
    move-object/from16 v0, p0

    #@6c
    iget-object v1, v0, Landroid/icu/text/MeasureFormat;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@6e
    invoke-interface {v1, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@71
    move-result-object v14

    #@72
    check-cast v14, Ljava/util/Map;

    #@74
    .line 892
    .local v14, "styleToCountToFormat":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    move-object/from16 v0, p0

    #@76
    iget-object v1, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@78
    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7b
    move-result-object v7

    #@7c
    check-cast v7, Landroid/icu/text/QuantityFormatter;

    #@7e
    .line 893
    .local v7, "countToFormat":Landroid/icu/text/QuantityFormatter;
    invoke-virtual {v7, v11}, Landroid/icu/text/QuantityFormatter;->getByVariant(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@81
    move-result-object v9

    #@82
    .line 894
    .local v9, "formatter":Landroid/icu/impl/SimplePatternFormatter;
    const/4 v1, 0x1

    #@83
    new-array v13, v1, [I

    #@85
    .line 895
    .local v13, "offsets":[I
    const/4 v1, 0x1

    #@86
    new-array v1, v1, [Ljava/lang/CharSequence;

    #@88
    const/4 v2, 0x0

    #@89
    aput-object v8, v1, v2

    #@8b
    move-object/from16 v0, p3

    #@8d
    invoke-virtual {v9, v0, v13, v1}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@90
    .line 896
    const/4 v1, 0x0

    #@91
    aget v1, v13, v1

    #@93
    const/4 v2, -0x1

    #@94
    if-eq v1, v2, :cond_2

    #@96
    .line 898
    invoke-virtual {v10}, Landroid/icu/text/UFieldPosition;->getBeginIndex()I

    #@99
    move-result v1

    #@9a
    if-nez v1, :cond_1

    #@9c
    invoke-virtual {v10}, Landroid/icu/text/UFieldPosition;->getEndIndex()I

    #@9f
    move-result v1

    #@a0
    if-eqz v1, :cond_2

    #@a2
    .line 899
    :cond_1
    invoke-virtual {v10}, Landroid/icu/text/UFieldPosition;->getBeginIndex()I

    #@a5
    move-result v1

    #@a6
    const/4 v2, 0x0

    #@a7
    aget v2, v13, v2

    #@a9
    add-int/2addr v1, v2

    #@aa
    move-object/from16 v0, p4

    #@ac
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@af
    .line 900
    invoke-virtual {v10}, Landroid/icu/text/UFieldPosition;->getEndIndex()I

    #@b2
    move-result v1

    #@b3
    const/4 v2, 0x0

    #@b4
    aget v2, v13, v2

    #@b6
    add-int/2addr v1, v2

    #@b7
    move-object/from16 v0, p4

    #@b9
    invoke-virtual {v0, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@bc
    .line 903
    :cond_2
    return-object p3
.end method

.method private varargs formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 9
    .param p1, "listFormatter"    # Landroid/icu/text/ListFormatter;
    .param p2, "appendTo"    # Ljava/lang/StringBuilder;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p4, "measures"    # [Landroid/icu/util/Measure;

    #@0
    .prologue
    const/4 v8, -0x1

    #@1
    .line 987
    array-length v6, p4

    #@2
    new-array v5, v6, [Ljava/lang/String;

    #@4
    .line 990
    .local v5, "results":[Ljava/lang/String;
    new-instance v2, Ljava/text/FieldPosition;

    #@6
    .line 991
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@9
    move-result-object v6

    #@a
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    #@d
    move-result v7

    #@e
    .line 990
    invoke-direct {v2, v6, v7}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@11
    .line 993
    .local v2, "fpos":Ljava/text/FieldPosition;
    const/4 v1, -0x1

    #@12
    .line 994
    .local v1, "fieldPositionFoundIndex":I
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    :goto_0
    array-length v6, p4

    #@14
    if-ge v3, v6, :cond_4

    #@16
    .line 995
    array-length v6, p4

    #@17
    add-int/lit8 v6, v6, -0x1

    #@19
    if-ne v3, v6, :cond_2

    #@1b
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@1d
    .line 996
    .local v4, "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    :goto_1
    if-ne v1, v8, :cond_3

    #@1f
    .line 997
    aget-object v6, p4, v3

    #@21
    new-instance v7, Ljava/lang/StringBuilder;

    #@23
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@26
    invoke-direct {p0, v6, v4, v7, v2}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v6

    #@2a
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2d
    move-result-object v6

    #@2e
    aput-object v6, v5, v3

    #@30
    .line 998
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@33
    move-result v6

    #@34
    if-nez v6, :cond_0

    #@36
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@39
    move-result v6

    #@3a
    if-eqz v6, :cond_1

    #@3c
    .line 999
    :cond_0
    move v1, v3

    #@3d
    .line 994
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 995
    .end local v4    # "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@42
    .restart local v4    # "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    goto :goto_1

    #@43
    .line 1002
    :cond_3
    aget-object v6, p4, v3

    #@45
    invoke-direct {p0, v6, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    #@48
    move-result-object v6

    #@49
    aput-object v6, v5, v3

    #@4b
    goto :goto_2

    #@4c
    .line 1006
    .end local v4    # "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    :cond_4
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@4f
    move-result-object v6

    #@50
    invoke-virtual {p1, v6, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;I)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    #@53
    move-result-object v0

    #@54
    .line 1009
    .local v0, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    #@57
    move-result v6

    #@58
    if-eq v6, v8, :cond_5

    #@5a
    .line 1010
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@5d
    move-result v6

    #@5e
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    #@61
    move-result v7

    #@62
    add-int/2addr v6, v7

    #@63
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@66
    move-result v7

    #@67
    add-int/2addr v6, v7

    #@68
    invoke-virtual {p3, v6}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@6b
    .line 1011
    invoke-virtual {v2}, Ljava/text/FieldPosition;->getEndIndex()I

    #@6e
    move-result v6

    #@6f
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    #@72
    move-result v7

    #@73
    add-int/2addr v6, v7

    #@74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    #@77
    move-result v7

    #@78
    add-int/2addr v6, v7

    #@79
    invoke-virtual {p3, v6}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@7c
    .line 1013
    :cond_5
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v6

    #@80
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@83
    move-result-object v6

    #@84
    return-object v6
.end method

.method private formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "duration"    # Ljava/util/Date;
    .param p2, "formatter"    # Landroid/icu/text/DateFormat;
    .param p3, "smallestField"    # Landroid/icu/text/DateFormat$Field;
    .param p4, "smallestAmount"    # Ljava/lang/Number;
    .param p5, "appendTo"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 1129
    new-instance v1, Ljava/text/FieldPosition;

    #@3
    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    #@6
    .line 1130
    .local v1, "intFieldPosition":Ljava/text/FieldPosition;
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@8
    .line 1131
    new-instance v5, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 1130
    invoke-virtual {v4, p4, v5, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1133
    .local v2, "smallestAmountFormatted":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@18
    move-result v4

    #@19
    if-nez v4, :cond_0

    #@1b
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    #@1e
    move-result v4

    #@1f
    if-nez v4, :cond_0

    #@21
    .line 1134
    new-instance v4, Ljava/lang/IllegalStateException;

    #@23
    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    #@26
    throw v4

    #@27
    .line 1138
    :cond_0
    new-instance v3, Ljava/text/FieldPosition;

    #@29
    invoke-direct {v3, p3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@2c
    .line 1140
    .local v3, "smallestFieldPosition":Ljava/text/FieldPosition;
    new-instance v4, Ljava/lang/StringBuffer;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@31
    .line 1139
    invoke-virtual {p2, p1, v4, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 1143
    .local v0, "draft":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_1

    #@3f
    .line 1144
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 1146
    :cond_1
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@48
    move-result v4

    #@49
    invoke-virtual {p5, v0, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@4c
    .line 1149
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@4f
    move-result v4

    #@50
    invoke-virtual {p5, v2, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@53
    .line 1155
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@56
    move-result v4

    #@57
    .line 1156
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@5a
    move-result v5

    #@5b
    .line 1153
    invoke-virtual {p5, v0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@5e
    .line 1161
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    #@61
    move-result v4

    #@62
    .line 1162
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@65
    move-result v5

    #@66
    .line 1159
    invoke-virtual {p5, v2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@69
    .line 1163
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@6c
    move-result v4

    #@6d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@70
    move-result v5

    #@71
    invoke-virtual {p5, v0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@74
    .line 1168
    :goto_0
    return-object p5

    #@75
    .line 1166
    :cond_2
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@78
    goto :goto_0
.end method

.method private formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 11
    .param p1, "hms"    # [Ljava/lang/Number;
    .param p2, "appendable"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 1059
    const/4 v10, -0x1

    #@1
    .line 1060
    .local v10, "startIndex":I
    const/4 v6, -0x1

    #@2
    .line 1061
    .local v6, "endIndex":I
    const/4 v7, 0x0

    #@3
    .local v7, "i":I
    :goto_0
    array-length v0, p1

    #@4
    if-ge v7, v0, :cond_2

    #@6
    .line 1062
    aget-object v0, p1, v7

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1063
    move v6, v7

    #@b
    .line 1064
    const/4 v0, -0x1

    #@c
    if-ne v10, v0, :cond_0

    #@e
    .line 1065
    move v10, v6

    #@f
    .line 1061
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1069
    :cond_1
    const/4 v0, 0x0

    #@13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@16
    move-result-object v0

    #@17
    aput-object v0, p1, v7

    #@19
    goto :goto_1

    #@1a
    .line 1073
    :cond_2
    const/4 v0, 0x0

    #@1b
    aget-object v0, p1, v0

    #@1d
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@20
    move-result-wide v2

    #@21
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@24
    move-result-wide v2

    #@25
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    #@27
    mul-double/2addr v2, v4

    #@28
    .line 1074
    const/4 v0, 0x1

    #@29
    aget-object v0, p1, v0

    #@2b
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@2e
    move-result-wide v4

    #@2f
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@32
    move-result-wide v4

    #@33
    .line 1073
    add-double/2addr v2, v4

    #@34
    .line 1074
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    #@36
    .line 1073
    mul-double/2addr v2, v4

    #@37
    .line 1075
    const/4 v0, 0x2

    #@38
    aget-object v0, p1, v0

    #@3a
    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    #@3d
    move-result-wide v4

    #@3e
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    #@41
    move-result-wide v4

    #@42
    .line 1073
    add-double/2addr v2, v4

    #@43
    .line 1075
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@48
    .line 1073
    mul-double/2addr v2, v4

    #@49
    double-to-long v8, v2

    #@4a
    .line 1076
    .local v8, "millis":J
    new-instance v1, Ljava/util/Date;

    #@4c
    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@4f
    .line 1078
    .local v1, "d":Ljava/util/Date;
    if-nez v10, :cond_3

    #@51
    const/4 v0, 0x2

    #@52
    if-ne v6, v0, :cond_3

    #@54
    .line 1081
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@56
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Landroid/icu/text/DateFormat;

    #@59
    move-result-object v2

    #@5a
    .line 1082
    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    #@5c
    .line 1083
    aget-object v4, p1, v6

    #@5e
    move-object v0, p0

    #@5f
    move-object v5, p2

    #@60
    .line 1079
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    return-object v0

    #@65
    .line 1087
    :cond_3
    const/4 v0, 0x1

    #@66
    if-ne v10, v0, :cond_4

    #@68
    const/4 v0, 0x2

    #@69
    if-ne v6, v0, :cond_4

    #@6b
    .line 1090
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@6d
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Landroid/icu/text/DateFormat;

    #@70
    move-result-object v2

    #@71
    .line 1091
    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    #@73
    .line 1092
    aget-object v4, p1, v6

    #@75
    move-object v0, p0

    #@76
    move-object v5, p2

    #@77
    .line 1088
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 1096
    :cond_4
    if-nez v10, :cond_5

    #@7e
    const/4 v0, 0x1

    #@7f
    if-ne v6, v0, :cond_5

    #@81
    .line 1099
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@83
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Landroid/icu/text/DateFormat;

    #@86
    move-result-object v2

    #@87
    .line 1100
    sget-object v3, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    #@89
    .line 1101
    aget-object v4, p1, v6

    #@8b
    move-object v0, p0

    #@8c
    move-object v5, p2

    #@8d
    .line 1097
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    return-object v0

    #@92
    .line 1104
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    #@94
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    #@97
    throw v0
.end method

.method private static fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 2
    .param p0, "ordinal"    # I

    #@0
    .prologue
    .line 1258
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3
    move-result-object v0

    #@4
    .line 1259
    .local v0, "values":[Landroid/icu/text/MeasureFormat$FormatWidth;
    if-ltz p0, :cond_0

    #@6
    array-length v1, v0

    #@7
    if-lt p0, v1, :cond_1

    #@9
    .line 1260
    :cond_0
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@b
    return-object v1

    #@c
    .line 1262
    :cond_1
    aget-object v1, v0, p0

    #@e
    return-object v1
.end method

.method public static getCurrencyFormat()Landroid/icu/text/MeasureFormat;
    .locals 1

    #@0
    .prologue
    .line 663
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 640
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method

.method public static getCurrencyFormat(Ljava/util/Locale;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 652
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    .line 226
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 13
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 252
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@4
    move-result-object v4

    #@5
    .line 253
    .local v4, "rules":Landroid/icu/text/PluralRules;
    const/4 v6, 0x0

    #@6
    .line 254
    .local v6, "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    #@8
    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v11

    #@c
    check-cast v11, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@e
    .line 255
    .local v11, "data":Landroid/icu/text/MeasureFormat$MeasureFormatData;
    if-nez v11, :cond_0

    #@10
    .line 256
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@13
    move-result-object v11

    #@14
    .line 257
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    #@16
    invoke-virtual {v0, p0, v11}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@19
    .line 259
    :cond_0
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1b
    if-ne p1, v0, :cond_1

    #@1d
    .line 260
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    #@1f
    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    .end local v6    # "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    check-cast v6, Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@25
    .line 261
    .local v6, "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    if-nez v6, :cond_1

    #@27
    .line 262
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@2a
    move-result-object v6

    #@2b
    .line 263
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    #@2d
    invoke-virtual {v0, p0, v6}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@30
    .line 266
    .end local v6    # "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@33
    move-result-object v12

    #@34
    .line 267
    .local v12, "intFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual {v12, v1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@37
    .line 268
    invoke-virtual {v12, v1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@3a
    .line 269
    const/4 v0, 0x1

    #@3b
    invoke-virtual {v12, v0}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    #@3e
    .line 270
    new-instance v0, Landroid/icu/text/MeasureFormat;

    #@40
    .line 273
    new-instance v3, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@42
    invoke-direct {v3, p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@45
    .line 275
    iget-object v5, v11, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@47
    .line 277
    new-instance v7, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@49
    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    #@4c
    move-result v1

    #@4d
    invoke-static {p0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@50
    move-result-object v1

    #@51
    invoke-direct {v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@54
    .line 278
    new-instance v8, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@56
    invoke-direct {v8, v12}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@59
    .line 279
    iget-object v9, v11, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPerUnitPattern:Ljava/util/Map;

    #@5b
    .line 280
    iget-object v10, v11, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@5d
    move-object v1, p0

    #@5e
    move-object v2, p1

    #@5f
    .line 270
    invoke-direct/range {v0 .. v10}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Ljava/util/Map;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/util/Map;Ljava/util/EnumMap;)V

    #@62
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    .line 239
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 294
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/impl/SimplePatternFormatter;
    .locals 8
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1280
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    const-string/jumbo v7, "fr"

    #@7
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 1281
    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@f
    invoke-static {v6, p1}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/impl/SimplePatternFormatter;

    #@12
    move-result-object v6

    #@13
    return-object v6

    #@14
    .line 1283
    :cond_0
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@16
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@19
    move-result-object v4

    #@1a
    check-cast v4, Landroid/icu/impl/SimplePatternFormatter;

    #@1c
    .line 1284
    .local v4, "result":Landroid/icu/impl/SimplePatternFormatter;
    if-nez v4, :cond_2

    #@1e
    .line 1286
    const-string/jumbo v6, "android/icu/impl/data/icudt55b"

    #@21
    .line 1285
    invoke-static {v6, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@24
    move-result-object v2

    #@25
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@27
    .line 1287
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@2a
    move-result-object v3

    #@2b
    .line 1288
    .local v3, "realLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@2e
    move-result v6

    #@2f
    if-nez v6, :cond_1

    #@31
    .line 1289
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@33
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@36
    move-result-object v4

    #@37
    .end local v4    # "result":Landroid/icu/impl/SimplePatternFormatter;
    check-cast v4, Landroid/icu/impl/SimplePatternFormatter;

    #@39
    .line 1290
    .restart local v4    # "result":Landroid/icu/impl/SimplePatternFormatter;
    if-eqz v4, :cond_1

    #@3b
    .line 1291
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@3d
    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@40
    .line 1292
    return-object v4

    #@41
    .line 1297
    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@44
    move-result-object v1

    #@45
    .line 1299
    .local v1, "ns":Landroid/icu/text/NumberingSystem;
    const/4 v5, 0x0

    #@46
    .line 1301
    .local v5, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@48
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4b
    const-string/jumbo v7, "NumberElements/"

    #@4e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v6

    #@52
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@55
    move-result-object v7

    #@56
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v6

    #@5a
    const-string/jumbo v7, "/miscPatterns/range"

    #@5d
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v6

    #@61
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v6

    #@65
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@68
    move-result-object v5

    #@69
    .line 1305
    .local v5, "resultString":Ljava/lang/String;
    :goto_0
    invoke-static {v5}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@6c
    move-result-object v4

    #@6d
    .line 1306
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@6f
    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@72
    .line 1307
    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@75
    move-result v6

    #@76
    if-nez v6, :cond_2

    #@78
    .line 1308
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@7a
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@7d
    .line 1311
    .end local v1    # "ns":Landroid/icu/text/NumberingSystem;
    .end local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "realLocale":Landroid/icu/util/ULocale;
    .end local v5    # "resultString":Ljava/lang/String;
    :cond_2
    return-object v4

    #@7e
    .line 1302
    .restart local v1    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v3    # "realLocale":Landroid/icu/util/ULocale;
    .local v5, "resultString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@7f
    .line 1303
    .local v0, "ex":Ljava/util/MissingResourceException;
    const-string/jumbo v6, "NumberElements/latn/patterns/range"

    #@82
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@85
    move-result-object v5

    #@86
    .local v5, "resultString":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getRangePattern(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 1
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1324
    invoke-static {p0, p1}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/impl/SimplePatternFormatter;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/impl/SimplePatternFormatter;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method private static loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;
    .locals 29
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 755
    new-instance v4, Landroid/icu/text/QuantityFormatter$Builder;

    #@2
    invoke-direct {v4}, Landroid/icu/text/QuantityFormatter$Builder;-><init>()V

    #@5
    .line 757
    .local v4, "builder":Landroid/icu/text/QuantityFormatter$Builder;
    new-instance v21, Ljava/util/HashMap;

    #@7
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    #@a
    .line 759
    .local v21, "unitToStyleToCountToFormat":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;>;"
    new-instance v22, Ljava/util/HashMap;

    #@c
    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    #@f
    .line 760
    .local v22, "unitToStyleToPerUnitPattern":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/util/MeasureUnit;Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;>;"
    const-string/jumbo v25, "android/icu/impl/data/icudt55b/unit"

    #@12
    move-object/from16 v0, v25

    #@14
    move-object/from16 v1, p0

    #@16
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@19
    move-result-object v14

    #@1a
    check-cast v14, Landroid/icu/impl/ICUResourceBundle;

    #@1c
    .line 761
    .local v14, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v17, Ljava/util/EnumMap;

    #@1e
    const-class v25, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@20
    move-object/from16 v0, v17

    #@22
    move-object/from16 v1, v25

    #@24
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@27
    .line 762
    .local v17, "styleToPerPattern":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;"
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2a
    move-result-object v26

    #@2b
    const/16 v25, 0x0

    #@2d
    move-object/from16 v0, v26

    #@2f
    array-length v0, v0

    #@30
    move/from16 v27, v0

    #@32
    :goto_0
    move/from16 v0, v25

    #@34
    move/from16 v1, v27

    #@36
    if-ge v0, v1, :cond_0

    #@38
    aget-object v15, v26, v25

    #@3a
    .line 764
    .local v15, "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    :try_start_0
    iget-object v0, v15, Landroid/icu/text/MeasureFormat$FormatWidth;->resourceKey:Ljava/lang/String;

    #@3c
    move-object/from16 v28, v0

    #@3e
    move-object/from16 v0, v28

    #@40
    invoke-virtual {v14, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@43
    move-result-object v23

    #@44
    .line 765
    .local v23, "unitTypeRes":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v28, "compound"

    #@47
    move-object/from16 v0, v23

    #@49
    move-object/from16 v1, v28

    #@4b
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@4e
    move-result-object v5

    #@4f
    .line 766
    .local v5, "compoundRes":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v28, "per"

    #@52
    move-object/from16 v0, v28

    #@54
    invoke-virtual {v5, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@57
    move-result-object v12

    #@58
    .line 767
    .local v12, "perRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v12}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@5b
    move-result-object v28

    #@5c
    invoke-static/range {v28 .. v28}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@5f
    move-result-object v28

    #@60
    move-object/from16 v0, v17

    #@62
    move-object/from16 v1, v28

    #@64
    invoke-virtual {v0, v15, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    #@67
    .line 762
    .end local v5    # "compoundRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v12    # "perRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v23    # "unitTypeRes":Landroid/icu/impl/ICUResourceBundle;
    :goto_1
    add-int/lit8 v25, v25, 0x1

    #@69
    goto :goto_0

    #@6a
    .line 773
    .end local v15    # "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    :cond_0
    invoke-static/range {v17 .. v17}, Landroid/icu/text/MeasureFormat;->fillInStyleMap(Ljava/util/Map;)Z

    #@6d
    .line 774
    invoke-static {}, Landroid/icu/util/MeasureUnit;->getAvailable()Ljava/util/Set;

    #@70
    move-result-object v25

    #@71
    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@74
    move-result-object v20

    #@75
    .local v20, "unit$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    #@78
    move-result v25

    #@79
    if-eqz v25, :cond_8

    #@7b
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@7e
    move-result-object v19

    #@7f
    check-cast v19, Landroid/icu/util/MeasureUnit;

    #@81
    .line 776
    .local v19, "unit":Landroid/icu/util/MeasureUnit;
    move-object/from16 v0, v19

    #@83
    instance-of v0, v0, Landroid/icu/util/Currency;

    #@85
    move/from16 v25, v0

    #@87
    if-nez v25, :cond_1

    #@89
    .line 779
    move-object/from16 v0, v21

    #@8b
    move-object/from16 v1, v19

    #@8d
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@90
    move-result-object v16

    #@91
    check-cast v16, Ljava/util/EnumMap;

    #@93
    .line 780
    .local v16, "styleToCountToFormat":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    if-nez v16, :cond_2

    #@95
    .line 781
    new-instance v16, Ljava/util/EnumMap;

    #@97
    .end local v16    # "styleToCountToFormat":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    const-class v25, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@99
    move-object/from16 v0, v16

    #@9b
    move-object/from16 v1, v25

    #@9d
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@a0
    .restart local v16    # "styleToCountToFormat":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    move-object/from16 v0, v21

    #@a2
    move-object/from16 v1, v19

    #@a4
    move-object/from16 v2, v16

    #@a6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a9
    .line 783
    :cond_2
    new-instance v18, Ljava/util/EnumMap;

    #@ab
    const-class v25, Landroid/icu/text/MeasureFormat$FormatWidth;

    #@ad
    move-object/from16 v0, v18

    #@af
    move-object/from16 v1, v25

    #@b1
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    #@b4
    .line 784
    .local v18, "styleToPerUnitPattern":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;"
    move-object/from16 v0, v22

    #@b6
    move-object/from16 v1, v19

    #@b8
    move-object/from16 v2, v18

    #@ba
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bd
    .line 785
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@c0
    move-result-object v26

    #@c1
    const/16 v25, 0x0

    #@c3
    move-object/from16 v0, v26

    #@c5
    array-length v0, v0

    #@c6
    move/from16 v27, v0

    #@c8
    :goto_3
    move/from16 v0, v25

    #@ca
    move/from16 v1, v27

    #@cc
    if-ge v0, v1, :cond_7

    #@ce
    aget-object v15, v26, v25

    #@d0
    .line 787
    .restart local v15    # "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    :try_start_1
    iget-object v0, v15, Landroid/icu/text/MeasureFormat$FormatWidth;->resourceKey:Ljava/lang/String;

    #@d2
    move-object/from16 v28, v0

    #@d4
    move-object/from16 v0, v28

    #@d6
    invoke-virtual {v14, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@d9
    move-result-object v23

    #@da
    .line 788
    .restart local v23    # "unitTypeRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/MeasureUnit;->getType()Ljava/lang/String;

    #@dd
    move-result-object v28

    #@de
    move-object/from16 v0, v23

    #@e0
    move-object/from16 v1, v28

    #@e2
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@e5
    move-result-object v24

    #@e6
    .line 789
    .local v24, "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual/range {v19 .. v19}, Landroid/icu/util/MeasureUnit;->getSubtype()Ljava/lang/String;

    #@e9
    move-result-object v28

    #@ea
    move-object/from16 v0, v24

    #@ec
    move-object/from16 v1, v28

    #@ee
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@f1
    move-result-object v11

    #@f2
    .line 790
    .local v11, "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v4}, Landroid/icu/text/QuantityFormatter$Builder;->reset()Landroid/icu/text/QuantityFormatter$Builder;

    #@f5
    .line 791
    const/4 v8, 0x0

    #@f6
    .line 792
    .local v8, "havePluralItem":Z
    invoke-virtual {v11}, Landroid/icu/impl/ICUResourceBundle;->getSize()I
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    #@f9
    move-result v10

    #@fa
    .line 793
    .local v10, "len":I
    const/4 v9, 0x0

    #@fb
    .local v9, "i":I
    :goto_4
    if-ge v9, v10, :cond_6

    #@fd
    .line 796
    :try_start_2
    invoke-virtual {v11, v9}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_0

    #@100
    move-result-object v6

    #@101
    .line 800
    .local v6, "countBundle":Landroid/icu/util/UResourceBundle;
    :try_start_3
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@104
    move-result-object v13

    #@105
    .line 801
    .local v13, "resKey":Ljava/lang/String;
    const-string/jumbo v28, "dnam"

    #@108
    move-object/from16 v0, v28

    #@10a
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10d
    move-result v28

    #@10e
    if-eqz v28, :cond_3

    #@110
    .line 793
    .end local v6    # "countBundle":Landroid/icu/util/UResourceBundle;
    .end local v13    # "resKey":Ljava/lang/String;
    :goto_5
    add-int/lit8 v9, v9, 0x1

    #@112
    goto :goto_4

    #@113
    .line 797
    :catch_0
    move-exception v7

    #@114
    .local v7, "e":Ljava/util/MissingResourceException;
    goto :goto_5

    #@115
    .line 804
    .end local v7    # "e":Ljava/util/MissingResourceException;
    .restart local v6    # "countBundle":Landroid/icu/util/UResourceBundle;
    .restart local v13    # "resKey":Ljava/lang/String;
    :cond_3
    const-string/jumbo v28, "per"

    #@118
    move-object/from16 v0, v28

    #@11a
    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11d
    move-result v28

    #@11e
    if-eqz v28, :cond_5

    #@120
    .line 806
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@123
    move-result-object v28

    #@124
    invoke-static/range {v28 .. v28}, Landroid/icu/impl/SimplePatternFormatter;->compile(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@127
    move-result-object v28

    #@128
    .line 805
    move-object/from16 v0, v18

    #@12a
    move-object/from16 v1, v28

    #@12c
    invoke-virtual {v0, v15, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    #@12f
    goto :goto_5

    #@130
    .line 817
    .end local v6    # "countBundle":Landroid/icu/util/UResourceBundle;
    .end local v8    # "havePluralItem":Z
    .end local v9    # "i":I
    .end local v10    # "len":I
    .end local v11    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v13    # "resKey":Ljava/lang/String;
    .end local v23    # "unitTypeRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v24    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    :catch_1
    move-exception v7

    #@131
    .line 785
    :cond_4
    :goto_6
    add-int/lit8 v25, v25, 0x1

    #@133
    goto :goto_3

    #@134
    .line 809
    .restart local v6    # "countBundle":Landroid/icu/util/UResourceBundle;
    .restart local v8    # "havePluralItem":Z
    .restart local v9    # "i":I
    .restart local v10    # "len":I
    .restart local v11    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .restart local v13    # "resKey":Ljava/lang/String;
    .restart local v23    # "unitTypeRes":Landroid/icu/impl/ICUResourceBundle;
    .restart local v24    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    :cond_5
    const/4 v8, 0x1

    #@135
    .line 810
    invoke-virtual {v6}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@138
    move-result-object v28

    #@139
    move-object/from16 v0, v28

    #@13b
    invoke-virtual {v4, v13, v0}, Landroid/icu/text/QuantityFormatter$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/text/QuantityFormatter$Builder;

    #@13e
    goto :goto_5

    #@13f
    .line 812
    .end local v6    # "countBundle":Landroid/icu/util/UResourceBundle;
    .end local v13    # "resKey":Ljava/lang/String;
    :cond_6
    if-eqz v8, :cond_4

    #@141
    .line 815
    invoke-virtual {v4}, Landroid/icu/text/QuantityFormatter$Builder;->build()Landroid/icu/text/QuantityFormatter;

    #@144
    move-result-object v28

    #@145
    move-object/from16 v0, v16

    #@147
    move-object/from16 v1, v28

    #@149
    invoke-virtual {v0, v15, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@14c
    goto :goto_6

    #@14d
    .line 822
    .end local v8    # "havePluralItem":Z
    .end local v9    # "i":I
    .end local v10    # "len":I
    .end local v11    # "oneUnitRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v15    # "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    .end local v23    # "unitTypeRes":Landroid/icu/impl/ICUResourceBundle;
    .end local v24    # "unitsRes":Landroid/icu/impl/ICUResourceBundle;
    :cond_7
    invoke-static/range {v16 .. v16}, Landroid/icu/text/MeasureFormat;->fillInStyleMap(Ljava/util/Map;)Z

    #@150
    .line 823
    invoke-static/range {v18 .. v18}, Landroid/icu/text/MeasureFormat;->fillInStyleMap(Ljava/util/Map;)Z

    #@153
    goto/16 :goto_2

    #@155
    .line 825
    .end local v16    # "styleToCountToFormat":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    .end local v18    # "styleToPerUnitPattern":Ljava/util/EnumMap;, "Ljava/util/EnumMap<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;"
    .end local v19    # "unit":Landroid/icu/util/MeasureUnit;
    :cond_8
    new-instance v25, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@157
    move-object/from16 v0, v25

    #@159
    move-object/from16 v1, v21

    #@15b
    move-object/from16 v2, v22

    #@15d
    move-object/from16 v3, v17

    #@15f
    invoke-direct {v0, v1, v2, v3}, Landroid/icu/text/MeasureFormat$MeasureFormatData;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/EnumMap;)V

    #@162
    return-object v25

    #@163
    .line 768
    .end local v20    # "unit$iterator":Ljava/util/Iterator;
    .restart local v15    # "styleItem":Landroid/icu/text/MeasureFormat$FormatWidth;
    :catch_2
    move-exception v7

    #@164
    .restart local v7    # "e":Ljava/util/MissingResourceException;
    goto/16 :goto_1
.end method

.method private static loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 4
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1019
    const-string/jumbo v1, "durationUnits/%s"

    #@3
    const/4 v2, 0x1

    #@4
    new-array v2, v2, [Ljava/lang/Object;

    #@6
    const/4 v3, 0x0

    #@7
    aput-object p1, v2, v3

    #@9
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@10
    move-result-object p0

    #@11
    .line 1021
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    #@13
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    const-string/jumbo v2, "h"

    #@1a
    const-string/jumbo v3, "H"

    #@1d
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    #@20
    move-result-object v1

    #@21
    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@24
    .line 1022
    .local v0, "result":Landroid/icu/text/DateFormat;
    sget-object v1, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    #@26
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@29
    .line 1023
    return-object v0
.end method

.method private static loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;
    .locals 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 743
    const-string/jumbo v1, "android/icu/impl/data/icudt55b/unit"

    #@3
    .line 742
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 744
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@b
    .line 745
    const-string/jumbo v2, "hm"

    #@e
    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@11
    move-result-object v2

    #@12
    .line 746
    const-string/jumbo v3, "ms"

    #@15
    invoke-static {v0, v3}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@18
    move-result-object v3

    #@19
    .line 747
    const-string/jumbo v4, "hms"

    #@1c
    invoke-static {v0, v4}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@1f
    move-result-object v4

    #@20
    .line 744
    invoke-direct {v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$NumericFormatters;-><init>(Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat;)V

    #@23
    return-object v1
.end method

.method private static toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;
    .locals 13
    .param p0, "measures"    # [Landroid/icu/util/Measure;

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 1032
    const/4 v5, 0x3

    #@2
    new-array v4, v5, [Ljava/lang/Number;

    #@4
    .line 1033
    .local v4, "result":[Ljava/lang/Number;
    const/4 v2, -0x1

    #@5
    .line 1034
    .local v2, "lastIdx":I
    const/4 v5, 0x0

    #@6
    array-length v6, p0

    #@7
    :goto_0
    if-ge v5, v6, :cond_3

    #@9
    aget-object v3, p0, v5

    #@b
    .line 1035
    .local v3, "m":Landroid/icu/util/Measure;
    invoke-virtual {v3}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@e
    move-result-object v7

    #@f
    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    #@12
    move-result-wide v8

    #@13
    const-wide/16 v10, 0x0

    #@15
    cmpg-double v7, v8, v10

    #@17
    if-gez v7, :cond_0

    #@19
    .line 1036
    return-object v12

    #@1a
    .line 1038
    :cond_0
    sget-object v7, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    #@1c
    invoke-virtual {v3}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@1f
    move-result-object v8

    #@20
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v1

    #@24
    check-cast v1, Ljava/lang/Integer;

    #@26
    .line 1039
    .local v1, "idxObj":Ljava/lang/Integer;
    if-nez v1, :cond_1

    #@28
    .line 1040
    return-object v12

    #@29
    .line 1042
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v0

    #@2d
    .line 1043
    .local v0, "idx":I
    if-gt v0, v2, :cond_2

    #@2f
    .line 1045
    return-object v12

    #@30
    .line 1047
    :cond_2
    move v2, v0

    #@31
    .line 1048
    invoke-virtual {v3}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v4, v0

    #@37
    .line 1034
    add-int/lit8 v5, v5, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1050
    .end local v0    # "idx":I
    .end local v1    # "idxObj":Ljava/lang/Integer;
    .end local v3    # "m":Landroid/icu/util/Measure;
    :cond_3
    return-object v4
.end method

.method private withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I
    .locals 11
    .param p1, "formatted"    # Ljava/lang/CharSequence;
    .param p2, "perUnit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    const/4 v9, 0x0

    #@2
    .line 850
    new-array v1, v10, [I

    #@4
    .line 852
    .local v1, "offsets":[I
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToPerUnitPattern:Ljava/util/Map;

    #@6
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v6

    #@a
    check-cast v6, Ljava/util/Map;

    #@c
    .line 853
    .local v6, "styleToPerUnitPattern":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/impl/SimplePatternFormatter;>;"
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@e
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@11
    move-result-object v3

    #@12
    check-cast v3, Landroid/icu/impl/SimplePatternFormatter;

    #@14
    .line 854
    .local v3, "perUnitPattern":Landroid/icu/impl/SimplePatternFormatter;
    if-eqz v3, :cond_0

    #@16
    .line 855
    new-array v7, v10, [Ljava/lang/CharSequence;

    #@18
    aput-object p1, v7, v9

    #@1a
    invoke-virtual {v3, p3, v1, v7}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@1d
    .line 856
    aget v7, v1, v9

    #@1f
    return v7

    #@20
    .line 858
    :cond_0
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->styleToPerPattern:Ljava/util/EnumMap;

    #@22
    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@24
    invoke-virtual {v7, v8}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    move-result-object v2

    #@28
    check-cast v2, Landroid/icu/impl/SimplePatternFormatter;

    #@2a
    .line 859
    .local v2, "perPattern":Landroid/icu/impl/SimplePatternFormatter;
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@2c
    invoke-interface {v7, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2f
    move-result-object v5

    #@30
    check-cast v5, Ljava/util/Map;

    #@32
    .line 860
    .local v5, "styleToCountToFormat":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@34
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v0

    #@38
    check-cast v0, Landroid/icu/text/QuantityFormatter;

    #@3a
    .line 861
    .local v0, "countToFormat":Landroid/icu/text/QuantityFormatter;
    const-string/jumbo v7, "one"

    #@3d
    invoke-virtual {v0, v7}, Landroid/icu/text/QuantityFormatter;->getByVariant(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@40
    move-result-object v7

    #@41
    invoke-virtual {v7}, Landroid/icu/impl/SimplePatternFormatter;->getPatternWithNoPlaceholders()Ljava/lang/String;

    #@44
    move-result-object v7

    #@45
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 862
    .local v4, "perUnitString":Ljava/lang/String;
    const/4 v7, 0x2

    #@4a
    new-array v7, v7, [Ljava/lang/CharSequence;

    #@4c
    aput-object p1, v7, v9

    #@4e
    aput-object v4, v7, v10

    #@50
    invoke-virtual {v2, p3, v1, v7}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@53
    .line 863
    aget v7, v1, v9

    #@55
    return v7
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    #@0
    .prologue
    .line 1172
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    #@2
    .line 1173
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@a
    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x0

    #@f
    .line 1172
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    #@12
    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 584
    if-ne p0, p1, :cond_0

    #@3
    .line 585
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 587
    :cond_0
    instance-of v2, p1, Landroid/icu/text/MeasureFormat;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 588
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 590
    check-cast v0, Landroid/icu/text/MeasureFormat;

    #@d
    .line 592
    .local v0, "rhs":Landroid/icu/text/MeasureFormat;
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@14
    move-result-object v3

    #@15
    if-ne v2, v3, :cond_2

    #@17
    .line 593
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@1e
    move-result-object v3

    #@1f
    invoke-virtual {v2, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    .line 592
    if-eqz v2, :cond_2

    #@25
    .line 594
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v1, v2}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    #@30
    move-result v1

    #@31
    .line 592
    :cond_2
    return v1
.end method

.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 10
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 317
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v7

    #@4
    .line 319
    .local v7, "prevLength":I
    new-instance v1, Ljava/text/FieldPosition;

    #@6
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@9
    move-result-object v8

    #@a
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    #@d
    move-result v9

    #@e
    invoke-direct {v1, v8, v9}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@11
    .line 320
    .local v1, "fpos":Ljava/text/FieldPosition;
    instance-of v8, p1, Ljava/util/Collection;

    #@13
    if-eqz v8, :cond_4

    #@15
    move-object v0, p1

    #@16
    .line 321
    check-cast v0, Ljava/util/Collection;

    #@18
    .line 322
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@1b
    move-result v8

    #@1c
    new-array v4, v8, [Landroid/icu/util/Measure;

    #@1e
    .line 323
    .local v4, "measures":[Landroid/icu/util/Measure;
    const/4 v2, 0x0

    #@1f
    .line 324
    .local v2, "idx":I
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@22
    move-result-object v6

    #@23
    .local v6, "o$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    #@26
    move-result v8

    #@27
    if-eqz v8, :cond_1

    #@29
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2c
    move-result-object v5

    #@2d
    .line 325
    .local v5, "o":Ljava/lang/Object;
    instance-of v8, v5, Landroid/icu/util/Measure;

    #@2f
    if-nez v8, :cond_0

    #@31
    .line 326
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@33
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@36
    move-result-object v9

    #@37
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v8

    #@3b
    .line 328
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@3d
    .end local v2    # "idx":I
    .local v3, "idx":I
    check-cast v5, Landroid/icu/util/Measure;

    #@3f
    .end local v5    # "o":Ljava/lang/Object;
    aput-object v5, v4, v2

    #@41
    move v2, v3

    #@42
    .end local v3    # "idx":I
    .restart local v2    # "idx":I
    goto :goto_0

    #@43
    .line 330
    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    #@45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@48
    invoke-virtual {p0, v8, v1, v4}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v8

    #@4c
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@4f
    .line 338
    .end local v0    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v2    # "idx":I
    .end local v4    # "measures":[Landroid/icu/util/Measure;
    .end local v6    # "o$iterator":Ljava/util/Iterator;
    .end local p1    # "obj":Ljava/lang/Object;
    :goto_1
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@52
    move-result v8

    #@53
    if-nez v8, :cond_2

    #@55
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    #@58
    move-result v8

    #@59
    if-eqz v8, :cond_3

    #@5b
    .line 339
    :cond_2
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@5e
    move-result v8

    #@5f
    add-int/2addr v8, v7

    #@60
    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@63
    .line 340
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    #@66
    move-result v8

    #@67
    add-int/2addr v8, v7

    #@68
    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@6b
    .line 342
    :cond_3
    return-object p2

    #@6c
    .line 331
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v8, p1, [Landroid/icu/util/Measure;

    #@6e
    if-eqz v8, :cond_5

    #@70
    .line 332
    new-instance v8, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    check-cast p1, [Landroid/icu/util/Measure;

    #@77
    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, v8, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v8

    #@7b
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@7e
    goto :goto_1

    #@7f
    .line 333
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v8, p1, Landroid/icu/util/Measure;

    #@81
    if-eqz v8, :cond_6

    #@83
    .line 334
    check-cast p1, Landroid/icu/util/Measure;

    #@85
    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@87
    new-instance v9, Ljava/lang/StringBuilder;

    #@89
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@8c
    invoke-direct {p0, p1, v8, v9, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@8f
    move-result-object v8

    #@90
    invoke-virtual {p2, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    #@93
    goto :goto_1

    #@94
    .line 336
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_6
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@96
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@99
    move-result-object v9

    #@9a
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9d
    throw v8
.end method

.method public formatMeasurePerUnit(Landroid/icu/util/Measure;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .locals 6
    .param p1, "measure"    # Landroid/icu/util/Measure;
    .param p2, "perUnit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 510
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@3
    move-result-object v4

    #@4
    .line 509
    invoke-static {v4, p2}, Landroid/icu/util/MeasureUnit;->resolveUnitPerUnit(Landroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    #@7
    move-result-object v3

    #@8
    .line 511
    .local v3, "resolvedUnit":Landroid/icu/util/MeasureUnit;
    if-eqz v3, :cond_0

    #@a
    .line 512
    new-instance v1, Landroid/icu/util/Measure;

    #@c
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@f
    move-result-object v4

    #@10
    invoke-direct {v1, v4, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    #@13
    .line 513
    .local v1, "newMeasure":Landroid/icu/util/Measure;
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@15
    invoke-direct {p0, v1, v4, p3, p4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    return-object v4

    #@1a
    .line 515
    .end local v1    # "newMeasure":Landroid/icu/util/Measure;
    :cond_0
    new-instance v0, Ljava/text/FieldPosition;

    #@1c
    .line 516
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    #@23
    move-result v5

    #@24
    .line 515
    invoke-direct {v0, v4, v5}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@27
    .line 518
    .local v0, "fpos":Ljava/text/FieldPosition;
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@29
    new-instance v5, Ljava/lang/StringBuilder;

    #@2b
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@2e
    invoke-direct {p0, p1, v4, v5, v0}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@31
    move-result-object v4

    #@32
    .line 517
    invoke-direct {p0, v4, p2, p3}, Landroid/icu/text/MeasureFormat;->withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I

    #@35
    move-result v2

    #@36
    .line 521
    .local v2, "offset":I
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@39
    move-result v4

    #@3a
    if-nez v4, :cond_1

    #@3c
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@3f
    move-result v4

    #@40
    if-eqz v4, :cond_2

    #@42
    .line 522
    :cond_1
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@45
    move-result v4

    #@46
    add-int/2addr v4, v2

    #@47
    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4a
    .line 523
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@4d
    move-result v4

    #@4e
    add-int/2addr v4, v2

    #@4f
    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@52
    .line 525
    :cond_2
    return-object p3
.end method

.method public final formatMeasureRange(Landroid/icu/util/Measure;Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 38
    .param p1, "lowValue"    # Landroid/icu/util/Measure;
    .param p2, "highValue"    # Landroid/icu/util/Measure;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 393
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@3
    move-result-object v37

    #@4
    .line 394
    .local v37, "unit":Landroid/icu/util/MeasureUnit;
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@7
    move-result-object v4

    #@8
    move-object/from16 v0, v37

    #@a
    invoke-virtual {v0, v4}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 395
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@12
    new-instance v7, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v8, "Units must match: "

    #@1a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v7

    #@1e
    move-object/from16 v0, v37

    #@20
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v7

    #@24
    const-string/jumbo v8, " \u2260 "

    #@27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v7

    #@2b
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@2e
    move-result-object v8

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v7

    #@37
    invoke-direct {v4, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v4

    #@3b
    .line 397
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@3e
    move-result-object v29

    #@3f
    .line 398
    .local v29, "lowNumber":Ljava/lang/Number;
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@42
    move-result-object v23

    #@43
    .line 399
    .local v23, "highNumber":Ljava/lang/Number;
    move-object/from16 v0, v37

    #@45
    instance-of v0, v0, Landroid/icu/util/Currency;

    #@47
    move/from16 v24, v0

    #@49
    .line 401
    .local v24, "isCurrency":Z
    new-instance v28, Landroid/icu/text/UFieldPosition;

    #@4b
    invoke-direct/range {v28 .. v28}, Landroid/icu/text/UFieldPosition;-><init>()V

    #@4e
    .line 402
    .local v28, "lowFpos":Landroid/icu/text/UFieldPosition;
    new-instance v22, Landroid/icu/text/UFieldPosition;

    #@50
    invoke-direct/range {v22 .. v22}, Landroid/icu/text/UFieldPosition;-><init>()V

    #@53
    .line 403
    .local v22, "highFpos":Landroid/icu/text/UFieldPosition;
    const/16 v27, 0x0

    #@55
    .line 404
    .local v27, "lowFormatted":Ljava/lang/StringBuffer;
    const/16 v21, 0x0

    #@57
    .line 406
    .local v21, "highFormatted":Ljava/lang/StringBuffer;
    if-eqz v24, :cond_2

    #@59
    move-object/from16 v15, v37

    #@5b
    .line 407
    check-cast v15, Landroid/icu/util/Currency;

    #@5d
    .line 408
    .local v15, "currency":Landroid/icu/util/Currency;
    invoke-virtual {v15}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    #@60
    move-result v20

    #@61
    .line 409
    .local v20, "fracDigits":I
    move-object/from16 v0, p0

    #@63
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@65
    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    #@68
    move-result-object v4

    #@69
    invoke-virtual {v4}, Landroid/icu/text/NumberFormat;->getMaximumFractionDigits()I

    #@6c
    move-result v30

    #@6d
    .line 410
    .local v30, "maxFrac":I
    move-object/from16 v0, p0

    #@6f
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@71
    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    #@74
    move-result-object v4

    #@75
    invoke-virtual {v4}, Landroid/icu/text/NumberFormat;->getMinimumFractionDigits()I

    #@78
    move-result v31

    #@79
    .line 411
    .local v31, "minFrac":I
    move/from16 v0, v20

    #@7b
    move/from16 v1, v30

    #@7d
    if-ne v0, v1, :cond_1

    #@7f
    move/from16 v0, v20

    #@81
    move/from16 v1, v31

    #@83
    if-eq v0, v1, :cond_2

    #@85
    .line 412
    :cond_1
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@89
    invoke-virtual {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    #@8c
    move-result-object v17

    #@8d
    check-cast v17, Landroid/icu/text/DecimalFormat;

    #@8f
    .line 413
    .local v17, "currentNumberFormat":Landroid/icu/text/DecimalFormat;
    move-object/from16 v0, v17

    #@91
    move/from16 v1, v20

    #@93
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@96
    .line 414
    move-object/from16 v0, v17

    #@98
    move/from16 v1, v20

    #@9a
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@9d
    .line 415
    new-instance v4, Ljava/lang/StringBuffer;

    #@9f
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@a2
    move-object/from16 v0, v17

    #@a4
    move-object/from16 v1, v29

    #@a6
    move-object/from16 v2, v28

    #@a8
    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@ab
    move-result-object v27

    #@ac
    .line 416
    .local v27, "lowFormatted":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    #@ae
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@b1
    move-object/from16 v0, v17

    #@b3
    move-object/from16 v1, v23

    #@b5
    move-object/from16 v2, v22

    #@b7
    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/DecimalFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@ba
    move-result-object v21

    #@bb
    .line 419
    .end local v15    # "currency":Landroid/icu/util/Currency;
    .end local v17    # "currentNumberFormat":Landroid/icu/text/DecimalFormat;
    .end local v20    # "fracDigits":I
    .end local v21    # "highFormatted":Ljava/lang/StringBuffer;
    .end local v27    # "lowFormatted":Ljava/lang/StringBuffer;
    .end local v30    # "maxFrac":I
    .end local v31    # "minFrac":I
    :cond_2
    if-nez v27, :cond_3

    #@bd
    .line 420
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@c1
    new-instance v7, Ljava/lang/StringBuffer;

    #@c3
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@c6
    move-object/from16 v0, v29

    #@c8
    move-object/from16 v1, v28

    #@ca
    invoke-virtual {v4, v0, v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@cd
    move-result-object v27

    #@ce
    .line 421
    .restart local v27    # "lowFormatted":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@d2
    new-instance v7, Ljava/lang/StringBuffer;

    #@d4
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@d7
    move-object/from16 v0, v23

    #@d9
    move-object/from16 v1, v22

    #@db
    invoke-virtual {v4, v0, v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@de
    move-result-object v21

    #@df
    .line 424
    .end local v27    # "lowFormatted":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {v29 .. v29}, Ljava/lang/Number;->doubleValue()D

    #@e2
    move-result-wide v5

    #@e3
    .line 425
    .local v5, "lowDouble":D
    move-object/from16 v0, p0

    #@e5
    iget-object v11, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@e7
    new-instance v4, Landroid/icu/text/PluralRules$FixedDecimal;

    #@e9
    .line 426
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    #@ec
    move-result v7

    #@ed
    invoke-virtual/range {v28 .. v28}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    #@f0
    move-result-wide v8

    #@f1
    .line 425
    invoke-direct/range {v4 .. v9}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@f4
    invoke-virtual {v11, v4}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@f7
    move-result-object v26

    #@f8
    .line 428
    .local v26, "keywordLow":Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Number;->doubleValue()D

    #@fb
    move-result-wide v9

    #@fc
    .line 429
    .local v9, "highDouble":D
    move-object/from16 v0, p0

    #@fe
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@100
    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    #@102
    .line 430
    invoke-virtual/range {v22 .. v22}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    #@105
    move-result v11

    #@106
    invoke-virtual/range {v22 .. v22}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    #@109
    move-result-wide v12

    #@10a
    .line 429
    invoke-direct/range {v8 .. v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@10d
    invoke-virtual {v4, v8}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@110
    move-result-object v25

    #@111
    .line 432
    .local v25, "keywordHigh":Ljava/lang/String;
    invoke-static {}, Landroid/icu/text/PluralRules$Factory;->getDefaultFactory()Landroid/icu/impl/PluralRulesLoader;

    #@114
    move-result-object v4

    #@115
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@118
    move-result-object v7

    #@119
    invoke-virtual {v4, v7}, Landroid/icu/impl/PluralRulesLoader;->getPluralRanges(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRanges;

    #@11c
    move-result-object v32

    #@11d
    .line 434
    .local v32, "pluralRanges":Landroid/icu/text/PluralRanges;
    invoke-static/range {v26 .. v26}, Landroid/icu/text/PluralRules$StandardPluralCategories;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@120
    move-result-object v4

    #@121
    invoke-static/range {v25 .. v25}, Landroid/icu/text/PluralRules$StandardPluralCategories;->valueOf(Ljava/lang/String;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@124
    move-result-object v7

    #@125
    .line 433
    move-object/from16 v0, v32

    #@127
    invoke-virtual {v0, v4, v7}, Landroid/icu/text/PluralRanges;->get(Landroid/icu/text/PluralRules$StandardPluralCategories;Landroid/icu/text/PluralRules$StandardPluralCategories;)Landroid/icu/text/PluralRules$StandardPluralCategories;

    #@12a
    move-result-object v34

    #@12b
    .line 436
    .local v34, "resolvedCategory":Landroid/icu/text/PluralRules$StandardPluralCategories;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@12e
    move-result-object v4

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@133
    invoke-static {v4, v7}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/impl/SimplePatternFormatter;

    #@136
    move-result-object v33

    #@137
    .line 437
    .local v33, "rangeFormatter":Landroid/icu/impl/SimplePatternFormatter;
    const/4 v4, 0x2

    #@138
    new-array v4, v4, [Ljava/lang/CharSequence;

    #@13a
    const/4 v7, 0x0

    #@13b
    aput-object v27, v4, v7

    #@13d
    const/4 v7, 0x1

    #@13e
    aput-object v21, v4, v7

    #@140
    move-object/from16 v0, v33

    #@142
    invoke-virtual {v0, v4}, Landroid/icu/impl/SimplePatternFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    #@145
    move-result-object v18

    #@146
    .line 439
    .local v18, "formattedNumber":Ljava/lang/String;
    if-eqz v24, :cond_6

    #@148
    .line 441
    move-object/from16 v0, p0

    #@14a
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@14c
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    #@14e
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    #@151
    move-result-object v7

    #@152
    invoke-virtual {v4, v7}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;)Ljava/lang/String;

    #@155
    move-object/from16 v16, v37

    #@157
    .line 443
    check-cast v16, Landroid/icu/util/Currency;

    #@159
    .line 444
    .local v16, "currencyUnit":Landroid/icu/util/Currency;
    new-instance v35, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    .line 445
    .local v35, "result":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    #@160
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@162
    const-wide/16 v12, 0x0

    #@164
    cmpl-double v4, v5, v12

    #@166
    if-ltz v4, :cond_4

    #@168
    const/4 v4, 0x1

    #@169
    :goto_0
    invoke-virtual {v7, v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getPrefix(Z)Ljava/lang/String;

    #@16c
    move-result-object v4

    #@16d
    move-object/from16 v0, p0

    #@16f
    move-object/from16 v1, v16

    #@171
    move-object/from16 v2, v34

    #@173
    move-object/from16 v3, v35

    #@175
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules$StandardPluralCategories;Ljava/lang/StringBuilder;)V

    #@178
    .line 446
    move-object/from16 v0, v35

    #@17a
    move-object/from16 v1, v18

    #@17c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17f
    .line 447
    move-object/from16 v0, p0

    #@181
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@183
    const-wide/16 v12, 0x0

    #@185
    cmpl-double v4, v9, v12

    #@187
    if-ltz v4, :cond_5

    #@189
    const/4 v4, 0x1

    #@18a
    :goto_1
    invoke-virtual {v7, v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getSuffix(Z)Ljava/lang/String;

    #@18d
    move-result-object v4

    #@18e
    move-object/from16 v0, p0

    #@190
    move-object/from16 v1, v16

    #@192
    move-object/from16 v2, v34

    #@194
    move-object/from16 v3, v35

    #@196
    invoke-direct {v0, v4, v1, v2, v3}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/text/PluralRules$StandardPluralCategories;Ljava/lang/StringBuilder;)V

    #@199
    .line 448
    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19c
    move-result-object v4

    #@19d
    return-object v4

    #@19e
    .line 445
    :cond_4
    const/4 v4, 0x0

    #@19f
    goto :goto_0

    #@1a0
    .line 447
    :cond_5
    const/4 v4, 0x0

    #@1a1
    goto :goto_1

    #@1a2
    .line 459
    .end local v16    # "currencyUnit":Landroid/icu/util/Currency;
    .end local v35    # "result":Ljava/lang/StringBuilder;
    :cond_6
    move-object/from16 v0, p0

    #@1a4
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@1a6
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@1a9
    move-result-object v7

    #@1aa
    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1ad
    move-result-object v36

    #@1ae
    check-cast v36, Ljava/util/Map;

    #@1b0
    .line 460
    .local v36, "styleToCountToFormat":Ljava/util/Map;, "Ljava/util/Map<Lcom/ibm/icu/text/MeasureFormat$FormatWidth;Lcom/ibm/icu/text/QuantityFormatter;>;"
    move-object/from16 v0, p0

    #@1b2
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1b4
    move-object/from16 v0, v36

    #@1b6
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1b9
    move-result-object v14

    #@1ba
    check-cast v14, Landroid/icu/text/QuantityFormatter;

    #@1bc
    .line 461
    .local v14, "countToFormat":Landroid/icu/text/QuantityFormatter;
    invoke-virtual/range {v34 .. v34}, Landroid/icu/text/PluralRules$StandardPluralCategories;->toString()Ljava/lang/String;

    #@1bf
    move-result-object v4

    #@1c0
    invoke-virtual {v14, v4}, Landroid/icu/text/QuantityFormatter;->getByVariant(Ljava/lang/String;)Landroid/icu/impl/SimplePatternFormatter;

    #@1c3
    move-result-object v19

    #@1c4
    .line 462
    .local v19, "formatter":Landroid/icu/impl/SimplePatternFormatter;
    const/4 v4, 0x1

    #@1c5
    new-array v4, v4, [Ljava/lang/CharSequence;

    #@1c7
    const/4 v7, 0x0

    #@1c8
    aput-object v18, v4, v7

    #@1ca
    move-object/from16 v0, v19

    #@1cc
    invoke-virtual {v0, v4}, Landroid/icu/impl/SimplePatternFormatter;->format([Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1cf
    move-result-object v4

    #@1d0
    return-object v4
.end method

.method public final varargs formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 2
    .param p1, "measures"    # [Landroid/icu/util/Measure;

    #@0
    .prologue
    .line 372
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 373
    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@7
    .line 371
    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@e
    move-result-object v0

    #@f
    return-object v0
.end method

.method public varargs formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .locals 7
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "measures"    # [Landroid/icu/util/Measure;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 545
    array-length v4, p3

    #@2
    if-nez v4, :cond_0

    #@4
    .line 546
    return-object p1

    #@5
    .line 548
    :cond_0
    array-length v4, p3

    #@6
    const/4 v5, 0x1

    #@7
    if-ne v4, v5, :cond_1

    #@9
    .line 549
    aget-object v4, p3, v6

    #@b
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@d
    invoke-direct {p0, v4, v5, p1, p2}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    return-object v4

    #@12
    .line 552
    :cond_1
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@14
    sget-object v5, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    if-ne v4, v5, :cond_2

    #@18
    .line 555
    invoke-static {p3}, Landroid/icu/text/MeasureFormat;->toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;

    #@1b
    move-result-object v0

    #@1c
    .line 556
    .local v0, "hms":[Ljava/lang/Number;
    if-eqz v0, :cond_2

    #@1e
    .line 557
    invoke-direct {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 562
    .end local v0    # "hms":[Ljava/lang/Number;
    :cond_2
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@26
    move-result-object v4

    #@27
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@29
    invoke-virtual {v5}, Landroid/icu/text/MeasureFormat$FormatWidth;->getListFormatterStyle()Landroid/icu/text/ListFormatter$Style;

    #@2c
    move-result-object v5

    #@2d
    .line 561
    invoke-static {v4, v5}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    #@30
    move-result-object v2

    #@31
    .line 563
    .local v2, "listFormatter":Landroid/icu/text/ListFormatter;
    sget-object v4, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@33
    if-eq p2, v4, :cond_3

    #@35
    .line 564
    invoke-direct {p0, v2, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    return-object v4

    #@3a
    .line 567
    :cond_3
    array-length v4, p3

    #@3b
    new-array v3, v4, [Ljava/lang/String;

    #@3d
    .line 568
    .local v3, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    #@3e
    .local v1, "i":I
    :goto_0
    array-length v4, p3

    #@3f
    if-ge v1, v4, :cond_5

    #@41
    .line 570
    aget-object v5, p3, v1

    #@43
    .line 571
    array-length v4, p3

    #@44
    add-int/lit8 v4, v4, -0x1

    #@46
    if-ne v1, v4, :cond_4

    #@48
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@4a
    .line 569
    :goto_1
    invoke-direct {p0, v5, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    aput-object v4, v3, v1

    #@50
    .line 568
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 571
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@55
    goto :goto_1

    #@56
    .line 573
    :cond_5
    invoke-virtual {v2, v3}, Landroid/icu/text/ListFormatter;->format([Ljava/lang/Object;)Ljava/lang/String;

    #@59
    move-result-object v4

    #@5a
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5d
    move-result-object v4

    #@5e
    return-object v4
.end method

.method public final getLocale()Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 621
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/text/MeasureFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 629
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@2
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1

    #@0
    .prologue
    .line 613
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 604
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    #@7
    move-result v0

    #@8
    mul-int/lit8 v0, v0, 0x1f

    #@a
    .line 605
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->hashCode()I

    #@11
    move-result v1

    #@12
    .line 604
    add-int/2addr v0, v1

    #@13
    mul-int/lit8 v0, v0, 0x1f

    #@15
    .line 605
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat$FormatWidth;->hashCode()I

    #@1c
    move-result v1

    #@1d
    .line 604
    add-int/2addr v0, v1

    #@1e
    return v0
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 354
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public bridge synthetic parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    #@0
    .prologue
    .line 353
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method toCurrencyProxy()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 979
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    #@2
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@a
    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x2

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    #@12
    return-object v0
.end method

.method toTimeUnitProxy()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 975
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    #@2
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@a
    invoke-virtual {v3}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    #@d
    move-result-object v3

    #@e
    const/4 v4, 0x1

    #@f
    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    #@12
    return-object v0
.end method

.method withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 668
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .locals 11
    .param p1, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 672
    new-instance v0, Landroid/icu/text/MeasureFormat;

    #@2
    .line 673
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    .line 674
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    .line 675
    new-instance v3, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@a
    invoke-direct {v3, p1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@d
    .line 676
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@f
    .line 677
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToCountToFormat:Ljava/util/Map;

    #@11
    .line 678
    iget-object v6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@13
    .line 679
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@15
    .line 680
    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@17
    .line 681
    iget-object v9, p0, Landroid/icu/text/MeasureFormat;->unitToStyleToPerUnitPattern:Ljava/util/Map;

    #@19
    .line 682
    iget-object v10, p0, Landroid/icu/text/MeasureFormat;->styleToPerPattern:Ljava/util/EnumMap;

    #@1b
    .line 672
    invoke-direct/range {v0 .. v10}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Ljava/util/Map;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/util/Map;Ljava/util/EnumMap;)V

    #@1e
    return-object v0
.end method
