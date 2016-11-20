.class public Landroid/icu/text/MeasureFormat;
.super Landroid/icu/text/UFormat;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$FormatWidth;,
        Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;,
        Landroid/icu/text/MeasureFormat$MeasureFormatData;,
        Landroid/icu/text/MeasureFormat$MeasureProxy;,
        Landroid/icu/text/MeasureFormat$NumericFormatters;,
        Landroid/icu/text/MeasureFormat$PatternData;,
        Landroid/icu/text/MeasureFormat$UnitDataSink;
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

.field private static final localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
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
.field private final transient cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

.field private final transient currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private final transient integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

.field private final transient numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

.field private final transient rules:Landroid/icu/text/PluralRules;


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
    .line 134
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@5
    .line 133
    sput-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    #@7
    .line 137
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@9
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@c
    .line 136
    sput-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    #@e
    .line 140
    new-instance v0, Ljava/util/HashMap;

    #@10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@13
    .line 139
    sput-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    #@15
    .line 143
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
    .line 144
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
    .line 145
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
    .line 1389
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@3b
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@3e
    .line 1388
    sput-object v0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@40
    .line 112
    return-void
.end method

.method constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 666
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@4
    .line 668
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@6
    .line 669
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@8
    .line 670
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@a
    .line 671
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@c
    .line 672
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@e
    .line 673
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@10
    .line 674
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@12
    .line 666
    return-void
.end method

.method private constructor <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V
    .locals 0
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "data"    # Landroid/icu/text/MeasureFormat$MeasureFormatData;
    .param p3, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p4, "format"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .param p5, "rules"    # Landroid/icu/text/PluralRules;
    .param p6, "formatters"    # Landroid/icu/text/MeasureFormat$NumericFormatters;
    .param p7, "currencyFormat"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .param p8, "integerFormat"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@0
    .prologue
    .line 647
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    #@3
    .line 656
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/UFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@6
    .line 657
    iput-object p2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@8
    .line 658
    iput-object p3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@a
    .line 659
    iput-object p4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@c
    .line 660
    iput-object p5, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@e
    .line 661
    iput-object p6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@10
    .line 662
    iput-object p7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@12
    .line 663
    iput-object p8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@14
    .line 655
    return-void
.end method

