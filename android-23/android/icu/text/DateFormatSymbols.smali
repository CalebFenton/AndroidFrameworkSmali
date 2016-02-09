.class public Landroid/icu/text/DateFormatSymbols;
.super Ljava/lang/Object;
.source "DateFormatSymbols.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    }
.end annotation


# static fields
.field public static final ABBREVIATED:I = 0x0

.field static final ALTERNATE_TIME_SEPARATOR:Ljava/lang/String; = "."

.field private static final CALENDAR_CLASSES:[[Ljava/lang/String;

.field static final DEFAULT_TIME_SEPARATOR:Ljava/lang/String; = ":"

.field private static DFSCACHE:Landroid/icu/impl/ICUCache; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols;",
            ">;"
        }
    .end annotation
.end field

.field public static final DT_CONTEXT_COUNT:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_ABBREV:I = 0x1

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_NARROW:I = 0x2

.field static final DT_LEAP_MONTH_PATTERN_FORMAT_WIDE:I = 0x0

.field static final DT_LEAP_MONTH_PATTERN_NUMERIC:I = 0x6

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_ABBREV:I = 0x4

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_NARROW:I = 0x5

.field static final DT_LEAP_MONTH_PATTERN_STANDALONE_WIDE:I = 0x3

.field static final DT_MONTH_PATTERN_COUNT:I = 0x7

.field public static final DT_WIDTH_COUNT:I = 0x4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT:I = 0x0

.field public static final NARROW:I = 0x2

.field public static final NUMERIC:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHORT:I = 0x3

.field public static final STANDALONE:I = 0x1

.field public static final WIDE:I = 0x1

.field private static final contextUsageTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            ">;"
        }
    .end annotation
.end field

.field static final millisPerHour:I = 0x36ee80

.field static final patternChars:Ljava/lang/String; = "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr:"

