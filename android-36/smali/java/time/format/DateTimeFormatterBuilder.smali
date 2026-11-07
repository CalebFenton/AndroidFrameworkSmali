.class public final Ljava/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;,
        Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;,
        Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;,
        Ljava/time/format/DateTimeFormatterBuilder$DayPeriod;,
        Ljava/time/format/DateTimeFormatterBuilder$PrefixTree;
    }
.end annotation


# static fields
.field private static final greylist-max-o FIELD_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/ZoneId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o active:Ljava/time/format/DateTimeFormatterBuilder;

.field private final greylist-max-o optional:Z

.field private greylist-max-o padNextChar:C

.field private greylist-max-o padNextWidth:I

.field private final greylist-max-o parent:Ljava/time/format/DateTimeFormatterBuilder;

.field private final greylist-max-o printerParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o valueParserIndex:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 169
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    .line 2086
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    .line 2089
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2090
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR_OF_ERA:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2091
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2092
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2093
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2094
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2095
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2098
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2099
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2100
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2101
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->AMPM_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2103
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2104
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2105
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2106
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2107
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2109
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->MILLI_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2111
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->NANO_OF_DAY:Ljava/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2113
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Ljava/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2127
    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 265
    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V
    .registers 4
    .param p1, "parent"    # Ljava/time/format/DateTimeFormatterBuilder;
    .param p2, "optional"    # Z

    .line 274
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 275
    iput-object p1, p0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    .line 276
    iput-boolean p2, p0, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    .line 277
    return-void
.end method