.method private appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V
    .locals 7
    .param p1, "affix"    # Ljava/lang/String;
    .param p2, "unit"    # Landroid/icu/util/Currency;
    .param p3, "resolvedPlural"    # Landroid/icu/impl/StandardPlural;
    .param p4, "result"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 442
    const-string/jumbo v2, "\u00a4"

    #@4
    .line 443
    .local v2, "replacement":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@7
    move-result v1

    #@8
    .line 444
    .local v1, "pos":I
    if-gez v1, :cond_0

    #@a
    .line 445
    const-string/jumbo v2, "XXX"

    #@d
    .line 446
    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@10
    move-result v1

    #@11
    .line 448
    :cond_0
    if-gez v1, :cond_1

    #@13
    .line 449
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 441
    :goto_0
    return-void

    #@17
    .line 452
    :cond_1
    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p4, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    .line 454
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@20
    invoke-virtual {v4}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    #@23
    move-result v0

    #@24
    .line 455
    .local v0, "currentStyle":I
    const/4 v4, 0x5

    #@25
    if-ne v0, v4, :cond_2

    #@27
    .line 456
    invoke-virtual {p2}, Landroid/icu/util/Currency;->getCurrencyCode()Ljava/lang/String;

    #@2a
    move-result-object v3

    #@2b
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    .line 462
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
    .line 458
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@3d
    invoke-static {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    #@40
    move-result-object v4

    #@41
    sget-object v5, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@43
    invoke-virtual {v4, v5}, Landroid/icu/text/UFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@46
    move-result-object v4

    #@47
    .line 459
    const/4 v5, 0x1

    #@48
    if-ne v0, v5, :cond_3

    #@4a
    .line 460
    :goto_2
    invoke-virtual {p3}, Landroid/icu/impl/StandardPlural;->getKeyword()Ljava/lang/String;

    #@4d
    move-result-object v5

    #@4e
    const/4 v6, 0x0

    #@4f
    .line 458
    invoke-virtual {p2, v4, v3, v5, v6}, Landroid/icu/util/Currency;->getName(Landroid/icu/util/ULocale;ILjava/lang/String;[Z)Ljava/lang/String;

    #@52
    move-result-object v3

    #@53
    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    goto :goto_1

    #@57
    .line 459
    :cond_3
    const/4 v3, 0x2

    #@58
    goto :goto_2
.end method

.method private formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;
    .locals 2
    .param p1, "measure"    # Landroid/icu/util/Measure;
    .param p2, "nf"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@0
    .prologue
    .line 987
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 988
    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@7
    .line 986
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
    .locals 8
    .param p1, "measure"    # Landroid/icu/util/Measure;
    .param p2, "nf"    # Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;
    .param p4, "fieldPosition"    # Ljava/text/FieldPosition;

    #@0
    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@3
    move-result-object v2

    #@4
    .line 997
    .local v2, "n":Ljava/lang/Number;
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@7
    move-result-object v4

    #@8
    .line 998
    .local v4, "unit":Landroid/icu/util/MeasureUnit;
    instance-of v5, v4, Landroid/icu/util/Currency;

    #@a
    if-eqz v5, :cond_0

    #@c
    .line 1000
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@e
    .line 1001
    new-instance v6, Landroid/icu/util/CurrencyAmount;

    #@10
    nop

    #@11
    nop

    #@12
    .end local v4    # "unit":Landroid/icu/util/MeasureUnit;
    invoke-direct {v6, v2, v4}, Landroid/icu/util/CurrencyAmount;-><init>(Ljava/lang/Number;Landroid/icu/util/Currency;)V

    #@15
    .line 1002
    new-instance v7, Ljava/lang/StringBuffer;

    #@17
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@1a
    .line 1000
    invoke-virtual {v5, v6, v7, p4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Landroid/icu/util/CurrencyAmount;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@1d
    move-result-object v5

    #@1e
    .line 999
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v5

    #@22
    return-object v5

    #@23
    .line 1006
    .restart local v4    # "unit":Landroid/icu/util/MeasureUnit;
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    #@25
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@28
    .line 1008
    .local v0, "formattedNumber":Ljava/lang/StringBuffer;
    invoke-static {p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->-get0(Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Landroid/icu/text/NumberFormat;

    #@2b
    move-result-object v5

    #@2c
    iget-object v6, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@2e
    .line 1007
    invoke-static {v2, v5, v6, v0, p4}, Landroid/icu/text/QuantityFormatter;->selectPlural(Ljava/lang/Number;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Landroid/icu/impl/StandardPlural;

    #@31
    move-result-object v3

    #@32
    .line 1009
    .local v3, "pluralForm":Landroid/icu/impl/StandardPlural;
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@34
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    #@37
    move-result v6

    #@38
    invoke-direct {p0, v4, v5, v6}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@3b
    move-result-object v1

    #@3c
    .line 1010
    .local v1, "formatter":Ljava/lang/String;
    invoke-static {v1, v0, p3, p4}, Landroid/icu/text/QuantityFormatter;->format(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v5

    #@40
    return-object v5
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
    .line 1110
    array-length v6, p4

    #@2
    new-array v5, v6, [Ljava/lang/String;

    #@4
    .line 1113
    .local v5, "results":[Ljava/lang/String;
    new-instance v2, Ljava/text/FieldPosition;

    #@6
    .line 1114
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@9
    move-result-object v6

    #@a
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    #@d
    move-result v7

    #@e
    .line 1113
    invoke-direct {v2, v6, v7}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@11
    .line 1116
    .local v2, "fpos":Ljava/text/FieldPosition;
    const/4 v1, -0x1

    #@12
    .line 1117
    .local v1, "fieldPositionFoundIndex":I
    const/4 v3, 0x0

    #@13
    .local v3, "i":I
    :goto_0
    array-length v6, p4

    #@14
    if-ge v3, v6, :cond_4

    #@16
    .line 1118
    array-length v6, p4

    #@17
    add-int/lit8 v6, v6, -0x1

    #@19
    if-ne v3, v6, :cond_2

    #@1b
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@1d
    .line 1119
    .local v4, "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    :goto_1
    if-ne v1, v8, :cond_3

    #@1f
    .line 1120
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
    .line 1121
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
    .line 1122
    :cond_0
    move v1, v3

    #@3d
    .line 1117
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    #@3f
    goto :goto_0

    #@40
    .line 1118
    .end local v4    # "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    :cond_2
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@42
    .restart local v4    # "nf":Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;
    goto :goto_1

    #@43
    .line 1125
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
    .line 1129
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
    .line 1132
    .local v0, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    invoke-virtual {v0}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset()I

    #@57
    move-result v6

    #@58
    if-eq v6, v8, :cond_5

    #@5a
    .line 1133
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
    .line 1134
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
    .line 1136
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
    .line 1252
    new-instance v1, Ljava/text/FieldPosition;

    #@3
    invoke-direct {v1, v6}, Ljava/text/FieldPosition;-><init>(I)V

    #@6
    .line 1253
    .local v1, "intFieldPosition":Ljava/text/FieldPosition;
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@8
    .line 1254
    new-instance v5, Ljava/lang/StringBuffer;

    #@a
    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    #@d
    .line 1253
    invoke-virtual {v4, p4, v5, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@10
    move-result-object v4

    #@11
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@14
    move-result-object v2

    #@15
    .line 1256
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
    .line 1257
    new-instance v4, Ljava/lang/IllegalStateException;

    #@23
    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    #@26
    throw v4

    #@27
    .line 1261
    :cond_0
    new-instance v3, Ljava/text/FieldPosition;

    #@29
    invoke-direct {v3, p3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;)V

    #@2c
    .line 1263
    .local v3, "smallestFieldPosition":Ljava/text/FieldPosition;
    new-instance v4, Ljava/lang/StringBuffer;

    #@2e
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@31
    .line 1262
    invoke-virtual {p2, p1, v4, v3}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@34
    move-result-object v4

    #@35
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@38
    move-result-object v0

    #@39
    .line 1266
    .local v0, "draft":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@3c
    move-result v4

    #@3d
    if-nez v4, :cond_1

    #@3f
    .line 1267
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@42
    move-result v4

    #@43
    if-eqz v4, :cond_2

    #@45
    .line 1269
    :cond_1
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@48
    move-result v4

    #@49
    invoke-virtual {p5, v0, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@4c
    .line 1272
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@4f
    move-result v4

    #@50
    invoke-virtual {p5, v2, v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@53
    .line 1278
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@56
    move-result v4

    #@57
    .line 1279
    invoke-virtual {v3}, Ljava/text/FieldPosition;->getEndIndex()I

    #@5a
    move-result v5

    #@5b
    .line 1276
    invoke-virtual {p5, v0, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@5e
    .line 1284
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    #@61
    move-result v4

    #@62
    .line 1285
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@65
    move-result v5

    #@66
    .line 1282
    invoke-virtual {p5, v2, v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@69
    .line 1286
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
    .line 1291
    :goto_0
    return-object p5

    #@75
    .line 1289
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
    .line 1182
    const/4 v10, -0x1

    #@1
    .line 1183
    .local v10, "startIndex":I
    const/4 v6, -0x1

    #@2
    .line 1184
    .local v6, "endIndex":I
    const/4 v7, 0x0

    #@3
    .local v7, "i":I
    :goto_0
    array-length v0, p1

    #@4
    if-ge v7, v0, :cond_2

    #@6
    .line 1185
    aget-object v0, p1, v7

    #@8
    if-eqz v0, :cond_1

    #@a
    .line 1186
    move v6, v7

    #@b
    .line 1187
    const/4 v0, -0x1

    #@c
    if-ne v10, v0, :cond_0

    #@e
    .line 1188
    move v10, v6

    #@f
    .line 1184
    :cond_0
    :goto_1
    add-int/lit8 v7, v7, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1192
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
    .line 1196
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
    .line 1197
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
    .line 1196
    add-double/2addr v2, v4

    #@34
    .line 1197
    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    #@36
    .line 1196
    mul-double/2addr v2, v4

    #@37
    .line 1198
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
    .line 1196
    add-double/2addr v2, v4

    #@43
    .line 1198
    const-wide v4, 0x408f400000000000L    # 1000.0

    #@48
    .line 1196
    mul-double/2addr v2, v4

    #@49
    double-to-long v8, v2

    #@4a
    .line 1199
    .local v8, "millis":J
    new-instance v1, Ljava/util/Date;

    #@4c
    invoke-direct {v1, v8, v9}, Ljava/util/Date;-><init>(J)V

    #@4f
    .line 1201
    .local v1, "d":Ljava/util/Date;
    if-nez v10, :cond_3

    #@51
    const/4 v0, 0x2

    #@52
    if-ne v6, v0, :cond_3

    #@54
    .line 1204
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@56
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Landroid/icu/text/DateFormat;

    #@59
    move-result-object v2

    #@5a
    .line 1205
    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    #@5c
    .line 1206
    aget-object v4, p1, v6

    #@5e
    move-object v0, p0

    #@5f
    move-object v5, p2

    #@60
    .line 1202
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@63
    move-result-object v0

    #@64
    return-object v0

    #@65
    .line 1210
    :cond_3
    const/4 v0, 0x1

    #@66
    if-ne v10, v0, :cond_4

    #@68
    const/4 v0, 0x2

    #@69
    if-ne v6, v0, :cond_4

    #@6b
    .line 1213
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@6d
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Landroid/icu/text/DateFormat;

    #@70
    move-result-object v2

    #@71
    .line 1214
    sget-object v3, Landroid/icu/text/DateFormat$Field;->SECOND:Landroid/icu/text/DateFormat$Field;

    #@73
    .line 1215
    aget-object v4, p1, v6

    #@75
    move-object v0, p0

    #@76
    move-object v5, p2

    #@77
    .line 1211
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    return-object v0

    #@7c
    .line 1219
    :cond_4
    if-nez v10, :cond_5

    #@7e
    const/4 v0, 0x1

    #@7f
    if-ne v6, v0, :cond_5

    #@81
    .line 1222
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@83
    invoke-virtual {v0}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Landroid/icu/text/DateFormat;

    #@86
    move-result-object v2

    #@87
    .line 1223
    sget-object v3, Landroid/icu/text/DateFormat$Field;->MINUTE:Landroid/icu/text/DateFormat$Field;

    #@89
    .line 1224
    aget-object v4, p1, v6

    #@8b
    move-object v0, p0

    #@8c
    move-object v5, p2

    #@8d
    .line 1220
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;->formatNumeric(Ljava/util/Date;Landroid/icu/text/DateFormat;Landroid/icu/text/DateFormat$Field;Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v0

    #@91
    return-object v0

    #@92
    .line 1227
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
    .line 1381
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@3
    move-result-object v0

    #@4
    .line 1382
    .local v0, "values":[Landroid/icu/text/MeasureFormat$FormatWidth;
    if-ltz p0, :cond_0

    #@6
    array-length v1, v0

    #@7
    if-lt p0, v1, :cond_1

    #@9
    .line 1383
    :cond_0
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@b
    return-object v1

    #@c
    .line 1385
    :cond_1
    aget-object v1, v0, p0

    #@e
    return-object v1
.end method

.method public static getCurrencyFormat()Landroid/icu/text/MeasureFormat;
    .locals 1

    #@0
    .prologue
    .line 627
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
    .line 607
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
    .line 617
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

.method private getFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 5
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 933
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 934
    .local v0, "pattern":Ljava/lang/String;
    if-nez v0, :cond_0

    #@7
    .line 935
    new-instance v1, Ljava/util/MissingResourceException;

    #@9
    .line 936
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "no formatting pattern for "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    const-string/jumbo v3, ", width "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    const-string/jumbo v3, ", index "

    #@27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@32
    move-result-object v2

    #@33
    .line 935
    invoke-direct {v1, v2, v4, v4}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@36
    throw v1

    #@37
    .line 939
    :cond_0
    return-object v0
.end method

.method private getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 6
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "index"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 916
    invoke-static {p2}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4
    move-result-object p2

    #@5
    .line 917
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@7
    iget-object v3, v3, Landroid/icu/text/MeasureFormat$MeasureFormatData;->unitToStyleToPatterns:Ljava/util/Map;

    #@9
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v2

    #@d
    check-cast v2, Ljava/util/Map;

    #@f
    .line 918
    .local v2, "styleToPatterns":Ljava/util/Map;, "Ljava/util/Map<Landroid/icu/text/MeasureFormat$FormatWidth;[Ljava/lang/String;>;"
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@12
    move-result-object v1

    #@13
    check-cast v1, [Ljava/lang/String;

    #@15
    .line 919
    .local v1, "patterns":[Ljava/lang/String;
    if-eqz v1, :cond_0

    #@17
    aget-object v3, v1, p3

    #@19
    if-eqz v3, :cond_0

    #@1b
    .line 920
    aget-object v3, v1, p3

    #@1d
    return-object v3

    #@1e
    .line 922
    :cond_0
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@20
    iget-object v3, v3, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@22
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v4

    #@26
    aget-object v0, v3, v4

    #@28
    .line 923
    .local v0, "fallbackWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    if-eqz v0, :cond_1

    #@2a
    .line 924
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    move-result-object v1

    #@2e
    .end local v1    # "patterns":[Ljava/lang/String;
    check-cast v1, [Ljava/lang/String;

    #@30
    .line 925
    .restart local v1    # "patterns":[Ljava/lang/String;
    if-eqz v1, :cond_1

    #@32
    aget-object v3, v1, p3

    #@34
    if-eqz v3, :cond_1

    #@36
    .line 926
    aget-object v3, v1, p3

    #@38
    return-object v3

    #@39
    .line 929
    :cond_1
    return-object v5
.end method

.method public static getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    .line 211
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
    .locals 10
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 234
    invoke-static {p0}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    #@4
    move-result-object v5

    #@5
    .line 235
    .local v5, "rules":Landroid/icu/text/PluralRules;
    const/4 v6, 0x0

    #@6
    .line 236
    .local v6, "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    #@8
    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@e
    .line 237
    .local v2, "data":Landroid/icu/text/MeasureFormat$MeasureFormatData;
    if-nez v2, :cond_0

    #@10
    .line 238
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@13
    move-result-object v2

    #@14
    .line 239
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeMeasureFormatData:Landroid/icu/impl/SimpleCache;

    #@16
    invoke-virtual {v0, p0, v2}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@19
    .line 241
    :cond_0
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1b
    if-ne p1, v0, :cond_1

    #@1d
    .line 242
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    #@1f
    invoke-virtual {v0, p0}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v6

    #@23
    .end local v6    # "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    check-cast v6, Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@25
    .line 243
    .local v6, "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    if-nez v6, :cond_1

    #@27
    .line 244
    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@2a
    move-result-object v6

    #@2b
    .line 245
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    #@2d
    invoke-virtual {v0, p0, v6}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@30
    .line 248
    .end local v6    # "formatters":Landroid/icu/text/MeasureFormat$NumericFormatters;
    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    #@33
    move-result-object v9

    #@34
    .line 249
    .local v9, "intFormat":Landroid/icu/text/NumberFormat;
    invoke-virtual {v9, v1}, Landroid/icu/text/NumberFormat;->setMaximumFractionDigits(I)V

    #@37
    .line 250
    invoke-virtual {v9, v1}, Landroid/icu/text/NumberFormat;->setMinimumFractionDigits(I)V

    #@3a
    .line 251
    const/4 v0, 0x1

    #@3b
    invoke-virtual {v9, v0}, Landroid/icu/text/NumberFormat;->setRoundingMode(I)V

    #@3e
    .line 252
    new-instance v0, Landroid/icu/text/MeasureFormat;

    #@40
    .line 256
    new-instance v4, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@42
    invoke-direct {v4, p2}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@45
    .line 259
    new-instance v7, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@47
    invoke-virtual {p1}, Landroid/icu/text/MeasureFormat$FormatWidth;->getCurrencyStyle()I

    #@4a
    move-result v1

    #@4b
    invoke-static {p0, v1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;I)Landroid/icu/text/NumberFormat;

    #@4e
    move-result-object v1

    #@4f
    invoke-direct {v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@52
    .line 260
    new-instance v8, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@54
    invoke-direct {v8, v9}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@57
    move-object v1, p0

    #@58
    move-object v3, p1

    #@59
    .line 252
    invoke-direct/range {v0 .. v8}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    #@5c
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    .line 222
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
    .line 272
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

.method private getPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 6
    .param p1, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 953
    invoke-static {p1}, Landroid/icu/text/MeasureFormat;->getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;

    #@4
    move-result-object p1

    #@5
    .line 954
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@7
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@9
    invoke-virtual {v2, p1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@c
    move-result-object v1

    #@d
    check-cast v1, Ljava/lang/String;

    #@f
    .line 955
    .local v1, "perPattern":Ljava/lang/String;
    if-eqz v1, :cond_0

    #@11
    .line 956
    return-object v1

    #@12
    .line 958
    :cond_0
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@14
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->widthFallback:[Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    #@19
    move-result v3

    #@1a
    aget-object v0, v2, v3

    #@1c
    .line 959
    .local v0, "fallbackWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    if-eqz v0, :cond_1

    #@1e
    .line 960
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@20
    iget-object v2, v2, Landroid/icu/text/MeasureFormat$MeasureFormatData;->styleToPerPattern:Ljava/util/EnumMap;

    #@22
    invoke-virtual {v2, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@25
    move-result-object v1

    #@26
    .end local v1    # "perPattern":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    #@28
    .line 961
    .restart local v1    # "perPattern":Ljava/lang/String;
    if-eqz v1, :cond_1

    #@2a
    .line 962
    return-object v1

    #@2b
    .line 965
    :cond_1
    new-instance v2, Ljava/util/MissingResourceException;

    #@2d
    new-instance v3, Ljava/lang/StringBuilder;

    #@2f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@32
    const-string/jumbo v4, "no x-per-y pattern for width "

    #@35
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v3

    #@39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@3c
    move-result-object v3

    #@3d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@40
    move-result-object v3

    #@41
    invoke-direct {v2, v3, v5, v5}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@44
    throw v2
.end method

.method private getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;
    .locals 2
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p2, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "index"    # I

    #@0
    .prologue
    .line 943
    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@2
    if-eq p3, v1, :cond_0

    #@4
    .line 944
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 945
    .local v0, "pattern":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@a
    .line 946
    return-object v0

    #@b
    .line 949
    .end local v0    # "pattern":Ljava/lang/String;
    :cond_0
    sget v1, Landroid/icu/impl/StandardPlural;->OTHER_INDEX:I

    #@d
    invoke-direct {p0, p1, p2, v1}, Landroid/icu/text/MeasureFormat;->getFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public static getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .locals 9
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x2

    #@1
    .line 1403
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@4
    move-result-object v6

    #@5
    const-string/jumbo v7, "fr"

    #@8
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@b
    move-result v6

    #@c
    if-eqz v6, :cond_0

    #@e
    .line 1404
    sget-object v6, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    #@10
    invoke-static {v6, p1}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    #@13
    move-result-object v6

    #@14
    return-object v6

    #@15
    .line 1406
    :cond_0
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@17
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@1a
    move-result-object v4

    #@1b
    check-cast v4, Ljava/lang/String;

    #@1d
    .line 1407
    .local v4, "result":Ljava/lang/String;
    if-nez v4, :cond_2

    #@1f
    .line 1409
    const-string/jumbo v6, "android/icu/impl/data/icudt56b"

    #@22
    .line 1408
    invoke-static {v6, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@25
    move-result-object v2

    #@26
    check-cast v2, Landroid/icu/impl/ICUResourceBundle;

    #@28
    .line 1410
    .local v2, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v2}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@2b
    move-result-object v3

    #@2c
    .line 1411
    .local v3, "realLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@2f
    move-result v6

    #@30
    if-nez v6, :cond_1

    #@32
    .line 1412
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@34
    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    move-result-object v4

    #@38
    .end local v4    # "result":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    #@3a
    .line 1413
    .restart local v4    # "result":Ljava/lang/String;
    if-eqz v4, :cond_1

    #@3c
    .line 1414
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@3e
    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@41
    .line 1415
    return-object v4

    #@42
    .line 1420
    :cond_1
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@45
    move-result-object v1

    #@46
    .line 1422
    .local v1, "ns":Landroid/icu/text/NumberingSystem;
    const/4 v5, 0x0

    #@47
    .line 1424
    .local v5, "resultString":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@49
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@4c
    const-string/jumbo v7, "NumberElements/"

    #@4f
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v6

    #@53
    invoke-virtual {v1}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@56
    move-result-object v7

    #@57
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v6

    #@5b
    const-string/jumbo v7, "/miscPatterns/range"

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65
    move-result-object v6

    #@66
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@69
    move-result-object v5

    #@6a
    .line 1428
    .local v5, "resultString":Ljava/lang/String;
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    #@6c
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@6f
    invoke-static {v5, v6, v8, v8}, Landroid/icu/impl/SimplePatternFormatter;->compileToStringMinMaxPlaceholders(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    #@72
    move-result-object v4

    #@73
    .line 1429
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@75
    invoke-interface {v6, p0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@78
    .line 1430
    invoke-virtual {p0, v3}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    #@7b
    move-result v6

    #@7c
    if-nez v6, :cond_2

    #@7e
    .line 1431
    sget-object v6, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    #@80
    invoke-interface {v6, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@83
    .line 1434
    .end local v1    # "ns":Landroid/icu/text/NumberingSystem;
    .end local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v3    # "realLocale":Landroid/icu/util/ULocale;
    .end local v5    # "resultString":Ljava/lang/String;
    :cond_2
    return-object v4

    #@84
    .line 1425
    .restart local v1    # "ns":Landroid/icu/text/NumberingSystem;
    .restart local v2    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v3    # "realLocale":Landroid/icu/util/ULocale;
    .local v5, "resultString":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@85
    .line 1426
    .local v0, "ex":Ljava/util/MissingResourceException;
    const-string/jumbo v6, "NumberElements/latn/patterns/range"

    #@88
    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@8b
    move-result-object v5

    #@8c
    .local v5, "resultString":Ljava/lang/String;
    goto :goto_0
.end method

.method private static final getRegularWidth(Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat$FormatWidth;
    .locals 1
    .param p0, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    #@0
    .prologue
    .line 909
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    .line 910
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@6
    return-object v0

    #@7
    .line 912
    :cond_0
    return-object p0
.end method

.method private static loadLocaleData(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$MeasureFormatData;
    .locals 4
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 901
    const-string/jumbo v3, "android/icu/impl/data/icudt56b/unit"

    #@3
    invoke-static {v3, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 902
    .local v1, "resource":Landroid/icu/impl/ICUResourceBundle;
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@b
    const/4 v3, 0x0

    #@c
    invoke-direct {v0, v3}, Landroid/icu/text/MeasureFormat$MeasureFormatData;-><init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V

    #@f
    .line 903
    .local v0, "cacheData":Landroid/icu/text/MeasureFormat$MeasureFormatData;
    new-instance v2, Landroid/icu/text/MeasureFormat$UnitDataSink;

    #@11
    invoke-direct {v2, v0}, Landroid/icu/text/MeasureFormat$UnitDataSink;-><init>(Landroid/icu/text/MeasureFormat$MeasureFormatData;)V

    #@14
    .line 904
    .local v2, "sink":Landroid/icu/text/MeasureFormat$UnitDataSink;
    const-string/jumbo v3, ""

    #@17
    invoke-virtual {v1, v3, v2}, Landroid/icu/impl/ICUResourceBundle;->getAllTableItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$TableSink;)V

    #@1a
    .line 905
    return-object v0
.end method

.method private static loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;
    .locals 4
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1142
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
    .line 1144
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    #@13
    invoke-virtual {p0}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

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
    .line 1145
    .local v0, "result":Landroid/icu/text/DateFormat;
    sget-object v1, Landroid/icu/util/TimeZone;->GMT_ZONE:Landroid/icu/util/TimeZone;

    #@26
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@29
    .line 1146
    return-object v0
.end method

.method private static loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;
    .locals 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 699
    const-string/jumbo v1, "android/icu/impl/data/icudt56b/unit"

    #@3
    .line 698
    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    #@9
    .line 700
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@b
    .line 701
    const-string/jumbo v2, "hm"

    #@e
    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@11
    move-result-object v2

    #@12
    .line 702
    const-string/jumbo v3, "ms"

    #@15
    invoke-static {v0, v3}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@18
    move-result-object v3

    #@19
    .line 703
    const-string/jumbo v4, "hms"

    #@1c
    invoke-static {v0, v4}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Landroid/icu/text/DateFormat;

    #@1f
    move-result-object v4

    #@20
    .line 700
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
    .line 1155
    const/4 v5, 0x3

    #@2
    new-array v4, v5, [Ljava/lang/Number;

    #@4
    .line 1156
    .local v4, "result":[Ljava/lang/Number;
    const/4 v2, -0x1

    #@5
    .line 1157
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
    .line 1158
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
    .line 1159
    return-object v12

    #@1a
    .line 1161
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
    .line 1162
    .local v1, "idxObj":Ljava/lang/Integer;
    if-nez v1, :cond_1

    #@28
    .line 1163
    return-object v12

    #@29
    .line 1165
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@2c
    move-result v0

    #@2d
    .line 1166
    .local v0, "idx":I
    if-gt v0, v2, :cond_2

    #@2f
    .line 1168
    return-object v12

    #@30
    .line 1170
    :cond_2
    move v2, v0

    #@31
    .line 1171
    invoke-virtual {v3}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@34
    move-result-object v7

    #@35
    aput-object v7, v4, v0

    #@37
    .line 1157
    add-int/lit8 v5, v5, 0x1

    #@39
    goto :goto_0

    #@3a
    .line 1173
    .end local v0    # "idx":I
    .end local v1    # "idxObj":Ljava/lang/Integer;
    .end local v3    # "m":Landroid/icu/util/Measure;
    :cond_3
    return-object v4
.end method

.method private withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I
    .locals 9
    .param p1, "formatted"    # Ljava/lang/CharSequence;
    .param p2, "perUnit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 970
    new-array v0, v8, [I

    #@4
    .line 972
    .local v0, "offsets":[I
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@6
    sget v6, Landroid/icu/text/MeasureFormat$MeasureFormatData;->PER_UNIT_INDEX:I

    #@8
    invoke-direct {p0, p2, v5, v6}, Landroid/icu/text/MeasureFormat;->getFormatterOrNull(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@b
    move-result-object v3

    #@c
    .line 973
    .local v3, "perUnitPattern":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@e
    .line 974
    new-array v5, v8, [Ljava/lang/CharSequence;

    #@10
    aput-object p1, v5, v7

    #@12
    invoke-static {v3, p3, v0, v5}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@15
    .line 975
    aget v5, v0, v7

    #@17
    return v5

    #@18
    .line 977
    :cond_0
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1a
    invoke-direct {p0, v5}, Landroid/icu/text/MeasureFormat;->getPerFormatter(Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    .line 978
    .local v2, "perPattern":Ljava/lang/String;
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@20
    sget-object v6, Landroid/icu/impl/StandardPlural;->ONE:Landroid/icu/impl/StandardPlural;

    #@22
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    #@25
    move-result v6

    #@26
    invoke-direct {p0, p2, v5, v6}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@29
    move-result-object v1

    #@2a
    .line 979
    .local v1, "pattern":Ljava/lang/String;
    invoke-static {v1}, Landroid/icu/impl/SimplePatternFormatter;->getTextWithNoPlaceholders(Ljava/lang/String;)Ljava/lang/String;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    #@31
    move-result-object v4

    #@32
    .line 980
    .local v4, "perUnitString":Ljava/lang/String;
    const/4 v5, 0x2

    #@33
    new-array v5, v5, [Ljava/lang/CharSequence;

    #@35
    .line 981
    aput-object p1, v5, v7

    #@37
    aput-object v4, v5, v8

    #@39
    .line 980
    invoke-static {v2, p3, v0, v5}, Landroid/icu/impl/SimplePatternFormatter;->formatAndAppend(Ljava/lang/String;Ljava/lang/StringBuilder;[I[Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@3c
    .line 982
    aget v5, v0, v7

    #@3e
    return v5
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
    .line 1295
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    #@2
    .line 1296
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
    .line 1295
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
    .line 556
    if-ne p0, p1, :cond_0

    #@3
    .line 557
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 559
    :cond_0
    instance-of v2, p1, Landroid/icu/text/MeasureFormat;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 560
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 562
    nop

    #@c
    nop

    #@d
    .line 564
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
    .line 565
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
    .line 564
    if-eqz v2, :cond_2

    #@25
    .line 566
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
    .line 564
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
    .line 293
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    #@3
    move-result v7

    #@4
    .line 295
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
    .line 296
    .local v1, "fpos":Ljava/text/FieldPosition;
    instance-of v8, p1, Ljava/util/Collection;

    #@13
    if-eqz v8, :cond_4

    #@15
    move-object v0, p1

    #@16
    .line 297
    check-cast v0, Ljava/util/Collection;

    #@18
    .line 298
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    #@1b
    move-result v8

    #@1c
    new-array v4, v8, [Landroid/icu/util/Measure;

    #@1e
    .line 299
    .local v4, "measures":[Landroid/icu/util/Measure;
    const/4 v2, 0x0

    #@1f
    .line 300
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
    .line 301
    .local v5, "o":Ljava/lang/Object;
    instance-of v8, v5, Landroid/icu/util/Measure;

    #@2f
    if-nez v8, :cond_0

    #@31
    .line 302
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
    .line 304
    :cond_0
    add-int/lit8 v3, v2, 0x1

    #@3d
    .end local v2    # "idx":I
    .local v3, "idx":I
    nop

    #@3e
    nop

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
    .line 306
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
    .line 314
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
    .line 315
    :cond_2
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@5e
    move-result v8

    #@5f
    add-int/2addr v8, v7

    #@60
    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@63
    .line 316
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    #@66
    move-result v8

    #@67
    add-int/2addr v8, v7

    #@68
    invoke-virtual {p3, v8}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@6b
    .line 318
    :cond_3
    return-object p2

    #@6c
    .line 307
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_4
    instance-of v8, p1, [Landroid/icu/util/Measure;

    #@6e
    if-eqz v8, :cond_5

    #@70
    .line 308
    new-instance v8, Ljava/lang/StringBuilder;

    #@72
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #@75
    nop

    #@76
    nop

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
    .line 309
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_5
    instance-of v8, p1, Landroid/icu/util/Measure;

    #@81
    if-eqz v8, :cond_6

    #@83
    .line 310
    nop

    #@84
    nop

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
    .line 312
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
    .line 484
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@3
    move-result-object v4

    #@4
    .line 483
    invoke-static {v4, p2}, Landroid/icu/util/MeasureUnit;->resolveUnitPerUnit(Landroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/util/MeasureUnit;

    #@7
    move-result-object v3

    #@8
    .line 485
    .local v3, "resolvedUnit":Landroid/icu/util/MeasureUnit;
    if-eqz v3, :cond_0

    #@a
    .line 486
    new-instance v1, Landroid/icu/util/Measure;

    #@c
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@f
    move-result-object v4

    #@10
    invoke-direct {v1, v4, v3}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    #@13
    .line 487
    .local v1, "newMeasure":Landroid/icu/util/Measure;
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@15
    invoke-direct {p0, v1, v4, p3, p4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v4

    #@19
    return-object v4

    #@1a
    .line 489
    .end local v1    # "newMeasure":Landroid/icu/util/Measure;
    :cond_0
    new-instance v0, Ljava/text/FieldPosition;

    #@1c
    .line 490
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    #@1f
    move-result-object v4

    #@20
    invoke-virtual {p4}, Ljava/text/FieldPosition;->getField()I

    #@23
    move-result v5

    #@24
    .line 489
    invoke-direct {v0, v4, v5}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    #@27
    .line 492
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
    .line 491
    invoke-direct {p0, v4, p2, p3}, Landroid/icu/text/MeasureFormat;->withPerUnitAndAppend(Ljava/lang/CharSequence;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;)I

    #@35
    move-result v2

    #@36
    .line 495
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
    .line 496
    :cond_1
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getBeginIndex()I

    #@45
    move-result v4

    #@46
    add-int/2addr v4, v2

    #@47
    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    #@4a
    .line 497
    invoke-virtual {v0}, Ljava/text/FieldPosition;->getEndIndex()I

    #@4d
    move-result v4

    #@4e
    add-int/2addr v4, v2

    #@4f
    invoke-virtual {p4, v4}, Ljava/text/FieldPosition;->setEndIndex(I)V

    #@52
    .line 499
    :cond_2
    return-object p3
.end method

.method public final formatMeasureRange(Landroid/icu/util/Measure;Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 36
    .param p1, "lowValue"    # Landroid/icu/util/Measure;
    .param p2, "highValue"    # Landroid/icu/util/Measure;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 368
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@3
    move-result-object v35

    #@4
    .line 369
    .local v35, "unit":Landroid/icu/util/MeasureUnit;
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@7
    move-result-object v4

    #@8
    move-object/from16 v0, v35

    #@a
    invoke-virtual {v0, v4}, Landroid/icu/util/MeasureUnit;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-nez v4, :cond_0

    #@10
    .line 370
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
    move-object/from16 v0, v35

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
    .line 372
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@3e
    move-result-object v28

    #@3f
    .line 373
    .local v28, "lowNumber":Ljava/lang/Number;
    invoke-virtual/range {p2 .. p2}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    #@42
    move-result-object v22

    #@43
    .line 374
    .local v22, "highNumber":Ljava/lang/Number;
    move-object/from16 v0, v35

    #@45
    instance-of v0, v0, Landroid/icu/util/Currency;

    #@47
    move/from16 v23, v0

    #@49
    .line 376
    .local v23, "isCurrency":Z
    new-instance v27, Landroid/icu/text/UFieldPosition;

    #@4b
    invoke-direct/range {v27 .. v27}, Landroid/icu/text/UFieldPosition;-><init>()V

    #@4e
    .line 377
    .local v27, "lowFpos":Landroid/icu/text/UFieldPosition;
    new-instance v21, Landroid/icu/text/UFieldPosition;

    #@50
    invoke-direct/range {v21 .. v21}, Landroid/icu/text/UFieldPosition;-><init>()V

    #@53
    .line 378
    .local v21, "highFpos":Landroid/icu/text/UFieldPosition;
    const/16 v26, 0x0

    #@55
    .line 379
    .local v26, "lowFormatted":Ljava/lang/StringBuffer;
    const/16 v20, 0x0

    #@57
    .line 381
    .local v20, "highFormatted":Ljava/lang/StringBuffer;
    if-eqz v23, :cond_2

    #@59
    move-object/from16 v14, v35

    #@5b
    .line 382
    check-cast v14, Landroid/icu/util/Currency;

    #@5d
    .line 383
    .local v14, "currency":Landroid/icu/util/Currency;
    invoke-virtual {v14}, Landroid/icu/util/Currency;->getDefaultFractionDigits()I

    #@60
    move-result v19

    #@61
    .line 384
    .local v19, "fracDigits":I
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
    move-result v29

    #@6d
    .line 385
    .local v29, "maxFrac":I
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
    move-result v30

    #@79
    .line 386
    .local v30, "minFrac":I
    move/from16 v0, v19

    #@7b
    move/from16 v1, v29

    #@7d
    if-ne v0, v1, :cond_1

    #@7f
    move/from16 v0, v19

    #@81
    move/from16 v1, v30

    #@83
    if-eq v0, v1, :cond_2

    #@85
    .line 387
    :cond_1
    move-object/from16 v0, p0

    #@87
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@89
    invoke-virtual {v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->get()Landroid/icu/text/NumberFormat;

    #@8c
    move-result-object v16

    #@8d
    check-cast v16, Landroid/icu/text/DecimalFormat;

    #@8f
    .line 388
    .local v16, "currentNumberFormat":Landroid/icu/text/DecimalFormat;
    move-object/from16 v0, v16

    #@91
    move/from16 v1, v19

    #@93
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMaximumFractionDigits(I)V

    #@96
    .line 389
    move-object/from16 v0, v16

    #@98
    move/from16 v1, v19

    #@9a
    invoke-virtual {v0, v1}, Landroid/icu/text/DecimalFormat;->setMinimumFractionDigits(I)V

    #@9d
    .line 390
    new-instance v4, Ljava/lang/StringBuffer;

    #@9f
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@a2
    move-object/from16 v0, v16

    #@a4
    move-object/from16 v1, v28

    #@a6
    move-object/from16 v2, v27

    #@a8
    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@ab
    move-result-object v26

    #@ac
    .line 391
    .local v26, "lowFormatted":Ljava/lang/StringBuffer;
    new-instance v4, Ljava/lang/StringBuffer;

    #@ae
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    #@b1
    move-object/from16 v0, v16

    #@b3
    move-object/from16 v1, v22

    #@b5
    move-object/from16 v2, v21

    #@b7
    invoke-virtual {v0, v1, v4, v2}, Landroid/icu/text/NumberFormat;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@ba
    move-result-object v20

    #@bb
    .line 394
    .end local v14    # "currency":Landroid/icu/util/Currency;
    .end local v16    # "currentNumberFormat":Landroid/icu/text/DecimalFormat;
    .end local v19    # "fracDigits":I
    .end local v20    # "highFormatted":Ljava/lang/StringBuffer;
    .end local v26    # "lowFormatted":Ljava/lang/StringBuffer;
    .end local v29    # "maxFrac":I
    .end local v30    # "minFrac":I
    :cond_2
    if-nez v26, :cond_3

    #@bd
    .line 395
    move-object/from16 v0, p0

    #@bf
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@c1
    new-instance v7, Ljava/lang/StringBuffer;

    #@c3
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@c6
    move-object/from16 v0, v28

    #@c8
    move-object/from16 v1, v27

    #@ca
    invoke-virtual {v4, v0, v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@cd
    move-result-object v26

    #@ce
    .line 396
    .restart local v26    # "lowFormatted":Ljava/lang/StringBuffer;
    move-object/from16 v0, p0

    #@d0
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@d2
    new-instance v7, Ljava/lang/StringBuffer;

    #@d4
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@d7
    move-object/from16 v0, v22

    #@d9
    move-object/from16 v1, v21

    #@db
    invoke-virtual {v4, v0, v7, v1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->format(Ljava/lang/Number;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@de
    move-result-object v20

    #@df
    .line 399
    .end local v26    # "lowFormatted":Ljava/lang/StringBuffer;
    :cond_3
    invoke-virtual/range {v28 .. v28}, Ljava/lang/Number;->doubleValue()D

    #@e2
    move-result-wide v5

    #@e3
    .line 400
    .local v5, "lowDouble":D
    move-object/from16 v0, p0

    #@e5
    iget-object v11, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@e7
    new-instance v4, Landroid/icu/text/PluralRules$FixedDecimal;

    #@e9
    .line 401
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    #@ec
    move-result v7

    #@ed
    invoke-virtual/range {v27 .. v27}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    #@f0
    move-result-wide v8

    #@f1
    .line 400
    invoke-direct/range {v4 .. v9}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@f4
    invoke-virtual {v11, v4}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@f7
    move-result-object v25

    #@f8
    .line 403
    .local v25, "keywordLow":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Number;->doubleValue()D

    #@fb
    move-result-wide v9

    #@fc
    .line 404
    .local v9, "highDouble":D
    move-object/from16 v0, p0

    #@fe
    iget-object v4, v0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@100
    new-instance v8, Landroid/icu/text/PluralRules$FixedDecimal;

    #@102
    .line 405
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/UFieldPosition;->getCountVisibleFractionDigits()I

    #@105
    move-result v11

    #@106
    invoke-virtual/range {v21 .. v21}, Landroid/icu/text/UFieldPosition;->getFractionDigits()J

    #@109
    move-result-wide v12

    #@10a
    .line 404
    invoke-direct/range {v8 .. v13}, Landroid/icu/text/PluralRules$FixedDecimal;-><init>(DIJ)V

    #@10d
    invoke-virtual {v4, v8}, Landroid/icu/text/PluralRules;->select(Landroid/icu/text/PluralRules$FixedDecimal;)Ljava/lang/String;

    #@110
    move-result-object v24

    #@111
    .line 407
    .local v24, "keywordHigh":Ljava/lang/String;
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
    move-result-object v31

    #@11d
    .line 409
    .local v31, "pluralRanges":Landroid/icu/text/PluralRanges;
    invoke-static/range {v25 .. v25}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@120
    move-result-object v4

    #@121
    .line 410
    invoke-static/range {v24 .. v24}, Landroid/icu/impl/StandardPlural;->fromString(Ljava/lang/CharSequence;)Landroid/icu/impl/StandardPlural;

    #@124
    move-result-object v7

    #@125
    .line 408
    move-object/from16 v0, v31

    #@127
    invoke-virtual {v0, v4, v7}, Landroid/icu/text/PluralRanges;->get(Landroid/icu/impl/StandardPlural;Landroid/icu/impl/StandardPlural;)Landroid/icu/impl/StandardPlural;

    #@12a
    move-result-object v33

    #@12b
    .line 412
    .local v33, "resolvedPlural":Landroid/icu/impl/StandardPlural;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@12e
    move-result-object v4

    #@12f
    move-object/from16 v0, p0

    #@131
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@133
    invoke-static {v4, v7}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    #@136
    move-result-object v32

    #@137
    .line 413
    .local v32, "rangeFormatter":Ljava/lang/String;
    const/4 v4, 0x2

    #@138
    new-array v4, v4, [Ljava/lang/CharSequence;

    #@13a
    const/4 v7, 0x0

    #@13b
    aput-object v26, v4, v7

    #@13d
    const/4 v7, 0x1

    #@13e
    aput-object v20, v4, v7

    #@140
    move-object/from16 v0, v32

    #@142
    invoke-static {v0, v4}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    #@145
    move-result-object v17

    #@146
    .line 415
    .local v17, "formattedNumber":Ljava/lang/String;
    if-eqz v23, :cond_6

    #@148
    .line 417
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
    move-object/from16 v15, v35

    #@157
    .line 419
    check-cast v15, Landroid/icu/util/Currency;

    #@159
    .line 420
    .local v15, "currencyUnit":Landroid/icu/util/Currency;
    new-instance v34, Ljava/lang/StringBuilder;

    #@15b
    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    #@15e
    .line 421
    .local v34, "result":Ljava/lang/StringBuilder;
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
    move-object/from16 v1, v33

    #@171
    move-object/from16 v2, v34

    #@173
    invoke-direct {v0, v4, v15, v1, v2}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V

    #@176
    .line 422
    move-object/from16 v0, v34

    #@178
    move-object/from16 v1, v17

    #@17a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17d
    .line 423
    move-object/from16 v0, p0

    #@17f
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@181
    const-wide/16 v12, 0x0

    #@183
    cmpl-double v4, v9, v12

    #@185
    if-ltz v4, :cond_5

    #@187
    const/4 v4, 0x1

    #@188
    :goto_1
    invoke-virtual {v7, v4}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;->getSuffix(Z)Ljava/lang/String;

    #@18b
    move-result-object v4

    #@18c
    move-object/from16 v0, p0

    #@18e
    move-object/from16 v1, v33

    #@190
    move-object/from16 v2, v34

    #@192
    invoke-direct {v0, v4, v15, v1, v2}, Landroid/icu/text/MeasureFormat;->appendReplacingCurrency(Ljava/lang/String;Landroid/icu/util/Currency;Landroid/icu/impl/StandardPlural;Ljava/lang/StringBuilder;)V

    #@195
    .line 424
    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v4

    #@199
    return-object v4

    #@19a
    .line 421
    :cond_4
    const/4 v4, 0x0

    #@19b
    goto :goto_0

    #@19c
    .line 423
    :cond_5
    const/4 v4, 0x0

    #@19d
    goto :goto_1

    #@19e
    .line 436
    .end local v15    # "currencyUnit":Landroid/icu/util/Currency;
    .end local v34    # "result":Ljava/lang/StringBuilder;
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    #@1a1
    move-result-object v4

    #@1a2
    move-object/from16 v0, p0

    #@1a4
    iget-object v7, v0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@1a6
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Enum;->ordinal()I

    #@1a9
    move-result v8

    #@1aa
    move-object/from16 v0, p0

    #@1ac
    invoke-direct {v0, v4, v7, v8}, Landroid/icu/text/MeasureFormat;->getPluralFormatter(Landroid/icu/util/MeasureUnit;Landroid/icu/text/MeasureFormat$FormatWidth;I)Ljava/lang/String;

    #@1af
    move-result-object v18

    #@1b0
    .line 437
    .local v18, "formatter":Ljava/lang/String;
    const/4 v4, 0x1

    #@1b1
    new-array v4, v4, [Ljava/lang/CharSequence;

    #@1b3
    const/4 v7, 0x0

    #@1b4
    aput-object v17, v4, v7

    #@1b6
    move-object/from16 v0, v18

    #@1b8
    invoke-static {v0, v4}, Landroid/icu/impl/SimplePatternFormatter;->formatCompiledPattern(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    #@1bb
    move-result-object v4

    #@1bc
    return-object v4
.end method

.method public final varargs formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;
    .locals 2
    .param p1, "measures"    # [Landroid/icu/util/Measure;

    #@0
    .prologue
    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 347
    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@7
    .line 345
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
    .line 518
    array-length v4, p3

    #@2
    if-nez v4, :cond_0

    #@4
    .line 519
    return-object p1

    #@5
    .line 521
    :cond_0
    array-length v4, p3

    #@6
    const/4 v5, 0x1

    #@7
    if-ne v4, v5, :cond_1

    #@9
    .line 522
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
    .line 525
    :cond_1
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@14
    sget-object v5, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@16
    if-ne v4, v5, :cond_2

    #@18
    .line 528
    invoke-static {p3}, Landroid/icu/text/MeasureFormat;->toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;

    #@1b
    move-result-object v0

    #@1c
    .line 529
    .local v0, "hms":[Ljava/lang/Number;
    if-eqz v0, :cond_2

    #@1e
    .line 530
    invoke-direct {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v4

    #@22
    return-object v4

    #@23
    .line 535
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
    .line 534
    invoke-static {v4, v5}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Style;)Landroid/icu/text/ListFormatter;

    #@30
    move-result-object v2

    #@31
    .line 536
    .local v2, "listFormatter":Landroid/icu/text/ListFormatter;
    sget-object v4, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    #@33
    if-eq p2, v4, :cond_3

    #@35
    .line 537
    invoke-direct {p0, v2, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    #@38
    move-result-object v4

    #@39
    return-object v4

    #@3a
    .line 540
    :cond_3
    array-length v4, p3

    #@3b
    new-array v3, v4, [Ljava/lang/String;

    #@3d
    .line 541
    .local v3, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    #@3e
    .local v1, "i":I
    :goto_0
    array-length v4, p3

    #@3f
    if-ge v1, v4, :cond_5

    #@41
    .line 543
    aget-object v5, p3, v1

    #@43
    .line 544
    array-length v4, p3

    #@44
    add-int/lit8 v4, v4, -0x1

    #@46
    if-ne v1, v4, :cond_4

    #@48
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@4a
    .line 542
    :goto_1
    invoke-direct {p0, v5, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)Ljava/lang/String;

    #@4d
    move-result-object v4

    #@4e
    aput-object v4, v3, v1

    #@50
    .line 541
    add-int/lit8 v1, v1, 0x1

    #@52
    goto :goto_0

    #@53
    .line 544
    :cond_4
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@55
    goto :goto_1

    #@56
    .line 546
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
    .line 590
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/text/UFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getNumberFormat()Landroid/icu/text/NumberFormat;
    .locals 1

    #@0
    .prologue
    .line 597
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
    .line 583
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@2
    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    #@0
    .prologue
    .line 575
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
    .line 576
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormat()Landroid/icu/text/NumberFormat;

    #@d
    move-result-object v1

    #@e
    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->hashCode()I

    #@11
    move-result v1

    #@12
    .line 575
    add-int/2addr v0, v1

    #@13
    mul-int/lit8 v0, v0, 0x1f

    #@15
    .line 576
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    #@1c
    move-result v1

    #@1d
    .line 575
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
    .line 329
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
    .line 328
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
    .line 1102
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
    .line 1098
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
    .line 632
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
    .locals 9
    .param p1, "format"    # Landroid/icu/text/NumberFormat;

    #@0
    .prologue
    .line 636
    new-instance v0, Landroid/icu/text/MeasureFormat;

    #@2
    .line 637
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    #@5
    move-result-object v1

    #@6
    .line 638
    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->cache:Landroid/icu/text/MeasureFormat$MeasureFormatData;

    #@8
    .line 639
    iget-object v3, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    #@a
    .line 640
    new-instance v4, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@c
    invoke-direct {v4, p1}, Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;-><init>(Landroid/icu/text/NumberFormat;)V

    #@f
    .line 641
    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    #@11
    .line 642
    iget-object v6, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    #@13
    .line 643
    iget-object v7, p0, Landroid/icu/text/MeasureFormat;->currencyFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@15
    .line 644
    iget-object v8, p0, Landroid/icu/text/MeasureFormat;->integerFormat:Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;

    #@17
    .line 636
    invoke-direct/range {v0 .. v8}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$MeasureFormatData;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;Landroid/icu/text/MeasureFormat$ImmutableNumberFormat;)V

    #@1a
    return-object v0
.end method
