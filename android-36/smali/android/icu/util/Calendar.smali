.class public abstract Landroid/icu/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/Calendar$FormatConfiguration;,
        Landroid/icu/util/Calendar$PatternData;,
        Landroid/icu/util/Calendar$WeekDataCache;,
        Landroid/icu/util/Calendar$WeekData;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Landroid/icu/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final whitelist test-api AM:I = 0x0

.field public static final whitelist test-api AM_PM:I = 0x9

.field public static final whitelist test-api APRIL:I = 0x3

.field public static final whitelist test-api AUGUST:I = 0x7

.field protected static final greylist BASE_FIELD_COUNT:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist test-api DATE:I = 0x5

.field static final greylist-max-o DATE_PRECEDENCE:[[[I

.field public static final whitelist test-api DAY_OF_MONTH:I = 0x5

.field public static final whitelist test-api DAY_OF_WEEK:I = 0x7

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final whitelist test-api DAY_OF_YEAR:I = 0x6

.field public static final whitelist test-api DECEMBER:I = 0xb

.field private static final blacklist DEFAULT_ATTIME_PATTERNS:[Ljava/lang/String;

.field private static final greylist-max-o DEFAULT_PATTERNS:[Ljava/lang/String;

.field public static final whitelist test-api DOW_LOCAL:I = 0x12

.field static final greylist-max-o DOW_PRECEDENCE:[[[I

.field public static final whitelist test-api DST_OFFSET:I = 0x10

.field protected static final whitelist test-api EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final whitelist test-api ERA:I = 0x0

.field public static final whitelist test-api EXTENDED_YEAR:I = 0x13

.field public static final whitelist test-api FEBRUARY:I = 0x1

.field private static final greylist-max-o FIELD_DIFF_MAX_INT:I = 0x7fffffff

.field private static final greylist-max-o FIELD_NAME:[Ljava/lang/String;

.field private static final greylist-max-o FIND_ZONE_TRANSITION_TIME_UNITS:[I

.field public static final whitelist test-api FRIDAY:I = 0x6

.field protected static final whitelist test-api GREATEST_MINIMUM:I = 0x1

.field private static final greylist-max-o GREGORIAN_MONTH_COUNT:[[I

.field public static final whitelist test-api HOUR:I = 0xa

.field public static final whitelist test-api HOUR_OF_DAY:I = 0xb

.field protected static final whitelist test-api INTERNALLY_SET:I = 0x1

.field public static final whitelist test-api IS_LEAP_MONTH:I = 0x16

.field public static final whitelist test-api JANUARY:I = 0x0

.field protected static final whitelist test-api JAN_1_1_JULIAN_DAY:I = 0x1a4452

.field public static final whitelist test-api JULIAN_DAY:I = 0x14

.field public static final whitelist test-api JULY:I = 0x6

.field public static final whitelist test-api JUNE:I = 0x5

.field protected static final whitelist test-api LEAST_MAXIMUM:I = 0x2

.field private static final greylist-max-o LIMITS:[[I

.field public static final whitelist test-api MARCH:I = 0x2

.field protected static final whitelist test-api MAXIMUM:I = 0x3

.field protected static final whitelist test-api MAX_DATE:Ljava/util/Date;

.field protected static final whitelist test-api MAX_FIELD_COUNT:I = 0x20
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o MAX_HOURS:I = 0x224

.field protected static final whitelist test-api MAX_JULIAN:I = 0x7f000000

.field protected static final whitelist test-api MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final whitelist test-api MAY:I = 0x4

.field public static final whitelist test-api MILLISECOND:I = 0xe

.field public static final whitelist test-api MILLISECONDS_IN_DAY:I = 0x15

.field protected static final whitelist test-api MINIMUM:I = 0x0

.field protected static final whitelist test-api MINIMUM_USER_STAMP:I = 0x2

.field public static final whitelist test-api MINUTE:I = 0xc

.field protected static final whitelist test-api MIN_DATE:Ljava/util/Date;

.field protected static final whitelist test-api MIN_JULIAN:I = -0x7f000000

.field protected static final whitelist test-api MIN_MILLIS:J = -0x28ec76c40e65000L

.field public static final whitelist test-api MONDAY:I = 0x2

.field public static final whitelist test-api MONTH:I = 0x2

.field static final blacklist MONTH_PRECEDENCE:[[[I

.field public static final whitelist test-api NOVEMBER:I = 0xa

.field public static final whitelist test-api OCTOBER:I = 0x9

.field protected static final whitelist test-api ONE_DAY:J = 0x5265c00L

.field protected static final whitelist test-api ONE_HOUR:I = 0x36ee80

.field protected static final whitelist test-api ONE_MINUTE:I = 0xea60

.field protected static final whitelist test-api ONE_SECOND:I = 0x3e8

.field protected static final whitelist test-api ONE_WEEK:J = 0x240c8400L

.field public static final whitelist test-api ORDINAL_MONTH:I = 0x17

.field private static final greylist-max-o PATTERN_CACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Calendar$PatternData;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist test-api PM:I = 0x1

.field private static final greylist-max-o QUOTE:C = '\''

.field protected static final whitelist test-api RESOLVE_REMAP:I = 0x20

.field public static final whitelist test-api SATURDAY:I = 0x7

.field public static final whitelist test-api SECOND:I = 0xd

.field public static final whitelist test-api SEPTEMBER:I = 0x8

.field private static greylist-max-o STAMP_MAX:I = 0x0

.field public static final whitelist test-api SUNDAY:I = 0x1

.field public static final whitelist test-api THURSDAY:I = 0x5

.field private static final blacklist TIME_SKELETONS:[Ljava/lang/String;

.field public static final whitelist test-api TUESDAY:I = 0x3

.field public static final whitelist test-api UNDECIMBER:I = 0xc

.field protected static final whitelist test-api UNSET:I = 0x0

.field public static final whitelist test-api WALLTIME_FIRST:I = 0x1

.field public static final whitelist test-api WALLTIME_LAST:I = 0x0

.field public static final whitelist test-api WALLTIME_NEXT_VALID:I = 0x2

.field public static final whitelist test-api WEDNESDAY:I = 0x4

.field public static final greylist-max-o WEEKDAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o WEEKEND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o WEEKEND_CEASE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final greylist-max-o WEEKEND_ONSET:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final greylist-max-o WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

.field public static final whitelist test-api WEEK_OF_MONTH:I = 0x4

.field public static final whitelist test-api WEEK_OF_YEAR:I = 0x3

.field public static final whitelist test-api YEAR:I = 0x1

.field public static final whitelist test-api YEAR_WOY:I = 0x11

.field public static final whitelist test-api ZONE_OFFSET:I = 0xf

.field private static blacklist gTemporalMonthCodes:[Ljava/lang/String; = null

.field private static final whitelist serialVersionUID:J = 0x565b47a9d4dd4fcdL


# instance fields
.field private greylist-max-o actualLocale:Landroid/icu/util/ULocale;

.field private transient greylist-max-o areAllFieldsSet:Z

.field private transient greylist-max-o areFieldsSet:Z

.field private transient greylist-max-o areFieldsVirtuallySet:Z

.field private transient greylist-max-o fields:[I

.field private greylist-max-o firstDayOfWeek:I

.field private transient greylist-max-o gregorianDayOfMonth:I

.field private transient greylist-max-o gregorianDayOfYear:I

.field private transient greylist-max-o gregorianMonth:I

.field private transient greylist-max-o gregorianYear:I

.field private transient greylist-max-o internalSetMask:I

.field private transient greylist-max-o isTimeSet:Z

.field private greylist-max-o lenient:Z

.field private greylist-max-o minimalDaysInFirstWeek:I

.field private transient greylist-max-o nextStamp:I

.field private greylist-max-o repeatedWallTime:I

.field private greylist-max-o skippedWallTime:I

.field private transient greylist-max-o stamp:[I

.field private greylist-max-o time:J

.field private greylist-max-o validLocale:Landroid/icu/util/ULocale;

.field private greylist-max-o weekendCease:I

.field private greylist-max-o weekendCeaseMillis:I

.field private greylist-max-o weekendOnset:I

.field private greylist-max-o weekendOnsetMillis:I

.field private greylist-max-o zone:Landroid/icu/util/TimeZone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_ATTIME_PATTERNS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/util/Calendar;->DEFAULT_ATTIME_PATTERNS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_PATTERNS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetPATTERN_CACHE()Landroid/icu/impl/ICUCache;
    .registers 1

    sget-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetPatternData(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;
    .registers 2

    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getPatternData(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .registers 1

    invoke-static {p0}, Landroid/icu/util/Calendar;->getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 25

    .line 645
    nop

    .line 967
    const/16 v0, 0x18

    sput v0, Landroid/icu/util/Calendar;->BASE_FIELD_COUNT:I

    .line 1256
    new-instance v0, Ljava/util/Date;

    const-wide v1, -0x28ec76c40e65000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;

    .line 1275
    new-instance v0, Ljava/util/Date;

    const-wide v1, 0x28d47dbbf19b000L

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Landroid/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;

    .line 1456
    const/16 v0, 0x2710

    sput v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    .line 2011
    const-string v11, "M11"

    const-string v12, "M12"

    const-string v1, "M01"

    const-string v2, "M02"

    const-string v3, "M03"

    const-string v4, "M04"

    const-string v5, "M05"

    const-string v6, "M06"

    const-string v7, "M07"

    const-string v8, "M08"

    const-string v9, "M09"

    const-string v10, "M10"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->gTemporalMonthCodes:[Ljava/lang/String;

    .line 3577
    new-instance v0, Landroid/icu/impl/SimpleCache;

    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    sput-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    .line 3580
    const-string v12, "{1} {0}"

    const-string v13, "{1} {0}"

    const-string v1, "HH:mm:ss z"

    const-string v2, "HH:mm:ss z"

    const-string v3, "HH:mm:ss"

    const-string v4, "HH:mm"

    const-string v5, "y MMMM d, EEEE"

    const-string v6, "y MMMM d"

    const-string v7, "y MMM d"

    const-string v8, "y-MM-dd"

    const-string v9, "{1} {0}"

    const-string v10, "{1} {0}"

    const-string v11, "{1} {0}"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    .line 3595
    const-string v0, "{1} {0}"

    filled-new-array {v0, v0, v0, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->DEFAULT_ATTIME_PATTERNS:[Ljava/lang/String;

    .line 3602
    const-string v0, "jmmss"

    const-string v1, "jmm"

    const-string v2, "jmmsszzzz"

    const-string v3, "jmmssz"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->TIME_SKELETONS:[Ljava/lang/String;

    .line 4510
    const/4 v0, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    new-array v5, v0, [I

    new-array v6, v0, [I

    new-array v7, v0, [I

    const/4 v0, 0x7

    const/4 v8, 0x1

    filled-new-array {v8, v8, v0, v0}, [I

    move-result-object v8

    const/4 v0, 0x0

    new-array v9, v0, [I

    const/4 v0, 0x1

    const/4 v10, 0x0

    filled-new-array {v10, v10, v0, v0}, [I

    move-result-object v10

    const/16 v0, 0xb

    const/4 v11, 0x0

    filled-new-array {v11, v11, v0, v0}, [I

    move-result-object v11

    const/16 v0, 0x17

    const/4 v12, 0x0

    filled-new-array {v12, v12, v0, v0}, [I

    move-result-object v12

    const/16 v0, 0x3b

    const/4 v13, 0x0

    filled-new-array {v13, v13, v0, v0}, [I

    move-result-object v13

    const/4 v14, 0x0

    filled-new-array {v14, v14, v0, v0}, [I

    move-result-object v14

    const/16 v0, 0x3e7

    const/4 v15, 0x0

    filled-new-array {v15, v15, v0, v0}, [I

    move-result-object v15

    const v0, 0x66ff300

    move-object/from16 v17, v1

    const v1, -0x5265c00

    move-object/from16 v18, v2

    const v2, -0x36ee800

    move-object/from16 v19, v3

    const v3, 0x2932e00

    filled-new-array {v1, v2, v3, v0}, [I

    move-result-object v16

    const v0, 0x6ddd00

    const/4 v1, 0x0

    filled-new-array {v1, v1, v0, v0}, [I

    move-result-object v0

    new-array v1, v1, [I

    const/4 v2, 0x7

    const/4 v3, 0x1

    filled-new-array {v3, v3, v2, v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [I

    move-object/from16 v20, v0

    const/high16 v0, 0x7f000000

    move-object/from16 v21, v1

    const/high16 v1, -0x7f000000

    filled-new-array {v1, v1, v0, v0}, [I

    move-result-object v0

    const v1, 0x5265bff

    move-object/from16 v22, v0

    const/4 v0, 0x0

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    const/4 v1, 0x1

    move-object/from16 v23, v0

    const/4 v0, 0x0

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    const/16 v1, 0xc

    move-object/from16 v24, v0

    const/4 v0, 0x0

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    move-object/from16 v1, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v19

    move-object/from16 v19, v2

    move-object/from16 v2, v18

    move-object/from16 v18, v21

    move-object/from16 v21, v22

    move-object/from16 v22, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->LIMITS:[[I

    .line 5048
    new-instance v0, Landroid/icu/util/Calendar$WeekDataCache;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/Calendar$WeekDataCache;-><init>(Landroid/icu/util/Calendar-IA;)V

    sput-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    .line 5346
    const/4 v0, 0x5

    filled-new-array {v0}, [I

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, 0x7

    filled-new-array {v0, v2}, [I

    move-result-object v2

    const/4 v0, 0x4

    const/4 v3, 0x7

    filled-new-array {v0, v3}, [I

    move-result-object v3

    const/16 v0, 0x8

    const/4 v4, 0x7

    filled-new-array {v0, v4}, [I

    move-result-object v4

    const/4 v0, 0x3

    const/16 v5, 0x12

    filled-new-array {v0, v5}, [I

    move-result-object v5

    const/4 v0, 0x4

    const/16 v6, 0x12

    filled-new-array {v0, v6}, [I

    move-result-object v6

    const/16 v0, 0x8

    const/16 v7, 0x12

    filled-new-array {v0, v7}, [I

    move-result-object v7

    const/4 v0, 0x6

    filled-new-array {v0}, [I

    move-result-object v8

    const/16 v0, 0x25

    const/4 v9, 0x1

    filled-new-array {v0, v9}, [I

    move-result-object v9

    const/16 v0, 0x23

    const/16 v10, 0x11

    filled-new-array {v0, v10}, [I

    move-result-object v10

    filled-new-array/range {v1 .. v10}, [[I

    move-result-object v0

    const/4 v1, 0x3

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x4

    filled-new-array {v2}, [I

    move-result-object v2

    const/16 v3, 0x8

    filled-new-array {v3}, [I

    move-result-object v3

    const/16 v4, 0x28

    const/4 v5, 0x7

    filled-new-array {v4, v5}, [I

    move-result-object v4

    const/16 v5, 0x28

    const/16 v6, 0x12

    filled-new-array {v5, v6}, [I

    move-result-object v5

    filled-new-array {v1, v2, v3, v4, v5}, [[I

    move-result-object v1

    filled-new-array {v0, v1}, [[[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    .line 5368
    const/4 v0, 0x7

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v1, 0x12

    filled-new-array {v1}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    filled-new-array {v0}, [[[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    .line 5375
    const/4 v0, 0x2

    filled-new-array {v0}, [I

    move-result-object v0

    const/16 v1, 0x17

    filled-new-array {v1}, [I

    move-result-object v1

    filled-new-array {v0, v1}, [[I

    move-result-object v0

    filled-new-array {v0}, [[[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->MONTH_PRECEDENCE:[[[I

    .line 5700
    const v0, 0xea60

    const/16 v1, 0x3e8

    const v2, 0x36ee80

    const v3, 0x1b7740

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    .line 6371
    const/16 v0, 0x1f

    const/4 v1, 0x0

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v2

    const/16 v0, 0x1c

    const/16 v1, 0x1d

    const/16 v3, 0x1f

    filled-new-array {v0, v1, v3, v3}, [I

    move-result-object v3

    const/16 v0, 0x3c

    const/16 v1, 0x3b

    const/16 v4, 0x1f

    filled-new-array {v4, v4, v1, v0}, [I

    move-result-object v4

    const/16 v0, 0x5a

    const/16 v1, 0x5b

    const/16 v5, 0x1e

    filled-new-array {v5, v5, v0, v1}, [I

    move-result-object v5

    const/16 v0, 0x78

    const/16 v1, 0x79

    const/16 v6, 0x1f

    filled-new-array {v6, v6, v0, v1}, [I

    move-result-object v6

    const/16 v0, 0x97

    const/16 v1, 0x98

    const/16 v7, 0x1e

    filled-new-array {v7, v7, v0, v1}, [I

    move-result-object v7

    const/16 v0, 0xb5

    const/16 v1, 0xb6

    const/16 v8, 0x1f

    filled-new-array {v8, v8, v0, v1}, [I

    move-result-object v8

    const/16 v0, 0xd4

    const/16 v1, 0xd5

    const/16 v9, 0x1f

    filled-new-array {v9, v9, v0, v1}, [I

    move-result-object v9

    const/16 v0, 0xf3

    const/16 v1, 0xf4

    const/16 v10, 0x1e

    filled-new-array {v10, v10, v0, v1}, [I

    move-result-object v10

    const/16 v0, 0x111

    const/16 v1, 0x112

    const/16 v11, 0x1f

    filled-new-array {v11, v11, v0, v1}, [I

    move-result-object v11

    const/16 v0, 0x130

    const/16 v1, 0x131

    const/16 v12, 0x1e

    filled-new-array {v12, v12, v0, v1}, [I

    move-result-object v12

    const/16 v0, 0x14e

    const/16 v1, 0x14f

    const/16 v13, 0x1f

    filled-new-array {v13, v13, v0, v1}, [I

    move-result-object v13

    filled-new-array/range {v2 .. v13}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    .line 6505
    const-string v23, "IS_LEAP_MONTH"

    const-string v24, "ORDINAL_MONTH"

    const-string v1, "ERA"

    const-string v2, "YEAR"

    const-string v3, "MONTH"

    const-string v4, "WEEK_OF_YEAR"

    const-string v5, "WEEK_OF_MONTH"

    const-string v6, "DAY_OF_MONTH"

    const-string v7, "DAY_OF_YEAR"

    const-string v8, "DAY_OF_WEEK"

    const-string v9, "DAY_OF_WEEK_IN_MONTH"

    const-string v10, "AM_PM"

    const-string v11, "HOUR"

    const-string v12, "HOUR_OF_DAY"

    const-string v13, "MINUTE"

    const-string v14, "SECOND"

    const-string v15, "MILLISECOND"

    const-string v16, "ZONE_OFFSET"

    const-string v17, "DST_OFFSET"

    const-string v18, "YEAR_WOY"

    const-string v19, "DOW_LOCAL"

    const-string v20, "EXTENDED_YEAR"

    const-string v21, "JULIAN_DAY"

    const-string v22, "MILLISECONDS_IN_DAY"

    filled-new-array/range {v1 .. v24}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 1536
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1537
    return-void
.end method

.method protected constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 9
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 1555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1356
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    .line 1417
    const/4 v1, 0x0

    iput v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    .line 1422
    iput v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    .line 1453
    const/4 v2, 0x2

    iput v2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    .line 1556
    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    .line 1559
    invoke-static {p2}, Landroid/icu/util/Calendar;->getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/icu/util/Calendar;->setWeekData(Ljava/lang/String;)V

    .line 1562
    const-string v3, "fw"

    invoke-virtual {p2, v3}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1563
    .local v3, "fw":Ljava/lang/String;
    if-eqz v3, :cond_85

    .line 1565
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_8c

    :cond_27
    goto :goto_6d

    :sswitch_28
    const-string v0, "wed"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x3

    goto :goto_6e

    :sswitch_32
    const-string v0, "tue"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v2

    goto :goto_6e

    :sswitch_3c
    const-string v0, "thu"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x4

    goto :goto_6e

    :sswitch_46
    const-string v0, "sun"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    move v0, v1

    goto :goto_6e

    :sswitch_50
    const-string v0, "sat"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x6

    goto :goto_6e

    :sswitch_5a
    const-string v1, "mon"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_6e

    :sswitch_63
    const-string v0, "fri"

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    const/4 v0, 0x5

    goto :goto_6e

    :goto_6d
    move v0, v5

    :goto_6e
    packed-switch v0, :pswitch_data_aa

    .line 1573
    const/4 v0, -0x1

    .local v0, "fwOverride":I
    goto :goto_80

    .line 1572
    .end local v0    # "fwOverride":I
    :pswitch_73
    const/4 v0, 0x7

    .restart local v0    # "fwOverride":I
    goto :goto_80

    .line 1571
    .end local v0    # "fwOverride":I
    :pswitch_75
    const/4 v0, 0x6

    .restart local v0    # "fwOverride":I
    goto :goto_80

    .line 1570
    .end local v0    # "fwOverride":I
    :pswitch_77
    const/4 v0, 0x5

    .restart local v0    # "fwOverride":I
    goto :goto_80

    .line 1569
    .end local v0    # "fwOverride":I
    :pswitch_79
    const/4 v0, 0x4

    .restart local v0    # "fwOverride":I
    goto :goto_80

    .line 1568
    .end local v0    # "fwOverride":I
    :pswitch_7b
    const/4 v0, 0x3

    .restart local v0    # "fwOverride":I
    goto :goto_80

    .line 1567
    .end local v0    # "fwOverride":I
    :pswitch_7d
    const/4 v0, 0x2

    .restart local v0    # "fwOverride":I
    goto :goto_80

    .line 1566
    .end local v0    # "fwOverride":I
    :pswitch_7f
    const/4 v0, 0x1

    .line 1575
    .restart local v0    # "fwOverride":I
    :goto_80
    if-eq v0, v5, :cond_85

    .line 1576
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1581
    .end local v0    # "fwOverride":I
    :cond_85
    invoke-direct {p0, p2}, Landroid/icu/util/Calendar;->setCalendarLocale(Landroid/icu/util/ULocale;)V

    .line 1583
    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    .line 1584
    return-void

    :sswitch_data_8c
    .sparse-switch
        0x18d1d -> :sswitch_63
        0x1a70c -> :sswitch_5a
        0x1bbe6 -> :sswitch_50
        0x1be4c -> :sswitch_46
        0x1c081 -> :sswitch_3c
        0x1c204 -> :sswitch_32
        0x1cb56 -> :sswitch_28
    .end sparse-switch

    :pswitch_data_aa
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_7d
        :pswitch_7b
        :pswitch_79
        :pswitch_77
        :pswitch_75
        :pswitch_73
    .end packed-switch
.end method

.method protected constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 4
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 1546
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1547
    return-void
.end method

.method private greylist-max-o compare(Ljava/lang/Object;)J
    .registers 6
    .param p1, "that"    # Ljava/lang/Object;

    .line 2501
    instance-of v0, p1, Landroid/icu/util/Calendar;

    if-eqz v0, :cond_c

    .line 2502
    move-object v0, p1

    check-cast v0, Landroid/icu/util/Calendar;

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .local v0, "thatMs":J
    goto :goto_17

    .line 2503
    .end local v0    # "thatMs":J
    :cond_c
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1d

    .line 2504
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    .line 2508
    .restart local v0    # "thatMs":J
    :goto_17
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    return-wide v2

    .line 2506
    .end local v0    # "thatMs":J
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not a Calendar or Date"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final greylist-max-o computeGregorianAndDOWFields(I)V
    .registers 6
    .param p1, "julianDay"    # I

    .line 5190
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->computeGregorianFields(I)V

    .line 5193
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    invoke-static {p1}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v1

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 5196
    .local v1, "dow":I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int v0, v1, v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 5197
    .local v0, "dowLocal":I
    if-ge v0, v2, :cond_18

    .line 5198
    add-int/lit8 v0, v0, 0x7

    .line 5200
    :cond_18
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v3, 0x12

    aput v0, v2, v3

    .line 5201
    return-void
.end method

.method private final greylist-max-o computeWeekFields()V
    .registers 13

    .line 5273
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v1, 0x13

    aget v0, v0, v1

    .line 5274
    .local v0, "eyear":I
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 5275
    .local v1, "dayOfWeek":I
    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    .line 5286
    .local v3, "dayOfYear":I
    move v4, v0

    .line 5287
    .local v4, "yearOfWeekOfYear":I
    add-int/lit8 v5, v1, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int/2addr v5, v6

    rem-int/2addr v5, v2

    .line 5288
    .local v5, "relDow":I
    sub-int v6, v1, v3

    add-int/lit16 v6, v6, 0x1b59

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v6, v7

    rem-int/2addr v6, v2

    .line 5289
    .local v6, "relDowJan1":I
    add-int/lit8 v7, v3, -0x1

    add-int/2addr v7, v6

    div-int/2addr v7, v2

    .line 5290
    .local v7, "woy":I
    rsub-int/lit8 v8, v6, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v8, v9, :cond_31

    .line 5291
    add-int/lit8 v7, v7, 0x1

    .line 5296
    :cond_31
    if-nez v7, :cond_42

    .line 5302
    add-int/lit8 v8, v0, -0x1

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v8

    add-int/2addr v8, v3

    .line 5303
    .local v8, "prevDoy":I
    invoke-virtual {p0, v8, v1}, Landroid/icu/util/Calendar;->weekNumber(II)I

    move-result v7

    .line 5304
    nop

    .end local v8    # "prevDoy":I
    add-int/lit8 v4, v4, -0x1

    .line 5305
    goto :goto_62

    .line 5306
    :cond_42
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v8

    .line 5313
    .local v8, "lastDoy":I
    add-int/lit8 v9, v8, -0x5

    if-lt v3, v9, :cond_62

    .line 5314
    add-int v9, v5, v8

    sub-int/2addr v9, v3

    rem-int/2addr v9, v2

    .line 5315
    .local v9, "lastRelDow":I
    if-gez v9, :cond_52

    .line 5316
    add-int/lit8 v9, v9, 0x7

    .line 5318
    :cond_52
    rsub-int/lit8 v10, v9, 0x6

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v11

    if-lt v10, v11, :cond_62

    add-int/lit8 v10, v3, 0x7

    sub-int/2addr v10, v5

    if-le v10, v8, :cond_62

    .line 5320
    const/4 v7, 0x1

    .line 5321
    add-int/lit8 v4, v4, 0x1

    .line 5325
    .end local v8    # "lastDoy":I
    .end local v9    # "lastRelDow":I
    :cond_62
    :goto_62
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v9, 0x3

    aput v7, v8, v9

    .line 5326
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v9, 0x11

    aput v4, v8, v9

    .line 5329
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v9, 0x5

    aget v8, v8, v9

    .line 5330
    .local v8, "dayOfMonth":I
    iget-object v9, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v10, 0x4

    invoke-virtual {p0, v8, v1}, Landroid/icu/util/Calendar;->weekNumber(II)I

    move-result v11

    aput v11, v9, v10

    .line 5331
    iget-object v9, p0, Landroid/icu/util/Calendar;->fields:[I

    add-int/lit8 v10, v8, -0x1

    div-int/2addr v10, v2

    add-int/lit8 v10, v10, 0x1

    const/16 v2, 0x8

    aput v10, v9, v2

    .line 5332
    return-void
.end method

.method private static greylist-max-o createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .registers 6
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 1777
    const/4 v0, 0x0

    .line 1778
    .local v0, "cal":Landroid/icu/util/Calendar;
    invoke-static {p0}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v1

    .line 1779
    .local v1, "zone":Landroid/icu/util/TimeZone;
    invoke-static {p0}, Landroid/icu/util/Calendar;->getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/impl/CalType;

    move-result-object v2

    .line 1780
    .local v2, "calType":Landroid/icu/impl/CalType;
    if-nez v2, :cond_d

    .line 1782
    sget-object v2, Landroid/icu/impl/CalType;->GREGORIAN:Landroid/icu/impl/CalType;

    .line 1785
    :cond_d
    sget-object v3, Landroid/icu/util/Calendar$1;->$SwitchMap$android$icu$impl$CalType:[I

    invoke-virtual {v2}, Landroid/icu/impl/CalType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_96

    .line 1849
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown calendar type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1843
    :pswitch_20
    new-instance v3, Landroid/icu/util/TaiwanCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/TaiwanCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1844
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .local v3, "cal":Landroid/icu/util/Calendar;
    goto/16 :goto_95

    .line 1840
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_27
    new-instance v3, Landroid/icu/util/PersianCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1841
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto/16 :goto_95

    .line 1837
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_2e
    new-instance v3, Landroid/icu/util/JapaneseCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/JapaneseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1838
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1834
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_34
    new-instance v3, Landroid/icu/util/IslamicCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1835
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1827
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_3a
    new-instance v3, Landroid/icu/util/IndianCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1828
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1824
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_40
    new-instance v3, Landroid/icu/util/HebrewCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1825
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1820
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_46
    new-instance v3, Landroid/icu/util/EthiopicCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1821
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    move-object v0, v3

    check-cast v0, Landroid/icu/util/EthiopicCalendar;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    .line 1822
    goto :goto_95

    .line 1817
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_53
    new-instance v3, Landroid/icu/util/EthiopicCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1818
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1814
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_59
    new-instance v3, Landroid/icu/util/DangiCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1815
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1811
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_5f
    new-instance v3, Landroid/icu/util/CopticCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/CopticCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1812
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1808
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_65
    new-instance v3, Landroid/icu/util/ChineseCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1809
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1805
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_6b
    new-instance v3, Landroid/icu/util/BuddhistCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/BuddhistCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1806
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    goto :goto_95

    .line 1791
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_71
    new-instance v3, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1797
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    const-string v0, "fw"

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 1798
    const-string v0, "rg"

    invoke-virtual {p0, v0}, Landroid/icu/util/ULocale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8a

    .line 1799
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 1801
    :cond_8a
    const/4 v0, 0x4

    invoke-virtual {v3, v0}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 1802
    goto :goto_95

    .line 1787
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    :pswitch_8f
    new-instance v3, Landroid/icu/util/GregorianCalendar;

    invoke-direct {v3, v1, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 1788
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    nop

    .line 1852
    :goto_95
    return-object v3

    :pswitch_data_96
    .packed-switch 0x1
        :pswitch_8f
        :pswitch_71
        :pswitch_6b
        :pswitch_65
        :pswitch_5f
        :pswitch_59
        :pswitch_53
        :pswitch_46
        :pswitch_40
        :pswitch_3a
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_2e
        :pswitch_27
        :pswitch_20
    .end packed-switch
.end method

.method private static greylist-max-o expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "override"    # Ljava/lang/String;

    .line 3898
    const/16 v0, 0x3d

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_9

    .line 3899
    return-object p1

    .line 3901
    :cond_9
    const/4 v0, 0x0

    .line 3902
    .local v0, "inQuotes":Z
    const/16 v1, 0x20

    .line 3903
    .local v1, "prevChar":C
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3905
    .local v2, "result":Ljava/lang/StringBuilder;
    new-instance v3, Ljava/text/StringCharacterIterator;

    invoke-direct {v3, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    .line 3907
    .local v3, "it":Ljava/text/StringCharacterIterator;
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->first()C

    move-result v4

    .local v4, "c":C
    :goto_1a
    const v5, 0xffff

    if-eq v4, v5, :cond_4c

    .line 3908
    const/16 v5, 0x27

    if-ne v4, v5, :cond_2c

    .line 3909
    if-nez v0, :cond_27

    const/4 v5, 0x1

    goto :goto_28

    :cond_27
    const/4 v5, 0x0

    .line 3910
    .end local v0    # "inQuotes":Z
    .local v5, "inQuotes":Z
    :goto_28
    move v0, v4

    .line 3911
    .end local v1    # "prevChar":C
    .local v0, "prevChar":C
    move v1, v0

    move v0, v5

    goto :goto_47

    .line 3913
    .end local v5    # "inQuotes":Z
    .local v0, "inQuotes":Z
    .restart local v1    # "prevChar":C
    :cond_2c
    if-nez v0, :cond_46

    if-eq v4, v1, :cond_46

    .line 3914
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_3b

    .line 3915
    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3917
    :cond_3b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3918
    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3921
    :cond_46
    move v1, v4

    .line 3907
    :goto_47
    invoke-virtual {v3}, Ljava/text/StringCharacterIterator;->next()C

    move-result v4

    goto :goto_1a

    .line 3923
    .end local v4    # "c":C
    :cond_4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static greylist-max-o findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;
    .registers 24
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .param p1, "upperOffset"    # I
    .param p2, "upper"    # J
    .param p4, "lower"    # J

    .line 5716
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 5717
    .local v2, "onUnitTime":Z
    const-wide/16 v3, 0x0

    .line 5719
    .local v3, "mid":J
    sget-object v5, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    array-length v6, v5

    const/4 v7, 0x0

    :goto_b
    const-wide/16 v8, 0x1

    const/4 v10, 0x1

    if-ge v7, v6, :cond_2b

    aget v11, v5, v7

    .line 5720
    .local v11, "unit":I
    int-to-long v12, v11

    div-long v12, p4, v12

    .line 5721
    .local v12, "lunits":J
    int-to-long v14, v11

    div-long v14, p2, v14

    .line 5722
    .local v14, "uunits":J
    cmp-long v16, v14, v12

    if-lez v16, :cond_28

    .line 5723
    add-long v5, v12, v14

    add-long/2addr v5, v8

    ushr-long/2addr v5, v10

    move-wide/from16 v16, v8

    int-to-long v8, v11

    mul-long v3, v5, v8

    .line 5724
    const/4 v2, 0x1

    .line 5725
    move v6, v2

    goto :goto_2e

    .line 5719
    .end local v11    # "unit":I
    .end local v12    # "lunits":J
    .end local v14    # "uunits":J
    :cond_28
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    :cond_2b
    move-wide/from16 v16, v8

    move v6, v2

    .line 5730
    .end local v2    # "onUnitTime":Z
    .local v6, "onUnitTime":Z
    :goto_2e
    if-nez v6, :cond_36

    .line 5731
    add-long v7, p2, p4

    ushr-long v3, v7, v10

    move-wide v4, v3

    goto :goto_37

    .line 5730
    :cond_36
    move-wide v4, v3

    .line 5734
    .end local v3    # "mid":J
    .local v4, "mid":J
    :goto_37
    if-eqz v6, :cond_51

    .line 5735
    cmp-long v2, v4, p2

    if-eqz v2, :cond_4c

    .line 5736
    invoke-virtual {v0, v4, v5}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v7

    .line 5737
    .local v7, "midOffset":I
    if-eq v7, v1, :cond_4a

    .line 5738
    move-wide/from16 v2, p2

    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v8

    return-object v8

    .line 5740
    :cond_4a
    move-wide v2, v4

    .end local p2    # "upper":J
    .local v2, "upper":J
    goto :goto_4e

    .line 5735
    .end local v2    # "upper":J
    .end local v7    # "midOffset":I
    .restart local p2    # "upper":J
    :cond_4c
    move-wide/from16 v2, p2

    .line 5743
    .end local p2    # "upper":J
    .restart local v2    # "upper":J
    :goto_4e
    sub-long v4, v4, v16

    goto :goto_57

    .line 5745
    .end local v2    # "upper":J
    .restart local p2    # "upper":J
    :cond_51
    add-long v2, p2, p4

    ushr-long v4, v2, v10

    move-wide/from16 v2, p2

    .line 5748
    .end local p2    # "upper":J
    .restart local v2    # "upper":J
    :goto_57
    cmp-long v7, v4, p4

    if-nez v7, :cond_60

    .line 5749
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    return-object v7

    .line 5751
    :cond_60
    invoke-virtual {v0, v4, v5}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v7

    .line 5752
    .restart local v7    # "midOffset":I
    if-eq v7, v1, :cond_74

    .line 5753
    if-eqz v6, :cond_6d

    .line 5754
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    return-object v8

    .line 5756
    :cond_6d
    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v8

    move-wide v9, v2

    move-wide v2, v4

    .end local v4    # "mid":J
    .local v2, "mid":J
    .local v9, "upper":J
    return-object v8

    .line 5758
    .end local v9    # "upper":J
    .local v2, "upper":J
    .restart local v4    # "mid":J
    :cond_74
    move-wide v9, v2

    move-wide v2, v4

    .end local v4    # "mid":J
    .local v2, "mid":J
    .restart local v9    # "upper":J
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v4, p4

    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object v8

    return-object v8
.end method

.method private static greylist-max-o firstIslamicStartYearFromGrego(I)I
    .registers 8
    .param p0, "year"    # I

    .line 2311
    const/4 v0, 0x0

    .line 2312
    .local v0, "shift":I
    const/16 v1, 0x7b9

    const/4 v2, 0x0

    const/16 v3, 0x20

    const/4 v4, 0x1

    if-lt p0, v1, :cond_18

    .line 2313
    add-int/lit16 v1, p0, -0x7b9

    div-int/lit8 v1, v1, 0x41

    .line 2314
    .local v1, "cycle":I
    add-int/lit16 v5, p0, -0x7b9

    rem-int/lit8 v5, v5, 0x41

    .line 2315
    .local v5, "offset":I
    mul-int/lit8 v6, v1, 0x2

    if-lt v5, v3, :cond_16

    move v2, v4

    :cond_16
    add-int/2addr v6, v2

    .end local v0    # "shift":I
    .local v6, "shift":I
    goto :goto_28

    .line 2317
    .end local v1    # "cycle":I
    .end local v5    # "offset":I
    .end local v6    # "shift":I
    .restart local v0    # "shift":I
    :cond_18
    add-int/lit16 v1, p0, -0x7b8

    div-int/lit8 v1, v1, 0x41

    sub-int/2addr v1, v4

    .line 2318
    .restart local v1    # "cycle":I
    add-int/lit16 v5, p0, -0x7b8

    neg-int v5, v5

    rem-int/lit8 v5, v5, 0x41

    .line 2319
    .restart local v5    # "offset":I
    mul-int/lit8 v6, v1, 0x2

    if-gt v5, v3, :cond_27

    move v2, v4

    :cond_27
    add-int/2addr v6, v2

    .line 2321
    .end local v0    # "shift":I
    .restart local v6    # "shift":I
    :goto_28
    add-int/lit16 v0, p0, -0x243

    add-int/2addr v0, v6

    return v0
.end method

.method protected static final whitelist test-api floorDivide(II)I
    .registers 3
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    .line 6452
    if-ltz p0, :cond_5

    .line 6453
    div-int v0, p0, p1

    goto :goto_a

    .line 6454
    :cond_5
    add-int/lit8 v0, p0, 0x1

    div-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    .line 6452
    :goto_a
    return v0
.end method

.method protected static final whitelist test-api floorDivide(II[I)I
    .registers 6
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I
    .param p2, "remainder"    # [I

    .line 6472
    const/4 v0, 0x0

    if-ltz p0, :cond_a

    .line 6473
    rem-int v1, p0, p1

    aput v1, p2, v0

    .line 6474
    div-int v0, p0, p1

    return v0

    .line 6476
    :cond_a
    add-int/lit8 v1, p0, 0x1

    div-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    .line 6477
    .local v1, "quotient":I
    mul-int v2, v1, p1

    sub-int v2, p0, v2

    aput v2, p2, v0

    .line 6478
    return v1
.end method

.method protected static final whitelist test-api floorDivide(JI[I)I
    .registers 12
    .param p0, "numerator"    # J
    .param p2, "denominator"    # I
    .param p3, "remainder"    # [I

    .line 6496
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_12

    .line 6497
    int-to-long v2, p2

    rem-long v2, p0, v2

    long-to-int v0, v2

    aput v0, p3, v1

    .line 6498
    int-to-long v0, p2

    div-long v0, p0, v0

    long-to-int v0, v0

    return v0

    .line 6500
    :cond_12
    const-wide/16 v2, 0x1

    add-long v4, p0, v2

    int-to-long v6, p2

    div-long/2addr v4, v6

    sub-long/2addr v4, v2

    long-to-int v0, v4

    .line 6501
    .local v0, "quotient":I
    int-to-long v2, v0

    int-to-long v4, p2

    mul-long/2addr v2, v4

    sub-long v2, p0, v2

    long-to-int v2, v2

    aput v2, p3, v1

    .line 6502
    return v0
.end method

.method protected static final whitelist test-api floorDivide(JJ)J
    .registers 8
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    .line 6434
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_9

    .line 6435
    div-long v0, p0, p2

    goto :goto_10

    .line 6436
    :cond_9
    const-wide/16 v0, 0x1

    add-long v2, p0, v0

    div-long/2addr v2, p2

    sub-long v0, v2, v0

    .line 6434
    :goto_10
    return-wide v0
.end method

.method private static greylist-max-o formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;
    .registers 12
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I

    .line 3611
    const/4 v0, -0x1

    if-lt p3, v0, :cond_b1

    const/4 v1, 0x3

    if-gt p3, v1, :cond_b1

    .line 3614
    if-lt p2, v0, :cond_98

    if-gt p2, v1, :cond_98

    .line 3618
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$smmake(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    .line 3619
    .local v0, "patternData":Landroid/icu/util/Calendar$PatternData;
    const/4 v1, 0x0

    .line 3622
    .local v1, "override":Ljava/lang/String;
    const/4 v2, 0x0

    .line 3623
    .local v2, "pattern":Ljava/lang/String;
    if-ltz p3, :cond_5b

    if-ltz p2, :cond_5b

    .line 3624
    nop

    .line 3625
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$mgetDateAtTimePattern(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p3

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, p2, 0x4

    aget-object v6, v6, v7

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 3624
    invoke-static {v3, v4, v4, v5}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 3631
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 3632
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x4

    aget-object v3, v3, v4

    .line 3633
    .local v3, "dateOverride":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, p3

    .line 3634
    .local v4, "timeOverride":Ljava/lang/String;
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p2, 0x4

    aget-object v5, v5, v6

    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, p3

    invoke-static {v5, v6, v3, v4}, Landroid/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3638
    .end local v3    # "dateOverride":Ljava/lang/String;
    .end local v4    # "timeOverride":Ljava/lang/String;
    goto :goto_88

    .line 3639
    :cond_5b
    if-ltz p3, :cond_70

    .line 3640
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    aget-object v2, v3, p3

    .line 3641
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 3642
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, p3

    goto :goto_88

    .line 3644
    :cond_70
    if-ltz p2, :cond_90

    .line 3645
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x4

    aget-object v2, v3, v4

    .line 3646
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_88

    .line 3647
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetoverrides(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, p2, 0x4

    aget-object v1, v3, v4

    .line 3652
    :cond_88
    :goto_88
    invoke-virtual {p0, v2, v1, p1}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v3

    .line 3653
    .local v3, "result":Landroid/icu/text/DateFormat;
    invoke-virtual {v3, p0}, Landroid/icu/text/DateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    .line 3654
    return-object v3

    .line 3650
    .end local v3    # "result":Landroid/icu/text/DateFormat;
    :cond_90
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "No date or time style specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3615
    .end local v0    # "patternData":Landroid/icu/util/Calendar$PatternData;
    .end local v1    # "override":Ljava/lang/String;
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3612
    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal time style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o getActualHelper(III)I
    .registers 8
    .param p1, "field"    # I
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    .line 2724
    if-ne p2, p3, :cond_3

    .line 2726
    return p2

    .line 2729
    :cond_3
    const/4 v0, 0x1

    if-le p3, p2, :cond_8

    move v1, v0

    goto :goto_9

    :cond_8
    const/4 v1, -0x1

    .line 2733
    .local v1, "delta":I
    :goto_9
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/util/Calendar;

    .line 2737
    .local v2, "work":Landroid/icu/util/Calendar;
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->complete()V

    .line 2739
    invoke-virtual {v2, v0}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 2740
    if-gez v1, :cond_18

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-virtual {v2, p1, v0}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2746
    invoke-virtual {v2, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 2752
    invoke-virtual {v2, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-eq v0, p2, :cond_2b

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2b

    if-lez v1, :cond_2b

    .line 2754
    return p2

    .line 2756
    :cond_2b
    move v0, p2

    .line 2758
    .local v0, "result":I
    :cond_2c
    add-int/2addr p2, v1

    .line 2759
    invoke-virtual {v2, p1, v1}, Landroid/icu/util/Calendar;->add(II)V

    .line 2760
    invoke-virtual {v2, p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    if-eq v3, p2, :cond_37

    .line 2761
    goto :goto_3a

    .line 2763
    :cond_37
    move v0, p2

    .line 2764
    if-ne p2, p3, :cond_2c

    .line 2766
    :goto_3a
    return v0
.end method

.method public static whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 1

    .line 1862
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getAvailableULocales()[Landroid/icu/util/ULocale;
    .registers 1

    .line 1873
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/impl/CalType;
    .registers 7
    .param p0, "l"    # Landroid/icu/util/ULocale;

    .line 1764
    invoke-static {p0}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_24

    .line 1766
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 1767
    invoke-static {}, Landroid/icu/impl/CalType;->values()[Landroid/icu/impl/CalType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v2, :cond_24

    aget-object v4, v1, v3

    .line 1768
    .local v4, "type":Landroid/icu/impl/CalType;
    invoke-virtual {v4}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 1769
    return-object v4

    .line 1767
    .end local v4    # "type":Landroid/icu/impl/CalType;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 1773
    :cond_24
    const/4 v1, 0x0

    return-object v1
.end method

.method public static blacklist getDateAtTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .registers 5
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;
    .param p2, "dateStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3867
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$smmake(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    .line 3868
    .local v0, "patternData":Landroid/icu/util/Calendar$PatternData;
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$mgetDateAtTimePattern(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static greylist-max-o getDateTimeFormatString(Landroid/icu/util/ULocale;Ljava/lang/String;II)Ljava/lang/String;
    .registers 11
    .param p0, "loc"    # Landroid/icu/util/ULocale;
    .param p1, "calType"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I

    .line 3675
    const/4 v0, -0x1

    if-lt p3, v0, :cond_69

    const/4 v1, 0x3

    if-gt p3, v1, :cond_69

    .line 3678
    if-lt p2, v0, :cond_50

    if-gt p2, v1, :cond_50

    .line 3682
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$smmake(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    .line 3685
    .local v0, "patternData":Landroid/icu/util/Calendar$PatternData;
    const/4 v1, 0x0

    .line 3686
    .local v1, "pattern":Ljava/lang/String;
    if-ltz p3, :cond_34

    if-ltz p2, :cond_34

    .line 3687
    nop

    .line 3688
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$mgetDateAtTimePattern(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, p2, 0x4

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aput-object v5, v4, v6

    .line 3687
    invoke-static {v2, v3, v3, v4}, Landroid/icu/impl/SimpleFormatterImpl;->formatRawPattern(Ljava/lang/String;II[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    .line 3691
    :cond_34
    if-ltz p3, :cond_3d

    .line 3692
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, p3

    goto :goto_47

    .line 3693
    :cond_3d
    if-ltz p2, :cond_48

    .line 3694
    invoke-static {v0}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$fgetpatterns(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, p2, 0x4

    aget-object v1, v2, v3

    .line 3698
    :goto_47
    return-object v1

    .line 3696
    :cond_48
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No date or time style specified"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3679
    .end local v0    # "patternData":Landroid/icu/util/Calendar$PatternData;
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal date style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3676
    :cond_69
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal time style "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static greylist-max-o getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .registers 5
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;
    .param p2, "dateStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3857
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$smmake(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    move-result-object v0

    .line 3858
    .local v0, "patternData":Landroid/icu/util/Calendar$PatternData;
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->-$$Nest$mgetDateTimePattern(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private greylist-max-o getImmediatePreviousZoneTransition(J)Ljava/lang/Long;
    .registers 7
    .param p1, "base"    # J

    .line 5657
    const/4 v0, 0x0

    .line 5659
    .local v0, "transitionTime":Ljava/lang/Long;
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of v1, v1, Landroid/icu/util/BasicTimeZone;

    if-eqz v1, :cond_1b

    .line 5660
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, p2, v2}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    move-result-object v1

    .line 5661
    .local v1, "transition":Landroid/icu/util/TimeZoneTransition;
    if-eqz v1, :cond_1a

    .line 5662
    invoke-virtual {v1}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 5664
    .end local v1    # "transition":Landroid/icu/util/TimeZoneTransition;
    :cond_1a
    goto :goto_2f

    .line 5667
    :cond_1b
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v2, 0x6ddd00

    invoke-static {v1, p1, p2, v2, v3}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v0

    .line 5668
    if-nez v0, :cond_2f

    .line 5669
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v2, 0x66ff300

    invoke-static {v1, p1, p2, v2, v3}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    move-result-object v0

    .line 5672
    :cond_2f
    :goto_2f
    return-object v0
.end method

.method public static whitelist test-api getInstance()Landroid/icu/util/Calendar;
    .registers 1

    .line 1684
    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;
    .registers 2
    .param p0, "zone"    # Landroid/icu/util/TimeZone;

    .line 1694
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .registers 3
    .param p0, "zone"    # Landroid/icu/util/TimeZone;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1734
    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .registers 3
    .param p0, "zone"    # Landroid/icu/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1724
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .registers 2
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    .line 1714
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .registers 3
    .param p0, "aLocale"    # Ljava/util/Locale;

    .line 1704
    const/4 v0, 0x0

    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .registers 5
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1742
    if-nez p1, :cond_8

    .line 1743
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object p1

    .line 1745
    :cond_8
    if-nez p0, :cond_e

    .line 1746
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object p0

    .line 1749
    :cond_e
    invoke-static {p1}, Landroid/icu/util/Calendar;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 1750
    .local v0, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 1751
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1752
    return-object v0
.end method

.method public static final whitelist test-api getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .registers 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "commonlyUsed"    # Z

    .line 1893
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 1896
    .local v0, "prefRegion":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1898
    .local v1, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v2, "supplementalData"

    sget-object v3, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v4, "android/icu/impl/data/icudata"

    invoke-static {v4, v2, v3}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 1902
    .local v2, "rb":Landroid/icu/util/UResourceBundle;
    const-string v3, "calendarPreferenceData"

    invoke-virtual {v2, v3}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    .line 1903
    .local v3, "calPref":Landroid/icu/util/UResourceBundle;
    const/4 v4, 0x0

    .line 1905
    .local v4, "order":Landroid/icu/util/UResourceBundle;
    :try_start_1b
    invoke-virtual {v3, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v5
    :try_end_1f
    .catch Ljava/util/MissingResourceException; {:try_start_1b .. :try_end_1f} :catch_20

    .line 1909
    .end local v4    # "order":Landroid/icu/util/UResourceBundle;
    .local v5, "order":Landroid/icu/util/UResourceBundle;
    goto :goto_28

    .line 1906
    .end local v5    # "order":Landroid/icu/util/UResourceBundle;
    .restart local v4    # "order":Landroid/icu/util/UResourceBundle;
    :catch_20
    move-exception v5

    .line 1908
    .local v5, "mre":Ljava/util/MissingResourceException;
    const-string v6, "001"

    invoke-virtual {v3, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v4

    move-object v5, v4

    .line 1911
    .end local v4    # "order":Landroid/icu/util/UResourceBundle;
    .local v5, "order":Landroid/icu/util/UResourceBundle;
    :goto_28
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    move-result-object v4

    .line 1912
    .local v4, "caltypes":[Ljava/lang/String;
    if-eqz p2, :cond_2f

    .line 1914
    return-object v4

    .line 1918
    :cond_2f
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_30
    array-length v7, v4

    if-ge v6, v7, :cond_3b

    .line 1919
    aget-object v7, v4, v6

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1918
    add-int/lit8 v6, v6, 0x1

    goto :goto_30

    .line 1922
    .end local v6    # "i":I
    :cond_3b
    invoke-static {}, Landroid/icu/impl/CalType;->values()[Landroid/icu/impl/CalType;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x0

    :goto_41
    if-ge v8, v7, :cond_59

    aget-object v9, v6, v8

    .line 1923
    .local v9, "t":Landroid/icu/impl/CalType;
    invoke-virtual {v9}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_56

    .line 1924
    invoke-virtual {v9}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1922
    .end local v9    # "t":Landroid/icu/impl/CalType;
    :cond_56
    add-int/lit8 v8, v8, 0x1

    goto :goto_41

    .line 1927
    :cond_59
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6
.end method

.method private static greylist-max-o getPatternData(Landroid/icu/util/ULocale;Ljava/lang/String;)Landroid/icu/util/Calendar$PatternData;
    .registers 16
    .param p0, "locale"    # Landroid/icu/util/ULocale;
    .param p1, "calType"    # Ljava/lang/String;

    .line 3766
    nop

    .line 3767
    const-string v0, "android/icu/impl/data/icudata"

    invoke-static {v0, p0}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/util/UResourceBundle;

    move-result-object v0

    check-cast v0, Landroid/icu/impl/ICUResourceBundle;

    .line 3768
    .local v0, "rb":Landroid/icu/impl/ICUResourceBundle;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calendar/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/DateTimePatterns"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 3769
    .local v1, "dtPatternsRb":Landroid/icu/impl/ICUResourceBundle;
    if-nez v1, :cond_2e

    .line 3770
    const-string v3, "calendar/gregorian/DateTimePatterns"

    invoke-virtual {v0, v3}, Landroid/icu/impl/ICUResourceBundle;->getWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 3773
    :cond_2e
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    .line 3774
    .local v3, "patternsSize":I
    new-array v4, v3, [Ljava/lang/String;

    .line 3775
    .local v4, "dateTimePatterns":[Ljava/lang/String;
    new-array v5, v3, [Ljava/lang/String;

    .line 3776
    .local v5, "dateTimePatternsOverrides":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 3778
    .local v6, "i":I
    const/4 v7, 0x0

    .line 3779
    .local v7, "useDTPG":Z
    const-string v8, "rg"

    invoke-virtual {p0, v8}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_8e

    const-string v8, "hours"

    invoke-virtual {p0, v8}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_49

    goto :goto_8e

    .line 3782
    :cond_49
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getBaseName()Ljava/lang/String;

    move-result-object v8

    .line 3783
    .local v8, "baseLocID":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8f

    const-string v9, "und"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8f

    .line 3784
    new-instance v9, Landroid/icu/util/ULocale;

    invoke-direct {v9, v8}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    .line 3788
    .local v9, "baseLoc":Landroid/icu/util/ULocale;
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getULocale()Landroid/icu/util/ULocale;

    move-result-object v10

    invoke-static {v10}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    move-result-object v10

    .line 3789
    .local v10, "validLoc":Landroid/icu/util/ULocale;
    if-eq v10, v9, :cond_8f

    .line 3790
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v11

    .line 3791
    .local v11, "baseReg":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7e

    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8c

    .line 3792
    :cond_7e
    invoke-virtual {v9}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_8f

    .line 3793
    :cond_8c
    const/4 v7, 0x1

    goto :goto_8f

    .line 3780
    .end local v8    # "baseLocID":Ljava/lang/String;
    .end local v9    # "baseLoc":Landroid/icu/util/ULocale;
    .end local v10    # "validLoc":Landroid/icu/util/ULocale;
    .end local v11    # "baseReg":Ljava/lang/String;
    :cond_8e
    :goto_8e
    const/4 v7, 0x1

    .line 3798
    :cond_8f
    :goto_8f
    if-eqz v7, :cond_a7

    .line 3810
    invoke-static {p0}, Landroid/icu/text/DateTimePatternGenerator;->getInstanceNoStdPat(Landroid/icu/util/ULocale;)Landroid/icu/text/DateTimePatternGenerator;

    move-result-object v8

    .line 3811
    .local v8, "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    :goto_95
    sget-object v9, Landroid/icu/util/Calendar;->TIME_SKELETONS:[Ljava/lang/String;

    array-length v9, v9

    if-ge v6, v9, :cond_a7

    .line 3812
    sget-object v9, Landroid/icu/util/Calendar;->TIME_SKELETONS:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-virtual {v8, v9}, Landroid/icu/text/DateTimePatternGenerator;->getBestPattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    .line 3811
    add-int/lit8 v6, v6, 0x1

    goto :goto_95

    .line 3816
    .end local v8    # "dtpg":Landroid/icu/text/DateTimePatternGenerator;
    :cond_a7
    :goto_a7
    if-ge v6, v3, :cond_d0

    .line 3817
    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v8

    check-cast v8, Landroid/icu/impl/ICUResourceBundle;

    .line 3818
    .local v8, "concatenationPatternRb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v9

    sparse-switch v9, :sswitch_data_11e

    goto :goto_cd

    .line 3823
    :sswitch_b7
    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    .line 3824
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/icu/impl/ICUResourceBundle;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v6

    goto :goto_cd

    .line 3820
    :sswitch_c6
    invoke-virtual {v8}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v6

    .line 3821
    nop

    .line 3816
    .end local v8    # "concatenationPatternRb":Landroid/icu/impl/ICUResourceBundle;
    :goto_cd
    add-int/lit8 v6, v6, 0x1

    goto :goto_a7

    .line 3829
    :cond_d0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "/DateTimePatterns%atTime"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 3830
    if-nez v1, :cond_f3

    .line 3831
    const-string v2, "calendar/gregorian/DateTimePatterns%atTime"

    invoke-virtual {v0, v2}, Landroid/icu/impl/ICUResourceBundle;->findWithFallback(Ljava/lang/String;)Landroid/icu/impl/ICUResourceBundle;

    move-result-object v1

    .line 3833
    :cond_f3
    const/4 v2, 0x0

    .line 3834
    .local v2, "atTimePatterns":[Ljava/lang/String;
    if-eqz v1, :cond_117

    .line 3835
    invoke-virtual {v1}, Landroid/icu/impl/ICUResourceBundle;->getSize()I

    move-result v3

    .line 3836
    new-array v2, v3, [Ljava/lang/String;

    .line 3837
    const/4 v8, 0x4

    if-lt v3, v8, :cond_117

    .line 3838
    const/4 v6, 0x0

    :goto_100
    if-ge v6, v8, :cond_117

    .line 3839
    invoke-virtual {v1, v6}, Landroid/icu/impl/ICUResourceBundle;->get(I)Landroid/icu/util/UResourceBundle;

    move-result-object v9

    check-cast v9, Landroid/icu/impl/ICUResourceBundle;

    .line 3840
    .local v9, "concatenationPatternRb":Landroid/icu/impl/ICUResourceBundle;
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundle;->getType()I

    move-result v10

    if-nez v10, :cond_114

    .line 3841
    invoke-virtual {v9}, Landroid/icu/impl/ICUResourceBundle;->getString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v6

    .line 3838
    .end local v9    # "concatenationPatternRb":Landroid/icu/impl/ICUResourceBundle;
    :cond_114
    add-int/lit8 v6, v6, 0x1

    goto :goto_100

    .line 3847
    :cond_117
    new-instance v8, Landroid/icu/util/Calendar$PatternData;

    invoke-direct {v8, v4, v5, v2}, Landroid/icu/util/Calendar$PatternData;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v8

    nop

    :sswitch_data_11e
    .sparse-switch
        0x0 -> :sswitch_c6
        0x8 -> :sswitch_b7
    .end sparse-switch
.end method

.method private static greylist-max-o getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;
    .registers 12
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .param p1, "base"    # J
    .param p3, "duration"    # J

    .line 5684
    nop

    .line 5686
    move-wide v2, p1

    .line 5687
    .local v2, "upper":J
    sub-long v0, p1, p3

    const-wide/16 v4, 0x1

    sub-long v4, v0, v4

    .line 5688
    .local v4, "lower":J
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 5689
    .local v1, "offsetU":I
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 5690
    .local v6, "offsetL":I
    if-ne v1, v6, :cond_14

    .line 5691
    const/4 v0, 0x0

    return-object v0

    .line 5693
    :cond_14
    move-object v0, p0

    .end local p0    # "tz":Landroid/icu/util/TimeZone;
    .local v0, "tz":Landroid/icu/util/TimeZone;
    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method

.method private static greylist-max-o getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    .line 1756
    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/icu/util/ULocale;->getRegionForSupplementalData(Landroid/icu/util/ULocale;Z)Ljava/lang/String;

    move-result-object v0

    .line 1757
    .local v0, "region":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_d

    .line 1758
    const-string v0, "001"

    .line 1760
    :cond_d
    return-object v0
.end method

.method public static whitelist test-api getWeekDataForRegion(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .registers 2
    .param p0, "region"    # Ljava/lang/String;

    .line 4980
    sget-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p0, p0}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .registers 12
    .param p0, "region"    # Ljava/lang/String;

    .line 5008
    if-nez p0, :cond_4

    .line 5009
    const-string p0, "001"

    .line 5012
    :cond_4
    const-string v0, "supplementalData"

    sget-object v1, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    const-string v2, "android/icu/impl/data/icudata"

    invoke-static {v2, v0, v1}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    move-result-object v1

    .line 5016
    .local v1, "rb":Landroid/icu/util/UResourceBundle;
    const-string v0, "weekData"

    invoke-virtual {v1, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v2

    .line 5017
    .local v2, "weekDataInfo":Landroid/icu/util/UResourceBundle;
    const/4 v3, 0x0

    .line 5020
    .local v3, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :try_start_15
    invoke-virtual {v2, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v0
    :try_end_19
    .catch Ljava/util/MissingResourceException; {:try_start_15 .. :try_end_19} :catch_1a

    .line 5028
    .end local v3    # "weekDataBundle":Landroid/icu/util/UResourceBundle;
    .local v0, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    goto :goto_28

    .line 5021
    .end local v0    # "weekDataBundle":Landroid/icu/util/UResourceBundle;
    .restart local v3    # "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :catch_1a
    move-exception v0

    .line 5022
    .local v0, "mre":Ljava/util/MissingResourceException;
    const-string v4, "001"

    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_44

    .line 5024
    invoke-virtual {v2, v4}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    move-result-object v3

    move-object v0, v3

    .line 5030
    .end local v3    # "weekDataBundle":Landroid/icu/util/UResourceBundle;
    .local v0, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :goto_28
    invoke-virtual {v0}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    move-result-object v3

    .line 5031
    .local v3, "wdi":[I
    new-instance v4, Landroid/icu/util/Calendar$WeekData;

    const/4 v5, 0x0

    aget v5, v3, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    const/4 v7, 0x2

    aget v7, v3, v7

    const/4 v8, 0x3

    aget v8, v3, v8

    const/4 v9, 0x4

    aget v9, v3, v9

    const/4 v10, 0x5

    aget v10, v3, v10

    invoke-direct/range {v4 .. v10}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v4

    .line 5026
    .local v0, "mre":Ljava/util/MissingResourceException;
    .local v3, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :cond_44
    throw v0
.end method

.method private static greylist-max-o gregoYearFromIslamicStart(I)I
    .registers 8
    .param p0, "year"    # I

    .line 2235
    const/4 v0, 0x0

    .line 2236
    .local v0, "shift":I
    const/16 v1, 0x575

    const/4 v2, 0x0

    const/16 v3, 0x21

    const/4 v4, 0x1

    if-lt p0, v1, :cond_18

    .line 2237
    add-int/lit16 v1, p0, -0x575

    div-int/lit8 v1, v1, 0x43

    .line 2238
    .local v1, "cycle":I
    add-int/lit16 v5, p0, -0x575

    rem-int/lit8 v5, v5, 0x43

    .line 2239
    .local v5, "offset":I
    mul-int/lit8 v6, v1, 0x2

    if-lt v5, v3, :cond_16

    move v2, v4

    :cond_16
    add-int/2addr v6, v2

    .end local v0    # "shift":I
    .local v6, "shift":I
    goto :goto_28

    .line 2241
    .end local v1    # "cycle":I
    .end local v5    # "offset":I
    .end local v6    # "shift":I
    .restart local v0    # "shift":I
    :cond_18
    add-int/lit16 v1, p0, -0x574

    div-int/lit8 v1, v1, 0x43

    sub-int/2addr v1, v4

    .line 2242
    .restart local v1    # "cycle":I
    add-int/lit16 v5, p0, -0x574

    neg-int v5, v5

    rem-int/lit8 v5, v5, 0x43

    .line 2243
    .restart local v5    # "offset":I
    mul-int/lit8 v6, v1, 0x2

    if-gt v5, v3, :cond_27

    move v2, v4

    :cond_27
    add-int/2addr v6, v2

    .line 2245
    .end local v0    # "shift":I
    .restart local v6    # "shift":I
    :goto_28
    add-int/lit16 v0, p0, 0x243

    sub-int/2addr v0, v6

    return v0
.end method

.method protected static final whitelist test-api gregorianMonthLength(II)I
    .registers 4
    .param p0, "y"    # I
    .param p1, "m"    # I

    .line 6408
    sget-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v0, v0, p1

    invoke-static {p0}, Landroid/icu/util/Calendar;->isGregorianLeapYear(I)Z

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected static final whitelist test-api gregorianPreviousMonthLength(II)I
    .registers 3
    .param p0, "y"    # I
    .param p1, "m"    # I

    .line 6418
    if-lez p1, :cond_9

    add-int/lit8 v0, p1, -0x1

    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->gregorianMonthLength(II)I

    move-result v0

    goto :goto_b

    :cond_9
    const/16 v0, 0x1f

    :goto_b
    return v0
.end method

.method private greylist-max-o initInternal()V
    .registers 4

    .line 1655
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleCreateFields()[I

    move-result-object v0

    iput-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    .line 1658
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    if-eqz v0, :cond_32

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v0, v0

    sget v1, Landroid/icu/util/Calendar;->BASE_FIELD_COUNT:I

    if-lt v0, v1, :cond_32

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v0, v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_32

    .line 1663
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    .line 1664
    const v0, 0xc80067

    .line 1672
    .local v0, "mask":I
    sget v1, Landroid/icu/util/Calendar;->BASE_FIELD_COUNT:I

    .local v1, "i":I
    :goto_24
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2f

    .line 1673
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 1672
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 1675
    .end local v1    # "i":I
    :cond_2f
    iput v0, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    .line 1676
    return-void

    .line 1660
    .end local v0    # "mask":I
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid fields[]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static final whitelist test-api isGregorianLeapYear(I)Z
    .registers 2
    .param p0, "year"    # I

    .line 6398
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_e

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_c

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected static final whitelist test-api julianDayToDayOfWeek(I)I
    .registers 3
    .param p0, "julian"    # I

    .line 6549
    add-int/lit8 v0, p0, 0x2

    rem-int/lit8 v0, v0, 0x7

    .line 6550
    .local v0, "dayOfWeek":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_9

    .line 6551
    add-int/lit8 v0, v0, 0x7

    .line 6553
    :cond_9
    return v0
.end method

.method protected static final whitelist test-api julianDayToMillis(I)J
    .registers 5
    .param p0, "julian"    # I

    .line 6540
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p0, v0

    int-to-long v0, v0

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private static greylist-max-o mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "datePattern"    # Ljava/lang/String;
    .param p1, "timePattern"    # Ljava/lang/String;
    .param p2, "dateOverride"    # Ljava/lang/String;
    .param p3, "timeOverride"    # Ljava/lang/String;

    .line 3874
    if-nez p2, :cond_6

    if-nez p3, :cond_6

    .line 3875
    const/4 v0, 0x0

    return-object v0

    .line 3878
    :cond_6
    if-nez p2, :cond_d

    .line 3879
    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3882
    :cond_d
    if-nez p3, :cond_14

    .line 3883
    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3886
    :cond_14
    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 3887
    return-object p2

    .line 3890
    :cond_1b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3891
    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3890
    return-object v0
.end method

.method protected static final whitelist test-api millisToJulianDay(J)I
    .registers 6
    .param p0, "millis"    # J

    .line 6531
    const-wide/32 v0, 0x5265c00

    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x253d8c

    add-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 5101
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 5103
    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    .line 5105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 5106
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 5107
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    .line 5108
    const/4 v0, 0x2

    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    .line 5109
    return-void
.end method

.method private greylist-max-o recalculateStamp()V
    .registers 8

    .line 1629
    const/4 v0, 0x1

    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    .line 1631
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_4
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    array-length v2, v2

    if-ge v1, v2, :cond_36

    .line 1632
    sget v2, Landroid/icu/util/Calendar;->STAMP_MAX:I

    .line 1633
    .local v2, "currentValue":I
    const/4 v3, -0x1

    .line 1635
    .local v3, "index":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_d
    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    array-length v5, v5

    if-ge v4, v5, :cond_28

    .line 1636
    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v5, v5, v4

    iget v6, p0, Landroid/icu/util/Calendar;->nextStamp:I

    if-le v5, v6, :cond_25

    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v5, v5, v4

    if-ge v5, v2, :cond_25

    .line 1637
    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v5, v4

    .line 1638
    move v3, v4

    .line 1635
    :cond_25
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 1642
    :cond_28
    if-ltz v3, :cond_36

    .line 1643
    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget v6, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/2addr v6, v0

    iput v6, p0, Landroid/icu/util/Calendar;->nextStamp:I

    aput v6, v5, v3

    .line 1631
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1648
    .end local v2    # "currentValue":I
    .end local v3    # "index":I
    .end local v4    # "i":I
    :cond_36
    iget v2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/2addr v2, v0

    iput v2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    .line 1649
    return-void
.end method

.method private greylist-max-o setCalendarLocale(Landroid/icu/util/ULocale;)V
    .registers 9
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 1595
    move-object v0, p1

    .line 1597
    .local v0, "calLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 1599
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1601
    .local v1, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1603
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    move-result-object v2

    .line 1604
    .local v2, "script":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "_"

    if-lez v3, :cond_30

    .line 1605
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1608
    :cond_30
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    move-result-object v3

    .line 1609
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_41

    .line 1610
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1613
    :cond_41
    const-string v4, "calendar"

    invoke-virtual {p1, v4}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, "calType":Ljava/lang/String;
    if-eqz v4, :cond_52

    .line 1615
    const-string v5, "@calendar="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    :cond_52
    new-instance v5, Landroid/icu/util/ULocale;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    .line 1621
    .end local v1    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "script":Ljava/lang/String;
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "calType":Ljava/lang/String;
    :cond_5c
    invoke-virtual {p0, v0, v0}, Landroid/icu/util/Calendar;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    .line 1622
    return-void
.end method

.method private greylist-max-o setWeekData(Ljava/lang/String;)V
    .registers 3
    .param p1, "region"    # Ljava/lang/String;

    .line 5054
    if-nez p1, :cond_4

    .line 5055
    const-string p1, "001"

    .line 5057
    :cond_4
    sget-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    invoke-virtual {v0, p1, p1}, Landroid/icu/util/Calendar$WeekDataCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar$WeekData;

    .line 5058
    .local v0, "wdata":Landroid/icu/util/Calendar$WeekData;
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;

    .line 5059
    return-void
.end method

.method private greylist-max-o updateTime()V
    .registers 3

    .line 5067
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeTime()V

    .line 5071
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_10

    :cond_e
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 5072
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 5073
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    .line 5074
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5084
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_a

    .line 5086
    :try_start_4
    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_7} :catch_8

    .line 5088
    :goto_7
    goto :goto_a

    :catch_8
    move-exception v0

    goto :goto_7

    .line 5092
    :cond_a
    :goto_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 5093
    return-void
.end method


# virtual methods
.method public whitelist test-api add(II)V
    .registers 27
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 3275
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 3276
    return-void

    .line 3300
    :cond_9
    int-to-long v3, v2

    .line 3301
    .local v3, "delta":J
    const/4 v5, 0x1

    .line 3303
    .local v5, "keepWallTimeInvariant":Z
    const-wide/32 v6, 0x5265c00

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_15a

    .line 3380
    :pswitch_12
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Calendar.add("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") not supported"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 3376
    :pswitch_35
    const/4 v5, 0x0

    .line 3377
    goto :goto_54

    .line 3370
    :pswitch_37
    const-wide/16 v8, 0x3e8

    mul-long/2addr v3, v8

    .line 3371
    const/4 v5, 0x0

    .line 3372
    goto :goto_54

    .line 3365
    :pswitch_3c
    const-wide/32 v8, 0xea60

    mul-long/2addr v3, v8

    .line 3366
    const/4 v5, 0x0

    .line 3367
    goto :goto_54

    .line 3360
    :pswitch_42
    const-wide/32 v8, 0x36ee80

    mul-long/2addr v3, v8

    .line 3361
    const/4 v5, 0x0

    .line 3362
    goto :goto_54

    .line 3347
    :pswitch_48
    const-wide/32 v8, 0x2932e00

    mul-long/2addr v3, v8

    .line 3348
    goto :goto_54

    .line 3355
    :pswitch_4d
    mul-long/2addr v3, v6

    .line 3356
    goto :goto_54

    .line 3343
    :pswitch_4f
    const-wide/32 v8, 0x240c8400

    mul-long/2addr v3, v8

    .line 3344
    nop

    .line 3388
    :goto_54
    const/4 v8, 0x0

    .line 3389
    .local v8, "prevOffset":I
    const/4 v9, 0x0

    .line 3390
    .local v9, "prevWallTime":I
    const/16 v10, 0xf

    const/16 v11, 0x10

    const/16 v12, 0x15

    if-eqz v5, :cond_6c

    .line 3391
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v13

    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v14

    add-int v8, v13, v14

    .line 3392
    invoke-virtual {v0, v12}, Landroid/icu/util/Calendar;->get(I)I

    move-result v9

    .line 3395
    :cond_6c
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v13

    add-long/2addr v13, v3

    invoke-virtual {v0, v13, v14}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3397
    if-eqz v5, :cond_120

    .line 3398
    invoke-virtual {v0, v12}, Landroid/icu/util/Calendar;->get(I)I

    move-result v13

    .line 3399
    .local v13, "newWallTime":I
    if-eq v13, v9, :cond_11a

    .line 3403
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v14

    .line 3404
    .local v14, "t":J
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->get(I)I

    move-result v11

    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v10

    add-int/2addr v11, v10

    .line 3405
    .local v11, "newOffset":I
    if-eq v11, v8, :cond_114

    .line 3410
    sub-int v10, v8, v11

    move-wide/from16 v16, v6

    int-to-long v6, v10

    rem-long v6, v6, v16

    .line 3411
    .local v6, "adjAmount":J
    const-wide/16 v16, 0x0

    cmp-long v10, v6, v16

    if-eqz v10, :cond_a6

    .line 3412
    move/from16 v18, v13

    .end local v13    # "newWallTime":I
    .local v18, "newWallTime":I
    add-long v12, v14, v6

    invoke-virtual {v0, v12, v13}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3413
    const/16 v10, 0x15

    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->get(I)I

    move-result v13

    .end local v18    # "newWallTime":I
    .restart local v13    # "newWallTime":I
    goto :goto_a8

    .line 3411
    :cond_a6
    move/from16 v18, v13

    .line 3415
    :goto_a8
    if-eq v13, v9, :cond_10e

    .line 3418
    iget v10, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    packed-switch v10, :pswitch_data_18e

    move-wide/from16 v20, v3

    move v12, v5

    move-wide/from16 v22, v6

    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .end local v6    # "adjAmount":J
    .local v12, "keepWallTimeInvariant":Z
    .local v20, "delta":J
    .local v22, "adjAmount":J
    goto/16 :goto_123

    .line 3430
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v20    # "delta":J
    .end local v22    # "adjAmount":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    .restart local v6    # "adjAmount":J
    :pswitch_b6
    cmp-long v10, v6, v16

    if-lez v10, :cond_bf

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    move-result-wide v16

    goto :goto_c1

    :cond_bf
    move-wide/from16 v16, v14

    :goto_c1
    move-wide/from16 v18, v16

    .line 3431
    .local v18, "tmpT":J
    move-wide/from16 v20, v3

    move-wide/from16 v3, v18

    .end local v18    # "tmpT":J
    .local v3, "tmpT":J
    .restart local v20    # "delta":J
    invoke-direct {v0, v3, v4}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v10

    .line 3432
    .local v10, "immediatePrevTrans":Ljava/lang/Long;
    if-eqz v10, :cond_d8

    .line 3433
    move v12, v5

    move-wide/from16 v22, v6

    .end local v5    # "keepWallTimeInvariant":Z
    .end local v6    # "adjAmount":J
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v22    # "adjAmount":J
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_123

    .line 3435
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v22    # "adjAmount":J
    .restart local v5    # "keepWallTimeInvariant":Z
    .restart local v6    # "adjAmount":J
    :cond_d8
    move v12, v5

    move-wide/from16 v22, v6

    .end local v5    # "keepWallTimeInvariant":Z
    .end local v6    # "adjAmount":J
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v22    # "adjAmount":J
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not locate a time zone transition before "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3420
    .end local v10    # "immediatePrevTrans":Ljava/lang/Long;
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v20    # "delta":J
    .end local v22    # "adjAmount":J
    .local v3, "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    .restart local v6    # "adjAmount":J
    :pswitch_f4
    move-wide/from16 v20, v3

    move v12, v5

    move-wide/from16 v22, v6

    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .end local v6    # "adjAmount":J
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v20    # "delta":J
    .restart local v22    # "adjAmount":J
    cmp-long v3, v22, v16

    if-lez v3, :cond_123

    .line 3421
    invoke-virtual {v0, v14, v15}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_123

    .line 3425
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v20    # "delta":J
    .end local v22    # "adjAmount":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    .restart local v6    # "adjAmount":J
    :pswitch_101
    move-wide/from16 v20, v3

    move v12, v5

    move-wide/from16 v22, v6

    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .end local v6    # "adjAmount":J
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v20    # "delta":J
    .restart local v22    # "adjAmount":J
    cmp-long v3, v22, v16

    if-gez v3, :cond_123

    .line 3426
    invoke-virtual {v0, v14, v15}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    goto :goto_123

    .line 3415
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v20    # "delta":J
    .end local v22    # "adjAmount":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    .restart local v6    # "adjAmount":J
    :cond_10e
    move-wide/from16 v20, v3

    move v12, v5

    move-wide/from16 v22, v6

    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .end local v6    # "adjAmount":J
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v20    # "delta":J
    .restart local v22    # "adjAmount":J
    goto :goto_123

    .line 3405
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v20    # "delta":J
    .end local v22    # "adjAmount":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    :cond_114
    move-wide/from16 v20, v3

    move v12, v5

    move/from16 v18, v13

    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .end local v13    # "newWallTime":I
    .restart local v12    # "keepWallTimeInvariant":Z
    .local v18, "newWallTime":I
    .restart local v20    # "delta":J
    goto :goto_123

    .line 3399
    .end local v11    # "newOffset":I
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v14    # "t":J
    .end local v18    # "newWallTime":I
    .end local v20    # "delta":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    .restart local v13    # "newWallTime":I
    :cond_11a
    move-wide/from16 v20, v3

    move v12, v5

    move/from16 v18, v13

    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .end local v13    # "newWallTime":I
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v18    # "newWallTime":I
    .restart local v20    # "delta":J
    goto :goto_123

    .line 3397
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v18    # "newWallTime":I
    .end local v20    # "delta":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    :cond_120
    move-wide/from16 v20, v3

    move v12, v5

    .line 3443
    .end local v3    # "delta":J
    .end local v5    # "keepWallTimeInvariant":Z
    .restart local v12    # "keepWallTimeInvariant":Z
    .restart local v20    # "delta":J
    :cond_123
    :goto_123
    return-void

    .line 3319
    .end local v8    # "prevOffset":I
    .end local v9    # "prevWallTime":I
    .end local v12    # "keepWallTimeInvariant":Z
    .end local v20    # "delta":J
    .restart local v3    # "delta":J
    .restart local v5    # "keepWallTimeInvariant":Z
    :pswitch_124
    invoke-virtual {v0, v8}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    .line 3320
    .local v6, "era":I
    if-nez v6, :cond_131

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isEra0CountingBackward()Z

    move-result v7

    if-eqz v7, :cond_131

    .line 3321
    neg-int v2, v2

    .line 3329
    .end local v6    # "era":I
    .end local p2    # "amount":I
    .local v2, "amount":I
    :cond_131
    :pswitch_131
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v6

    .line 3330
    .local v6, "oldLenient":Z
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 3331
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v7

    add-int/2addr v7, v2

    invoke-virtual {v0, v1, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 3332
    const/4 v7, 0x5

    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 3333
    if-nez v6, :cond_14d

    .line 3334
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->complete()V

    .line 3335
    invoke-virtual {v0, v6}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 3338
    .end local v6    # "oldLenient":Z
    :cond_14d
    return-void

    .line 3305
    .end local v2    # "amount":I
    .restart local p2    # "amount":I
    :pswitch_14e
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v6

    add-int/2addr v6, v2

    invoke-virtual {v0, v1, v6}, Landroid/icu/util/Calendar;->set(II)V

    .line 3306
    invoke-virtual {v0, v8}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 3307
    return-void

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_14e
        :pswitch_124
        :pswitch_131
        :pswitch_4f
        :pswitch_4f
        :pswitch_4d
        :pswitch_4d
        :pswitch_4d
        :pswitch_4f
        :pswitch_48
        :pswitch_42
        :pswitch_42
        :pswitch_3c
        :pswitch_37
        :pswitch_35
        :pswitch_12
        :pswitch_12
        :pswitch_124
        :pswitch_4d
        :pswitch_131
        :pswitch_4d
        :pswitch_35
        :pswitch_12
        :pswitch_131
    .end packed-switch

    :pswitch_data_18e
    .packed-switch 0x0
        :pswitch_101
        :pswitch_f4
        :pswitch_b6
    .end packed-switch
.end method

.method public whitelist test-api after(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "when"    # Ljava/lang/Object;

    .line 2530
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public whitelist test-api before(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "when"    # Ljava/lang/Object;

    .line 2519
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public final whitelist test-api clear()V
    .registers 5

    .line 2379
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_12

    .line 2380
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v2, v3, v0

    aput v2, v1, v0

    .line 2379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2382
    .end local v0    # "i":I
    :cond_12
    iput-boolean v2, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v2, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v2, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v2, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 2383
    return-void
.end method

.method public final whitelist test-api clear(I)V
    .registers 6
    .param p1, "field"    # I

    .line 2391
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_7

    .line 2392
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    .line 2394
    :cond_7
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2395
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v1, v0, p1

    .line 2396
    const/16 v0, 0x17

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1d

    .line 2397
    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    aput v1, v3, v0

    .line 2398
    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v1, v3, v0

    .line 2400
    :cond_1d
    if-ne p1, v0, :cond_27

    .line 2401
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aput v1, v0, v2

    .line 2402
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v1, v0, v2

    .line 2404
    :cond_27
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 2405
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 4825
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 4827
    .local v0, "other":Landroid/icu/util/Calendar;
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/util/Calendar;->fields:[I

    .line 4828
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Landroid/icu/util/Calendar;->stamp:[I

    .line 4829
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v2, v0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4830
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v2, v0, Landroid/icu/util/Calendar;->stamp:[I

    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4832
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/util/TimeZone;

    iput-object v1, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;
    :try_end_33
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_33} :catch_34

    .line 4833
    return-object v0

    .line 4835
    .end local v0    # "other":Landroid/icu/util/Calendar;
    :catch_34
    move-exception v0

    .line 4837
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Landroid/icu/util/ICUCloneNotSupportedException;

    invoke-direct {v1, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist test-api compareTo(Landroid/icu/util/Calendar;)I
    .registers 7
    .param p1, "that"    # Landroid/icu/util/Calendar;

    .line 3479
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 3480
    .local v0, "v":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_11

    const/4 v2, -0x1

    goto :goto_18

    :cond_11
    cmp-long v2, v0, v2

    if-lez v2, :cond_17

    const/4 v2, 0x1

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    return v2
.end method

.method public bridge synthetic whitelist test-api compareTo(Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 645
    check-cast p1, Landroid/icu/util/Calendar;

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->compareTo(Landroid/icu/util/Calendar;)I

    move-result p1

    return p1
.end method

.method protected whitelist test-api complete()V
    .registers 2

    .line 2421
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    .line 2422
    :cond_7
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    if-nez v0, :cond_13

    .line 2423
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    .line 2424
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 2425
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    .line 2427
    :cond_13
    return-void
.end method

.method protected whitelist test-api computeFields()V
    .registers 14

    .line 5125
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5126
    .local v0, "offsets":[I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    iget-wide v2, p0, Landroid/icu/util/Calendar;->time:J

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5127
    iget-wide v1, p0, Landroid/icu/util/Calendar;->time:J

    aget v3, v0, v4

    int-to-long v5, v3

    add-long/2addr v1, v5

    const/4 v3, 0x1

    aget v5, v0, v3

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 5130
    .local v1, "localMillis":J
    iget v5, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    .line 5131
    .local v5, "mask":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1b
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v7, v7

    if-ge v6, v7, :cond_32

    .line 5132
    and-int/lit8 v7, v5, 0x1

    if-nez v7, :cond_29

    .line 5133
    iget-object v7, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v3, v7, v6

    goto :goto_2d

    .line 5135
    :cond_29
    iget-object v7, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v4, v7, v6

    .line 5137
    :goto_2d
    shr-int/lit8 v5, v5, 0x1

    .line 5131
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    .line 5149
    .end local v6    # "i":I
    :cond_32
    const-wide/32 v6, 0x5265c00

    invoke-static {v1, v2, v6, v7}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    move-result-wide v8

    .line 5151
    .local v8, "days":J
    iget-object v10, p0, Landroid/icu/util/Calendar;->fields:[I

    long-to-int v11, v8

    const v12, 0x253d8c    # 3.419992E-39f

    add-int/2addr v11, v12

    const/16 v12, 0x14

    aput v11, v10, v12

    .line 5153
    iget-object v10, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v10, v10, v12

    invoke-direct {p0, v10}, Landroid/icu/util/Calendar;->computeGregorianAndDOWFields(I)V

    .line 5159
    iget-object v10, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v10, v10, v12

    invoke-virtual {p0, v10}, Landroid/icu/util/Calendar;->handleComputeFields(I)V

    .line 5163
    invoke-direct {p0}, Landroid/icu/util/Calendar;->computeWeekFields()V

    .line 5168
    mul-long/2addr v6, v8

    sub-long v6, v1, v6

    long-to-int v6, v6

    .line 5169
    .local v6, "millisInDay":I
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v10, 0x15

    aput v6, v7, v10

    .line 5170
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit16 v10, v6, 0x3e8

    const/16 v11, 0xe

    aput v10, v7, v11

    .line 5171
    div-int/lit16 v6, v6, 0x3e8

    .line 5172
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit8 v10, v6, 0x3c

    const/16 v11, 0xd

    aput v10, v7, v11

    .line 5173
    div-int/lit8 v6, v6, 0x3c

    .line 5174
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit8 v10, v6, 0x3c

    const/16 v11, 0xc

    aput v10, v7, v11

    .line 5175
    div-int/lit8 v6, v6, 0x3c

    .line 5176
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v10, 0xb

    aput v6, v7, v10

    .line 5177
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    div-int/lit8 v10, v6, 0xc

    const/16 v11, 0x9

    aput v10, v7, v11

    .line 5178
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    rem-int/lit8 v10, v6, 0xc

    const/16 v11, 0xa

    aput v10, v7, v11

    .line 5179
    iget-object v7, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v10, 0xf

    aget v4, v0, v4

    aput v4, v7, v10

    .line 5180
    iget-object v4, p0, Landroid/icu/util/Calendar;->fields:[I

    const/16 v7, 0x10

    aget v3, v0, v3

    aput v3, v4, v7

    .line 5181
    return-void
.end method

.method protected final whitelist test-api computeGregorianFields(I)V
    .registers 19
    .param p1, "julianDay"    # I

    .line 5217
    move-object/from16 v0, p0

    const v1, 0x1a4452

    sub-int v1, p1, v1

    int-to-long v1, v1

    .line 5223
    .local v1, "gregorianEpochDay":J
    const/4 v3, 0x1

    new-array v4, v3, [I

    .line 5224
    .local v4, "rem":[I
    const v5, 0x23ab1

    invoke-static {v1, v2, v5, v4}, Landroid/icu/util/Calendar;->floorDivide(JI[I)I

    move-result v5

    .line 5225
    .local v5, "n400":I
    const/4 v6, 0x0

    aget v7, v4, v6

    const v8, 0x8eac

    invoke-static {v7, v8, v4}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v7

    .line 5226
    .local v7, "n100":I
    aget v8, v4, v6

    const/16 v9, 0x5b5

    invoke-static {v8, v9, v4}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v8

    .line 5227
    .local v8, "n4":I
    aget v9, v4, v6

    const/16 v10, 0x16d

    invoke-static {v9, v10, v4}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v9

    .line 5228
    .local v9, "n1":I
    mul-int/lit16 v10, v5, 0x190

    mul-int/lit8 v11, v7, 0x64

    add-int/2addr v10, v11

    mul-int/lit8 v11, v8, 0x4

    add-int/2addr v10, v11

    add-int/2addr v10, v9

    .line 5229
    .local v10, "year":I
    aget v11, v4, v6

    .line 5230
    .local v11, "dayOfYear":I
    const/4 v12, 0x4

    if-eq v7, v12, :cond_40

    if-ne v9, v12, :cond_3d

    goto :goto_40

    .line 5233
    :cond_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_42

    .line 5231
    :cond_40
    :goto_40
    const/16 v11, 0x16d

    .line 5236
    :goto_42
    and-int/lit8 v12, v10, 0x3

    if-nez v12, :cond_4f

    rem-int/lit8 v12, v10, 0x64

    if-nez v12, :cond_4e

    rem-int/lit16 v12, v10, 0x190

    if-nez v12, :cond_4f

    :cond_4e
    move v6, v3

    .line 5239
    .local v6, "isLeap":Z
    :cond_4f
    const/4 v12, 0x0

    .line 5240
    .local v12, "correction":I
    if-eqz v6, :cond_55

    const/16 v13, 0x3c

    goto :goto_57

    :cond_55
    const/16 v13, 0x3b

    .line 5241
    .local v13, "march1":I
    :goto_57
    const/4 v14, 0x2

    if-lt v11, v13, :cond_60

    if-eqz v6, :cond_5e

    move v15, v3

    goto :goto_5f

    :cond_5e
    move v15, v14

    :goto_5f
    move v12, v15

    .line 5242
    :cond_60
    add-int v15, v11, v12

    mul-int/lit8 v15, v15, 0xc

    add-int/lit8 v15, v15, 0x6

    div-int/lit16 v15, v15, 0x16f

    .line 5243
    .local v15, "month":I
    sget-object v16, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v16, v16, v15

    .line 5244
    if-eqz v6, :cond_6f

    const/4 v14, 0x3

    :cond_6f
    aget v14, v16, v14

    sub-int v14, v11, v14

    add-int/2addr v14, v3

    .line 5246
    .local v14, "dayOfMonth":I
    iput v10, v0, Landroid/icu/util/Calendar;->gregorianYear:I

    .line 5247
    iput v15, v0, Landroid/icu/util/Calendar;->gregorianMonth:I

    .line 5248
    iput v14, v0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    .line 5249
    add-int/lit8 v3, v11, 0x1

    iput v3, v0, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    .line 5250
    return-void
.end method

.method protected whitelist test-api computeGregorianMonthStart(II)I
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 6231
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p2, :cond_8

    const/16 v2, 0xb

    if-le p2, v2, :cond_13

    .line 6232
    :cond_8
    new-array v2, v1, [I

    .line 6233
    .local v2, "rem":[I
    const/16 v3, 0xc

    invoke-static {p2, v3, v2}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    move-result v3

    add-int/2addr p1, v3

    .line 6234
    aget p2, v2, v0

    .line 6237
    .end local v2    # "rem":[I
    :cond_13
    rem-int/lit8 v2, p1, 0x4

    if-nez v2, :cond_20

    rem-int/lit8 v2, p1, 0x64

    if-nez v2, :cond_1f

    rem-int/lit16 v2, p1, 0x190

    if-nez v2, :cond_20

    :cond_1f
    move v0, v1

    .line 6238
    .local v0, "isLeap":Z
    :cond_20
    add-int/lit8 v2, p1, -0x1

    .line 6242
    .local v2, "y":I
    mul-int/lit16 v3, v2, 0x16d

    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x64

    invoke-static {v2, v4}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v4

    sub-int/2addr v3, v4

    .line 6243
    const/16 v4, 0x190

    invoke-static {v2, v4}, Landroid/icu/util/Calendar;->floorDivide(II)I

    move-result v4

    add-int/2addr v3, v4

    const v4, 0x1a4452

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    .line 6247
    .local v3, "julianDay":I
    if-eqz p2, :cond_4b

    .line 6248
    sget-object v1, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    aget-object v1, v1, p2

    if-eqz v0, :cond_47

    const/4 v4, 0x3

    goto :goto_48

    :cond_47
    const/4 v4, 0x2

    :goto_48
    aget v1, v1, v4

    add-int/2addr v3, v1

    .line 6251
    :cond_4b
    return v3
.end method

.method protected whitelist test-api computeJulianDay()I
    .registers 5

    .line 5973
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v1, 0x14

    aget v0, v0, v1

    const/4 v2, 0x2

    if-lt v0, v2, :cond_29

    .line 5974
    const/16 v0, 0x8

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v2}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5975
    .local v0, "bestStamp":I
    const/16 v2, 0x11

    const/16 v3, 0x13

    invoke-virtual {p0, v2, v3, v0}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5976
    const/16 v2, 0x17

    invoke-virtual {p0, v2, v2, v0}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v0

    .line 5977
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-gt v0, v2, :cond_29

    .line 5978
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v1

    return v1

    .line 5982
    .end local v0    # "bestStamp":I
    :cond_29
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFieldResolutionTable()[[[I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    .line 5983
    .local v0, "bestField":I
    if-gez v0, :cond_34

    .line 5984
    const/4 v0, 0x5

    .line 5987
    :cond_34
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    move-result v1

    return v1
.end method

.method protected whitelist test-api computeMillisInDay()I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5772
    const/4 v0, 0x0

    .line 5777
    .local v0, "millisInDay":I
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v2, 0xb

    aget v1, v1, v2

    .line 5778
    .local v1, "hourOfDayStamp":I
    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v4, 0xa

    aget v3, v3, v4

    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v6, 0x9

    aget v5, v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5779
    .local v3, "hourStamp":I
    if-le v3, v1, :cond_1b

    move v5, v3

    goto :goto_1c

    :cond_1b
    move v5, v1

    .line 5782
    .local v5, "bestStamp":I
    :goto_1c
    const/16 v7, 0xc

    if-eqz v5, :cond_33

    .line 5783
    if-ne v5, v1, :cond_28

    .line 5786
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_33

    .line 5790
    :cond_28
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 5791
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    mul-int/2addr v2, v7

    add-int/2addr v0, v2

    .line 5797
    :cond_33
    :goto_33
    mul-int/lit8 v0, v0, 0x3c

    .line 5798
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 5799
    mul-int/lit8 v0, v0, 0x3c

    .line 5800
    const/16 v2, 0xd

    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 5801
    mul-int/lit16 v0, v0, 0x3e8

    .line 5802
    const/16 v2, 0xe

    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 5804
    return v0
.end method

.method protected greylist-max-o computeMillisInDayLong()J
    .registers 12
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5818
    const-wide/16 v0, 0x0

    .line 5823
    .local v0, "millisInDay":J
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    .line 5824
    .local v2, "hourOfDayStamp":I
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v5, 0xa

    aget v4, v4, v5

    iget-object v6, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v7, 0x9

    aget v6, v6, v7

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 5825
    .local v4, "hourStamp":I
    if-le v4, v2, :cond_1c

    move v6, v4

    goto :goto_1d

    :cond_1c
    move v6, v2

    .line 5828
    .local v6, "bestStamp":I
    :goto_1d
    const/16 v8, 0xc

    if-eqz v6, :cond_37

    .line 5829
    if-ne v6, v2, :cond_2a

    .line 5832
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v0, v9

    goto :goto_37

    .line 5836
    :cond_2a
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    int-to-long v9, v3

    add-long/2addr v0, v9

    .line 5837
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    mul-int/2addr v3, v8

    int-to-long v9, v3

    add-long/2addr v0, v9

    .line 5843
    :cond_37
    :goto_37
    const-wide/16 v9, 0x3c

    mul-long/2addr v0, v9

    .line 5844
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v0, v7

    .line 5845
    mul-long/2addr v0, v9

    .line 5846
    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v0, v7

    .line 5847
    const-wide/16 v7, 0x3e8

    mul-long/2addr v0, v7

    .line 5848
    const/16 v3, 0xe

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    int-to-long v7, v3

    add-long/2addr v0, v7

    .line 5850
    return-wide v0
.end method

.method protected whitelist test-api computeTime()V
    .registers 14

    .line 5547
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-nez v0, :cond_9

    .line 5548
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->validateFields()V

    .line 5552
    :cond_9
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeJulianDay()I

    move-result v0

    .line 5554
    .local v0, "julianDay":I
    invoke-static {v0}, Landroid/icu/util/Calendar;->julianDayToMillis(I)J

    move-result-wide v1

    .line 5563
    .local v1, "millis":J
    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v4, 0x15

    aget v3, v3, v4

    const/4 v5, 0x2

    if-lt v3, v5, :cond_2f

    .line 5564
    const/16 v3, 0x9

    const/16 v6, 0xe

    const/4 v7, 0x0

    invoke-virtual {p0, v3, v6, v7}, Landroid/icu/util/Calendar;->newestStamp(III)I

    move-result v3

    iget-object v6, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v6, v6, v4

    if-gt v3, v6, :cond_2f

    .line 5565
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    int-to-long v3, v3

    .local v3, "millisInDay":J
    goto :goto_57

    .line 5567
    .end local v3    # "millisInDay":J
    :cond_2f
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 5568
    .local v3, "hour":I
    const/16 v4, 0xa

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 5574
    const/16 v4, 0x224

    if-le v3, v4, :cond_51

    .line 5575
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeMillisInDayLong()J

    move-result-wide v6

    move-wide v3, v6

    .local v6, "millisInDay":J
    goto :goto_57

    .line 5577
    .end local v6    # "millisInDay":J
    :cond_51
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeMillisInDay()I

    move-result v4

    int-to-long v6, v4

    move-wide v3, v6

    .line 5581
    .local v3, "millisInDay":J
    :goto_57
    iget-object v6, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/16 v7, 0xf

    aget v6, v6, v7

    const/16 v8, 0x10

    if-ge v6, v5, :cond_c2

    iget-object v6, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v6, v6, v8

    if-lt v6, v5, :cond_68

    goto :goto_c2

    .line 5616
    :cond_68
    iget-boolean v6, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-eqz v6, :cond_7c

    iget v6, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne v6, v5, :cond_71

    goto :goto_7c

    .line 5645
    :cond_71
    add-long v5, v1, v3

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/icu/util/Calendar;->computeZoneOffset(JJ)I

    move-result v7

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/icu/util/Calendar;->time:J

    goto :goto_d1

    .line 5620
    :cond_7c
    :goto_7c
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/icu/util/Calendar;->computeZoneOffset(JJ)I

    move-result v5

    .line 5621
    .local v5, "zoneOffset":I
    add-long v6, v1, v3

    int-to-long v8, v5

    sub-long/2addr v6, v8

    .line 5623
    .local v6, "tmpTime":J
    iget-object v8, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v8, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v8

    .line 5627
    .local v8, "zoneOffset1":I
    if-eq v5, v8, :cond_bf

    .line 5628
    iget-boolean v9, p0, Landroid/icu/util/Calendar;->lenient:Z

    if-eqz v9, :cond_b7

    .line 5632
    nop

    .line 5636
    invoke-direct {p0, v6, v7}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    move-result-object v9

    .line 5637
    .local v9, "immediatePrevTransition":Ljava/lang/Long;
    if-eqz v9, :cond_9e

    .line 5640
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    .line 5641
    .end local v9    # "immediatePrevTransition":Ljava/lang/Long;
    goto :goto_c1

    .line 5638
    .restart local v9    # "immediatePrevTransition":Ljava/lang/Long;
    :cond_9e
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not locate a time zone transition before "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 5629
    .end local v9    # "immediatePrevTransition":Ljava/lang/Long;
    :cond_b7
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "The specified wall time does not exist due to time zone offset transition."

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 5642
    :cond_bf
    iput-wide v6, p0, Landroid/icu/util/Calendar;->time:J

    .line 5644
    .end local v5    # "zoneOffset":I
    .end local v6    # "tmpTime":J
    .end local v8    # "zoneOffset1":I
    :goto_c1
    goto :goto_d1

    .line 5583
    :cond_c2
    :goto_c2
    add-long v5, v1, v3

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v8

    add-int/2addr v7, v8

    int-to-long v7, v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Landroid/icu/util/Calendar;->time:J

    .line 5648
    :goto_d1
    return-void
.end method

.method protected whitelist test-api computeZoneOffset(JI)I
    .registers 18
    .param p1, "millis"    # J
    .param p3, "millisInDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5864
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 5865
    .local v6, "offsets":[I
    move/from16 v0, p3

    int-to-long v1, v0

    add-long v2, p1, v1

    .line 5866
    .local v2, "wall":J
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of v1, v1, Landroid/icu/util/BasicTimeZone;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v1, :cond_2c

    .line 5867
    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne v1, v8, :cond_17

    sget-object v1, Landroid/icu/util/BasicTimeZone$LocalOption;->LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    goto :goto_19

    :cond_17
    sget-object v1, Landroid/icu/util/BasicTimeZone$LocalOption;->FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    :goto_19
    move-object v4, v1

    .line 5868
    .local v4, "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    if-ne v1, v8, :cond_21

    sget-object v1, Landroid/icu/util/BasicTimeZone$LocalOption;->FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    goto :goto_23

    :cond_21
    sget-object v1, Landroid/icu/util/BasicTimeZone$LocalOption;->LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    :goto_23
    move-object v5, v1

    .line 5869
    .local v5, "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V

    .line 5870
    .end local v4    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local v5    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    goto :goto_6d

    .line 5872
    :cond_2c
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1, v2, v3, v8, v6}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5874
    const/4 v1, 0x0

    .line 5875
    .local v1, "sawRecentNegativeShift":Z
    iget v4, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    if-ne v4, v8, :cond_5a

    .line 5877
    aget v4, v6, v7

    aget v5, v6, v8

    add-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v4, v2, v4

    .line 5882
    .local v4, "tgmt":J
    iget-object v9, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v10, 0x1499700

    sub-long v10, v4, v10

    invoke-virtual {v9, v10, v11}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v9

    .line 5883
    .local v9, "offsetBefore6":I
    aget v10, v6, v7

    aget v11, v6, v8

    add-int/2addr v10, v11

    sub-int/2addr v10, v9

    .line 5885
    .local v10, "offsetDelta":I
    nop

    .line 5886
    if-gez v10, :cond_5a

    .line 5887
    const/4 v1, 0x1

    .line 5891
    iget-object v11, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    int-to-long v12, v10

    add-long/2addr v12, v2

    invoke-virtual {v11, v12, v13, v8, v6}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5894
    .end local v4    # "tgmt":J
    .end local v9    # "offsetBefore6":I
    .end local v10    # "offsetDelta":I
    :cond_5a
    if-nez v1, :cond_6d

    iget v4, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne v4, v8, :cond_6d

    .line 5900
    aget v4, v6, v7

    aget v5, v6, v8

    add-int/2addr v4, v5

    int-to-long v4, v4

    sub-long v4, v2, v4

    .line 5901
    .restart local v4    # "tgmt":J
    iget-object v9, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v9, v4, v5, v7, v6}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5904
    .end local v1    # "sawRecentNegativeShift":Z
    .end local v4    # "tgmt":J
    :cond_6d
    :goto_6d
    aget v1, v6, v7

    aget v4, v6, v8

    add-int/2addr v1, v4

    return v1
.end method

.method protected greylist-max-o computeZoneOffset(JJ)I
    .registers 18
    .param p1, "millis"    # J
    .param p3, "millisInDay"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 5917
    const/4 v0, 0x2

    new-array v6, v0, [I

    .line 5918
    .local v6, "offsets":[I
    add-long v2, p1, p3

    .line 5919
    .local v2, "wall":J
    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    instance-of v0, v0, Landroid/icu/util/BasicTimeZone;

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v0, :cond_2a

    .line 5920
    iget v0, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne v0, v8, :cond_14

    sget-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    goto :goto_16

    :cond_14
    sget-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    :goto_16
    move-object v4, v0

    .line 5921
    .local v4, "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    iget v0, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    if-ne v0, v8, :cond_1e

    sget-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->FORMER:Landroid/icu/util/BasicTimeZone$LocalOption;

    goto :goto_20

    :cond_1e
    sget-object v0, Landroid/icu/util/BasicTimeZone$LocalOption;->LATTER:Landroid/icu/util/BasicTimeZone$LocalOption;

    :goto_20
    move-object v5, v0

    .line 5922
    .local v5, "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    move-object v1, v0

    check-cast v1, Landroid/icu/util/BasicTimeZone;

    invoke-virtual/range {v1 .. v6}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JLandroid/icu/util/BasicTimeZone$LocalOption;Landroid/icu/util/BasicTimeZone$LocalOption;[I)V

    .line 5923
    .end local v4    # "nonExistingTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    .end local v5    # "duplicatedTimeOpt":Landroid/icu/util/BasicTimeZone$LocalOption;
    goto :goto_6b

    .line 5925
    :cond_2a
    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, v2, v3, v8, v6}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5927
    const/4 v0, 0x0

    .line 5928
    .local v0, "sawRecentNegativeShift":Z
    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    if-ne v1, v8, :cond_58

    .line 5930
    aget v1, v6, v7

    aget v4, v6, v8

    add-int/2addr v1, v4

    int-to-long v4, v1

    sub-long v4, v2, v4

    .line 5935
    .local v4, "tgmt":J
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    const-wide/32 v9, 0x1499700

    sub-long v9, v4, v9

    invoke-virtual {v1, v9, v10}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v1

    .line 5936
    .local v1, "offsetBefore6":I
    aget v9, v6, v7

    aget v10, v6, v8

    add-int/2addr v9, v10

    sub-int/2addr v9, v1

    .line 5938
    .local v9, "offsetDelta":I
    nop

    .line 5939
    if-gez v9, :cond_58

    .line 5940
    const/4 v0, 0x1

    .line 5944
    iget-object v10, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    int-to-long v11, v9

    add-long/2addr v11, v2

    invoke-virtual {v10, v11, v12, v8, v6}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5947
    .end local v1    # "offsetBefore6":I
    .end local v4    # "tgmt":J
    .end local v9    # "offsetDelta":I
    :cond_58
    if-nez v0, :cond_6b

    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    if-ne v1, v8, :cond_6b

    .line 5953
    aget v1, v6, v7

    aget v4, v6, v8

    add-int/2addr v1, v4

    int-to-long v4, v1

    sub-long v4, v2, v4

    .line 5954
    .restart local v4    # "tgmt":J
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v1, v4, v5, v7, v6}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    .line 5957
    .end local v0    # "sawRecentNegativeShift":Z
    .end local v4    # "tgmt":J
    :cond_6b
    :goto_6b
    aget v0, v6, v7

    aget v1, v6, v8

    add-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 9
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2440
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2441
    return v0

    .line 2443
    :cond_4
    const/4 v1, 0x1

    if-ne p0, p1, :cond_8

    .line 2444
    return v1

    .line 2446
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 2447
    return v0

    .line 2450
    :cond_13
    move-object v2, p1

    check-cast v2, Landroid/icu/util/Calendar;

    .line 2452
    .local v2, "that":Landroid/icu/util/Calendar;
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 2453
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-virtual {v2}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_2e

    move v0, v1

    goto :goto_2f

    :cond_2e
    nop

    .line 2452
    :goto_2f
    return v0
.end method

.method public whitelist test-api fieldDifference(Ljava/util/Date;I)I
    .registers 14
    .param p1, "when"    # Ljava/util/Date;
    .param p2, "field"    # I

    .line 4213
    const/4 v0, 0x0

    .line 4214
    .local v0, "min":I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    .line 4215
    .local v1, "startMs":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    .line 4222
    .local v3, "targetMs":J
    cmp-long v5, v1, v3

    const/4 v6, 0x1

    if-gez v5, :cond_58

    .line 4223
    const/4 v5, 0x1

    .line 4226
    .local v5, "max":I
    :goto_f
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4227
    invoke-virtual {p0, p2, v5}, Landroid/icu/util/Calendar;->add(II)V

    .line 4228
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 4229
    .local v7, "ms":J
    cmp-long v9, v7, v3

    if-nez v9, :cond_1e

    .line 4230
    return v5

    .line 4231
    :cond_1e
    cmp-long v9, v7, v3

    if-lez v9, :cond_44

    .line 4232
    nop

    .line 4245
    .end local v7    # "ms":J
    :goto_23
    sub-int v7, v5, v0

    if-le v7, v6, :cond_43

    .line 4246
    sub-int v7, v5, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    .line 4247
    .local v7, "t":I
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4248
    invoke-virtual {p0, p2, v7}, Landroid/icu/util/Calendar;->add(II)V

    .line 4249
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 4250
    .local v8, "ms":J
    cmp-long v10, v8, v3

    if-nez v10, :cond_3b

    .line 4251
    return v7

    .line 4252
    :cond_3b
    cmp-long v10, v8, v3

    if-lez v10, :cond_41

    .line 4253
    move v5, v7

    goto :goto_42

    .line 4255
    :cond_41
    move v0, v7

    .line 4257
    .end local v7    # "t":I
    .end local v8    # "ms":J
    :goto_42
    goto :goto_23

    .line 4245
    .end local v5    # "max":I
    :cond_43
    goto :goto_9d

    .line 4233
    .restart local v5    # "max":I
    .local v7, "ms":J
    :cond_44
    const v9, 0x7fffffff

    if-ge v5, v9, :cond_52

    .line 4234
    move v0, v5

    .line 4235
    shl-int/lit8 v5, v5, 0x1

    .line 4236
    if-gez v5, :cond_51

    .line 4237
    const v5, 0x7fffffff

    .line 4243
    .end local v7    # "ms":J
    :cond_51
    goto :goto_f

    .line 4241
    .restart local v7    # "ms":J
    :cond_52
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 4258
    .end local v5    # "max":I
    .end local v7    # "ms":J
    :cond_58
    cmp-long v5, v1, v3

    if-lez v5, :cond_9d

    .line 4267
    const/4 v5, -0x1

    .line 4270
    .restart local v5    # "max":I
    :goto_5d
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4271
    invoke-virtual {p0, p2, v5}, Landroid/icu/util/Calendar;->add(II)V

    .line 4272
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 4273
    .restart local v7    # "ms":J
    cmp-long v9, v7, v3

    if-nez v9, :cond_6c

    .line 4274
    return v5

    .line 4275
    :cond_6c
    cmp-long v9, v7, v3

    if-gez v9, :cond_91

    .line 4276
    nop

    .line 4287
    .end local v7    # "ms":J
    :goto_71
    sub-int v7, v0, v5

    if-le v7, v6, :cond_9e

    .line 4288
    sub-int v7, v5, v0

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v7, v0

    .line 4289
    .local v7, "t":I
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4290
    invoke-virtual {p0, p2, v7}, Landroid/icu/util/Calendar;->add(II)V

    .line 4291
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 4292
    .restart local v8    # "ms":J
    cmp-long v10, v8, v3

    if-nez v10, :cond_89

    .line 4293
    return v7

    .line 4294
    :cond_89
    cmp-long v10, v8, v3

    if-gez v10, :cond_8f

    .line 4295
    move v5, v7

    goto :goto_90

    .line 4297
    :cond_8f
    move v0, v7

    .line 4299
    .end local v7    # "t":I
    .end local v8    # "ms":J
    :goto_90
    goto :goto_71

    .line 4278
    .local v7, "ms":J
    :cond_91
    move v0, v5

    .line 4279
    shl-int/lit8 v5, v5, 0x1

    .line 4280
    if-eqz v5, :cond_97

    .line 4285
    .end local v7    # "ms":J
    goto :goto_5d

    .line 4282
    .restart local v7    # "ms":J
    :cond_97
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6}, Ljava/lang/RuntimeException;-><init>()V

    throw v6

    .line 4258
    .end local v5    # "max":I
    .end local v7    # "ms":J
    :cond_9d
    :goto_9d
    nop

    .line 4302
    :cond_9e
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 4303
    invoke-virtual {p0, p2, v0}, Landroid/icu/util/Calendar;->add(II)V

    .line 4304
    return v0
.end method

.method protected whitelist test-api fieldName(I)Ljava/lang/String;
    .registers 5
    .param p1, "field"    # I

    .line 6519
    :try_start_0
    sget-object v0, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    .line 6520
    :catch_5
    move-exception v0

    .line 6521
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final whitelist test-api get(I)I
    .registers 3
    .param p1, "field"    # I

    .line 2080
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    .line 2081
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api getActualMaximum(I)I
    .registers 6
    .param p1, "field"    # I

    .line 2558
    const/16 v0, 0x13

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_5c

    .line 2600
    :pswitch_7
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    move-result v0

    .local v0, "result":I
    goto :goto_5a

    .line 2595
    .end local v0    # "result":I
    :pswitch_14
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->inTemporalLeapYear()Z

    move-result v0

    const/16 v1, 0x17

    if-eqz v0, :cond_21

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v0

    goto :goto_25

    :cond_21
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    .line 2596
    .restart local v0    # "result":I
    :goto_25
    goto :goto_5a

    .line 2570
    .end local v0    # "result":I
    :pswitch_26
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Calendar;

    .line 2571
    .local v3, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 2572
    invoke-virtual {v3, p1, v1}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2573
    invoke-virtual {v3, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    .line 2575
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "result":I
    goto :goto_5a

    .line 2561
    .end local v0    # "result":I
    :pswitch_3b
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/icu/util/Calendar;

    .line 2562
    .restart local v3    # "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v3, v2}, Landroid/icu/util/Calendar;->setLenient(Z)V

    .line 2563
    invoke-virtual {v3, p1, v1}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    .line 2564
    invoke-virtual {v3, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v0

    .line 2566
    .end local v3    # "cal":Landroid/icu/util/Calendar;
    .restart local v0    # "result":I
    goto :goto_5a

    .line 2591
    .end local v0    # "result":I
    :pswitch_55
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v0

    .line 2592
    .restart local v0    # "result":I
    nop

    .line 2603
    :goto_5a
    return v0

    nop

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_55
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_3b
        :pswitch_26
        :pswitch_55
        :pswitch_7
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_55
        :pswitch_7
        :pswitch_55
        :pswitch_7
        :pswitch_55
        :pswitch_55
        :pswitch_7
        :pswitch_14
    .end packed-switch
.end method

.method public whitelist test-api getActualMinimum(I)I
    .registers 4
    .param p1, "field"    # I

    .line 2630
    packed-switch p1, :pswitch_data_16

    .line 2649
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    move-result v0

    .local v0, "result":I
    goto :goto_15

    .line 2644
    .end local v0    # "result":I
    :pswitch_10
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    .line 2645
    .restart local v0    # "result":I
    nop

    .line 2652
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x7
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_3
        :pswitch_10
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist test-api getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "loc"    # Landroid/icu/util/ULocale;

    .line 3502
    invoke-static {p0, p3, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDateTimeFormat(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    .line 3493
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getDayOfWeekType(I)I
    .registers 7
    .param p1, "dayOfWeek"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4715
    const/4 v0, 0x1

    if-lt p1, v0, :cond_4c

    const/4 v1, 0x7

    if-gt p1, v1, :cond_4c

    .line 4718
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1a

    .line 4719
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-eq p1, v1, :cond_13

    .line 4720
    return v4

    .line 4721
    :cond_13
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez v1, :cond_18

    goto :goto_19

    :cond_18
    move v0, v3

    :goto_19
    return v0

    .line 4723
    :cond_1a
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ge v1, v2, :cond_29

    .line 4724
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-lt p1, v1, :cond_28

    iget v1, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-le p1, v1, :cond_32

    .line 4725
    :cond_28
    return v4

    .line 4728
    :cond_29
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-le p1, v1, :cond_32

    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ge p1, v1, :cond_32

    .line 4729
    return v4

    .line 4732
    :cond_32
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v1, :cond_3d

    .line 4733
    iget v1, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    if-nez v1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, v3

    :goto_3c
    return v0

    .line 4735
    :cond_3d
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne p1, v1, :cond_4b

    .line 4736
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    const v2, 0x5265c00

    if-lt v1, v2, :cond_49

    goto :goto_4a

    :cond_49
    const/4 v0, 0x3

    :goto_4a
    return v0

    .line 4738
    :cond_4b
    return v0

    .line 4716
    :cond_4c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid day of week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected greylist-max-o getDefaultDayInMonth(II)I
    .registers 4
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 6086
    const/4 v0, 0x1

    return v0
.end method

.method protected greylist-max-o getDefaultMonthInYear(I)I
    .registers 3
    .param p1, "extendedYear"    # I

    .line 6072
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 3
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    .line 3456
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .registers 3
    .param p1, "loc"    # Ljava/util/Locale;

    .line 3449
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getFieldCount()I
    .registers 2

    .line 6350
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v0, v0

    return v0
.end method

.method protected whitelist test-api getFieldResolutionTable()[[[I
    .registers 2

    .line 5998
    sget-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public whitelist test-api getFirstDayOfWeek()I
    .registers 2

    .line 4470
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public final whitelist test-api getGreatestMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 4668
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method protected final whitelist test-api getGregorianDayOfMonth()I
    .registers 2

    .line 6341
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    return v0
.end method

.method protected final whitelist test-api getGregorianDayOfYear()I
    .registers 2

    .line 6332
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    return v0
.end method

.method protected final whitelist test-api getGregorianMonth()I
    .registers 2

    .line 6323
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianMonth:I

    return v0
.end method

.method protected final whitelist test-api getGregorianYear()I
    .registers 2

    .line 6314
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianYear:I

    return v0
.end method

.method public final whitelist test-api getLeastMaximum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 4678
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api getLimit(II)I
    .registers 7
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 4570
    packed-switch p1, :pswitch_data_3c

    .line 4606
    :pswitch_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    move-result v0

    return v0

    .line 4584
    :pswitch_8
    sget-object v0, Landroid/icu/util/Calendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0

    .line 4589
    :pswitch_f
    const/4 v0, 0x1

    if-nez p2, :cond_1b

    .line 4590
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ne v1, v0, :cond_19

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    .local v0, "limit":I
    :goto_1a
    goto :goto_3a

    .line 4591
    .end local v0    # "limit":I
    :cond_1b
    if-ne p2, v0, :cond_1f

    .line 4592
    const/4 v0, 0x1

    .restart local v0    # "limit":I
    goto :goto_3a

    .line 4594
    .end local v0    # "limit":I
    :cond_1f
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    .line 4595
    .local v0, "minDaysInFirst":I
    const/4 v1, 0x5

    invoke-virtual {p0, v1, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    move-result v1

    .line 4596
    .local v1, "daysInMonth":I
    const/4 v2, 0x2

    if-ne p2, v2, :cond_32

    .line 4597
    rsub-int/lit8 v2, v0, 0x7

    add-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x7

    move v0, v2

    .local v2, "limit":I
    goto :goto_3a

    .line 4599
    .end local v2    # "limit":I
    :cond_32
    add-int/lit8 v2, v1, 0x6

    rsub-int/lit8 v3, v0, 0x7

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x7

    move v0, v2

    .line 4602
    .end local v1    # "daysInMonth":I
    .local v0, "limit":I
    :goto_3a
    return v0

    nop

    :pswitch_data_3c
    .packed-switch 0x4
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_3
        :pswitch_8
        :pswitch_8
        :pswitch_8
    .end packed-switch
.end method

.method public final greylist getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .registers 3
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    .line 6621
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    if-ne p1, v0, :cond_7

    .line 6622
    iget-object v0, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    goto :goto_9

    :cond_7
    iget-object v0, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    .line 6621
    :goto_9
    return-object v0
.end method

.method public final whitelist test-api getMaximum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 4658
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getMinimalDaysInFirstWeek()I
    .registers 2

    .line 4507
    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public final whitelist test-api getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 4648
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    move-result v0

    return v0
.end method

.method public final greylist-max-o getRelatedYear()I
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2255
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 2256
    .local v0, "year":I
    sget-object v1, Landroid/icu/impl/CalType;->GREGORIAN:Landroid/icu/impl/CalType;

    .line 2257
    .local v1, "type":Landroid/icu/impl/CalType;
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2258
    .local v2, "typeString":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/CalType;->values()[Landroid/icu/impl/CalType;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v4, :cond_25

    aget-object v6, v3, v5

    .line 2259
    .local v6, "testType":Landroid/icu/impl/CalType;
    invoke-virtual {v6}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22

    .line 2260
    move-object v1, v6

    .line 2261
    goto :goto_25

    .line 2258
    .end local v6    # "testType":Landroid/icu/impl/CalType;
    :cond_22
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 2264
    :cond_25
    :goto_25
    sget-object v3, Landroid/icu/util/Calendar$1;->$SwitchMap$android$icu$impl$CalType:[I

    invoke-virtual {v1}, Landroid/icu/impl/CalType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_4e

    :pswitch_30
    goto :goto_4d

    .line 2266
    :pswitch_31
    add-int/lit16 v0, v0, 0x26e

    goto :goto_4d

    .line 2286
    :pswitch_34
    invoke-static {v0}, Landroid/icu/util/Calendar;->gregoYearFromIslamicStart(I)I

    move-result v0

    goto :goto_4d

    .line 2272
    :pswitch_39
    add-int/lit8 v0, v0, 0x4f

    goto :goto_4d

    .line 2268
    :pswitch_3c
    add-int/lit16 v0, v0, -0xeb0

    goto :goto_4d

    .line 2278
    :pswitch_3f
    add-int/lit16 v0, v0, -0x1574

    goto :goto_4d

    .line 2276
    :pswitch_42
    add-int/lit8 v0, v0, 0x8

    goto :goto_4d

    .line 2280
    :pswitch_45
    add-int/lit16 v0, v0, -0x91d

    goto :goto_4d

    .line 2274
    :pswitch_48
    add-int/lit16 v0, v0, 0x11c

    goto :goto_4d

    .line 2270
    :pswitch_4b
    add-int/lit16 v0, v0, -0xa4d

    .line 2296
    :goto_4d
    return v0

    :pswitch_data_4e
    .packed-switch 0x4
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_34
        :pswitch_30
        :pswitch_31
    .end packed-switch
.end method

.method public whitelist test-api getRepeatedWallTimeOption()I
    .registers 2

    .line 4395
    iget v0, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    return v0
.end method

.method public whitelist test-api getSkippedWallTimeOption()I
    .registers 2

    .line 4443
    iget v0, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    return v0
.end method

.method protected final whitelist test-api getStamp(I)I
    .registers 3
    .param p1, "field"    # I

    .line 5467
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api getTemporalMonthCode()Ljava/lang/String;
    .registers 3

    .line 2033
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 2034
    .local v0, "month":I
    nop

    .line 2035
    nop

    .line 2036
    sget-object v1, Landroid/icu/util/Calendar;->gTemporalMonthCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public final whitelist test-api getTime()Ljava/util/Date;
    .registers 4

    .line 1935
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getTimeInMillis()J
    .registers 3

    .line 1955
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    .line 1956
    :cond_7
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method public whitelist test-api getTimeZone()Landroid/icu/util/TimeZone;
    .registers 2

    .line 4332
    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 6574
    const-string v0, "unknown"

    return-object v0
.end method

.method public whitelist test-api getWeekData()Landroid/icu/util/Calendar$WeekData;
    .registers 8

    .line 4988
    new-instance v0, Landroid/icu/util/Calendar$WeekData;

    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    iget v2, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    iget v3, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    iget v4, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    iget v5, p0, Landroid/icu/util/Calendar;->weekendCease:I

    iget v6, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    return-object v0
.end method

.method public greylist-max-o getWeekendTransition(I)I
    .registers 4
    .param p1, "dayOfWeek"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4761
    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    if-ne p1, v0, :cond_7

    .line 4762
    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    return v0

    .line 4763
    :cond_7
    iget v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    if-ne p1, v0, :cond_e

    .line 4764
    iget v0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    return v0

    .line 4766
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not weekend transition day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 7
    .param p1, "julianDay"    # I

    .line 6286
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianMonth()I

    move-result v0

    .line 6287
    .local v0, "gmonth":I
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6288
    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6289
    const/4 v1, 0x5

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfMonth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6290
    const/4 v1, 0x6

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfYear()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6291
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianYear()I

    move-result v1

    .line 6292
    .local v1, "eyear":I
    const/16 v2, 0x13

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6293
    const/4 v2, 0x1

    .line 6294
    .local v2, "era":I
    const/4 v3, 0x1

    if-ge v1, v3, :cond_2d

    .line 6295
    const/4 v2, 0x0

    .line 6296
    rsub-int/lit8 v1, v1, 0x1

    .line 6298
    :cond_2d
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6299
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6300
    return-void
.end method

.method protected whitelist test-api handleComputeJulianDay(I)I
    .registers 16
    .param p1, "bestField"    # I

    .line 6097
    const/4 v0, 0x0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq p1, v3, :cond_f

    const/4 v4, 0x4

    if-eq p1, v4, :cond_f

    if-ne p1, v1, :cond_d

    goto :goto_f

    :cond_d
    move v4, v0

    goto :goto_10

    :cond_f
    :goto_f
    move v4, v2

    .line 6103
    .local v4, "useMonth":Z
    :goto_10
    const/4 v5, 0x3

    if-ne p1, v5, :cond_20

    const/16 v5, 0x11

    invoke-virtual {p0, v5, v2}, Landroid/icu/util/Calendar;->newerField(II)I

    move-result v6

    if-ne v6, v5, :cond_20

    .line 6108
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v5

    .local v5, "year":I
    goto :goto_24

    .line 6110
    .end local v5    # "year":I
    :cond_20
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v5

    .line 6113
    .restart local v5    # "year":I
    :goto_24
    const/16 v6, 0x13

    invoke-virtual {p0, v6, v5}, Landroid/icu/util/Calendar;->internalSet(II)V

    .line 6115
    int-to-long v6, v5

    const-wide v8, 0x51eb851eb851ebL

    cmp-long v6, v6, v8

    if-gtz v6, :cond_cc

    .line 6119
    if-eqz v4, :cond_3e

    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->getDefaultMonthInYear(I)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGetMonth(I)I

    move-result v6

    goto :goto_3f

    :cond_3e
    move v6, v0

    .line 6123
    .local v6, "month":I
    :goto_3f
    invoke-virtual {p0, v5, v6, v4}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v7

    .line 6125
    .local v7, "julianDay":I
    if-ne p1, v3, :cond_5b

    .line 6126
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v0

    if-eqz v0, :cond_55

    .line 6127
    invoke-virtual {p0, v5, v6}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result v0

    invoke-virtual {p0, v3, v0}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 6129
    :cond_55
    invoke-virtual {p0, v5, v6}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 6133
    :cond_5b
    const/4 v3, 0x6

    if-ne p1, v3, :cond_64

    .line 6134
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 6137
    :cond_64
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    .line 6151
    .local v3, "firstDOW":I
    add-int/lit8 v8, v7, 0x1

    invoke-static {v8}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    move-result v8

    sub-int/2addr v8, v3

    .line 6152
    .local v8, "first":I
    if-gez v8, :cond_73

    .line 6153
    add-int/lit8 v8, v8, 0x7

    .line 6158
    :cond_73
    const/4 v9, 0x0

    .line 6159
    .local v9, "dowLocal":I
    sget-object v10, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    invoke-virtual {p0, v10}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v10

    const/4 v11, 0x7

    sparse-switch v10, :sswitch_data_d4

    goto :goto_8f

    .line 6164
    :sswitch_7f
    const/16 v10, 0x12

    invoke-virtual {p0, v10}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v10

    add-int/lit8 v9, v10, -0x1

    goto :goto_8f

    .line 6161
    :sswitch_88
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v10

    sub-int v9, v10, v3

    .line 6162
    nop

    .line 6167
    :goto_8f
    rem-int/2addr v9, v11

    .line 6168
    if-gez v9, :cond_94

    .line 6169
    add-int/lit8 v9, v9, 0x7

    .line 6175
    :cond_94
    rsub-int/lit8 v10, v8, 0x1

    add-int/2addr v10, v9

    .line 6177
    .local v10, "date":I
    if-ne p1, v1, :cond_b8

    .line 6180
    if-ge v10, v2, :cond_9d

    .line 6181
    add-int/lit8 v10, v10, 0x7

    .line 6186
    :cond_9d
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v1

    .line 6187
    .local v1, "dim":I
    if-ltz v1, :cond_a8

    .line 6188
    add-int/lit8 v0, v1, -0x1

    mul-int/2addr v0, v11

    add-int/2addr v10, v0

    goto :goto_b7

    .line 6197
    :cond_a8
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->internalGetMonth(I)I

    move-result v0

    .line 6198
    .local v0, "m":I
    invoke-virtual {p0, v5, v0}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v12

    .line 6199
    .local v12, "monthLength":I
    sub-int v13, v12, v10

    div-int/2addr v13, v11

    add-int/2addr v13, v1

    add-int/2addr v13, v2

    mul-int/2addr v13, v11

    add-int/2addr v10, v13

    .line 6201
    .end local v0    # "m":I
    .end local v1    # "dim":I
    .end local v12    # "monthLength":I
    :goto_b7
    goto :goto_c9

    .line 6205
    :cond_b8
    rsub-int/lit8 v0, v8, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ge v0, v1, :cond_c2

    .line 6206
    add-int/lit8 v10, v10, 0x7

    .line 6210
    :cond_c2
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    sub-int/2addr v0, v2

    mul-int/2addr v0, v11

    add-int/2addr v10, v0

    .line 6213
    :goto_c9
    add-int v0, v7, v10

    return v0

    .line 6116
    .end local v3    # "firstDOW":I
    .end local v6    # "month":I
    .end local v7    # "julianDay":I
    .end local v8    # "first":I
    .end local v9    # "dowLocal":I
    .end local v10    # "date":I
    :cond_cc
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "year is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_data_d4
    .sparse-switch
        0x7 -> :sswitch_88
        0x12 -> :sswitch_7f
    .end sparse-switch
.end method

.method protected abstract whitelist test-api handleComputeMonthStart(IIZ)I
.end method

.method protected whitelist test-api handleCreateFields()[I
    .registers 2

    .line 6059
    sget v0, Landroid/icu/util/Calendar;->BASE_FIELD_COUNT:I

    new-array v0, v0, [I

    return-object v0
.end method

.method protected whitelist test-api handleGetDateFormat(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 4
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 3551
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected greylist-max-o handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 6
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 3566
    new-instance v0, Landroid/icu/util/Calendar$FormatConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>(Landroid/icu/util/Calendar-IA;)V

    .line 3567
    .local v0, "fmtConfig":Landroid/icu/util/Calendar$FormatConfiguration;
    invoke-static {v0, p1}, Landroid/icu/util/Calendar$FormatConfiguration;->-$$Nest$fputpattern(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)V

    .line 3568
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$FormatConfiguration;->-$$Nest$fputoverride(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)V

    .line 3569
    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    invoke-direct {v1, p0, p3}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V

    invoke-static {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;->-$$Nest$fputformatData(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)V

    .line 3570
    invoke-static {v0, p3}, Landroid/icu/util/Calendar$FormatConfiguration;->-$$Nest$fputloc(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)V

    .line 3571
    invoke-static {v0, p0}, Landroid/icu/util/Calendar$FormatConfiguration;->-$$Nest$fputcal(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)V

    .line 3573
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 3537
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api handleGetDateFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    .line 3516
    const/4 v0, 0x0

    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected abstract whitelist test-api handleGetExtendedYear()I
.end method

.method protected abstract whitelist test-api handleGetLimit(II)I
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 5
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 6035
    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 6036
    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 6035
    return v0
.end method

.method protected whitelist test-api handleGetYearLength(I)I
    .registers 4
    .param p1, "eyear"    # I

    .line 6047
    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v0

    .line 6048
    invoke-virtual {p0, p1, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    sub-int/2addr v0, v1

    .line 6047
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 2486
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    shl-int/lit8 v1, v1, 0x9

    or-int/2addr v0, v1

    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    .line 2491
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0xb

    or-int/2addr v0, v1

    .line 2486
    return v0
.end method

.method public greylist-max-o haveDefaultCentury()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 6591
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api inTemporalLeapYear()Z
    .registers 3

    .line 2008
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    const/16 v1, 0x16e

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method protected final whitelist test-api internalGet(I)I
    .registers 3
    .param p1, "field"    # I

    .line 2092
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method protected final whitelist test-api internalGet(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "defaultValue"    # I

    .line 2105
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-lez v0, :cond_b

    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    goto :goto_c

    :cond_b
    move v0, p2

    :goto_c
    return v0
.end method

.method protected blacklist internalGetMonth()I
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2120
    sget-object v0, Landroid/icu/util/Calendar;->MONTH_PRECEDENCE:[[[I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 2121
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    return v0

    .line 2123
    :cond_e
    const/16 v0, 0x17

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    return v0
.end method

.method protected blacklist internalGetMonth(I)I
    .registers 4
    .param p1, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2139
    sget-object v0, Landroid/icu/util/Calendar;->MONTH_PRECEDENCE:[[[I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 2140
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    return v0

    .line 2142
    :cond_e
    const/16 v0, 0x17

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->internalGet(II)I

    move-result v0

    return v0
.end method

.method protected final whitelist test-api internalGetTimeInMillis()J
    .registers 3

    .line 6560
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    return-wide v0
.end method

.method protected final whitelist test-api internalSet(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 6363
    const/4 v0, 0x1

    shl-int v1, v0, p1

    iget v2, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_11

    .line 6367
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    aput p2, v1, p1

    .line 6368
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v0, v1, p1

    .line 6369
    return-void

    .line 6364
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclass cannot set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 6365
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .registers 4
    .param p1, "other"    # Landroid/icu/util/Calendar;

    .line 2466
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_4c

    .line 2467
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 2468
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 2469
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 2470
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2471
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    move-result v1

    if-ne v0, v1, :cond_4c

    .line 2472
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v0

    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    move-result v1

    if-ne v0, v1, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    const/4 v0, 0x0

    .line 2466
    :goto_4d
    return v0
.end method

.method protected blacklist isEra0CountingBackward()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4056
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api isLenient()Z
    .registers 2

    .line 4354
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    return v0
.end method

.method public final whitelist test-api isSet(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 2413
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public whitelist test-api isWeekend()Z
    .registers 9

    .line 4791
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    .line 4792
    .local v0, "dow":I
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getDayOfWeekType(I)I

    move-result v1

    .line 4793
    .local v1, "dowt":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_42

    .line 4804
    const/16 v4, 0xe

    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v5

    .line 4805
    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    const/16 v7, 0xb

    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3c

    add-int/2addr v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    add-int/2addr v4, v5

    .line 4806
    .local v4, "millisInDay":I
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getWeekendTransition(I)I

    move-result v5

    .line 4807
    .local v5, "transition":I
    const/4 v6, 0x2

    if-ne v1, v6, :cond_3d

    .line 4808
    if-lt v4, v5, :cond_3b

    goto :goto_41

    .line 4797
    .end local v4    # "millisInDay":I
    .end local v5    # "transition":I
    :pswitch_39
    return v2

    .line 4795
    :pswitch_3a
    return v3

    .line 4808
    .restart local v4    # "millisInDay":I
    .restart local v5    # "transition":I
    :cond_3b
    move v2, v3

    goto :goto_41

    .line 4809
    :cond_3d
    if-ge v4, v5, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    .line 4807
    :goto_41
    return v2

    :pswitch_data_42
    .packed-switch 0x0
        :pswitch_3a
        :pswitch_39
    .end packed-switch
.end method

.method public whitelist test-api isWeekend(Ljava/util/Date;)Z
    .registers 3
    .param p1, "date"    # Ljava/util/Date;

    .line 4779
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 4780
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isWeekend()Z

    move-result v0

    return v0
.end method

.method protected whitelist test-api newerField(II)I
    .registers 5
    .param p1, "defaultField"    # I
    .param p2, "alternateField"    # I

    .line 5475
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v0, p2

    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v1, p1

    if-le v0, v1, :cond_b

    .line 5476
    return p2

    .line 5478
    :cond_b
    return p1
.end method

.method protected whitelist test-api newestStamp(III)I
    .registers 7
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "bestStampSoFar"    # I

    .line 5454
    move v0, p3

    .line 5455
    .local v0, "bestStamp":I
    move v1, p1

    .local v1, "i":I
    :goto_2
    if-gt v1, p2, :cond_11

    .line 5456
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-le v2, v0, :cond_e

    .line 5457
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v0, v2, v1

    .line 5455
    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5460
    .end local v1    # "i":I
    :cond_11
    return v0
.end method

.method protected whitelist test-api pinField(I)V
    .registers 5
    .param p1, "field"    # I

    .line 4038
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 4039
    .local v0, "max":I
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v1

    .line 4041
    .local v1, "min":I
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v2, v2, p1

    if-le v2, v0, :cond_12

    .line 4042
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_1b

    .line 4043
    :cond_12
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v2, v2, p1

    if-ge v2, v1, :cond_1b

    .line 4044
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 4046
    :cond_1b
    :goto_1b
    return-void
.end method

.method protected whitelist test-api prepareGetActual(IZ)V
    .registers 7
    .param p1, "field"    # I
    .param p2, "isMinimum"    # Z

    .line 2676
    const/16 v0, 0x15

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2678
    const/4 v0, 0x1

    const/4 v1, 0x5

    const/4 v2, 0x7

    sparse-switch p1, :sswitch_data_4a

    goto :goto_42

    .line 2685
    :sswitch_d
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2686
    goto :goto_42

    .line 2695
    :sswitch_16
    invoke-virtual {p0, v1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2696
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2697
    goto :goto_42

    .line 2706
    :sswitch_21
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    .line 2707
    .local v1, "dow":I
    if-eqz p2, :cond_2d

    .line 2708
    add-int/lit8 v3, v1, 0x6

    rem-int/lit8 v1, v3, 0x7

    .line 2709
    if-ge v1, v0, :cond_2d

    .line 2710
    add-int/lit8 v1, v1, 0x7

    .line 2713
    :cond_2d
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    goto :goto_42

    .line 2689
    .end local v1    # "dow":I
    :sswitch_31
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2690
    goto :goto_42

    .line 2681
    :sswitch_39
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2682
    nop

    .line 2719
    :goto_42
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2720
    return-void

    :sswitch_data_4a
    .sparse-switch
        0x1 -> :sswitch_39
        0x2 -> :sswitch_31
        0x3 -> :sswitch_21
        0x4 -> :sswitch_21
        0x8 -> :sswitch_16
        0x11 -> :sswitch_d
        0x13 -> :sswitch_39
    .end sparse-switch
.end method

.method protected whitelist test-api resolveFields([[[I)I
    .registers 14
    .param p1, "precedenceTable"    # [[[I

    .line 5409
    const/4 v0, -0x1

    .line 5411
    .local v0, "bestField":I
    const/4 v1, 0x0

    .local v1, "g":I
    :goto_2
    array-length v2, p1

    const/16 v3, 0x20

    if-ge v1, v2, :cond_50

    if-gez v0, :cond_50

    .line 5412
    aget-object v2, p1, v1

    .line 5413
    .local v2, "group":[[I
    const/4 v4, 0x0

    .line 5415
    .local v4, "bestStamp":I
    const/4 v5, 0x0

    .local v5, "l":I
    :goto_d
    array-length v6, v2

    if-ge v5, v6, :cond_4d

    .line 5416
    aget-object v6, v2, v5

    .line 5417
    .local v6, "line":[I
    const/4 v7, 0x0

    .line 5419
    .local v7, "lineStamp":I
    const/4 v8, 0x0

    aget v9, v6, v8

    if-lt v9, v3, :cond_1a

    const/4 v9, 0x1

    goto :goto_1b

    :cond_1a
    move v9, v8

    .local v9, "i":I
    :goto_1b
    array-length v10, v6

    if-ge v9, v10, :cond_2e

    .line 5420
    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v11, v6, v9

    aget v10, v10, v11

    .line 5422
    .local v10, "s":I
    if-nez v10, :cond_27

    .line 5423
    goto :goto_4a

    .line 5425
    :cond_27
    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 5419
    .end local v10    # "s":I
    add-int/lit8 v9, v9, 0x1

    goto :goto_1b

    .line 5429
    .end local v9    # "i":I
    :cond_2e
    if-le v7, v4, :cond_4a

    .line 5430
    aget v8, v6, v8

    .line 5431
    .local v8, "tempBestField":I
    if-lt v8, v3, :cond_46

    .line 5432
    and-int/lit8 v8, v8, 0x1f

    .line 5434
    const/4 v9, 0x5

    if-ne v8, v9, :cond_44

    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    const/4 v10, 0x4

    aget v9, v9, v10

    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v10, v10, v8

    if-ge v9, v10, :cond_47

    .line 5435
    :cond_44
    move v0, v8

    goto :goto_47

    .line 5438
    :cond_46
    move v0, v8

    .line 5441
    :cond_47
    :goto_47
    if-ne v0, v8, :cond_4a

    .line 5442
    move v4, v7

    .line 5415
    .end local v6    # "line":[I
    .end local v7    # "lineStamp":I
    .end local v8    # "tempBestField":I
    :cond_4a
    :goto_4a
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 5411
    .end local v2    # "group":[[I
    .end local v4    # "bestStamp":I
    .end local v5    # "l":I
    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 5447
    .end local v1    # "g":I
    :cond_50
    if-lt v0, v3, :cond_55

    and-int/lit8 v1, v0, 0x1f

    goto :goto_56

    :cond_55
    move v1, v0

    :goto_56
    return v1
.end method

.method public whitelist test-api roll(II)V
    .registers 20
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 2900
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 2901
    return-void

    .line 2904
    :cond_9
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->complete()V

    .line 2906
    const-wide/16 v3, 0x0

    const-wide/32 v5, 0x240c8400

    const/4 v7, 0x2

    const-wide/32 v8, 0x5265c00

    const/4 v10, 0x6

    const/4 v11, 0x5

    const/4 v12, 0x7

    const/4 v13, 0x1

    packed-switch v1, :pswitch_data_22a

    .line 3215
    :pswitch_1c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calendar.roll("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") not supported"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3211
    :pswitch_3f
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 3212
    return-void

    .line 3014
    :pswitch_48
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Landroid/icu/util/Calendar;->set(II)V

    .line 3015
    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 3016
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 3017
    return-void

    .line 2944
    :pswitch_57
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 2945
    .local v3, "start":J
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v5

    .line 2946
    .local v5, "oldHour":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v6

    .line 2947
    .local v6, "max":I
    add-int v7, v5, v2

    add-int/lit8 v8, v6, 0x1

    rem-int/2addr v7, v8

    .line 2948
    .local v7, "newHour":I
    if-gez v7, :cond_6d

    .line 2949
    add-int/lit8 v8, v6, 0x1

    add-int/2addr v7, v8

    .line 2951
    :cond_6d
    int-to-long v8, v7

    int-to-long v10, v5

    sub-long/2addr v8, v10

    const-wide/32 v10, 0x36ee80

    mul-long/2addr v8, v10

    add-long/2addr v8, v3

    invoke-virtual {v0, v8, v9}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 2952
    return-void

    .line 3193
    .end local v3    # "start":J
    .end local v5    # "oldHour":I
    .end local v6    # "max":I
    .end local v7    # "newHour":I
    :pswitch_79
    int-to-long v7, v2

    mul-long/2addr v7, v5

    .line 3196
    .local v7, "delta":J
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v9

    sub-int/2addr v9, v13

    div-int/2addr v9, v12

    .line 3199
    .local v9, "preWeeks":I
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v10

    .line 3200
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v11

    sub-int/2addr v10, v11

    div-int/2addr v10, v12

    .line 3202
    .local v10, "postWeeks":I
    iget-wide v11, v0, Landroid/icu/util/Calendar;->time:J

    int-to-long v14, v9

    mul-long/2addr v14, v5

    sub-long/2addr v11, v14

    .line 3203
    .local v11, "min2":J
    add-int v14, v9, v10

    add-int/2addr v14, v13

    int-to-long v13, v14

    mul-long/2addr v13, v5

    .line 3205
    .local v13, "gap2":J
    iget-wide v5, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v5, v7

    sub-long/2addr v5, v11

    rem-long/2addr v5, v13

    iput-wide v5, v0, Landroid/icu/util/Calendar;->time:J

    .line 3206
    iget-wide v5, v0, Landroid/icu/util/Calendar;->time:J

    cmp-long v3, v5, v3

    if-gez v3, :cond_a7

    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v3, v13

    iput-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    .line 3207
    :cond_a7
    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v3, v11

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3208
    return-void

    .line 3176
    .end local v7    # "delta":J
    .end local v9    # "preWeeks":I
    .end local v10    # "postWeeks":I
    .end local v11    # "min2":J
    .end local v13    # "gap2":J
    :pswitch_ae
    int-to-long v10, v2

    mul-long/2addr v10, v8

    .line 3179
    .local v10, "delta":J
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    .line 3180
    .local v7, "leadDays":I
    if-ne v1, v12, :cond_ba

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v13

    :cond_ba
    sub-int/2addr v7, v13

    .line 3181
    if-gez v7, :cond_bf

    add-int/lit8 v7, v7, 0x7

    .line 3182
    :cond_bf
    iget-wide v12, v0, Landroid/icu/util/Calendar;->time:J

    int-to-long v14, v7

    mul-long/2addr v14, v8

    sub-long/2addr v12, v14

    .line 3183
    .local v12, "min2":J
    iget-wide v8, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v8, v10

    sub-long/2addr v8, v12

    rem-long/2addr v8, v5

    iput-wide v8, v0, Landroid/icu/util/Calendar;->time:J

    .line 3184
    iget-wide v8, v0, Landroid/icu/util/Calendar;->time:J

    cmp-long v3, v8, v3

    if-gez v3, :cond_d6

    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v3, v5

    iput-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    .line 3185
    :cond_d6
    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v3, v12

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3186
    return-void

    .line 3162
    .end local v7    # "leadDays":I
    .end local v10    # "delta":J
    .end local v12    # "min2":J
    :pswitch_dd
    int-to-long v5, v2

    mul-long/2addr v5, v8

    .line 3163
    .local v5, "delta":J
    iget-wide v11, v0, Landroid/icu/util/Calendar;->time:J

    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    sub-int/2addr v7, v13

    int-to-long v13, v7

    mul-long/2addr v13, v8

    sub-long/2addr v11, v13

    .line 3164
    .restart local v11    # "min2":J
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v7

    .line 3165
    .local v7, "yearLength":I
    iget-wide v13, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v13, v5

    sub-long/2addr v13, v11

    move-wide v15, v3

    int-to-long v3, v7

    mul-long/2addr v3, v8

    rem-long/2addr v13, v3

    iput-wide v13, v0, Landroid/icu/util/Calendar;->time:J

    .line 3166
    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    cmp-long v3, v3, v15

    if-gez v3, :cond_104

    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    int-to-long v13, v7

    mul-long/2addr v13, v8

    add-long/2addr v3, v13

    iput-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    .line 3167
    :cond_104
    iget-wide v3, v0, Landroid/icu/util/Calendar;->time:J

    add-long/2addr v3, v11

    invoke-virtual {v0, v3, v4}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 3168
    return-void

    .line 3050
    .end local v5    # "delta":J
    .end local v7    # "yearLength":I
    .end local v11    # "min2":J
    :pswitch_10b
    invoke-virtual {v0, v12}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3051
    .local v3, "dow":I
    if-gez v3, :cond_118

    add-int/lit8 v3, v3, 0x7

    .line 3055
    :cond_118
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    sub-int v4, v3, v4

    add-int/2addr v4, v13

    rem-int/2addr v4, v12

    .line 3056
    .local v4, "fdm":I
    if-gez v4, :cond_124

    add-int/lit8 v4, v4, 0x7

    .line 3063
    :cond_124
    rsub-int/lit8 v5, v4, 0x7

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v6

    if-ge v5, v6, :cond_12f

    .line 3064
    rsub-int/lit8 v5, v4, 0x8

    .local v5, "start":I
    goto :goto_131

    .line 3066
    .end local v5    # "start":I
    :cond_12f
    rsub-int/lit8 v5, v4, 0x1

    .line 3070
    .restart local v5    # "start":I
    :goto_131
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 3071
    .local v6, "monthLen":I
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v7

    sub-int v7, v6, v7

    add-int/2addr v7, v3

    rem-int/2addr v7, v12

    .line 3078
    .local v7, "ldm":I
    add-int/lit8 v8, v6, 0x7

    sub-int/2addr v8, v7

    .line 3081
    .local v8, "limit":I
    sub-int v9, v8, v5

    .line 3082
    .local v9, "gap":I
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v10

    mul-int/lit8 v12, v2, 0x7

    add-int/2addr v10, v12

    sub-int/2addr v10, v5

    rem-int/2addr v10, v9

    .line 3084
    .local v10, "day_of_month":I
    if-gez v10, :cond_14e

    add-int/2addr v10, v9

    .line 3085
    :cond_14e
    add-int/2addr v10, v5

    .line 3088
    if-ge v10, v13, :cond_152

    const/4 v10, 0x1

    .line 3089
    :cond_152
    if-le v10, v6, :cond_155

    move v10, v6

    .line 3097
    :cond_155
    invoke-virtual {v0, v11, v10}, Landroid/icu/util/Calendar;->set(II)V

    .line 3098
    return-void

    .line 3108
    .end local v3    # "dow":I
    .end local v4    # "fdm":I
    .end local v5    # "start":I
    .end local v6    # "monthLen":I
    .end local v7    # "ldm":I
    .end local v8    # "limit":I
    .end local v9    # "gap":I
    .end local v10    # "day_of_month":I
    :pswitch_159
    invoke-virtual {v0, v12}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v4

    sub-int/2addr v3, v4

    .line 3109
    .restart local v3    # "dow":I
    if-gez v3, :cond_166

    add-int/lit8 v3, v3, 0x7

    .line 3113
    :cond_166
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    sub-int v4, v3, v4

    add-int/2addr v4, v13

    rem-int/2addr v4, v12

    .line 3114
    .local v4, "fdy":I
    if-gez v4, :cond_172

    add-int/lit8 v4, v4, 0x7

    .line 3121
    :cond_172
    rsub-int/lit8 v5, v4, 0x7

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v6

    if-ge v5, v6, :cond_17d

    .line 3122
    rsub-int/lit8 v5, v4, 0x8

    .restart local v5    # "start":I
    goto :goto_17f

    .line 3124
    .end local v5    # "start":I
    :cond_17d
    rsub-int/lit8 v5, v4, 0x1

    .line 3128
    .restart local v5    # "start":I
    :goto_17f
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 3129
    .local v6, "yearLen":I
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v8

    sub-int v8, v6, v8

    add-int/2addr v8, v3

    rem-int/2addr v8, v12

    .line 3136
    .local v8, "ldy":I
    add-int/lit8 v9, v6, 0x7

    sub-int/2addr v9, v8

    .line 3139
    .local v9, "limit":I
    sub-int v11, v9, v5

    .line 3140
    .local v11, "gap":I
    invoke-virtual {v0, v10}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v12

    mul-int/lit8 v14, v2, 0x7

    add-int/2addr v12, v14

    sub-int/2addr v12, v5

    rem-int/2addr v12, v11

    .line 3142
    .local v12, "day_of_year":I
    if-gez v12, :cond_19c

    add-int/2addr v12, v11

    .line 3143
    :cond_19c
    add-int/2addr v12, v5

    .line 3146
    if-ge v12, v13, :cond_1a0

    const/4 v12, 0x1

    .line 3147
    :cond_1a0
    if-le v12, v6, :cond_1a3

    move v12, v6

    .line 3153
    :cond_1a3
    invoke-virtual {v0, v10, v12}, Landroid/icu/util/Calendar;->set(II)V

    .line 3154
    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->clear(I)V

    .line 3155
    const/16 v7, 0x17

    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->clear(I)V

    .line 3156
    return-void

    .line 2962
    .end local v3    # "dow":I
    .end local v4    # "fdy":I
    .end local v5    # "start":I
    .end local v6    # "yearLen":I
    .end local v8    # "ldy":I
    .end local v9    # "limit":I
    .end local v11    # "gap":I
    .end local v12    # "day_of_year":I
    :pswitch_1af
    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v3

    .line 2963
    .local v3, "max":I
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->internalGetMonth()I

    move-result v4

    add-int/2addr v4, v2

    add-int/lit8 v5, v3, 0x1

    rem-int/2addr v4, v5

    .line 2965
    .local v4, "mon":I
    if-gez v4, :cond_1c0

    .line 2966
    add-int/lit8 v5, v3, 0x1

    add-int/2addr v4, v5

    .line 2968
    :cond_1c0
    invoke-virtual {v0, v7, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 2973
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 2974
    return-void

    .line 2983
    .end local v3    # "max":I
    .end local v4    # "mon":I
    :pswitch_1c7
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v3

    .line 2984
    .local v3, "era":I
    if-nez v3, :cond_1d5

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isEra0CountingBackward()Z

    move-result v4

    if-eqz v4, :cond_1d5

    .line 2985
    neg-int v2, v2

    .line 2987
    .end local p2    # "amount":I
    .local v2, "amount":I
    :cond_1d5
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v4

    add-int/2addr v4, v2

    .line 2988
    .local v4, "newYear":I
    if-gtz v3, :cond_1e9

    if-lt v4, v13, :cond_1df

    goto :goto_1e9

    .line 3004
    :cond_1df
    if-nez v3, :cond_204

    invoke-virtual {v0}, Landroid/icu/util/Calendar;->isEra0CountingBackward()Z

    move-result v5

    if-eqz v5, :cond_204

    .line 3005
    const/4 v4, 0x1

    goto :goto_205

    .line 2989
    :cond_1e9
    :goto_1e9
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v5

    .line 2990
    .local v5, "maxYear":I
    const v6, 0x8000

    if-ge v5, v6, :cond_201

    .line 2992
    if-ge v4, v13, :cond_1f9

    .line 2993
    neg-int v6, v4

    rem-int/2addr v6, v5

    sub-int v4, v5, v6

    goto :goto_204

    .line 2994
    :cond_1f9
    if-le v4, v5, :cond_204

    .line 2995
    add-int/lit8 v6, v4, -0x1

    rem-int/2addr v6, v5

    add-int/lit8 v4, v6, 0x1

    goto :goto_204

    .line 2998
    :cond_201
    if-ge v4, v13, :cond_204

    .line 2999
    const/4 v4, 0x1

    .line 3004
    .end local v5    # "maxYear":I
    :cond_204
    :goto_204
    nop

    .line 3007
    :goto_205
    invoke-virtual {v0, v1, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 3008
    invoke-virtual {v0, v7}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 3009
    invoke-virtual {v0, v11}, Landroid/icu/util/Calendar;->pinField(I)V

    .line 3010
    return-void

    .line 2918
    .end local v2    # "amount":I
    .end local v3    # "era":I
    .end local v4    # "newYear":I
    .restart local p2    # "amount":I
    :pswitch_20f
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    move-result v3

    .line 2919
    .local v3, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    move-result v4

    .line 2920
    .local v4, "max":I
    sub-int v5, v4, v3

    add-int/2addr v5, v13

    .line 2922
    .local v5, "gap":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v6

    add-int/2addr v6, v2

    .line 2923
    .local v6, "value":I
    sub-int v7, v6, v3

    rem-int/2addr v7, v5

    .line 2924
    .end local v6    # "value":I
    .local v7, "value":I
    if-gez v7, :cond_225

    .line 2925
    add-int/2addr v7, v5

    .line 2927
    :cond_225
    add-int/2addr v7, v3

    .line 2929
    invoke-virtual {v0, v1, v7}, Landroid/icu/util/Calendar;->set(II)V

    .line 2930
    return-void

    :pswitch_data_22a
    .packed-switch 0x0
        :pswitch_20f
        :pswitch_1c7
        :pswitch_1af
        :pswitch_159
        :pswitch_10b
        :pswitch_20f
        :pswitch_dd
        :pswitch_ae
        :pswitch_79
        :pswitch_20f
        :pswitch_57
        :pswitch_57
        :pswitch_20f
        :pswitch_20f
        :pswitch_20f
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c7
        :pswitch_ae
        :pswitch_48
        :pswitch_3f
        :pswitch_20f
        :pswitch_1c
        :pswitch_1af
    .end packed-switch
.end method

.method public final whitelist test-api roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .line 2828
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->roll(II)V

    .line 2829
    return-void
.end method

.method public final whitelist test-api set(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 2152
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    if-eqz v0, :cond_7

    .line 2153
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    .line 2155
    :cond_7
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 2157
    iget v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    sget v1, Landroid/icu/util/Calendar;->STAMP_MAX:I

    if-ne v0, v1, :cond_14

    .line 2158
    invoke-direct {p0}, Landroid/icu/util/Calendar;->recalculateStamp()V

    .line 2160
    :cond_14
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    iget v1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    .line 2161
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 2162
    return-void
.end method

.method public final whitelist test-api set(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 2175
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2176
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 2177
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 2178
    return-void
.end method

.method public final whitelist test-api set(IIIII)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    .line 2193
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2194
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 2195
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 2196
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    .line 2197
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    .line 2198
    return-void
.end method

.method public final whitelist test-api set(IIIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 2215
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2216
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    .line 2217
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    .line 2218
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    .line 2219
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    .line 2220
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    .line 2221
    return-void
.end method

.method public whitelist test-api setFirstDayOfWeek(I)V
    .registers 4
    .param p1, "value"    # I

    .line 4453
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    if-eq v0, p1, :cond_18

    .line 4454
    const/4 v0, 0x1

    if-lt p1, v0, :cond_10

    const/4 v0, 0x7

    if-gt p1, v0, :cond_10

    .line 4457
    iput p1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    .line 4458
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    goto :goto_18

    .line 4455
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid day of week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4460
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist test-api setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 4346
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->lenient:Z

    .line 4347
    return-void
.end method

.method final greylist-max-o setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V
    .registers 6
    .param p1, "valid"    # Landroid/icu/util/ULocale;
    .param p2, "actual"    # Landroid/icu/util/ULocale;

    .line 6643
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

    .line 6650
    iput-object p1, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    .line 6651
    iput-object p2, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    .line 6652
    return-void

    .line 6645
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public whitelist test-api setMinimalDaysInFirstWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .line 4486
    const/4 v0, 0x1

    if-ge p1, v0, :cond_5

    .line 4487
    const/4 p1, 0x1

    goto :goto_9

    .line 4488
    :cond_5
    const/4 v0, 0x7

    if-le p1, v0, :cond_9

    .line 4489
    const/4 p1, 0x7

    .line 4491
    :cond_9
    :goto_9
    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    if-eq v0, p1, :cond_12

    .line 4492
    iput p1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    .line 4493
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 4495
    :cond_12
    return-void
.end method

.method public final greylist-max-o setRelatedYear(I)V
    .registers 9
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2331
    sget-object v0, Landroid/icu/impl/CalType;->GREGORIAN:Landroid/icu/impl/CalType;

    .line 2332
    .local v0, "type":Landroid/icu/impl/CalType;
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    move-result-object v1

    .line 2333
    .local v1, "typeString":Ljava/lang/String;
    invoke-static {}, Landroid/icu/impl/CalType;->values()[Landroid/icu/impl/CalType;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1f

    aget-object v5, v2, v4

    .line 2334
    .local v5, "testType":Landroid/icu/impl/CalType;
    invoke-virtual {v5}, Landroid/icu/impl/CalType;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 2335
    move-object v0, v5

    .line 2336
    goto :goto_1f

    .line 2333
    .end local v5    # "testType":Landroid/icu/impl/CalType;
    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 2339
    :cond_1f
    :goto_1f
    sget-object v2, Landroid/icu/util/Calendar$1;->$SwitchMap$android$icu$impl$CalType:[I

    invoke-virtual {v0}, Landroid/icu/impl/CalType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_4e

    :pswitch_2a
    goto :goto_47

    .line 2341
    :pswitch_2b
    add-int/lit16 p1, p1, -0x26e

    goto :goto_47

    .line 2361
    :pswitch_2e
    invoke-static {p1}, Landroid/icu/util/Calendar;->firstIslamicStartYearFromGrego(I)I

    move-result p1

    goto :goto_47

    .line 2347
    :pswitch_33
    add-int/lit8 p1, p1, -0x4f

    goto :goto_47

    .line 2343
    :pswitch_36
    add-int/lit16 p1, p1, 0xeb0

    goto :goto_47

    .line 2353
    :pswitch_39
    add-int/lit16 p1, p1, 0x1574

    goto :goto_47

    .line 2351
    :pswitch_3c
    add-int/lit8 p1, p1, -0x8

    goto :goto_47

    .line 2355
    :pswitch_3f
    add-int/lit16 p1, p1, 0x91d

    goto :goto_47

    .line 2349
    :pswitch_42
    add-int/lit16 p1, p1, -0x11c

    goto :goto_47

    .line 2345
    :pswitch_45
    add-int/lit16 p1, p1, 0xa4d

    .line 2371
    :goto_47
    const/16 v2, 0x13

    invoke-virtual {p0, v2, p1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2372
    return-void

    nop

    :pswitch_data_4e
    .packed-switch 0x4
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public whitelist test-api setRepeatedWallTimeOption(I)V
    .registers 5
    .param p1, "option"    # I

    .line 4377
    if-eqz p1, :cond_1f

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    goto :goto_1f

    .line 4378
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal repeated wall time option - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4380
    :cond_1f
    :goto_1f
    iput p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    .line 4381
    return-void
.end method

.method public whitelist test-api setSkippedWallTimeOption(I)V
    .registers 5
    .param p1, "option"    # I

    .line 4424
    if-eqz p1, :cond_22

    const/4 v0, 0x1

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-ne p1, v0, :cond_9

    goto :goto_22

    .line 4425
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal skipped wall time option - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4427
    :cond_22
    :goto_22
    iput p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    .line 4428
    return-void
.end method

.method public whitelist test-api setTemporalMonthCode(Ljava/lang/String;)V
    .registers 5
    .param p1, "temporalMonth"    # Ljava/lang/String;

    .line 2057
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2d

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4d

    if-ne v1, v2, :cond_2d

    .line 2058
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_11
    sget-object v2, Landroid/icu/util/Calendar;->gTemporalMonthCodes:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2d

    .line 2059
    sget-object v2, Landroid/icu/util/Calendar;->gTemporalMonthCodes:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2060
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 2061
    const/16 v2, 0x16

    invoke-virtual {p0, v2, v0}, Landroid/icu/util/Calendar;->set(II)V

    .line 2062
    return-void

    .line 2058
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 2066
    .end local v1    # "m":I
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect temporal Month code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final whitelist test-api setTime(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 1947
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    .line 1948
    return-void
.end method

.method public whitelist test-api setTimeInMillis(J)V
    .registers 7
    .param p1, "millis"    # J

    .line 1967
    const-wide v0, 0x28d47dbbf19b000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_2e

    .line 1968
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1969
    const-wide p1, 0x28d47dbbf19b000L

    goto :goto_5c

    .line 1971
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "millis value greater than upper bounds for a Calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1973
    :cond_2e
    const-wide v0, -0x28ec76c40e65000L

    cmp-long v0, p1, v0

    if-gez v0, :cond_5c

    .line 1974
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 1975
    const-wide p1, -0x28ec76c40e65000L

    goto :goto_5c

    .line 1977
    :cond_43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "millis value less than lower bounds for a Calendar : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1980
    :cond_5c
    :goto_5c
    iput-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    .line 1981
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 1982
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    .line 1984
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_69
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_79

    .line 1985
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    iget-object v3, p0, Landroid/icu/util/Calendar;->stamp:[I

    aput v0, v3, v1

    aput v0, v2, v1

    .line 1984
    add-int/lit8 v1, v1, 0x1

    goto :goto_69

    .line 1988
    .end local v1    # "i":I
    :cond_79
    return-void
.end method

.method public whitelist test-api setTimeZone(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "value"    # Landroid/icu/util/TimeZone;

    .line 4313
    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    .line 4323
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    .line 4324
    return-void
.end method

.method public whitelist test-api setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;
    .registers 3
    .param p1, "wdata"    # Landroid/icu/util/Calendar$WeekData;

    .line 4997
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    .line 4998
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    .line 5000
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    .line 5001
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    .line 5002
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    .line 5003
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    iput v0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    .line 5004
    return-object p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 4851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4852
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4853
    const-string v1, "[time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4854
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    const-string v2, "?"

    if-eqz v1, :cond_22

    iget-wide v3, p0, Landroid/icu/util/Calendar;->time:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4855
    const-string v1, ",areFieldsSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4856
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4857
    const-string v1, ",areAllFieldsSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4858
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4859
    const-string v1, ",lenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4860
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->lenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4861
    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4862
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 4863
    const-string v1, ",firstDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4864
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4865
    const-string v1, ",minimalDaysInFirstWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4866
    iget v1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4867
    const-string v1, ",repeatedWallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4868
    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4869
    const-string v1, ",skippedWallTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4870
    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4871
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_77
    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v3, v3

    if-ge v1, v3, :cond_a5

    .line 4872
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4873
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    move-result v3

    if-eqz v3, :cond_9e

    iget-object v3, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v3, v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_9f

    :cond_9e
    move-object v3, v2

    :goto_9f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4871
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 4875
    .end local v1    # "i":I
    :cond_a5
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4876
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected whitelist test-api validateField(I)V
    .registers 5
    .param p1, "field"    # I

    .line 5505
    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_48

    .line 5521
    :pswitch_4
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    goto :goto_46

    .line 5515
    :pswitch_10
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    move-result v0

    if-eqz v0, :cond_22

    .line 5518
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    move-result v0

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    .line 5519
    goto :goto_46

    .line 5516
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "DAY_OF_WEEK_IN_MONTH cannot be zero"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5511
    :pswitch_2a
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v1

    .line 5512
    .local v1, "y":I
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Landroid/icu/util/Calendar;->validateField(III)V

    .line 5513
    goto :goto_46

    .line 5507
    .end local v1    # "y":I
    :pswitch_36
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    move-result v1

    .line 5508
    .restart local v1    # "y":I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->internalGetMonth()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    move-result v2

    invoke-virtual {p0, p1, v0, v2}, Landroid/icu/util/Calendar;->validateField(III)V

    .line 5509
    nop

    .line 5524
    .end local v1    # "y":I
    :goto_46
    return-void

    nop

    :pswitch_data_48
    .packed-switch 0x5
        :pswitch_36
        :pswitch_2a
        :pswitch_4
        :pswitch_10
    .end packed-switch
.end method

.method protected final whitelist test-api validateField(III)V
    .registers 8
    .param p1, "field"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 5534
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    aget v0, v0, p1

    .line 5535
    .local v0, "value":I
    if-lt v0, p2, :cond_9

    if-gt v0, p3, :cond_9

    .line 5540
    return-void

    .line 5536
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", valid range="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected whitelist test-api validateFields()V
    .registers 4

    .line 5489
    const/4 v0, 0x0

    .local v0, "field":I
    :goto_1
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 5490
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_10

    .line 5491
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->validateField(I)V

    .line 5489
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5494
    .end local v0    # "field":I
    :cond_13
    return-void
.end method

.method protected final whitelist test-api weekNumber(II)I
    .registers 4
    .param p1, "dayOfPeriod"    # I
    .param p2, "dayOfWeek"    # I

    .line 4152
    invoke-virtual {p0, p1, p1, p2}, Landroid/icu/util/Calendar;->weekNumber(III)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api weekNumber(III)I
    .registers 8
    .param p1, "desiredDay"    # I
    .param p2, "dayOfPeriod"    # I
    .param p3, "dayOfWeek"    # I

    .line 4105
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    sub-int v0, p3, v0

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x7

    .line 4106
    .local v0, "periodStartDayOfWeek":I
    if-gez v0, :cond_f

    add-int/lit8 v0, v0, 0x7

    .line 4111
    :cond_f
    add-int v1, p1, v0

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x7

    .line 4116
    .local v1, "weekNo":I
    rsub-int/lit8 v2, v0, 0x7

    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_1f

    add-int/lit8 v1, v1, 0x1

    .line 4118
    :cond_1f
    return v1
.end method
