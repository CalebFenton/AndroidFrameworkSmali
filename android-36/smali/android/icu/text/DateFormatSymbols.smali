.class public Landroid/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;,
        Landroid/icu/text/DateFormatSymbols$CalendarDataSink;,
        Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field public static final whitelist test-api ABBREVIATED:I = 0x0

.field static final greylist-max-o ALTERNATE_TIME_SEPARATOR:Ljava/lang/String; = "."

.field private static final greylist-max-o CALENDAR_CLASSES:[[Ljava/lang/String;

.field private static final greylist-max-o DAY_PERIOD_KEYS:[Ljava/lang/String;

.field static final greylist-max-o DEFAULT_TIME_SEPARATOR:Ljava/lang/String; = ":"

.field private static greylist-max-o DFSCACHE:Landroid/icu/impl/CacheBase; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/CacheBase<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;",
            "Landroid/icu/util/ULocale;",
            ">;"
        }
    .end annotation
.end field

.field public static final greylist-max-o DT_CONTEXT_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_FORMAT_ABBREV:I = 0x1

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_FORMAT_NARROW:I = 0x2

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_FORMAT_WIDE:I = 0x0

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_NUMERIC:I = 0x6

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_STANDALONE_ABBREV:I = 0x4

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_STANDALONE_NARROW:I = 0x5

.field static final greylist-max-o DT_LEAP_MONTH_PATTERN_STANDALONE_WIDE:I = 0x3

.field static final greylist-max-o DT_MONTH_PATTERN_COUNT:I = 0x7

.field public static final greylist-max-o DT_WIDTH_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api FORMAT:I = 0x0

.field private static final greylist-max-o LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

.field public static final whitelist test-api NARROW:I = 0x2

.field public static final greylist-max-o NUMERIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api SHORT:I = 0x3

.field public static final whitelist test-api STANDALONE:I = 0x1

.field public static final whitelist test-api WIDE:I = 0x1

.field private static final greylist-max-o contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field

.field static final greylist-max-o millisPerHour:I = 0x36ee80

.field static final greylist-max-o patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

.field private static final whitelist serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field greylist-max-o abbreviatedDayPeriods:[Ljava/lang/String;

.field private greylist-max-o actualLocale:Landroid/icu/util/ULocale;

.field greylist-max-o ampms:[Ljava/lang/String;

.field greylist-max-o ampmsNarrow:[Ljava/lang/String;

.field greylist-max-o capitalization:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            "[Z>;"
        }
    .end annotation
.end field

.field greylist-max-o eraNames:[Ljava/lang/String;

.field greylist-max-o eras:[Ljava/lang/String;

.field greylist-max-o leapMonthPatterns:[Ljava/lang/String;

.field greylist-max-o localPatternChars:Ljava/lang/String;

.field greylist-max-o months:[Ljava/lang/String;

.field greylist-max-o narrowDayPeriods:[Ljava/lang/String;

.field greylist-max-o narrowEras:[Ljava/lang/String;

.field greylist-max-o narrowMonths:[Ljava/lang/String;

.field blacklist narrowQuarters:[Ljava/lang/String;

.field greylist-max-o narrowWeekdays:[Ljava/lang/String;

.field greylist-max-o quarters:[Ljava/lang/String;

.field private greylist-max-o requestedLocale:Landroid/icu/util/ULocale;

.field greylist-max-o shortMonths:[Ljava/lang/String;

.field greylist-max-o shortQuarters:[Ljava/lang/String;

.field greylist-max-o shortWeekdays:[Ljava/lang/String;

.field greylist-max-o shortYearNames:[Ljava/lang/String;

.field greylist-max-o shortZodiacNames:[Ljava/lang/String;

.field greylist-max-o shorterWeekdays:[Ljava/lang/String;

.field greylist-max-o standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

.field greylist-max-o standaloneMonths:[Ljava/lang/String;

.field greylist-max-o standaloneNarrowDayPeriods:[Ljava/lang/String;

.field greylist-max-o standaloneNarrowMonths:[Ljava/lang/String;

.field blacklist standaloneNarrowQuarters:[Ljava/lang/String;

.field greylist-max-o standaloneNarrowWeekdays:[Ljava/lang/String;

.field greylist-max-o standaloneQuarters:[Ljava/lang/String;

.field greylist-max-o standaloneShortMonths:[Ljava/lang/String;

.field greylist-max-o standaloneShortQuarters:[Ljava/lang/String;

.field greylist-max-o standaloneShortWeekdays:[Ljava/lang/String;

.field greylist-max-o standaloneShorterWeekdays:[Ljava/lang/String;

.field greylist-max-o standaloneWeekdays:[Ljava/lang/String;

.field greylist-max-o standaloneWideDayPeriods:[Ljava/lang/String;

.field private greylist-max-o timeSeparator:Ljava/lang/String;

.field private greylist-max-o validLocale:Landroid/icu/util/ULocale;

.field greylist-max-o weekdays:[Ljava/lang/String;

.field greylist-max-o wideDayPeriods:[Ljava/lang/String;

.field private greylist-max-o zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 13

    .line 660
    const-string v0, "GregorianCalendar"

    const-string v1, "gregorian"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    const-string v0, "JapaneseCalendar"

    const-string v1, "japanese"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v0, "BuddhistCalendar"

    const-string v1, "buddhist"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v0, "TaiwanCalendar"

    const-string v1, "roc"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v5

    const-string v0, "PersianCalendar"

    const-string v1, "persian"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const-string v0, "IslamicCalendar"

    const-string v1, "islamic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v7

    const-string v0, "HebrewCalendar"

    const-string v1, "hebrew"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v8

    const-string v0, "ChineseCalendar"

    const-string v1, "chinese"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v9

    const-string v0, "IndianCalendar"

    const-string v1, "indian"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v10

    const-string v0, "CopticCalendar"

    const-string v1, "coptic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v11

    const-string v0, "EthiopicCalendar"

    const-string v1, "ethiopic"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v12

    filled-new-array/range {v2 .. v12}, [[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    .line 700
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    .line 701
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "month-format-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "month-standalone-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "month-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 704
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "day-format-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "day-standalone-except-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "day-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "era-name"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "era-abbr"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "era-narrow"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 710
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "zone-long"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 711
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "zone-short"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "metazone-long"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    const-string v1, "metazone-short"

    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    new-instance v0, Landroid/icu/text/DateFormatSymbols$1;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols$1;-><init>()V

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/CacheBase;

    .line 2170
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    .line 2172
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "monthPatterns/format/wide"

    aput-object v2, v0, v1

    .line 2173
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "monthPatterns/format/abbreviated"

    aput-object v2, v0, v1

    .line 2174
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "monthPatterns/format/narrow"

    aput-object v2, v0, v1

    .line 2175
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "monthPatterns/stand-alone/wide"

    aput-object v2, v0, v1

    .line 2176
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "monthPatterns/stand-alone/abbreviated"

    aput-object v2, v0, v1

    .line 2177
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "monthPatterns/stand-alone/narrow"

    aput-object v2, v0, v1

    .line 2178
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "monthPatterns/numeric/all"

    aput-object v2, v0, v1

    .line 2204
    const-string v11, "evening2"

    const-string v12, "night2"

    const-string v3, "midnight"

    const-string v4, "noon"

    const-string v5, "morning1"

    const-string v6, "afternoon1"

    const-string v7, "evening1"

    const-string v8, "night1"

    const-string v9, "morning2"

    const-string v10, "afternoon2"

    filled-new-array/range {v3 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 2

    .line 225
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 226
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .registers 4
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 2292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 348
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 356
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 365
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 374
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 382
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 391
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 400
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 409
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 438
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 447
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 457
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 467
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 519
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 526
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 533
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 556
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 601
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 619
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 643
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 649
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 655
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2293
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 2294
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .registers 5
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 348
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 356
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 365
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 374
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 382
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 391
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 400
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 409
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 438
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 447
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 457
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 467
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 519
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 526
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 533
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 556
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 601
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 619
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 643
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 649
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 655
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2281
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 2282
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 348
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 356
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 365
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 374
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 382
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 391
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 400
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 409
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 438
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 447
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 457
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 467
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 519
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 526
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 533
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 556
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 601
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 619
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 643
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 649
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 655
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 249
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method private constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V
    .registers 6
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "calendarType"    # Ljava/lang/String;
    .param p4, "aospExtendedDateFormatSymbols"    # Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    .line 1933
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 348
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 356
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 365
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 374
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 382
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 391
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 400
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 409
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 438
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 447
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 457
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 467
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 519
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 526
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 533
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 556
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 601
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 619
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 643
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 649
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 655
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1934
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V

    .line 1935
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;Landroid/icu/text/DateFormatSymbols-IA;)V
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V

    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V
    .registers 13
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    .line 2310
    .local p1, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/util/Calendar;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 348
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 356
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 365
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 374
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 382
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 391
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 400
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 409
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 438
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 447
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 457
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 467
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 519
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 526
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 533
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 556
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 601
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 619
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 643
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 649
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 655
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2311
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2312
    .local v0, "fullName":Ljava/lang/String;
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 2313
    .local v1, "lastDot":I
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 2314
    .local v2, "className":Ljava/lang/String;
    const/4 v3, 0x0

    .line 2315
    .local v3, "calType":Ljava/lang/String;
    sget-object v4, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_66
    if-ge v7, v5, :cond_79

    aget-object v8, v4, v7

    .line 2316
    .local v8, "calClassInfo":[Ljava/lang/String;
    aget-object v9, v8, v6

    invoke-virtual {v9, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_76

    .line 2317
    const/4 v4, 0x1

    aget-object v3, v8, v4

    .line 2318
    goto :goto_79

    .line 2315
    .end local v8    # "calClassInfo":[Ljava/lang/String;
    :cond_76
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 2321
    :cond_79
    :goto_79
    if-nez v3, :cond_89

    .line 2322
    const-string v4, "Calendar"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 2325
    :cond_89
    invoke-virtual {p0, p2, v3}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    .line 2326
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Class;Ljava/util/Locale;)V
    .registers 4
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    .line 2302
    .local p1, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/util/Calendar;>;"
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    .line 2303
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;

    .line 237
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    .line 238
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 2344
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 341
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 348
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 356
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 365
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 374
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 382
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 391
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 400
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 409
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 419
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 429
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 438
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 447
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 457
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 467
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 476
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 484
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 492
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 498
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 505
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 512
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 519
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 526
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 533
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 540
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 547
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 556
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 565
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 601
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 619
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 625
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 631
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 637
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 643
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 649
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 655
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 722
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2345
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    invoke-static {p2}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v0, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    .line 2346
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .registers 4
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 2335
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V

    .line 2336
    return-void
.end method

.method private static final greylist-max-o arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .registers 6
    .param p0, "aa1"    # [[Ljava/lang/Object;
    .param p1, "aa2"    # [[Ljava/lang/Object;

    .line 2182
    if-ne p0, p1, :cond_4

    .line 2183
    const/4 v0, 0x1

    return v0

    .line 2185
    :cond_4
    const/4 v0, 0x0

    if-eqz p0, :cond_23

    if-nez p1, :cond_a

    goto :goto_23

    .line 2188
    :cond_a
    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_f

    .line 2189
    return v0

    .line 2191
    :cond_f
    const/4 v0, 0x1

    .line 2192
    .local v0, "equal":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_11
    array-length v2, p0

    if-ge v1, v2, :cond_22

    .line 2193
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    .line 2194
    if-nez v0, :cond_1f

    .line 2195
    goto :goto_22

    .line 2192
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2198
    .end local v1    # "i":I
    :cond_22
    :goto_22
    return v0

    .line 2186
    .end local v0    # "equal":Z
    :cond_23
    :goto_23
    return v0
.end method

.method private final greylist-max-o duplicate([Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .param p1, "srcArray"    # [Ljava/lang/String;

    .line 2243
    invoke-virtual {p1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private final greylist-max-o duplicate([[Ljava/lang/String;)[[Ljava/lang/String;
    .registers 5
    .param p1, "srcArray"    # [[Ljava/lang/String;

    .line 2248
    array-length v0, p1

    new-array v0, v0, [[Ljava/lang/String;

    .line 2249
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_12

    .line 2250
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2249
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 2251
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 309
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 326
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getDateFormatBundle(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .registers 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2425
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o getDateFormatBundle(Landroid/icu/util/Calendar;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 3
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2408
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o getDateFormatBundle(Ljava/lang/Class;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2391
    .local p0, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/util/Calendar;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static greylist-max-o getDateFormatBundle(Ljava/lang/Class;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .registers 3
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2368
    .local p0, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/icu/util/Calendar;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public static blacklist getExtendedInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 1562
    invoke-static {p0}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/text/DateFormatSymbols;->getExtendedInstance(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getExtendedInstance(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;
    .registers 6
    .param p0, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p1, "type"    # Ljava/lang/String;

    .line 1549
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1550
    .local v0, "key":Ljava/lang/String;
    const-string v2, "numbers"

    invoke-virtual {p0, v2}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1551
    .local v2, "ns":Ljava/lang/String;
    if-eqz v2, :cond_3e

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_3e

    .line 1552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1555
    :cond_3e
    sget-object v1, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/CacheBase;

    invoke-virtual {v1, v0, p0}, Landroid/icu/impl/CacheBase;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    return-object v1
.end method

.method public static whitelist test-api getInstance()Landroid/icu/text/DateFormatSymbols;
    .registers 1

    .line 263
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols;-><init>()V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 293
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .registers 2
    .param p0, "locale"    # Ljava/util/Locale;

    .line 278
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method private blacklist initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V
    .registers 33
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "calendarType"    # Ljava/lang/String;
    .param p4, "aospExtendedDateFormatSymbols"    # Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    .line 1957
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    new-instance v0, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;

    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;-><init>()V

    move-object v4, v0

    .line 1958
    .local v4, "calendarSink":Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
    const-string v0, "android/icu/impl/data/icudata"

    if-nez p2, :cond_1a

    .line 1959
    nop

    .line 1960
    invoke-static {v0, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v5

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    move-object/from16 v6, p3

    .end local p2    # "b":Landroid/icu/impl/ICUResourceBundle;
    .local v5, "b":Landroid/icu/impl/ICUResourceBundle;
    goto :goto_1e

    .line 1958
    .end local v5    # "b":Landroid/icu/impl/ICUResourceBundle;
    .restart local p2    # "b":Landroid/icu/impl/ICUResourceBundle;
    :cond_1a
    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 1964
    .end local p2    # "b":Landroid/icu/impl/ICUResourceBundle;
    .end local p3    # "calendarType":Ljava/lang/String;
    .restart local v5    # "b":Landroid/icu/impl/ICUResourceBundle;
    .local v6, "calendarType":Ljava/lang/String;
    :goto_1e
    const-string v7, ""

    if-eqz v6, :cond_85

    .line 1967
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "calendar/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v8

    .line 1968
    .local v8, "dataForType":Landroid/icu/impl/ICUResourceBundle;
    const-string v9, "gregorian"

    if-nez v8, :cond_6e

    .line 1969
    invoke-virtual {v9, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 1970
    const-string v6, "gregorian"

    .line 1971
    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    .line 1972
    goto :goto_1e

    .line 1974
    :cond_49
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "The \'gregorian\' calendar type wasn\'t found for the locale: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1975
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v7, v10, v9}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 1977
    :cond_6e
    invoke-virtual {v4, v6}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->preEnumerate(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {v8, v7, v4}, Landroid/icu/impl/ICUResourceBundle;->getAllItemsWithFallback(Ljava/lang/String;Landroid/icu/impl/UResource$Sink;)V

    .line 1981
    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7b

    .line 1982
    goto :goto_85

    .line 1986
    :cond_7b
    iget-object v6, v4, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->nextCalendarType:Ljava/lang/String;

    .line 1989
    if-nez v6, :cond_84

    .line 1990
    const-string v6, "gregorian"

    .line 1991
    invoke-virtual {v4}, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->visitAllResources()V

    .line 1993
    .end local v8    # "dataForType":Landroid/icu/impl/ICUResourceBundle;
    :cond_84
    goto :goto_1e

    .line 1995
    :cond_85
    :goto_85
    iget-object v8, v4, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->arrays:Ljava/util/Map;

    .line 1996
    .local v8, "arrays":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v9, v4, Landroid/icu/text/DateFormatSymbols$CalendarDataSink;->maps:Ljava/util/Map;

    .line 1998
    .local v9, "maps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v10, "eras/abbreviated"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1999
    const-string v10, "eras/wide"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 2000
    const-string v10, "eras/narrow"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 2002
    const-string v10, "monthNames/format/wide"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 2003
    const-string v10, "monthNames/format/abbreviated"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 2004
    const-string v10, "monthNames/format/narrow"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 2006
    const-string v10, "monthNames/stand-alone/wide"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 2007
    const-string v10, "monthNames/stand-alone/abbreviated"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 2008
    const-string v10, "monthNames/stand-alone/narrow"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 2010
    const-string v10, "dayNames/format/wide"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 2011
    .local v10, "lWeekdays":[Ljava/lang/String;
    const/16 v11, 0x8

    new-array v12, v11, [Ljava/lang/String;

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 2012
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 2013
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    array-length v14, v10

    const/4 v15, 0x1

    invoke-static {v10, v13, v12, v15, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2015
    const-string v12, "dayNames/format/abbreviated"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [Ljava/lang/String;

    .line 2016
    .local v14, "aWeekdays":[Ljava/lang/String;
    move/from16 p2, v13

    new-array v13, v11, [Ljava/lang/String;

    iput-object v13, v1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 2017
    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    aput-object v7, v13, p2

    .line 2018
    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    array-length v11, v14

    move-object/from16 v16, v4

    move/from16 v4, p2

    .end local v4    # "calendarSink":Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
    .local v16, "calendarSink":Landroid/icu/text/DateFormatSymbols$CalendarDataSink;
    invoke-static {v14, v4, v13, v15, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2020
    const-string v11, "dayNames/format/short"

    invoke-interface {v8, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    .line 2021
    .local v11, "sWeekdays":[Ljava/lang/String;
    const/16 v13, 0x8

    new-array v4, v13, [Ljava/lang/String;

    iput-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 2022
    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    aput-object v7, v4, p2

    .line 2023
    iget-object v4, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    array-length v13, v11

    move-object/from16 v17, v5

    move/from16 v5, p2

    .end local v5    # "b":Landroid/icu/impl/ICUResourceBundle;
    .local v17, "b":Landroid/icu/impl/ICUResourceBundle;
    invoke-static {v11, v5, v4, v15, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2025
    const-string v4, "dayNames/format/narrow"

    invoke-interface {v8, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 2026
    .local v4, "nWeekdays":[Ljava/lang/String;
    const-string v5, "dayNames/stand-alone/narrow"

    if-nez v4, :cond_164

    .line 2027
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v4, v13

    check-cast v4, [Ljava/lang/String;

    .line 2029
    if-nez v4, :cond_164

    .line 2030
    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    move-object v4, v13

    check-cast v4, [Ljava/lang/String;

    .line 2032
    if-eqz v4, :cond_154

    goto :goto_164

    .line 2033
    :cond_154
    new-instance v0, Ljava/util/MissingResourceException;

    .line 2034
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v7, "Resource not found"

    invoke-direct {v0, v7, v5, v12}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    .line 2038
    :cond_164
    :goto_164
    const/16 v13, 0x8

    new-array v12, v13, [Ljava/lang/String;

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 2039
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 2040
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    move-object/from16 v18, v6

    .end local v6    # "calendarType":Ljava/lang/String;
    .local v18, "calendarType":Ljava/lang/String;
    array-length v6, v4

    invoke-static {v4, v13, v12, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2042
    const/4 v6, 0x0

    .line 2043
    .local v6, "swWeekdays":[Ljava/lang/String;
    const-string v12, "dayNames/stand-alone/wide"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 2044
    const/16 v13, 0x8

    new-array v12, v13, [Ljava/lang/String;

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 2045
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 2046
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    move-object/from16 v19, v4

    .end local v4    # "nWeekdays":[Ljava/lang/String;
    .local v19, "nWeekdays":[Ljava/lang/String;
    array-length v4, v6

    invoke-static {v6, v13, v12, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2048
    const/4 v4, 0x0

    .line 2049
    .local v4, "saWeekdays":[Ljava/lang/String;
    const-string v12, "dayNames/stand-alone/abbreviated"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v4, v12

    check-cast v4, [Ljava/lang/String;

    .line 2050
    const/16 v13, 0x8

    new-array v12, v13, [Ljava/lang/String;

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 2051
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 2052
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    move-object/from16 v20, v6

    .end local v6    # "swWeekdays":[Ljava/lang/String;
    .local v20, "swWeekdays":[Ljava/lang/String;
    array-length v6, v4

    invoke-static {v4, v13, v12, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2054
    const/4 v6, 0x0

    .line 2055
    .local v6, "ssWeekdays":[Ljava/lang/String;
    const-string v12, "dayNames/stand-alone/short"

    invoke-interface {v8, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v6, v12

    check-cast v6, [Ljava/lang/String;

    .line 2056
    const/16 v13, 0x8

    new-array v12, v13, [Ljava/lang/String;

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 2057
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v7, v12, v13

    .line 2058
    iget-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    move-object/from16 v21, v4

    .end local v4    # "saWeekdays":[Ljava/lang/String;
    .local v21, "saWeekdays":[Ljava/lang/String;
    array-length v4, v6

    invoke-static {v6, v13, v12, v15, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2060
    const/4 v4, 0x0

    .line 2061
    .local v4, "snWeekdays":[Ljava/lang/String;
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [Ljava/lang/String;

    .line 2062
    const/16 v5, 0x8

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 2063
    iget-object v5, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    aput-object v7, v5, v13

    .line 2064
    iget-object v5, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    array-length v7, v4

    invoke-static {v4, v13, v5, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2066
    const-string v5, "AmPmMarkers"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 2067
    const-string v5, "AmPmMarkersNarrow"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 2069
    const-string v5, "quarters/format/wide"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 2070
    const-string v5, "quarters/format/abbreviated"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 2071
    const-string v5, "quarters/format/narrow"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v1, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 2073
    const-string v7, "quarters/stand-alone/wide"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 2074
    const-string v7, "quarters/stand-alone/abbreviated"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    iput-object v7, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 2075
    const-string v7, "quarters/stand-alone/narrow"

    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [Ljava/lang/String;

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 2077
    const-string v12, "dayPeriod/format/abbreviated"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    const/4 v13, 0x0

    invoke-direct {v1, v12, v13}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 2078
    const-string v12, "dayPeriod/format/wide"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 2079
    const-string v12, "dayPeriod/format/narrow"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 2080
    const-string v12, "dayPeriod/stand-alone/abbreviated"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 2081
    const-string v12, "dayPeriod/stand-alone/wide"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 2082
    const-string v12, "dayPeriod/stand-alone/narrow"

    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    iget-object v13, v1, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    invoke-direct {v1, v12, v13}, Landroid/icu/text/DateFormatSymbols;->loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    iput-object v12, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 2085
    if-eqz v3, :cond_2ab

    .line 2086
    nop

    .line 2087
    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->-$$Nest$fputnarrowQuarters(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;[Ljava/lang/String;)V

    .line 2088
    nop

    .line 2089
    invoke-interface {v8, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-static {v3, v5}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->-$$Nest$fputstandaloneNarrowQuarters(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;[Ljava/lang/String;)V

    .line 2093
    :cond_2ab
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2ac
    const/4 v7, 0x7

    if-ge v5, v7, :cond_2e1

    .line 2094
    sget-object v12, Landroid/icu/text/DateFormatSymbols;->LEAP_MONTH_PATTERNS_PATHS:[Ljava/lang/String;

    aget-object v12, v12, v5

    .line 2095
    .local v12, "monthPatternPath":Ljava/lang/String;
    if-eqz v12, :cond_2da

    .line 2096
    invoke-interface {v9, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 2097
    .local v13, "monthPatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v13, :cond_2d7

    .line 2098
    move/from16 p3, v15

    const-string v15, "leap"

    invoke-interface {v13, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 2099
    .local v15, "leapMonthPattern":Ljava/lang/String;
    if-eqz v15, :cond_2dc

    .line 2100
    iget-object v7, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-nez v7, :cond_2d2

    .line 2101
    const/4 v7, 0x7

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 2103
    :cond_2d2
    iget-object v7, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object v15, v7, v5

    goto :goto_2dc

    .line 2097
    .end local v15    # "leapMonthPattern":Ljava/lang/String;
    :cond_2d7
    move/from16 p3, v15

    goto :goto_2dc

    .line 2095
    .end local v13    # "monthPatternMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2da
    move/from16 p3, v15

    .line 2093
    .end local v12    # "monthPatternPath":Ljava/lang/String;
    :cond_2dc
    :goto_2dc
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, p3

    goto :goto_2ac

    :cond_2e1
    move/from16 p3, v15

    .line 2109
    .end local v5    # "i":I
    const-string v5, "cyclicNameSets/years/format/abbreviated"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 2110
    const-string v5, "cyclicNameSets/zodiacs/format/abbreviated"

    invoke-interface {v8, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    iput-object v5, v1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 2112
    iput-object v2, v1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    .line 2114
    nop

    .line 2115
    invoke-static {v0, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/icu/impl/ICUResourceBundle;

    .line 2118
    .local v5, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string v0, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxrbB"

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 2121
    invoke-virtual {v5}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v7

    .line 2122
    .local v7, "uloc":Landroid/icu/util/ULocale;
    invoke-virtual {v1, v7, v7}, Landroid/icu/text/DateFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 2124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 2125
    const/4 v12, 0x2

    new-array v13, v12, [Z

    .line 2126
    .local v13, "noTransforms":[Z
    const/4 v15, 0x0

    aput-boolean v15, v13, v15

    .line 2127
    aput-boolean v15, v13, p3

    .line 2128
    invoke-static {}, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->values()[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    move-result-object v15

    .line 2129
    .local v15, "allUsages":[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    array-length v0, v15

    const/4 v12, 0x0

    :goto_321
    if-ge v12, v0, :cond_333

    move/from16 v23, v0

    aget-object v0, v15, v12

    .line 2130
    .local v0, "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    iget-object v2, v1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    .end local v0    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v2, p1

    move/from16 v0, v23

    goto :goto_321

    .line 2132
    :cond_333
    const/4 v2, 0x0

    .line 2134
    .local v2, "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :try_start_334
    const-string v0, "contextTransforms"

    invoke-virtual {v5, v0}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v0
    :try_end_33a
    .catch Ljava/util/MissingResourceException; {:try_start_334 .. :try_end_33a} :catch_33c

    .line 2138
    .end local v2    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .local v0, "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    move-object v2, v0

    goto :goto_33e

    .line 2136
    .end local v0    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :catch_33c
    move-exception v0

    .line 2137
    .local v0, "e":Ljava/util/MissingResourceException;
    const/4 v2, 0x0

    .line 2139
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :goto_33e
    if-eqz v2, :cond_3a4

    .line 2140
    invoke-virtual {v2}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    move-result-object v0

    .line 2141
    .local v0, "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    :goto_344
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_39f

    .line 2142
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    move-result-object v12

    .line 2143
    .local v12, "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    move-object/from16 v23, v0

    .end local v0    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .local v23, "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    invoke-virtual {v12}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v0

    .line 2144
    .local v0, "intVector":[I
    move-object/from16 v24, v2

    .end local v2    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .local v24, "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_394

    .line 2145
    invoke-virtual {v12}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 2146
    .local v2, "usageKey":Ljava/lang/String;
    sget-object v3, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    .line 2147
    .local v3, "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    if-eqz v3, :cond_38d

    .line 2148
    move-object/from16 v22, v0

    move-object/from16 v25, v2

    const/4 v2, 0x2

    .end local v0    # "intVector":[I
    .end local v2    # "usageKey":Ljava/lang/String;
    .local v22, "intVector":[I
    .local v25, "usageKey":Ljava/lang/String;
    new-array v0, v2, [Z

    .line 2149
    .local v0, "transforms":[Z
    const/16 v26, 0x0

    aget v27, v22, v26

    if-eqz v27, :cond_378

    move/from16 v27, p3

    goto :goto_37a

    :cond_378
    move/from16 v27, v26

    :goto_37a
    aput-boolean v27, v0, v26

    .line 2150
    aget v27, v22, p3

    if-eqz v27, :cond_383

    move/from16 v27, p3

    goto :goto_385

    :cond_383
    move/from16 v27, v26

    :goto_385
    aput-boolean v27, v0, p3

    .line 2151
    iget-object v2, v1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_398

    .line 2147
    .end local v22    # "intVector":[I
    .end local v25    # "usageKey":Ljava/lang/String;
    .local v0, "intVector":[I
    .restart local v2    # "usageKey":Ljava/lang/String;
    :cond_38d
    move-object/from16 v22, v0

    move-object/from16 v25, v2

    const/16 v26, 0x0

    .end local v0    # "intVector":[I
    .end local v2    # "usageKey":Ljava/lang/String;
    .restart local v22    # "intVector":[I
    .restart local v25    # "usageKey":Ljava/lang/String;
    goto :goto_398

    .line 2144
    .end local v3    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .end local v22    # "intVector":[I
    .end local v25    # "usageKey":Ljava/lang/String;
    .restart local v0    # "intVector":[I
    :cond_394
    move-object/from16 v22, v0

    const/16 v26, 0x0

    .line 2154
    .end local v0    # "intVector":[I
    .end local v12    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    :goto_398
    move-object/from16 v3, p4

    move-object/from16 v0, v23

    move-object/from16 v2, v24

    goto :goto_344

    .line 2141
    .end local v23    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v24    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .local v0, "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .local v2, "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :cond_39f
    move-object/from16 v23, v0

    move-object/from16 v24, v2

    .end local v0    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v2    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .restart local v23    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .restart local v24    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    goto :goto_3a6

    .line 2139
    .end local v23    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v24    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .restart local v2    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :cond_3a4
    move-object/from16 v24, v2

    .line 2157
    .end local v2    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .restart local v24    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :goto_3a6
    invoke-static/range {p1 .. p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    move-result-object v2

    .line 2158
    .local v2, "ns":Landroid/icu/text/NumberingSystem;
    if-nez v2, :cond_3af

    const-string v0, "latn"

    goto :goto_3b3

    :cond_3af
    invoke-virtual {v2}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_3b3
    move-object v3, v0

    .line 2159
    .local v3, "nsName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberElements/"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, "/symbols/timeSeparator"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2161
    .local v12, "tsPath":Ljava/lang/String;
    :try_start_3cd
    invoke-virtual {v5, v12}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V
    :try_end_3d4
    .catch Ljava/util/MissingResourceException; {:try_start_3cd .. :try_end_3d4} :catch_3d5

    .line 2164
    goto :goto_3dd

    .line 2162
    :catch_3d5
    move-exception v0

    .line 2163
    .local v0, "e":Ljava/util/MissingResourceException;
    move-object/from16 p2, v0

    .end local v0    # "e":Ljava/util/MissingResourceException;
    .local p2, "e":Ljava/util/MissingResourceException;
    const-string v0, ":"

    invoke-virtual {v1, v0}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V

    .line 2165
    .end local p2    # "e":Ljava/util/MissingResourceException;
    :goto_3dd
    return-void
.end method

.method private blacklist loadDayPeriodStrings(Ljava/util/Map;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .param p2, "copyFrom"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2215
    .local p1, "resourceMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    .line 2216
    return-object p2

    .line 2218
    :cond_5
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 2219
    .local v0, "strings":[Ljava/lang/String;
    if-eqz p1, :cond_2b

    .line 2220
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    sget-object v2, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2b

    .line 2221
    sget-object v2, Landroid/icu/text/DateFormatSymbols;->DAY_PERIOD_KEYS:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    .line 2222
    aget-object v2, v0, v1

    if-nez v2, :cond_28

    if-eqz p2, :cond_28

    .line 2223
    aget-object v2, p2, v1

    aput-object v2, v0, v1

    .line 2220
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 2227
    .end local v1    # "i":I
    :cond_2b
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2508
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2509
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1432
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/DateFormatSymbols;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_7

    .line 1433
    .local v0, "other":Landroid/icu/text/DateFormatSymbols;
    return-object v0

    .line 1434
    .end local v0    # "other":Landroid/icu/text/DateFormatSymbols;
    :catch_7
    move-exception v0

    .line 1436
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 1457
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 1458
    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_143

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    goto/16 :goto_143

    .line 1459
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/text/DateFormatSymbols;

    .line 1460
    .local v2, "that":Landroid/icu/text/DateFormatSymbols;
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1461
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1462
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1463
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1464
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1465
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1466
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1467
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1468
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1469
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1470
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1471
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1472
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1473
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1474
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1475
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1476
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1477
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1478
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1479
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1480
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1481
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1482
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1483
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1484
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1485
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1486
    invoke-static {v3, v4}, Landroid/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    .line 1490
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v4}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iget-object v4, v2, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1491
    invoke-static {v3, v4}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_141

    goto :goto_142

    :cond_141
    move v0, v1

    .line 1460
    :goto_142
    return v0

    .line 1458
    .end local v2    # "that":Landroid/icu/text/DateFormatSymbols;
    :cond_143
    :goto_143
    return v1
.end method

.method public whitelist test-api getAmPmStrings()[Ljava/lang/String;
    .registers 2

    .line 1287
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist test-api getAmpmNarrowStrings()[Ljava/lang/String;
    .registers 2

    .line 1306
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEraNames()[Ljava/lang/String;
    .registers 2

    .line 745
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getEras()[Ljava/lang/String;
    .registers 2

    .line 729
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getLeapMonthPattern(II)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # I
    .param p2, "width"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1183
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_30

    .line 1184
    const/4 v0, -0x1

    .line 1185
    .local v0, "leapMonthPatternIndex":I
    packed-switch p1, :pswitch_data_32

    goto :goto_21

    .line 1215
    :pswitch_9
    const/4 v0, 0x6

    goto :goto_21

    .line 1201
    :pswitch_b
    packed-switch p2, :pswitch_data_3c

    goto :goto_15

    .line 1210
    :pswitch_f
    const/4 v0, 0x5

    goto :goto_15

    .line 1203
    :pswitch_11
    const/4 v0, 0x3

    .line 1204
    goto :goto_15

    .line 1207
    :pswitch_13
    const/4 v0, 0x1

    .line 1208
    nop

    .line 1213
    :goto_15
    goto :goto_21

    .line 1187
    :pswitch_16
    packed-switch p2, :pswitch_data_48

    goto :goto_20

    .line 1196
    :pswitch_1a
    const/4 v0, 0x2

    goto :goto_20

    .line 1189
    :pswitch_1c
    const/4 v0, 0x0

    .line 1190
    goto :goto_20

    .line 1193
    :pswitch_1e
    const/4 v0, 0x1

    .line 1194
    nop

    .line 1199
    :goto_20
    nop

    .line 1218
    :goto_21
    if-ltz v0, :cond_28

    .line 1221
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1

    .line 1219
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1223
    .end local v0    # "leapMonthPatternIndex":I
    :cond_30
    const/4 v0, 0x0

    return-object v0

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_16
        :pswitch_b
        :pswitch_9
    .end packed-switch

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_13
    .end packed-switch

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1c
        :pswitch_1a
        :pswitch_1e
    .end packed-switch
.end method

.method public whitelist test-api getLocalPatternChars()Ljava/lang/String;
    .registers 2

    .line 1413
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    return-object v0
.end method

.method public final greylist-max-r getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 2455
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    .line 2456
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 2455
    :goto_9
    return-object v0
.end method

.method public whitelist test-api getMonths()[Ljava/lang/String;
    .registers 2

    .line 777
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getMonths(II)[Ljava/lang/String;
    .registers 6
    .param p1, "context"    # I
    .param p2, "width"    # I

    .line 788
    const/4 v0, 0x0

    .line 789
    .local v0, "returnValue":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_30

    goto :goto_20

    .line 805
    :pswitch_5
    packed-switch p2, :pswitch_data_38

    goto :goto_20

    .line 814
    :pswitch_9
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    goto :goto_20

    .line 807
    :pswitch_c
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 808
    goto :goto_20

    .line 811
    :pswitch_f
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 812
    goto :goto_20

    .line 791
    :pswitch_12
    packed-switch p2, :pswitch_data_44

    goto :goto_1f

    .line 800
    :pswitch_16
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    goto :goto_1f

    .line 793
    :pswitch_19
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 794
    goto :goto_1f

    .line 797
    :pswitch_1c
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 798
    nop

    .line 803
    :goto_1f
    nop

    .line 819
    :goto_20
    if-eqz v0, :cond_27

    .line 822
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 820
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_12
        :pswitch_5
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_f
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist test-api getNarrowEras()[Ljava/lang/String;
    .registers 2

    .line 761
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getQuarters(II)[Ljava/lang/String;
    .registers 6
    .param p1, "context"    # I
    .param p2, "width"    # I

    .line 1034
    const/4 v0, 0x0

    .line 1035
    .local v0, "returnValue":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_30

    goto :goto_20

    .line 1052
    :pswitch_5
    packed-switch p2, :pswitch_data_38

    goto :goto_20

    .line 1061
    :pswitch_9
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    goto :goto_20

    .line 1054
    :pswitch_c
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1055
    goto :goto_20

    .line 1058
    :pswitch_f
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1059
    goto :goto_20

    .line 1037
    :pswitch_12
    packed-switch p2, :pswitch_data_44

    goto :goto_1f

    .line 1046
    :pswitch_16
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    goto :goto_1f

    .line 1039
    :pswitch_19
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1040
    goto :goto_1f

    .line 1043
    :pswitch_1c
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1044
    nop

    .line 1049
    :goto_1f
    nop

    .line 1066
    :goto_20
    if-eqz v0, :cond_27

    .line 1069
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1067
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_12
        :pswitch_5
    .end packed-switch

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_f
    .end packed-switch

    :pswitch_data_44
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_19
        :pswitch_16
        :pswitch_1c
    .end packed-switch
.end method

.method public whitelist test-api getShortMonths()[Ljava/lang/String;
    .registers 2

    .line 880
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getShortWeekdays()[Ljava/lang/String;
    .registers 2

    .line 1012
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getTimeSeparatorString()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1318
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api getWeekdays()[Ljava/lang/String;
    .registers 2

    .line 897
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getWeekdays(II)[Ljava/lang/String;
    .registers 6
    .param p1, "context"    # I
    .param p2, "width"    # I

    .line 909
    const/4 v0, 0x0

    .line 910
    .local v0, "returnValue":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_46

    goto :goto_36

    .line 928
    :pswitch_5
    packed-switch p2, :pswitch_data_4e

    goto :goto_36

    .line 936
    :pswitch_9
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_10

    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    goto :goto_12

    :cond_10
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    :goto_12
    move-object v0, v1

    .line 937
    goto :goto_36

    .line 939
    :pswitch_14
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_36

    .line 930
    :pswitch_17
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 931
    goto :goto_36

    .line 933
    :pswitch_1a
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 934
    goto :goto_36

    .line 912
    :pswitch_1d
    packed-switch p2, :pswitch_data_5a

    goto :goto_35

    .line 920
    :pswitch_21
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    goto :goto_2a

    :cond_28
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    :goto_2a
    move-object v0, v1

    .line 921
    goto :goto_35

    .line 923
    :pswitch_2c
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_35

    .line 914
    :pswitch_2f
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 915
    goto :goto_35

    .line 917
    :pswitch_32
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 918
    nop

    .line 926
    :goto_35
    nop

    .line 944
    :goto_36
    if-eqz v0, :cond_3d

    .line 947
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 945
    :cond_3d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad context or width argument"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_5
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_9
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_32
        :pswitch_2f
        :pswitch_2c
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api getYearNames(II)[Ljava/lang/String;
    .registers 4
    .param p1, "context"    # I
    .param p2, "width"    # I

    .line 1124
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1125
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1127
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getZodiacNames(II)[Ljava/lang/String;
    .registers 4
    .param p1, "context"    # I
    .param p2, "width"    # I

    .line 1152
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1153
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist test-api getZoneStrings()[[Ljava/lang/String;
    .registers 12

    .line 1358
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 1359
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1362
    :cond_b
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v0

    .line 1363
    .local v0, "tzIDs":[Ljava/lang/String;
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    invoke-static {v1}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    .line 1364
    .local v2, "tznames":Landroid/icu/text/TimeZoneNames;
    invoke-virtual {v2}, Landroid/icu/text/TimeZoneNames;->loadAllDisplayNames()V

    .line 1365
    const/4 v1, 0x4

    new-array v4, v1, [Landroid/icu/text/TimeZoneNames$NameType;

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v9, 0x0

    aput-object v1, v4, v9

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v3, 0x1

    aput-object v1, v4, v3

    sget-object v1, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    const/4 v5, 0x2

    aput-object v1, v4, v5

    const/4 v1, 0x3

    sget-object v6, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    aput-object v6, v4, v1

    .line 1369
    .local v4, "types":[Landroid/icu/text/TimeZoneNames$NameType;
    move v1, v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1370
    .local v5, "now":J
    array-length v7, v0

    new-array v1, v1, [I

    const/4 v8, 0x5

    aput v8, v1, v3

    aput v7, v1, v9

    const-class v3, Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/String;

    .line 1371
    .local v1, "array":[[Ljava/lang/String;
    const/4 v3, 0x0

    move v10, v3

    .local v10, "i":I
    :goto_46
    array-length v3, v0

    if-ge v10, v3, :cond_62

    .line 1372
    aget-object v3, v0, v10

    invoke-static {v3}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1373
    .local v3, "canonicalID":Ljava/lang/String;
    if-nez v3, :cond_53

    .line 1374
    aget-object v3, v0, v10

    .line 1377
    :cond_53
    aget-object v7, v1, v10

    aget-object v8, v0, v10

    aput-object v8, v7, v9

    .line 1378
    aget-object v7, v1, v10

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Landroid/icu/text/TimeZoneNames;->getDisplayNames(Ljava/lang/String;[Landroid/icu/text/TimeZoneNames$NameType;J[Ljava/lang/String;I)V

    .line 1371
    .end local v3    # "canonicalID":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    goto :goto_46

    .line 1381
    .end local v10    # "i":I
    :cond_62
    iput-object v1, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1382
    iget-object v3, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    return-object v3
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 1448
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method greylist-max-o initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .registers 3
    .param p1, "dfs"    # Landroid/icu/text/DateFormatSymbols;

    .line 1632
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 1633
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 1634
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 1635
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 1636
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 1637
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 1638
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 1639
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 1640
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 1641
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1642
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1643
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 1644
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    .line 1645
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 1646
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 1647
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 1648
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    .line 1649
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1650
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    .line 1651
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1652
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1653
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 1654
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1655
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1656
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 1657
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1658
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    .line 1659
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 1660
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1661
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->abbreviatedDayPeriods:[Ljava/lang/String;

    .line 1662
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->wideDayPeriods:[Ljava/lang/String;

    .line 1663
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowDayPeriods:[Ljava/lang/String;

    .line 1664
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneAbbreviatedDayPeriods:[Ljava/lang/String;

    .line 1665
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWideDayPeriods:[Ljava/lang/String;

    .line 1666
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowDayPeriods:[Ljava/lang/String;

    .line 1668
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1669
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1671
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    .line 1673
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    .line 1674
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 1675
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    .line 1676
    return-void
.end method

.method protected greylist-max-o initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V
    .registers 5
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "b"    # Landroid/icu/impl/ICUResourceBundle;
    .param p3, "calendarType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1951
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)V

    .line 1952
    return-void
.end method

.method protected whitelist test-api initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .registers 4
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Ljava/lang/String;

    .line 1541
    invoke-static {p1, p2}, Landroid/icu/text/DateFormatSymbols;->getExtendedInstance(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;

    move-result-object v0

    invoke-static {v0}, Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;->-$$Nest$fgetdfs(Landroid/icu/text/DateFormatSymbols$AospExtendedDateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 1542
    .local v0, "dfs":Landroid/icu/text/DateFormatSymbols;
    invoke-virtual {p0, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    .line 1543
    return-void
.end method

.method public whitelist test-api setAmPmStrings([Ljava/lang/String;)V
    .registers 3
    .param p1, "newAmpms"    # [Ljava/lang/String;

    .line 1295
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    .line 1296
    return-void
.end method

.method public whitelist test-api setEraNames([Ljava/lang/String;)V
    .registers 3
    .param p1, "newEraNames"    # [Ljava/lang/String;

    .line 753
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    .line 754
    return-void
.end method

.method public whitelist test-api setEras([Ljava/lang/String;)V
    .registers 3
    .param p1, "newEras"    # [Ljava/lang/String;

    .line 737
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    .line 738
    return-void
.end method

.method public greylist-max-o setLeapMonthPattern(Ljava/lang/String;II)V
    .registers 6
    .param p1, "leapMonthPattern"    # Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1237
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    if-eqz v0, :cond_25

    .line 1238
    const/4 v0, -0x1

    .line 1239
    .local v0, "leapMonthPatternIndex":I
    packed-switch p2, :pswitch_data_26

    goto :goto_1f

    .line 1271
    :pswitch_9
    const/4 v0, 0x6

    .line 1272
    goto :goto_1f

    .line 1256
    :pswitch_b
    packed-switch p3, :pswitch_data_30

    .line 1267
    goto :goto_1f

    .line 1264
    :pswitch_f
    const/4 v0, 0x5

    .line 1265
    goto :goto_1f

    .line 1258
    :pswitch_11
    const/4 v0, 0x3

    .line 1259
    goto :goto_1f

    .line 1261
    :pswitch_13
    const/4 v0, 0x1

    .line 1262
    goto :goto_1f

    .line 1241
    :pswitch_15
    packed-switch p3, :pswitch_data_3a

    .line 1252
    goto :goto_1f

    .line 1249
    :pswitch_19
    const/4 v0, 0x2

    .line 1250
    goto :goto_1f

    .line 1243
    :pswitch_1b
    const/4 v0, 0x0

    .line 1244
    goto :goto_1f

    .line 1246
    :pswitch_1d
    const/4 v0, 0x1

    .line 1247
    nop

    .line 1276
    :goto_1f
    if-ltz v0, :cond_25

    .line 1277
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 1280
    .end local v0    # "leapMonthPatternIndex":I
    :cond_25
    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
        :pswitch_b
        :pswitch_9
    .end packed-switch

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_13
        :pswitch_11
        :pswitch_f
    .end packed-switch

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
    .end packed-switch
.end method

.method public whitelist test-api setLocalPatternChars(Ljava/lang/String;)V
    .registers 2
    .param p1, "newLocalPatternChars"    # Ljava/lang/String;

    .line 1422
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    .line 1423
    return-void
.end method

.method final greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 2477
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-nez p2, :cond_a

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    if-ne v2, v0, :cond_12

    .line 2484
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    .line 2485
    iput-object p2, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    .line 2486
    return-void

    .line 2479
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setMonths([Ljava/lang/String;)V
    .registers 3
    .param p1, "newMonths"    # [Ljava/lang/String;

    .line 830
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 831
    return-void
.end method

.method public whitelist test-api setMonths([Ljava/lang/String;II)V
    .registers 5
    .param p1, "newMonths"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    .line 841
    packed-switch p2, :pswitch_data_38

    goto :goto_36

    .line 858
    :pswitch_4
    packed-switch p3, :pswitch_data_40

    goto :goto_36

    .line 866
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    .line 867
    goto :goto_36

    .line 860
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    .line 861
    goto :goto_36

    .line 863
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    .line 864
    goto :goto_36

    .line 843
    :pswitch_1d
    packed-switch p3, :pswitch_data_4a

    .line 854
    goto :goto_36

    .line 851
    :pswitch_21
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    .line 852
    goto :goto_36

    .line 845
    :pswitch_28
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    .line 846
    goto :goto_36

    .line 848
    :pswitch_2f
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 849
    nop

    .line 873
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_4
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api setNarrowEras([Ljava/lang/String;)V
    .registers 3
    .param p1, "newNarrowEras"    # [Ljava/lang/String;

    .line 769
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    .line 770
    return-void
.end method

.method public whitelist test-api setQuarters([Ljava/lang/String;II)V
    .registers 5
    .param p1, "newQuarters"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    .line 1080
    packed-switch p2, :pswitch_data_38

    goto :goto_36

    .line 1097
    :pswitch_4
    packed-switch p3, :pswitch_data_40

    goto :goto_36

    .line 1105
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowQuarters:[Ljava/lang/String;

    .line 1106
    goto :goto_36

    .line 1099
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    .line 1100
    goto :goto_36

    .line 1102
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    .line 1103
    goto :goto_36

    .line 1082
    :pswitch_1d
    packed-switch p3, :pswitch_data_4a

    .line 1093
    goto :goto_36

    .line 1090
    :pswitch_21
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowQuarters:[Ljava/lang/String;

    .line 1091
    goto :goto_36

    .line 1084
    :pswitch_28
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    .line 1085
    goto :goto_36

    .line 1087
    :pswitch_2f
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    .line 1088
    nop

    .line 1112
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_4
    .end packed-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch

    :pswitch_data_4a
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
        :pswitch_21
    .end packed-switch
.end method

.method public whitelist test-api setShortMonths([Ljava/lang/String;)V
    .registers 3
    .param p1, "newShortMonths"    # [Ljava/lang/String;

    .line 888
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    .line 889
    return-void
.end method

.method public whitelist test-api setShortWeekdays([Ljava/lang/String;)V
    .registers 3
    .param p1, "newAbbrevWeekdays"    # [Ljava/lang/String;

    .line 1024
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 1025
    return-void
.end method

.method public greylist-max-o setTimeSeparatorString(Ljava/lang/String;)V
    .registers 2
    .param p1, "newTimeSeparator"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1329
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    .line 1330
    return-void
.end method

.method public whitelist test-api setWeekdays([Ljava/lang/String;)V
    .registers 3
    .param p1, "newWeekdays"    # [Ljava/lang/String;

    .line 1001
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 1002
    return-void
.end method

.method public whitelist test-api setWeekdays([Ljava/lang/String;II)V
    .registers 5
    .param p1, "newWeekdays"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    .line 958
    packed-switch p2, :pswitch_data_46

    goto :goto_45

    .line 976
    :pswitch_4
    packed-switch p3, :pswitch_data_4e

    goto :goto_45

    .line 984
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    .line 985
    goto :goto_45

    .line 987
    :pswitch_f
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    goto :goto_45

    .line 978
    :pswitch_16
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    .line 979
    goto :goto_45

    .line 981
    :pswitch_1d
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    .line 982
    goto :goto_45

    .line 960
    :pswitch_24
    packed-switch p3, :pswitch_data_5a

    goto :goto_44

    .line 968
    :pswitch_28
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    .line 969
    goto :goto_44

    .line 971
    :pswitch_2f
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    goto :goto_44

    .line 962
    :pswitch_36
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    .line 963
    goto :goto_44

    .line 965
    :pswitch_3d
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    .line 966
    nop

    .line 974
    :goto_44
    nop

    .line 992
    :goto_45
    return-void

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_24
        :pswitch_4
    .end packed-switch

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_16
        :pswitch_f
        :pswitch_8
    .end packed-switch

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_36
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method

.method public whitelist test-api setYearNames([Ljava/lang/String;II)V
    .registers 5
    .param p1, "yearNames"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    .line 1137
    if-nez p2, :cond_a

    if-nez p3, :cond_a

    .line 1138
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    .line 1140
    :cond_a
    return-void
.end method

.method public whitelist test-api setZodiacNames([Ljava/lang/String;II)V
    .registers 5
    .param p1, "zodiacNames"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    .line 1165
    if-nez p2, :cond_a

    if-nez p3, :cond_a

    .line 1166
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    .line 1168
    :cond_a
    return-void
.end method

.method public whitelist test-api setZoneStrings([[Ljava/lang/String;)V
    .registers 3
    .param p1, "newZoneStrings"    # [[Ljava/lang/String;

    .line 1401
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    .line 1402
    return-void
.end method
