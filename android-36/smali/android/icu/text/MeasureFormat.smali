.class public Landroid/icu/text/MeasureFormat;
.super Landroid/icu/text/UFormat;
.source "MeasureFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/MeasureFormat$FormatWidth;,
        Landroid/icu/text/MeasureFormat$NumericFormatters;,
        Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;,
        Landroid/icu/text/MeasureFormat$MeasureProxy;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o CURRENCY_FORMAT:I = 0x2

.field private static final greylist-max-o MEASURE_FORMAT:I = 0x0

.field static final blacklist NUMBER_FORMATTER_CURRENCY:I = 0x2

.field static final blacklist NUMBER_FORMATTER_INTEGER:I = 0x3

.field static final blacklist NUMBER_FORMATTER_STANDARD:I = 0x1

.field private static final greylist-max-o TIME_UNIT_FORMAT:I = 0x1

.field private static final greylist-max-o hmsTo012:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/MeasureUnit;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o localeIdToRangeFormat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/SimpleCache<",
            "Landroid/icu/util/ULocale;",
            "Landroid/icu/text/MeasureFormat$NumericFormatters;",
            ">;"
        }
    .end annotation
.end field

.field static final whitelist serialVersionUID:J = -0x63abaa69b1b00340L


# instance fields
.field private final transient greylist-max-o formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

.field private transient blacklist formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

.field private transient blacklist formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

.field private transient blacklist formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

.field private final transient blacklist numberFormat:Landroid/icu/text/NumberFormat;

.field private final transient blacklist numberFormatter:Landroid/icu/number/LocalizedNumberFormatter;

.field private final transient greylist-max-o numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

.field private final transient greylist-max-o rules:Landroid/icu/text/PluralRules;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smfromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .registers 1

    invoke-static {p0}, Landroid/icu/text/MeasureFormat;->fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 118
    nop

    .line 134
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    .line 139
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    sget-object v1, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1015
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)V
    .registers 9
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 576
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "locale":Landroid/icu/util/ULocale;
    .end local p2    # "formatWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    .local v1, "locale":Landroid/icu/util/ULocale;
    .local v2, "formatWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;)V

    .line 577
    return-void
.end method