.field private static final serialVersionUID:J = -0x53198e36cae8e83eL


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field ampms:[Ljava/lang/String;

.field ampmsNarrow:[Ljava/lang/String;

.field capitalization:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;",
            "[Z>;"
        }
    .end annotation
.end field

.field eraNames:[Ljava/lang/String;

.field eras:[Ljava/lang/String;

.field leapMonthPatterns:[Ljava/lang/String;

.field localPatternChars:Ljava/lang/String;

.field months:[Ljava/lang/String;

.field narrowEras:[Ljava/lang/String;

.field narrowMonths:[Ljava/lang/String;

.field narrowWeekdays:[Ljava/lang/String;

.field quarters:[Ljava/lang/String;

.field private requestedLocale:Landroid/icu/util/ULocale;

.field shortMonths:[Ljava/lang/String;

.field shortQuarters:[Ljava/lang/String;

.field shortWeekdays:[Ljava/lang/String;

.field shortYearNames:[Ljava/lang/String;

.field shortZodiacNames:[Ljava/lang/String;

.field shorterWeekdays:[Ljava/lang/String;

.field standaloneMonths:[Ljava/lang/String;

.field standaloneNarrowMonths:[Ljava/lang/String;

.field standaloneNarrowWeekdays:[Ljava/lang/String;

.field standaloneQuarters:[Ljava/lang/String;

.field standaloneShortMonths:[Ljava/lang/String;

.field standaloneShortQuarters:[Ljava/lang/String;

.field standaloneShortWeekdays:[Ljava/lang/String;

.field standaloneShorterWeekdays:[Ljava/lang/String;

.field standaloneWeekdays:[Ljava/lang/String;

.field private timeSeparator:Ljava/lang/String;

.field private validLocale:Landroid/icu/util/ULocale;

.field weekdays:[Ljava/lang/String;

.field private zoneStrings:[[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 612
    const/16 v0, 0xb

    #@5
    new-array v0, v0, [[Ljava/lang/String;

    #@7
    .line 613
    new-array v1, v5, [Ljava/lang/String;

    #@9
    const-string/jumbo v2, "GregorianCalendar"

    #@c
    aput-object v2, v1, v3

    #@e
    const-string/jumbo v2, "gregorian"

    #@11
    aput-object v2, v1, v4

    #@13
    aput-object v1, v0, v3

    #@15
    .line 614
    new-array v1, v5, [Ljava/lang/String;

    #@17
    const-string/jumbo v2, "JapaneseCalendar"

    #@1a
    aput-object v2, v1, v3

    #@1c
    const-string/jumbo v2, "japanese"

    #@1f
    aput-object v2, v1, v4

    #@21
    aput-object v1, v0, v4

    #@23
    .line 615
    new-array v1, v5, [Ljava/lang/String;

    #@25
    const-string/jumbo v2, "BuddhistCalendar"

    #@28
    aput-object v2, v1, v3

    #@2a
    const-string/jumbo v2, "buddhist"

    #@2d
    aput-object v2, v1, v4

    #@2f
    aput-object v1, v0, v5

    #@31
    .line 616
    new-array v1, v5, [Ljava/lang/String;

    #@33
    const-string/jumbo v2, "TaiwanCalendar"

    #@36
    aput-object v2, v1, v3

    #@38
    const-string/jumbo v2, "roc"

    #@3b
    aput-object v2, v1, v4

    #@3d
    const/4 v2, 0x3

    #@3e
    aput-object v1, v0, v2

    #@40
    .line 617
    new-array v1, v5, [Ljava/lang/String;

    #@42
    const-string/jumbo v2, "PersianCalendar"

    #@45
    aput-object v2, v1, v3

    #@47
    const-string/jumbo v2, "persian"

    #@4a
    aput-object v2, v1, v4

    #@4c
    const/4 v2, 0x4

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 618
    new-array v1, v5, [Ljava/lang/String;

    #@51
    const-string/jumbo v2, "IslamicCalendar"

    #@54
    aput-object v2, v1, v3

    #@56
    const-string/jumbo v2, "islamic"

    #@59
    aput-object v2, v1, v4

    #@5b
    const/4 v2, 0x5

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 619
    new-array v1, v5, [Ljava/lang/String;

    #@60
    const-string/jumbo v2, "HebrewCalendar"

    #@63
    aput-object v2, v1, v3

    #@65
    const-string/jumbo v2, "hebrew"

    #@68
    aput-object v2, v1, v4

    #@6a
    const/4 v2, 0x6

    #@6b
    aput-object v1, v0, v2

    #@6d
    .line 620
    new-array v1, v5, [Ljava/lang/String;

    #@6f
    const-string/jumbo v2, "ChineseCalendar"

    #@72
    aput-object v2, v1, v3

    #@74
    const-string/jumbo v2, "chinese"

    #@77
    aput-object v2, v1, v4

    #@79
    const/4 v2, 0x7

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 621
    new-array v1, v5, [Ljava/lang/String;

    #@7e
    const-string/jumbo v2, "IndianCalendar"

    #@81
    aput-object v2, v1, v3

    #@83
    const-string/jumbo v2, "indian"

    #@86
    aput-object v2, v1, v4

    #@88
    const/16 v2, 0x8

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 622
    new-array v1, v5, [Ljava/lang/String;

    #@8e
    const-string/jumbo v2, "CopticCalendar"

    #@91
    aput-object v2, v1, v3

    #@93
    const-string/jumbo v2, "coptic"

    #@96
    aput-object v2, v1, v4

    #@98
    const/16 v2, 0x9

    #@9a
    aput-object v1, v0, v2

    #@9c
    .line 623
    new-array v1, v5, [Ljava/lang/String;

    #@9e
    const-string/jumbo v2, "EthiopicCalendar"

    #@a1
    aput-object v2, v1, v3

    #@a3
    const-string/jumbo v2, "ethiopic"

    #@a6
    aput-object v2, v1, v4

    #@a8
    const/16 v2, 0xa

    #@aa
    aput-object v1, v0, v2

    #@ac
    .line 612
    sput-object v0, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    #@ae
    .line 652
    new-instance v0, Ljava/util/HashMap;

    #@b0
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@b3
    sput-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@b5
    .line 653
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@b7
    const-string/jumbo v1, "month-format-except-narrow"

    #@ba
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@bc
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@bf
    .line 654
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@c1
    const-string/jumbo v1, "month-standalone-except-narrow"

    #@c4
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@c6
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@c9
    .line 655
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@cb
    const-string/jumbo v1, "month-narrow"

    #@ce
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->MONTH_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@d0
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@d3
    .line 656
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@d5
    const-string/jumbo v1, "day-format-except-narrow"

    #@d8
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_FORMAT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@da
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@dd
    .line 657
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@df
    const-string/jumbo v1, "day-standalone-except-narrow"

    #@e2
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_STANDALONE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@e4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@e7
    .line 658
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@e9
    const-string/jumbo v1, "day-narrow"

    #@ec
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->DAY_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@ee
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f1
    .line 659
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@f3
    const-string/jumbo v1, "era-name"

    #@f6
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_WIDE:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@f8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@fb
    .line 660
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@fd
    const-string/jumbo v1, "era-abbr"

    #@100
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_ABBREV:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@102
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@105
    .line 661
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@107
    const-string/jumbo v1, "era-narrow"

    #@10a
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ERA_NARROW:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@10c
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@10f
    .line 662
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@111
    const-string/jumbo v1, "zone-long"

    #@114
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@116
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@119
    .line 663
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@11b
    const-string/jumbo v1, "zone-short"

    #@11e
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->ZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@123
    .line 664
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@125
    const-string/jumbo v1, "metazone-long"

    #@128
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_LONG:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@12a
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@12d
    .line 665
    sget-object v0, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@12f
    const-string/jumbo v1, "metazone-short"

    #@132
    sget-object v2, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->METAZONE_SHORT:Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@134
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@137
    .line 1446
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@139
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@13c
    .line 1445
    sput-object v0, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/ICUCache;

    #@13e
    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 221
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@9
    .line 219
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1890
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@6
    .line 344
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@8
    .line 351
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@a
    .line 359
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@c
    .line 368
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@e
    .line 377
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@10
    .line 385
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@12
    .line 394
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@14
    .line 403
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@16
    .line 412
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@18
    .line 422
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@1a
    .line 432
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1c
    .line 441
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1e
    .line 450
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@20
    .line 460
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@22
    .line 470
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@24
    .line 479
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@26
    .line 487
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@28
    .line 495
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@2a
    .line 501
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2c
    .line 508
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@2e
    .line 515
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@30
    .line 522
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@32
    .line 529
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@34
    .line 536
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@36
    .line 545
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@38
    .line 554
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@3a
    .line 589
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3c
    .line 607
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3e
    .line 674
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@40
    .line 1891
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p0, p2, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@47
    .line 1890
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/Calendar;Ljava/util/Locale;)V
    .locals 2
    .param p1, "cal"    # Landroid/icu/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@6
    .line 344
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@8
    .line 351
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@a
    .line 359
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@c
    .line 368
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@e
    .line 377
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@10
    .line 385
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@12
    .line 394
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@14
    .line 403
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@16
    .line 412
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@18
    .line 422
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@1a
    .line 432
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1c
    .line 441
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1e
    .line 450
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@20
    .line 460
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@22
    .line 470
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@24
    .line 479
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@26
    .line 487
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@28
    .line 495
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@2a
    .line 501
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2c
    .line 508
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@2e
    .line 515
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@30
    .line 522
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@32
    .line 529
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@34
    .line 536
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@36
    .line 545
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@38
    .line 554
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@3a
    .line 589
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3c
    .line 607
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3e
    .line 674
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@40
    .line 1827
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-virtual {p0, v0, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@4b
    .line 1826
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@6
    .line 344
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@8
    .line 351
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@a
    .line 359
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@c
    .line 368
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@e
    .line 377
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@10
    .line 385
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@12
    .line 394
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@14
    .line 403
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@16
    .line 412
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@18
    .line 422
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@1a
    .line 432
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1c
    .line 441
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1e
    .line 450
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@20
    .line 460
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@22
    .line 470
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@24
    .line 479
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@26
    .line 487
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@28
    .line 495
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@2a
    .line 501
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2c
    .line 508
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@2e
    .line 515
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@30
    .line 522
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@32
    .line 529
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@34
    .line 536
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@36
    .line 545
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@38
    .line 554
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@3a
    .line 589
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3c
    .line 607
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3e
    .line 674
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@40
    .line 247
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@43
    move-result-object v0

    #@44
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@47
    .line 245
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V
    .locals 10
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Landroid/icu/util/ULocale;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p1, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ibm/icu/util/Calendar;>;"
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x0

    #@2
    .line 1910
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 337
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@7
    .line 344
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@9
    .line 351
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@b
    .line 359
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@d
    .line 368
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@f
    .line 377
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@11
    .line 385
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@13
    .line 394
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@15
    .line 403
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@17
    .line 412
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@19
    .line 422
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@1b
    .line 432
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1d
    .line 441
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1f
    .line 450
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@21
    .line 460
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@23
    .line 470
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@25
    .line 479
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@27
    .line 487
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@29
    .line 495
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@2b
    .line 501
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2d
    .line 508
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@2f
    .line 515
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@31
    .line 522
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@33
    .line 529
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@35
    .line 536
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@37
    .line 545
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@39
    .line 554
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@3b
    .line 589
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3d
    .line 607
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3f
    .line 674
    iput-object v5, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@41
    .line 1911
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@44
    move-result-object v3

    #@45
    .line 1912
    .local v3, "fullName":Ljava/lang/String;
    const/16 v5, 0x2e

    #@47
    invoke-virtual {v3, v5}, Ljava/lang/String;->lastIndexOf(I)I

    #@4a
    move-result v4

    #@4b
    .line 1913
    .local v4, "lastDot":I
    add-int/lit8 v5, v4, 0x1

    #@4d
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@50
    move-result-object v2

    #@51
    .line 1914
    .local v2, "className":Ljava/lang/String;
    const/4 v1, 0x0

    #@52
    .line 1915
    .local v1, "calType":Ljava/lang/String;
    sget-object v7, Landroid/icu/text/DateFormatSymbols;->CALENDAR_CLASSES:[[Ljava/lang/String;

    #@54
    array-length v8, v7

    #@55
    move v5, v6

    #@56
    :goto_0
    if-ge v5, v8, :cond_0

    #@58
    aget-object v0, v7, v5

    #@5a
    .line 1916
    .local v0, "calClassInfo":[Ljava/lang/String;
    aget-object v9, v0, v6

    #@5c
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@5f
    move-result v9

    #@60
    if-eqz v9, :cond_2

    #@62
    .line 1917
    const/4 v5, 0x1

    #@63
    aget-object v1, v0, v5

    #@65
    .line 1921
    .end local v0    # "calClassInfo":[Ljava/lang/String;
    .end local v1    # "calType":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    #@67
    .line 1922
    const-string/jumbo v5, "Calendar"

    #@6a
    const-string/jumbo v6, ""

    #@6d
    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@70
    move-result-object v5

    #@71
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@73
    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@76
    move-result-object v1

    #@77
    .line 1925
    :cond_1
    invoke-virtual {p0, p2, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@7a
    .line 1910
    return-void

    #@7b
    .line 1915
    .restart local v0    # "calClassInfo":[Ljava/lang/String;
    .restart local v1    # "calType":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@7d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/util/Locale;)V
    .locals 1
    .param p2, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/icu/util/Calendar;",
            ">;",
            "Ljava/util/Locale;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1901
    .local p1, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ibm/icu/util/Calendar;>;"
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/lang/Class;Landroid/icu/util/ULocale;)V

    #@7
    .line 1900
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 234
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@7
    .line 232
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1946
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 337
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@6
    .line 344
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@8
    .line 351
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@a
    .line 359
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@c
    .line 368
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@e
    .line 377
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@10
    .line 385
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@12
    .line 394
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@14
    .line 403
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@16
    .line 412
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@18
    .line 422
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@1a
    .line 432
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1c
    .line 441
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1e
    .line 450
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@20
    .line 460
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@22
    .line 470
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@24
    .line 479
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@26
    .line 487
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@28
    .line 495
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@2a
    .line 501
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2c
    .line 508
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@2e
    .line 515
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@30
    .line 522
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@32
    .line 529
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@34
    .line 536
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@36
    .line 545
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@38
    .line 554
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@3a
    .line 589
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@3c
    .line 607
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@3e
    .line 674
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@40
    .line 1948
    new-instance v0, Landroid/icu/impl/CalendarData;

    #@42
    check-cast p1, Landroid/icu/impl/ICUResourceBundle;

    #@44
    .end local p1    # "bundle":Ljava/util/ResourceBundle;
    invoke-static {p2}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@47
    move-result-object v1

    #@48
    invoke-direct {v0, p1, v1}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/impl/ICUResourceBundle;Ljava/lang/String;)V

    #@4b
    .line 1947
    invoke-virtual {p0, p2, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V

    #@4e
    .line 1946
    return-void
.end method

.method public constructor <init>(Ljava/util/ResourceBundle;Ljava/util/Locale;)V
    .locals 1
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1936
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/ResourceBundle;Landroid/icu/util/ULocale;)V

    #@7
    .line 1935
    return-void
.end method

.method private static final arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z
    .locals 5
    .param p0, "aa1"    # [[Ljava/lang/Object;
    .param p1, "aa2"    # [[Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1707
    if-ne p0, p1, :cond_0

    #@3
    .line 1708
    const/4 v2, 0x1

    #@4
    return v2

    #@5
    .line 1710
    :cond_0
    if-eqz p0, :cond_1

    #@7
    if-nez p1, :cond_2

    #@9
    .line 1711
    :cond_1
    return v4

    #@a
    .line 1713
    :cond_2
    array-length v2, p0

    #@b
    array-length v3, p1

    #@c
    if-eq v2, v3, :cond_3

    #@e
    .line 1714
    return v4

    #@f
    .line 1716
    :cond_3
    const/4 v0, 0x1

    #@10
    .line 1717
    .local v0, "equal":Z
    const/4 v1, 0x0

    #@11
    .end local v0    # "equal":Z
    .local v1, "i":I
    :goto_0
    array-length v2, p0

    #@12
    if-ge v1, v2, :cond_4

    #@14
    .line 1718
    aget-object v2, p0, v1

    #@16
    aget-object v3, p1, v1

    #@18
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1b
    move-result v0

    #@1c
    .line 1719
    .local v0, "equal":Z
    if-nez v0, :cond_5

    #@1e
    .line 1723
    .end local v0    # "equal":Z
    :cond_4
    return v0

    #@1f
    .line 1717
    .restart local v0    # "equal":Z
    :cond_5
    add-int/lit8 v1, v1, 0x1

    #@21
    goto :goto_0
.end method

.method private final duplicate([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "srcArray"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1738
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    return-object v0
.end method

.method private final duplicate([[Ljava/lang/String;)[[Ljava/lang/String;
    .locals 3
    .param p1, "srcArray"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 1743
    array-length v2, p1

    #@1
    new-array v0, v2, [[Ljava/lang/String;

    #@3
    .line 1744
    .local v0, "aCopy":[[Ljava/lang/String;
    const/4 v1, 0x0

    #@4
    .local v1, "i":I
    :goto_0
    array-length v2, p1

    #@5
    if-ge v1, v2, :cond_0

    #@7
    .line 1745
    aget-object v2, p1, v1

    #@9
    invoke-direct {p0, v2}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    aput-object v2, v0, v1

    #@f
    .line 1744
    add-int/lit8 v1, v1, 0x1

    #@11
    goto :goto_0

    #@12
    .line 1746
    :cond_0
    return-object v0
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 311
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getAvailableULocales()[Landroid/icu/util/ULocale;
    .locals 1

    #@0
    .prologue
    .line 329
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getDateFormatBundle(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2024
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getDateFormatBundle(Landroid/icu/util/Calendar;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2008
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Landroid/icu/util/ULocale;)Ljava/util/ResourceBundle;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
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

    #@0
    .prologue
    .line 1992
    .local p0, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ibm/icu/util/Calendar;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getDateFormatBundle(Ljava/lang/Class;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
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

    #@0
    .prologue
    .line 1970
    .local p0, "calendarClass":Ljava/lang/Class;, "Ljava/lang/Class<+Lcom/ibm/icu/util/Calendar;>;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public static getInstance()Landroid/icu/text/DateFormatSymbols;
    .locals 1

    #@0
    .prologue
    .line 262
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    #@2
    invoke-direct {v0}, Landroid/icu/text/DateFormatSymbols;-><init>()V

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 294
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/ULocale;)V

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;
    .locals 1
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 278
    new-instance v0, Landroid/icu/text/DateFormatSymbols;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/text/DateFormatSymbols;-><init>(Ljava/util/Locale;)V

    #@5
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 2107
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 2106
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 1381
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/text/DateFormatSymbols;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@6
    .line 1382
    .local v1, "other":Landroid/icu/text/DateFormatSymbols;
    return-object v1

    #@7
    .line 1383
    .end local v1    # "other":Landroid/icu/text/DateFormatSymbols;
    :catch_0
    move-exception v0

    #@8
    .line 1385
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@a
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@d
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1406
    if-ne p0, p1, :cond_0

    #@3
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 1407
    :cond_0
    if-eqz p1, :cond_1

    #@7
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@e
    move-result-object v3

    #@f
    if-eq v2, v3, :cond_2

    #@11
    :cond_1
    return v1

    #@12
    :cond_2
    move-object v0, p1

    #@13
    .line 1408
    check-cast v0, Landroid/icu/text/DateFormatSymbols;

    #@15
    .line 1409
    .local v0, "that":Landroid/icu/text/DateFormatSymbols;
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@17
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@19
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@1c
    move-result v2

    #@1d
    if-eqz v2, :cond_3

    #@1f
    .line 1410
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@21
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@23
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@26
    move-result v2

    #@27
    .line 1409
    if-eqz v2, :cond_3

    #@29
    .line 1411
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2b
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2d
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@30
    move-result v2

    #@31
    .line 1409
    if-eqz v2, :cond_3

    #@33
    .line 1412
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@35
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@37
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@3a
    move-result v2

    #@3b
    .line 1409
    if-eqz v2, :cond_3

    #@3d
    .line 1413
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@3f
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@41
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@44
    move-result v2

    #@45
    .line 1409
    if-eqz v2, :cond_3

    #@47
    .line 1414
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@49
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@4b
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    move-result v2

    #@4f
    .line 1409
    if-eqz v2, :cond_3

    #@51
    .line 1415
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@53
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@55
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@58
    move-result v2

    #@59
    .line 1409
    if-eqz v2, :cond_3

    #@5b
    .line 1416
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@5d
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@5f
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@62
    move-result v2

    #@63
    .line 1409
    if-eqz v2, :cond_3

    #@65
    .line 1417
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@67
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@69
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@6c
    move-result v2

    #@6d
    .line 1409
    if-eqz v2, :cond_3

    #@6f
    .line 1418
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@71
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@73
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@76
    move-result v2

    #@77
    .line 1409
    if-eqz v2, :cond_3

    #@79
    .line 1419
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@7b
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@7d
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@80
    move-result v2

    #@81
    .line 1409
    if-eqz v2, :cond_3

    #@83
    .line 1420
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@85
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@87
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@8a
    move-result v2

    #@8b
    .line 1409
    if-eqz v2, :cond_3

    #@8d
    .line 1421
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@8f
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@91
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@94
    move-result v2

    #@95
    .line 1409
    if-eqz v2, :cond_3

    #@97
    .line 1422
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@99
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@9b
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@9e
    move-result v2

    #@9f
    .line 1409
    if-eqz v2, :cond_3

    #@a1
    .line 1423
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@a3
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@a5
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@a8
    move-result v2

    #@a9
    .line 1409
    if-eqz v2, :cond_3

    #@ab
    .line 1424
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@ad
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@af
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@b2
    move-result v2

    #@b3
    .line 1409
    if-eqz v2, :cond_3

    #@b5
    .line 1425
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@b7
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@b9
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@bc
    move-result v2

    #@bd
    .line 1409
    if-eqz v2, :cond_3

    #@bf
    .line 1426
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@c1
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@c3
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals([Ljava/lang/Object;Ljava/lang/Object;)Z

    #@c6
    move-result v2

    #@c7
    .line 1409
    if-eqz v2, :cond_3

    #@c9
    .line 1427
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@cb
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@cd
    invoke-static {v2, v3}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@d0
    move-result v2

    #@d1
    .line 1409
    if-eqz v2, :cond_3

    #@d3
    .line 1428
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@d5
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@d7
    invoke-static {v2, v3}, Landroid/icu/text/DateFormatSymbols;->arrayOfArrayEquals([[Ljava/lang/Object;[[Ljava/lang/Object;)Z

    #@da
    move-result v2

    #@db
    .line 1409
    if-eqz v2, :cond_3

    #@dd
    .line 1432
    iget-object v2, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    #@df
    invoke-virtual {v2}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    #@e2
    move-result-object v2

    #@e3
    iget-object v3, v0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    #@e5
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getDisplayName()Ljava/lang/String;

    #@e8
    move-result-object v3

    #@e9
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@ec
    move-result v2

    #@ed
    .line 1409
    if-eqz v2, :cond_3

    #@ef
    .line 1433
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@f1
    .line 1434
    iget-object v2, v0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@f3
    .line 1433
    invoke-static {v1, v2}, Landroid/icu/impl/Utility;->arrayEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@f6
    move-result v1

    #@f7
    .line 1409
    :cond_3
    return v1
.end method

.method public getAmPmStrings()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1248
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEraNames()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 700
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getEras()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLeapMonthPattern(II)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # I
    .param p2, "width"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1144
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@3
    if-eqz v1, :cond_1

    #@5
    .line 1145
    const/4 v0, -0x1

    #@6
    .line 1146
    .local v0, "leapMonthPatternIndex":I
    packed-switch p1, :pswitch_data_0

    #@9
    .line 1179
    :goto_0
    if-gez v0, :cond_0

    #@b
    .line 1180
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@d
    const-string/jumbo v2, "Bad context or width argument"

    #@10
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@13
    throw v1

    #@14
    .line 1148
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    #@17
    goto :goto_0

    #@18
    .line 1154
    :pswitch_1
    const/4 v0, 0x1

    #@19
    .line 1155
    goto :goto_0

    #@1a
    .line 1150
    :pswitch_2
    const/4 v0, 0x0

    #@1b
    .line 1151
    goto :goto_0

    #@1c
    .line 1157
    :pswitch_3
    const/4 v0, 0x2

    #@1d
    .line 1158
    goto :goto_0

    #@1e
    .line 1162
    :pswitch_4
    packed-switch p2, :pswitch_data_2

    #@21
    goto :goto_0

    #@22
    .line 1168
    :pswitch_5
    const/4 v0, 0x1

    #@23
    .line 1169
    goto :goto_0

    #@24
    .line 1164
    :pswitch_6
    const/4 v0, 0x3

    #@25
    .line 1165
    goto :goto_0

    #@26
    .line 1171
    :pswitch_7
    const/4 v0, 0x5

    #@27
    .line 1172
    goto :goto_0

    #@28
    .line 1176
    :pswitch_8
    const/4 v0, 0x6

    #@29
    .line 1177
    goto :goto_0

    #@2a
    .line 1182
    :cond_0
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@2c
    aget-object v1, v1, v0

    #@2e
    return-object v1

    #@2f
    .line 1184
    .end local v0    # "leapMonthPatternIndex":I
    :cond_1
    return-object v2

    #@30
    .line 1146
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    #@3a
    .line 1148
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    #@46
    .line 1162
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getLocalPatternChars()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1361
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 2054
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 2055
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@6
    .line 2054
    :goto_0
    return-object v0

    #@7
    .line 2055
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@9
    goto :goto_0
.end method

.method public getMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 718
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getMonths(II)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # I
    .param p2, "width"    # I

    #@0
    .prologue
    .line 730
    const/4 v0, 0x0

    #@1
    .line 731
    .local v0, "returnValue":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 761
    .end local v0    # "returnValue":[Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    #@6
    .line 762
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Bad context or width argument"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 733
    .restart local v0    # "returnValue":[Ljava/lang/String;
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    #@12
    goto :goto_0

    #@13
    .line 739
    :pswitch_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@15
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@16
    .line 735
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@18
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@19
    .line 742
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_3
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@1b
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 747
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_4
    packed-switch p2, :pswitch_data_2

    #@1f
    goto :goto_0

    #@20
    .line 753
    :pswitch_5
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@22
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@23
    .line 749
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@25
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@26
    .line 756
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_7
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@28
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@29
    .line 764
    .end local v0    # "returnValue":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    return-object v1

    #@2e
    .line 731
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    #@36
    .line 733
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    #@42
    .line 747
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getQuarters(II)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # I
    .param p2, "width"    # I

    #@0
    .prologue
    .line 987
    const/4 v0, 0x0

    #@1
    .line 988
    .local v0, "returnValue":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 1019
    .end local v0    # "returnValue":[Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_0

    #@6
    .line 1020
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Bad context or width argument"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 990
    .restart local v0    # "returnValue":[Ljava/lang/String;
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    #@12
    goto :goto_0

    #@13
    .line 996
    :pswitch_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@15
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@16
    .line 992
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@18
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@19
    .line 999
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_3
    const/4 v0, 0x0

    #@1a
    .line 1000
    goto :goto_0

    #@1b
    .line 1005
    :pswitch_4
    packed-switch p2, :pswitch_data_2

    #@1e
    goto :goto_0

    #@1f
    .line 1011
    :pswitch_5
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@21
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@22
    .line 1007
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_6
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@24
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@25
    .line 1014
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_7
    const/4 v0, 0x0

    #@26
    .line 1015
    goto :goto_0

    #@27
    .line 1022
    .end local v0    # "returnValue":[Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    return-object v1

    #@2c
    .line 988
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    #@34
    .line 990
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch

    #@40
    .line 1005
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method public getShortMonths()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 825
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getShortWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 963
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getTimeSeparatorString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1267
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getWeekdays()[Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 844
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getWeekdays(II)[Ljava/lang/String;
    .locals 3
    .param p1, "context"    # I
    .param p2, "width"    # I

    #@0
    .prologue
    .line 857
    const/4 v0, 0x0

    #@1
    .line 858
    .local v0, "returnValue":[Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    #@4
    .line 892
    .end local v0    # "returnValue":[Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    #@6
    .line 893
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "Bad context or width argument"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 860
    .restart local v0    # "returnValue":[Ljava/lang/String;
    :pswitch_0
    packed-switch p2, :pswitch_data_1

    #@12
    goto :goto_0

    #@13
    .line 865
    :pswitch_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@15
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@16
    .line 862
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@18
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@19
    .line 868
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_3
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1b
    if-eqz v1, :cond_0

    #@1d
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1f
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@20
    .local v0, "returnValue":[Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@22
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@23
    .line 871
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_4
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@25
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@26
    .line 876
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_5
    packed-switch p2, :pswitch_data_2

    #@29
    goto :goto_0

    #@2a
    .line 881
    :pswitch_6
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@2c
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@2d
    .line 878
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_7
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@2f
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@30
    .line 884
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_8
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@32
    if-eqz v1, :cond_1

    #@34
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@36
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@37
    .local v0, "returnValue":[Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@39
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@3a
    .line 887
    .local v0, "returnValue":[Ljava/lang/String;
    :pswitch_9
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@3c
    .local v0, "returnValue":[Ljava/lang/String;
    goto :goto_0

    #@3d
    .line 895
    .end local v0    # "returnValue":[Ljava/lang/String;
    :cond_2
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@40
    move-result-object v1

    #@41
    return-object v1

    #@42
    .line 858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    #@4a
    .line 860
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    #@56
    .line 876
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public getYearNames(II)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # I
    .param p2, "width"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1080
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1081
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@7
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1083
    :cond_0
    return-object v1
.end method

.method public getZodiacNames(II)[Ljava/lang/String;
    .locals 2
    .param p1, "context"    # I
    .param p2, "width"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1112
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 1113
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@7
    invoke-direct {p0, v0}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v0

    #@b
    return-object v0

    #@c
    .line 1115
    :cond_0
    return-object v1
.end method

.method public getZoneStrings()[[Ljava/lang/String;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x2

    #@1
    const/4 v11, 0x1

    #@2
    const/4 v10, 0x0

    #@3
    .line 1306
    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@5
    if-eqz v7, :cond_0

    #@7
    .line 1307
    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@9
    invoke-direct {p0, v7}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    #@c
    move-result-object v7

    #@d
    return-object v7

    #@e
    .line 1310
    :cond_0
    invoke-static {}, Landroid/icu/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    #@11
    move-result-object v3

    #@12
    .line 1311
    .local v3, "tzIDs":[Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@14
    invoke-static {v7}, Landroid/icu/text/TimeZoneNames;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/TimeZoneNames;

    #@17
    move-result-object v6

    #@18
    .line 1312
    .local v6, "tznames":Landroid/icu/text/TimeZoneNames;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1b
    move-result-wide v4

    #@1c
    .line 1313
    .local v4, "now":J
    const-class v7, Ljava/lang/String;

    #@1e
    new-array v8, v12, [I

    #@20
    array-length v9, v3

    #@21
    aput v9, v8, v10

    #@23
    const/4 v9, 0x5

    #@24
    aput v9, v8, v11

    #@26
    invoke-static {v7, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    #@29
    move-result-object v0

    #@2a
    check-cast v0, [[Ljava/lang/String;

    #@2c
    .line 1314
    .local v0, "array":[[Ljava/lang/String;
    const/4 v2, 0x0

    #@2d
    .local v2, "i":I
    :goto_0
    array-length v7, v3

    #@2e
    if-ge v2, v7, :cond_2

    #@30
    .line 1315
    aget-object v7, v3, v2

    #@32
    invoke-static {v7}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    #@35
    move-result-object v1

    #@36
    .line 1316
    .local v1, "canonicalID":Ljava/lang/String;
    if-nez v1, :cond_1

    #@38
    .line 1317
    aget-object v1, v3, v2

    #@3a
    .line 1320
    :cond_1
    aget-object v7, v0, v2

    #@3c
    aget-object v8, v3, v2

    #@3e
    aput-object v8, v7, v10

    #@40
    .line 1321
    aget-object v7, v0, v2

    #@42
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@44
    invoke-virtual {v6, v1, v8, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@47
    move-result-object v8

    #@48
    aput-object v8, v7, v11

    #@4a
    .line 1322
    aget-object v7, v0, v2

    #@4c
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    #@4e
    invoke-virtual {v6, v1, v8, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@51
    move-result-object v8

    #@52
    aput-object v8, v7, v12

    #@54
    .line 1323
    aget-object v7, v0, v2

    #@56
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@58
    invoke-virtual {v6, v1, v8, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    const/4 v9, 0x3

    #@5d
    aput-object v8, v7, v9

    #@5f
    .line 1324
    aget-object v7, v0, v2

    #@61
    sget-object v8, Landroid/icu/text/TimeZoneNames$NameType;->SHORT_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    #@63
    invoke-virtual {v6, v1, v8, v4, v5}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    #@66
    move-result-object v8

    #@67
    const/4 v9, 0x4

    #@68
    aput-object v8, v7, v9

    #@6a
    .line 1314
    add-int/lit8 v2, v2, 0x1

    #@6c
    goto :goto_0

    #@6d
    .line 1327
    .end local v1    # "canonicalID":Ljava/lang/String;
    :cond_2
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@6f
    .line 1328
    iget-object v7, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@71
    return-object v7
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 1397
    iget-object v0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    #@2
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@9
    move-result v0

    #@a
    return v0
.end method

.method initializeData(Landroid/icu/text/DateFormatSymbols;)V
    .locals 1
    .param p1, "dfs"    # Landroid/icu/text/DateFormatSymbols;

    #@0
    .prologue
    .line 1484
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@2
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@4
    .line 1485
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@6
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@8
    .line 1486
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@c
    .line 1487
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@10
    .line 1488
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@12
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@14
    .line 1489
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@16
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@18
    .line 1490
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@1a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@1c
    .line 1491
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@1e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@20
    .line 1492
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@22
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@24
    .line 1493
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@26
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@28
    .line 1494
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@2a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@2c
    .line 1495
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@2e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@30
    .line 1496
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@32
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@34
    .line 1497
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@36
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@38
    .line 1498
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@3a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@3c
    .line 1499
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@3e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@40
    .line 1500
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@42
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@44
    .line 1501
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@46
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@48
    .line 1502
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@4a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@4c
    .line 1503
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@4e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@50
    .line 1504
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@52
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@54
    .line 1505
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@56
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@58
    .line 1506
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@5a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@5c
    .line 1507
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@5e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@60
    .line 1508
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@62
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@64
    .line 1509
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@66
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@68
    .line 1510
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@6a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@6c
    .line 1512
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@6e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@70
    .line 1513
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@72
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@74
    .line 1515
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@76
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@78
    .line 1517
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@7a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@7c
    .line 1518
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@7e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@80
    .line 1519
    iget-object v0, p1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    #@82
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    #@84
    .line 1483
    return-void
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V
    .locals 35
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "calData"    # Landroid/icu/impl/CalendarData;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1536
    const-string/jumbo v31, "abbreviated"

    #@3
    move-object/from16 v0, p2

    #@5
    move-object/from16 v1, v31

    #@7
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    #@a
    move-result-object v31

    #@b
    move-object/from16 v0, v31

    #@d
    move-object/from16 v1, p0

    #@f
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@11
    .line 1538
    const-string/jumbo v31, "wide"

    #@14
    move-object/from16 v0, p2

    #@16
    move-object/from16 v1, v31

    #@18
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    #@1b
    move-result-object v31

    #@1c
    move-object/from16 v0, v31

    #@1e
    move-object/from16 v1, p0

    #@20
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@22
    .line 1540
    const-string/jumbo v31, "narrow"

    #@25
    move-object/from16 v0, p2

    #@27
    move-object/from16 v1, v31

    #@29
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getEras(Ljava/lang/String;)[Ljava/lang/String;

    #@2c
    move-result-object v31

    #@2d
    move-object/from16 v0, v31

    #@2f
    move-object/from16 v1, p0

    #@31
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->narrowEras:[Ljava/lang/String;

    #@33
    .line 1542
    const-string/jumbo v31, "monthNames"

    #@36
    const-string/jumbo v32, "wide"

    #@39
    move-object/from16 v0, p2

    #@3b
    move-object/from16 v1, v31

    #@3d
    move-object/from16 v2, v32

    #@3f
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@42
    move-result-object v31

    #@43
    move-object/from16 v0, v31

    #@45
    move-object/from16 v1, p0

    #@47
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@49
    .line 1543
    const-string/jumbo v31, "monthNames"

    #@4c
    const-string/jumbo v32, "abbreviated"

    #@4f
    move-object/from16 v0, p2

    #@51
    move-object/from16 v1, v31

    #@53
    move-object/from16 v2, v32

    #@55
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@58
    move-result-object v31

    #@59
    move-object/from16 v0, v31

    #@5b
    move-object/from16 v1, p0

    #@5d
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@5f
    .line 1544
    const-string/jumbo v31, "monthNames"

    #@62
    const-string/jumbo v32, "narrow"

    #@65
    move-object/from16 v0, p2

    #@67
    move-object/from16 v1, v31

    #@69
    move-object/from16 v2, v32

    #@6b
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@6e
    move-result-object v31

    #@6f
    move-object/from16 v0, v31

    #@71
    move-object/from16 v1, p0

    #@73
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@75
    .line 1546
    const-string/jumbo v31, "monthNames"

    #@78
    const-string/jumbo v32, "stand-alone"

    #@7b
    const-string/jumbo v33, "wide"

    #@7e
    move-object/from16 v0, p2

    #@80
    move-object/from16 v1, v31

    #@82
    move-object/from16 v2, v32

    #@84
    move-object/from16 v3, v33

    #@86
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@89
    move-result-object v31

    #@8a
    move-object/from16 v0, v31

    #@8c
    move-object/from16 v1, p0

    #@8e
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@90
    .line 1547
    const-string/jumbo v31, "monthNames"

    #@93
    const-string/jumbo v32, "stand-alone"

    #@96
    const-string/jumbo v33, "abbreviated"

    #@99
    move-object/from16 v0, p2

    #@9b
    move-object/from16 v1, v31

    #@9d
    move-object/from16 v2, v32

    #@9f
    move-object/from16 v3, v33

    #@a1
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@a4
    move-result-object v31

    #@a5
    move-object/from16 v0, v31

    #@a7
    move-object/from16 v1, p0

    #@a9
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@ab
    .line 1548
    const-string/jumbo v31, "monthNames"

    #@ae
    const-string/jumbo v32, "stand-alone"

    #@b1
    const-string/jumbo v33, "narrow"

    #@b4
    move-object/from16 v0, p2

    #@b6
    move-object/from16 v1, v31

    #@b8
    move-object/from16 v2, v32

    #@ba
    move-object/from16 v3, v33

    #@bc
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@bf
    move-result-object v31

    #@c0
    move-object/from16 v0, v31

    #@c2
    move-object/from16 v1, p0

    #@c4
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@c6
    .line 1550
    const-string/jumbo v31, "dayNames"

    #@c9
    const-string/jumbo v32, "wide"

    #@cc
    move-object/from16 v0, p2

    #@ce
    move-object/from16 v1, v31

    #@d0
    move-object/from16 v2, v32

    #@d2
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@d5
    move-result-object v14

    #@d6
    .line 1551
    .local v14, "lWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@d8
    move/from16 v0, v31

    #@da
    new-array v0, v0, [Ljava/lang/String;

    #@dc
    move-object/from16 v31, v0

    #@de
    move-object/from16 v0, v31

    #@e0
    move-object/from16 v1, p0

    #@e2
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@e4
    .line 1552
    move-object/from16 v0, p0

    #@e6
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@e8
    move-object/from16 v31, v0

    #@ea
    const-string/jumbo v32, ""

    #@ed
    const/16 v33, 0x0

    #@ef
    aput-object v32, v31, v33

    #@f1
    .line 1553
    move-object/from16 v0, p0

    #@f3
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@f5
    move-object/from16 v31, v0

    #@f7
    array-length v0, v14

    #@f8
    move/from16 v32, v0

    #@fa
    const/16 v33, 0x0

    #@fc
    const/16 v34, 0x1

    #@fe
    move/from16 v0, v33

    #@100
    move-object/from16 v1, v31

    #@102
    move/from16 v2, v34

    #@104
    move/from16 v3, v32

    #@106
    invoke-static {v14, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@109
    .line 1555
    const-string/jumbo v31, "dayNames"

    #@10c
    const-string/jumbo v32, "abbreviated"

    #@10f
    move-object/from16 v0, p2

    #@111
    move-object/from16 v1, v31

    #@113
    move-object/from16 v2, v32

    #@115
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@118
    move-result-object v5

    #@119
    .line 1556
    .local v5, "aWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@11b
    move/from16 v0, v31

    #@11d
    new-array v0, v0, [Ljava/lang/String;

    #@11f
    move-object/from16 v31, v0

    #@121
    move-object/from16 v0, v31

    #@123
    move-object/from16 v1, p0

    #@125
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@127
    .line 1557
    move-object/from16 v0, p0

    #@129
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@12b
    move-object/from16 v31, v0

    #@12d
    const-string/jumbo v32, ""

    #@130
    const/16 v33, 0x0

    #@132
    aput-object v32, v31, v33

    #@134
    .line 1558
    move-object/from16 v0, p0

    #@136
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@138
    move-object/from16 v31, v0

    #@13a
    array-length v0, v5

    #@13b
    move/from16 v32, v0

    #@13d
    const/16 v33, 0x0

    #@13f
    const/16 v34, 0x1

    #@141
    move/from16 v0, v33

    #@143
    move-object/from16 v1, v31

    #@145
    move/from16 v2, v34

    #@147
    move/from16 v3, v32

    #@149
    invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@14c
    .line 1560
    const-string/jumbo v31, "dayNames"

    #@14f
    const-string/jumbo v32, "short"

    #@152
    move-object/from16 v0, p2

    #@154
    move-object/from16 v1, v31

    #@156
    move-object/from16 v2, v32

    #@158
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@15b
    move-result-object v21

    #@15c
    .line 1561
    .local v21, "sWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@15e
    move/from16 v0, v31

    #@160
    new-array v0, v0, [Ljava/lang/String;

    #@162
    move-object/from16 v31, v0

    #@164
    move-object/from16 v0, v31

    #@166
    move-object/from16 v1, p0

    #@168
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@16a
    .line 1562
    move-object/from16 v0, p0

    #@16c
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@16e
    move-object/from16 v31, v0

    #@170
    const-string/jumbo v32, ""

    #@173
    const/16 v33, 0x0

    #@175
    aput-object v32, v31, v33

    #@177
    .line 1563
    move-object/from16 v0, p0

    #@179
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@17b
    move-object/from16 v31, v0

    #@17d
    move-object/from16 v0, v21

    #@17f
    array-length v0, v0

    #@180
    move/from16 v32, v0

    #@182
    const/16 v33, 0x0

    #@184
    const/16 v34, 0x1

    #@186
    move-object/from16 v0, v21

    #@188
    move/from16 v1, v33

    #@18a
    move-object/from16 v2, v31

    #@18c
    move/from16 v3, v34

    #@18e
    move/from16 v4, v32

    #@190
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@193
    .line 1565
    const/16 v16, 0x0

    #@195
    .line 1567
    .local v16, "nWeekdays":[Ljava/lang/String;
    :try_start_0
    const-string/jumbo v31, "dayNames"

    #@198
    const-string/jumbo v32, "narrow"

    #@19b
    move-object/from16 v0, p2

    #@19d
    move-object/from16 v1, v31

    #@19f
    move-object/from16 v2, v32

    #@1a1
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1a4
    move-result-object v16

    #@1a5
    .line 1577
    .local v16, "nWeekdays":[Ljava/lang/String;
    :goto_0
    const/16 v31, 0x8

    #@1a7
    move/from16 v0, v31

    #@1a9
    new-array v0, v0, [Ljava/lang/String;

    #@1ab
    move-object/from16 v31, v0

    #@1ad
    move-object/from16 v0, v31

    #@1af
    move-object/from16 v1, p0

    #@1b1
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1b3
    .line 1578
    move-object/from16 v0, p0

    #@1b5
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1b7
    move-object/from16 v31, v0

    #@1b9
    const-string/jumbo v32, ""

    #@1bc
    const/16 v33, 0x0

    #@1be
    aput-object v32, v31, v33

    #@1c0
    .line 1579
    move-object/from16 v0, p0

    #@1c2
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@1c4
    move-object/from16 v31, v0

    #@1c6
    move-object/from16 v0, v16

    #@1c8
    array-length v0, v0

    #@1c9
    move/from16 v32, v0

    #@1cb
    const/16 v33, 0x0

    #@1cd
    const/16 v34, 0x1

    #@1cf
    move-object/from16 v0, v16

    #@1d1
    move/from16 v1, v33

    #@1d3
    move-object/from16 v2, v31

    #@1d5
    move/from16 v3, v34

    #@1d7
    move/from16 v4, v32

    #@1d9
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@1dc
    .line 1581
    const/16 v25, 0x0

    #@1de
    .line 1582
    .local v25, "swWeekdays":[Ljava/lang/String;
    const-string/jumbo v31, "dayNames"

    #@1e1
    const-string/jumbo v32, "stand-alone"

    #@1e4
    const-string/jumbo v33, "wide"

    #@1e7
    move-object/from16 v0, p2

    #@1e9
    move-object/from16 v1, v31

    #@1eb
    move-object/from16 v2, v32

    #@1ed
    move-object/from16 v3, v33

    #@1ef
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@1f2
    move-result-object v25

    #@1f3
    .line 1583
    .local v25, "swWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@1f5
    move/from16 v0, v31

    #@1f7
    new-array v0, v0, [Ljava/lang/String;

    #@1f9
    move-object/from16 v31, v0

    #@1fb
    move-object/from16 v0, v31

    #@1fd
    move-object/from16 v1, p0

    #@1ff
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@201
    .line 1584
    move-object/from16 v0, p0

    #@203
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@205
    move-object/from16 v31, v0

    #@207
    const-string/jumbo v32, ""

    #@20a
    const/16 v33, 0x0

    #@20c
    aput-object v32, v31, v33

    #@20e
    .line 1585
    move-object/from16 v0, p0

    #@210
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@212
    move-object/from16 v31, v0

    #@214
    move-object/from16 v0, v25

    #@216
    array-length v0, v0

    #@217
    move/from16 v32, v0

    #@219
    const/16 v33, 0x0

    #@21b
    const/16 v34, 0x1

    #@21d
    move-object/from16 v0, v25

    #@21f
    move/from16 v1, v33

    #@221
    move-object/from16 v2, v31

    #@223
    move/from16 v3, v34

    #@225
    move/from16 v4, v32

    #@227
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@22a
    .line 1587
    const/16 v22, 0x0

    #@22c
    .line 1588
    .local v22, "saWeekdays":[Ljava/lang/String;
    const-string/jumbo v31, "dayNames"

    #@22f
    const-string/jumbo v32, "stand-alone"

    #@232
    const-string/jumbo v33, "abbreviated"

    #@235
    move-object/from16 v0, p2

    #@237
    move-object/from16 v1, v31

    #@239
    move-object/from16 v2, v32

    #@23b
    move-object/from16 v3, v33

    #@23d
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@240
    move-result-object v22

    #@241
    .line 1589
    .local v22, "saWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@243
    move/from16 v0, v31

    #@245
    new-array v0, v0, [Ljava/lang/String;

    #@247
    move-object/from16 v31, v0

    #@249
    move-object/from16 v0, v31

    #@24b
    move-object/from16 v1, p0

    #@24d
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@24f
    .line 1590
    move-object/from16 v0, p0

    #@251
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@253
    move-object/from16 v31, v0

    #@255
    const-string/jumbo v32, ""

    #@258
    const/16 v33, 0x0

    #@25a
    aput-object v32, v31, v33

    #@25c
    .line 1591
    move-object/from16 v0, p0

    #@25e
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@260
    move-object/from16 v31, v0

    #@262
    move-object/from16 v0, v22

    #@264
    array-length v0, v0

    #@265
    move/from16 v32, v0

    #@267
    const/16 v33, 0x0

    #@269
    const/16 v34, 0x1

    #@26b
    move-object/from16 v0, v22

    #@26d
    move/from16 v1, v33

    #@26f
    move-object/from16 v2, v31

    #@271
    move/from16 v3, v34

    #@273
    move/from16 v4, v32

    #@275
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@278
    .line 1593
    const/16 v24, 0x0

    #@27a
    .line 1594
    .local v24, "ssWeekdays":[Ljava/lang/String;
    const-string/jumbo v31, "dayNames"

    #@27d
    const-string/jumbo v32, "stand-alone"

    #@280
    const-string/jumbo v33, "short"

    #@283
    move-object/from16 v0, p2

    #@285
    move-object/from16 v1, v31

    #@287
    move-object/from16 v2, v32

    #@289
    move-object/from16 v3, v33

    #@28b
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@28e
    move-result-object v24

    #@28f
    .line 1595
    .local v24, "ssWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@291
    move/from16 v0, v31

    #@293
    new-array v0, v0, [Ljava/lang/String;

    #@295
    move-object/from16 v31, v0

    #@297
    move-object/from16 v0, v31

    #@299
    move-object/from16 v1, p0

    #@29b
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@29d
    .line 1596
    move-object/from16 v0, p0

    #@29f
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@2a1
    move-object/from16 v31, v0

    #@2a3
    const-string/jumbo v32, ""

    #@2a6
    const/16 v33, 0x0

    #@2a8
    aput-object v32, v31, v33

    #@2aa
    .line 1597
    move-object/from16 v0, p0

    #@2ac
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@2ae
    move-object/from16 v31, v0

    #@2b0
    move-object/from16 v0, v24

    #@2b2
    array-length v0, v0

    #@2b3
    move/from16 v32, v0

    #@2b5
    const/16 v33, 0x0

    #@2b7
    const/16 v34, 0x1

    #@2b9
    move-object/from16 v0, v24

    #@2bb
    move/from16 v1, v33

    #@2bd
    move-object/from16 v2, v31

    #@2bf
    move/from16 v3, v34

    #@2c1
    move/from16 v4, v32

    #@2c3
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@2c6
    .line 1599
    const/16 v23, 0x0

    #@2c8
    .line 1600
    .local v23, "snWeekdays":[Ljava/lang/String;
    const-string/jumbo v31, "dayNames"

    #@2cb
    const-string/jumbo v32, "stand-alone"

    #@2ce
    const-string/jumbo v33, "narrow"

    #@2d1
    move-object/from16 v0, p2

    #@2d3
    move-object/from16 v1, v31

    #@2d5
    move-object/from16 v2, v32

    #@2d7
    move-object/from16 v3, v33

    #@2d9
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@2dc
    move-result-object v23

    #@2dd
    .line 1601
    .local v23, "snWeekdays":[Ljava/lang/String;
    const/16 v31, 0x8

    #@2df
    move/from16 v0, v31

    #@2e1
    new-array v0, v0, [Ljava/lang/String;

    #@2e3
    move-object/from16 v31, v0

    #@2e5
    move-object/from16 v0, v31

    #@2e7
    move-object/from16 v1, p0

    #@2e9
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@2eb
    .line 1602
    move-object/from16 v0, p0

    #@2ed
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@2ef
    move-object/from16 v31, v0

    #@2f1
    const-string/jumbo v32, ""

    #@2f4
    const/16 v33, 0x0

    #@2f6
    aput-object v32, v31, v33

    #@2f8
    .line 1603
    move-object/from16 v0, p0

    #@2fa
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@2fc
    move-object/from16 v31, v0

    #@2fe
    move-object/from16 v0, v23

    #@300
    array-length v0, v0

    #@301
    move/from16 v32, v0

    #@303
    const/16 v33, 0x0

    #@305
    const/16 v34, 0x1

    #@307
    move-object/from16 v0, v23

    #@309
    move/from16 v1, v33

    #@30b
    move-object/from16 v2, v31

    #@30d
    move/from16 v3, v34

    #@30f
    move/from16 v4, v32

    #@311
    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    #@314
    .line 1605
    const-string/jumbo v31, "AmPmMarkers"

    #@317
    move-object/from16 v0, p2

    #@319
    move-object/from16 v1, v31

    #@31b
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@31e
    move-result-object v31

    #@31f
    move-object/from16 v0, v31

    #@321
    move-object/from16 v1, p0

    #@323
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@325
    .line 1606
    const-string/jumbo v31, "AmPmMarkersNarrow"

    #@328
    move-object/from16 v0, p2

    #@32a
    move-object/from16 v1, v31

    #@32c
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    #@32f
    move-result-object v31

    #@330
    move-object/from16 v0, v31

    #@332
    move-object/from16 v1, p0

    #@334
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->ampmsNarrow:[Ljava/lang/String;

    #@336
    .line 1608
    const-string/jumbo v31, "quarters"

    #@339
    const-string/jumbo v32, "wide"

    #@33c
    move-object/from16 v0, p2

    #@33e
    move-object/from16 v1, v31

    #@340
    move-object/from16 v2, v32

    #@342
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@345
    move-result-object v31

    #@346
    move-object/from16 v0, v31

    #@348
    move-object/from16 v1, p0

    #@34a
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@34c
    .line 1609
    const-string/jumbo v31, "quarters"

    #@34f
    const-string/jumbo v32, "abbreviated"

    #@352
    move-object/from16 v0, p2

    #@354
    move-object/from16 v1, v31

    #@356
    move-object/from16 v2, v32

    #@358
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@35b
    move-result-object v31

    #@35c
    move-object/from16 v0, v31

    #@35e
    move-object/from16 v1, p0

    #@360
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@362
    .line 1611
    const-string/jumbo v31, "quarters"

    #@365
    const-string/jumbo v32, "stand-alone"

    #@368
    const-string/jumbo v33, "wide"

    #@36b
    move-object/from16 v0, p2

    #@36d
    move-object/from16 v1, v31

    #@36f
    move-object/from16 v2, v32

    #@371
    move-object/from16 v3, v33

    #@373
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@376
    move-result-object v31

    #@377
    move-object/from16 v0, v31

    #@379
    move-object/from16 v1, p0

    #@37b
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@37d
    .line 1612
    const-string/jumbo v31, "quarters"

    #@380
    const-string/jumbo v32, "stand-alone"

    #@383
    const-string/jumbo v33, "abbreviated"

    #@386
    move-object/from16 v0, p2

    #@388
    move-object/from16 v1, v31

    #@38a
    move-object/from16 v2, v32

    #@38c
    move-object/from16 v3, v33

    #@38e
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@391
    move-result-object v31

    #@392
    move-object/from16 v0, v31

    #@394
    move-object/from16 v1, p0

    #@396
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@398
    .line 1616
    const/4 v15, 0x0

    #@399
    .line 1618
    .local v15, "monthPatternsBundle":Landroid/icu/impl/ICUResourceBundle;
    :try_start_1
    const-string/jumbo v31, "monthPatterns"

    #@39c
    move-object/from16 v0, p2

    #@39e
    move-object/from16 v1, v31

    #@3a0
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_2

    #@3a3
    move-result-object v15

    #@3a4
    .line 1623
    .end local v15    # "monthPatternsBundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_1
    if-eqz v15, :cond_0

    #@3a6
    .line 1624
    const/16 v31, 0x7

    #@3a8
    move/from16 v0, v31

    #@3aa
    new-array v0, v0, [Ljava/lang/String;

    #@3ac
    move-object/from16 v31, v0

    #@3ae
    move-object/from16 v0, v31

    #@3b0
    move-object/from16 v1, p0

    #@3b2
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@3b4
    .line 1625
    move-object/from16 v0, p0

    #@3b6
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@3b8
    move-object/from16 v31, v0

    #@3ba
    const-string/jumbo v32, "monthPatterns"

    #@3bd
    const-string/jumbo v33, "wide"

    #@3c0
    move-object/from16 v0, p2

    #@3c2
    move-object/from16 v1, v32

    #@3c4
    move-object/from16 v2, v33

    #@3c6
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3c9
    move-result-object v32

    #@3ca
    const-string/jumbo v33, "leap"

    #@3cd
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@3d0
    move-result-object v32

    #@3d1
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@3d4
    move-result-object v32

    #@3d5
    const/16 v33, 0x0

    #@3d7
    aput-object v32, v31, v33

    #@3d9
    .line 1626
    move-object/from16 v0, p0

    #@3db
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@3dd
    move-object/from16 v31, v0

    #@3df
    const-string/jumbo v32, "monthPatterns"

    #@3e2
    const-string/jumbo v33, "abbreviated"

    #@3e5
    move-object/from16 v0, p2

    #@3e7
    move-object/from16 v1, v32

    #@3e9
    move-object/from16 v2, v33

    #@3eb
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@3ee
    move-result-object v32

    #@3ef
    const-string/jumbo v33, "leap"

    #@3f2
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@3f5
    move-result-object v32

    #@3f6
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@3f9
    move-result-object v32

    #@3fa
    const/16 v33, 0x1

    #@3fc
    aput-object v32, v31, v33

    #@3fe
    .line 1627
    move-object/from16 v0, p0

    #@400
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@402
    move-object/from16 v31, v0

    #@404
    const-string/jumbo v32, "monthPatterns"

    #@407
    const-string/jumbo v33, "narrow"

    #@40a
    move-object/from16 v0, p2

    #@40c
    move-object/from16 v1, v32

    #@40e
    move-object/from16 v2, v33

    #@410
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@413
    move-result-object v32

    #@414
    const-string/jumbo v33, "leap"

    #@417
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@41a
    move-result-object v32

    #@41b
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@41e
    move-result-object v32

    #@41f
    const/16 v33, 0x2

    #@421
    aput-object v32, v31, v33

    #@423
    .line 1628
    move-object/from16 v0, p0

    #@425
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@427
    move-object/from16 v31, v0

    #@429
    const-string/jumbo v32, "monthPatterns"

    #@42c
    const-string/jumbo v33, "stand-alone"

    #@42f
    const-string/jumbo v34, "wide"

    #@432
    move-object/from16 v0, p2

    #@434
    move-object/from16 v1, v32

    #@436
    move-object/from16 v2, v33

    #@438
    move-object/from16 v3, v34

    #@43a
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@43d
    move-result-object v32

    #@43e
    const-string/jumbo v33, "leap"

    #@441
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@444
    move-result-object v32

    #@445
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@448
    move-result-object v32

    #@449
    const/16 v33, 0x3

    #@44b
    aput-object v32, v31, v33

    #@44d
    .line 1629
    move-object/from16 v0, p0

    #@44f
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@451
    move-object/from16 v31, v0

    #@453
    const-string/jumbo v32, "monthPatterns"

    #@456
    const-string/jumbo v33, "stand-alone"

    #@459
    const-string/jumbo v34, "abbreviated"

    #@45c
    move-object/from16 v0, p2

    #@45e
    move-object/from16 v1, v32

    #@460
    move-object/from16 v2, v33

    #@462
    move-object/from16 v3, v34

    #@464
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@467
    move-result-object v32

    #@468
    const-string/jumbo v33, "leap"

    #@46b
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@46e
    move-result-object v32

    #@46f
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@472
    move-result-object v32

    #@473
    const/16 v33, 0x4

    #@475
    aput-object v32, v31, v33

    #@477
    .line 1630
    move-object/from16 v0, p0

    #@479
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@47b
    move-object/from16 v31, v0

    #@47d
    const-string/jumbo v32, "monthPatterns"

    #@480
    const-string/jumbo v33, "stand-alone"

    #@483
    const-string/jumbo v34, "narrow"

    #@486
    move-object/from16 v0, p2

    #@488
    move-object/from16 v1, v32

    #@48a
    move-object/from16 v2, v33

    #@48c
    move-object/from16 v3, v34

    #@48e
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@491
    move-result-object v32

    #@492
    const-string/jumbo v33, "leap"

    #@495
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@498
    move-result-object v32

    #@499
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@49c
    move-result-object v32

    #@49d
    const/16 v33, 0x5

    #@49f
    aput-object v32, v31, v33

    #@4a1
    .line 1631
    move-object/from16 v0, p0

    #@4a3
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@4a5
    move-object/from16 v31, v0

    #@4a7
    const-string/jumbo v32, "monthPatterns"

    #@4aa
    const-string/jumbo v33, "numeric"

    #@4ad
    const-string/jumbo v34, "all"

    #@4b0
    move-object/from16 v0, p2

    #@4b2
    move-object/from16 v1, v32

    #@4b4
    move-object/from16 v2, v33

    #@4b6
    move-object/from16 v3, v34

    #@4b8
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@4bb
    move-result-object v32

    #@4bc
    const-string/jumbo v33, "leap"

    #@4bf
    invoke-virtual/range {v32 .. v33}, Landroid/icu/impl/ICUResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@4c2
    move-result-object v32

    #@4c3
    invoke-virtual/range {v32 .. v32}, Landroid/icu/util/UResourceBundle;->getString()Ljava/lang/String;

    #@4c6
    move-result-object v32

    #@4c7
    const/16 v33, 0x6

    #@4c9
    aput-object v32, v31, v33

    #@4cb
    .line 1634
    :cond_0
    const/4 v10, 0x0

    #@4cc
    .line 1636
    .local v10, "cyclicNameSetsBundle":Landroid/icu/impl/ICUResourceBundle;
    :try_start_2
    const-string/jumbo v31, "cyclicNameSets"

    #@4cf
    move-object/from16 v0, p2

    #@4d1
    move-object/from16 v1, v31

    #@4d3
    invoke-virtual {v0, v1}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_3

    #@4d6
    move-result-object v10

    #@4d7
    .line 1641
    .end local v10    # "cyclicNameSetsBundle":Landroid/icu/impl/ICUResourceBundle;
    :goto_2
    if-eqz v10, :cond_1

    #@4d9
    .line 1642
    const-string/jumbo v31, "cyclicNameSets"

    #@4dc
    const-string/jumbo v32, "years"

    #@4df
    const-string/jumbo v33, "format"

    #@4e2
    const-string/jumbo v34, "abbreviated"

    #@4e5
    move-object/from16 v0, p2

    #@4e7
    move-object/from16 v1, v31

    #@4e9
    move-object/from16 v2, v32

    #@4eb
    move-object/from16 v3, v33

    #@4ed
    move-object/from16 v4, v34

    #@4ef
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@4f2
    move-result-object v31

    #@4f3
    invoke-virtual/range {v31 .. v31}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    #@4f6
    move-result-object v31

    #@4f7
    move-object/from16 v0, v31

    #@4f9
    move-object/from16 v1, p0

    #@4fb
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@4fd
    .line 1643
    const-string/jumbo v31, "cyclicNameSets"

    #@500
    const-string/jumbo v32, "zodiacs"

    #@503
    const-string/jumbo v33, "format"

    #@506
    const-string/jumbo v34, "abbreviated"

    #@509
    move-object/from16 v0, p2

    #@50b
    move-object/from16 v1, v31

    #@50d
    move-object/from16 v2, v32

    #@50f
    move-object/from16 v3, v33

    #@511
    move-object/from16 v4, v34

    #@513
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/icu/impl/CalendarData;->get(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    #@516
    move-result-object v31

    #@517
    invoke-virtual/range {v31 .. v31}, Landroid/icu/impl/ICUResourceBundle;->getStringArray()[Ljava/lang/String;

    #@51a
    move-result-object v31

    #@51b
    move-object/from16 v0, v31

    #@51d
    move-object/from16 v1, p0

    #@51f
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@521
    .line 1646
    :cond_1
    move-object/from16 v0, p1

    #@523
    move-object/from16 v1, p0

    #@525
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->requestedLocale:Landroid/icu/util/ULocale;

    #@527
    .line 1650
    const-string/jumbo v31, "android/icu/impl/data/icudt55b"

    #@52a
    .line 1649
    move-object/from16 v0, v31

    #@52c
    move-object/from16 v1, p1

    #@52e
    invoke-static {v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    #@531
    move-result-object v20

    #@532
    check-cast v20, Landroid/icu/impl/ICUResourceBundle;

    #@534
    .line 1657
    .local v20, "rb":Landroid/icu/impl/ICUResourceBundle;
    const-string/jumbo v31, "GyMdkHmsSEDFwWahKzYeugAZvcLQqVUOXxr:"

    #@537
    move-object/from16 v0, v31

    #@539
    move-object/from16 v1, p0

    #@53b
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@53d
    .line 1660
    invoke-virtual/range {v20 .. v20}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    #@540
    move-result-object v28

    #@541
    .line 1661
    .local v28, "uloc":Landroid/icu/util/ULocale;
    move-object/from16 v0, p0

    #@543
    move-object/from16 v1, v28

    #@545
    move-object/from16 v2, v28

    #@547
    invoke-virtual {v0, v1, v2}, Landroid/icu/text/DateFormatSymbols;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@54a
    .line 1663
    new-instance v31, Ljava/util/HashMap;

    #@54c
    invoke-direct/range {v31 .. v31}, Ljava/util/HashMap;-><init>()V

    #@54f
    move-object/from16 v0, v31

    #@551
    move-object/from16 v1, p0

    #@553
    iput-object v0, v1, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@555
    .line 1664
    const/16 v31, 0x2

    #@557
    move/from16 v0, v31

    #@559
    new-array v0, v0, [Z

    #@55b
    move-object/from16 v17, v0

    #@55d
    .line 1665
    .local v17, "noTransforms":[Z
    const/16 v31, 0x0

    #@55f
    const/16 v32, 0x0

    #@561
    aput-boolean v31, v17, v32

    #@563
    .line 1666
    const/16 v31, 0x0

    #@565
    const/16 v32, 0x1

    #@567
    aput-boolean v31, v17, v32

    #@569
    .line 1667
    invoke-static {}, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;->values()[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@56c
    move-result-object v6

    #@56d
    .line 1668
    .local v6, "allUsages":[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    const/16 v31, 0x0

    #@56f
    array-length v0, v6

    #@570
    move/from16 v32, v0

    #@572
    :goto_3
    move/from16 v0, v31

    #@574
    move/from16 v1, v32

    #@576
    if-ge v0, v1, :cond_2

    #@578
    aget-object v29, v6, v31

    #@57a
    .line 1669
    .local v29, "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    move-object/from16 v0, p0

    #@57c
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@57e
    move-object/from16 v33, v0

    #@580
    move-object/from16 v0, v33

    #@582
    move-object/from16 v1, v29

    #@584
    move-object/from16 v2, v17

    #@586
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@589
    .line 1668
    add-int/lit8 v31, v31, 0x1

    #@58b
    goto :goto_3

    #@58c
    .line 1569
    .end local v6    # "allUsages":[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .end local v17    # "noTransforms":[Z
    .end local v20    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .end local v22    # "saWeekdays":[Ljava/lang/String;
    .end local v23    # "snWeekdays":[Ljava/lang/String;
    .end local v24    # "ssWeekdays":[Ljava/lang/String;
    .end local v25    # "swWeekdays":[Ljava/lang/String;
    .end local v28    # "uloc":Landroid/icu/util/ULocale;
    .end local v29    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .local v16, "nWeekdays":[Ljava/lang/String;
    :catch_0
    move-exception v11

    #@58d
    .line 1571
    .local v11, "e":Ljava/util/MissingResourceException;
    :try_start_3
    const-string/jumbo v31, "dayNames"

    #@590
    const-string/jumbo v32, "stand-alone"

    #@593
    const-string/jumbo v33, "narrow"

    #@596
    move-object/from16 v0, p2

    #@598
    move-object/from16 v1, v31

    #@59a
    move-object/from16 v2, v32

    #@59c
    move-object/from16 v3, v33

    #@59e
    invoke-virtual {v0, v1, v2, v3}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/util/MissingResourceException; {:try_start_3 .. :try_end_3} :catch_1

    #@5a1
    move-result-object v16

    #@5a2
    .local v16, "nWeekdays":[Ljava/lang/String;
    goto/16 :goto_0

    #@5a4
    .line 1573
    .local v16, "nWeekdays":[Ljava/lang/String;
    :catch_1
    move-exception v12

    #@5a5
    .line 1574
    .local v12, "e1":Ljava/util/MissingResourceException;
    const-string/jumbo v31, "dayNames"

    #@5a8
    const-string/jumbo v32, "abbreviated"

    #@5ab
    move-object/from16 v0, p2

    #@5ad
    move-object/from16 v1, v31

    #@5af
    move-object/from16 v2, v32

    #@5b1
    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarData;->getStringArray(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    #@5b4
    move-result-object v16

    #@5b5
    .local v16, "nWeekdays":[Ljava/lang/String;
    goto/16 :goto_0

    #@5b7
    .line 1620
    .end local v11    # "e":Ljava/util/MissingResourceException;
    .end local v12    # "e1":Ljava/util/MissingResourceException;
    .restart local v15    # "monthPatternsBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v22    # "saWeekdays":[Ljava/lang/String;
    .restart local v23    # "snWeekdays":[Ljava/lang/String;
    .restart local v24    # "ssWeekdays":[Ljava/lang/String;
    .restart local v25    # "swWeekdays":[Ljava/lang/String;
    :catch_2
    move-exception v11

    #@5b8
    .line 1621
    .restart local v11    # "e":Ljava/util/MissingResourceException;
    const/4 v15, 0x0

    #@5b9
    goto/16 :goto_1

    #@5bb
    .line 1638
    .end local v11    # "e":Ljava/util/MissingResourceException;
    .end local v15    # "monthPatternsBundle":Landroid/icu/impl/ICUResourceBundle;
    .restart local v10    # "cyclicNameSetsBundle":Landroid/icu/impl/ICUResourceBundle;
    :catch_3
    move-exception v11

    #@5bc
    .line 1639
    .restart local v11    # "e":Ljava/util/MissingResourceException;
    const/4 v10, 0x0

    #@5bd
    goto/16 :goto_2

    #@5bf
    .line 1671
    .end local v10    # "cyclicNameSetsBundle":Landroid/icu/impl/ICUResourceBundle;
    .end local v11    # "e":Ljava/util/MissingResourceException;
    .restart local v6    # "allUsages":[Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .restart local v17    # "noTransforms":[Z
    .restart local v20    # "rb":Landroid/icu/impl/ICUResourceBundle;
    .restart local v28    # "uloc":Landroid/icu/util/ULocale;
    :cond_2
    const/4 v8, 0x0

    #@5c0
    .line 1673
    .local v8, "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :try_start_4
    const-string/jumbo v31, "contextTransforms"

    #@5c3
    move-object/from16 v0, v20

    #@5c5
    move-object/from16 v1, v31

    #@5c7
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;
    :try_end_4
    .catch Ljava/util/MissingResourceException; {:try_start_4 .. :try_end_4} :catch_4

    #@5ca
    move-result-object v8

    #@5cb
    .line 1678
    .end local v8    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :goto_4
    if-eqz v8, :cond_6

    #@5cd
    .line 1679
    invoke-virtual {v8}, Landroid/icu/util/UResourceBundle;->getIterator()Landroid/icu/util/UResourceBundleIterator;

    #@5d0
    move-result-object v9

    #@5d1
    .line 1680
    .local v9, "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    :cond_3
    :goto_5
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->hasNext()Z

    #@5d4
    move-result v31

    #@5d5
    if-eqz v31, :cond_6

    #@5d7
    .line 1681
    invoke-virtual {v9}, Landroid/icu/util/UResourceBundleIterator;->next()Landroid/icu/util/UResourceBundle;

    #@5da
    move-result-object v7

    #@5db
    .line 1682
    .local v7, "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@5de
    move-result-object v13

    #@5df
    .line 1683
    .local v13, "intVector":[I
    array-length v0, v13

    #@5e0
    move/from16 v31, v0

    #@5e2
    const/16 v32, 0x2

    #@5e4
    move/from16 v0, v31

    #@5e6
    move/from16 v1, v32

    #@5e8
    if-lt v0, v1, :cond_3

    #@5ea
    .line 1684
    invoke-virtual {v7}, Landroid/icu/util/UResourceBundle;->getKey()Ljava/lang/String;

    #@5ed
    move-result-object v30

    #@5ee
    .line 1685
    .local v30, "usageKey":Ljava/lang/String;
    sget-object v31, Landroid/icu/text/DateFormatSymbols;->contextUsageTypeMap:Ljava/util/Map;

    #@5f0
    move-object/from16 v0, v31

    #@5f2
    move-object/from16 v1, v30

    #@5f4
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5f7
    move-result-object v29

    #@5f8
    check-cast v29, Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;

    #@5fa
    .line 1686
    .restart local v29    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    if-eqz v29, :cond_3

    #@5fc
    .line 1687
    const/16 v31, 0x2

    #@5fe
    move/from16 v0, v31

    #@600
    new-array v0, v0, [Z

    #@602
    move-object/from16 v26, v0

    #@604
    .line 1688
    .local v26, "transforms":[Z
    const/16 v31, 0x0

    #@606
    aget v31, v13, v31

    #@608
    if-eqz v31, :cond_4

    #@60a
    const/16 v31, 0x1

    #@60c
    :goto_6
    const/16 v32, 0x0

    #@60e
    aput-boolean v31, v26, v32

    #@610
    .line 1689
    const/16 v31, 0x1

    #@612
    aget v31, v13, v31

    #@614
    if-eqz v31, :cond_5

    #@616
    const/16 v31, 0x1

    #@618
    :goto_7
    const/16 v32, 0x1

    #@61a
    aput-boolean v31, v26, v32

    #@61c
    .line 1690
    move-object/from16 v0, p0

    #@61e
    iget-object v0, v0, Landroid/icu/text/DateFormatSymbols;->capitalization:Ljava/util/Map;

    #@620
    move-object/from16 v31, v0

    #@622
    move-object/from16 v0, v31

    #@624
    move-object/from16 v1, v29

    #@626
    move-object/from16 v2, v26

    #@628
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@62b
    goto :goto_5

    #@62c
    .line 1675
    .end local v7    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    .end local v9    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v13    # "intVector":[I
    .end local v26    # "transforms":[Z
    .end local v29    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .end local v30    # "usageKey":Ljava/lang/String;
    .restart local v8    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    :catch_4
    move-exception v11

    #@62d
    .line 1676
    .restart local v11    # "e":Ljava/util/MissingResourceException;
    const/4 v8, 0x0

    #@62e
    goto :goto_4

    #@62f
    .line 1688
    .end local v8    # "contextTransformsBundle":Landroid/icu/util/UResourceBundle;
    .end local v11    # "e":Ljava/util/MissingResourceException;
    .restart local v7    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    .restart local v9    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .restart local v13    # "intVector":[I
    .restart local v26    # "transforms":[Z
    .restart local v29    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .restart local v30    # "usageKey":Ljava/lang/String;
    :cond_4
    const/16 v31, 0x0

    #@631
    goto :goto_6

    #@632
    .line 1689
    :cond_5
    const/16 v31, 0x0

    #@634
    goto :goto_7

    #@635
    .line 1696
    .end local v7    # "contextTransformUsage":Landroid/icu/util/UResourceBundle;
    .end local v9    # "ctIterator":Landroid/icu/util/UResourceBundleIterator;
    .end local v13    # "intVector":[I
    .end local v26    # "transforms":[Z
    .end local v29    # "usage":Landroid/icu/text/DateFormatSymbols$CapitalizationContextUsage;
    .end local v30    # "usageKey":Ljava/lang/String;
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/icu/text/NumberingSystem;->getInstance(Landroid/icu/util/ULocale;)Landroid/icu/text/NumberingSystem;

    #@638
    move-result-object v18

    #@639
    .line 1697
    .local v18, "ns":Landroid/icu/text/NumberingSystem;
    if-nez v18, :cond_7

    #@63b
    const-string/jumbo v19, "latn"

    #@63e
    .line 1698
    .local v19, "nsName":Ljava/lang/String;
    :goto_8
    new-instance v31, Ljava/lang/StringBuilder;

    #@640
    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    #@643
    const-string/jumbo v32, "NumberElements/"

    #@646
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@649
    move-result-object v31

    #@64a
    move-object/from16 v0, v31

    #@64c
    move-object/from16 v1, v19

    #@64e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@651
    move-result-object v31

    #@652
    const-string/jumbo v32, "/symbols/timeSeparator"

    #@655
    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@658
    move-result-object v31

    #@659
    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@65c
    move-result-object v27

    #@65d
    .line 1700
    .local v27, "tsPath":Ljava/lang/String;
    :try_start_5
    move-object/from16 v0, v20

    #@65f
    move-object/from16 v1, v27

    #@661
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->getStringWithFallback(Ljava/lang/String;)Ljava/lang/String;

    #@664
    move-result-object v31

    #@665
    move-object/from16 v0, p0

    #@667
    move-object/from16 v1, v31

    #@669
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/util/MissingResourceException; {:try_start_5 .. :try_end_5} :catch_5

    #@66c
    .line 1531
    :goto_9
    return-void

    #@66d
    .line 1697
    .end local v19    # "nsName":Ljava/lang/String;
    .end local v27    # "tsPath":Ljava/lang/String;
    :cond_7
    invoke-virtual/range {v18 .. v18}, Landroid/icu/text/NumberingSystem;->getName()Ljava/lang/String;

    #@670
    move-result-object v19

    #@671
    .restart local v19    # "nsName":Ljava/lang/String;
    goto :goto_8

    #@672
    .line 1701
    .restart local v27    # "tsPath":Ljava/lang/String;
    :catch_5
    move-exception v11

    #@673
    .line 1702
    .restart local v11    # "e":Ljava/util/MissingResourceException;
    const-string/jumbo v31, ":"

    #@676
    move-object/from16 v0, p0

    #@678
    move-object/from16 v1, v31

    #@67a
    invoke-virtual {v0, v1}, Landroid/icu/text/DateFormatSymbols;->setTimeSeparatorString(Ljava/lang/String;)V

    #@67d
    goto :goto_9
.end method

.method protected initializeData(Landroid/icu/util/ULocale;Ljava/lang/String;)V
    .locals 6
    .param p1, "desiredLocale"    # Landroid/icu/util/ULocale;
    .param p2, "type"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1458
    new-instance v4, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    #@8
    move-result-object v5

    #@9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v4

    #@d
    const-string/jumbo v5, "+"

    #@10
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v4

    #@14
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    .line 1459
    .local v2, "key":Ljava/lang/String;
    const-string/jumbo v4, "numbers"

    #@1f
    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@22
    move-result-object v3

    #@23
    .line 1460
    .local v3, "ns":Ljava/lang/String;
    if-eqz v3, :cond_0

    #@25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@28
    move-result v4

    #@29
    if-lez v4, :cond_0

    #@2b
    .line 1461
    new-instance v4, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v4

    #@34
    const-string/jumbo v5, "+"

    #@37
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v4

    #@3b
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v2

    #@43
    .line 1463
    :cond_0
    sget-object v4, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/ICUCache;

    #@45
    invoke-interface {v4, v2}, Landroid/icu/impl/ICUCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    #@4b
    .line 1464
    .local v1, "dfs":Landroid/icu/text/DateFormatSymbols;
    if-nez v1, :cond_2

    #@4d
    .line 1466
    new-instance v0, Landroid/icu/impl/CalendarData;

    #@4f
    invoke-direct {v0, p1, p2}, Landroid/icu/impl/CalendarData;-><init>(Landroid/icu/util/ULocale;Ljava/lang/String;)V

    #@52
    .line 1467
    .local v0, "calData":Landroid/icu/impl/CalendarData;
    invoke-virtual {p0, p1, v0}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/util/ULocale;Landroid/icu/impl/CalendarData;)V

    #@55
    .line 1469
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->getClass()Ljava/lang/Class;

    #@58
    move-result-object v4

    #@59
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@5c
    move-result-object v4

    #@5d
    const-string/jumbo v5, "android.icu.text.DateFormatSymbols"

    #@60
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@63
    move-result v4

    #@64
    if-eqz v4, :cond_1

    #@66
    .line 1470
    invoke-virtual {p0}, Landroid/icu/text/DateFormatSymbols;->clone()Ljava/lang/Object;

    #@69
    move-result-object v1

    #@6a
    .end local v1    # "dfs":Landroid/icu/text/DateFormatSymbols;
    check-cast v1, Landroid/icu/text/DateFormatSymbols;

    #@6c
    .line 1471
    .restart local v1    # "dfs":Landroid/icu/text/DateFormatSymbols;
    sget-object v4, Landroid/icu/text/DateFormatSymbols;->DFSCACHE:Landroid/icu/impl/ICUCache;

    #@6e
    invoke-interface {v4, v2, v1}, Landroid/icu/impl/ICUCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    #@71
    .line 1456
    .end local v0    # "calData":Landroid/icu/impl/CalendarData;
    :cond_1
    :goto_0
    return-void

    #@72
    .line 1474
    :cond_2
    invoke-virtual {p0, v1}, Landroid/icu/text/DateFormatSymbols;->initializeData(Landroid/icu/text/DateFormatSymbols;)V

    #@75
    goto :goto_0
.end method

.method public setAmPmStrings([Ljava/lang/String;)V
    .locals 1
    .param p1, "newAmpms"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 1257
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->ampms:[Ljava/lang/String;

    #@6
    .line 1256
    return-void
.end method

.method public setEraNames([Ljava/lang/String;)V
    .locals 1
    .param p1, "newEraNames"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 709
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eraNames:[Ljava/lang/String;

    #@6
    .line 708
    return-void
.end method

.method public setEras([Ljava/lang/String;)V
    .locals 1
    .param p1, "newEras"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 691
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->eras:[Ljava/lang/String;

    #@6
    .line 690
    return-void
.end method

.method public setLeapMonthPattern(Ljava/lang/String;II)V
    .locals 2
    .param p1, "leapMonthPattern"    # Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1197
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 1198
    const/4 v0, -0x1

    #@5
    .line 1199
    .local v0, "leapMonthPatternIndex":I
    packed-switch p2, :pswitch_data_0

    #@8
    .line 1236
    :goto_0
    if-ltz v0, :cond_0

    #@a
    .line 1237
    iget-object v1, p0, Landroid/icu/text/DateFormatSymbols;->leapMonthPatterns:[Ljava/lang/String;

    #@c
    aput-object p1, v1, v0

    #@e
    .line 1196
    .end local v0    # "leapMonthPatternIndex":I
    :cond_0
    return-void

    #@f
    .line 1201
    .restart local v0    # "leapMonthPatternIndex":I
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    #@12
    goto :goto_0

    #@13
    .line 1206
    :pswitch_1
    const/4 v0, 0x1

    #@14
    .line 1207
    goto :goto_0

    #@15
    .line 1203
    :pswitch_2
    const/4 v0, 0x0

    #@16
    .line 1204
    goto :goto_0

    #@17
    .line 1209
    :pswitch_3
    const/4 v0, 0x2

    #@18
    .line 1210
    goto :goto_0

    #@19
    .line 1216
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    #@1c
    goto :goto_0

    #@1d
    .line 1221
    :pswitch_5
    const/4 v0, 0x1

    #@1e
    .line 1222
    goto :goto_0

    #@1f
    .line 1218
    :pswitch_6
    const/4 v0, 0x3

    #@20
    .line 1219
    goto :goto_0

    #@21
    .line 1224
    :pswitch_7
    const/4 v0, 0x5

    #@22
    .line 1225
    goto :goto_0

    #@23
    .line 1231
    :pswitch_8
    const/4 v0, 0x6

    #@24
    .line 1232
    goto :goto_0

    #@25
    .line 1199
    nop

    #@26
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_8
    .end packed-switch

    #@30
    .line 1201
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@3a
    .line 1216
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setLocalPatternChars(Ljava/lang/String;)V
    .locals 0
    .param p1, "newLocalPatternChars"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1371
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->localPatternChars:Ljava/lang/String;

    #@2
    .line 1370
    return-void
.end method

.method final setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2076
    if-nez p1, :cond_0

    #@4
    move v2, v0

    #@5
    :goto_0
    if-nez p2, :cond_1

    #@7
    :goto_1
    if-eq v2, v0, :cond_2

    #@9
    .line 2078
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_0
    move v2, v1

    #@10
    .line 2076
    goto :goto_0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_1

    #@13
    .line 2083
    :cond_2
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->validLocale:Landroid/icu/util/ULocale;

    #@15
    .line 2084
    iput-object p2, p0, Landroid/icu/text/DateFormatSymbols;->actualLocale:Landroid/icu/util/ULocale;

    #@17
    .line 2074
    return-void
.end method

.method public setMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "newMonths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 773
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@6
    .line 772
    return-void
.end method

.method public setMonths([Ljava/lang/String;II)V
    .locals 1
    .param p1, "newMonths"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    .line 785
    packed-switch p2, :pswitch_data_0

    #@3
    .line 784
    :goto_0
    return-void

    #@4
    .line 787
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    #@7
    goto :goto_0

    #@8
    .line 792
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 789
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->months:[Ljava/lang/String;

    #@15
    goto :goto_0

    #@16
    .line 795
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowMonths:[Ljava/lang/String;

    #@1c
    goto :goto_0

    #@1d
    .line 802
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    #@20
    goto :goto_0

    #@21
    .line 807
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortMonths:[Ljava/lang/String;

    #@27
    goto :goto_0

    #@28
    .line 804
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneMonths:[Ljava/lang/String;

    #@2e
    goto :goto_0

    #@2f
    .line 810
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowMonths:[Ljava/lang/String;

    #@35
    goto :goto_0

    #@36
    .line 785
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
    .end packed-switch

    #@3e
    .line 787
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    #@48
    .line 802
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setQuarters([Ljava/lang/String;II)V
    .locals 1
    .param p1, "newQuarters"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    .line 1034
    packed-switch p2, :pswitch_data_0

    #@3
    .line 1033
    :goto_0
    :pswitch_0
    return-void

    #@4
    .line 1036
    :pswitch_1
    packed-switch p3, :pswitch_data_1

    #@7
    goto :goto_0

    #@8
    .line 1041
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortQuarters:[Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 1038
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->quarters:[Ljava/lang/String;

    #@15
    goto :goto_0

    #@16
    .line 1051
    :pswitch_4
    packed-switch p3, :pswitch_data_2

    #@19
    goto :goto_0

    #@1a
    .line 1056
    :pswitch_5
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@1d
    move-result-object v0

    #@1e
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortQuarters:[Ljava/lang/String;

    #@20
    goto :goto_0

    #@21
    .line 1053
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneQuarters:[Ljava/lang/String;

    #@27
    goto :goto_0

    #@28
    .line 1034
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
    .end packed-switch

    #@30
    .line 1036
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    #@3a
    .line 1051
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public setShortMonths([Ljava/lang/String;)V
    .locals 1
    .param p1, "newShortMonths"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 834
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortMonths:[Ljava/lang/String;

    #@6
    .line 833
    return-void
.end method

.method public setShortWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "newAbbrevWeekdays"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 976
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@6
    .line 975
    return-void
.end method

.method public setTimeSeparatorString(Ljava/lang/String;)V
    .locals 0
    .param p1, "newTimeSeparator"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1277
    iput-object p1, p0, Landroid/icu/text/DateFormatSymbols;->timeSeparator:Ljava/lang/String;

    #@2
    .line 1276
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;)V
    .locals 1
    .param p1, "newWeekdays"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 951
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@6
    .line 950
    return-void
.end method

.method public setWeekdays([Ljava/lang/String;II)V
    .locals 1
    .param p1, "newWeekdays"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    .line 907
    packed-switch p2, :pswitch_data_0

    #@3
    .line 906
    :goto_0
    return-void

    #@4
    .line 909
    :pswitch_0
    packed-switch p3, :pswitch_data_1

    #@7
    goto :goto_0

    #@8
    .line 914
    :pswitch_1
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortWeekdays:[Ljava/lang/String;

    #@e
    goto :goto_0

    #@f
    .line 911
    :pswitch_2
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->weekdays:[Ljava/lang/String;

    #@15
    goto :goto_0

    #@16
    .line 917
    :pswitch_3
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shorterWeekdays:[Ljava/lang/String;

    #@1c
    goto :goto_0

    #@1d
    .line 920
    :pswitch_4
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@20
    move-result-object v0

    #@21
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->narrowWeekdays:[Ljava/lang/String;

    #@23
    goto :goto_0

    #@24
    .line 925
    :pswitch_5
    packed-switch p3, :pswitch_data_2

    #@27
    goto :goto_0

    #@28
    .line 930
    :pswitch_6
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@2b
    move-result-object v0

    #@2c
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShortWeekdays:[Ljava/lang/String;

    #@2e
    goto :goto_0

    #@2f
    .line 927
    :pswitch_7
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneWeekdays:[Ljava/lang/String;

    #@35
    goto :goto_0

    #@36
    .line 933
    :pswitch_8
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneShorterWeekdays:[Ljava/lang/String;

    #@3c
    goto :goto_0

    #@3d
    .line 936
    :pswitch_9
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@40
    move-result-object v0

    #@41
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->standaloneNarrowWeekdays:[Ljava/lang/String;

    #@43
    goto :goto_0

    #@44
    .line 907
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
    .end packed-switch

    #@4c
    .line 909
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    #@58
    .line 925
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public setYearNames([Ljava/lang/String;II)V
    .locals 1
    .param p1, "yearNames"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    .line 1095
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    .line 1096
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortYearNames:[Ljava/lang/String;

    #@a
    .line 1094
    :cond_0
    return-void
.end method

.method public setZodiacNames([Ljava/lang/String;II)V
    .locals 1
    .param p1, "zodiacNames"    # [Ljava/lang/String;
    .param p2, "context"    # I
    .param p3, "width"    # I

    #@0
    .prologue
    .line 1127
    if-nez p2, :cond_0

    #@2
    if-nez p3, :cond_0

    #@4
    .line 1128
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([Ljava/lang/String;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->shortZodiacNames:[Ljava/lang/String;

    #@a
    .line 1126
    :cond_0
    return-void
.end method

.method public setZoneStrings([[Ljava/lang/String;)V
    .locals 1
    .param p1, "newZoneStrings"    # [[Ljava/lang/String;

    #@0
    .prologue
    .line 1348
    invoke-direct {p0, p1}, Landroid/icu/text/DateFormatSymbols;->duplicate([[Ljava/lang/String;)[[Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    iput-object v0, p0, Landroid/icu/text/DateFormatSymbols;->zoneStrings:[[Ljava/lang/String;

    #@6
    .line 1347
    return-void
.end method
