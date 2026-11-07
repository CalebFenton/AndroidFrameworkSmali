.class public final Ljava/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/time/format/DateTimeFormatter$ClassicFormat;
    }
.end annotation


# static fields
.field public static final whitelist test-api BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_TIME:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

.field public static final whitelist test-api ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

.field private static final greylist-max-o PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation
.end field

.field private static final greylist-max-o PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;


# instance fields
.field private final greylist-max-o chrono:Ljava/time/chrono/Chronology;

.field private final greylist-max-o decimalStyle:Ljava/time/format/DecimalStyle;

.field private final greylist-max-o locale:Ljava/util/Locale;

.field private final greylist-max-o printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final greylist-max-o resolverFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o resolverStyle:Ljava/time/format/ResolverStyle;

.field private final greylist-max-o zone:Ljava/time/ZoneId;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetresolverFields(Ljava/time/format/DateTimeFormatter;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetresolverStyle(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/ResolverStyle;
    .registers 1

    iget-object p0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseResolved0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mparseUnresolved0(Ljava/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 14

    .line 744
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v2, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 745
    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 746
    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 747
    const/4 v5, 0x2

    invoke-virtual {v0, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 748
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 749
    invoke-virtual {v0, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 750
    invoke-virtual {v0, v2, v6}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 774
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 775
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 776
    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 777
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 778
    invoke-virtual {v0, v2, v6}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Ljava/time/format/DateTimeFormatter;

    .line 806
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 807
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 808
    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v6, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 811
    invoke-virtual {v0, v2, v6}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 843
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v2, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 844
    invoke-virtual {v0, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 845
    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 846
    invoke-virtual {v0, v6, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 848
    invoke-virtual {v0, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 849
    invoke-virtual {v0, v6, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->NANO_OF_SECOND:Ljava/time/temporal/ChronoField;

    .line 851
    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v7, v8, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendFraction(Ljava/time/temporal/TemporalField;IIZ)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 852
    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 875
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 876
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 877
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 878
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 879
    invoke-virtual {v0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljava/time/format/DateTimeFormatter;

    .line 906
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 907
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 908
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 909
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 910
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 911
    invoke-virtual {v0, v6, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_TIME:Ljava/time/format/DateTimeFormatter;

    .line 934
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 935
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 936
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 937
    const/16 v6, 0x54

    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    .line 938
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 939
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 964
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 965
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 966
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 969
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseStrict()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 970
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 998
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v6, Ljava/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 999
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1000
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1001
    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1003
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1004
    const/16 v8, 0x5d

    invoke-virtual {v0, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v10, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v11, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1005
    invoke-virtual {v0, v10, v11}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1039
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v10, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1040
    invoke-virtual {v0, v10}, Ljava/time/format/DateTimeFormatterBuilder;->append(Ljava/time/format/DateTimeFormatter;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1041
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1042
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1043
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1044
    invoke-virtual {v0, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1046
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1047
    invoke-virtual {v0, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1048
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1081
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1082
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    sget-object v8, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 1083
    invoke-virtual {v0, v6, v3, v4, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1084
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/ChronoField;->DAY_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1085
    const/4 v8, 0x3

    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1086
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1087
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v8, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1088
    invoke-virtual {v0, v6, v8}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1125
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1126
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljava/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    sget-object v8, Ljava/time/format/SignStyle;->EXCEEDS_PAD:Ljava/time/format/SignStyle;

    .line 1127
    invoke-virtual {v0, v6, v3, v4, v8}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1128
    const-string v4, "-W"

    invoke-virtual {v0, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v4, Ljava/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljava/time/temporal/TemporalField;

    .line 1129
    invoke-virtual {v0, v4, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1130
    invoke-virtual {v0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 1131
    invoke-virtual {v0, v1, v9}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1132
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1134
    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1173
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1174
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1175
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendInstant()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    .line 1176
    invoke-virtual {v0, v1, v7}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->ISO_INSTANT:Ljava/time/format/DateTimeFormatter;

    .line 1210
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1211
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 1212
    invoke-virtual {v0, v1, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1213
    invoke-virtual {v0, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    .line 1214
    invoke-virtual {v0, v1, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1215
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1216
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1217
    const-string v1, "+HHMMss"

    const-string v4, "Z"

    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    .line 1218
    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->parseStrict()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->STRICT:Ljava/time/format/ResolverStyle;

    sget-object v4, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1219
    invoke-virtual {v0, v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljava/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljava/time/format/DateTimeFormatter;

    .line 1270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1271
    .local v0, "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Mon"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "Tue"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Wed"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Thu"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    const-wide/16 v10, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "Fri"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-wide/16 v10, 0x6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "Sat"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    const-wide/16 v11, 0x7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "Sun"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 1279
    .local v12, "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    const-string v13, "Jan"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    const-string v1, "Feb"

    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    const-string v1, "Mar"

    invoke-interface {v12, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v1, "Apr"

    invoke-interface {v12, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    const-string v1, "May"

    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    const-string v1, "Jun"

    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string v1, "Jul"

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Aug"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Sep"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Oct"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    const-wide/16 v6, 0xb

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Nov"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    const-wide/16 v6, 0xc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Dec"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    new-instance v1, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    .line 1292
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1293
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->parseLenient()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1294
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_WEEK:Ljava/time/temporal/ChronoField;

    .line 1295
    invoke-virtual {v1, v4, v0}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1296
    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1297
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Ljava/time/temporal/ChronoField;->DAY_OF_MONTH:Ljava/time/temporal/ChronoField;

    sget-object v6, Ljava/time/format/SignStyle;->NOT_NEGATIVE:Ljava/time/format/SignStyle;

    .line 1298
    invoke-virtual {v1, v4, v9, v5, v6}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;IILjava/time/format/SignStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1299
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Ljava/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljava/time/temporal/ChronoField;

    .line 1300
    invoke-virtual {v1, v6, v12}, Ljava/time/format/DateTimeFormatterBuilder;->appendText(Ljava/time/temporal/TemporalField;Ljava/util/Map;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1301
    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Ljava/time/temporal/ChronoField;->YEAR:Ljava/time/temporal/ChronoField;

    .line 1302
    invoke-virtual {v1, v6, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1303
    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->HOUR_OF_DAY:Ljava/time/temporal/ChronoField;

    .line 1304
    invoke-virtual {v1, v3, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1305
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Ljava/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljava/time/temporal/ChronoField;

    .line 1306
    invoke-virtual {v1, v3, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1307
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalStart()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1308
    invoke-virtual {v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljava/time/temporal/ChronoField;

    .line 1309
    invoke-virtual {v1, v2, v5}, Ljava/time/format/DateTimeFormatterBuilder;->appendValue(Ljava/time/temporal/TemporalField;I)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1310
    invoke-virtual {v1}, Ljava/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1311
    invoke-virtual {v1, v4}, Ljava/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    .line 1312
    const-string v2, "+HHMM"

    const-string v3, "GMT"

    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v3, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 1313
    invoke-virtual {v1, v2, v3}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Ljava/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljava/time/format/DateTimeFormatter;

    .line 1360
    .end local v0    # "dow":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    .end local v12    # "moy":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/String;>;"
    new-instance v0, Ljava/time/format/DateTimeFormatter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    .line 1401
    new-instance v0, Ljava/time/format/DateTimeFormatter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatter$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V
    .registers 9
    .param p1, "printerParser"    # Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .param p2, "locale"    # Ljava/util/Locale;
    .param p3, "decimalStyle"    # Ljava/time/format/DecimalStyle;
    .param p4, "resolverStyle"    # Ljava/time/format/ResolverStyle;
    .param p6, "chrono"    # Ljava/time/chrono/Chronology;
    .param p7, "zone"    # Ljava/time/ZoneId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;",
            "Ljava/util/Locale;",
            "Ljava/time/format/DecimalStyle;",
            "Ljava/time/format/ResolverStyle;",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;",
            "Ljava/time/chrono/Chronology;",
            "Ljava/time/ZoneId;",
            ")V"
        }
    .end annotation

    .line 1424
    .local p5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    const-string v0, "printerParser"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    .line 1426
    iput-object p5, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    .line 1427
    const-string v0, "locale"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    .line 1428
    const-string v0, "decimalStyle"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/DecimalStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    .line 1429
    const-string v0, "resolverStyle"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/format/ResolverStyle;

    iput-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    .line 1430
    iput-object p6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    .line 1431
    iput-object p7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    .line 1432
    return-void
.end method

.method private greylist-max-o createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "ex"    # Ljava/lang/RuntimeException;

    .line 2016
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_25

    .line 2017
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "abbr":Ljava/lang/String;
    goto :goto_29

    .line 2019
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2021
    .restart local v0    # "abbr":Ljava/lang/String;
    :goto_29
    new-instance v2, Ljava/time/format/DateTimeParseException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Text \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' could not be parsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, p2}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v2
.end method

.method static synthetic blacklist lambda$static$0(Ljava/time/temporal/TemporalAccessor;)Ljava/time/Period;
    .registers 2
    .param p0, "t"    # Ljava/time/temporal/TemporalAccessor;

    .line 1361
    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_a

    .line 1362
    move-object v0, p0

    check-cast v0, Ljava/time/format/Parsed;

    iget-object v0, v0, Ljava/time/format/Parsed;->excessDays:Ljava/time/Period;

    return-object v0

    .line 1364
    :cond_a
    sget-object v0, Ljava/time/Period;->ZERO:Ljava/time/Period;

    return-object v0
.end method

.method static synthetic blacklist lambda$static$1(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "t"    # Ljava/time/temporal/TemporalAccessor;

    .line 1402
    instance-of v0, p0, Ljava/time/format/Parsed;

    if-eqz v0, :cond_e

    .line 1403
    move-object v0, p0

    check-cast v0, Ljava/time/format/Parsed;

    iget-boolean v0, v0, Ljava/time/format/Parsed;->leapSecond:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 1405
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static whitelist test-api ofLocalizedDate(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;

    .line 618
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 619
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 620
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 619
    return-object v0
.end method

.method public static whitelist test-api ofLocalizedDateTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "dateTimeStyle"    # Ljava/time/format/FormatStyle;

    .line 680
    const-string v0, "dateTimeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 681
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 682
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 681
    return-object v0
.end method

.method public static whitelist test-api ofLocalizedDateTime(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 5
    .param p0, "dateStyle"    # Ljava/time/format/FormatStyle;
    .param p1, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 712
    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 713
    const-string v0, "timeStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 714
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 715
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 714
    return-object v0
.end method

.method public static whitelist test-api ofLocalizedTime(Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 4
    .param p0, "timeStyle"    # Ljava/time/format/FormatStyle;

    .line 649
    const-string v0, "timeStyle"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 650
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljava/time/format/FormatStyle;Ljava/time/format/FormatStyle;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljava/time/format/ResolverStyle;->SMART:Ljava/time/format/ResolverStyle;

    sget-object v2, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 651
    invoke-virtual {v0, v1, v2}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/time/format/ResolverStyle;Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    .line 650
    return-object v0
.end method

.method public static whitelist test-api ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;
    .registers 2
    .param p0, "pattern"    # Ljava/lang/String;

    .line 567
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 3
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;

    .line 591
    new-instance v0, Ljava/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljava/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private greylist-max-o parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 9
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 2039
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, p2

    goto :goto_a

    :cond_5
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    .line 2040
    .local v1, "pos":Ljava/text/ParsePosition;
    :goto_a
    invoke-direct {p0, p1, v1}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v2

    .line 2041
    .local v2, "context":Ljava/time/format/DateTimeParseContext;
    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_2c

    if-nez p2, :cond_23

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_23

    goto :goto_2c

    .line 2056
    :cond_23
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v2, v0, v3}, Ljava/time/format/DateTimeParseContext;->toResolved(Ljava/time/format/ResolverStyle;Ljava/util/Set;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    .line 2043
    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_50

    .line 2044
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "abbr":Ljava/lang/String;
    goto :goto_54

    .line 2046
    .end local v0    # "abbr":Ljava/lang/String;
    :cond_50
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2048
    .restart local v0    # "abbr":Ljava/lang/String;
    :goto_54
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-string v4, "Text \'"

    if-ltz v3, :cond_85

    .line 2049
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be parsed at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2050
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    .line 2052
    :cond_85
    new-instance v3, Ljava/time/format/DateTimeParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2053
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljava/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3
.end method

.method private greylist-max-o parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;
    .registers 6
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 2107
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2108
    const-string v0, "position"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2109
    new-instance v0, Ljava/time/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Ljava/time/format/DateTimeParseContext;-><init>(Ljava/time/format/DateTimeFormatter;)V

    .line 2110
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    .line 2111
    .local v1, "pos":I
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljava/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    .line 2112
    if-gez v1, :cond_21

    .line 2113
    not-int v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    .line 2114
    const/4 v2, 0x0

    return-object v2

    .line 2116
    :cond_21
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 2117
    return-object v0
.end method

.method public static final whitelist test-api parsedExcessDays()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/time/Period;",
            ">;"
        }
    .end annotation

    .line 1358
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final whitelist test-api parsedLeapSecond()Ljava/time/temporal/TemporalQuery;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/time/temporal/TemporalQuery<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1399
    sget-object v0, Ljava/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljava/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .registers 4
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;

    .line 1820
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1821
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    .line 1822
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api formatTo(Ljava/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .registers 6
    .param p1, "temporal"    # Ljava/time/temporal/TemporalAccessor;
    .param p2, "appendable"    # Ljava/lang/Appendable;

    .line 1842
    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1843
    const-string v0, "appendable"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1845
    :try_start_a
    new-instance v0, Ljava/time/format/DateTimePrintContext;

    invoke-direct {v0, p1, p0}, Ljava/time/format/DateTimePrintContext;-><init>(Ljava/time/temporal/TemporalAccessor;Ljava/time/format/DateTimeFormatter;)V

    .line 1846
    .local v0, "context":Ljava/time/format/DateTimePrintContext;
    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1c

    .line 1847
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v2, p2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v2}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    goto :goto_2b

    .line 1850
    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1851
    .local v1, "buf":Ljava/lang/StringBuilder;
    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, v1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljava/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    .line 1852
    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2d

    .line 1856
    .end local v0    # "context":Ljava/time/format/DateTimePrintContext;
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    :goto_2b
    nop

    .line 1857
    return-void

    .line 1854
    :catch_2d
    move-exception v0

    .line 1855
    .local v0, "ex":Ljava/io/IOException;
    new-instance v1, Ljava/time/DateTimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api getChronology()Ljava/time/chrono/Chronology;
    .registers 2

    .line 1552
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    return-object v0
.end method

.method public whitelist test-api getDecimalStyle()Ljava/time/format/DecimalStyle;
    .registers 2

    .line 1523
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    return-object v0
.end method

.method public whitelist test-api getLocale()Ljava/util/Locale;
    .registers 2

    .line 1444
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public whitelist test-api getResolverFields()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;"
        }
    .end annotation

    .line 1706
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api getResolverStyle()Ljava/time/format/ResolverStyle;
    .registers 2

    .line 1664
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    return-object v0
.end method

.method public whitelist test-api getZone()Ljava/time/ZoneId;
    .registers 2

    .line 1606
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    return-object v0
.end method

.method public whitelist test-api localizedBy(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 12
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1496
    const-string v0, "tz"

    invoke-virtual {p1, v0}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1497
    .local v0, "tzType":Ljava/lang/String;
    if-eqz v0, :cond_23

    .line 1502
    nop

    .line 1500
    invoke-static {v0}, Llibcore/icu/ICU;->convertToTzId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Ljava/time/format/DateTimeFormatter$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Ljava/time/format/DateTimeFormatter$$ExternalSyntheticLambda2;-><init>()V

    .line 1501
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    .line 1502
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/time/ZoneId;

    goto :goto_25

    .line 1503
    :cond_23
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    :goto_25
    move-object v9, v1

    .line 1504
    .local v9, "z":Ljava/time/ZoneId;
    invoke-static {p1}, Ljava/time/chrono/Chronology;->ofLocale(Ljava/util/Locale;)Ljava/time/chrono/Chronology;

    move-result-object v8

    .line 1505
    .local v8, "c":Ljava/time/chrono/Chronology;
    invoke-static {p1}, Ljava/time/format/DecimalStyle;->of(Ljava/util/Locale;)Ljava/time/format/DecimalStyle;

    move-result-object v5

    .line 1506
    .local v5, "ds":Ljava/time/format/DecimalStyle;
    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    .line 1507
    invoke-interface {v8, v1}, Ljava/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    .line 1508
    invoke-virtual {v5, v1}, Ljava/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    .line 1509
    invoke-static {v9, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 1510
    return-object p0

    .line 1512
    :cond_4f
    new-instance v2, Ljava/time/format/DateTimeFormatter;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    move-object v4, p1

    .end local p1    # "locale":Ljava/util/Locale;
    .local v4, "locale":Ljava/util/Locale;
    invoke-direct/range {v2 .. v9}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v2
.end method

.method public whitelist test-api parse(Ljava/lang/CharSequence;Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/CharSequence;",
            "Ljava/time/temporal/TemporalQuery<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1949
    .local p2, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<TT;>;"
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1950
    const-string v0, "query"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1952
    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljava/time/format/DateTimeParseException; {:try_start_b .. :try_end_13} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_13} :catch_14

    return-object v0

    .line 1955
    :catch_14
    move-exception v0

    .line 1956
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1953
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_1a
    move-exception v0

    .line 1954
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    throw v0
.end method

.method public whitelist test-api parse(Ljava/lang/CharSequence;)Ljava/time/temporal/TemporalAccessor;
    .registers 4
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 1876
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1878
    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_a
    .catch Ljava/time/format/DateTimeParseException; {:try_start_6 .. :try_end_a} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    .line 1881
    :catch_b
    move-exception v0

    .line 1882
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1879
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_11
    move-exception v0

    .line 1880
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    throw v0
.end method

.method public whitelist test-api parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 1917
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1918
    const-string v0, "position"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1920
    :try_start_a
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_a .. :try_end_e} :catch_15
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_e} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    .line 1923
    :catch_f
    move-exception v0

    .line 1924
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 1921
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_15
    move-exception v0

    .line 1922
    .restart local v0    # "ex":Ljava/lang/RuntimeException;
    throw v0
.end method

.method public varargs whitelist test-api parseBest(Ljava/lang/CharSequence;[Ljava/time/temporal/TemporalQuery;)Ljava/time/temporal/TemporalAccessor;
    .registers 8
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "[",
            "Ljava/time/temporal/TemporalQuery<",
            "*>;)",
            "Ljava/time/temporal/TemporalAccessor;"
        }
    .end annotation

    .line 1992
    .local p2, "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    const-string v0, "text"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1993
    const-string v0, "queries"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1994
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_34

    .line 1998
    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;

    move-result-object v0

    .line 1999
    .local v0, "resolved":Ljava/time/temporal/TemporalAccessor;
    array-length v1, p2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_24

    aget-object v3, p2, v2
    :try_end_19
    .catch Ljava/time/format/DateTimeParseException; {:try_start_f .. :try_end_19} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_19} :catch_2c

    .line 2001
    .local v3, "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    :try_start_19
    invoke-interface {v0, v3}, Ljava/time/temporal/TemporalAccessor;->query(Ljava/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/time/temporal/TemporalAccessor;
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1f} :catch_20
    .catch Ljava/time/format/DateTimeParseException; {:try_start_19 .. :try_end_1f} :catch_32

    return-object v4

    .line 2002
    :catch_20
    move-exception v4

    .line 1999
    .end local v3    # "query":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 2006
    :cond_24
    :try_start_24
    new-instance v1, Ljava/time/DateTimeException;

    const-string v2, "Unable to convert parsed text using any of the specified queries"

    invoke-direct {v1, v2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Ljava/time/format/DateTimeFormatter;
    .end local p1    # "text":Ljava/lang/CharSequence;
    .end local p2    # "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    throw v1
    :try_end_2c
    .catch Ljava/time/format/DateTimeParseException; {:try_start_24 .. :try_end_2c} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2c} :catch_2c

    .line 2009
    .end local v0    # "resolved":Ljava/time/temporal/TemporalAccessor;
    .restart local p0    # "this":Ljava/time/format/DateTimeFormatter;
    .restart local p1    # "text":Ljava/lang/CharSequence;
    .restart local p2    # "queries":[Ljava/time/temporal/TemporalQuery;, "[Ljava/time/temporal/TemporalQuery<*>;"
    :catch_2c
    move-exception v0

    .line 2010
    .local v0, "ex":Ljava/lang/RuntimeException;
    invoke-direct {p0, p1, v0}, Ljava/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljava/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    .line 2007
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :catch_32
    move-exception v0

    .line 2008
    .local v0, "ex":Ljava/time/format/DateTimeParseException;
    throw v0

    .line 1995
    .end local v0    # "ex":Ljava/time/format/DateTimeParseException;
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least two queries must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/temporal/TemporalAccessor;
    .registers 5
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "position"    # Ljava/text/ParsePosition;

    .line 2099
    invoke-direct {p0, p1, p2}, Ljava/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljava/time/format/DateTimeParseContext;

    move-result-object v0

    .line 2100
    .local v0, "context":Ljava/time/format/DateTimeParseContext;
    if-nez v0, :cond_8

    .line 2101
    const/4 v1, 0x0

    return-object v1

    .line 2103
    :cond_8
    invoke-virtual {v0}, Ljava/time/format/DateTimeParseContext;->toUnresolved()Ljava/time/format/Parsed;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api toFormat()Ljava/text/Format;
    .registers 3

    .line 2145
    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public whitelist test-api toFormat(Ljava/time/temporal/TemporalQuery;)Ljava/text/Format;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/time/temporal/TemporalQuery<",
            "*>;)",
            "Ljava/text/Format;"
        }
    .end annotation

    .line 2165
    .local p1, "parseQuery":Ljava/time/temporal/TemporalQuery;, "Ljava/time/temporal/TemporalQuery<*>;"
    const-string v0, "parseQuery"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2166
    new-instance v0, Ljava/time/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Ljava/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljava/time/format/DateTimeFormatter;Ljava/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method greylist-max-o toPrinterParser(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 3
    .param p1, "optional"    # Z

    .line 2128
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 2177
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0}, Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2178
    .local v0, "pattern":Ljava/lang/String;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_1a

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2179
    .end local v0    # "pattern":Ljava/lang/String;
    .local v1, "pattern":Ljava/lang/String;
    :goto_1a
    return-object v1
.end method

.method public whitelist test-api withChronology(Ljava/time/chrono/Chronology;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "chrono"    # Ljava/time/chrono/Chronology;

    .line 1589
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1590
    return-object p0

    .line 1592
    :cond_9
    new-instance v1, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v7, p1

    .end local p1    # "chrono":Ljava/time/chrono/Chronology;
    .local v7, "chrono":Ljava/time/chrono/Chronology;
    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v1
.end method

.method public whitelist test-api withDecimalStyle(Ljava/time/format/DecimalStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "decimalStyle"    # Ljava/time/format/DecimalStyle;

    .line 1535
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    invoke-virtual {v0, p1}, Ljava/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1536
    return-object p0

    .line 1538
    :cond_9
    new-instance v1, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v4, p1

    .end local p1    # "decimalStyle":Ljava/time/format/DecimalStyle;
    .local v4, "decimalStyle":Ljava/time/format/DecimalStyle;
    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v1
.end method

.method public whitelist test-api withLocale(Ljava/util/Locale;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "locale"    # Ljava/util/Locale;

    .line 1462
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1463
    return-object p0

    .line 1465
    :cond_9
    new-instance v1, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v3, p1

    .end local p1    # "locale":Ljava/util/Locale;
    .local v3, "locale":Ljava/util/Locale;
    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v1
.end method

.method public whitelist test-api withResolverFields(Ljava/util/Set;)Ljava/time/format/DateTimeFormatter;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/time/temporal/TemporalField;",
            ">;)",
            "Ljava/time/format/DateTimeFormatter;"
        }
    .end annotation

    .line 1800
    .local p1, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1801
    return-object p0

    .line 1803
    :cond_9
    if-eqz p1, :cond_16

    .line 1804
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    move-object v5, p1

    goto :goto_17

    .line 1803
    :cond_16
    move-object v5, p1

    .line 1806
    .end local p1    # "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    .local v5, "resolverFields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    :goto_17
    new-instance v0, Ljava/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v0 .. v7}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v0
.end method

.method public varargs whitelist test-api withResolverFields([Ljava/time/temporal/TemporalField;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "resolverFields"    # [Ljava/time/temporal/TemporalField;

    .line 1749
    const/4 v0, 0x0

    .line 1750
    .local v0, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    if-eqz p1, :cond_12

    .line 1752
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_13

    .line 1750
    :cond_12
    move-object v6, v0

    .line 1754
    .end local v0    # "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    .local v6, "fields":Ljava/util/Set;, "Ljava/util/Set<Ljava/time/temporal/TemporalField;>;"
    :goto_13
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1755
    return-object p0

    .line 1757
    :cond_1c
    new-instance v1, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v1
.end method

.method public whitelist test-api withResolverStyle(Ljava/time/format/ResolverStyle;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "resolverStyle"    # Ljava/time/format/ResolverStyle;

    .line 1687
    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1688
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1689
    return-object p0

    .line 1691
    :cond_e
    new-instance v1, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    iget-object v8, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    move-object v5, p1

    .end local p1    # "resolverStyle":Ljava/time/format/ResolverStyle;
    .local v5, "resolverStyle":Ljava/time/format/ResolverStyle;
    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v1
.end method

.method public whitelist test-api withZone(Ljava/time/ZoneId;)Ljava/time/format/DateTimeFormatter;
    .registers 11
    .param p1, "zone"    # Ljava/time/ZoneId;

    .line 1646
    iget-object v0, p0, Ljava/time/format/DateTimeFormatter;->zone:Ljava/time/ZoneId;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1647
    return-object p0

    .line 1649
    :cond_9
    new-instance v1, Ljava/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljava/time/format/DateTimeFormatter;->printerParser:Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljava/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljava/time/format/DateTimeFormatter;->decimalStyle:Ljava/time/format/DecimalStyle;

    iget-object v5, p0, Ljava/time/format/DateTimeFormatter;->resolverStyle:Ljava/time/format/ResolverStyle;

    iget-object v6, p0, Ljava/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljava/time/format/DateTimeFormatter;->chrono:Ljava/time/chrono/Chronology;

    move-object v8, p1

    .end local p1    # "zone":Ljava/time/ZoneId;
    .local v8, "zone":Ljava/time/ZoneId;
    invoke-direct/range {v1 .. v8}, Ljava/time/format/DateTimeFormatter;-><init>(Ljava/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljava/time/format/DecimalStyle;Ljava/time/format/ResolverStyle;Ljava/util/Set;Ljava/time/chrono/Chronology;Ljava/time/ZoneId;)V

    return-object v1
.end method