.method constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;)V
    .registers 11
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;

    .line 622
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .end local p1    # "locale":Landroid/icu/util/ULocale;
    .end local p2    # "formatWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    .end local p3    # "numberFormat":Landroid/icu/text/NumberFormat;
    .end local p4    # "rules":Landroid/icu/text/PluralRules;
    .local v1, "locale":Landroid/icu/util/ULocale;
    .local v2, "formatWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    .local v3, "numberFormat":Landroid/icu/text/NumberFormat;
    .local v4, "rules":Landroid/icu/text/PluralRules;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;)V

    .line 623
    sget-object p1, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-eq v2, p1, :cond_e

    .line 627
    return-void

    .line 624
    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The format width \'numeric\' is not allowed by this constructor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;)V
    .registers 8
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p3, "numberFormat"    # Landroid/icu/text/NumberFormat;
    .param p4, "rules"    # Landroid/icu/text/PluralRules;
    .param p5, "formatters"    # Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 584
    invoke-direct {p0}, Landroid/icu/text/UFormat;-><init>()V

    .line 678
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 679
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 680
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 586
    invoke-virtual {p0, p1, p1}, Landroid/icu/text/MeasureFormat;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 587
    iput-object p2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 589
    if-nez p4, :cond_15

    .line 590
    invoke-static {p1}, Landroid/icu/text/PluralRules;->forLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/PluralRules;

    move-result-object p4

    .line 592
    :cond_15
    iput-object p4, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    .line 594
    if-nez p3, :cond_1e

    .line 595
    invoke-static {p1}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object p3

    goto :goto_25

    .line 597
    :cond_1e
    invoke-virtual {p3}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object p3, v0

    check-cast p3, Landroid/icu/text/NumberFormat;

    .line 599
    :goto_25
    iput-object p3, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    .line 601
    if-nez p5, :cond_41

    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne p2, v0, :cond_41

    .line 602
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p1}, Landroid/icu/impl/SimpleCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p5, v0

    check-cast p5, Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 603
    if-nez p5, :cond_41

    .line 604
    invoke-static {p1}, Landroid/icu/text/MeasureFormat;->loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;

    move-result-object p5

    .line 605
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeToNumericDurationFormatters:Landroid/icu/impl/SimpleCache;

    invoke-virtual {v0, p1, p5}, Landroid/icu/impl/SimpleCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 608
    :cond_41
    iput-object p5, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    .line 610
    instance-of v0, p3, Landroid/icu/text/DecimalFormat;

    if-eqz v0, :cond_59

    .line 613
    move-object v0, p3

    check-cast v0, Landroid/icu/text/DecimalFormat;

    invoke-virtual {v0}, Landroid/icu/text/DecimalFormat;->toNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    iget-object v1, p2, Landroid/icu/text/MeasureFormat$FormatWidth;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 614
    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    .line 615
    return-void

    .line 611
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method private blacklist formatMeasure(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;
    .registers 7
    .param p1, "measure"    # Landroid/icu/util/Measure;

    .line 744
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v0

    .line 745
    .local v0, "unit":Landroid/icu/util/MeasureUnit;
    new-instance v1, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 746
    .local v1, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v2, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v2}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 747
    .local v2, "string":Landroid/icu/impl/FormattedStringBuilder;
    instance-of v3, v0, Landroid/icu/util/Currency;

    const/4 v4, 0x0

    if-eqz v3, :cond_20

    .line 748
    const/4 v3, 0x2

    invoke-direct {p0, v3, v0, v4}, Landroid/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILandroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v3

    .line 749
    invoke-virtual {v3, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    goto :goto_28

    .line 751
    :cond_20
    const/4 v3, 0x1

    invoke-direct {p0, v3, v0, v4}, Landroid/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILandroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v3

    .line 752
    invoke-virtual {v3, v1, v2}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 754
    :goto_28
    return-object v2
.end method

.method private blacklist formatMeasureInteger(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;
    .registers 7
    .param p1, "measure"    # Landroid/icu/util/Measure;

    .line 758
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 759
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 760
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-direct {p0, v4, v2, v3}, Landroid/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILandroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v2

    .line 761
    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 762
    return-object v1
.end method

.method private varargs blacklist formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)V
    .registers 10
    .param p1, "appendTo"    # Ljava/lang/Appendable;
    .param p2, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p3, "measures"    # [Landroid/icu/util/Measure;

    .line 418
    array-length v0, p3

    if-nez v0, :cond_4

    .line 419
    return-void

    .line 421
    :cond_4
    array-length v0, p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_16

    .line 422
    aget-object v0, p3, v1

    invoke-direct {p0, v0}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v0

    .line 423
    .local v0, "result":Landroid/icu/impl/FormattedStringBuilder;
    invoke-static {v0, p2}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    .line 424
    invoke-static {v0, p1}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 425
    return-void

    .line 428
    .end local v0    # "result":Landroid/icu/impl/FormattedStringBuilder;
    :cond_16
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v3, Landroid/icu/text/MeasureFormat$FormatWidth;->NUMERIC:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v3, :cond_26

    .line 431
    invoke-static {p3}, Landroid/icu/text/MeasureFormat;->toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;

    move-result-object v0

    .line 432
    .local v0, "hms":[Ljava/lang/Number;
    if-eqz v0, :cond_26

    .line 433
    invoke-direct {p0, v0, p1}, Landroid/icu/text/MeasureFormat;->formatNumeric([Ljava/lang/Number;Ljava/lang/Appendable;)V

    .line 434
    return-void

    .line 438
    .end local v0    # "hms":[Ljava/lang/Number;
    :cond_26
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    sget-object v3, Landroid/icu/text/ListFormatter$Type;->UNITS:Landroid/icu/text/ListFormatter$Type;

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v4, v4, Landroid/icu/text/MeasureFormat$FormatWidth;->listWidth:Landroid/icu/text/ListFormatter$Width;

    invoke-static {v0, v3, v4}, Landroid/icu/text/ListFormatter;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/ListFormatter$Type;Landroid/icu/text/ListFormatter$Width;)Landroid/icu/text/ListFormatter;

    move-result-object v0

    .line 441
    .local v0, "listFormatter":Landroid/icu/text/ListFormatter;
    sget-object v3, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    if-eq p2, v3, :cond_3c

    .line 442
    invoke-direct {p0, v0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/Appendable;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)V

    .line 443
    return-void

    .line 446
    :cond_3c
    array-length v3, p3

    new-array v3, v3, [Ljava/lang/String;

    .line 447
    .local v3, "results":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_40
    array-length v5, p3

    if-ge v4, v5, :cond_63

    .line 448
    array-length v5, p3

    sub-int/2addr v5, v2

    if-ne v4, v5, :cond_54

    .line 449
    aget-object v5, p3, v4

    invoke-direct {p0, v5}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    goto :goto_60

    .line 451
    :cond_54
    aget-object v5, p3, v4

    invoke-direct {p0, v5}, Landroid/icu/text/MeasureFormat;->formatMeasureInteger(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 447
    :goto_60
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 454
    .end local v4    # "i":I
    :cond_63
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v1

    .line 455
    .local v1, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    invoke-virtual {v1, p1}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->appendTo(Ljava/lang/Appendable;)V

    .line 456
    return-void
.end method

.method private varargs blacklist formatMeasuresSlowTrack(Landroid/icu/text/ListFormatter;Ljava/lang/Appendable;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)V
    .registers 12
    .param p1, "listFormatter"    # Landroid/icu/text/ListFormatter;
    .param p2, "appendTo"    # Ljava/lang/Appendable;
    .param p3, "fieldPosition"    # Ljava/text/FieldPosition;
    .param p4, "measures"    # [Landroid/icu/util/Measure;

    .line 770
    array-length v0, p4

    new-array v0, v0, [Ljava/lang/String;

    .line 773
    .local v0, "results":[Ljava/lang/String;
    new-instance v1, Ljava/text/FieldPosition;

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getFieldAttribute()Ljava/text/Format$Field;

    move-result-object v2

    .line 774
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getField()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/FieldPosition;-><init>(Ljava/text/Format$Field;I)V

    .line 776
    .local v1, "fpos":Ljava/text/FieldPosition;
    const/4 v2, -0x1

    .line 777
    .local v2, "fieldPositionFoundIndex":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_12
    array-length v4, p4

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ge v3, v4, :cond_3d

    .line 779
    array-length v4, p4

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_22

    .line 780
    aget-object v4, p4, v3

    invoke-direct {p0, v4}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v4

    .local v4, "result":Landroid/icu/impl/FormattedStringBuilder;
    goto :goto_28

    .line 782
    .end local v4    # "result":Landroid/icu/impl/FormattedStringBuilder;
    :cond_22
    aget-object v4, p4, v3

    invoke-direct {p0, v4}, Landroid/icu/text/MeasureFormat;->formatMeasureInteger(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v4

    .line 784
    .restart local v4    # "result":Landroid/icu/impl/FormattedStringBuilder;
    :goto_28
    if-ne v2, v5, :cond_34

    .line 785
    invoke-static {v4, v1}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    .line 786
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    if-eqz v5, :cond_34

    .line 787
    move v2, v3

    .line 790
    :cond_34
    invoke-virtual {v4}, Landroid/icu/impl/FormattedStringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v3

    .line 777
    .end local v4    # "result":Landroid/icu/impl/FormattedStringBuilder;
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 792
    .end local v3    # "i":I
    :cond_3d
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1, v3, v6}, Landroid/icu/text/ListFormatter;->formatImpl(Ljava/util/Collection;Z)Landroid/icu/text/ListFormatter$FormattedListBuilder;

    move-result-object v3

    .line 795
    .local v3, "builder":Landroid/icu/text/ListFormatter$FormattedListBuilder;
    invoke-virtual {v3, v2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->getOffset(I)I

    move-result v4

    .line 796
    .local v4, "offset":I
    if-eq v4, v5, :cond_5b

    .line 797
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 798
    invoke-virtual {v1}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p3, v5}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 800
    :cond_5b
    invoke-virtual {v3, p2}, Landroid/icu/text/ListFormatter$FormattedListBuilder;->appendTo(Ljava/lang/Appendable;)V

    .line 801
    return-void
.end method

.method private blacklist formatNumeric([Ljava/lang/Number;Ljava/lang/Appendable;)V
    .registers 16
    .param p1, "hms"    # [Ljava/lang/Number;
    .param p2, "appendable"    # Ljava/lang/Appendable;

    .line 843
    const/4 v0, 0x0

    aget-object v1, p1, v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_3c

    aget-object v1, p1, v2

    if-eqz v1, :cond_3c

    .line 844
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinuteSecond()Ljava/lang/String;

    move-result-object v1

    .line 845
    .local v1, "pattern":Ljava/lang/String;
    aget-object v4, p1, v3

    if-nez v4, :cond_1b

    .line 846
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, p1, v3

    .line 847
    :cond_1b
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, p1, v3

    .line 848
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_79

    .line 849
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_3c
    aget-object v1, p1, v0

    if-eqz v1, :cond_5b

    aget-object v1, p1, v3

    if-eqz v1, :cond_5b

    .line 850
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getHourMinute()Ljava/lang/String;

    move-result-object v1

    .line 851
    .restart local v1    # "pattern":Ljava/lang/String;
    aget-object v4, p1, v0

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, p1, v0

    goto :goto_79

    .line 852
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_5b
    aget-object v1, p1, v3

    if-eqz v1, :cond_102

    aget-object v1, p1, v2

    if-eqz v1, :cond_102

    .line 853
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat$NumericFormatters;->getMinuteSecond()Ljava/lang/String;

    move-result-object v1

    .line 854
    .restart local v1    # "pattern":Ljava/lang/String;
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, p1, v3

    .line 861
    :goto_79
    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->numberFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-static {v2}, Landroid/icu/number/IntegerWidth;->zeroFillTo(I)Landroid/icu/number/IntegerWidth;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/icu/number/LocalizedNumberFormatter;->integerWidth(Landroid/icu/number/IntegerWidth;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v4

    check-cast v4, Landroid/icu/number/LocalizedNumberFormatter;

    .line 862
    .local v4, "numberFormatter2":Landroid/icu/number/LocalizedNumberFormatter;
    new-instance v5, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v5}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 864
    .local v5, "fsb":Landroid/icu/impl/FormattedStringBuilder;
    const/4 v6, 0x0

    .line 865
    .local v6, "protect":Z
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_8c
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_f6

    .line 866
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    .line 870
    .local v8, "c":C
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 871
    .local v9, "value":Ljava/lang/Number;
    sparse-switch v8, :sswitch_data_108

    goto :goto_a6

    .line 874
    :sswitch_9e
    aget-object v9, p1, v2

    goto :goto_a6

    .line 873
    :sswitch_a1
    aget-object v9, p1, v3

    goto :goto_a6

    .line 872
    :sswitch_a4
    aget-object v9, p1, v0

    .line 880
    :goto_a6
    const/4 v10, 0x0

    sparse-switch v8, :sswitch_data_116

    .line 905
    invoke-virtual {v5, v8, v10}, Landroid/icu/impl/FormattedStringBuilder;->appendChar16(CLjava/lang/Object;)I

    goto :goto_f4

    .line 884
    :sswitch_ae
    if-eqz v6, :cond_b4

    .line 885
    invoke-virtual {v5, v8, v10}, Landroid/icu/impl/FormattedStringBuilder;->appendChar16(CLjava/lang/Object;)I

    goto :goto_f4

    .line 887
    :cond_b4
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_ce

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_ce

    .line 888
    invoke-virtual {v4, v9}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 889
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    .line 891
    :cond_ce
    iget-object v11, p0, Landroid/icu/text/MeasureFormat;->numberFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v11, v9}, Landroid/icu/number/LocalizedNumberFormatter;->format(Ljava/lang/Number;)Landroid/icu/number/FormattedNumber;

    move-result-object v11

    invoke-virtual {v5, v11, v10}, Landroid/icu/impl/FormattedStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;)I

    .line 894
    goto :goto_f4

    .line 897
    :sswitch_d8
    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v11, v12, :cond_ee

    add-int/lit8 v11, v7, 0x1

    invoke-virtual {v1, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v8, :cond_ee

    .line 898
    invoke-virtual {v5, v8, v10}, Landroid/icu/impl/FormattedStringBuilder;->appendChar16(CLjava/lang/Object;)I

    .line 899
    add-int/lit8 v7, v7, 0x1

    goto :goto_f4

    .line 901
    :cond_ee
    if-nez v6, :cond_f2

    move v10, v3

    goto :goto_f3

    :cond_f2
    move v10, v0

    .line 903
    .end local v6    # "protect":Z
    .local v10, "protect":Z
    :goto_f3
    move v6, v10

    .line 865
    .end local v8    # "c":C
    .end local v9    # "value":Ljava/lang/Number;
    .end local v10    # "protect":Z
    .restart local v6    # "protect":Z
    :goto_f4
    add-int/2addr v7, v3

    goto :goto_8c

    .line 910
    .end local v7    # "i":I
    :cond_f6
    :try_start_f6
    invoke-interface {p2, v5}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_f9
    .catch Ljava/io/IOException; {:try_start_f6 .. :try_end_f9} :catch_fb

    .line 913
    nop

    .line 914
    return-void

    .line 911
    :catch_fb
    move-exception v0

    .line 912
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Landroid/icu/util/ICUUncheckedIOException;

    invoke-direct {v2, v0}, Landroid/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 856
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "pattern":Ljava/lang/String;
    .end local v4    # "numberFormatter2":Landroid/icu/number/LocalizedNumberFormatter;
    .end local v5    # "fsb":Landroid/icu/impl/FormattedStringBuilder;
    .end local v6    # "protect":Z
    :cond_102
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_data_108
    .sparse-switch
        0x48 -> :sswitch_a4
        0x6d -> :sswitch_a1
        0x73 -> :sswitch_9e
    .end sparse-switch

    :sswitch_data_116
    .sparse-switch
        0x27 -> :sswitch_d8
        0x48 -> :sswitch_ae
        0x6d -> :sswitch_ae
        0x73 -> :sswitch_ae
    .end sparse-switch
.end method

.method private static greylist-max-o fromFormatWidthOrdinal(I)Landroid/icu/text/MeasureFormat$FormatWidth;
    .registers 3
    .param p0, "ordinal"    # I

    .line 1008
    invoke-static {}, Landroid/icu/text/MeasureFormat$FormatWidth;->values()[Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    .line 1009
    .local v0, "values":[Landroid/icu/text/MeasureFormat$FormatWidth;
    if-ltz p0, :cond_d

    array-length v1, v0

    if-lt p0, v1, :cond_a

    goto :goto_d

    .line 1012
    :cond_a
    aget-object v1, v0, p0

    return-object v1

    .line 1010
    :cond_d
    :goto_d
    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v1
.end method

.method public static whitelist test-api getCurrencyFormat()Landroid/icu/text/MeasureFormat;
    .registers 1

    .line 559
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 538
    new-instance v0, Landroid/icu/text/CurrencyFormat;

    invoke-direct {v0, p0}, Landroid/icu/text/CurrencyFormat;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static whitelist test-api getCurrencyFormat(Ljava/util/Locale;)Landroid/icu/text/MeasureFormat;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 549
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/MeasureFormat;->getCurrencyFormat(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .registers 3
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 222
    invoke-static {p0}, Landroid/icu/text/NumberFormat;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .registers 9
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    .line 253
    new-instance v0, Landroid/icu/text/MeasureFormat;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .end local p0    # "locale":Landroid/icu/util/ULocale;
    .end local p1    # "formatWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    .end local p2    # "format":Landroid/icu/text/NumberFormat;
    .local v1, "locale":Landroid/icu/util/ULocale;
    .local v2, "formatWidth":Landroid/icu/text/MeasureFormat$FormatWidth;
    .local v3, "format":Landroid/icu/text/NumberFormat;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;
    .registers 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 235
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .registers 4
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "formatWidth"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .param p2, "format"    # Landroid/icu/text/NumberFormat;

    .line 271
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;
    .registers 9
    .param p0, "forLocale"    # Landroid/icu/util/ULocale;
    .param p1, "width"    # Landroid/icu/text/MeasureFormat$FormatWidth;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1032
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fr"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1033
    sget-object v0, Landroid/icu/util/ULocale;->ROOT:Landroid/icu/util/ULocale;

    invoke-static {v0, p1}, Landroid/icu/text/MeasureFormat;->getRangeFormat(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1035
    :cond_13
    sget-object v0, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1036
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_8a

    .line 1037
    nop

    .line 1038
    const-string v1, "android/icu/impl/data/icudata"

    invoke-static {v1, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUResourceBundle;

    .line 1039
    .local v1, "rb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v2

    .line 1040
    .local v2, "realLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_41

    .line 1042
    sget-object v3, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v3, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    .line 1043
    if-eqz v0, :cond_41

    .line 1044
    sget-object v3, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1045
    return-object v0

    .line 1050
    :cond_41
    invoke-static {p0}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v3

    .line 1052
    .local v3, "ns":Landroid/icu/text/NumberingSystem;
    const/4 v4, 0x0

    .line 1054
    .local v4, "resultString":Ljava/lang/String;
    :try_start_46
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NumberElements/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1055
    invoke-virtual {v3}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/miscPatterns/range"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_67
    .catch Ljava/util/MissingResourceException; {:try_start_46 .. :try_end_67} :catch_68

    .line 1058
    .end local v4    # "resultString":Ljava/lang/String;
    .local v5, "resultString":Ljava/lang/String;
    goto :goto_70

    .line 1056
    .end local v5    # "resultString":Ljava/lang/String;
    .restart local v4    # "resultString":Ljava/lang/String;
    :catch_68
    move-exception v5

    .line 1057
    .local v5, "ex":Ljava/util/MissingResourceException;
    const-string v6, "NumberElements/latn/patterns/range"

    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .line 1059
    .end local v4    # "resultString":Ljava/lang/String;
    .local v5, "resultString":Ljava/lang/String;
    :goto_70
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1060
    const/4 v6, 0x2

    invoke-static {v5, v4, v6, v6}, Landroid/icu/impl/SimpleFormatterImpl;->compileToStringMinMaxArguments(Ljava/lang/CharSequence;Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    .line 1061
    sget-object v4, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v4, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1062
    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8a

    .line 1063
    sget-object v4, Landroid/icu/text/MeasureFormat;->localeIdToRangeFormat:Ljava/util/Map;

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    .end local v1    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v2    # "realLocale":Landroid/icu/util/ULocale;
    .end local v3    # "ns":Landroid/icu/text/NumberingSystem;
    .end local v5    # "resultString":Ljava/lang/String;
    :cond_8a
    return-object v0
.end method

.method private declared-synchronized blacklist getUnitFormatterFromCache(ILandroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/number/LocalizedNumberFormatter;
    .registers 7
    .param p1, "type"    # I
    .param p2, "unit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "perUnit"    # Landroid/icu/util/MeasureUnit;

    monitor-enter p0

    .line 686
    :try_start_1
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    if-eqz v0, :cond_55

    .line 687
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    if-ne v0, p1, :cond_1d

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Landroid/icu/util/MeasureUnit;

    if-ne v0, p2, :cond_1d

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Landroid/icu/util/MeasureUnit;

    if-ne v0, p3, :cond_1d

    .line 688
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Landroid/icu/number/LocalizedNumberFormatter;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_e5

    monitor-exit p0

    return-object v0

    .line 690
    .end local p0    # "this":Landroid/icu/text/MeasureFormat;
    :cond_1d
    :try_start_1d
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    if-eqz v0, :cond_55

    .line 691
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    if-ne v0, p1, :cond_39

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Landroid/icu/util/MeasureUnit;

    if-ne v0, p2, :cond_39

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Landroid/icu/util/MeasureUnit;

    if-ne v0, p3, :cond_39

    .line 694
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Landroid/icu/number/LocalizedNumberFormatter;
    :try_end_37
    .catchall {:try_start_1d .. :try_end_37} :catchall_e5

    monitor-exit p0

    return-object v0

    .line 696
    :cond_39
    :try_start_39
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    if-eqz v0, :cond_55

    .line 697
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    if-ne v0, p1, :cond_55

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Landroid/icu/util/MeasureUnit;

    if-ne v0, p2, :cond_55

    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Landroid/icu/util/MeasureUnit;

    if-ne v0, p3, :cond_55

    .line 700
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iget-object v0, v0, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Landroid/icu/number/LocalizedNumberFormatter;
    :try_end_53
    .catchall {:try_start_39 .. :try_end_53} :catchall_e5

    monitor-exit p0

    return-object v0

    .line 708
    :cond_55
    const/4 v0, 0x1

    if-ne p1, v0, :cond_73

    .line 709
    :try_start_58
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/number/LocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p3}, Landroid/icu/number/LocalizedNumberFormatter;->perUnit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$FormatWidth;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 710
    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    .local v0, "formatter":Landroid/icu/number/LocalizedNumberFormatter;
    goto :goto_c4

    .line 711
    .end local v0    # "formatter":Landroid/icu/number/LocalizedNumberFormatter;
    :cond_73
    const/4 v0, 0x2

    if-ne p1, v0, :cond_95

    .line 712
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/number/NumberFormatter;->withLocale(Landroid/icu/util/ULocale;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/number/LocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p3}, Landroid/icu/number/LocalizedNumberFormatter;->perUnit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$FormatWidth;->currencyWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    .line 713
    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    .restart local v0    # "formatter":Landroid/icu/number/LocalizedNumberFormatter;
    goto :goto_c4

    .line 715
    .end local v0    # "formatter":Landroid/icu/number/LocalizedNumberFormatter;
    :cond_95
    nop

    .line 716
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/icu/number/LocalizedNumberFormatter;->unit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    invoke-virtual {v0, p3}, Landroid/icu/number/LocalizedNumberFormatter;->perUnit(Landroid/icu/util/MeasureUnit;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$FormatWidth;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->unitWidth(Landroid/icu/number/NumberFormatter$UnitWidth;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    .line 717
    invoke-static {}, Landroid/icu/number/Precision;->integer()Landroid/icu/number/FractionPrecision;

    move-result-object v1

    sget-object v2, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 718
    invoke-static {v2}, Landroid/icu/impl/number/RoundingUtils;->mathContextUnlimited(Ljava/math/RoundingMode;)Ljava/math/MathContext;

    move-result-object v2

    .line 717
    invoke-virtual {v1, v2}, Landroid/icu/number/FractionPrecision;->withMode(Ljava/math/MathContext;)Landroid/icu/number/Precision;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->precision(Landroid/icu/number/Precision;)Landroid/icu/number/NumberFormatterSettings;

    move-result-object v0

    check-cast v0, Landroid/icu/number/LocalizedNumberFormatter;

    .line 720
    .restart local v0    # "formatter":Landroid/icu/number/LocalizedNumberFormatter;
    :goto_c4
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 721
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 722
    new-instance v1, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    invoke-direct {v1}, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;-><init>()V

    iput-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 723
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput p1, v1, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->type:I

    .line 724
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object p2, v1, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->unit:Landroid/icu/util/MeasureUnit;

    .line 725
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object p3, v1, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->perUnit:Landroid/icu/util/MeasureUnit;

    .line 726
    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    iput-object v0, v1, Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;->formatter:Landroid/icu/number/LocalizedNumberFormatter;
    :try_end_e3
    .catchall {:try_start_58 .. :try_end_e3} :catchall_e5

    .line 727
    monitor-exit p0

    return-object v0

    .line 685
    .end local v0    # "formatter":Landroid/icu/number/LocalizedNumberFormatter;
    .end local p1    # "type":I
    .end local p2    # "unit":Landroid/icu/util/MeasureUnit;
    .end local p3    # "perUnit":Landroid/icu/util/MeasureUnit;
    :catchall_e5
    move-exception p1

    :try_start_e6
    monitor-exit p0
    :try_end_e7
    .catchall {:try_start_e6 .. :try_end_e7} :catchall_e5

    throw p1
.end method

.method private static blacklist loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "r"    # Landroid/icu/impl/ICUResourceBundle;
    .param p1, "type"    # Ljava/lang/String;

    .line 805
    const-string v0, "durationUnits/%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object p0

    .line 807
    invoke-virtual {p0}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "h"

    const-string v2, "H"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o loadNumericFormatters(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat$NumericFormatters;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 657
    nop

    .line 658
    const-string v0, "android/icu/impl/data/icudata/unit"

    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 659
    .local v0, "r":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Landroid/icu/text/MeasureFormat$NumericFormatters;

    const-string v2, "hm"

    invoke-static {v0, v2}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 660
    const-string v3, "ms"

    invoke-static {v0, v3}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 661
    const-string v4, "hms"

    invoke-static {v0, v4}, Landroid/icu/text/MeasureFormat;->loadNumericDurationFormat(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$NumericFormatters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    return-object v1
.end method

.method private static greylist-max-o toHMS([Landroid/icu/util/Measure;)[Ljava/lang/Number;
    .registers 10
    .param p0, "measures"    # [Landroid/icu/util/Measure;

    .line 816
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Number;

    .line 817
    .local v0, "result":[Ljava/lang/Number;
    const/4 v1, -0x1

    .line 818
    .local v1, "lastIdx":I
    array-length v2, p0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_3a

    aget-object v4, p0, v3

    .line 819
    .local v4, "m":Landroid/icu/util/Measure;
    invoke-virtual {v4}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    const/4 v6, 0x0

    if-gez v5, :cond_1a

    .line 820
    return-object v6

    .line 822
    :cond_1a
    sget-object v5, Landroid/icu/text/MeasureFormat;->hmsTo012:Ljava/util/Map;

    invoke-virtual {v4}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 823
    .local v5, "idxObj":Ljava/lang/Integer;
    if-nez v5, :cond_29

    .line 824
    return-object v6

    .line 826
    :cond_29
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 827
    .local v7, "idx":I
    if-gt v7, v1, :cond_30

    .line 829
    return-object v6

    .line 831
    :cond_30
    move v1, v7

    .line 832
    invoke-virtual {v4}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v6

    aput-object v6, v0, v7

    .line 818
    .end local v4    # "m":Landroid/icu/util/Measure;
    .end local v5    # "idxObj":Ljava/lang/Integer;
    .end local v7    # "idx":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 834
    :cond_3a
    return-object v0
.end method

.method private whitelist writeReplace()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 925
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method


# virtual methods
.method declared-synchronized blacklist clearCache()V
    .registers 2

    monitor-enter p0

    .line 731
    const/4 v0, 0x0

    :try_start_2
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter1:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 732
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter2:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;

    .line 733
    iput-object v0, p0, Landroid/icu/text/MeasureFormat;->formatter3:Landroid/icu/text/MeasureFormat$NumberFormatterCacheEntry;
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    .line 734
    monitor-exit p0

    return-void

    .line 730
    .end local p0    # "this":Landroid/icu/text/MeasureFormat;
    :catchall_a
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_b .. :try_end_c} :catchall_a

    throw v0
.end method

.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "other"    # Ljava/lang/Object;

    .line 477
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 478
    return v0

    .line 480
    :cond_4
    instance-of v1, p1, Landroid/icu/text/MeasureFormat;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 481
    return v2

    .line 483
    :cond_a
    move-object v1, p1

    check-cast v1, Landroid/icu/text/MeasureFormat;

    .line 485
    .local v1, "rhs":Landroid/icu/text/MeasureFormat;
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v4

    if-ne v3, v4, :cond_34

    .line 486
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/util/ULocale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 487
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v3

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/icu/text/NumberFormat;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    goto :goto_35

    :cond_34
    move v0, v2

    .line 485
    :goto_35
    return v0
.end method

.method public whitelist test-api format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 12
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "toAppendTo"    # Ljava/lang/StringBuffer;
    .param p3, "fpos"    # Ljava/text/FieldPosition;

    .line 293
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 294
    .local v0, "prevLength":I
    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 295
    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 296
    instance-of v1, p1, Ljava/util/Collection;

    if-eqz v1, :cond_42

    .line 297
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 298
    .local v1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    new-array v2, v2, [Landroid/icu/util/Measure;

    .line 299
    .local v2, "measures":[Landroid/icu/util/Measure;
    const/4 v3, 0x0

    .line 300
    .local v3, "idx":I
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 301
    .local v5, "o":Ljava/lang/Object;
    instance-of v6, v5, Landroid/icu/util/Measure;

    if-eqz v6, :cond_34

    .line 304
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    move-object v7, v5

    check-cast v7, Landroid/icu/util/Measure;

    aput-object v7, v2, v3

    .line 305
    .end local v5    # "o":Ljava/lang/Object;
    move v3, v6

    goto :goto_1d

    .line 302
    .end local v6    # "idx":I
    .restart local v3    # "idx":I
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_34
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 306
    .end local v5    # "o":Ljava/lang/Object;
    :cond_3e
    invoke-direct {p0, p2, p3, v2}, Landroid/icu/text/MeasureFormat;->formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)V

    .line 307
    .end local v1    # "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .end local v2    # "measures":[Landroid/icu/util/Measure;
    .end local v3    # "idx":I
    goto :goto_5f

    :cond_42
    instance-of v1, p1, [Landroid/icu/util/Measure;

    if-eqz v1, :cond_4d

    .line 308
    move-object v1, p1

    check-cast v1, [Landroid/icu/util/Measure;

    invoke-direct {p0, p2, p3, v1}, Landroid/icu/text/MeasureFormat;->formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)V

    goto :goto_5f

    .line 309
    :cond_4d
    instance-of v1, p1, Landroid/icu/util/Measure;

    if-eqz v1, :cond_78

    .line 310
    move-object v1, p1

    check-cast v1, Landroid/icu/util/Measure;

    invoke-direct {p0, v1}, Landroid/icu/text/MeasureFormat;->formatMeasure(Landroid/icu/util/Measure;)Landroid/icu/impl/FormattedStringBuilder;

    move-result-object v1

    .line 312
    .local v1, "result":Landroid/icu/impl/FormattedStringBuilder;
    invoke-static {v1, p3}, Landroid/icu/impl/FormattedValueStringBuilderImpl;->nextFieldPosition(Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;)Z

    .line 313
    invoke-static {v1, p2}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 314
    .end local v1    # "result":Landroid/icu/impl/FormattedStringBuilder;
    nop

    .line 317
    :goto_5f
    if-lez v0, :cond_77

    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-eqz v1, :cond_77

    .line 318
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 319
    invoke-virtual {p3}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p3, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 321
    :cond_77
    return-object p2

    .line 315
    :cond_78
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist test-api formatMeasurePerUnit(Landroid/icu/util/Measure;Landroid/icu/util/MeasureUnit;Ljava/lang/StringBuilder;Ljava/text/FieldPosition;)Ljava/lang/StringBuilder;
    .registers 9
    .param p1, "measure"    # Landroid/icu/util/Measure;
    .param p2, "perUnit"    # Landroid/icu/util/MeasureUnit;
    .param p3, "appendTo"    # Ljava/lang/StringBuilder;
    .param p4, "pos"    # Ljava/text/FieldPosition;

    .line 374
    new-instance v0, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;

    invoke-virtual {p1}, Landroid/icu/util/Measure;->getNumber()Ljava/lang/Number;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/icu/impl/number/DecimalQuantity_DualStorageBCD;-><init>(Ljava/lang/Number;)V

    .line 375
    .local v0, "dq":Landroid/icu/impl/number/DecimalQuantity;
    new-instance v1, Landroid/icu/impl/FormattedStringBuilder;

    invoke-direct {v1}, Landroid/icu/impl/FormattedStringBuilder;-><init>()V

    .line 376
    .local v1, "string":Landroid/icu/impl/FormattedStringBuilder;
    nop

    .line 377
    invoke-virtual {p1}, Landroid/icu/util/Measure;->getUnit()Landroid/icu/util/MeasureUnit;

    move-result-object v2

    .line 376
    const/4 v3, 0x1

    invoke-direct {p0, v3, v2, p2}, Landroid/icu/text/MeasureFormat;->getUnitFormatterFromCache(ILandroid/icu/util/MeasureUnit;Landroid/icu/util/MeasureUnit;)Landroid/icu/number/LocalizedNumberFormatter;

    move-result-object v2

    .line 378
    invoke-virtual {v2, v0, v1}, Landroid/icu/number/LocalizedNumberFormatter;->formatImpl(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;)Landroid/icu/impl/number/MicroProps;

    .line 379
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-static {v0, v1, p4, v2}, Landroid/icu/text/DecimalFormat;->fieldPositionHelper(Landroid/icu/impl/number/DecimalQuantity;Landroid/icu/impl/FormattedStringBuilder;Ljava/text/FieldPosition;I)V

    .line 380
    invoke-static {v1, p3}, Landroid/icu/impl/Utility;->appendTo(Ljava/lang/CharSequence;Ljava/lang/Appendable;)Ljava/lang/Appendable;

    .line 381
    return-object p3
.end method

.method public final varargs whitelist test-api formatMeasures([Landroid/icu/util/Measure;)Ljava/lang/String;
    .registers 4
    .param p1, "measures"    # [Landroid/icu/util/Measure;

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/icu/impl/DontCareFieldPosition;->INSTANCE:Landroid/icu/impl/DontCareFieldPosition;

    invoke-virtual {p0, v0, v1, p1}, Landroid/icu/text/MeasureFormat;->formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs whitelist test-api formatMeasures(Ljava/lang/StringBuilder;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)Ljava/lang/StringBuilder;
    .registers 6
    .param p1, "appendTo"    # Ljava/lang/StringBuilder;
    .param p2, "fpos"    # Ljava/text/FieldPosition;
    .param p3, "measures"    # [Landroid/icu/util/Measure;

    .line 404
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 405
    .local v0, "prevLength":I
    invoke-direct {p0, p1, p2, p3}, Landroid/icu/text/MeasureFormat;->formatMeasuresInternal(Ljava/lang/Appendable;Ljava/text/FieldPosition;[Landroid/icu/util/Measure;)V

    .line 406
    if-lez v0, :cond_1f

    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    if-lez v1, :cond_1f

    .line 407
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getBeginIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    .line 408
    invoke-virtual {p2}, Ljava/text/FieldPosition;->getEndIndex()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p2, v1}, Ljava/text/FieldPosition;->setEndIndex(I)V

    .line 410
    :cond_1f
    return-object p1
.end method

.method public final whitelist test-api getLocale()Landroid/icu/util/ULocale;
    .registers 2

    .line 513
    sget-object v0, Landroid/icu/util/ULocale;->VALID_LOCALE:Landroid/icu/util/ULocale$Type;

    invoke-virtual {p0, v0}, Landroid/icu/text/MeasureFormat;->getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getNumberFormat()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 520
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    invoke-virtual {v0}, Landroid/icu/text/NumberFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method blacklist getNumberFormatInternal()Landroid/icu/text/NumberFormat;
    .registers 2

    .line 527
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormat:Landroid/icu/text/NumberFormat;

    return-object v0
.end method

.method blacklist getNumberFormatter()Landroid/icu/number/LocalizedNumberFormatter;
    .registers 2

    .line 738
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->numberFormatter:Landroid/icu/number/LocalizedNumberFormatter;

    return-object v0
.end method

.method public whitelist test-api getUnitDisplayName(Landroid/icu/util/MeasureUnit;)Ljava/lang/String;
    .registers 4
    .param p1, "unit"    # Landroid/icu/util/MeasureUnit;

    .line 468
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v1, v1, Landroid/icu/text/MeasureFormat$FormatWidth;->unitWidth:Landroid/icu/number/NumberFormatter$UnitWidth;

    invoke-static {v0, p1, v1}, Landroid/icu/impl/number/LongNameHandler;->getUnitDisplayName(Landroid/icu/util/ULocale;Landroid/icu/util/MeasureUnit;Landroid/icu/number/NumberFormatter$UnitWidth;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;
    .registers 3

    .line 503
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    sget-object v1, Landroid/icu/text/MeasureFormat$FormatWidth;->DEFAULT_CURRENCY:Landroid/icu/text/MeasureFormat$FormatWidth;

    if-ne v0, v1, :cond_9

    .line 504
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0

    .line 506
    :cond_9
    iget-object v0, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    return-object v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 3

    .line 496
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/NumberFormat;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v1

    invoke-virtual {v1}, Landroid/icu/text/MeasureFormat$FormatWidth;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;
    .registers 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "pos"    # Ljava/text/ParsePosition;

    .line 334
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic whitelist test-api parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1, p2}, Landroid/icu/text/MeasureFormat;->parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Landroid/icu/util/Measure;

    move-result-object p1

    return-object p1
.end method

.method greylist-max-o toCurrencyProxy()Ljava/lang/Object;
    .registers 6

    .line 921
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method greylist-max-o toTimeUnitProxy()Ljava/lang/Object;
    .registers 6

    .line 917
    new-instance v0, Landroid/icu/text/MeasureFormat$MeasureProxy;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getNumberFormatInternal()Landroid/icu/text/NumberFormat;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/icu/text/MeasureFormat$MeasureProxy;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;I)V

    return-object v0
.end method

.method greylist-max-o withLocale(Landroid/icu/util/ULocale;)Landroid/icu/text/MeasureFormat;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 564
    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getWidth()Landroid/icu/text/MeasureFormat$FormatWidth;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o withNumberFormat(Landroid/icu/text/NumberFormat;)Landroid/icu/text/MeasureFormat;
    .registers 8
    .param p1, "format"    # Landroid/icu/text/NumberFormat;

    .line 568
    new-instance v0, Landroid/icu/text/MeasureFormat;

    invoke-virtual {p0}, Landroid/icu/text/MeasureFormat;->getLocale()Landroid/icu/util/ULocale;

    move-result-object v1

    iget-object v2, p0, Landroid/icu/text/MeasureFormat;->formatWidth:Landroid/icu/text/MeasureFormat$FormatWidth;

    iget-object v4, p0, Landroid/icu/text/MeasureFormat;->rules:Landroid/icu/text/PluralRules;

    iget-object v5, p0, Landroid/icu/text/MeasureFormat;->numericFormatters:Landroid/icu/text/MeasureFormat$NumericFormatters;

    move-object v3, p1

    .end local p1    # "format":Landroid/icu/text/NumberFormat;
    .local v3, "format":Landroid/icu/text/NumberFormat;
    invoke-direct/range {v0 .. v5}, Landroid/icu/text/MeasureFormat;-><init>(Landroid/icu/util/ULocale;Landroid/icu/text/MeasureFormat$FormatWidth;Landroid/icu/text/NumberFormat;Landroid/icu/text/PluralRules;Landroid/icu/text/MeasureFormat$NumericFormatters;)V

    return-object v0
.end method