.method private greylist-max-o appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .registers 5
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    .line 2257
    const-string v0, "pp"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2258
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v0, :cond_22

    .line 2259
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-char v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v0

    .line 2260
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, 0x0

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2261
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput-char v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2263
    :cond_22
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2264
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2265
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private greylist-max-o appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "pp"    # Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 654
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v0, :cond_48

    .line 655
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 658
    .local v0, "activeValueParser":I
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    .line 659
    .local v1, "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_34

    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-$$Nest$fgetsignStyle(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne v2, v3, :cond_34

    .line 661
    iget v2, p1, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 663
    invoke-virtual {p1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 665
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput v0, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_40

    .line 668
    :cond_34
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    .line 670
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 673
    :goto_40
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 674
    .end local v0    # "activeValueParser":I
    .end local v1    # "basePP":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    goto :goto_50

    .line 676
    :cond_48
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 678
    :goto_50
    return-object p0
.end method

.method private static greylist-max-o convertStyle(Ljava/time/format/FormatStyle;)I
    .registers 2
    .param p0, "style"    # Ljava/time/format/FormatStyle;

    .line 252
    if-nez p0, :cond_4

    .line 253
    const/4 v0, -0x1

    return v0

    .line 255
    :cond_4
    invoke-virtual {p0}, Ljava/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static whitelist test-api getLocalizedDateTimePattern(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;Ljava/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 218
    const-string v0, "locale"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 219
    const-string v0, "chrono"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    if-nez p0, :cond_17

    if-eqz p1, :cond_f

    goto :goto_17

    .line 221
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :cond_17
    :goto_17
    instance-of v0, p2, Ljava/time/chrono/IsoChronology;

    if-eqz v0, :cond_1e

    const-string v0, "gregorian"

    goto :goto_22

    :cond_1e
    invoke-interface {p2}, Ljava/time/chrono/Chronology;->getCalendarType()Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "calType":Ljava/lang/String;
    :goto_22
    invoke-static {p3, v0}, Llibcore/icu/ICU;->getExtendedCalendar(Ljava/util/Locale;Ljava/lang/String;)Lcom/android/icu/util/ExtendedCalendar;

    move-result-object v1

    .line 235
    .local v1, "extendedCalendar":Lcom/android/icu/util/ExtendedCalendar;
    invoke-static {p0}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v2

    .line 236
    invoke-static {p1}, Ljava/time/format/DateTimeFormatterBuilder;->convertStyle(Ljava/time/format/FormatStyle;)I

    move-result v3

    .line 235
    invoke-virtual {v1, v2, v3}, Lcom/android/icu/util/ExtendedCalendar;->getDateTimePattern(II)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v2}, Llibcore/icu/ICU;->transformIcuDateTimePattern_forJavaTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 242
    return-object v2
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/ZoneId;
    .registers 3
    .param p0, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 170
    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/ZoneId;

    .line 171
    .local v0, "zone":Ljava/time/ZoneId;
    instance-of v1, v0, Ljava/time/ZoneOffset;

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    goto :goto_11

    :cond_10
    move-object v1, v0

    :goto_11
    return-object v1
.end method

.method private greylist-max-o parseField(CILjava/time/temporal/TemporalField;)V
    .registers 9
    .param p1, "cur"    # C
    .param p2, "count"    # I
    .param p3, "field"    # Ljava/time/temporal/TemporalField;

    .line 1953
    const/4 v0, 0x0

    .line 1954
    .local v0, "standalone":Z
    const/16 v1, 0x13

    const-string v2, "Too many pattern letters: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_176

    .line 2076
    if-ne p2, v4, :cond_171

    .line 2077
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 1957
    :sswitch_11
    if-ne p2, v3, :cond_1a

    .line 1958
    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljava/time/LocalDate;

    invoke-virtual {p0, p3, v3, v3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 1959
    :cond_1a
    const/4 v2, 0x4

    if-ge p2, v2, :cond_24

    .line 1960
    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 1962
    :cond_24
    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1964
    goto/16 :goto_174

    .line 2068
    :sswitch_2b
    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2069
    goto/16 :goto_174

    .line 1966
    :sswitch_32
    if-ne p2, v4, :cond_3e

    .line 1967
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2, p2, p2}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1968
    goto/16 :goto_174

    .line 1969
    :cond_3e
    if-eq p2, v3, :cond_41

    goto :goto_71

    .line 1970
    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2010
    :sswitch_49
    if-ne p2, v4, :cond_52

    .line 2011
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 2013
    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2034
    :sswitch_69
    sget-object v1, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2035
    goto/16 :goto_174

    .line 1975
    :goto_71
    :sswitch_71
    const/4 v0, 0x1

    goto :goto_e5

    .line 2050
    :sswitch_73
    if-ne p2, v4, :cond_7a

    .line 2051
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 2052
    :cond_7a
    if-ne p2, v3, :cond_81

    .line 2053
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 2055
    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2017
    :sswitch_98
    packed-switch p2, :pswitch_data_1dc

    .line 2030
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2027
    :pswitch_b2
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2028
    goto/16 :goto_174

    .line 2024
    :pswitch_b9
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2025
    goto/16 :goto_174

    .line 2021
    :pswitch_c0
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2022
    goto/16 :goto_174

    .line 2037
    :sswitch_c7
    if-ne p2, v4, :cond_ce

    .line 2038
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    .line 2040
    :cond_ce
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1981
    :goto_e5
    :sswitch_e5
    packed-switch p2, :pswitch_data_1ea

    .line 2006
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2003
    :pswitch_ff
    if-eqz v0, :cond_104

    sget-object v1, Ljava/time/format/TextStyle;->NARROW_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_106

    :cond_104
    sget-object v1, Ljava/time/format/TextStyle;->NARROW:Ljava/time/format/TextStyle;

    :goto_106
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2004
    goto/16 :goto_174

    .line 2000
    :pswitch_10b
    if-eqz v0, :cond_110

    sget-object v1, Ljava/time/format/TextStyle;->FULL_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_112

    :cond_110
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    :goto_112
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2001
    goto :goto_174

    .line 1997
    :pswitch_116
    if-eqz v0, :cond_11b

    sget-object v1, Ljava/time/format/TextStyle;->SHORT_STANDALONE:Ljava/time/format/TextStyle;

    goto :goto_11d

    :cond_11b
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    :goto_11d
    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1998
    goto :goto_174

    .line 1984
    :pswitch_121
    const/16 v1, 0x65

    if-ne p1, v1, :cond_12e

    .line 1985
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2, p2, p2}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    .line 1986
    :cond_12e
    const/16 v1, 0x45

    if-ne p1, v1, :cond_138

    .line 1987
    sget-object v1, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    .line 1989
    :cond_138
    if-ne p2, v4, :cond_13e

    .line 1990
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    .line 1992
    :cond_13e
    invoke-virtual {p0, p3, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1995
    goto :goto_174

    .line 2059
    :sswitch_142
    if-ne p2, v4, :cond_148

    .line 2060
    invoke-virtual {p0, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    .line 2061
    :cond_148
    const/4 v1, 0x3

    if-eq p2, v3, :cond_165

    if-ne p2, v1, :cond_14e

    goto :goto_165

    .line 2064
    :cond_14e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2062
    :cond_165
    :goto_165
    sget-object v2, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    .line 2073
    :sswitch_16b
    sget-object v2, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2074
    goto :goto_174

    .line 2079
    :cond_171
    invoke-virtual {p0, p3, p2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    .line 2083
    :goto_174
    return-void

    nop

    :sswitch_data_176
    .sparse-switch
        0x41 -> :sswitch_16b
        0x44 -> :sswitch_142
        0x45 -> :sswitch_e5
        0x46 -> :sswitch_c7
        0x47 -> :sswitch_98
        0x48 -> :sswitch_73
        0x4b -> :sswitch_73
        0x4c -> :sswitch_71
        0x4d -> :sswitch_e5
        0x4e -> :sswitch_16b
        0x51 -> :sswitch_e5
        0x53 -> :sswitch_69
        0x61 -> :sswitch_49
        0x63 -> :sswitch_32
        0x64 -> :sswitch_73
        0x65 -> :sswitch_e5
        0x67 -> :sswitch_2b
        0x68 -> :sswitch_73
        0x6b -> :sswitch_73
        0x6d -> :sswitch_73
        0x6e -> :sswitch_16b
        0x71 -> :sswitch_71
        0x73 -> :sswitch_73
        0x75 -> :sswitch_11
        0x79 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_c0
        :pswitch_c0
        :pswitch_c0
        :pswitch_b9
        :pswitch_b2
    .end packed-switch

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_121
        :pswitch_121
        :pswitch_116
        :pswitch_10b
        :pswitch_ff
    .end packed-switch
.end method

.method private greylist-max-o parsePattern(Ljava/lang/String;)V
    .registers 15
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1792
    const/4 v0, 0x0

    .local v0, "pos":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30e

    .line 1793
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1794
    .local v1, "cur":C
    const/16 v2, 0x61

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-lt v1, v3, :cond_18

    if-le v1, v5, :cond_1c

    :cond_18
    if-lt v1, v2, :cond_25f

    if-gt v1, v4, :cond_25f

    .line 1795
    :cond_1c
    add-int/lit8 v7, v0, 0x1

    .line 1796
    .local v0, "start":I
    .local v7, "pos":I
    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2d

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_2d

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    .line 1797
    :cond_2d
    sub-int v8, v7, v0

    .line 1799
    .local v8, "count":I
    const/16 v9, 0x70

    if-ne v1, v9, :cond_7c

    .line 1800
    const/4 v9, 0x0

    .line 1801
    .local v9, "pad":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_5d

    .line 1802
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1803
    if-lt v1, v3, :cond_42

    if-le v1, v5, :cond_46

    :cond_42
    if-lt v1, v2, :cond_5d

    if-gt v1, v4, :cond_5d

    .line 1804
    :cond_46
    move v9, v8

    .line 1805
    add-int/lit8 v2, v7, 0x1

    .line 1806
    .end local v0    # "start":I
    .local v2, "pos":I
    .local v7, "start":I
    :goto_49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_58

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_58

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    .line 1807
    :cond_58
    sub-int v0, v2, v7

    move v8, v0

    move v0, v7

    move v7, v2

    .line 1810
    .end local v2    # "pos":I
    .restart local v0    # "start":I
    .local v7, "pos":I
    :cond_5d
    if-eqz v9, :cond_63

    .line 1814
    invoke-virtual {p0, v9}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(I)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_7c

    .line 1811
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1817
    .end local v9    # "pad":I
    :cond_7c
    :goto_7c
    sget-object v2, Ljava/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/time/temporal/TemporalField;

    .line 1818
    .local v2, "field":Ljava/time/temporal/TemporalField;
    if-eqz v2, :cond_8f

    .line 1819
    invoke-direct {p0, v1, v8, v2}, Ljava/time/format/DateTimeFormatterBuilder;->parseField(CILjava/time/temporal/TemporalField;)V

    goto/16 :goto_241

    .line 1820
    :cond_8f
    const-string v3, "Too many pattern letters: "

    const/4 v9, 0x4

    if-ne v1, v4, :cond_bd

    .line 1821
    if-gt v8, v9, :cond_a6

    .line 1823
    if-ne v8, v9, :cond_9f

    .line 1824
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1826
    :cond_9f
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1822
    :cond_a6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1828
    :cond_bd
    const/16 v4, 0x56

    const/4 v10, 0x2

    if-ne v1, v4, :cond_e2

    .line 1829
    if-ne v8, v10, :cond_c9

    .line 1832
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1830
    :cond_c9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1833
    :cond_e2
    const/16 v4, 0x76

    if-ne v1, v4, :cond_111

    .line 1834
    if-ne v8, v6, :cond_ef

    .line 1835
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendGenericZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1836
    :cond_ef
    if-ne v8, v9, :cond_f8

    .line 1837
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendGenericZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1839
    :cond_f8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong number of pattern letters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1841
    :cond_111
    const-string v4, "Z"

    const-string v11, "+0000"

    const/4 v12, 0x5

    if-ne v1, v5, :cond_14a

    .line 1842
    if-ge v8, v9, :cond_121

    .line 1843
    const-string v3, "+HHMM"

    invoke-virtual {p0, v3, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1844
    :cond_121
    if-ne v8, v9, :cond_12a

    .line 1845
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1846
    :cond_12a
    if-ne v8, v12, :cond_133

    .line 1847
    const-string v3, "+HH:MM:ss"

    invoke-virtual {p0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1849
    :cond_133
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1851
    :cond_14a
    const/16 v5, 0x4f

    if-ne v1, v5, :cond_179

    .line 1852
    if-ne v8, v6, :cond_157

    .line 1853
    sget-object v3, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1854
    :cond_157
    if-ne v8, v9, :cond_160

    .line 1855
    sget-object v3, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1857
    :cond_160
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1859
    :cond_179
    const/16 v5, 0x58

    const/4 v9, 0x0

    if-ne v1, v5, :cond_1a5

    .line 1860
    if-gt v8, v12, :cond_18e

    .line 1863
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_185

    goto :goto_186

    :cond_185
    move v9, v6

    :goto_186
    add-int/2addr v9, v8

    aget-object v3, v3, v9

    invoke-virtual {p0, v3, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    .line 1861
    :cond_18e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1864
    :cond_1a5
    const/16 v4, 0x78

    if-ne v1, v4, :cond_1dc

    .line 1865
    if-gt v8, v12, :cond_1c5

    .line 1868
    if-ne v8, v6, :cond_1b0

    const-string v11, "+00"

    goto :goto_1b7

    :cond_1b0
    rem-int/lit8 v3, v8, 0x2

    if-nez v3, :cond_1b5

    goto :goto_1b7

    :cond_1b5
    const-string v11, "+00:00"

    .line 1869
    .local v11, "zero":Ljava/lang/String;
    :goto_1b7
    sget-object v3, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    move v9, v6

    :goto_1bd
    add-int/2addr v9, v8

    aget-object v3, v3, v9

    invoke-virtual {p0, v3, v11}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1870
    .end local v11    # "zero":Ljava/lang/String;
    goto/16 :goto_241

    .line 1866
    :cond_1c5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1870
    :cond_1dc
    const/16 v4, 0x57

    if-ne v1, v4, :cond_202

    .line 1872
    if-gt v8, v6, :cond_1eb

    .line 1875
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v8}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_241

    .line 1873
    :cond_1eb
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1876
    :cond_202
    const/16 v4, 0x77

    if-ne v1, v4, :cond_228

    .line 1878
    if-gt v8, v10, :cond_211

    .line 1881
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v10}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_241

    .line 1879
    :cond_211
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1882
    :cond_228
    const/16 v3, 0x59

    if-ne v1, v3, :cond_246

    .line 1884
    if-ne v8, v10, :cond_237

    .line 1885
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v10}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_241

    .line 1887
    :cond_237
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v8, v8, v4}, Ljava/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1910
    :goto_241
    nop

    .end local v0    # "start":I
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v8    # "count":I
    add-int/lit8 v0, v7, -0x1

    .line 1912
    .end local v7    # "pos":I
    .local v0, "pos":I
    goto/16 :goto_2ee

    .line 1908
    .local v0, "start":I
    .restart local v2    # "field":Ljava/time/temporal/TemporalField;
    .restart local v7    # "pos":I
    .restart local v8    # "count":I
    :cond_246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern letter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1912
    .end local v2    # "field":Ljava/time/temporal/TemporalField;
    .end local v7    # "pos":I
    .end local v8    # "count":I
    .local v0, "pos":I
    :cond_25f
    const-string v2, "\'"

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2c1

    .line 1914
    add-int/lit8 v4, v0, 0x1

    .line 1915
    .local v0, "start":I
    .local v4, "pos":I
    :goto_267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_287

    .line 1916
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_285

    .line 1917
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_287

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_287

    .line 1918
    add-int/lit8 v4, v4, 0x1

    .line 1915
    :cond_285
    add-int/2addr v4, v6

    goto :goto_267

    .line 1924
    :cond_287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2a8

    .line 1927
    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1928
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_29d

    .line 1929
    invoke-virtual {p0, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_2a6

    .line 1931
    :cond_29d
    const-string v3, "\'\'"

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1934
    .end local v0    # "start":I
    .end local v5    # "str":Ljava/lang/String;
    :goto_2a6
    move v0, v4

    goto :goto_2ee

    .line 1925
    .restart local v0    # "start":I
    :cond_2a8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1934
    .end local v4    # "pos":I
    .local v0, "pos":I
    :cond_2c1
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2c9

    .line 1935
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_2ee

    .line 1937
    :cond_2c9
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_2df

    .line 1938
    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v2, :cond_2d7

    .line 1941
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_2ee

    .line 1939
    :cond_2d7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1943
    :cond_2df
    const/16 v3, 0x7b

    if-eq v1, v3, :cond_2f1

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_2f1

    const/16 v3, 0x23

    if-eq v1, v3, :cond_2f1

    .line 1946
    invoke-virtual {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    .line 1792
    .end local v1    # "cur":C
    :goto_2ee
    add-int/2addr v0, v6

    goto/16 :goto_1

    .line 1944
    .restart local v1    # "cur":C
    :cond_2f1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern includes reserved character: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1949
    .end local v0    # "pos":I
    .end local v1    # "cur":C
    :cond_30e
    return-void
.end method

.method private greylist-max-o toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 15
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p3, "chrono"    # Ljava/time/chrono/Chronology;

    .line 2329
    const-string v0, "locale"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2330
    :goto_5
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_f

    .line 2331
    invoke-virtual {p0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_5

    .line 2333
    :cond_f
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    move-object v4, v0

    .line 2334
    .local v4, "pp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    new-instance v3, Ljava/time/format/DateTimeFormatter;

    sget-object v6, Ljava/time/format/DecimalStyle;->STANDARD:Ljava/time/format/DecimalStyle;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v7, p2

    move-object v9, p3

    .end local p1    # "locale":Ljava/util/Locale;
    .end local p2    # "resolverStyle":Ljava/time/format/ResolverStyle;
    .end local p3    # "chrono":Ljava/time/chrono/Chronology;
    .local v5, "locale":Ljava/util/Locale;
    .local v7, "resolverStyle":Ljava/time/format/ResolverStyle;
    .local v9, "chrono":Ljava/time/chrono/Chronology;
    invoke-direct/range {v3 .. v10}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v3
.end method


# virtual methods
.method public whitelist test-api append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1537
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1538
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1539
    return-object p0
.end method

.method public whitelist test-api appendChronologyId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 1374
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1375
    return-object p0
.end method

.method public whitelist test-api appendChronologyText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1388
    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1389
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1390
    return-object p0
.end method

.method public whitelist test-api appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "decimalPoint"    # Z

    .line 720
    if-ne p2, p3, :cond_d

    if-nez p4, :cond_d

    .line 722
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    goto :goto_15

    .line 724
    :cond_d
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 726
    :goto_15
    return-object p0
.end method

.method public whitelist test-api appendGenericZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1322
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1323
    return-object p0
.end method

.method public whitelist test-api appendGenericZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Ljava/time/ZoneId;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1349
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1350
    return-object p0
.end method

.method public whitelist test-api appendInstant()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3

    .line 867
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 868
    return-object p0
.end method

.method public whitelist test-api appendInstant(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "fractionalDigits"    # I

    .line 908
    const/4 v0, -0x1

    if-lt p1, v0, :cond_10

    const/16 v0, 0x9

    if-gt p1, v0, :cond_10

    .line 911
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 912
    return-object p0

    .line 909
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The fractional digits must be from -1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "literal"    # C

    .line 1443
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1444
    return-object p0
.end method

.method public whitelist test-api appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "literal"    # Ljava/lang/String;

    .line 1458
    const-string v0, "literal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1459
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    .line 1460
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 1461
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_28

    .line 1463
    :cond_20
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1466
    :cond_28
    :goto_28
    return-object p0
.end method

.method public whitelist test-api appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p2, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 1426
    if-nez p1, :cond_d

    if-eqz p2, :cond_5

    goto :goto_d

    .line 1427
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1429
    :cond_d
    :goto_d
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1430
    return-object p0
.end method

.method public whitelist test-api appendLocalizedOffset(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "style"    # Ljava/time/format/TextStyle;

    .line 1035
    const-string v0, "style"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1036
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljava/time/format/TextStyle;->SHORT:Ljava/time/format/TextStyle;

    if-ne p1, v0, :cond_e

    goto :goto_16

    .line 1037
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1039
    :cond_16
    :goto_16
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Ljava/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1040
    return-object p0
.end method

.method public whitelist test-api appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "noOffsetText"    # Ljava/lang/String;

    .line 1001
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1002
    return-object p0
.end method

.method public whitelist test-api appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 927
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljava/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 928
    return-object p0
.end method

.method public whitelist test-api appendOptional(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "formatter"    # Ljava/time/format/DateTimeFormatter;

    .line 1556
    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1557
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1558
    return-object p0
.end method

.method public whitelist test-api appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "pattern"    # Ljava/lang/String;

    .line 1786
    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1787
    invoke-direct {p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    .line 1788
    return-object p0
.end method

.method public whitelist test-api appendText(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 746
    sget-object v0, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api appendText(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "textStyle"    # Ljava/time/format/TextStyle;

    .line 765
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 766
    const-string v0, "textStyle"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 767
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Ljava/time/format/DateTimeTextProvider;->getInstance()Ljava/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 768
    return-object p0
.end method

.method public whitelist test-api appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 9
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalField;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 806
    .local p2, "textLookup":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 807
    const-string v0, "textLookup"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 808
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 809
    .local v0, "copy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    sget-object v1, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 810
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/time/format/TextStyle;Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;>;"
    new-instance v2, Ljava/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v1}, Ljava/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    .line 811
    .local v2, "store":Ljava/time/format/DateTimeTextProvider$LocaleStore;
    new-instance v3, Ljava/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v3, p0, v2}, Ljava/time/format/DateTimeFormatterBuilder$1;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Ljava/time/format/DateTimeTextProvider$LocaleStore;)V

    .line 832
    .local v3, "provider":Ljava/time/format/DateTimeTextProvider;
    new-instance v4, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Ljava/time/format/TextStyle;->FULL:Ljava/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v3}, Ljava/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljava/time/temporal/TemporalField;Ljava/time/format/TextStyle;Ljava/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 833
    return-object p0
.end method

.method public whitelist test-api appendValue(Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;

    .line 415
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 416
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    const/16 v1, 0x13

    sget-object v2, Ljava/time/format/SignStyle;->NORMAL:Ljava/time/format/SignStyle;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 417
    return-object p0
.end method

.method public whitelist test-api appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I

    .line 469
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 470
    const/4 v0, 0x1

    if-lt p2, v0, :cond_17

    const/16 v0, 0x13

    if-gt p2, v0, :cond_17

    .line 473
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 474
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 475
    return-object p0

    .line 471
    .end local v0    # "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 8
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "minWidth"    # I
    .param p3, "maxWidth"    # I
    .param p4, "signStyle"    # Ljava/time/format/SignStyle;

    .line 511
    if-ne p2, p3, :cond_b

    sget-object v0, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    if-ne p4, v0, :cond_b

    .line 512
    invoke-virtual {p0, p1, p3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0

    .line 514
    :cond_b
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 515
    const-string v0, "signStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 516
    const/4 v0, 0x1

    if-lt p2, v0, :cond_67

    const/16 v1, 0x13

    if-gt p2, v1, :cond_67

    .line 519
    if-lt p3, v0, :cond_4e

    if-gt p3, v1, :cond_4e

    .line 522
    if-lt p3, p2, :cond_2b

    .line 526
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)V

    .line 527
    .local v0, "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 528
    return-object p0

    .line 523
    .end local v0    # "pp":Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api appendValueReduced(Ljava/time/temporal/TemporalField;III)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseValue"    # I

    .line 572
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 573
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    .end local p1    # "field":Ljava/time/temporal/TemporalField;
    .end local p2    # "width":I
    .end local p3    # "maxWidth":I
    .end local p4    # "baseValue":I
    .local v2, "field":Ljava/time/temporal/TemporalField;
    .local v3, "width":I
    .local v4, "maxWidth":I
    .local v5, "baseValue":I
    invoke-direct/range {v1 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 574
    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 575
    return-object p0
.end method

.method public whitelist test-api appendValueReduced(Ljava/time/temporal/TemporalField;IILjava/time/chrono/ChronoLocalDate;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 12
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "width"    # I
    .param p3, "maxWidth"    # I
    .param p4, "baseDate"    # Ljava/time/chrono/ChronoLocalDate;

    .line 632
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 633
    const-string v0, "baseDate"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 634
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    .end local p1    # "field":Ljava/time/temporal/TemporalField;
    .end local p2    # "width":I
    .end local p3    # "maxWidth":I
    .end local p4    # "baseDate":Ljava/time/chrono/ChronoLocalDate;
    .local v2, "field":Ljava/time/temporal/TemporalField;
    .local v3, "width":I
    .local v4, "maxWidth":I
    .local v6, "baseDate":Ljava/time/chrono/ChronoLocalDate;
    invoke-direct/range {v1 .. v6}, Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljava/time/temporal/TemporalField;IIILjava/time/chrono/ChronoLocalDate;)V

    .line 635
    .local v1, "pp":Ljava/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;
    invoke-direct {p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljava/time/format/DateTimeFormatterBuilder;

    .line 636
    return-object p0
.end method

.method public whitelist test-api appendZoneId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1091
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zoneId()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1092
    return-object p0
.end method

.method public whitelist test-api appendZoneOrOffsetId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1203
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljava/time/temporal/TemporalQueries;->zone()Ljava/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1204
    return-object p0
.end method

.method public whitelist test-api appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 1147
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Ljava/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljava/time/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljava/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1148
    return-object p0
.end method

.method public whitelist test-api appendZoneText(Ljava/time/format/TextStyle;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;

    .line 1240
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1241
    return-object p0
.end method

.method public whitelist test-api appendZoneText(Ljava/time/format/TextStyle;Ljava/util/Set;)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "textStyle"    # Ljava/time/format/TextStyle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/TextStyle;",
            "Ljava/util/Set<",
            "Ljava/time/ZoneId;",
            ">;)",
            "Ljava/time/format/DateTimeFormatterBuilder;"
        }
    .end annotation

    .line 1283
    .local p2, "preferredZones":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/ZoneId;>;"
    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1284
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ljava/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljava/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 1285
    return-object p0
.end method

.method public whitelist test-api optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 2236
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_2e

    .line 2239
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    .line 2240
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-boolean v2, v2, Ljava/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    .line 2241
    .local v0, "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 2242
    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 2243
    .end local v0    # "cpp":Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    goto :goto_2d

    .line 2244
    :cond_27
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljava/time/format/DateTimeFormatterBuilder;->parent:Ljava/time/format/DateTimeFormatterBuilder;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 2246
    :goto_2d
    return-object p0

    .line 2237
    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api optionalStart()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 4

    .line 2205
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2206
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;-><init>(Ljava/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    .line 2207
    return-object p0
.end method

.method public whitelist test-api padNext(I)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 3
    .param p1, "padWidth"    # I

    .line 2149
    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api padNext(IC)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 6
    .param p1, "padWidth"    # I
    .param p2, "padChar"    # C

    .line 2174
    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    .line 2177
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    .line 2178
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    iput-char p2, v0, Ljava/time/format/DateTimeFormatterBuilder;->padNextChar:C

    .line 2179
    iget-object v0, p0, Ljava/time/format/DateTimeFormatterBuilder;->active:Ljava/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljava/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    .line 2180
    return-object p0

    .line 2175
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 319
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 320
    return-object p0
.end method

.method public whitelist test-api parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 299
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 300
    return-object p0
.end method

.method public whitelist test-api parseDefaulting(Ljava/time/temporal/TemporalField;J)Ljava/time/format/DateTimeFormatterBuilder;
    .registers 5
    .param p1, "field"    # Ljava/time/temporal/TemporalField;
    .param p2, "value"    # J

    .line 390
    const-string v0, "field"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 391
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Ljava/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Ljava/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 392
    return-object p0
.end method

.method public whitelist test-api parseLenient()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 357
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 358
    return-object p0
.end method

.method public whitelist test-api parseStrict()Ljava/time/format/DateTimeFormatterBuilder;
    .registers 2

    .line 338
    sget-object v0, Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljava/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInternal(Ljava/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    .line 339
    return-object p0
.end method

.method public whitelist test-api toFormatter()Ljava/time/format/DateTimeFormatter;
    .registers 2

    .line 2286
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method greylist-max-o toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p2, "chrono"    # Ljava/time/chrono/Chronology;

    .line 2318
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p1, "locale"    # Ljava/util/Locale;

    .line 2307
    sget-object v0, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
