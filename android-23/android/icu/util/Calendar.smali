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
        Landroid/icu/util/Calendar$CalType;,
        Landroid/icu/util/Calendar$PatternData;,
        Landroid/icu/util/Calendar$FormatConfiguration;,
        Landroid/icu/util/Calendar$WeekData;,
        Landroid/icu/util/Calendar$WeekDataCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/icu/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic -android_icu_util_Calendar$CalTypeSwitchesValues:[I = null

.field static final synthetic -assertionsDisabled:Z

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field protected static final BASE_FIELD_COUNT:I = 0x17

.field public static final DATE:I = 0x5

.field static final DATE_PRECEDENCE:[[[I

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field private static final DEFAULT_PATTERNS:[Ljava/lang/String;

.field public static final DOW_LOCAL:I = 0x12

.field static final DOW_PRECEDENCE:[[[I

.field public static final DST_OFFSET:I = 0x10

.field protected static final EPOCH_JULIAN_DAY:I = 0x253d8c

.field public static final ERA:I = 0x0

.field public static final EXTENDED_YEAR:I = 0x13

.field public static final FEBRUARY:I = 0x1

.field private static final FIELD_DIFF_MAX_INT:I = 0x7fffffff

.field private static final FIELD_NAME:[Ljava/lang/String;

.field private static final FIND_ZONE_TRANSITION_TIME_UNITS:[I

.field public static final FRIDAY:I = 0x6

.field protected static final GREATEST_MINIMUM:I = 0x1

.field private static final GREGORIAN_MONTH_COUNT:[[I

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field protected static final INTERNALLY_SET:I = 0x1

.field public static final IS_LEAP_MONTH:I = 0x16

.field public static final JANUARY:I = 0x0

.field protected static final JAN_1_1_JULIAN_DAY:I = 0x1a4452

.field public static final JULIAN_DAY:I = 0x14

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field protected static final LEAST_MAXIMUM:I = 0x2

.field private static final LIMITS:[[I

.field public static final MARCH:I = 0x2

.field protected static final MAXIMUM:I = 0x3

.field protected static final MAX_DATE:Ljava/util/Date;

.field protected static final MAX_FIELD_COUNT:I = 0x20

.field protected static final MAX_JULIAN:I = 0x7f000000

.field protected static final MAX_MILLIS:J = 0x28d47dbbf19b000L

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MILLISECONDS_IN_DAY:I = 0x15

.field protected static final MINIMUM:I = 0x0

.field protected static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field protected static final MIN_DATE:Ljava/util/Date;

.field protected static final MIN_JULIAN:I = -0x7f000000

.field protected static final MIN_MILLIS:J = -0x28ec76c40e65000L

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field protected static final ONE_DAY:J = 0x5265c00L

.field protected static final ONE_HOUR:I = 0x36ee80

.field protected static final ONE_MINUTE:I = 0xea60

.field protected static final ONE_SECOND:I = 0x3e8

.field protected static final ONE_WEEK:J = 0x240c8400L

.field private static final PATTERN_CACHE:Landroid/icu/impl/ICUCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/icu/impl/ICUCache",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/util/Calendar$PatternData;",
            ">;"
        }
    .end annotation
.end field

.field public static final PM:I = 0x1

.field private static final QUOTE:C = '\''

.field protected static final RESOLVE_REMAP:I = 0x20

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field private static STAMP_MAX:I = 0x0

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field protected static final UNSET:I = 0x0

.field public static final WALLTIME_FIRST:I = 0x1

.field public static final WALLTIME_LAST:I = 0x0

.field public static final WALLTIME_NEXT_VALID:I = 0x2

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEKDAY:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_CEASE:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WEEKEND_ONSET:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final YEAR_WOY:I = 0x11

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialVersionUID:J = 0x565b47a9d4dd4fcdL


# instance fields
.field private actualLocale:Landroid/icu/util/ULocale;

.field private transient areAllFieldsSet:Z

.field private transient areFieldsSet:Z

.field private transient areFieldsVirtuallySet:Z

.field private transient fields:[I

.field private firstDayOfWeek:I

.field private transient gregorianDayOfMonth:I

.field private transient gregorianDayOfYear:I

.field private transient gregorianMonth:I

.field private transient gregorianYear:I

.field private transient internalSetMask:I

.field private transient isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private transient nextStamp:I

.field private repeatedWallTime:I

.field private skippedWallTime:I

.field private transient stamp:[I

.field private time:J

.field private validLocale:Landroid/icu/util/ULocale;

.field private weekendCease:I

.field private weekendCeaseMillis:I

.field private weekendOnset:I

.field private weekendOnsetMillis:I

.field private zone:Landroid/icu/util/TimeZone;


# direct methods
.method static synthetic -get0()[Ljava/lang/String;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    #@2
    return-object v0
.end method

.method static synthetic -get1()Landroid/icu/impl/ICUCache;
    .locals 1

    #@0
    sget-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@2
    return-object v0
.end method

.method private static synthetic -getandroid_icu_util_Calendar$CalTypeSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Landroid/icu/util/Calendar;->-android_icu_util_Calendar$CalTypeSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Landroid/icu/util/Calendar;->-android_icu_util_Calendar$CalTypeSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/icu/util/Calendar$CalType;->BUDDHIST:Landroid/icu/util/Calendar$CalType;

    #@10
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_12

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/icu/util/Calendar$CalType;->CHINESE:Landroid/icu/util/Calendar$CalType;

    #@19
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_11

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/icu/util/Calendar$CalType;->COPTIC:Landroid/icu/util/Calendar$CalType;

    #@22
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_10

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/icu/util/Calendar$CalType;->DANGI:Landroid/icu/util/Calendar$CalType;

    #@2b
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_f

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC:Landroid/icu/util/Calendar$CalType;

    #@34
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_e

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ETHIOPIC_AMETE_ALEM:Landroid/icu/util/Calendar$CalType;

    #@3d
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_d

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    #@46
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/4 v2, 0x7

    #@4b
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_c

    #@4d
    :goto_6
    :try_start_7
    sget-object v1, Landroid/icu/util/Calendar$CalType;->HEBREW:Landroid/icu/util/Calendar$CalType;

    #@4f
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@52
    move-result v1

    #@53
    const/16 v2, 0x8

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_b

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/icu/util/Calendar$CalType;->INDIAN:Landroid/icu/util/Calendar$CalType;

    #@59
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_a

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC:Landroid/icu/util/Calendar$CalType;

    #@63
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_CIVIL:Landroid/icu/util/Calendar$CalType;

    #@6d
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_8

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_RGSA:Landroid/icu/util/Calendar$CalType;

    #@77
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_7

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_TBLA:Landroid/icu/util/Calendar$CalType;

    #@81
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_6

    #@89
    :goto_c
    :try_start_d
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISLAMIC_UMALQURA:Landroid/icu/util/Calendar$CalType;

    #@8b
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@8e
    move-result v1

    #@8f
    const/16 v2, 0xe

    #@91
    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_5

    #@93
    :goto_d
    :try_start_e
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ISO8601:Landroid/icu/util/Calendar$CalType;

    #@95
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@98
    move-result v1

    #@99
    const/16 v2, 0xf

    #@9b
    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_4

    #@9d
    :goto_e
    :try_start_f
    sget-object v1, Landroid/icu/util/Calendar$CalType;->JAPANESE:Landroid/icu/util/Calendar$CalType;

    #@9f
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@a2
    move-result v1

    #@a3
    const/16 v2, 0x10

    #@a5
    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_3

    #@a7
    :goto_f
    :try_start_10
    sget-object v1, Landroid/icu/util/Calendar$CalType;->PERSIAN:Landroid/icu/util/Calendar$CalType;

    #@a9
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@ac
    move-result v1

    #@ad
    const/16 v2, 0x11

    #@af
    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_2

    #@b1
    :goto_10
    :try_start_11
    sget-object v1, Landroid/icu/util/Calendar$CalType;->ROC:Landroid/icu/util/Calendar$CalType;

    #@b3
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@b6
    move-result v1

    #@b7
    const/16 v2, 0x12

    #@b9
    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_1

    #@bb
    :goto_11
    :try_start_12
    sget-object v1, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    #@bd
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@c0
    move-result v1

    #@c1
    const/16 v2, 0x13

    #@c3
    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_0

    #@c5
    :goto_12
    sput-object v0, Landroid/icu/util/Calendar;->-android_icu_util_Calendar$CalTypeSwitchesValues:[I

    #@c7
    return-object v0

    #@c8
    :catch_0
    move-exception v1

    #@c9
    goto :goto_12

    #@ca
    :catch_1
    move-exception v1

    #@cb
    goto :goto_11

    #@cc
    :catch_2
    move-exception v1

    #@cd
    goto :goto_10

    #@ce
    :catch_3
    move-exception v1

    #@cf
    goto :goto_f

    #@d0
    :catch_4
    move-exception v1

    #@d1
    goto :goto_e

    #@d2
    :catch_5
    move-exception v1

    #@d3
    goto :goto_d

    #@d4
    :catch_6
    move-exception v1

    #@d5
    goto :goto_c

    #@d6
    :catch_7
    move-exception v1

    #@d7
    goto :goto_b

    #@d8
    :catch_8
    move-exception v1

    #@d9
    goto :goto_a

    #@da
    :catch_9
    move-exception v1

    #@db
    goto :goto_9

    #@dc
    :catch_a
    move-exception v1

    #@dd
    goto :goto_8

    #@de
    :catch_b
    move-exception v1

    #@df
    goto/16 :goto_7

    #@e1
    :catch_c
    move-exception v1

    #@e2
    goto/16 :goto_6

    #@e4
    :catch_d
    move-exception v1

    #@e5
    goto/16 :goto_5

    #@e7
    :catch_e
    move-exception v1

    #@e8
    goto/16 :goto_4

    #@ea
    :catch_f
    move-exception v1

    #@eb
    goto/16 :goto_3

    #@ed
    :catch_10
    move-exception v1

    #@ee
    goto/16 :goto_2

    #@f0
    :catch_11
    move-exception v1

    #@f1
    goto/16 :goto_1

    #@f3
    :catch_12
    move-exception v1

    #@f4
    goto/16 :goto_0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 1
    .param p0, "region"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-static {p0}, Landroid/icu/util/Calendar;->getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x3

    #@1
    const/4 v8, 0x7

    #@2
    const/16 v7, 0x1f

    #@4
    const/4 v2, 0x1

    #@5
    const/4 v1, 0x0

    #@6
    const-class v0, Landroid/icu/util/Calendar;

    #@8
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    move v0, v1

    #@f
    :goto_0
    sput-boolean v0, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    #@11
    .line 1276
    new-instance v0, Ljava/util/Date;

    #@13
    const-wide v4, -0x28ec76c40e65000L

    #@18
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@1b
    sput-object v0, Landroid/icu/util/Calendar;->MIN_DATE:Ljava/util/Date;

    #@1d
    .line 1298
    new-instance v0, Ljava/util/Date;

    #@1f
    const-wide v4, 0x28d47dbbf19b000L

    #@24
    invoke-direct {v0, v4, v5}, Ljava/util/Date;-><init>(J)V

    #@27
    sput-object v0, Landroid/icu/util/Calendar;->MAX_DATE:Ljava/util/Date;

    #@29
    .line 1477
    const/16 v0, 0x2710

    #@2b
    sput v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    #@2d
    .line 3525
    new-instance v0, Landroid/icu/impl/SimpleCache;

    #@2f
    invoke-direct {v0}, Landroid/icu/impl/SimpleCache;-><init>()V

    #@32
    .line 3524
    sput-object v0, Landroid/icu/util/Calendar;->PATTERN_CACHE:Landroid/icu/impl/ICUCache;

    #@34
    .line 3527
    const/16 v0, 0xd

    #@36
    new-array v0, v0, [Ljava/lang/String;

    #@38
    .line 3528
    const-string/jumbo v3, "HH:mm:ss z"

    #@3b
    aput-object v3, v0, v1

    #@3d
    .line 3529
    const-string/jumbo v3, "HH:mm:ss z"

    #@40
    aput-object v3, v0, v2

    #@42
    .line 3530
    const-string/jumbo v3, "HH:mm:ss"

    #@45
    const/4 v4, 0x2

    #@46
    aput-object v3, v0, v4

    #@48
    .line 3531
    const-string/jumbo v3, "HH:mm"

    #@4b
    aput-object v3, v0, v9

    #@4d
    .line 3532
    const-string/jumbo v3, "EEEE, yyyy MMMM dd"

    #@50
    const/4 v4, 0x4

    #@51
    aput-object v3, v0, v4

    #@53
    .line 3533
    const-string/jumbo v3, "yyyy MMMM d"

    #@56
    const/4 v4, 0x5

    #@57
    aput-object v3, v0, v4

    #@59
    .line 3534
    const-string/jumbo v3, "yyyy MMM d"

    #@5c
    const/4 v4, 0x6

    #@5d
    aput-object v3, v0, v4

    #@5f
    .line 3535
    const-string/jumbo v3, "yy/MM/dd"

    #@62
    aput-object v3, v0, v8

    #@64
    .line 3536
    const-string/jumbo v3, "{1} {0}"

    #@67
    const/16 v4, 0x8

    #@69
    aput-object v3, v0, v4

    #@6b
    .line 3537
    const-string/jumbo v3, "{1} {0}"

    #@6e
    const/16 v4, 0x9

    #@70
    aput-object v3, v0, v4

    #@72
    .line 3538
    const-string/jumbo v3, "{1} {0}"

    #@75
    const/16 v4, 0xa

    #@77
    aput-object v3, v0, v4

    #@79
    .line 3539
    const-string/jumbo v3, "{1} {0}"

    #@7c
    const/16 v4, 0xb

    #@7e
    aput-object v3, v0, v4

    #@80
    .line 3540
    const-string/jumbo v3, "{1} {0}"

    #@83
    const/16 v4, 0xc

    #@85
    aput-object v3, v0, v4

    #@87
    .line 3527
    sput-object v0, Landroid/icu/util/Calendar;->DEFAULT_PATTERNS:[Ljava/lang/String;

    #@89
    .line 4277
    const/16 v0, 0x17

    #@8b
    new-array v0, v0, [[I

    #@8d
    .line 4279
    new-array v3, v1, [I

    #@8f
    aput-object v3, v0, v1

    #@91
    .line 4280
    new-array v3, v1, [I

    #@93
    aput-object v3, v0, v2

    #@95
    .line 4281
    new-array v3, v1, [I

    #@97
    const/4 v4, 0x2

    #@98
    aput-object v3, v0, v4

    #@9a
    .line 4282
    new-array v3, v1, [I

    #@9c
    aput-object v3, v0, v9

    #@9e
    .line 4283
    new-array v3, v1, [I

    #@a0
    const/4 v4, 0x4

    #@a1
    aput-object v3, v0, v4

    #@a3
    .line 4284
    new-array v3, v1, [I

    #@a5
    const/4 v4, 0x5

    #@a6
    aput-object v3, v0, v4

    #@a8
    .line 4285
    new-array v3, v1, [I

    #@aa
    const/4 v4, 0x6

    #@ab
    aput-object v3, v0, v4

    #@ad
    .line 4286
    filled-new-array {v2, v2, v8, v8}, [I

    #@b0
    move-result-object v3

    #@b1
    aput-object v3, v0, v8

    #@b3
    .line 4287
    new-array v3, v1, [I

    #@b5
    const/16 v4, 0x8

    #@b7
    aput-object v3, v0, v4

    #@b9
    .line 4288
    filled-new-array {v1, v1, v2, v2}, [I

    #@bc
    move-result-object v3

    #@bd
    const/16 v4, 0x9

    #@bf
    aput-object v3, v0, v4

    #@c1
    .line 4289
    const/16 v3, 0xb

    #@c3
    const/16 v4, 0xb

    #@c5
    filled-new-array {v1, v1, v3, v4}, [I

    #@c8
    move-result-object v3

    #@c9
    const/16 v4, 0xa

    #@cb
    aput-object v3, v0, v4

    #@cd
    .line 4290
    const/16 v3, 0x17

    #@cf
    const/16 v4, 0x17

    #@d1
    filled-new-array {v1, v1, v3, v4}, [I

    #@d4
    move-result-object v3

    #@d5
    const/16 v4, 0xb

    #@d7
    aput-object v3, v0, v4

    #@d9
    .line 4291
    const/16 v3, 0x3b

    #@db
    const/16 v4, 0x3b

    #@dd
    filled-new-array {v1, v1, v3, v4}, [I

    #@e0
    move-result-object v3

    #@e1
    const/16 v4, 0xc

    #@e3
    aput-object v3, v0, v4

    #@e5
    .line 4292
    const/16 v3, 0x3b

    #@e7
    const/16 v4, 0x3b

    #@e9
    filled-new-array {v1, v1, v3, v4}, [I

    #@ec
    move-result-object v3

    #@ed
    const/16 v4, 0xd

    #@ef
    aput-object v3, v0, v4

    #@f1
    .line 4293
    const/16 v3, 0x3e7

    #@f3
    const/16 v4, 0x3e7

    #@f5
    filled-new-array {v1, v1, v3, v4}, [I

    #@f8
    move-result-object v3

    #@f9
    const/16 v4, 0xe

    #@fb
    aput-object v3, v0, v4

    #@fd
    .line 4294
    const v3, -0x2932e00

    #@100
    const v4, -0x2932e00

    #@103
    const v5, 0x2932e00

    #@106
    const v6, 0x2932e00

    #@109
    filled-new-array {v3, v4, v5, v6}, [I

    #@10c
    move-result-object v3

    #@10d
    const/16 v4, 0xf

    #@10f
    aput-object v3, v0, v4

    #@111
    .line 4295
    const v3, 0x36ee80

    #@114
    const v4, 0x36ee80

    #@117
    filled-new-array {v1, v1, v3, v4}, [I

    #@11a
    move-result-object v3

    #@11b
    const/16 v4, 0x10

    #@11d
    aput-object v3, v0, v4

    #@11f
    .line 4296
    new-array v3, v1, [I

    #@121
    const/16 v4, 0x11

    #@123
    aput-object v3, v0, v4

    #@125
    .line 4297
    filled-new-array {v2, v2, v8, v8}, [I

    #@128
    move-result-object v3

    #@129
    const/16 v4, 0x12

    #@12b
    aput-object v3, v0, v4

    #@12d
    .line 4298
    new-array v3, v1, [I

    #@12f
    const/16 v4, 0x13

    #@131
    aput-object v3, v0, v4

    #@133
    .line 4299
    const/high16 v3, -0x7f000000

    #@135
    const/high16 v4, -0x7f000000

    #@137
    const/high16 v5, 0x7f000000

    #@139
    const/high16 v6, 0x7f000000

    #@13b
    filled-new-array {v3, v4, v5, v6}, [I

    #@13e
    move-result-object v3

    #@13f
    const/16 v4, 0x14

    #@141
    aput-object v3, v0, v4

    #@143
    .line 4300
    const v3, 0x5265bff

    #@146
    const v4, 0x5265bff

    #@149
    filled-new-array {v1, v1, v3, v4}, [I

    #@14c
    move-result-object v3

    #@14d
    const/16 v4, 0x15

    #@14f
    aput-object v3, v0, v4

    #@151
    .line 4301
    filled-new-array {v1, v1, v2, v2}, [I

    #@154
    move-result-object v3

    #@155
    const/16 v4, 0x16

    #@157
    aput-object v3, v0, v4

    #@159
    .line 4277
    sput-object v0, Landroid/icu/util/Calendar;->LIMITS:[[I

    #@15b
    .line 4870
    new-instance v0, Landroid/icu/util/Calendar$WeekDataCache;

    #@15d
    const/4 v3, 0x0

    #@15e
    invoke-direct {v0, v3}, Landroid/icu/util/Calendar$WeekDataCache;-><init>(Landroid/icu/util/Calendar$WeekDataCache;)V

    #@161
    sput-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    #@163
    .line 5171
    const/4 v0, 0x2

    #@164
    new-array v0, v0, [[[I

    #@166
    .line 5172
    const/16 v3, 0xa

    #@168
    new-array v3, v3, [[I

    #@16a
    .line 5173
    new-array v4, v2, [I

    #@16c
    const/4 v5, 0x5

    #@16d
    aput v5, v4, v1

    #@16f
    aput-object v4, v3, v1

    #@171
    .line 5174
    filled-new-array {v9, v8}, [I

    #@174
    move-result-object v4

    #@175
    aput-object v4, v3, v2

    #@177
    .line 5175
    const/4 v4, 0x4

    #@178
    filled-new-array {v4, v8}, [I

    #@17b
    move-result-object v4

    #@17c
    const/4 v5, 0x2

    #@17d
    aput-object v4, v3, v5

    #@17f
    .line 5176
    const/16 v4, 0x8

    #@181
    filled-new-array {v4, v8}, [I

    #@184
    move-result-object v4

    #@185
    aput-object v4, v3, v9

    #@187
    .line 5177
    const/16 v4, 0x12

    #@189
    filled-new-array {v9, v4}, [I

    #@18c
    move-result-object v4

    #@18d
    const/4 v5, 0x4

    #@18e
    aput-object v4, v3, v5

    #@190
    .line 5178
    const/4 v4, 0x4

    #@191
    const/16 v5, 0x12

    #@193
    filled-new-array {v4, v5}, [I

    #@196
    move-result-object v4

    #@197
    const/4 v5, 0x5

    #@198
    aput-object v4, v3, v5

    #@19a
    .line 5179
    const/16 v4, 0x8

    #@19c
    const/16 v5, 0x12

    #@19e
    filled-new-array {v4, v5}, [I

    #@1a1
    move-result-object v4

    #@1a2
    const/4 v5, 0x6

    #@1a3
    aput-object v4, v3, v5

    #@1a5
    .line 5180
    new-array v4, v2, [I

    #@1a7
    const/4 v5, 0x6

    #@1a8
    aput v5, v4, v1

    #@1aa
    aput-object v4, v3, v8

    #@1ac
    .line 5181
    const/16 v4, 0x25

    #@1ae
    filled-new-array {v4, v2}, [I

    #@1b1
    move-result-object v4

    #@1b2
    const/16 v5, 0x8

    #@1b4
    aput-object v4, v3, v5

    #@1b6
    .line 5182
    const/16 v4, 0x23

    #@1b8
    const/16 v5, 0x11

    #@1ba
    filled-new-array {v4, v5}, [I

    #@1bd
    move-result-object v4

    #@1be
    const/16 v5, 0x9

    #@1c0
    aput-object v4, v3, v5

    #@1c2
    .line 5172
    aput-object v3, v0, v1

    #@1c4
    .line 5184
    const/4 v3, 0x5

    #@1c5
    new-array v3, v3, [[I

    #@1c7
    .line 5185
    new-array v4, v2, [I

    #@1c9
    aput v9, v4, v1

    #@1cb
    aput-object v4, v3, v1

    #@1cd
    .line 5186
    new-array v4, v2, [I

    #@1cf
    const/4 v5, 0x4

    #@1d0
    aput v5, v4, v1

    #@1d2
    aput-object v4, v3, v2

    #@1d4
    .line 5187
    new-array v4, v2, [I

    #@1d6
    const/16 v5, 0x8

    #@1d8
    aput v5, v4, v1

    #@1da
    const/4 v5, 0x2

    #@1db
    aput-object v4, v3, v5

    #@1dd
    .line 5188
    const/16 v4, 0x28

    #@1df
    filled-new-array {v4, v8}, [I

    #@1e2
    move-result-object v4

    #@1e3
    aput-object v4, v3, v9

    #@1e5
    .line 5189
    const/16 v4, 0x28

    #@1e7
    const/16 v5, 0x12

    #@1e9
    filled-new-array {v4, v5}, [I

    #@1ec
    move-result-object v4

    #@1ed
    const/4 v5, 0x4

    #@1ee
    aput-object v4, v3, v5

    #@1f0
    .line 5184
    aput-object v3, v0, v2

    #@1f2
    .line 5171
    sput-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    #@1f4
    .line 5193
    new-array v0, v2, [[[I

    #@1f6
    .line 5194
    const/4 v3, 0x2

    #@1f7
    new-array v3, v3, [[I

    #@1f9
    .line 5195
    new-array v4, v2, [I

    #@1fb
    aput v8, v4, v1

    #@1fd
    aput-object v4, v3, v1

    #@1ff
    .line 5196
    new-array v4, v2, [I

    #@201
    const/16 v5, 0x12

    #@203
    aput v5, v4, v1

    #@205
    aput-object v4, v3, v2

    #@207
    .line 5194
    aput-object v3, v0, v1

    #@209
    .line 5193
    sput-object v0, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    #@20b
    .line 5516
    const v0, 0x36ee80

    #@20e
    .line 5517
    const v3, 0x1b7740

    #@211
    .line 5518
    const v4, 0xea60

    #@214
    .line 5519
    const/16 v5, 0x3e8

    #@216
    .line 5515
    filled-new-array {v0, v3, v4, v5}, [I

    #@219
    move-result-object v0

    #@21a
    sput-object v0, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    #@21c
    .line 6095
    const/16 v0, 0xc

    #@21e
    new-array v0, v0, [[I

    #@220
    .line 6097
    filled-new-array {v7, v7, v1, v1}, [I

    #@223
    move-result-object v3

    #@224
    aput-object v3, v0, v1

    #@226
    .line 6098
    const/16 v3, 0x1c

    #@228
    const/16 v4, 0x1d

    #@22a
    filled-new-array {v3, v4, v7, v7}, [I

    #@22d
    move-result-object v3

    #@22e
    aput-object v3, v0, v2

    #@230
    .line 6099
    const/16 v3, 0x3b

    #@232
    const/16 v4, 0x3c

    #@234
    filled-new-array {v7, v7, v3, v4}, [I

    #@237
    move-result-object v3

    #@238
    const/4 v4, 0x2

    #@239
    aput-object v3, v0, v4

    #@23b
    .line 6100
    const/16 v3, 0x1e

    #@23d
    const/16 v4, 0x1e

    #@23f
    const/16 v5, 0x5a

    #@241
    const/16 v6, 0x5b

    #@243
    filled-new-array {v3, v4, v5, v6}, [I

    #@246
    move-result-object v3

    #@247
    aput-object v3, v0, v9

    #@249
    .line 6101
    const/16 v3, 0x78

    #@24b
    const/16 v4, 0x79

    #@24d
    filled-new-array {v7, v7, v3, v4}, [I

    #@250
    move-result-object v3

    #@251
    const/4 v4, 0x4

    #@252
    aput-object v3, v0, v4

    #@254
    .line 6102
    const/16 v3, 0x1e

    #@256
    const/16 v4, 0x1e

    #@258
    const/16 v5, 0x97

    #@25a
    const/16 v6, 0x98

    #@25c
    filled-new-array {v3, v4, v5, v6}, [I

    #@25f
    move-result-object v3

    #@260
    const/4 v4, 0x5

    #@261
    aput-object v3, v0, v4

    #@263
    .line 6103
    const/16 v3, 0xb5

    #@265
    const/16 v4, 0xb6

    #@267
    filled-new-array {v7, v7, v3, v4}, [I

    #@26a
    move-result-object v3

    #@26b
    const/4 v4, 0x6

    #@26c
    aput-object v3, v0, v4

    #@26e
    .line 6104
    const/16 v3, 0xd4

    #@270
    const/16 v4, 0xd5

    #@272
    filled-new-array {v7, v7, v3, v4}, [I

    #@275
    move-result-object v3

    #@276
    aput-object v3, v0, v8

    #@278
    .line 6105
    const/16 v3, 0x1e

    #@27a
    const/16 v4, 0x1e

    #@27c
    const/16 v5, 0xf3

    #@27e
    const/16 v6, 0xf4

    #@280
    filled-new-array {v3, v4, v5, v6}, [I

    #@283
    move-result-object v3

    #@284
    const/16 v4, 0x8

    #@286
    aput-object v3, v0, v4

    #@288
    .line 6106
    const/16 v3, 0x111

    #@28a
    const/16 v4, 0x112

    #@28c
    filled-new-array {v7, v7, v3, v4}, [I

    #@28f
    move-result-object v3

    #@290
    const/16 v4, 0x9

    #@292
    aput-object v3, v0, v4

    #@294
    .line 6107
    const/16 v3, 0x1e

    #@296
    const/16 v4, 0x1e

    #@298
    const/16 v5, 0x130

    #@29a
    const/16 v6, 0x131

    #@29c
    filled-new-array {v3, v4, v5, v6}, [I

    #@29f
    move-result-object v3

    #@2a0
    const/16 v4, 0xa

    #@2a2
    aput-object v3, v0, v4

    #@2a4
    .line 6108
    const/16 v3, 0x14e

    #@2a6
    const/16 v4, 0x14f

    #@2a8
    filled-new-array {v7, v7, v3, v4}, [I

    #@2ab
    move-result-object v3

    #@2ac
    const/16 v4, 0xb

    #@2ae
    aput-object v3, v0, v4

    #@2b0
    .line 6095
    sput-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    #@2b2
    .line 6236
    const/16 v0, 0x16

    #@2b4
    new-array v0, v0, [Ljava/lang/String;

    #@2b6
    .line 6237
    const-string/jumbo v3, "ERA"

    #@2b9
    aput-object v3, v0, v1

    #@2bb
    const-string/jumbo v1, "YEAR"

    #@2be
    aput-object v1, v0, v2

    #@2c0
    const-string/jumbo v1, "MONTH"

    #@2c3
    const/4 v2, 0x2

    #@2c4
    aput-object v1, v0, v2

    #@2c6
    const-string/jumbo v1, "WEEK_OF_YEAR"

    #@2c9
    aput-object v1, v0, v9

    #@2cb
    const-string/jumbo v1, "WEEK_OF_MONTH"

    #@2ce
    const/4 v2, 0x4

    #@2cf
    aput-object v1, v0, v2

    #@2d1
    .line 6238
    const-string/jumbo v1, "DAY_OF_MONTH"

    #@2d4
    const/4 v2, 0x5

    #@2d5
    aput-object v1, v0, v2

    #@2d7
    const-string/jumbo v1, "DAY_OF_YEAR"

    #@2da
    const/4 v2, 0x6

    #@2db
    aput-object v1, v0, v2

    #@2dd
    const-string/jumbo v1, "DAY_OF_WEEK"

    #@2e0
    aput-object v1, v0, v8

    #@2e2
    .line 6239
    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH"

    #@2e5
    const/16 v2, 0x8

    #@2e7
    aput-object v1, v0, v2

    #@2e9
    const-string/jumbo v1, "AM_PM"

    #@2ec
    const/16 v2, 0x9

    #@2ee
    aput-object v1, v0, v2

    #@2f0
    const-string/jumbo v1, "HOUR"

    #@2f3
    const/16 v2, 0xa

    #@2f5
    aput-object v1, v0, v2

    #@2f7
    const-string/jumbo v1, "HOUR_OF_DAY"

    #@2fa
    const/16 v2, 0xb

    #@2fc
    aput-object v1, v0, v2

    #@2fe
    .line 6240
    const-string/jumbo v1, "MINUTE"

    #@301
    const/16 v2, 0xc

    #@303
    aput-object v1, v0, v2

    #@305
    const-string/jumbo v1, "SECOND"

    #@308
    const/16 v2, 0xd

    #@30a
    aput-object v1, v0, v2

    #@30c
    const-string/jumbo v1, "MILLISECOND"

    #@30f
    const/16 v2, 0xe

    #@311
    aput-object v1, v0, v2

    #@313
    const-string/jumbo v1, "ZONE_OFFSET"

    #@316
    const/16 v2, 0xf

    #@318
    aput-object v1, v0, v2

    #@31a
    .line 6241
    const-string/jumbo v1, "DST_OFFSET"

    #@31d
    const/16 v2, 0x10

    #@31f
    aput-object v1, v0, v2

    #@321
    const-string/jumbo v1, "YEAR_WOY"

    #@324
    const/16 v2, 0x11

    #@326
    aput-object v1, v0, v2

    #@328
    const-string/jumbo v1, "DOW_LOCAL"

    #@32b
    const/16 v2, 0x12

    #@32d
    aput-object v1, v0, v2

    #@32f
    const-string/jumbo v1, "EXTENDED_YEAR"

    #@332
    const/16 v2, 0x13

    #@334
    aput-object v1, v0, v2

    #@336
    .line 6242
    const-string/jumbo v1, "JULIAN_DAY"

    #@339
    const/16 v2, 0x14

    #@33b
    aput-object v1, v0, v2

    #@33d
    const-string/jumbo v1, "MILLISECONDS_IN_DAY"

    #@340
    const/16 v2, 0x15

    #@342
    aput-object v1, v0, v2

    #@344
    .line 6236
    sput-object v0, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    #@346
    .line 640
    return-void

    #@347
    :cond_0
    move v0, v2

    #@348
    goto/16 :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 1559
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 1557
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1579
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 1374
    const/4 v0, 0x1

    #@5
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@7
    .line 1435
    iput v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@9
    .line 1440
    iput v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@b
    .line 1474
    const/4 v0, 0x2

    #@c
    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@e
    .line 1581
    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@10
    .line 1584
    invoke-static {p2}, Landroid/icu/util/Calendar;->getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@13
    move-result-object v0

    #@14
    invoke-direct {p0, v0}, Landroid/icu/util/Calendar;->setWeekData(Ljava/lang/String;)V

    #@17
    .line 1587
    invoke-direct {p0, p2}, Landroid/icu/util/Calendar;->setCalendarLocale(Landroid/icu/util/ULocale;)V

    #@1a
    .line 1589
    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    #@1d
    .line 1579
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1570
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 1568
    return-void
.end method

.method private compare(Ljava/lang/Object;)J
    .locals 5
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2431
    instance-of v2, p1, Landroid/icu/util/Calendar;

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 2432
    check-cast p1, Landroid/icu/util/Calendar;

    #@6
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v0

    #@a
    .line 2438
    .local v0, "thatMs":J
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@d
    move-result-wide v2

    #@e
    sub-long/2addr v2, v0

    #@f
    return-wide v2

    #@10
    .line 2433
    .end local v0    # "thatMs":J
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/util/Date;

    #@12
    if-eqz v2, :cond_1

    #@14
    .line 2434
    check-cast p1, Ljava/util/Date;

    #@16
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@19
    move-result-wide v0

    #@1a
    .restart local v0    # "thatMs":J
    goto :goto_0

    #@1b
    .line 2436
    .end local v0    # "thatMs":J
    .restart local p1    # "that":Ljava/lang/Object;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@1d
    new-instance v3, Ljava/lang/StringBuilder;

    #@1f
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@22
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v3

    #@26
    const-string/jumbo v4, "is not a Calendar or Date"

    #@29
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v3

    #@2d
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v3

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2
.end method

.method private final computeGregorianAndDOWFields(I)V
    .locals 4
    .param p1, "julianDay"    # I

    #@0
    .prologue
    .line 5013
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->computeGregorianFields(I)V

    #@3
    .line 5016
    invoke-static {p1}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    #@6
    move-result v0

    #@7
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@9
    const/4 v3, 0x7

    #@a
    aput v0, v2, v3

    #@c
    .line 5019
    .local v0, "dow":I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@f
    move-result v2

    #@10
    sub-int v2, v0, v2

    #@12
    add-int/lit8 v1, v2, 0x1

    #@14
    .line 5020
    .local v1, "dowLocal":I
    const/4 v2, 0x1

    #@15
    if-ge v1, v2, :cond_0

    #@17
    .line 5021
    add-int/lit8 v1, v1, 0x7

    #@19
    .line 5023
    :cond_0
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@1b
    const/16 v3, 0x12

    #@1d
    aput v1, v2, v3

    #@1f
    .line 5012
    return-void
.end method

.method private final computeWeekFields()V
    .locals 14

    #@0
    .prologue
    .line 5097
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@2
    const/16 v12, 0x13

    #@4
    aget v3, v11, v12

    #@6
    .line 5098
    .local v3, "eyear":I
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@8
    const/4 v12, 0x7

    #@9
    aget v1, v11, v12

    #@b
    .line 5099
    .local v1, "dayOfWeek":I
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@d
    const/4 v12, 0x6

    #@e
    aget v2, v11, v12

    #@10
    .line 5110
    .local v2, "dayOfYear":I
    move v10, v3

    #@11
    .line 5111
    .local v10, "yearOfWeekOfYear":I
    add-int/lit8 v11, v1, 0x7

    #@13
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@16
    move-result v12

    #@17
    sub-int/2addr v11, v12

    #@18
    rem-int/lit8 v7, v11, 0x7

    #@1a
    .line 5112
    .local v7, "relDow":I
    sub-int v11, v1, v2

    #@1c
    add-int/lit16 v11, v11, 0x1b59

    #@1e
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@21
    move-result v12

    #@22
    sub-int/2addr v11, v12

    #@23
    rem-int/lit8 v8, v11, 0x7

    #@25
    .line 5113
    .local v8, "relDowJan1":I
    add-int/lit8 v11, v2, -0x1

    #@27
    add-int/2addr v11, v8

    #@28
    div-int/lit8 v9, v11, 0x7

    #@2a
    .line 5114
    .local v9, "woy":I
    rsub-int/lit8 v11, v8, 0x7

    #@2c
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@2f
    move-result v12

    #@30
    if-lt v11, v12, :cond_0

    #@32
    .line 5115
    add-int/lit8 v9, v9, 0x1

    #@34
    .line 5120
    :cond_0
    if-nez v9, :cond_2

    #@36
    .line 5126
    add-int/lit8 v11, v3, -0x1

    #@38
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    #@3b
    move-result v11

    #@3c
    add-int v6, v2, v11

    #@3e
    .line 5127
    .local v6, "prevDoy":I
    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->weekNumber(II)I

    #@41
    move-result v9

    #@42
    .line 5128
    add-int/lit8 v10, v10, -0x1

    #@44
    .line 5149
    .end local v6    # "prevDoy":I
    :cond_1
    :goto_0
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@46
    const/4 v12, 0x3

    #@47
    aput v9, v11, v12

    #@49
    .line 5150
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@4b
    const/16 v12, 0x11

    #@4d
    aput v10, v11, v12

    #@4f
    .line 5153
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@51
    const/4 v12, 0x5

    #@52
    aget v0, v11, v12

    #@54
    .line 5154
    .local v0, "dayOfMonth":I
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@56
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->weekNumber(II)I

    #@59
    move-result v12

    #@5a
    const/4 v13, 0x4

    #@5b
    aput v12, v11, v13

    #@5d
    .line 5155
    iget-object v11, p0, Landroid/icu/util/Calendar;->fields:[I

    #@5f
    add-int/lit8 v12, v0, -0x1

    #@61
    div-int/lit8 v12, v12, 0x7

    #@63
    add-int/lit8 v12, v12, 0x1

    #@65
    const/16 v13, 0x8

    #@67
    aput v12, v11, v13

    #@69
    .line 5096
    return-void

    #@6a
    .line 5130
    .end local v0    # "dayOfMonth":I
    :cond_2
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    #@6d
    move-result v4

    #@6e
    .line 5137
    .local v4, "lastDoy":I
    add-int/lit8 v11, v4, -0x5

    #@70
    if-lt v2, v11, :cond_1

    #@72
    .line 5138
    add-int v11, v7, v4

    #@74
    sub-int/2addr v11, v2

    #@75
    rem-int/lit8 v5, v11, 0x7

    #@77
    .line 5139
    .local v5, "lastRelDow":I
    if-gez v5, :cond_3

    #@79
    .line 5140
    add-int/lit8 v5, v5, 0x7

    #@7b
    .line 5142
    :cond_3
    rsub-int/lit8 v11, v5, 0x6

    #@7d
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@80
    move-result v12

    #@81
    if-lt v11, v12, :cond_1

    #@83
    .line 5143
    add-int/lit8 v11, v2, 0x7

    #@85
    sub-int/2addr v11, v7

    #@86
    if-le v11, v4, :cond_1

    #@88
    .line 5144
    const/4 v9, 0x1

    #@89
    .line 5145
    add-int/lit8 v10, v10, 0x1

    #@8b
    goto :goto_0
.end method

.method private static createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 5
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1822
    const/4 v0, 0x0

    #@1
    .line 1823
    .local v0, "cal":Landroid/icu/util/Calendar;
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@4
    move-result-object v2

    #@5
    .line 1824
    .local v2, "zone":Landroid/icu/util/TimeZone;
    invoke-static {p0}, Landroid/icu/util/Calendar;->getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$CalType;

    #@8
    move-result-object v1

    #@9
    .line 1825
    .local v1, "calType":Landroid/icu/util/Calendar$CalType;
    sget-object v3, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    #@b
    if-ne v1, v3, :cond_0

    #@d
    .line 1827
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    #@f
    .line 1830
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->-getandroid_icu_util_Calendar$CalTypeSwitchesValues()[I

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@16
    move-result v4

    #@17
    aget v3, v3, v4

    #@19
    packed-switch v3, :pswitch_data_0

    #@1c
    .line 1886
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@1e
    const-string/jumbo v4, "Unknown calendar type"

    #@21
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@24
    throw v3

    #@25
    .line 1832
    :pswitch_0
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@27
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@2a
    .line 1889
    .local v0, "cal":Landroid/icu/util/Calendar;
    :goto_0
    return-object v0

    #@2b
    .line 1836
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_1
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@2d
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@30
    .line 1837
    .local v0, "cal":Landroid/icu/util/Calendar;
    const/4 v3, 0x2

    #@31
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    #@34
    .line 1838
    const/4 v3, 0x4

    #@35
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    #@38
    goto :goto_0

    #@39
    .line 1842
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_2
    new-instance v0, Landroid/icu/util/BuddhistCalendar;

    #@3b
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/BuddhistCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3e
    .line 1843
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@3f
    .line 1845
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_3
    new-instance v0, Landroid/icu/util/ChineseCalendar;

    #@41
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@44
    .line 1846
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@45
    .line 1848
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_4
    new-instance v0, Landroid/icu/util/CopticCalendar;

    #@47
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/CopticCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@4a
    .line 1849
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@4b
    .line 1851
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_5
    new-instance v0, Landroid/icu/util/DangiCalendar;

    #@4d
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/DangiCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@50
    .line 1852
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@51
    .line 1854
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_6
    new-instance v0, Landroid/icu/util/EthiopicCalendar;

    #@53
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@56
    .line 1855
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@57
    .line 1857
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_7
    new-instance v0, Landroid/icu/util/EthiopicCalendar;

    #@59
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/EthiopicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@5c
    .local v0, "cal":Landroid/icu/util/Calendar;
    move-object v3, v0

    #@5d
    .line 1858
    check-cast v3, Landroid/icu/util/EthiopicCalendar;

    #@5f
    const/4 v4, 0x1

    #@60
    invoke-virtual {v3, v4}, Landroid/icu/util/EthiopicCalendar;->setAmeteAlemEra(Z)V

    #@63
    goto :goto_0

    #@64
    .line 1861
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_8
    new-instance v0, Landroid/icu/util/HebrewCalendar;

    #@66
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@69
    .line 1862
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@6a
    .line 1864
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_9
    new-instance v0, Landroid/icu/util/IndianCalendar;

    #@6c
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@6f
    .line 1865
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@70
    .line 1871
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_a
    new-instance v0, Landroid/icu/util/IslamicCalendar;

    #@72
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@75
    .line 1872
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@76
    .line 1874
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_b
    new-instance v0, Landroid/icu/util/JapaneseCalendar;

    #@78
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/JapaneseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7b
    .line 1875
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@7c
    .line 1877
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_c
    new-instance v0, Landroid/icu/util/PersianCalendar;

    #@7e
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@81
    .line 1878
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@82
    .line 1880
    .local v0, "cal":Landroid/icu/util/Calendar;
    :pswitch_d
    new-instance v0, Landroid/icu/util/TaiwanCalendar;

    #@84
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-direct {v0, v2, p0}, Landroid/icu/util/TaiwanCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@87
    .line 1881
    .local v0, "cal":Landroid/icu/util/Calendar;
    goto :goto_0

    #@88
    .line 1830
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "pattern"    # Ljava/lang/String;
    .param p1, "override"    # Ljava/lang/String;

    #@0
    .prologue
    .line 3663
    const/16 v5, 0x3d

    #@2
    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    #@5
    move-result v5

    #@6
    if-ltz v5, :cond_0

    #@8
    .line 3664
    return-object p1

    #@9
    .line 3666
    :cond_0
    const/4 v1, 0x0

    #@a
    .line 3667
    .local v1, "inQuotes":Z
    const/16 v3, 0x20

    #@c
    .line 3668
    .local v3, "prevChar":C
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    .line 3670
    .local v4, "result":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/text/StringCharacterIterator;

    #@13
    invoke-direct {v2, p0}, Ljava/text/StringCharacterIterator;-><init>(Ljava/lang/String;)V

    #@16
    .line 3672
    .local v2, "it":Ljava/text/StringCharacterIterator;
    invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->first()C

    #@19
    move-result v0

    #@1a
    .end local v3    # "prevChar":C
    .local v0, "c":C
    :goto_0
    const v5, 0xffff

    #@1d
    if-eq v0, v5, :cond_5

    #@1f
    .line 3673
    const/16 v5, 0x27

    #@21
    if-ne v0, v5, :cond_2

    #@23
    .line 3674
    if-eqz v1, :cond_1

    #@25
    const/4 v1, 0x0

    #@26
    .line 3675
    :goto_1
    move v3, v0

    #@27
    .line 3672
    .local v3, "prevChar":C
    :goto_2
    invoke-virtual {v2}, Ljava/text/StringCharacterIterator;->next()C

    #@2a
    move-result v0

    #@2b
    goto :goto_0

    #@2c
    .line 3674
    .end local v3    # "prevChar":C
    :cond_1
    const/4 v1, 0x1

    #@2d
    goto :goto_1

    #@2e
    .line 3678
    :cond_2
    if-nez v1, :cond_4

    #@30
    if-eq v0, v3, :cond_4

    #@32
    .line 3679
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    #@35
    move-result v5

    #@36
    if-lez v5, :cond_3

    #@38
    .line 3680
    const-string/jumbo v5, ";"

    #@3b
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    .line 3682
    :cond_3
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@41
    .line 3683
    const-string/jumbo v5, "="

    #@44
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@47
    .line 3684
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 3686
    :cond_4
    move v3, v0

    #@4b
    .restart local v3    # "prevChar":C
    goto :goto_2

    #@4c
    .line 3688
    .end local v3    # "prevChar":C
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v5

    #@50
    return-object v5
.end method

.method private static findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;
    .locals 18
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .param p1, "upperOffset"    # I
    .param p2, "upper"    # J
    .param p4, "lower"    # J

    #@0
    .prologue
    .line 5531
    const/4 v13, 0x0

    #@1
    .line 5532
    .local v13, "onUnitTime":Z
    const-wide/16 v6, 0x0

    #@3
    .line 5534
    .local v6, "mid":J
    sget-object v3, Landroid/icu/util/Calendar;->FIND_ZONE_TRANSITION_TIME_UNITS:[I

    #@5
    const/4 v2, 0x0

    #@6
    array-length v4, v3

    #@7
    :goto_0
    if-ge v2, v4, :cond_0

    #@9
    aget v14, v3, v2

    #@b
    .line 5535
    .local v14, "unit":I
    int-to-long v8, v14

    #@c
    div-long v10, p4, v8

    #@e
    .line 5536
    .local v10, "lunits":J
    int-to-long v8, v14

    #@f
    div-long v16, p2, v8

    #@11
    .line 5537
    .local v16, "uunits":J
    cmp-long v5, v16, v10

    #@13
    if-lez v5, :cond_2

    #@15
    .line 5538
    add-long v2, v10, v16

    #@17
    const-wide/16 v4, 0x1

    #@19
    add-long/2addr v2, v4

    #@1a
    const/4 v4, 0x1

    #@1b
    ushr-long/2addr v2, v4

    #@1c
    int-to-long v4, v14

    #@1d
    mul-long v6, v2, v4

    #@1f
    .line 5539
    const/4 v13, 0x1

    #@20
    .line 5545
    .end local v10    # "lunits":J
    .end local v14    # "unit":I
    .end local v16    # "uunits":J
    :cond_0
    if-nez v13, :cond_1

    #@22
    .line 5546
    add-long v2, p2, p4

    #@24
    const/4 v4, 0x1

    #@25
    ushr-long v6, v2, v4

    #@27
    .line 5549
    :cond_1
    if-eqz v13, :cond_5

    #@29
    .line 5550
    cmp-long v2, v6, p2

    #@2b
    if-eqz v2, :cond_4

    #@2d
    .line 5551
    move-object/from16 v0, p0

    #@2f
    invoke-virtual {v0, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@32
    move-result v12

    #@33
    .line 5552
    .local v12, "midOffset":I
    move/from16 v0, p1

    #@35
    if-eq v12, v0, :cond_3

    #@37
    move-object/from16 v2, p0

    #@39
    move/from16 v3, p1

    #@3b
    move-wide/from16 v4, p2

    #@3d
    .line 5553
    invoke-static/range {v2 .. v7}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    #@40
    move-result-object v2

    #@41
    return-object v2

    #@42
    .line 5534
    .end local v12    # "midOffset":I
    .restart local v10    # "lunits":J
    .restart local v14    # "unit":I
    .restart local v16    # "uunits":J
    :cond_2
    add-int/lit8 v2, v2, 0x1

    #@44
    goto :goto_0

    #@45
    .line 5555
    .end local v10    # "lunits":J
    .end local v14    # "unit":I
    .end local v16    # "uunits":J
    .restart local v12    # "midOffset":I
    :cond_3
    move-wide/from16 p2, v6

    #@47
    .line 5558
    .end local v12    # "midOffset":I
    :cond_4
    const-wide/16 v2, 0x1

    #@49
    sub-long/2addr v6, v2

    #@4a
    .line 5563
    :goto_1
    cmp-long v2, v6, p4

    #@4c
    if-nez v2, :cond_6

    #@4e
    .line 5564
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@51
    move-result-object v2

    #@52
    return-object v2

    #@53
    .line 5560
    :cond_5
    add-long v2, p2, p4

    #@55
    const/4 v4, 0x1

    #@56
    ushr-long v6, v2, v4

    #@58
    goto :goto_1

    #@59
    .line 5566
    :cond_6
    move-object/from16 v0, p0

    #@5b
    invoke-virtual {v0, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@5e
    move-result v12

    #@5f
    .line 5567
    .restart local v12    # "midOffset":I
    move/from16 v0, p1

    #@61
    if-eq v12, v0, :cond_8

    #@63
    .line 5568
    if-eqz v13, :cond_7

    #@65
    .line 5569
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@68
    move-result-object v2

    #@69
    return-object v2

    #@6a
    :cond_7
    move-object/from16 v2, p0

    #@6c
    move/from16 v3, p1

    #@6e
    move-wide/from16 v4, p2

    #@70
    .line 5571
    invoke-static/range {v2 .. v7}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    #@73
    move-result-object v2

    #@74
    return-object v2

    #@75
    :cond_8
    move-object/from16 v4, p0

    #@77
    move/from16 v5, p1

    #@79
    move-wide/from16 v8, p4

    #@7b
    .line 5573
    invoke-static/range {v4 .. v9}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    #@7e
    move-result-object v2

    #@7f
    return-object v2
.end method

.method private static firstIslamicStartYearFromGrego(I)I
    .locals 7
    .param p0, "year"    # I

    #@0
    .prologue
    const/16 v6, 0x20

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 2245
    const/4 v2, 0x0

    #@5
    .line 2246
    .local v2, "shift":I
    const/16 v5, 0x7b9

    #@7
    if-lt p0, v5, :cond_1

    #@9
    .line 2247
    add-int/lit16 v5, p0, -0x7b9

    #@b
    div-int/lit8 v0, v5, 0x41

    #@d
    .line 2248
    .local v0, "cycle":I
    add-int/lit16 v5, p0, -0x7b9

    #@f
    rem-int/lit8 v1, v5, 0x41

    #@11
    .line 2249
    .local v1, "offset":I
    mul-int/lit8 v5, v0, 0x2

    #@13
    if-lt v1, v6, :cond_0

    #@15
    :goto_0
    add-int v2, v5, v3

    #@17
    .line 2255
    :goto_1
    add-int/lit16 v3, p0, -0x243

    #@19
    add-int/2addr v3, v2

    #@1a
    return v3

    #@1b
    :cond_0
    move v3, v4

    #@1c
    .line 2249
    goto :goto_0

    #@1d
    .line 2251
    .end local v0    # "cycle":I
    .end local v1    # "offset":I
    :cond_1
    add-int/lit16 v5, p0, -0x7b8

    #@1f
    div-int/lit8 v5, v5, 0x41

    #@21
    add-int/lit8 v0, v5, -0x1

    #@23
    .line 2252
    .restart local v0    # "cycle":I
    add-int/lit16 v5, p0, -0x7b8

    #@25
    neg-int v5, v5

    #@26
    rem-int/lit8 v1, v5, 0x41

    #@28
    .line 2253
    .restart local v1    # "offset":I
    mul-int/lit8 v5, v0, 0x2

    #@2a
    if-gt v1, v6, :cond_2

    #@2c
    :goto_2
    add-int v2, v5, v3

    #@2e
    goto :goto_1

    #@2f
    :cond_2
    move v3, v4

    #@30
    goto :goto_2
.end method

.method protected static final floorDivide(II)I
    .locals 1
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I

    #@0
    .prologue
    .line 6181
    if-ltz p0, :cond_0

    #@2
    .line 6182
    div-int v0, p0, p1

    #@4
    .line 6181
    :goto_0
    return v0

    #@5
    .line 6183
    :cond_0
    add-int/lit8 v0, p0, 0x1

    #@7
    div-int/2addr v0, p1

    #@8
    add-int/lit8 v0, v0, -0x1

    #@a
    goto :goto_0
.end method

.method protected static final floorDivide(II[I)I
    .locals 3
    .param p0, "numerator"    # I
    .param p1, "denominator"    # I
    .param p2, "remainder"    # [I

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 6202
    if-ltz p0, :cond_0

    #@3
    .line 6203
    rem-int v1, p0, p1

    #@5
    aput v1, p2, v2

    #@7
    .line 6204
    div-int v1, p0, p1

    #@9
    return v1

    #@a
    .line 6206
    :cond_0
    add-int/lit8 v1, p0, 0x1

    #@c
    div-int/2addr v1, p1

    #@d
    add-int/lit8 v0, v1, -0x1

    #@f
    .line 6207
    .local v0, "quotient":I
    mul-int v1, v0, p1

    #@11
    sub-int v1, p0, v1

    #@13
    aput v1, p2, v2

    #@15
    .line 6208
    return v0
.end method

.method protected static final floorDivide(JI[I)I
    .locals 10
    .param p0, "numerator"    # J
    .param p2, "denominator"    # I
    .param p3, "remainder"    # [I

    #@0
    .prologue
    const-wide/16 v8, 0x1

    #@2
    const/4 v6, 0x0

    #@3
    .line 6227
    const-wide/16 v2, 0x0

    #@5
    cmp-long v1, p0, v2

    #@7
    if-ltz v1, :cond_0

    #@9
    .line 6228
    int-to-long v2, p2

    #@a
    rem-long v2, p0, v2

    #@c
    long-to-int v1, v2

    #@d
    aput v1, p3, v6

    #@f
    .line 6229
    int-to-long v2, p2

    #@10
    div-long v2, p0, v2

    #@12
    long-to-int v1, v2

    #@13
    return v1

    #@14
    .line 6231
    :cond_0
    add-long v2, p0, v8

    #@16
    int-to-long v4, p2

    #@17
    div-long/2addr v2, v4

    #@18
    sub-long/2addr v2, v8

    #@19
    long-to-int v0, v2

    #@1a
    .line 6232
    .local v0, "quotient":I
    int-to-long v2, v0

    #@1b
    int-to-long v4, p2

    #@1c
    mul-long/2addr v2, v4

    #@1d
    sub-long v2, p0, v2

    #@1f
    long-to-int v1, v2

    #@20
    aput v1, p3, v6

    #@22
    .line 6233
    return v0
.end method

.method protected static final floorDivide(JJ)J
    .locals 4
    .param p0, "numerator"    # J
    .param p2, "denominator"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x1

    #@2
    .line 6162
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p0, v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 6163
    div-long v0, p0, p2

    #@a
    .line 6162
    :goto_0
    return-wide v0

    #@b
    .line 6164
    :cond_0
    add-long v0, p0, v2

    #@d
    div-long/2addr v0, p2

    #@e
    sub-long/2addr v0, v2

    #@f
    goto :goto_0
.end method

.method private static formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;
    .locals 10
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "loc"    # Landroid/icu/util/ULocale;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I

    #@0
    .prologue
    const/4 v7, 0x3

    #@1
    const/4 v6, -0x1

    #@2
    const/4 v9, 0x0

    #@3
    .line 3545
    if-lt p3, v6, :cond_0

    #@5
    if-le p3, v7, :cond_1

    #@7
    .line 3546
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v7, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v8, "Illegal time style "

    #@11
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v7

    #@15
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v7

    #@19
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v7

    #@1d
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v6

    #@21
    .line 3548
    :cond_1
    if-lt p2, v6, :cond_2

    #@23
    if-le p2, v7, :cond_3

    #@25
    .line 3549
    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@27
    new-instance v7, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v8, "Illegal date style "

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v6

    #@3f
    .line 3552
    :cond_3
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-wrap0(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    #@42
    move-result-object v3

    #@43
    .line 3553
    .local v3, "patternData":Landroid/icu/util/Calendar$PatternData;
    const/4 v1, 0x0

    #@44
    .line 3556
    .local v1, "override":Ljava/lang/String;
    const/4 v2, 0x0

    #@45
    .line 3557
    .local v2, "pattern":Ljava/lang/String;
    if-ltz p3, :cond_5

    #@47
    if-ltz p2, :cond_5

    #@49
    .line 3558
    invoke-static {v3, p2}, Landroid/icu/util/Calendar$PatternData;->-wrap1(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    #@4c
    move-result-object v6

    #@4d
    .line 3559
    const/4 v7, 0x2

    #@4e
    new-array v7, v7, [Ljava/lang/Object;

    #@50
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@53
    move-result-object v8

    #@54
    aget-object v8, v8, p3

    #@56
    aput-object v8, v7, v9

    #@58
    .line 3560
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@5b
    move-result-object v8

    #@5c
    add-int/lit8 v9, p2, 0x4

    #@5e
    aget-object v8, v8, v9

    #@60
    const/4 v9, 0x1

    #@61
    aput-object v8, v7, v9

    #@63
    .line 3558
    invoke-static {v6, v7}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    .line 3564
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@6a
    move-result-object v6

    #@6b
    if-eqz v6, :cond_4

    #@6d
    .line 3565
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    add-int/lit8 v7, p2, 0x4

    #@73
    aget-object v0, v6, v7

    #@75
    .line 3566
    .local v0, "dateOverride":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@78
    move-result-object v6

    #@79
    aget-object v5, v6, p3

    #@7b
    .line 3568
    .local v5, "timeOverride":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@7e
    move-result-object v6

    #@7f
    add-int/lit8 v7, p2, 0x4

    #@81
    aget-object v6, v6, v7

    #@83
    .line 3569
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@86
    move-result-object v7

    #@87
    aget-object v7, v7, p3

    #@89
    .line 3567
    invoke-static {v6, v7, v0, v5}, Landroid/icu/util/Calendar;->mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@8c
    move-result-object v1

    #@8d
    .line 3585
    .end local v0    # "dateOverride":Ljava/lang/String;
    .end local v1    # "override":Ljava/lang/String;
    .end local v5    # "timeOverride":Ljava/lang/String;
    :cond_4
    :goto_0
    invoke-virtual {p0, v2, v1, p1}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@90
    move-result-object v4

    #@91
    .line 3586
    .local v4, "result":Landroid/icu/text/DateFormat;
    invoke-virtual {v4, p0}, Landroid/icu/text/DateFormat;->setCalendar(Landroid/icu/util/Calendar;)V

    #@94
    .line 3587
    return-object v4

    #@95
    .line 3572
    .end local v4    # "result":Landroid/icu/text/DateFormat;
    .restart local v1    # "override":Ljava/lang/String;
    .local v2, "pattern":Ljava/lang/String;
    :cond_5
    if-ltz p3, :cond_6

    #@97
    .line 3573
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@9a
    move-result-object v6

    #@9b
    aget-object v2, v6, p3

    #@9d
    .line 3574
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@a0
    move-result-object v6

    #@a1
    if-eqz v6, :cond_4

    #@a3
    .line 3575
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@a6
    move-result-object v6

    #@a7
    aget-object v1, v6, p3

    #@a9
    .local v1, "override":Ljava/lang/String;
    goto :goto_0

    #@aa
    .line 3577
    .local v1, "override":Ljava/lang/String;
    .local v2, "pattern":Ljava/lang/String;
    :cond_6
    if-ltz p2, :cond_7

    #@ac
    .line 3578
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get1(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@af
    move-result-object v6

    #@b0
    add-int/lit8 v7, p2, 0x4

    #@b2
    aget-object v2, v6, v7

    #@b4
    .line 3579
    .local v2, "pattern":Ljava/lang/String;
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@b7
    move-result-object v6

    #@b8
    if-eqz v6, :cond_4

    #@ba
    .line 3580
    invoke-static {v3}, Landroid/icu/util/Calendar$PatternData;->-get0(Landroid/icu/util/Calendar$PatternData;)[Ljava/lang/String;

    #@bd
    move-result-object v6

    #@be
    add-int/lit8 v7, p2, 0x4

    #@c0
    aget-object v1, v6, v7

    #@c2
    .local v1, "override":Ljava/lang/String;
    goto :goto_0

    #@c3
    .line 3583
    .local v1, "override":Ljava/lang/String;
    .local v2, "pattern":Ljava/lang/String;
    :cond_7
    new-instance v6, Ljava/lang/IllegalArgumentException;

    #@c5
    const-string/jumbo v7, "No date or time style specified"

    #@c8
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@cb
    throw v6
.end method

.method private getActualHelper(III)I
    .locals 5
    .param p1, "field"    # I
    .param p2, "startValue"    # I
    .param p3, "endValue"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2655
    if-ne p2, p3, :cond_0

    #@4
    .line 2657
    return p2

    #@5
    .line 2660
    :cond_0
    if-le p3, p2, :cond_1

    #@7
    const/4 v0, 0x1

    #@8
    .line 2664
    .local v0, "delta":I
    :goto_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, Landroid/icu/util/Calendar;

    #@e
    .line 2668
    .local v2, "work":Landroid/icu/util/Calendar;
    invoke-virtual {v2}, Landroid/icu/util/Calendar;->complete()V

    #@11
    .line 2670
    invoke-virtual {v2, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@14
    .line 2671
    if-gez v0, :cond_2

    #@16
    :goto_1
    invoke-virtual {v2, p1, v3}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    #@19
    .line 2677
    invoke-virtual {v2, p1, p2}, Landroid/icu/util/Calendar;->set(II)V

    #@1c
    .line 2683
    invoke-virtual {v2, p1}, Landroid/icu/util/Calendar;->get(I)I

    #@1f
    move-result v3

    #@20
    if-eq v3, p2, :cond_3

    #@22
    .line 2684
    const/4 v3, 0x4

    #@23
    if-eq p1, v3, :cond_3

    #@25
    if-lez v0, :cond_3

    #@27
    .line 2685
    return p2

    #@28
    .line 2660
    .end local v0    # "delta":I
    .end local v2    # "work":Landroid/icu/util/Calendar;
    :cond_1
    const/4 v0, -0x1

    #@29
    .restart local v0    # "delta":I
    goto :goto_0

    #@2a
    .restart local v2    # "work":Landroid/icu/util/Calendar;
    :cond_2
    move v3, v4

    #@2b
    .line 2671
    goto :goto_1

    #@2c
    .line 2687
    :cond_3
    move v1, p2

    #@2d
    .line 2689
    .local v1, "result":I
    :goto_2
    add-int/2addr p2, v0

    #@2e
    .line 2690
    invoke-virtual {v2, p1, v0}, Landroid/icu/util/Calendar;->add(II)V

    #@31
    .line 2691
    invoke-virtual {v2, p1}, Landroid/icu/util/Calendar;->get(I)I

    #@34
    move-result v3

    #@35
    if-eq v3, p2, :cond_5

    #@37
    .line 2697
    :cond_4
    return v1

    #@38
    .line 2694
    :cond_5
    move v1, p2

    #@39
    .line 2695
    if-eq p2, p3, :cond_4

    #@3b
    goto :goto_2
.end method

.method public static getAvailableLocales()[Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 1900
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
    .line 1912
    invoke-static {}, Landroid/icu/impl/ICUResourceBundle;->getAvailableULocales()[Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getCalendarTypeForLocale(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$CalType;
    .locals 6
    .param p0, "l"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1809
    invoke-static {p0}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 1810
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@6
    .line 1811
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    #@8
    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    .line 1812
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    #@f
    move-result-object v3

    #@10
    const/4 v2, 0x0

    #@11
    array-length v4, v3

    #@12
    :goto_0
    if-ge v2, v4, :cond_1

    #@14
    aget-object v1, v3, v2

    #@16
    .line 1813
    .local v1, "type":Landroid/icu/util/Calendar$CalType;
    iget-object v5, v1, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    #@18
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v5

    #@1c
    if-eqz v5, :cond_0

    #@1e
    .line 1814
    return-object v1

    #@1f
    .line 1812
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@21
    goto :goto_0

    #@22
    .line 1818
    .end local v1    # "type":Landroid/icu/util/Calendar$CalType;
    :cond_1
    sget-object v2, Landroid/icu/util/Calendar$CalType;->UNKNOWN:Landroid/icu/util/Calendar$CalType;

    #@24
    return-object v2
.end method

.method public static getDateTimePattern(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;I)Ljava/lang/String;
    .locals 2
    .param p0, "cal"    # Landroid/icu/util/Calendar;
    .param p1, "uLocale"    # Landroid/icu/util/ULocale;
    .param p2, "dateStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 3632
    invoke-static {p0, p1}, Landroid/icu/util/Calendar$PatternData;->-wrap0(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar$PatternData;

    #@3
    move-result-object v0

    #@4
    .line 3633
    .local v0, "patternData":Landroid/icu/util/Calendar$PatternData;
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$PatternData;->-wrap1(Landroid/icu/util/Calendar$PatternData;I)Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    return-object v1
.end method

.method private getImmediatePreviousZoneTransition(J)Ljava/lang/Long;
    .locals 7
    .param p1, "base"    # J

    #@0
    .prologue
    .line 5472
    const/4 v1, 0x0

    #@1
    .line 5474
    .local v1, "transitionTime":Ljava/lang/Long;
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@3
    instance-of v2, v2, Landroid/icu/util/BasicTimeZone;

    #@5
    if-eqz v2, :cond_1

    #@7
    .line 5475
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@9
    check-cast v2, Landroid/icu/util/BasicTimeZone;

    #@b
    const/4 v3, 0x1

    #@c
    invoke-virtual {v2, p1, p2, v3}, Landroid/icu/util/BasicTimeZone;->getPreviousTransition(JZ)Landroid/icu/util/TimeZoneTransition;

    #@f
    move-result-object v0

    #@10
    .line 5476
    .local v0, "transition":Landroid/icu/util/TimeZoneTransition;
    if-eqz v0, :cond_0

    #@12
    .line 5477
    invoke-virtual {v0}, Landroid/icu/util/TimeZoneTransition;->getTime()J

    #@15
    move-result-wide v2

    #@16
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@19
    move-result-object v1

    #@1a
    .line 5487
    .end local v0    # "transition":Landroid/icu/util/TimeZoneTransition;
    .end local v1    # "transitionTime":Ljava/lang/Long;
    :cond_0
    :goto_0
    return-object v1

    #@1b
    .line 5482
    .restart local v1    # "transitionTime":Ljava/lang/Long;
    :cond_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@1d
    const-wide/32 v4, 0x6ddd00

    #@20
    invoke-static {v2, p1, p2, v4, v5}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    #@23
    move-result-object v1

    #@24
    .line 5483
    .local v1, "transitionTime":Ljava/lang/Long;
    if-nez v1, :cond_0

    #@26
    .line 5484
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@28
    const-wide/32 v4, 0x66ff300

    #@2b
    invoke-static {v2, p1, p2, v4, v5}, Landroid/icu/util/Calendar;->getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;

    #@2e
    move-result-object v1

    #@2f
    goto :goto_0
.end method

.method public static getInstance()Landroid/icu/util/Calendar;
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1690
    invoke-static {v0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 1701
    const/4 v0, 0x0

    #@1
    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "zone"    # Landroid/icu/util/TimeZone;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1745
    invoke-static {p0, p1}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/TimeZone;Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "zone"    # Landroid/icu/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1734
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 1
    .param p0, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1723
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Landroid/icu/util/Calendar;
    .locals 2
    .param p0, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1712
    invoke-static {p0}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-static {v1, v0}, Landroid/icu/util/Calendar;->getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method private static getInstanceInternal(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;
    .locals 4
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1753
    if-nez p1, :cond_0

    #@2
    .line 1754
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@4
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@7
    move-result-object p1

    #@8
    .line 1756
    :cond_0
    if-nez p0, :cond_1

    #@a
    .line 1757
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@d
    move-result-object p0

    #@e
    .line 1760
    :cond_1
    invoke-static {p1}, Landroid/icu/util/Calendar;->createInstance(Landroid/icu/util/ULocale;)Landroid/icu/util/Calendar;

    #@11
    move-result-object v0

    #@12
    .line 1761
    .local v0, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, p0}, Landroid/icu/util/Calendar;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@15
    .line 1762
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@18
    move-result-wide v2

    #@19
    invoke-virtual {v0, v2, v3}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@1c
    .line 1763
    return-object v0
.end method

.method public static final getKeywordValuesForLocale(Ljava/lang/String;Landroid/icu/util/ULocale;Z)[Ljava/lang/String;
    .locals 14
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "commonlyUsed"    # Z

    #@0
    .prologue
    .line 1933
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@3
    move-result-object v6

    #@4
    .line 1934
    .local v6, "prefRegion":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    #@7
    move-result v10

    #@8
    if-nez v10, :cond_0

    #@a
    .line 1935
    invoke-static {p1}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@d
    move-result-object v3

    #@e
    .line 1936
    .local v3, "loc":Landroid/icu/util/ULocale;
    invoke-virtual {v3}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@11
    move-result-object v6

    #@12
    .line 1940
    .end local v3    # "loc":Landroid/icu/util/ULocale;
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    #@14
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 1943
    .local v9, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v10, "android/icu/impl/data/icudt55b"

    #@1a
    .line 1944
    const-string/jumbo v11, "supplementalData"

    #@1d
    .line 1945
    sget-object v12, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@1f
    .line 1942
    invoke-static {v10, v11, v12}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@22
    move-result-object v7

    #@23
    .line 1946
    .local v7, "rb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v10, "calendarPreferenceData"

    #@26
    invoke-virtual {v7, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@29
    move-result-object v0

    #@2a
    .line 1947
    .local v0, "calPref":Landroid/icu/util/UResourceBundle;
    const/4 v5, 0x0

    #@2b
    .line 1949
    .local v5, "order":Landroid/icu/util/UResourceBundle;
    :try_start_0
    invoke-virtual {v0, v6}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@2e
    move-result-object v5

    #@2f
    .line 1955
    .local v5, "order":Landroid/icu/util/UResourceBundle;
    :goto_0
    invoke-virtual {v5}, Landroid/icu/util/UResourceBundle;->getStringArray()[Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 1956
    .local v1, "caltypes":[Ljava/lang/String;
    if-eqz p2, :cond_1

    #@35
    .line 1958
    return-object v1

    #@36
    .line 1950
    .end local v1    # "caltypes":[Ljava/lang/String;
    .local v5, "order":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v4

    #@37
    .line 1952
    .local v4, "mre":Ljava/util/MissingResourceException;
    const-string/jumbo v10, "001"

    #@3a
    invoke-virtual {v0, v10}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@3d
    move-result-object v5

    #@3e
    .local v5, "order":Landroid/icu/util/UResourceBundle;
    goto :goto_0

    #@3f
    .line 1962
    .end local v4    # "mre":Ljava/util/MissingResourceException;
    .restart local v1    # "caltypes":[Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    #@40
    .local v2, "i":I
    :goto_1
    array-length v10, v1

    #@41
    if-ge v2, v10, :cond_2

    #@43
    .line 1963
    aget-object v10, v1, v2

    #@45
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@48
    .line 1962
    add-int/lit8 v2, v2, 0x1

    #@4a
    goto :goto_1

    #@4b
    .line 1966
    :cond_2
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    #@4e
    move-result-object v11

    #@4f
    const/4 v10, 0x0

    #@50
    array-length v12, v11

    #@51
    :goto_2
    if-ge v10, v12, :cond_4

    #@53
    aget-object v8, v11, v10

    #@55
    .line 1967
    .local v8, "t":Landroid/icu/util/Calendar$CalType;
    iget-object v13, v8, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    #@57
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    #@5a
    move-result v13

    #@5b
    if-nez v13, :cond_3

    #@5d
    .line 1968
    iget-object v13, v8, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    #@5f
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@62
    .line 1966
    :cond_3
    add-int/lit8 v10, v10, 0x1

    #@64
    goto :goto_2

    #@65
    .line 1971
    .end local v8    # "t":Landroid/icu/util/Calendar$CalType;
    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    #@68
    move-result v10

    #@69
    new-array v10, v10, [Ljava/lang/String;

    #@6b
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@6e
    move-result-object v10

    #@6f
    check-cast v10, [Ljava/lang/String;

    #@71
    return-object v10
.end method

.method private static getPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;JJ)Ljava/lang/Long;
    .locals 13
    .param p0, "tz"    # Landroid/icu/util/TimeZone;
    .param p1, "base"    # J
    .param p3, "duration"    # J

    #@0
    .prologue
    .line 5499
    sget-boolean v0, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    const-wide/16 v8, 0x0

    #@6
    cmp-long v0, p3, v8

    #@8
    if-lez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    if-nez v0, :cond_1

    #@d
    new-instance v0, Ljava/lang/AssertionError;

    #@f
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@12
    throw v0

    #@13
    :cond_0
    const/4 v0, 0x0

    #@14
    goto :goto_0

    #@15
    .line 5501
    :cond_1
    move-wide v2, p1

    #@16
    .line 5502
    .local v2, "upper":J
    sub-long v8, p1, p3

    #@18
    const-wide/16 v10, 0x1

    #@1a
    sub-long v4, v8, v10

    #@1c
    .line 5503
    .local v4, "lower":J
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@1f
    move-result v1

    #@20
    .line 5504
    .local v1, "offsetU":I
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@23
    move-result v6

    #@24
    .line 5505
    .local v6, "offsetL":I
    if-ne v1, v6, :cond_2

    #@26
    .line 5506
    const/4 v0, 0x0

    #@27
    return-object v0

    #@28
    :cond_2
    move-object v0, p0

    #@29
    .line 5508
    invoke-static/range {v0 .. v5}, Landroid/icu/util/Calendar;->findPreviousZoneTransitionTime(Landroid/icu/util/TimeZone;IJJ)Ljava/lang/Long;

    #@2c
    move-result-object v0

    #@2d
    return-object v0
.end method

.method private static getRegionForCalendar(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 3
    .param p0, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1767
    invoke-virtual {p0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    .line 1768
    .local v1, "region":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v2

    #@8
    if-nez v2, :cond_0

    #@a
    .line 1769
    invoke-static {p0}, Landroid/icu/util/ULocale;->addLikelySubtags(Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@d
    move-result-object v0

    #@e
    .line 1770
    .local v0, "maxLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 1771
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@15
    move-result v2

    #@16
    if-nez v2, :cond_0

    #@18
    .line 1772
    const-string/jumbo v1, "001"

    #@1b
    .line 1775
    .end local v0    # "maxLocale":Landroid/icu/util/ULocale;
    :cond_0
    return-object v1
.end method

.method public static getWeekDataForRegion(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 1
    .param p0, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4796
    sget-object v0, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    #@2
    invoke-virtual {v0, p0, p0}, Landroid/icu/util/Calendar$WeekDataCache;->createInstance(Ljava/lang/String;Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method private static getWeekDataForRegionInternal(Ljava/lang/String;)Landroid/icu/util/Calendar$WeekData;
    .locals 12
    .param p0, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4830
    if-nez p0, :cond_0

    #@2
    .line 4831
    const-string/jumbo p0, "001"

    #@5
    .line 4835
    :cond_0
    const-string/jumbo v0, "android/icu/impl/data/icudt55b"

    #@8
    .line 4836
    const-string/jumbo v1, "supplementalData"

    #@b
    .line 4837
    sget-object v2, Landroid/icu/impl/ICUResourceBundle;->ICU_DATA_CLASS_LOADER:Ljava/lang/ClassLoader;

    #@d
    .line 4834
    invoke-static {v0, v1, v2}, Landroid/icu/util/UResourceBundle;->getBundleInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Landroid/icu/util/UResourceBundle;

    #@10
    move-result-object v8

    #@11
    .line 4838
    .local v8, "rb":Landroid/icu/util/UResourceBundle;
    const-string/jumbo v0, "weekData"

    #@14
    invoke-virtual {v8, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@17
    move-result-object v11

    #@18
    .line 4839
    .local v11, "weekDataInfo":Landroid/icu/util/UResourceBundle;
    const/4 v10, 0x0

    #@19
    .line 4842
    .local v10, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :try_start_0
    invoke-virtual {v11, p0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@1c
    move-result-object v10

    #@1d
    .line 4852
    .local v10, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :goto_0
    invoke-virtual {v10}, Landroid/icu/util/UResourceBundle;->getIntVector()[I

    #@20
    move-result-object v9

    #@21
    .line 4853
    .local v9, "wdi":[I
    new-instance v0, Landroid/icu/util/Calendar$WeekData;

    #@23
    const/4 v1, 0x0

    #@24
    aget v1, v9, v1

    #@26
    const/4 v2, 0x1

    #@27
    aget v2, v9, v2

    #@29
    const/4 v3, 0x2

    #@2a
    aget v3, v9, v3

    #@2c
    const/4 v4, 0x3

    #@2d
    aget v4, v9, v4

    #@2f
    const/4 v5, 0x4

    #@30
    aget v5, v9, v5

    #@32
    const/4 v6, 0x5

    #@33
    aget v6, v9, v6

    #@35
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    #@38
    return-object v0

    #@39
    .line 4843
    .end local v9    # "wdi":[I
    .local v10, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :catch_0
    move-exception v7

    #@3a
    .line 4844
    .local v7, "mre":Ljava/util/MissingResourceException;
    const-string/jumbo v0, "001"

    #@3d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_1

    #@43
    .line 4846
    const-string/jumbo v0, "001"

    #@46
    invoke-virtual {v11, v0}, Landroid/icu/util/UResourceBundle;->get(Ljava/lang/String;)Landroid/icu/util/UResourceBundle;

    #@49
    move-result-object v10

    #@4a
    .local v10, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    goto :goto_0

    #@4b
    .line 4848
    .local v10, "weekDataBundle":Landroid/icu/util/UResourceBundle;
    :cond_1
    throw v7
.end method

.method private static gregoYearFromIslamicStart(I)I
    .locals 7
    .param p0, "year"    # I

    #@0
    .prologue
    const/16 v6, 0x21

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v4, 0x0

    #@4
    .line 2170
    const/4 v2, 0x0

    #@5
    .line 2171
    .local v2, "shift":I
    const/16 v5, 0x575

    #@7
    if-lt p0, v5, :cond_1

    #@9
    .line 2172
    add-int/lit16 v5, p0, -0x575

    #@b
    div-int/lit8 v0, v5, 0x43

    #@d
    .line 2173
    .local v0, "cycle":I
    add-int/lit16 v5, p0, -0x575

    #@f
    rem-int/lit8 v1, v5, 0x43

    #@11
    .line 2174
    .local v1, "offset":I
    mul-int/lit8 v5, v0, 0x2

    #@13
    if-lt v1, v6, :cond_0

    #@15
    :goto_0
    add-int v2, v5, v3

    #@17
    .line 2180
    :goto_1
    add-int/lit16 v3, p0, 0x243

    #@19
    sub-int/2addr v3, v2

    #@1a
    return v3

    #@1b
    :cond_0
    move v3, v4

    #@1c
    .line 2174
    goto :goto_0

    #@1d
    .line 2176
    .end local v0    # "cycle":I
    .end local v1    # "offset":I
    :cond_1
    add-int/lit16 v5, p0, -0x574

    #@1f
    div-int/lit8 v5, v5, 0x43

    #@21
    add-int/lit8 v0, v5, -0x1

    #@23
    .line 2177
    .restart local v0    # "cycle":I
    add-int/lit16 v5, p0, -0x574

    #@25
    neg-int v5, v5

    #@26
    rem-int/lit8 v1, v5, 0x43

    #@28
    .line 2178
    .restart local v1    # "offset":I
    mul-int/lit8 v5, v0, 0x2

    #@2a
    if-gt v1, v6, :cond_2

    #@2c
    :goto_2
    add-int v2, v5, v3

    #@2e
    goto :goto_1

    #@2f
    :cond_2
    move v3, v4

    #@30
    goto :goto_2
.end method

.method protected static final gregorianMonthLength(II)I
    .locals 2
    .param p0, "y"    # I
    .param p1, "m"    # I

    #@0
    .prologue
    .line 6134
    sget-object v0, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    #@2
    aget-object v1, v0, p1

    #@4
    invoke-static {p0}, Landroid/icu/util/Calendar;->isGregorianLeapYear(I)Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    aget v0, v1, v0

    #@d
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method protected static final gregorianPreviousMonthLength(II)I
    .locals 1
    .param p0, "y"    # I
    .param p1, "m"    # I

    #@0
    .prologue
    .line 6145
    if-lez p1, :cond_0

    #@2
    add-int/lit8 v0, p1, -0x1

    #@4
    invoke-static {p0, v0}, Landroid/icu/util/Calendar;->gregorianMonthLength(II)I

    #@7
    move-result v0

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/16 v0, 0x1f

    #@b
    goto :goto_0
.end method

.method private initInternal()V
    .locals 4

    #@0
    .prologue
    .line 1661
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleCreateFields()[I

    #@3
    move-result-object v2

    #@4
    iput-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@6
    .line 1664
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@8
    if-eqz v2, :cond_0

    #@a
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@c
    array-length v2, v2

    #@d
    const/16 v3, 0x17

    #@f
    if-ge v2, v3, :cond_1

    #@11
    .line 1666
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    #@13
    const-string/jumbo v3, "Invalid fields[]"

    #@16
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@19
    throw v2

    #@1a
    .line 1665
    :cond_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@1c
    array-length v2, v2

    #@1d
    const/16 v3, 0x20

    #@1f
    if-gt v2, v3, :cond_0

    #@21
    .line 1669
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@23
    array-length v2, v2

    #@24
    new-array v2, v2, [I

    #@26
    iput-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@28
    .line 1670
    const v1, 0x480067

    #@2b
    .line 1677
    .local v1, "mask":I
    const/16 v0, 0x17

    #@2d
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@2f
    array-length v2, v2

    #@30
    if-ge v0, v2, :cond_2

    #@32
    .line 1678
    const/4 v2, 0x1

    #@33
    shl-int/2addr v2, v0

    #@34
    or-int/2addr v1, v2

    #@35
    .line 1677
    add-int/lit8 v0, v0, 0x1

    #@37
    goto :goto_0

    #@38
    .line 1680
    :cond_2
    iput v1, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    #@3a
    .line 1657
    return-void
.end method

.method protected static final isGregorianLeapYear(I)Z
    .locals 3
    .param p0, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 6123
    rem-int/lit8 v2, p0, 0x4

    #@4
    if-nez v2, :cond_1

    #@6
    rem-int/lit8 v2, p0, 0x64

    #@8
    if-nez v2, :cond_0

    #@a
    rem-int/lit16 v2, p0, 0x190

    #@c
    if-nez v2, :cond_1

    #@e
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    goto :goto_0
.end method

.method protected static final julianDayToDayOfWeek(I)I
    .locals 2
    .param p0, "julian"    # I

    #@0
    .prologue
    .line 6284
    add-int/lit8 v1, p0, 0x2

    #@2
    rem-int/lit8 v0, v1, 0x7

    #@4
    .line 6285
    .local v0, "dayOfWeek":I
    const/4 v1, 0x1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 6286
    add-int/lit8 v0, v0, 0x7

    #@9
    .line 6288
    :cond_0
    return v0
.end method

.method protected static final julianDayToMillis(I)J
    .locals 4
    .param p0, "julian"    # I

    #@0
    .prologue
    .line 6274
    const v0, 0x253d8c    # 3.419992E-39f

    #@3
    sub-int v0, p0, v0

    #@5
    int-to-long v0, v0

    #@6
    const-wide/32 v2, 0x5265c00

    #@9
    mul-long/2addr v0, v2

    #@a
    return-wide v0
.end method

.method private static mergeOverrideStrings(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "datePattern"    # Ljava/lang/String;
    .param p1, "timePattern"    # Ljava/lang/String;
    .param p2, "dateOverride"    # Ljava/lang/String;
    .param p3, "timeOverride"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 3639
    if-nez p2, :cond_0

    #@3
    if-nez p3, :cond_0

    #@5
    .line 3640
    return-object v0

    #@6
    .line 3643
    :cond_0
    if-nez p2, :cond_1

    #@8
    .line 3644
    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@b
    move-result-object v0

    #@c
    return-object v0

    #@d
    .line 3647
    :cond_1
    if-nez p3, :cond_2

    #@f
    .line 3648
    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    return-object v0

    #@14
    .line 3651
    :cond_2
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@17
    move-result v0

    #@18
    if-eqz v0, :cond_3

    #@1a
    .line 3652
    return-object p2

    #@1b
    .line 3655
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    invoke-static {p0, p2}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v0

    #@28
    const-string/jumbo v1, ";"

    #@2b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v0

    #@2f
    .line 3656
    invoke-static {p1, p3}, Landroid/icu/util/Calendar;->expandOverride(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@32
    move-result-object v1

    #@33
    .line 3655
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v0

    #@37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v0

    #@3b
    return-object v0
.end method

.method protected static final millisToJulianDay(J)I
    .locals 4
    .param p0, "millis"    # J

    #@0
    .prologue
    .line 6264
    const-wide/32 v0, 0x5265c00

    #@3
    invoke-static {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    #@6
    move-result-wide v0

    #@7
    const-wide/32 v2, 0x253d8c

    #@a
    add-long/2addr v0, v2

    #@b
    long-to-int v0, v0

    #@c
    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 4923
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@5
    .line 4925
    invoke-direct {p0}, Landroid/icu/util/Calendar;->initInternal()V

    #@8
    .line 4927
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@a
    .line 4928
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@c
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@e
    .line 4929
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@10
    .line 4930
    const/4 v0, 0x2

    #@11
    iput v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@13
    .line 4921
    return-void
.end method

.method private recalculateStamp()V
    .locals 6

    #@0
    .prologue
    .line 1635
    const/4 v4, 0x1

    #@1
    iput v4, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@3
    .line 1637
    const/4 v3, 0x0

    #@4
    .local v3, "j":I
    :goto_0
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@6
    array-length v4, v4

    #@7
    if-ge v3, v4, :cond_2

    #@9
    .line 1638
    sget v0, Landroid/icu/util/Calendar;->STAMP_MAX:I

    #@b
    .line 1639
    .local v0, "currentValue":I
    const/4 v2, -0x1

    #@c
    .line 1641
    .local v2, "index":I
    const/4 v1, 0x0

    #@d
    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@f
    array-length v4, v4

    #@10
    if-ge v1, v4, :cond_1

    #@12
    .line 1642
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@14
    aget v4, v4, v1

    #@16
    iget v5, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@18
    if-le v4, v5, :cond_0

    #@1a
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@1c
    aget v4, v4, v1

    #@1e
    if-ge v4, v0, :cond_0

    #@20
    .line 1643
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@22
    aget v0, v4, v1

    #@24
    .line 1644
    move v2, v1

    #@25
    .line 1641
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@27
    goto :goto_1

    #@28
    .line 1648
    :cond_1
    if-ltz v2, :cond_2

    #@2a
    .line 1649
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@2c
    iget v5, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@2e
    add-int/lit8 v5, v5, 0x1

    #@30
    iput v5, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@32
    aput v5, v4, v2

    #@34
    .line 1637
    add-int/lit8 v3, v3, 0x1

    #@36
    goto :goto_0

    #@37
    .line 1654
    .end local v0    # "currentValue":I
    .end local v1    # "i":I
    .end local v2    # "index":I
    :cond_2
    iget v4, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@39
    add-int/lit8 v4, v4, 0x1

    #@3b
    iput v4, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@3d
    .line 1630
    return-void
.end method

.method private setCalendarLocale(Landroid/icu/util/ULocale;)V
    .locals 6
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 1601
    move-object v1, p1

    #@1
    .line 1603
    .local v1, "calLocale":Landroid/icu/util/ULocale;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getVariant()Ljava/lang/String;

    #@4
    move-result-object v5

    #@5
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    #@8
    move-result v5

    #@9
    if-nez v5, :cond_0

    #@b
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getKeywords()Ljava/util/Iterator;

    #@e
    move-result-object v5

    #@f
    if-eqz v5, :cond_4

    #@11
    .line 1605
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    .line 1607
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getLanguage()Ljava/lang/String;

    #@19
    move-result-object v5

    #@1a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    .line 1609
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getScript()Ljava/lang/String;

    #@20
    move-result-object v4

    #@21
    .line 1610
    .local v4, "script":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@24
    move-result v5

    #@25
    if-lez v5, :cond_1

    #@27
    .line 1611
    const-string/jumbo v5, "_"

    #@2a
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v5

    #@2e
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@31
    .line 1614
    :cond_1
    invoke-virtual {p1}, Landroid/icu/util/ULocale;->getCountry()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 1615
    .local v3, "region":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    #@38
    move-result v5

    #@39
    if-lez v5, :cond_2

    #@3b
    .line 1616
    const-string/jumbo v5, "_"

    #@3e
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v5

    #@42
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@45
    .line 1619
    :cond_2
    const-string/jumbo v5, "calendar"

    #@48
    invoke-virtual {p1, v5}, Landroid/icu/util/ULocale;->getKeywordValue(Ljava/lang/String;)Ljava/lang/String;

    #@4b
    move-result-object v2

    #@4c
    .line 1620
    .local v2, "calType":Ljava/lang/String;
    if-eqz v2, :cond_3

    #@4e
    .line 1621
    const-string/jumbo v5, "@calendar="

    #@51
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v5

    #@55
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    .line 1624
    :cond_3
    new-instance v1, Landroid/icu/util/ULocale;

    #@5a
    .end local v1    # "calLocale":Landroid/icu/util/ULocale;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5d
    move-result-object v5

    #@5e
    invoke-direct {v1, v5}, Landroid/icu/util/ULocale;-><init>(Ljava/lang/String;)V

    #@61
    .line 1627
    .end local v0    # "buf":Ljava/lang/StringBuilder;
    .end local v2    # "calType":Ljava/lang/String;
    .end local v3    # "region":Ljava/lang/String;
    .end local v4    # "script":Ljava/lang/String;
    .restart local v1    # "calLocale":Landroid/icu/util/ULocale;
    :cond_4
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/Calendar;->setLocale(Landroid/icu/util/ULocale;Landroid/icu/util/ULocale;)V

    #@64
    .line 1600
    return-void
.end method

.method private setWeekData(Ljava/lang/String;)V
    .locals 2
    .param p1, "region"    # Ljava/lang/String;

    #@0
    .prologue
    .line 4876
    if-nez p1, :cond_0

    #@2
    .line 4877
    const-string/jumbo p1, "001"

    #@5
    .line 4879
    :cond_0
    sget-object v1, Landroid/icu/util/Calendar;->WEEK_DATA_CACHE:Landroid/icu/util/Calendar$WeekDataCache;

    #@7
    invoke-virtual {v1, p1, p1}, Landroid/icu/util/Calendar$WeekDataCache;->getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Landroid/icu/util/Calendar$WeekData;

    #@d
    .line 4880
    .local v0, "wdata":Landroid/icu/util/Calendar$WeekData;
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;

    #@10
    .line 4875
    return-void
.end method

.method private updateTime()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 4889
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeTime()V

    #@4
    .line 4893
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 4894
    :goto_0
    const/4 v0, 0x1

    #@f
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@11
    .line 4895
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@13
    .line 4888
    return-void

    #@14
    .line 4893
    :cond_0
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@16
    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 4906
    iget-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@2
    if-nez v1, :cond_0

    #@4
    .line 4908
    :try_start_0
    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@7
    .line 4914
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@a
    .line 4902
    return-void

    #@b
    .line 4910
    :catch_0
    move-exception v0

    #@c
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0
.end method


# virtual methods
.method public add(II)V
    .locals 26
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    .line 3212
    if-nez p2, :cond_0

    #@2
    .line 3213
    return-void

    #@3
    .line 3237
    :cond_0
    move/from16 v0, p2

    #@5
    int-to-long v8, v0

    #@6
    .line 3238
    .local v8, "delta":J
    const/4 v11, 0x1

    #@7
    .line 3240
    .local v11, "keepWallTimeInvariant":Z
    packed-switch p1, :pswitch_data_0

    #@a
    .line 3319
    :pswitch_0
    new-instance v17, Ljava/lang/IllegalArgumentException;

    #@c
    new-instance v22, Ljava/lang/StringBuilder;

    #@e
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v23, "Calendar.add("

    #@14
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v22

    #@18
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    #@1b
    move-result-object v23

    #@1c
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v22

    #@20
    .line 3320
    const-string/jumbo v23, ") not supported"

    #@23
    .line 3319
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v22

    #@27
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v22

    #@2b
    move-object/from16 v0, v17

    #@2d
    move-object/from16 v1, v22

    #@2f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@32
    throw v17

    #@33
    .line 3242
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->get(I)I

    #@36
    move-result v17

    #@37
    add-int v17, v17, p2

    #@39
    move-object/from16 v0, p0

    #@3b
    move/from16 v1, p1

    #@3d
    move/from16 v2, v17

    #@3f
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@42
    .line 3243
    const/16 v17, 0x0

    #@44
    move-object/from16 v0, p0

    #@46
    move/from16 v1, v17

    #@48
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@4b
    .line 3244
    return-void

    #@4c
    .line 3256
    :pswitch_2
    const/16 v17, 0x0

    #@4e
    move-object/from16 v0, p0

    #@50
    move/from16 v1, v17

    #@52
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@55
    move-result v7

    #@56
    .line 3257
    .local v7, "era":I
    if-nez v7, :cond_2

    #@58
    .line 3258
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@5b
    move-result-object v6

    #@5c
    .line 3259
    .local v6, "calType":Ljava/lang/String;
    const-string/jumbo v17, "gregorian"

    #@5f
    move-object/from16 v0, v17

    #@61
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@64
    move-result v17

    #@65
    if-nez v17, :cond_1

    #@67
    const-string/jumbo v17, "roc"

    #@6a
    move-object/from16 v0, v17

    #@6c
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@6f
    move-result v17

    #@70
    if-nez v17, :cond_1

    #@72
    const-string/jumbo v17, "coptic"

    #@75
    move-object/from16 v0, v17

    #@77
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7a
    move-result v17

    #@7b
    if-eqz v17, :cond_2

    #@7d
    .line 3260
    :cond_1
    move/from16 v0, p2

    #@7f
    neg-int v0, v0

    #@80
    move/from16 p2, v0

    #@82
    .line 3268
    .end local v6    # "calType":Ljava/lang/String;
    .end local v7    # "era":I
    :cond_2
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@85
    move-result v14

    #@86
    .line 3269
    .local v14, "oldLenient":Z
    const/16 v17, 0x1

    #@88
    move-object/from16 v0, p0

    #@8a
    move/from16 v1, v17

    #@8c
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@8f
    .line 3270
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->get(I)I

    #@92
    move-result v17

    #@93
    add-int v17, v17, p2

    #@95
    move-object/from16 v0, p0

    #@97
    move/from16 v1, p1

    #@99
    move/from16 v2, v17

    #@9b
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@9e
    .line 3271
    const/16 v17, 0x5

    #@a0
    move-object/from16 v0, p0

    #@a2
    move/from16 v1, v17

    #@a4
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@a7
    .line 3272
    if-nez v14, :cond_3

    #@a9
    .line 3273
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->complete()V

    #@ac
    .line 3274
    move-object/from16 v0, p0

    #@ae
    invoke-virtual {v0, v14}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@b1
    .line 3277
    :cond_3
    return-void

    #@b2
    .line 3282
    .end local v14    # "oldLenient":Z
    :pswitch_4
    const-wide/32 v22, 0x240c8400

    #@b5
    mul-long v8, v8, v22

    #@b7
    .line 3327
    :goto_0
    const/4 v15, 0x0

    #@b8
    .line 3328
    .local v15, "prevOffset":I
    const/16 v16, 0x0

    #@ba
    .line 3329
    .local v16, "prevWallTime":I
    if-eqz v11, :cond_4

    #@bc
    .line 3330
    const/16 v17, 0x10

    #@be
    move-object/from16 v0, p0

    #@c0
    move/from16 v1, v17

    #@c2
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@c5
    move-result v17

    #@c6
    const/16 v22, 0xf

    #@c8
    move-object/from16 v0, p0

    #@ca
    move/from16 v1, v22

    #@cc
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@cf
    move-result v22

    #@d0
    add-int v15, v17, v22

    #@d2
    .line 3331
    const/16 v17, 0x15

    #@d4
    move-object/from16 v0, p0

    #@d6
    move/from16 v1, v17

    #@d8
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@db
    move-result v16

    #@dc
    .line 3334
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@df
    move-result-wide v22

    #@e0
    add-long v22, v22, v8

    #@e2
    move-object/from16 v0, p0

    #@e4
    move-wide/from16 v1, v22

    #@e6
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@e9
    .line 3336
    if-eqz v11, :cond_6

    #@eb
    .line 3337
    const/16 v17, 0x15

    #@ed
    move-object/from16 v0, p0

    #@ef
    move/from16 v1, v17

    #@f1
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@f4
    move-result v13

    #@f5
    .line 3338
    .local v13, "newWallTime":I
    move/from16 v0, v16

    #@f7
    if-eq v13, v0, :cond_6

    #@f9
    .line 3342
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    #@fc
    move-result-wide v18

    #@fd
    .line 3343
    .local v18, "t":J
    const/16 v17, 0x10

    #@ff
    move-object/from16 v0, p0

    #@101
    move/from16 v1, v17

    #@103
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@106
    move-result v17

    #@107
    const/16 v22, 0xf

    #@109
    move-object/from16 v0, p0

    #@10b
    move/from16 v1, v22

    #@10d
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@110
    move-result v22

    #@111
    add-int v12, v17, v22

    #@113
    .line 3344
    .local v12, "newOffset":I
    if-eq v12, v15, :cond_6

    #@115
    .line 3349
    sub-int v17, v15, v12

    #@117
    move/from16 v0, v17

    #@119
    int-to-long v0, v0

    #@11a
    move-wide/from16 v22, v0

    #@11c
    const-wide/32 v24, 0x5265c00

    #@11f
    rem-long v4, v22, v24

    #@121
    .line 3350
    .local v4, "adjAmount":J
    const-wide/16 v22, 0x0

    #@123
    cmp-long v17, v4, v22

    #@125
    if-eqz v17, :cond_5

    #@127
    .line 3351
    add-long v22, v18, v4

    #@129
    move-object/from16 v0, p0

    #@12b
    move-wide/from16 v1, v22

    #@12d
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@130
    .line 3352
    const/16 v17, 0x15

    #@132
    move-object/from16 v0, p0

    #@134
    move/from16 v1, v17

    #@136
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@139
    move-result v13

    #@13a
    .line 3354
    :cond_5
    move/from16 v0, v16

    #@13c
    if-eq v13, v0, :cond_6

    #@13e
    .line 3357
    move-object/from16 v0, p0

    #@140
    iget v0, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@142
    move/from16 v17, v0

    #@144
    packed-switch v17, :pswitch_data_1

    #@147
    .line 3210
    .end local v4    # "adjAmount":J
    .end local v12    # "newOffset":I
    .end local v13    # "newWallTime":I
    .end local v18    # "t":J
    :cond_6
    :goto_1
    return-void

    #@148
    .line 3286
    .end local v15    # "prevOffset":I
    .end local v16    # "prevWallTime":I
    :pswitch_5
    const-wide/32 v22, 0x2932e00

    #@14b
    mul-long v8, v8, v22

    #@14d
    .line 3287
    goto/16 :goto_0

    #@14f
    .line 3294
    :pswitch_6
    const-wide/32 v22, 0x5265c00

    #@152
    mul-long v8, v8, v22

    #@154
    .line 3295
    goto/16 :goto_0

    #@156
    .line 3299
    :pswitch_7
    const-wide/32 v22, 0x36ee80

    #@159
    mul-long v8, v8, v22

    #@15b
    .line 3300
    const/4 v11, 0x0

    #@15c
    .line 3301
    goto/16 :goto_0

    #@15e
    .line 3304
    :pswitch_8
    const-wide/32 v22, 0xea60

    #@161
    mul-long v8, v8, v22

    #@163
    .line 3305
    const/4 v11, 0x0

    #@164
    .line 3306
    goto/16 :goto_0

    #@166
    .line 3309
    :pswitch_9
    const-wide/16 v22, 0x3e8

    #@168
    mul-long v8, v8, v22

    #@16a
    .line 3310
    const/4 v11, 0x0

    #@16b
    .line 3311
    goto/16 :goto_0

    #@16d
    .line 3315
    :pswitch_a
    const/4 v11, 0x0

    #@16e
    .line 3316
    goto/16 :goto_0

    #@170
    .line 3359
    .restart local v4    # "adjAmount":J
    .restart local v12    # "newOffset":I
    .restart local v13    # "newWallTime":I
    .restart local v15    # "prevOffset":I
    .restart local v16    # "prevWallTime":I
    .restart local v18    # "t":J
    :pswitch_b
    const-wide/16 v22, 0x0

    #@172
    cmp-long v17, v4, v22

    #@174
    if-lez v17, :cond_6

    #@176
    .line 3360
    move-object/from16 v0, p0

    #@178
    move-wide/from16 v1, v18

    #@17a
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@17d
    goto :goto_1

    #@17e
    .line 3364
    :pswitch_c
    const-wide/16 v22, 0x0

    #@180
    cmp-long v17, v4, v22

    #@182
    if-gez v17, :cond_6

    #@184
    .line 3365
    move-object/from16 v0, p0

    #@186
    move-wide/from16 v1, v18

    #@188
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@18b
    goto :goto_1

    #@18c
    .line 3369
    :pswitch_d
    const-wide/16 v22, 0x0

    #@18e
    cmp-long v17, v4, v22

    #@190
    if-lez v17, :cond_7

    #@192
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->internalGetTimeInMillis()J

    #@195
    move-result-wide v20

    #@196
    .line 3370
    .local v20, "tmpT":J
    :goto_2
    move-object/from16 v0, p0

    #@198
    move-wide/from16 v1, v20

    #@19a
    invoke-direct {v0, v1, v2}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    #@19d
    move-result-object v10

    #@19e
    .line 3371
    .local v10, "immediatePrevTrans":Ljava/lang/Long;
    if-eqz v10, :cond_8

    #@1a0
    .line 3372
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    #@1a3
    move-result-wide v22

    #@1a4
    move-object/from16 v0, p0

    #@1a6
    move-wide/from16 v1, v22

    #@1a8
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@1ab
    goto :goto_1

    #@1ac
    .line 3369
    .end local v10    # "immediatePrevTrans":Ljava/lang/Long;
    .end local v20    # "tmpT":J
    :cond_7
    move-wide/from16 v20, v18

    #@1ae
    .restart local v20    # "tmpT":J
    goto :goto_2

    #@1af
    .line 3374
    .restart local v10    # "immediatePrevTrans":Ljava/lang/Long;
    :cond_8
    new-instance v17, Ljava/lang/RuntimeException;

    #@1b1
    new-instance v22, Ljava/lang/StringBuilder;

    #@1b3
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1b6
    const-string/jumbo v23, "Could not locate a time zone transition before "

    #@1b9
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bc
    move-result-object v22

    #@1bd
    move-object/from16 v0, v22

    #@1bf
    move-wide/from16 v1, v20

    #@1c1
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1c4
    move-result-object v22

    #@1c5
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c8
    move-result-object v22

    #@1c9
    move-object/from16 v0, v17

    #@1cb
    move-object/from16 v1, v22

    #@1cd
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@1d0
    throw v17

    #@1d1
    .line 3240
    nop

    #@1d2
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_6
        :pswitch_a
    .end packed-switch

    #@202
    .line 3357
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_d
    .end packed-switch
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "when"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2462
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-lez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "when"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2450
    invoke-direct {p0, p1}, Landroid/icu/util/Calendar;->compare(Ljava/lang/Object;)J

    #@3
    move-result-wide v0

    #@4
    const-wide/16 v2, 0x0

    #@6
    cmp-long v0, v0, v2

    #@8
    if-gez v0, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method public final clear()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2313
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    #@4
    array-length v1, v1

    #@5
    if-ge v0, v1, :cond_0

    #@7
    .line 2314
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    #@9
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@b
    aput v3, v2, v0

    #@d
    aput v3, v1, v0

    #@f
    .line 2313
    add-int/lit8 v0, v0, 0x1

    #@11
    goto :goto_0

    #@12
    .line 2316
    :cond_0
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@14
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@16
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@18
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@1a
    .line 2311
    return-void
.end method

.method public final clear(I)V
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2326
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2327
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    #@8
    .line 2329
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@a
    aput v1, v0, p1

    #@c
    .line 2330
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@e
    aput v1, v0, p1

    #@10
    .line 2331
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@12
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@14
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@16
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@18
    .line 2324
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 7

    #@0
    .prologue
    .line 4605
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v1

    #@4
    check-cast v1, Landroid/icu/util/Calendar;

    #@6
    .line 4607
    .local v1, "other":Landroid/icu/util/Calendar;
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@8
    array-length v2, v2

    #@9
    new-array v2, v2, [I

    #@b
    iput-object v2, v1, Landroid/icu/util/Calendar;->fields:[I

    #@d
    .line 4608
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@f
    array-length v2, v2

    #@10
    new-array v2, v2, [I

    #@12
    iput-object v2, v1, Landroid/icu/util/Calendar;->stamp:[I

    #@14
    .line 4609
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@16
    iget-object v3, v1, Landroid/icu/util/Calendar;->fields:[I

    #@18
    iget-object v4, p0, Landroid/icu/util/Calendar;->fields:[I

    #@1a
    array-length v4, v4

    #@1b
    const/4 v5, 0x0

    #@1c
    const/4 v6, 0x0

    #@1d
    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@20
    .line 4610
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@22
    iget-object v3, v1, Landroid/icu/util/Calendar;->stamp:[I

    #@24
    iget-object v4, p0, Landroid/icu/util/Calendar;->fields:[I

    #@26
    array-length v4, v4

    #@27
    const/4 v5, 0x0

    #@28
    const/4 v6, 0x0

    #@29
    invoke-static {v2, v5, v3, v6, v4}, Ljava/lang/System;->arraycopy([II[III)V

    #@2c
    .line 4612
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@2e
    invoke-virtual {v2}, Landroid/icu/util/TimeZone;->clone()Ljava/lang/Object;

    #@31
    move-result-object v2

    #@32
    check-cast v2, Landroid/icu/util/TimeZone;

    #@34
    iput-object v2, v1, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@36
    .line 4613
    return-object v1

    #@37
    .line 4615
    .end local v1    # "other":Landroid/icu/util/Calendar;
    :catch_0
    move-exception v0

    #@38
    .line 4617
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Landroid/icu/util/ICUCloneNotSupportedException;

    #@3a
    invoke-direct {v2, v0}, Landroid/icu/util/ICUCloneNotSupportedException;-><init>(Ljava/lang/Throwable;)V

    #@3d
    throw v2
.end method

.method public compareTo(Landroid/icu/util/Calendar;)I
    .locals 8
    .param p1, "that"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    .line 3420
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v4

    #@a
    sub-long v0, v2, v4

    #@c
    .line 3421
    .local v0, "v":J
    cmp-long v2, v0, v6

    #@e
    if-gez v2, :cond_0

    #@10
    const/4 v2, -0x1

    #@11
    :goto_0
    return v2

    #@12
    :cond_0
    cmp-long v2, v0, v6

    #@14
    if-lez v2, :cond_1

    #@16
    const/4 v2, 0x1

    #@17
    goto :goto_0

    #@18
    :cond_1
    const/4 v2, 0x0

    #@19
    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 3419
    check-cast p1, Landroid/icu/util/Calendar;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->compareTo(Landroid/icu/util/Calendar;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method protected complete()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 2350
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@3
    if-nez v0, :cond_0

    #@5
    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    #@8
    .line 2351
    :cond_0
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@a
    if-nez v0, :cond_1

    #@c
    .line 2352
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    #@f
    .line 2353
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@11
    .line 2354
    iput-boolean v1, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@13
    .line 2348
    :cond_1
    return-void
.end method

.method protected computeFields()V
    .locals 12

    #@0
    .prologue
    .line 4948
    const/4 v8, 0x2

    #@1
    new-array v7, v8, [I

    #@3
    .line 4949
    .local v7, "offsets":[I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@6
    move-result-object v8

    #@7
    iget-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    #@9
    const/4 v9, 0x0

    #@a
    invoke-virtual {v8, v10, v11, v9, v7}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@d
    .line 4950
    iget-wide v8, p0, Landroid/icu/util/Calendar;->time:J

    #@f
    const/4 v10, 0x0

    #@10
    aget v10, v7, v10

    #@12
    int-to-long v10, v10

    #@13
    add-long/2addr v8, v10

    #@14
    const/4 v10, 0x1

    #@15
    aget v10, v7, v10

    #@17
    int-to-long v10, v10

    #@18
    add-long v4, v8, v10

    #@1a
    .line 4953
    .local v4, "localMillis":J
    iget v3, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    #@1c
    .line 4954
    .local v3, "mask":I
    const/4 v2, 0x0

    #@1d
    .local v2, "i":I
    :goto_0
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@1f
    array-length v8, v8

    #@20
    if-ge v2, v8, :cond_1

    #@22
    .line 4955
    and-int/lit8 v8, v3, 0x1

    #@24
    if-nez v8, :cond_0

    #@26
    .line 4956
    iget-object v8, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@28
    const/4 v9, 0x1

    #@29
    aput v9, v8, v2

    #@2b
    .line 4960
    :goto_1
    shr-int/lit8 v3, v3, 0x1

    #@2d
    .line 4954
    add-int/lit8 v2, v2, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 4958
    :cond_0
    iget-object v8, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@32
    const/4 v9, 0x0

    #@33
    aput v9, v8, v2

    #@35
    goto :goto_1

    #@36
    .line 4972
    :cond_1
    const-wide/32 v8, 0x5265c00

    #@39
    invoke-static {v4, v5, v8, v9}, Landroid/icu/util/Calendar;->floorDivide(JJ)J

    #@3c
    move-result-wide v0

    #@3d
    .line 4974
    .local v0, "days":J
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@3f
    long-to-int v9, v0

    #@40
    const v10, 0x253d8c    # 3.419992E-39f

    #@43
    add-int/2addr v9, v10

    #@44
    const/16 v10, 0x14

    #@46
    aput v9, v8, v10

    #@48
    .line 4976
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@4a
    const/16 v9, 0x14

    #@4c
    aget v8, v8, v9

    #@4e
    invoke-direct {p0, v8}, Landroid/icu/util/Calendar;->computeGregorianAndDOWFields(I)V

    #@51
    .line 4982
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@53
    const/16 v9, 0x14

    #@55
    aget v8, v8, v9

    #@57
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->handleComputeFields(I)V

    #@5a
    .line 4986
    invoke-direct {p0}, Landroid/icu/util/Calendar;->computeWeekFields()V

    #@5d
    .line 4991
    const-wide/32 v8, 0x5265c00

    #@60
    mul-long/2addr v8, v0

    #@61
    sub-long v8, v4, v8

    #@63
    long-to-int v6, v8

    #@64
    .line 4992
    .local v6, "millisInDay":I
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@66
    const/16 v9, 0x15

    #@68
    aput v6, v8, v9

    #@6a
    .line 4993
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@6c
    rem-int/lit16 v9, v6, 0x3e8

    #@6e
    const/16 v10, 0xe

    #@70
    aput v9, v8, v10

    #@72
    .line 4994
    div-int/lit16 v6, v6, 0x3e8

    #@74
    .line 4995
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@76
    rem-int/lit8 v9, v6, 0x3c

    #@78
    const/16 v10, 0xd

    #@7a
    aput v9, v8, v10

    #@7c
    .line 4996
    div-int/lit8 v6, v6, 0x3c

    #@7e
    .line 4997
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@80
    rem-int/lit8 v9, v6, 0x3c

    #@82
    const/16 v10, 0xc

    #@84
    aput v9, v8, v10

    #@86
    .line 4998
    div-int/lit8 v6, v6, 0x3c

    #@88
    .line 4999
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@8a
    const/16 v9, 0xb

    #@8c
    aput v6, v8, v9

    #@8e
    .line 5000
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@90
    div-int/lit8 v9, v6, 0xc

    #@92
    const/16 v10, 0x9

    #@94
    aput v9, v8, v10

    #@96
    .line 5001
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@98
    rem-int/lit8 v9, v6, 0xc

    #@9a
    const/16 v10, 0xa

    #@9c
    aput v9, v8, v10

    #@9e
    .line 5002
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@a0
    const/4 v9, 0x0

    #@a1
    aget v9, v7, v9

    #@a3
    const/16 v10, 0xf

    #@a5
    aput v9, v8, v10

    #@a7
    .line 5003
    iget-object v8, p0, Landroid/icu/util/Calendar;->fields:[I

    #@a9
    const/4 v9, 0x1

    #@aa
    aget v9, v7, v9

    #@ac
    const/16 v10, 0x10

    #@ae
    aput v9, v8, v10

    #@b0
    .line 4947
    return-void
.end method

.method protected final computeGregorianFields(I)V
    .locals 18
    .param p1, "julianDay"    # I

    #@0
    .prologue
    .line 5041
    const v16, 0x1a4452

    #@3
    sub-int v16, p1, v16

    #@5
    move/from16 v0, v16

    #@7
    int-to-long v6, v0

    #@8
    .line 5047
    .local v6, "gregorianEpochDay":J
    const/16 v16, 0x1

    #@a
    move/from16 v0, v16

    #@c
    new-array v14, v0, [I

    #@e
    .line 5048
    .local v14, "rem":[I
    const v16, 0x23ab1

    #@11
    move/from16 v0, v16

    #@13
    invoke-static {v6, v7, v0, v14}, Landroid/icu/util/Calendar;->floorDivide(JI[I)I

    #@16
    move-result v13

    #@17
    .line 5049
    .local v13, "n400":I
    const/16 v16, 0x0

    #@19
    aget v16, v14, v16

    #@1b
    const v17, 0x8eac

    #@1e
    move/from16 v0, v16

    #@20
    move/from16 v1, v17

    #@22
    invoke-static {v0, v1, v14}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    #@25
    move-result v11

    #@26
    .line 5050
    .local v11, "n100":I
    const/16 v16, 0x0

    #@28
    aget v16, v14, v16

    #@2a
    const/16 v17, 0x5b5

    #@2c
    move/from16 v0, v16

    #@2e
    move/from16 v1, v17

    #@30
    invoke-static {v0, v1, v14}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    #@33
    move-result v12

    #@34
    .line 5051
    .local v12, "n4":I
    const/16 v16, 0x0

    #@36
    aget v16, v14, v16

    #@38
    const/16 v17, 0x16d

    #@3a
    move/from16 v0, v16

    #@3c
    move/from16 v1, v17

    #@3e
    invoke-static {v0, v1, v14}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    #@41
    move-result v10

    #@42
    .line 5052
    .local v10, "n1":I
    mul-int/lit16 v0, v13, 0x190

    #@44
    move/from16 v16, v0

    #@46
    mul-int/lit8 v17, v11, 0x64

    #@48
    add-int v16, v16, v17

    #@4a
    mul-int/lit8 v17, v12, 0x4

    #@4c
    add-int v16, v16, v17

    #@4e
    add-int v15, v16, v10

    #@50
    .line 5053
    .local v15, "year":I
    const/16 v16, 0x0

    #@52
    aget v4, v14, v16

    #@54
    .line 5054
    .local v4, "dayOfYear":I
    const/16 v16, 0x4

    #@56
    move/from16 v0, v16

    #@58
    if-eq v11, v0, :cond_0

    #@5a
    const/16 v16, 0x4

    #@5c
    move/from16 v0, v16

    #@5e
    if-ne v10, v0, :cond_3

    #@60
    .line 5055
    :cond_0
    const/16 v4, 0x16d

    #@62
    .line 5060
    :goto_0
    and-int/lit8 v16, v15, 0x3

    #@64
    if-nez v16, :cond_5

    #@66
    .line 5061
    rem-int/lit8 v16, v15, 0x64

    #@68
    if-nez v16, :cond_1

    #@6a
    rem-int/lit16 v0, v15, 0x190

    #@6c
    move/from16 v16, v0

    #@6e
    if-nez v16, :cond_4

    #@70
    :cond_1
    const/4 v5, 0x1

    #@71
    .line 5063
    .local v5, "isLeap":Z
    :goto_1
    const/4 v2, 0x0

    #@72
    .line 5064
    .local v2, "correction":I
    if-eqz v5, :cond_6

    #@74
    const/16 v8, 0x3c

    #@76
    .line 5065
    .local v8, "march1":I
    :goto_2
    if-lt v4, v8, :cond_2

    #@78
    if-eqz v5, :cond_7

    #@7a
    const/4 v2, 0x1

    #@7b
    .line 5066
    :cond_2
    :goto_3
    add-int v16, v4, v2

    #@7d
    mul-int/lit8 v16, v16, 0xc

    #@7f
    add-int/lit8 v16, v16, 0x6

    #@81
    move/from16 v0, v16

    #@83
    div-int/lit16 v9, v0, 0x16f

    #@85
    .line 5068
    .local v9, "month":I
    sget-object v16, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    #@87
    aget-object v17, v16, v9

    #@89
    if-eqz v5, :cond_8

    #@8b
    const/16 v16, 0x3

    #@8d
    :goto_4
    aget v16, v17, v16

    #@8f
    .line 5067
    sub-int v16, v4, v16

    #@91
    add-int/lit8 v3, v16, 0x1

    #@93
    .line 5070
    .local v3, "dayOfMonth":I
    move-object/from16 v0, p0

    #@95
    iput v15, v0, Landroid/icu/util/Calendar;->gregorianYear:I

    #@97
    .line 5071
    move-object/from16 v0, p0

    #@99
    iput v9, v0, Landroid/icu/util/Calendar;->gregorianMonth:I

    #@9b
    .line 5072
    move-object/from16 v0, p0

    #@9d
    iput v3, v0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    #@9f
    .line 5073
    add-int/lit8 v16, v4, 0x1

    #@a1
    move/from16 v0, v16

    #@a3
    move-object/from16 v1, p0

    #@a5
    iput v0, v1, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    #@a7
    .line 5037
    return-void

    #@a8
    .line 5057
    .end local v2    # "correction":I
    .end local v3    # "dayOfMonth":I
    .end local v5    # "isLeap":Z
    .end local v8    # "march1":I
    .end local v9    # "month":I
    :cond_3
    add-int/lit8 v15, v15, 0x1

    #@aa
    goto :goto_0

    #@ab
    .line 5061
    :cond_4
    const/4 v5, 0x0

    #@ac
    .restart local v5    # "isLeap":Z
    goto :goto_1

    #@ad
    .line 5060
    .end local v5    # "isLeap":Z
    :cond_5
    const/4 v5, 0x0

    #@ae
    .restart local v5    # "isLeap":Z
    goto :goto_1

    #@af
    .line 5064
    .restart local v2    # "correction":I
    :cond_6
    const/16 v8, 0x3b

    #@b1
    .restart local v8    # "march1":I
    goto :goto_2

    #@b2
    .line 5065
    :cond_7
    const/4 v2, 0x2

    #@b3
    goto :goto_3

    #@b4
    .line 5068
    .restart local v9    # "month":I
    :cond_8
    const/16 v16, 0x2

    #@b6
    goto :goto_4
.end method

.method protected computeGregorianMonthStart(II)I
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 5950
    if-ltz p2, :cond_0

    #@3
    const/16 v4, 0xb

    #@5
    if-le p2, v4, :cond_1

    #@7
    .line 5951
    :cond_0
    const/4 v4, 0x1

    #@8
    new-array v2, v4, [I

    #@a
    .line 5952
    .local v2, "rem":[I
    const/16 v4, 0xc

    #@c
    invoke-static {p2, v4, v2}, Landroid/icu/util/Calendar;->floorDivide(II[I)I

    #@f
    move-result v4

    #@10
    add-int/2addr p1, v4

    #@11
    .line 5953
    aget p2, v2, v5

    #@13
    .line 5956
    .end local v2    # "rem":[I
    :cond_1
    rem-int/lit8 v4, p1, 0x4

    #@15
    if-nez v4, :cond_4

    #@17
    rem-int/lit8 v4, p1, 0x64

    #@19
    if-nez v4, :cond_2

    #@1b
    rem-int/lit16 v4, p1, 0x190

    #@1d
    if-nez v4, :cond_4

    #@1f
    :cond_2
    const/4 v0, 0x1

    #@20
    .line 5957
    .local v0, "isLeap":Z
    :goto_0
    add-int/lit8 v3, p1, -0x1

    #@22
    .line 5961
    .local v3, "y":I
    mul-int/lit16 v4, v3, 0x16d

    #@24
    const/4 v5, 0x4

    #@25
    invoke-static {v3, v5}, Landroid/icu/util/Calendar;->floorDivide(II)I

    #@28
    move-result v5

    #@29
    add-int/2addr v4, v5

    #@2a
    const/16 v5, 0x64

    #@2c
    invoke-static {v3, v5}, Landroid/icu/util/Calendar;->floorDivide(II)I

    #@2f
    move-result v5

    #@30
    sub-int/2addr v4, v5

    #@31
    .line 5962
    const/16 v5, 0x190

    #@33
    invoke-static {v3, v5}, Landroid/icu/util/Calendar;->floorDivide(II)I

    #@36
    move-result v5

    #@37
    .line 5961
    add-int/2addr v4, v5

    #@38
    .line 5962
    const v5, 0x1a4452

    #@3b
    .line 5961
    add-int/2addr v4, v5

    #@3c
    add-int/lit8 v1, v4, -0x1

    #@3e
    .line 5966
    .local v1, "julianDay":I
    if-eqz p2, :cond_3

    #@40
    .line 5967
    sget-object v4, Landroid/icu/util/Calendar;->GREGORIAN_MONTH_COUNT:[[I

    #@42
    aget-object v5, v4, p2

    #@44
    if-eqz v0, :cond_5

    #@46
    const/4 v4, 0x3

    #@47
    :goto_1
    aget v4, v5, v4

    #@49
    add-int/2addr v1, v4

    #@4a
    .line 5970
    :cond_3
    return v1

    #@4b
    .line 5956
    .end local v0    # "isLeap":Z
    .end local v1    # "julianDay":I
    .end local v3    # "y":I
    :cond_4
    const/4 v0, 0x0

    #@4c
    .restart local v0    # "isLeap":Z
    goto :goto_0

    #@4d
    .line 5967
    .restart local v1    # "julianDay":I
    .restart local v3    # "y":I
    :cond_5
    const/4 v4, 0x2

    #@4e
    goto :goto_1
.end method

.method protected computeJulianDay()I
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x14

    #@2
    const/4 v4, 0x0

    #@3
    .line 5687
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@5
    aget v2, v2, v5

    #@7
    const/4 v3, 0x2

    #@8
    if-lt v2, v3, :cond_0

    #@a
    .line 5688
    const/16 v2, 0x8

    #@c
    invoke-virtual {p0, v4, v2, v4}, Landroid/icu/util/Calendar;->newestStamp(III)I

    #@f
    move-result v1

    #@10
    .line 5689
    .local v1, "bestStamp":I
    const/16 v2, 0x11

    #@12
    const/16 v3, 0x13

    #@14
    invoke-virtual {p0, v2, v3, v1}, Landroid/icu/util/Calendar;->newestStamp(III)I

    #@17
    move-result v1

    #@18
    .line 5690
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@1a
    aget v2, v2, v5

    #@1c
    if-gt v1, v2, :cond_0

    #@1e
    .line 5691
    invoke-virtual {p0, v5}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@21
    move-result v2

    #@22
    return v2

    #@23
    .line 5695
    .end local v1    # "bestStamp":I
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFieldResolutionTable()[[[I

    #@26
    move-result-object v2

    #@27
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    #@2a
    move-result v0

    #@2b
    .line 5696
    .local v0, "bestField":I
    if-gez v0, :cond_1

    #@2d
    .line 5697
    const/4 v0, 0x5

    #@2e
    .line 5700
    :cond_1
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    #@31
    move-result v2

    #@32
    return v2
.end method

.method protected computeMillisInDay()I
    .locals 10

    #@0
    .prologue
    const/16 v9, 0xc

    #@2
    const/16 v8, 0xb

    #@4
    const/16 v7, 0xa

    #@6
    const/16 v6, 0x9

    #@8
    .line 5586
    const/4 v3, 0x0

    #@9
    .line 5591
    .local v3, "millisInDay":I
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@b
    aget v1, v4, v8

    #@d
    .line 5592
    .local v1, "hourOfDayStamp":I
    iget-object v4, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@f
    aget v4, v4, v7

    #@11
    iget-object v5, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@13
    aget v5, v5, v6

    #@15
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    #@18
    move-result v2

    #@19
    .line 5593
    .local v2, "hourStamp":I
    if-le v2, v1, :cond_1

    #@1b
    move v0, v2

    #@1c
    .line 5596
    .local v0, "bestStamp":I
    :goto_0
    if-eqz v0, :cond_0

    #@1e
    .line 5597
    if-ne v0, v1, :cond_2

    #@20
    .line 5600
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@23
    move-result v4

    #@24
    add-int/lit8 v3, v4, 0x0

    #@26
    .line 5611
    :cond_0
    :goto_1
    mul-int/lit8 v3, v3, 0x3c

    #@28
    .line 5612
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@2b
    move-result v4

    #@2c
    add-int/2addr v3, v4

    #@2d
    .line 5613
    mul-int/lit8 v3, v3, 0x3c

    #@2f
    .line 5614
    const/16 v4, 0xd

    #@31
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@34
    move-result v4

    #@35
    add-int/2addr v3, v4

    #@36
    .line 5615
    mul-int/lit16 v3, v3, 0x3e8

    #@38
    .line 5616
    const/16 v4, 0xe

    #@3a
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@3d
    move-result v4

    #@3e
    add-int/2addr v3, v4

    #@3f
    .line 5618
    return v3

    #@40
    .line 5593
    .end local v0    # "bestStamp":I
    :cond_1
    move v0, v1

    #@41
    .restart local v0    # "bestStamp":I
    goto :goto_0

    #@42
    .line 5604
    :cond_2
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@45
    move-result v4

    #@46
    add-int/lit8 v3, v4, 0x0

    #@48
    .line 5605
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@4b
    move-result v4

    #@4c
    mul-int/lit8 v4, v4, 0xc

    #@4e
    add-int/2addr v3, v4

    #@4f
    goto :goto_1
.end method

.method protected computeTime()V
    .locals 14

    #@0
    .prologue
    .line 5373
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@3
    move-result v9

    #@4
    if-nez v9, :cond_0

    #@6
    .line 5374
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->validateFields()V

    #@9
    .line 5378
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeJulianDay()I

    #@c
    move-result v1

    #@d
    .line 5380
    .local v1, "julianDay":I
    invoke-static {v1}, Landroid/icu/util/Calendar;->julianDayToMillis(I)J

    #@10
    move-result-wide v2

    #@11
    .line 5389
    .local v2, "millis":J
    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@13
    const/16 v10, 0x15

    #@15
    aget v9, v9, v10

    #@17
    const/4 v10, 0x2

    #@18
    if-lt v9, v10, :cond_2

    #@1a
    .line 5390
    const/16 v9, 0x9

    #@1c
    const/16 v10, 0xe

    #@1e
    const/4 v11, 0x0

    #@1f
    invoke-virtual {p0, v9, v10, v11}, Landroid/icu/util/Calendar;->newestStamp(III)I

    #@22
    move-result v9

    #@23
    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@25
    const/16 v11, 0x15

    #@27
    aget v10, v10, v11

    #@29
    if-gt v9, v10, :cond_2

    #@2b
    .line 5391
    const/16 v9, 0x15

    #@2d
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@30
    move-result v4

    #@31
    .line 5396
    .local v4, "millisInDay":I
    :goto_0
    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@33
    const/16 v10, 0xf

    #@35
    aget v9, v9, v10

    #@37
    const/4 v10, 0x2

    #@38
    if-ge v9, v10, :cond_1

    #@3a
    .line 5397
    iget-object v9, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@3c
    const/16 v10, 0x10

    #@3e
    aget v9, v9, v10

    #@40
    const/4 v10, 0x2

    #@41
    if-lt v9, v10, :cond_3

    #@43
    .line 5398
    :cond_1
    int-to-long v10, v4

    #@44
    add-long/2addr v10, v2

    #@45
    const/16 v9, 0xf

    #@47
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@4a
    move-result v9

    #@4b
    const/16 v12, 0x10

    #@4d
    invoke-virtual {p0, v12}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@50
    move-result v12

    #@51
    add-int/2addr v9, v12

    #@52
    int-to-long v12, v9

    #@53
    sub-long/2addr v10, v12

    #@54
    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    #@56
    .line 5372
    :goto_1
    return-void

    #@57
    .line 5393
    .end local v4    # "millisInDay":I
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeMillisInDay()I

    #@5a
    move-result v4

    #@5b
    .restart local v4    # "millisInDay":I
    goto :goto_0

    #@5c
    .line 5431
    :cond_3
    iget-boolean v9, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@5e
    if-eqz v9, :cond_4

    #@60
    iget v9, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@62
    const/4 v10, 0x2

    #@63
    if-ne v9, v10, :cond_a

    #@65
    .line 5435
    :cond_4
    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/Calendar;->computeZoneOffset(JI)I

    #@68
    move-result v5

    #@69
    .line 5436
    .local v5, "zoneOffset":I
    int-to-long v10, v4

    #@6a
    add-long/2addr v10, v2

    #@6b
    int-to-long v12, v5

    #@6c
    sub-long v6, v10, v12

    #@6e
    .line 5438
    .local v6, "tmpTime":J
    iget-object v9, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@70
    invoke-virtual {v9, v6, v7}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@73
    move-result v8

    #@74
    .line 5442
    .local v8, "zoneOffset1":I
    if-eq v5, v8, :cond_9

    #@76
    .line 5443
    iget-boolean v9, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@78
    if-nez v9, :cond_5

    #@7a
    .line 5444
    new-instance v9, Ljava/lang/IllegalArgumentException;

    #@7c
    const-string/jumbo v10, "The specified wall time does not exist due to time zone offset transition."

    #@7f
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@82
    throw v9

    #@83
    .line 5447
    :cond_5
    sget-boolean v9, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    #@85
    if-nez v9, :cond_7

    #@87
    iget v9, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@89
    const/4 v10, 0x2

    #@8a
    if-ne v9, v10, :cond_6

    #@8c
    const/4 v9, 0x1

    #@8d
    :goto_2
    if-nez v9, :cond_7

    #@8f
    new-instance v9, Ljava/lang/AssertionError;

    #@91
    iget v10, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@93
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@96
    move-result-object v10

    #@97
    invoke-direct {v9, v10}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@9a
    throw v9

    #@9b
    :cond_6
    const/4 v9, 0x0

    #@9c
    goto :goto_2

    #@9d
    .line 5451
    :cond_7
    invoke-direct {p0, v6, v7}, Landroid/icu/util/Calendar;->getImmediatePreviousZoneTransition(J)Ljava/lang/Long;

    #@a0
    move-result-object v0

    #@a1
    .line 5452
    .local v0, "immediatePrevTransition":Ljava/lang/Long;
    if-nez v0, :cond_8

    #@a3
    .line 5453
    new-instance v9, Ljava/lang/RuntimeException;

    #@a5
    new-instance v10, Ljava/lang/StringBuilder;

    #@a7
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@aa
    const-string/jumbo v11, "Could not locate a time zone transition before "

    #@ad
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v10

    #@b1
    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v10

    #@b5
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b8
    move-result-object v10

    #@b9
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@bc
    throw v9

    #@bd
    .line 5455
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    #@c0
    move-result-wide v10

    #@c1
    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    #@c3
    goto :goto_1

    #@c4
    .line 5457
    .end local v0    # "immediatePrevTransition":Ljava/lang/Long;
    :cond_9
    iput-wide v6, p0, Landroid/icu/util/Calendar;->time:J

    #@c6
    goto :goto_1

    #@c7
    .line 5460
    .end local v5    # "zoneOffset":I
    .end local v6    # "tmpTime":J
    .end local v8    # "zoneOffset1":I
    :cond_a
    int-to-long v10, v4

    #@c8
    add-long/2addr v10, v2

    #@c9
    invoke-virtual {p0, v2, v3, v4}, Landroid/icu/util/Calendar;->computeZoneOffset(JI)I

    #@cc
    move-result v9

    #@cd
    int-to-long v12, v9

    #@ce
    sub-long/2addr v10, v12

    #@cf
    iput-wide v10, p0, Landroid/icu/util/Calendar;->time:J

    #@d1
    goto :goto_1
.end method

.method protected computeZoneOffset(JI)I
    .locals 17
    .param p1, "millis"    # J
    .param p3, "millisInDay"    # I

    #@0
    .prologue
    .line 5630
    const/4 v3, 0x2

    #@1
    new-array v8, v3, [I

    #@3
    .line 5631
    .local v8, "offsets":[I
    move/from16 v0, p3

    #@5
    int-to-long v14, v0

    #@6
    add-long v4, p1, v14

    #@8
    .line 5632
    .local v4, "wall":J
    move-object/from16 v0, p0

    #@a
    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@c
    instance-of v3, v3, Landroid/icu/util/BasicTimeZone;

    #@e
    if-eqz v3, :cond_3

    #@10
    .line 5633
    move-object/from16 v0, p0

    #@12
    iget v3, v0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@14
    const/4 v11, 0x1

    #@15
    if-ne v3, v11, :cond_1

    #@17
    const/4 v7, 0x4

    #@18
    .line 5634
    .local v7, "duplicatedTimeOpt":I
    :goto_0
    move-object/from16 v0, p0

    #@1a
    iget v3, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@1c
    const/4 v11, 0x1

    #@1d
    if-ne v3, v11, :cond_2

    #@1f
    const/16 v6, 0xc

    #@21
    .line 5635
    .local v6, "nonExistingTimeOpt":I
    :goto_1
    move-object/from16 v0, p0

    #@23
    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@25
    check-cast v3, Landroid/icu/util/BasicTimeZone;

    #@27
    invoke-virtual/range {v3 .. v8}, Landroid/icu/util/BasicTimeZone;->getOffsetFromLocal(JII[I)V

    #@2a
    .line 5670
    .end local v6    # "nonExistingTimeOpt":I
    .end local v7    # "duplicatedTimeOpt":I
    :cond_0
    :goto_2
    const/4 v3, 0x0

    #@2b
    aget v3, v8, v3

    #@2d
    const/4 v11, 0x1

    #@2e
    aget v11, v8, v11

    #@30
    add-int/2addr v3, v11

    #@31
    return v3

    #@32
    .line 5633
    :cond_1
    const/16 v7, 0xc

    #@34
    .restart local v7    # "duplicatedTimeOpt":I
    goto :goto_0

    #@35
    .line 5634
    :cond_2
    const/4 v6, 0x4

    #@36
    .restart local v6    # "nonExistingTimeOpt":I
    goto :goto_1

    #@37
    .line 5638
    .end local v6    # "nonExistingTimeOpt":I
    .end local v7    # "duplicatedTimeOpt":I
    :cond_3
    move-object/from16 v0, p0

    #@39
    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@3b
    const/4 v11, 0x1

    #@3c
    invoke-virtual {v3, v4, v5, v11, v8}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@3f
    .line 5640
    const/4 v10, 0x0

    #@40
    .line 5641
    .local v10, "sawRecentNegativeShift":Z
    move-object/from16 v0, p0

    #@42
    iget v3, v0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@44
    const/4 v11, 0x1

    #@45
    if-ne v3, v11, :cond_6

    #@47
    .line 5643
    const/4 v3, 0x0

    #@48
    aget v3, v8, v3

    #@4a
    const/4 v11, 0x1

    #@4b
    aget v11, v8, v11

    #@4d
    add-int/2addr v3, v11

    #@4e
    int-to-long v14, v3

    #@4f
    sub-long v12, v4, v14

    #@51
    .line 5648
    .local v12, "tgmt":J
    move-object/from16 v0, p0

    #@53
    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@55
    const-wide/32 v14, 0x1499700

    #@58
    sub-long v14, v12, v14

    #@5a
    invoke-virtual {v3, v14, v15}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@5d
    move-result v2

    #@5e
    .line 5649
    .local v2, "offsetBefore6":I
    const/4 v3, 0x0

    #@5f
    aget v3, v8, v3

    #@61
    const/4 v11, 0x1

    #@62
    aget v11, v8, v11

    #@64
    add-int/2addr v3, v11

    #@65
    sub-int v9, v3, v2

    #@67
    .line 5651
    .local v9, "offsetDelta":I
    sget-boolean v3, Landroid/icu/util/Calendar;->-assertionsDisabled:Z

    #@69
    if-nez v3, :cond_5

    #@6b
    const v3, -0x1499700

    #@6e
    if-ge v9, v3, :cond_4

    #@70
    const/4 v3, 0x1

    #@71
    :goto_3
    if-nez v3, :cond_5

    #@73
    new-instance v3, Ljava/lang/AssertionError;

    #@75
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@78
    move-result-object v11

    #@79
    invoke-direct {v3, v11}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@7c
    throw v3

    #@7d
    :cond_4
    const/4 v3, 0x0

    #@7e
    goto :goto_3

    #@7f
    .line 5652
    :cond_5
    if-gez v9, :cond_6

    #@81
    .line 5653
    const/4 v10, 0x1

    #@82
    .line 5657
    move-object/from16 v0, p0

    #@84
    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@86
    int-to-long v14, v9

    #@87
    add-long/2addr v14, v4

    #@88
    const/4 v11, 0x1

    #@89
    invoke-virtual {v3, v14, v15, v11, v8}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@8c
    .line 5660
    .end local v2    # "offsetBefore6":I
    .end local v9    # "offsetDelta":I
    .end local v12    # "tgmt":J
    :cond_6
    if-nez v10, :cond_0

    #@8e
    move-object/from16 v0, p0

    #@90
    iget v3, v0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@92
    const/4 v11, 0x1

    #@93
    if-ne v3, v11, :cond_0

    #@95
    .line 5666
    const/4 v3, 0x0

    #@96
    aget v3, v8, v3

    #@98
    const/4 v11, 0x1

    #@99
    aget v11, v8, v11

    #@9b
    add-int/2addr v3, v11

    #@9c
    int-to-long v14, v3

    #@9d
    sub-long v12, v4, v14

    #@9f
    .line 5667
    .restart local v12    # "tgmt":J
    move-object/from16 v0, p0

    #@a1
    iget-object v3, v0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@a3
    const/4 v11, 0x0

    #@a4
    invoke-virtual {v3, v12, v13, v11, v8}, Landroid/icu/util/TimeZone;->getOffset(JZ[I)V

    #@a7
    goto :goto_2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 2369
    if-nez p1, :cond_0

    #@4
    .line 2370
    return v2

    #@5
    .line 2372
    :cond_0
    if-ne p0, p1, :cond_1

    #@7
    .line 2373
    return v1

    #@8
    .line 2375
    :cond_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v3

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v4

    #@10
    if-eq v3, v4, :cond_2

    #@12
    .line 2376
    return v2

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 2379
    check-cast v0, Landroid/icu/util/Calendar;

    #@16
    .line 2381
    .local v0, "that":Landroid/icu/util/Calendar;
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_4

    #@1c
    .line 2382
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@1f
    move-result-wide v4

    #@20
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    #@27
    move-result-wide v6

    #@28
    cmp-long v3, v4, v6

    #@2a
    if-nez v3, :cond_3

    #@2c
    .line 2381
    :goto_0
    return v1

    #@2d
    :cond_3
    move v1, v2

    #@2e
    .line 2382
    goto :goto_0

    #@2f
    :cond_4
    move v1, v2

    #@30
    .line 2381
    goto :goto_0
.end method

.method public fieldDifference(Ljava/util/Date;I)I
    .locals 11
    .param p1, "when"    # Ljava/util/Date;
    .param p2, "field"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 3964
    const/4 v1, 0x0

    #@2
    .line 3965
    .local v1, "min":I
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v4

    #@6
    .line 3966
    .local v4, "startMs":J
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@9
    move-result-wide v8

    #@a
    .line 3973
    .local v8, "targetMs":J
    cmp-long v7, v4, v8

    #@c
    if-gez v7, :cond_6

    #@e
    .line 3974
    const/4 v0, 0x1

    #@f
    .line 3977
    .local v0, "max":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@12
    .line 3978
    invoke-virtual {p0, p2, v0}, Landroid/icu/util/Calendar;->add(II)V

    #@15
    .line 3979
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@18
    move-result-wide v2

    #@19
    .line 3980
    .local v2, "ms":J
    cmp-long v7, v2, v8

    #@1b
    if-nez v7, :cond_1

    #@1d
    .line 3981
    return v0

    #@1e
    .line 3982
    :cond_1
    cmp-long v7, v2, v8

    #@20
    if-lez v7, :cond_2

    #@22
    .line 3996
    :goto_1
    sub-int v7, v0, v1

    #@24
    if-le v7, v10, :cond_c

    #@26
    .line 3997
    sub-int v7, v0, v1

    #@28
    div-int/lit8 v7, v7, 0x2

    #@2a
    add-int v6, v1, v7

    #@2c
    .line 3998
    .local v6, "t":I
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@2f
    .line 3999
    invoke-virtual {p0, p2, v6}, Landroid/icu/util/Calendar;->add(II)V

    #@32
    .line 4000
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@35
    move-result-wide v2

    #@36
    .line 4001
    cmp-long v7, v2, v8

    #@38
    if-nez v7, :cond_4

    #@3a
    .line 4002
    return v6

    #@3b
    .line 3984
    .end local v6    # "t":I
    :cond_2
    const v7, 0x7fffffff

    #@3e
    if-ge v0, v7, :cond_3

    #@40
    .line 3985
    move v1, v0

    #@41
    .line 3986
    shl-int/lit8 v0, v0, 0x1

    #@43
    .line 3987
    if-gez v0, :cond_0

    #@45
    .line 3988
    const v0, 0x7fffffff

    #@48
    goto :goto_0

    #@49
    .line 3992
    :cond_3
    new-instance v7, Ljava/lang/RuntimeException;

    #@4b
    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    #@4e
    throw v7

    #@4f
    .line 4003
    .restart local v6    # "t":I
    :cond_4
    cmp-long v7, v2, v8

    #@51
    if-lez v7, :cond_5

    #@53
    .line 4004
    move v0, v6

    #@54
    goto :goto_1

    #@55
    .line 4006
    :cond_5
    move v1, v6

    #@56
    goto :goto_1

    #@57
    .line 4009
    .end local v0    # "max":I
    .end local v2    # "ms":J
    .end local v6    # "t":I
    :cond_6
    cmp-long v7, v4, v8

    #@59
    if-lez v7, :cond_c

    #@5b
    .line 4018
    const/4 v0, -0x1

    #@5c
    .line 4021
    .restart local v0    # "max":I
    :cond_7
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@5f
    .line 4022
    invoke-virtual {p0, p2, v0}, Landroid/icu/util/Calendar;->add(II)V

    #@62
    .line 4023
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@65
    move-result-wide v2

    #@66
    .line 4024
    .restart local v2    # "ms":J
    cmp-long v7, v2, v8

    #@68
    if-nez v7, :cond_8

    #@6a
    .line 4025
    return v0

    #@6b
    .line 4026
    :cond_8
    cmp-long v7, v2, v8

    #@6d
    if-gez v7, :cond_9

    #@6f
    .line 4038
    :goto_2
    sub-int v7, v1, v0

    #@71
    if-le v7, v10, :cond_c

    #@73
    .line 4039
    sub-int v7, v0, v1

    #@75
    div-int/lit8 v7, v7, 0x2

    #@77
    add-int v6, v1, v7

    #@79
    .line 4040
    .restart local v6    # "t":I
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@7c
    .line 4041
    invoke-virtual {p0, p2, v6}, Landroid/icu/util/Calendar;->add(II)V

    #@7f
    .line 4042
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@82
    move-result-wide v2

    #@83
    .line 4043
    cmp-long v7, v2, v8

    #@85
    if-nez v7, :cond_a

    #@87
    .line 4044
    return v6

    #@88
    .line 4029
    .end local v6    # "t":I
    :cond_9
    move v1, v0

    #@89
    .line 4030
    shl-int/lit8 v0, v0, 0x1

    #@8b
    .line 4031
    if-nez v0, :cond_7

    #@8d
    .line 4033
    new-instance v7, Ljava/lang/RuntimeException;

    #@8f
    invoke-direct {v7}, Ljava/lang/RuntimeException;-><init>()V

    #@92
    throw v7

    #@93
    .line 4045
    .restart local v6    # "t":I
    :cond_a
    cmp-long v7, v2, v8

    #@95
    if-gez v7, :cond_b

    #@97
    .line 4046
    move v0, v6

    #@98
    goto :goto_2

    #@99
    .line 4048
    :cond_b
    move v1, v6

    #@9a
    goto :goto_2

    #@9b
    .line 4053
    .end local v0    # "max":I
    .end local v2    # "ms":J
    .end local v6    # "t":I
    :cond_c
    invoke-virtual {p0, v4, v5}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@9e
    .line 4054
    invoke-virtual {p0, p2, v1}, Landroid/icu/util/Calendar;->add(II)V

    #@a1
    .line 4055
    return v1
.end method

.method protected fieldName(I)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # I

    #@0
    .prologue
    .line 6251
    :try_start_0
    sget-object v1, Landroid/icu/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    #@2
    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    #@4
    return-object v1

    #@5
    .line 6252
    :catch_0
    move-exception v0

    #@6
    .line 6253
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v2, "Field "

    #@e
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v1

    #@12
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@19
    move-result-object v1

    #@1a
    return-object v1
.end method

.method public final get(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2046
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->complete()V

    #@3
    .line 2047
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@5
    aget v0, v0, p1

    #@7
    return v0
.end method

.method public getActualMaximum(I)I
    .locals 5
    .param p1, "field"    # I

    #@0
    .prologue
    const/16 v4, 0x13

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 2491
    packed-switch p1, :pswitch_data_0

    #@7
    .line 2529
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getLeastMaximum(I)I

    #@a
    move-result v2

    #@b
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@e
    move-result v3

    #@f
    invoke-direct {p0, p1, v2, v3}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    #@12
    move-result v1

    #@13
    .line 2532
    .local v1, "result":I
    :goto_0
    return v1

    #@14
    .line 2494
    .end local v1    # "result":I
    :pswitch_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@17
    move-result-object v0

    #@18
    check-cast v0, Landroid/icu/util/Calendar;

    #@1a
    .line 2495
    .local v0, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@1d
    .line 2496
    invoke-virtual {v0, p1, v2}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    #@20
    .line 2497
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@23
    move-result v2

    #@24
    const/4 v3, 0x2

    #@25
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    #@28
    move-result v3

    #@29
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    #@2c
    move-result v1

    #@2d
    .restart local v1    # "result":I
    goto :goto_0

    #@2e
    .line 2503
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .end local v1    # "result":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->clone()Ljava/lang/Object;

    #@31
    move-result-object v0

    #@32
    check-cast v0, Landroid/icu/util/Calendar;

    #@34
    .line 2504
    .restart local v0    # "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@37
    .line 2505
    invoke-virtual {v0, p1, v2}, Landroid/icu/util/Calendar;->prepareGetActual(IZ)V

    #@3a
    .line 2506
    invoke-virtual {v0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@3d
    move-result v2

    #@3e
    invoke-virtual {p0, v2}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    #@41
    move-result v1

    #@42
    .restart local v1    # "result":I
    goto :goto_0

    #@43
    .line 2524
    .end local v0    # "cal":Landroid/icu/util/Calendar;
    .end local v1    # "result":I
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@46
    move-result v1

    #@47
    .restart local v1    # "result":I
    goto :goto_0

    #@48
    .line 2491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 3
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2560
    packed-switch p1, :pswitch_data_0

    #@3
    .line 2579
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    #@6
    move-result v1

    #@7
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    #@a
    move-result v2

    #@b
    invoke-direct {p0, p1, v1, v2}, Landroid/icu/util/Calendar;->getActualHelper(III)I

    #@e
    move-result v0

    #@f
    .line 2582
    .local v0, "result":I
    :goto_0
    return v0

    #@10
    .line 2574
    .end local v0    # "result":I
    :pswitch_1
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    #@13
    move-result v0

    #@14
    .restart local v0    # "result":I
    goto :goto_0

    #@15
    .line 2560
    nop

    #@16
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getDateTimeFormat(IILandroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 3445
    invoke-static {p0, p3, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getDateTimeFormat(IILjava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p1, "dateStyle"    # I
    .param p2, "timeStyle"    # I
    .param p3, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 3435
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-static {p0, v0, p1, p2}, Landroid/icu/util/Calendar;->formatHelper(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;II)Landroid/icu/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDayOfWeekType(I)I
    .locals 5
    .param p1, "dayOfWeek"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    const/4 v0, 0x1

    #@2
    const/4 v4, 0x0

    #@3
    .line 4490
    if-lt p1, v0, :cond_0

    #@5
    const/4 v2, 0x7

    #@6
    if-le p1, v2, :cond_1

    #@8
    .line 4491
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "Invalid day of week"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 4493
    :cond_1
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@13
    iget v3, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@15
    if-ne v2, v3, :cond_4

    #@17
    .line 4494
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@19
    if-eq p1, v2, :cond_2

    #@1b
    .line 4495
    return v4

    #@1c
    .line 4496
    :cond_2
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    #@1e
    if-nez v2, :cond_3

    #@20
    :goto_0
    return v0

    #@21
    :cond_3
    move v0, v1

    #@22
    goto :goto_0

    #@23
    .line 4498
    :cond_4
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@25
    iget v3, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@27
    if-ge v2, v3, :cond_6

    #@29
    .line 4499
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@2b
    if-lt p1, v2, :cond_5

    #@2d
    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@2f
    if-le p1, v2, :cond_7

    #@31
    .line 4500
    :cond_5
    return v4

    #@32
    .line 4503
    :cond_6
    iget v2, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@34
    if-le p1, v2, :cond_7

    #@36
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@38
    if-ge p1, v2, :cond_7

    #@3a
    .line 4504
    return v4

    #@3b
    .line 4507
    :cond_7
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@3d
    if-ne p1, v2, :cond_9

    #@3f
    .line 4508
    iget v2, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    #@41
    if-nez v2, :cond_8

    #@43
    :goto_1
    return v0

    #@44
    :cond_8
    move v0, v1

    #@45
    goto :goto_1

    #@46
    .line 4510
    :cond_9
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@48
    if-ne p1, v1, :cond_b

    #@4a
    .line 4511
    iget v1, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    #@4c
    const v2, 0x5265c00

    #@4f
    if-lt v1, v2, :cond_a

    #@51
    :goto_2
    return v0

    #@52
    :cond_a
    const/4 v0, 0x3

    #@53
    goto :goto_2

    #@54
    .line 4513
    :cond_b
    return v0
.end method

.method protected getDefaultDayInMonth(II)I
    .locals 1
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 5807
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected getDefaultMonthInYear(I)I
    .locals 1
    .param p1, "extendedYear"    # I

    #@0
    .prologue
    .line 5792
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public getDisplayName(Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 1
    .param p1, "loc"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 3397
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public getDisplayName(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 3389
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public final getFieldCount()I
    .locals 1

    #@0
    .prologue
    .line 6073
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@2
    array-length v0, v0

    #@3
    return v0
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    #@0
    .prologue
    .line 5712
    sget-object v0, Landroid/icu/util/Calendar;->DATE_PRECEDENCE:[[[I

    #@2
    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 4235
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@2
    return v0
.end method

.method public final getGreatestMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 4443
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected final getGregorianDayOfMonth()I
    .locals 1

    #@0
    .prologue
    .line 6063
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianDayOfMonth:I

    #@2
    return v0
.end method

.method protected final getGregorianDayOfYear()I
    .locals 1

    #@0
    .prologue
    .line 6053
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianDayOfYear:I

    #@2
    return v0
.end method

.method protected final getGregorianMonth()I
    .locals 1

    #@0
    .prologue
    .line 6043
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianMonth:I

    #@2
    return v0
.end method

.method protected final getGregorianYear()I
    .locals 1

    #@0
    .prologue
    .line 6033
    iget v0, p0, Landroid/icu/util/Calendar;->gregorianYear:I

    #@2
    return v0
.end method

.method public final getLeastMaximum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 4454
    const/4 v0, 0x2

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method protected getLimit(II)I
    .locals 5
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 4338
    packed-switch p1, :pswitch_data_0

    #@4
    .line 4374
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    #@7
    move-result v3

    #@8
    return v3

    #@9
    .line 4352
    :pswitch_1
    sget-object v3, Landroid/icu/util/Calendar;->LIMITS:[[I

    #@b
    aget-object v3, v3, p1

    #@d
    aget v3, v3, p2

    #@f
    return v3

    #@10
    .line 4357
    :pswitch_2
    if-nez p2, :cond_1

    #@12
    .line 4358
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@15
    move-result v3

    #@16
    if-ne v3, v4, :cond_0

    #@18
    const/4 v1, 0x1

    #@19
    .line 4370
    .local v1, "limit":I
    :goto_0
    return v1

    #@1a
    .line 4358
    .end local v1    # "limit":I
    :cond_0
    const/4 v1, 0x0

    #@1b
    .restart local v1    # "limit":I
    goto :goto_0

    #@1c
    .line 4359
    .end local v1    # "limit":I
    :cond_1
    if-ne p2, v4, :cond_2

    #@1e
    .line 4360
    const/4 v1, 0x1

    #@1f
    .restart local v1    # "limit":I
    goto :goto_0

    #@20
    .line 4362
    .end local v1    # "limit":I
    :cond_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@23
    move-result v2

    #@24
    .line 4363
    .local v2, "minDaysInFirst":I
    const/4 v3, 0x5

    #@25
    invoke-virtual {p0, v3, p2}, Landroid/icu/util/Calendar;->handleGetLimit(II)I

    #@28
    move-result v0

    #@29
    .line 4364
    .local v0, "daysInMonth":I
    const/4 v3, 0x2

    #@2a
    if-ne p2, v3, :cond_3

    #@2c
    .line 4365
    rsub-int/lit8 v3, v2, 0x7

    #@2e
    add-int/2addr v3, v0

    #@2f
    div-int/lit8 v1, v3, 0x7

    #@31
    .restart local v1    # "limit":I
    goto :goto_0

    #@32
    .line 4367
    .end local v1    # "limit":I
    :cond_3
    add-int/lit8 v3, v0, 0x6

    #@34
    rsub-int/lit8 v4, v2, 0x7

    #@36
    add-int/2addr v3, v4

    #@37
    div-int/lit8 v1, v3, 0x7

    #@39
    .restart local v1    # "limit":I
    goto :goto_0

    #@3a
    .line 4338
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public final getLocale(Landroid/icu/util/ULocale$Type;)Landroid/icu/util/ULocale;
    .locals 1
    .param p1, "type"    # Landroid/icu/util/ULocale$Type;

    #@0
    .prologue
    .line 6357
    sget-object v0, Landroid/icu/util/ULocale;->ACTUAL_LOCALE:Landroid/icu/util/ULocale$Type;

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 6358
    iget-object v0, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    #@6
    .line 6357
    :goto_0
    return-object v0

    #@7
    .line 6358
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    #@9
    goto :goto_0
.end method

.method public final getMaximum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 4432
    const/4 v0, 0x3

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    #@0
    .prologue
    .line 4274
    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    #@2
    return v0
.end method

.method public final getMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 4421
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->getLimit(II)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method public final getRelatedYear()I
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2189
    const/16 v4, 0x13

    #@2
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@5
    move-result v3

    #@6
    .line 2190
    .local v3, "year":I
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    #@8
    .line 2191
    .local v1, "type":Landroid/icu/util/Calendar$CalType;
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@b
    move-result-object v2

    #@c
    .line 2192
    .local v2, "typeString":Ljava/lang/String;
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    #@f
    move-result-object v5

    #@10
    const/4 v4, 0x0

    #@11
    array-length v6, v5

    #@12
    :goto_0
    if-ge v4, v6, :cond_0

    #@14
    aget-object v0, v5, v4

    #@16
    .line 2193
    .local v0, "testType":Landroid/icu/util/Calendar$CalType;
    iget-object v7, v0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    #@18
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v7

    #@1c
    if-eqz v7, :cond_1

    #@1e
    .line 2194
    move-object v1, v0

    #@1f
    .line 2198
    .end local v0    # "testType":Landroid/icu/util/Calendar$CalType;
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->-getandroid_icu_util_Calendar$CalTypeSwitchesValues()[I

    #@22
    move-result-object v4

    #@23
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@26
    move-result v5

    #@27
    aget v4, v4, v5

    #@29
    packed-switch v4, :pswitch_data_0

    #@2c
    .line 2230
    :goto_1
    :pswitch_0
    return v3

    #@2d
    .line 2192
    .restart local v0    # "testType":Landroid/icu/util/Calendar$CalType;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 2200
    .end local v0    # "testType":Landroid/icu/util/Calendar$CalType;
    :pswitch_1
    add-int/lit16 v3, v3, 0x26e

    #@32
    goto :goto_1

    #@33
    .line 2202
    :pswitch_2
    add-int/lit16 v3, v3, -0xeb0

    #@35
    goto :goto_1

    #@36
    .line 2204
    :pswitch_3
    add-int/lit16 v3, v3, -0xa4d

    #@38
    goto :goto_1

    #@39
    .line 2206
    :pswitch_4
    add-int/lit8 v3, v3, 0x4f

    #@3b
    goto :goto_1

    #@3c
    .line 2208
    :pswitch_5
    add-int/lit16 v3, v3, 0x11c

    #@3e
    goto :goto_1

    #@3f
    .line 2210
    :pswitch_6
    add-int/lit8 v3, v3, 0x8

    #@41
    goto :goto_1

    #@42
    .line 2212
    :pswitch_7
    add-int/lit16 v3, v3, -0x1574

    #@44
    goto :goto_1

    #@45
    .line 2214
    :pswitch_8
    add-int/lit16 v3, v3, -0x91d

    #@47
    goto :goto_1

    #@48
    .line 2220
    :pswitch_9
    invoke-static {v3}, Landroid/icu/util/Calendar;->gregoYearFromIslamicStart(I)I

    #@4b
    move-result v3

    #@4c
    goto :goto_1

    #@4d
    .line 2198
    nop

    #@4e
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getRepeatedWallTimeOption()I
    .locals 1

    #@0
    .prologue
    .line 4154
    iget v0, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@2
    return v0
.end method

.method public getSkippedWallTimeOption()I
    .locals 1

    #@0
    .prologue
    .line 4206
    iget v0, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@2
    return v0
.end method

.method protected final getStamp(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 5288
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 1980
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@5
    move-result-wide v2

    #@6
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@9
    return-object v0
.end method

.method public getTimeInMillis()J
    .locals 2

    #@0
    .prologue
    .line 2002
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    invoke-direct {p0}, Landroid/icu/util/Calendar;->updateTime()V

    #@7
    .line 2003
    :cond_0
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    #@9
    return-wide v0
.end method

.method public getTimeZone()Landroid/icu/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 4085
    iget-object v0, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 6311
    const-string/jumbo v0, "unknown"

    #@3
    return-object v0
.end method

.method public getWeekData()Landroid/icu/util/Calendar$WeekData;
    .locals 7

    #@0
    .prologue
    .line 4807
    new-instance v0, Landroid/icu/util/Calendar$WeekData;

    #@2
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@4
    iget v2, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    #@6
    iget v3, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@8
    iget v4, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    #@a
    iget v5, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@c
    iget v6, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    #@e
    invoke-direct/range {v0 .. v6}, Landroid/icu/util/Calendar$WeekData;-><init>(IIIIII)V

    #@11
    return-object v0
.end method

.method public getWeekendTransition(I)I
    .locals 2
    .param p1, "dayOfWeek"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 4535
    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@2
    if-ne p1, v0, :cond_0

    #@4
    .line 4536
    iget v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    #@6
    return v0

    #@7
    .line 4537
    :cond_0
    iget v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@9
    if-ne p1, v0, :cond_1

    #@b
    .line 4538
    iget v0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    #@d
    return v0

    #@e
    .line 4540
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    const-string/jumbo v1, "Not weekend transition day"

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method protected handleComputeFields(I)V
    .locals 5
    .param p1, "julianDay"    # I

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    .line 6006
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianMonth()I

    #@4
    move-result v2

    #@5
    const/4 v3, 0x2

    #@6
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@9
    .line 6007
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfMonth()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x5

    #@e
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@11
    .line 6008
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianDayOfYear()I

    #@14
    move-result v2

    #@15
    const/4 v3, 0x6

    #@16
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@19
    .line 6009
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getGregorianYear()I

    #@1c
    move-result v1

    #@1d
    .line 6010
    .local v1, "eyear":I
    const/16 v2, 0x13

    #@1f
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@22
    .line 6011
    const/4 v0, 0x1

    #@23
    .line 6012
    .local v0, "era":I
    if-ge v1, v4, :cond_0

    #@25
    .line 6013
    const/4 v0, 0x0

    #@26
    .line 6014
    rsub-int/lit8 v1, v1, 0x1

    #@28
    .line 6016
    :cond_0
    const/4 v2, 0x0

    #@29
    invoke-virtual {p0, v2, v0}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@2c
    .line 6017
    invoke-virtual {p0, v4, v1}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@2f
    .line 6005
    return-void
.end method

.method protected handleComputeJulianDay(I)I
    .locals 13
    .param p1, "bestField"    # I

    #@0
    .prologue
    .line 5819
    const/4 v11, 0x5

    #@1
    if-eq p1, v11, :cond_0

    #@3
    .line 5820
    const/4 v11, 0x4

    #@4
    if-ne p1, v11, :cond_1

    #@6
    .line 5819
    :cond_0
    const/4 v9, 0x1

    #@7
    .line 5825
    .local v9, "useMonth":Z
    :goto_0
    const/4 v11, 0x3

    #@8
    if-ne p1, v11, :cond_3

    #@a
    .line 5830
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    #@d
    move-result v11

    #@e
    const/16 v12, 0x11

    #@10
    invoke-virtual {p0, v12, v11}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@13
    move-result v10

    #@14
    .line 5835
    .local v10, "year":I
    :goto_1
    const/16 v11, 0x13

    #@16
    invoke-virtual {p0, v11, v10}, Landroid/icu/util/Calendar;->internalSet(II)V

    #@19
    .line 5837
    if-eqz v9, :cond_4

    #@1b
    invoke-virtual {p0, v10}, Landroid/icu/util/Calendar;->getDefaultMonthInYear(I)I

    #@1e
    move-result v11

    #@1f
    const/4 v12, 0x2

    #@20
    invoke-virtual {p0, v12, v11}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@23
    move-result v7

    #@24
    .line 5841
    .local v7, "month":I
    :goto_2
    invoke-virtual {p0, v10, v7, v9}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    #@27
    move-result v5

    #@28
    .line 5843
    .local v5, "julianDay":I
    const/4 v11, 0x5

    #@29
    if-ne p1, v11, :cond_6

    #@2b
    .line 5844
    const/4 v11, 0x5

    #@2c
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->isSet(I)Z

    #@2f
    move-result v11

    #@30
    if-eqz v11, :cond_5

    #@32
    .line 5845
    invoke-virtual {p0, v10, v7}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    #@35
    move-result v11

    #@36
    const/4 v12, 0x5

    #@37
    invoke-virtual {p0, v12, v11}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@3a
    move-result v11

    #@3b
    add-int/2addr v11, v5

    #@3c
    return v11

    #@3d
    .line 5821
    .end local v5    # "julianDay":I
    .end local v7    # "month":I
    .end local v9    # "useMonth":Z
    .end local v10    # "year":I
    :cond_1
    const/16 v11, 0x8

    #@3f
    if-ne p1, v11, :cond_2

    #@41
    const/4 v9, 0x1

    #@42
    .restart local v9    # "useMonth":Z
    goto :goto_0

    #@43
    .end local v9    # "useMonth":Z
    :cond_2
    const/4 v9, 0x0

    #@44
    .restart local v9    # "useMonth":Z
    goto :goto_0

    #@45
    .line 5832
    :cond_3
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    #@48
    move-result v10

    #@49
    .restart local v10    # "year":I
    goto :goto_1

    #@4a
    .line 5837
    :cond_4
    const/4 v7, 0x0

    #@4b
    .restart local v7    # "month":I
    goto :goto_2

    #@4c
    .line 5847
    .restart local v5    # "julianDay":I
    :cond_5
    invoke-virtual {p0, v10, v7}, Landroid/icu/util/Calendar;->getDefaultDayInMonth(II)I

    #@4f
    move-result v11

    #@50
    add-int/2addr v11, v5

    #@51
    return v11

    #@52
    .line 5851
    :cond_6
    const/4 v11, 0x6

    #@53
    if-ne p1, v11, :cond_7

    #@55
    .line 5852
    const/4 v11, 0x6

    #@56
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@59
    move-result v11

    #@5a
    add-int/2addr v11, v5

    #@5b
    return v11

    #@5c
    .line 5855
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@5f
    move-result v4

    #@60
    .line 5869
    .local v4, "firstDOW":I
    add-int/lit8 v11, v5, 0x1

    #@62
    invoke-static {v11}, Landroid/icu/util/Calendar;->julianDayToDayOfWeek(I)I

    #@65
    move-result v11

    #@66
    sub-int v3, v11, v4

    #@68
    .line 5870
    .local v3, "first":I
    if-gez v3, :cond_8

    #@6a
    .line 5871
    add-int/lit8 v3, v3, 0x7

    #@6c
    .line 5876
    :cond_8
    const/4 v2, 0x0

    #@6d
    .line 5877
    .local v2, "dowLocal":I
    sget-object v11, Landroid/icu/util/Calendar;->DOW_PRECEDENCE:[[[I

    #@6f
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->resolveFields([[[I)I

    #@72
    move-result v11

    #@73
    sparse-switch v11, :sswitch_data_0

    #@76
    .line 5885
    :goto_3
    rem-int/lit8 v2, v2, 0x7

    #@78
    .line 5886
    if-gez v2, :cond_9

    #@7a
    .line 5887
    add-int/lit8 v2, v2, 0x7

    #@7c
    .line 5893
    :cond_9
    rsub-int/lit8 v11, v3, 0x1

    #@7e
    add-int v0, v11, v2

    #@80
    .line 5895
    .local v0, "date":I
    const/16 v11, 0x8

    #@82
    if-ne p1, v11, :cond_c

    #@84
    .line 5898
    const/4 v11, 0x1

    #@85
    if-ge v0, v11, :cond_a

    #@87
    .line 5899
    add-int/lit8 v0, v0, 0x7

    #@89
    .line 5904
    :cond_a
    const/16 v11, 0x8

    #@8b
    const/4 v12, 0x1

    #@8c
    invoke-virtual {p0, v11, v12}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@8f
    move-result v1

    #@90
    .line 5905
    .local v1, "dim":I
    if-ltz v1, :cond_b

    #@92
    .line 5906
    add-int/lit8 v11, v1, -0x1

    #@94
    mul-int/lit8 v11, v11, 0x7

    #@96
    add-int/2addr v0, v11

    #@97
    .line 5931
    .end local v1    # "dim":I
    :goto_4
    add-int v11, v5, v0

    #@99
    return v11

    #@9a
    .line 5879
    .end local v0    # "date":I
    :sswitch_0
    const/4 v11, 0x7

    #@9b
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@9e
    move-result v11

    #@9f
    sub-int v2, v11, v4

    #@a1
    .line 5880
    goto :goto_3

    #@a2
    .line 5882
    :sswitch_1
    const/16 v11, 0x12

    #@a4
    invoke-virtual {p0, v11}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@a7
    move-result v11

    #@a8
    add-int/lit8 v2, v11, -0x1

    #@aa
    .line 5883
    goto :goto_3

    #@ab
    .line 5915
    .restart local v0    # "date":I
    .restart local v1    # "dim":I
    :cond_b
    const/4 v11, 0x2

    #@ac
    const/4 v12, 0x0

    #@ad
    invoke-virtual {p0, v11, v12}, Landroid/icu/util/Calendar;->internalGet(II)I

    #@b0
    move-result v6

    #@b1
    .line 5916
    .local v6, "m":I
    invoke-virtual {p0, v10, v6}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    #@b4
    move-result v8

    #@b5
    .line 5917
    .local v8, "monthLength":I
    sub-int v11, v8, v0

    #@b7
    div-int/lit8 v11, v11, 0x7

    #@b9
    add-int/2addr v11, v1

    #@ba
    add-int/lit8 v11, v11, 0x1

    #@bc
    mul-int/lit8 v11, v11, 0x7

    #@be
    add-int/2addr v0, v11

    #@bf
    goto :goto_4

    #@c0
    .line 5923
    .end local v1    # "dim":I
    .end local v6    # "m":I
    .end local v8    # "monthLength":I
    :cond_c
    rsub-int/lit8 v11, v3, 0x7

    #@c2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@c5
    move-result v12

    #@c6
    if-ge v11, v12, :cond_d

    #@c8
    .line 5924
    add-int/lit8 v0, v0, 0x7

    #@ca
    .line 5928
    :cond_d
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@cd
    move-result v11

    #@ce
    add-int/lit8 v11, v11, -0x1

    #@d0
    mul-int/lit8 v11, v11, 0x7

    #@d2
    add-int/2addr v0, v11

    #@d3
    goto :goto_4

    #@d4
    .line 5877
    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x12 -> :sswitch_1
    .end sparse-switch
.end method

.method protected abstract handleComputeMonthStart(IIZ)I
.end method

.method protected handleCreateFields()[I
    .locals 1

    #@0
    .prologue
    .line 5778
    const/16 v0, 0x17

    #@2
    new-array v0, v0, [I

    #@4
    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 3497
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 3513
    new-instance v0, Landroid/icu/util/Calendar$FormatConfiguration;

    #@2
    const/4 v1, 0x0

    #@3
    invoke-direct {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;-><init>(Landroid/icu/util/Calendar$FormatConfiguration;)V

    #@6
    .line 3514
    .local v0, "fmtConfig":Landroid/icu/util/Calendar$FormatConfiguration;
    invoke-static {v0, p1}, Landroid/icu/util/Calendar$FormatConfiguration;->-set4(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    #@9
    .line 3515
    invoke-static {v0, p2}, Landroid/icu/util/Calendar$FormatConfiguration;->-set3(Landroid/icu/util/Calendar$FormatConfiguration;Ljava/lang/String;)Ljava/lang/String;

    #@c
    .line 3516
    new-instance v1, Landroid/icu/text/DateFormatSymbols;

    #@e
    invoke-direct {v1, p0, p3}, Landroid/icu/text/DateFormatSymbols;-><init>(Landroid/icu/util/Calendar;Landroid/icu/util/ULocale;)V

    #@11
    invoke-static {v0, v1}, Landroid/icu/util/Calendar$FormatConfiguration;->-set1(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/text/DateFormatSymbols;)Landroid/icu/text/DateFormatSymbols;

    #@14
    .line 3517
    invoke-static {v0, p3}, Landroid/icu/util/Calendar$FormatConfiguration;->-set2(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/ULocale;)Landroid/icu/util/ULocale;

    #@17
    .line 3518
    invoke-static {v0, p0}, Landroid/icu/util/Calendar$FormatConfiguration;->-set0(Landroid/icu/util/Calendar$FormatConfiguration;Landroid/icu/util/Calendar;)Landroid/icu/util/Calendar;

    #@1a
    .line 3520
    invoke-static {v0}, Landroid/icu/text/SimpleDateFormat;->getInstance(Landroid/icu/util/Calendar$FormatConfiguration;)Landroid/icu/text/SimpleDateFormat;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 3482
    invoke-static {p3}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;
    .locals 2
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 3460
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, p1, v1, v0}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method protected abstract handleGetExtendedYear()I
.end method

.method protected abstract handleGetLimit(II)I
.end method

.method protected handleGetMonthLength(II)I
    .locals 2
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 5752
    add-int/lit8 v0, p2, 0x1

    #@3
    invoke-virtual {p0, p1, v0, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    #@6
    move-result v0

    #@7
    .line 5753
    invoke-virtual {p0, p1, p2, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    #@a
    move-result v1

    #@b
    .line 5752
    sub-int/2addr v0, v1

    #@c
    return v0
.end method

.method protected handleGetYearLength(I)I
    .locals 2
    .param p1, "eyear"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 5765
    add-int/lit8 v0, p1, 0x1

    #@3
    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    #@6
    move-result v0

    #@7
    .line 5766
    invoke-virtual {p0, p1, v1, v1}, Landroid/icu/util/Calendar;->handleComputeMonthStart(IIZ)I

    #@a
    move-result v1

    #@b
    .line 5765
    sub-int/2addr v0, v1

    #@c
    return v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 2416
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    .line 2417
    :goto_0
    iget v1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@7
    shl-int/lit8 v1, v1, 0x1

    #@9
    .line 2416
    or-int/2addr v0, v1

    #@a
    .line 2418
    iget v1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    #@c
    shl-int/lit8 v1, v1, 0x4

    #@e
    .line 2416
    or-int/2addr v0, v1

    #@f
    .line 2419
    iget v1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@11
    shl-int/lit8 v1, v1, 0x7

    #@13
    .line 2416
    or-int/2addr v0, v1

    #@14
    .line 2420
    iget v1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@16
    shl-int/lit8 v1, v1, 0x9

    #@18
    .line 2416
    or-int/2addr v0, v1

    #@19
    .line 2421
    iget-object v1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@1b
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->hashCode()I

    #@1e
    move-result v1

    #@1f
    shl-int/lit8 v1, v1, 0xb

    #@21
    .line 2416
    or-int/2addr v0, v1

    #@22
    return v0

    #@23
    :cond_0
    const/4 v0, 0x0

    #@24
    goto :goto_0
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 6327
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method protected final internalGet(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2059
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method protected final internalGet(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "defaultValue"    # I

    #@0
    .prologue
    .line 2073
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@2
    aget v0, v0, p1

    #@4
    if-lez v0, :cond_0

    #@6
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@8
    aget p2, v0, p1

    #@a
    .end local p2    # "defaultValue":I
    :cond_0
    return p2
.end method

.method protected final internalGetTimeInMillis()J
    .locals 2

    #@0
    .prologue
    .line 6296
    iget-wide v0, p0, Landroid/icu/util/Calendar;->time:J

    #@2
    return-wide v0
.end method

.method protected final internalSet(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 6087
    shl-int v0, v2, p1

    #@3
    iget v1, p0, Landroid/icu/util/Calendar;->internalSetMask:I

    #@5
    and-int/2addr v0, v1

    #@6
    if-nez v0, :cond_0

    #@8
    .line 6088
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Subclass cannot set "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    .line 6089
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    #@19
    move-result-object v2

    #@1a
    .line 6088
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@21
    move-result-object v1

    #@22
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@25
    throw v0

    #@26
    .line 6091
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@28
    aput p2, v0, p1

    #@2a
    .line 6092
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@2c
    aput v2, v0, p1

    #@2e
    .line 6086
    return-void
.end method

.method public isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .locals 3
    .param p1, "other"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2396
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    if-ne v1, v2, :cond_0

    #@b
    .line 2397
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@e
    move-result v1

    #@f
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->isLenient()Z

    #@12
    move-result v2

    #@13
    if-ne v1, v2, :cond_0

    #@15
    .line 2398
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@18
    move-result v1

    #@19
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@1c
    move-result v2

    #@1d
    if-ne v1, v2, :cond_0

    #@1f
    .line 2399
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@22
    move-result v1

    #@23
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@26
    move-result v2

    #@27
    if-ne v1, v2, :cond_0

    #@29
    .line 2400
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@30
    move-result-object v2

    #@31
    invoke-virtual {v1, v2}, Landroid/icu/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@34
    move-result v1

    #@35
    .line 2396
    if-eqz v1, :cond_0

    #@37
    .line 2401
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    #@3a
    move-result v1

    #@3b
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getRepeatedWallTimeOption()I

    #@3e
    move-result v2

    #@3f
    if-ne v1, v2, :cond_0

    #@41
    .line 2402
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    #@44
    move-result v1

    #@45
    invoke-virtual {p1}, Landroid/icu/util/Calendar;->getSkippedWallTimeOption()I

    #@48
    move-result v2

    #@49
    if-ne v1, v2, :cond_0

    #@4b
    const/4 v0, 0x1

    #@4c
    .line 2396
    :cond_0
    return v0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 4109
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@2
    return v0
.end method

.method public final isSet(I)Z
    .locals 3
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 2341
    iget-boolean v2, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@4
    if-nez v2, :cond_0

    #@6
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@8
    aget v2, v2, p1

    #@a
    if-eqz v2, :cond_1

    #@c
    :cond_0
    :goto_0
    return v0

    #@d
    :cond_1
    move v0, v1

    #@e
    goto :goto_0
.end method

.method public isWeekend()Z
    .locals 10

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    .line 4571
    const/4 v6, 0x7

    #@3
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v0

    #@7
    .line 4572
    .local v0, "dow":I
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getDayOfWeekType(I)I

    #@a
    move-result v1

    #@b
    .line 4573
    .local v1, "dowt":I
    packed-switch v1, :pswitch_data_0

    #@e
    .line 4584
    const/16 v6, 0xe

    #@10
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@13
    move-result v6

    #@14
    const/16 v7, 0xd

    #@16
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@19
    move-result v7

    #@1a
    .line 4585
    const/16 v8, 0xc

    #@1c
    invoke-virtual {p0, v8}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@1f
    move-result v8

    #@20
    const/16 v9, 0xb

    #@22
    invoke-virtual {p0, v9}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@25
    move-result v9

    #@26
    mul-int/lit8 v9, v9, 0x3c

    #@28
    add-int/2addr v8, v9

    #@29
    mul-int/lit8 v8, v8, 0x3c

    #@2b
    .line 4584
    add-int/2addr v7, v8

    #@2c
    mul-int/lit16 v7, v7, 0x3e8

    #@2e
    add-int v2, v6, v7

    #@30
    .line 4586
    .local v2, "millisInDay":I
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->getWeekendTransition(I)I

    #@33
    move-result v3

    #@34
    .line 4587
    .local v3, "transition":I
    const/4 v6, 0x2

    #@35
    if-ne v1, v6, :cond_2

    #@37
    .line 4588
    if-lt v2, v3, :cond_1

    #@39
    .line 4587
    :cond_0
    :goto_0
    return v4

    #@3a
    .line 4575
    .end local v2    # "millisInDay":I
    .end local v3    # "transition":I
    :pswitch_0
    return v5

    #@3b
    .line 4577
    :pswitch_1
    return v4

    #@3c
    .restart local v2    # "millisInDay":I
    .restart local v3    # "transition":I
    :cond_1
    move v4, v5

    #@3d
    .line 4588
    goto :goto_0

    #@3e
    .line 4589
    :cond_2
    if-lt v2, v3, :cond_0

    #@40
    move v4, v5

    #@41
    goto :goto_0

    #@42
    .line 4573
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isWeekend(Ljava/util/Date;)Z
    .locals 1
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 4556
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@3
    .line 4557
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isWeekend()Z

    #@6
    move-result v0

    #@7
    return v0
.end method

.method protected newerField(II)I
    .locals 2
    .param p1, "defaultField"    # I
    .param p2, "alternateField"    # I

    #@0
    .prologue
    .line 5297
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@2
    aget v0, v0, p2

    #@4
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@6
    aget v1, v1, p1

    #@8
    if-le v0, v1, :cond_0

    #@a
    .line 5298
    return p2

    #@b
    .line 5300
    :cond_0
    return p1
.end method

.method protected newestStamp(III)I
    .locals 3
    .param p1, "first"    # I
    .param p2, "last"    # I
    .param p3, "bestStampSoFar"    # I

    #@0
    .prologue
    .line 5274
    move v0, p3

    #@1
    .line 5275
    .local v0, "bestStamp":I
    move v1, p1

    #@2
    .local v1, "i":I
    :goto_0
    if-gt v1, p2, :cond_1

    #@4
    .line 5276
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@6
    aget v2, v2, v1

    #@8
    if-le v2, v0, :cond_0

    #@a
    .line 5277
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@c
    aget v0, v2, v1

    #@e
    .line 5275
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@10
    goto :goto_0

    #@11
    .line 5280
    :cond_1
    return v0
.end method

.method protected pinField(I)V
    .locals 3
    .param p1, "field"    # I

    #@0
    .prologue
    .line 3797
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@3
    move-result v0

    #@4
    .line 3798
    .local v0, "max":I
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    #@7
    move-result v1

    #@8
    .line 3800
    .local v1, "min":I
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@a
    aget v2, v2, p1

    #@c
    if-le v2, v0, :cond_1

    #@e
    .line 3801
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->set(II)V

    #@11
    .line 3796
    :cond_0
    :goto_0
    return-void

    #@12
    .line 3802
    :cond_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@14
    aget v2, v2, p1

    #@16
    if-ge v2, v1, :cond_0

    #@18
    .line 3803
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@1b
    goto :goto_0
.end method

.method protected prepareGetActual(IZ)V
    .locals 8
    .param p1, "field"    # I
    .param p2, "isMinimum"    # Z

    #@0
    .prologue
    const/4 v7, 0x6

    #@1
    const/4 v6, 0x3

    #@2
    const/4 v5, 0x1

    #@3
    const/4 v4, 0x7

    #@4
    const/4 v3, 0x5

    #@5
    .line 2607
    const/16 v1, 0x15

    #@7
    const/4 v2, 0x0

    #@8
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@b
    .line 2609
    sparse-switch p1, :sswitch_data_0

    #@e
    .line 2650
    :goto_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    #@11
    move-result v1

    #@12
    invoke-virtual {p0, p1, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@15
    .line 2606
    return-void

    #@16
    .line 2612
    :sswitch_0
    invoke-virtual {p0, v7}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p0, v7, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@1d
    goto :goto_0

    #@1e
    .line 2616
    :sswitch_1
    invoke-virtual {p0, v6}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    #@21
    move-result v1

    #@22
    invoke-virtual {p0, v6, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@25
    goto :goto_0

    #@26
    .line 2620
    :sswitch_2
    invoke-virtual {p0, v3}, Landroid/icu/util/Calendar;->getGreatestMinimum(I)I

    #@29
    move-result v1

    #@2a
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@2d
    goto :goto_0

    #@2e
    .line 2626
    :sswitch_3
    invoke-virtual {p0, v3, v5}, Landroid/icu/util/Calendar;->set(II)V

    #@31
    .line 2627
    invoke-virtual {p0, v4}, Landroid/icu/util/Calendar;->get(I)I

    #@34
    move-result v1

    #@35
    invoke-virtual {p0, v4, v1}, Landroid/icu/util/Calendar;->set(II)V

    #@38
    goto :goto_0

    #@39
    .line 2637
    :sswitch_4
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@3b
    .line 2638
    .local v0, "dow":I
    if-eqz p2, :cond_0

    #@3d
    .line 2639
    add-int/lit8 v1, v0, 0x6

    #@3f
    rem-int/lit8 v0, v1, 0x7

    #@41
    .line 2640
    if-ge v0, v5, :cond_0

    #@43
    .line 2641
    add-int/lit8 v0, v0, 0x7

    #@45
    .line 2644
    :cond_0
    invoke-virtual {p0, v4, v0}, Landroid/icu/util/Calendar;->set(II)V

    #@48
    goto :goto_0

    #@49
    .line 2609
    nop

    #@4a
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_4
        0x4 -> :sswitch_4
        0x8 -> :sswitch_3
        0x11 -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method

.method protected resolveFields([[[I)I
    .locals 14
    .param p1, "precedenceTable"    # [[[I

    #@0
    .prologue
    const/16 v13, 0x20

    #@2
    const/4 v12, 0x0

    #@3
    .line 5228
    const/4 v0, -0x1

    #@4
    .line 5230
    .local v0, "bestField":I
    const/4 v2, 0x0

    #@5
    .local v2, "g":I
    :goto_0
    array-length v10, p1

    #@6
    if-ge v2, v10, :cond_8

    #@8
    if-gez v0, :cond_8

    #@a
    .line 5231
    aget-object v3, p1, v2

    #@c
    .line 5232
    .local v3, "group":[[I
    const/4 v1, 0x0

    #@d
    .line 5234
    .local v1, "bestStamp":I
    const/4 v5, 0x0

    #@e
    .local v5, "l":I
    :goto_1
    array-length v10, v3

    #@f
    if-ge v5, v10, :cond_7

    #@11
    .line 5235
    aget-object v6, v3, v5

    #@13
    .line 5236
    .local v6, "line":[I
    const/4 v7, 0x0

    #@14
    .line 5238
    .local v7, "lineStamp":I
    aget v10, v6, v12

    #@16
    if-lt v10, v13, :cond_1

    #@18
    const/4 v4, 0x1

    #@19
    .local v4, "i":I
    :goto_2
    array-length v10, v6

    #@1a
    if-ge v4, v10, :cond_3

    #@1c
    .line 5239
    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@1e
    aget v11, v6, v4

    #@20
    aget v8, v10, v11

    #@22
    .line 5241
    .local v8, "s":I
    if-nez v8, :cond_2

    #@24
    .line 5234
    .end local v8    # "s":I
    :cond_0
    :goto_3
    add-int/lit8 v5, v5, 0x1

    #@26
    goto :goto_1

    #@27
    .line 5238
    .end local v4    # "i":I
    :cond_1
    const/4 v4, 0x0

    #@28
    .restart local v4    # "i":I
    goto :goto_2

    #@29
    .line 5244
    .restart local v8    # "s":I
    :cond_2
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    #@2c
    move-result v7

    #@2d
    .line 5238
    add-int/lit8 v4, v4, 0x1

    #@2f
    goto :goto_2

    #@30
    .line 5248
    .end local v8    # "s":I
    :cond_3
    if-le v7, v1, :cond_0

    #@32
    .line 5249
    aget v9, v6, v12

    #@34
    .line 5250
    .local v9, "tempBestField":I
    if-lt v9, v13, :cond_6

    #@36
    .line 5251
    and-int/lit8 v9, v9, 0x1f

    #@38
    .line 5253
    const/4 v10, 0x5

    #@39
    if-ne v9, v10, :cond_4

    #@3b
    iget-object v10, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@3d
    const/4 v11, 0x4

    #@3e
    aget v10, v10, v11

    #@40
    iget-object v11, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@42
    aget v11, v11, v9

    #@44
    if-ge v10, v11, :cond_5

    #@46
    .line 5254
    :cond_4
    move v0, v9

    #@47
    .line 5260
    :cond_5
    :goto_4
    if-ne v0, v9, :cond_0

    #@49
    .line 5261
    move v1, v7

    #@4a
    goto :goto_3

    #@4b
    .line 5257
    :cond_6
    move v0, v9

    #@4c
    goto :goto_4

    #@4d
    .line 5230
    .end local v4    # "i":I
    .end local v6    # "line":[I
    .end local v7    # "lineStamp":I
    .end local v9    # "tempBestField":I
    :cond_7
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_0

    #@50
    .line 5266
    .end local v1    # "bestStamp":I
    .end local v3    # "group":[[I
    .end local v5    # "l":I
    :cond_8
    if-lt v0, v13, :cond_9

    #@52
    and-int/lit8 v0, v0, 0x1f

    #@54
    .end local v0    # "bestField":I
    :cond_9
    return v0
.end method

.method public roll(II)V
    .locals 46
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    .line 2833
    if-nez p2, :cond_0

    #@2
    .line 2834
    return-void

    #@3
    .line 2837
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->complete()V

    #@6
    .line 2839
    packed-switch p1, :pswitch_data_0

    #@9
    .line 3151
    :pswitch_0
    new-instance v39, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v40, Ljava/lang/StringBuilder;

    #@d
    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v41, "Calendar.roll("

    #@13
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v40

    #@17
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    #@1a
    move-result-object v41

    #@1b
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v40

    #@1f
    .line 3152
    const-string/jumbo v41, ") not supported"

    #@22
    .line 3151
    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v40

    #@26
    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v40

    #@2a
    invoke-direct/range {v39 .. v40}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2d
    throw v39

    #@2e
    .line 2851
    :pswitch_1
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMinimum(I)I

    #@31
    move-result v23

    #@32
    .line 2852
    .local v23, "min":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@35
    move-result v21

    #@36
    .line 2853
    .local v21, "max":I
    sub-int v39, v21, v23

    #@38
    add-int/lit8 v14, v39, 0x1

    #@3a
    .line 2855
    .local v14, "gap":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@3d
    move-result v39

    #@3e
    add-int v36, v39, p2

    #@40
    .line 2856
    .local v36, "value":I
    sub-int v39, v36, v23

    #@42
    rem-int v36, v39, v14

    #@44
    .line 2857
    if-gez v36, :cond_1

    #@46
    .line 2858
    add-int v36, v36, v14

    #@48
    .line 2860
    :cond_1
    add-int v36, v36, v23

    #@4a
    .line 2862
    move-object/from16 v0, p0

    #@4c
    move/from16 v1, p1

    #@4e
    move/from16 v2, v36

    #@50
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@53
    .line 2863
    return-void

    #@54
    .line 2877
    .end local v14    # "gap":I
    .end local v21    # "max":I
    .end local v23    # "min":I
    .end local v36    # "value":I
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    #@57
    move-result-wide v34

    #@58
    .line 2878
    .local v34, "start":J
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@5b
    move-result v30

    #@5c
    .line 2879
    .local v30, "oldHour":I
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@5f
    move-result v21

    #@60
    .line 2880
    .restart local v21    # "max":I
    add-int v39, v30, p2

    #@62
    add-int/lit8 v40, v21, 0x1

    #@64
    rem-int v28, v39, v40

    #@66
    .line 2881
    .local v28, "newHour":I
    if-gez v28, :cond_2

    #@68
    .line 2882
    add-int/lit8 v39, v21, 0x1

    #@6a
    add-int v28, v28, v39

    #@6c
    .line 2884
    :cond_2
    move/from16 v0, v28

    #@6e
    int-to-long v0, v0

    #@6f
    move-wide/from16 v40, v0

    #@71
    move/from16 v0, v30

    #@73
    int-to-long v0, v0

    #@74
    move-wide/from16 v42, v0

    #@76
    sub-long v40, v40, v42

    #@78
    const-wide/32 v42, 0x36ee80

    #@7b
    mul-long v40, v40, v42

    #@7d
    add-long v40, v40, v34

    #@7f
    move-object/from16 v0, p0

    #@81
    move-wide/from16 v1, v40

    #@83
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@86
    .line 2885
    return-void

    #@87
    .line 2894
    .end local v21    # "max":I
    .end local v28    # "newHour":I
    .end local v30    # "oldHour":I
    .end local v34    # "start":J
    :pswitch_3
    const/16 v39, 0x2

    #@89
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, v39

    #@8d
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@90
    move-result v21

    #@91
    .line 2895
    .restart local v21    # "max":I
    const/16 v39, 0x2

    #@93
    move-object/from16 v0, p0

    #@95
    move/from16 v1, v39

    #@97
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@9a
    move-result v39

    #@9b
    add-int v39, v39, p2

    #@9d
    add-int/lit8 v40, v21, 0x1

    #@9f
    rem-int v26, v39, v40

    #@a1
    .line 2897
    .local v26, "mon":I
    if-gez v26, :cond_3

    #@a3
    .line 2898
    add-int/lit8 v39, v21, 0x1

    #@a5
    add-int v26, v26, v39

    #@a7
    .line 2900
    :cond_3
    const/16 v39, 0x2

    #@a9
    move-object/from16 v0, p0

    #@ab
    move/from16 v1, v39

    #@ad
    move/from16 v2, v26

    #@af
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@b2
    .line 2905
    const/16 v39, 0x5

    #@b4
    move-object/from16 v0, p0

    #@b6
    move/from16 v1, v39

    #@b8
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@bb
    .line 2906
    return-void

    #@bc
    .line 2915
    .end local v21    # "max":I
    .end local v26    # "mon":I
    :pswitch_4
    const/4 v11, 0x0

    #@bd
    .line 2916
    .local v11, "era0WithYearsThatGoBackwards":Z
    const/16 v39, 0x0

    #@bf
    move-object/from16 v0, p0

    #@c1
    move/from16 v1, v39

    #@c3
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@c6
    move-result v10

    #@c7
    .line 2917
    .local v10, "era":I
    if-nez v10, :cond_5

    #@c9
    .line 2918
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@cc
    move-result-object v4

    #@cd
    .line 2919
    .local v4, "calType":Ljava/lang/String;
    const-string/jumbo v39, "gregorian"

    #@d0
    move-object/from16 v0, v39

    #@d2
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d5
    move-result v39

    #@d6
    if-nez v39, :cond_4

    #@d8
    const-string/jumbo v39, "roc"

    #@db
    move-object/from16 v0, v39

    #@dd
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e0
    move-result v39

    #@e1
    if-nez v39, :cond_4

    #@e3
    const-string/jumbo v39, "coptic"

    #@e6
    move-object/from16 v0, v39

    #@e8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@eb
    move-result v39

    #@ec
    if-eqz v39, :cond_5

    #@ee
    .line 2920
    :cond_4
    move/from16 v0, p2

    #@f0
    neg-int v0, v0

    #@f1
    move/from16 p2, v0

    #@f3
    .line 2921
    const/4 v11, 0x1

    #@f4
    .line 2924
    .end local v4    # "calType":Ljava/lang/String;
    :cond_5
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@f7
    move-result v39

    #@f8
    add-int v29, v39, p2

    #@fa
    .line 2925
    .local v29, "newYear":I
    if-gtz v10, :cond_6

    #@fc
    const/16 v39, 0x1

    #@fe
    move/from16 v0, v29

    #@100
    move/from16 v1, v39

    #@102
    if-lt v0, v1, :cond_a

    #@104
    .line 2926
    :cond_6
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@107
    move-result v22

    #@108
    .line 2927
    .local v22, "maxYear":I
    const v39, 0x8000

    #@10b
    move/from16 v0, v22

    #@10d
    move/from16 v1, v39

    #@10f
    if-ge v0, v1, :cond_9

    #@111
    .line 2929
    const/16 v39, 0x1

    #@113
    move/from16 v0, v29

    #@115
    move/from16 v1, v39

    #@117
    if-ge v0, v1, :cond_8

    #@119
    .line 2930
    move/from16 v0, v29

    #@11b
    neg-int v0, v0

    #@11c
    move/from16 v39, v0

    #@11e
    rem-int v39, v39, v22

    #@120
    sub-int v29, v22, v39

    #@122
    .line 2944
    .end local v22    # "maxYear":I
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    #@124
    move/from16 v1, p1

    #@126
    move/from16 v2, v29

    #@128
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@12b
    .line 2945
    const/16 v39, 0x2

    #@12d
    move-object/from16 v0, p0

    #@12f
    move/from16 v1, v39

    #@131
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@134
    .line 2946
    const/16 v39, 0x5

    #@136
    move-object/from16 v0, p0

    #@138
    move/from16 v1, v39

    #@13a
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@13d
    .line 2947
    return-void

    #@13e
    .line 2931
    .restart local v22    # "maxYear":I
    :cond_8
    move/from16 v0, v29

    #@140
    move/from16 v1, v22

    #@142
    if-le v0, v1, :cond_7

    #@144
    .line 2932
    add-int/lit8 v39, v29, -0x1

    #@146
    rem-int v39, v39, v22

    #@148
    add-int/lit8 v29, v39, 0x1

    #@14a
    goto :goto_0

    #@14b
    .line 2935
    :cond_9
    const/16 v39, 0x1

    #@14d
    move/from16 v0, v29

    #@14f
    move/from16 v1, v39

    #@151
    if-ge v0, v1, :cond_7

    #@153
    .line 2936
    const/16 v29, 0x1

    #@155
    goto :goto_0

    #@156
    .line 2941
    .end local v22    # "maxYear":I
    :cond_a
    if-eqz v11, :cond_7

    #@158
    .line 2942
    const/16 v29, 0x1

    #@15a
    goto :goto_0

    #@15b
    .line 2951
    .end local v10    # "era":I
    .end local v11    # "era0WithYearsThatGoBackwards":Z
    .end local v29    # "newYear":I
    :pswitch_5
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@15e
    move-result v39

    #@15f
    add-int v39, v39, p2

    #@161
    move-object/from16 v0, p0

    #@163
    move/from16 v1, p1

    #@165
    move/from16 v2, v39

    #@167
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@16a
    .line 2952
    const/16 v39, 0x2

    #@16c
    move-object/from16 v0, p0

    #@16e
    move/from16 v1, v39

    #@170
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@173
    .line 2953
    const/16 v39, 0x5

    #@175
    move-object/from16 v0, p0

    #@177
    move/from16 v1, v39

    #@179
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->pinField(I)V

    #@17c
    .line 2954
    return-void

    #@17d
    .line 2987
    :pswitch_6
    const/16 v39, 0x7

    #@17f
    move-object/from16 v0, p0

    #@181
    move/from16 v1, v39

    #@183
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@186
    move-result v39

    #@187
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@18a
    move-result v40

    #@18b
    sub-int v7, v39, v40

    #@18d
    .line 2988
    .local v7, "dow":I
    if-gez v7, :cond_b

    #@18f
    add-int/lit8 v7, v7, 0x7

    #@191
    .line 2992
    :cond_b
    const/16 v39, 0x5

    #@193
    move-object/from16 v0, p0

    #@195
    move/from16 v1, v39

    #@197
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@19a
    move-result v39

    #@19b
    sub-int v39, v7, v39

    #@19d
    add-int/lit8 v39, v39, 0x1

    #@19f
    rem-int/lit8 v12, v39, 0x7

    #@1a1
    .line 2993
    .local v12, "fdm":I
    if-gez v12, :cond_c

    #@1a3
    add-int/lit8 v12, v12, 0x7

    #@1a5
    .line 3000
    :cond_c
    rsub-int/lit8 v39, v12, 0x7

    #@1a7
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@1aa
    move-result v40

    #@1ab
    move/from16 v0, v39

    #@1ad
    move/from16 v1, v40

    #@1af
    if-ge v0, v1, :cond_10

    #@1b1
    .line 3001
    rsub-int/lit8 v33, v12, 0x8

    #@1b3
    .line 3007
    .local v33, "start":I
    :goto_1
    const/16 v39, 0x5

    #@1b5
    move-object/from16 v0, p0

    #@1b7
    move/from16 v1, v39

    #@1b9
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@1bc
    move-result v27

    #@1bd
    .line 3008
    .local v27, "monthLen":I
    const/16 v39, 0x5

    #@1bf
    move-object/from16 v0, p0

    #@1c1
    move/from16 v1, v39

    #@1c3
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@1c6
    move-result v39

    #@1c7
    sub-int v39, v27, v39

    #@1c9
    add-int v39, v39, v7

    #@1cb
    rem-int/lit8 v15, v39, 0x7

    #@1cd
    .line 3015
    .local v15, "ldm":I
    add-int/lit8 v39, v27, 0x7

    #@1cf
    sub-int v20, v39, v15

    #@1d1
    .line 3018
    .local v20, "limit":I
    sub-int v14, v20, v33

    #@1d3
    .line 3019
    .restart local v14    # "gap":I
    const/16 v39, 0x5

    #@1d5
    move-object/from16 v0, p0

    #@1d7
    move/from16 v1, v39

    #@1d9
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@1dc
    move-result v39

    #@1dd
    mul-int/lit8 v40, p2, 0x7

    #@1df
    add-int v39, v39, v40

    #@1e1
    sub-int v39, v39, v33

    #@1e3
    rem-int v5, v39, v14

    #@1e5
    .line 3021
    .local v5, "day_of_month":I
    if-gez v5, :cond_d

    #@1e7
    add-int/2addr v5, v14

    #@1e8
    .line 3022
    :cond_d
    add-int v5, v5, v33

    #@1ea
    .line 3025
    const/16 v39, 0x1

    #@1ec
    move/from16 v0, v39

    #@1ee
    if-ge v5, v0, :cond_e

    #@1f0
    const/4 v5, 0x1

    #@1f1
    .line 3026
    :cond_e
    move/from16 v0, v27

    #@1f3
    if-le v5, v0, :cond_f

    #@1f5
    move/from16 v5, v27

    #@1f7
    .line 3034
    :cond_f
    const/16 v39, 0x5

    #@1f9
    move-object/from16 v0, p0

    #@1fb
    move/from16 v1, v39

    #@1fd
    invoke-virtual {v0, v1, v5}, Landroid/icu/util/Calendar;->set(II)V

    #@200
    .line 3035
    return-void

    #@201
    .line 3003
    .end local v5    # "day_of_month":I
    .end local v14    # "gap":I
    .end local v15    # "ldm":I
    .end local v20    # "limit":I
    .end local v27    # "monthLen":I
    .end local v33    # "start":I
    :cond_10
    rsub-int/lit8 v33, v12, 0x1

    #@203
    .restart local v33    # "start":I
    goto :goto_1

    #@204
    .line 3045
    .end local v7    # "dow":I
    .end local v12    # "fdm":I
    .end local v33    # "start":I
    :pswitch_7
    const/16 v39, 0x7

    #@206
    move-object/from16 v0, p0

    #@208
    move/from16 v1, v39

    #@20a
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@20d
    move-result v39

    #@20e
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@211
    move-result v40

    #@212
    sub-int v7, v39, v40

    #@214
    .line 3046
    .restart local v7    # "dow":I
    if-gez v7, :cond_11

    #@216
    add-int/lit8 v7, v7, 0x7

    #@218
    .line 3050
    :cond_11
    const/16 v39, 0x6

    #@21a
    move-object/from16 v0, p0

    #@21c
    move/from16 v1, v39

    #@21e
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@221
    move-result v39

    #@222
    sub-int v39, v7, v39

    #@224
    add-int/lit8 v39, v39, 0x1

    #@226
    rem-int/lit8 v13, v39, 0x7

    #@228
    .line 3051
    .local v13, "fdy":I
    if-gez v13, :cond_12

    #@22a
    add-int/lit8 v13, v13, 0x7

    #@22c
    .line 3058
    :cond_12
    rsub-int/lit8 v39, v13, 0x7

    #@22e
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@231
    move-result v40

    #@232
    move/from16 v0, v39

    #@234
    move/from16 v1, v40

    #@236
    if-ge v0, v1, :cond_16

    #@238
    .line 3059
    rsub-int/lit8 v33, v13, 0x8

    #@23a
    .line 3065
    .restart local v33    # "start":I
    :goto_2
    const/16 v39, 0x6

    #@23c
    move-object/from16 v0, p0

    #@23e
    move/from16 v1, v39

    #@240
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@243
    move-result v37

    #@244
    .line 3066
    .local v37, "yearLen":I
    const/16 v39, 0x6

    #@246
    move-object/from16 v0, p0

    #@248
    move/from16 v1, v39

    #@24a
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@24d
    move-result v39

    #@24e
    sub-int v39, v37, v39

    #@250
    add-int v39, v39, v7

    #@252
    rem-int/lit8 v18, v39, 0x7

    #@254
    .line 3073
    .local v18, "ldy":I
    add-int/lit8 v39, v37, 0x7

    #@256
    sub-int v20, v39, v18

    #@258
    .line 3076
    .restart local v20    # "limit":I
    sub-int v14, v20, v33

    #@25a
    .line 3077
    .restart local v14    # "gap":I
    const/16 v39, 0x6

    #@25c
    move-object/from16 v0, p0

    #@25e
    move/from16 v1, v39

    #@260
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@263
    move-result v39

    #@264
    mul-int/lit8 v40, p2, 0x7

    #@266
    add-int v39, v39, v40

    #@268
    sub-int v39, v39, v33

    #@26a
    rem-int v6, v39, v14

    #@26c
    .line 3079
    .local v6, "day_of_year":I
    if-gez v6, :cond_13

    #@26e
    add-int/2addr v6, v14

    #@26f
    .line 3080
    :cond_13
    add-int v6, v6, v33

    #@271
    .line 3083
    const/16 v39, 0x1

    #@273
    move/from16 v0, v39

    #@275
    if-ge v6, v0, :cond_14

    #@277
    const/4 v6, 0x1

    #@278
    .line 3084
    :cond_14
    move/from16 v0, v37

    #@27a
    if-le v6, v0, :cond_15

    #@27c
    move/from16 v6, v37

    #@27e
    .line 3090
    :cond_15
    const/16 v39, 0x6

    #@280
    move-object/from16 v0, p0

    #@282
    move/from16 v1, v39

    #@284
    invoke-virtual {v0, v1, v6}, Landroid/icu/util/Calendar;->set(II)V

    #@287
    .line 3091
    const/16 v39, 0x2

    #@289
    move-object/from16 v0, p0

    #@28b
    move/from16 v1, v39

    #@28d
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->clear(I)V

    #@290
    .line 3092
    return-void

    #@291
    .line 3061
    .end local v6    # "day_of_year":I
    .end local v14    # "gap":I
    .end local v18    # "ldy":I
    .end local v20    # "limit":I
    .end local v33    # "start":I
    .end local v37    # "yearLen":I
    :cond_16
    rsub-int/lit8 v33, v13, 0x1

    #@293
    .restart local v33    # "start":I
    goto :goto_2

    #@294
    .line 3098
    .end local v7    # "dow":I
    .end local v13    # "fdy":I
    .end local v33    # "start":I
    :pswitch_8
    move/from16 v0, p2

    #@296
    int-to-long v0, v0

    #@297
    move-wide/from16 v40, v0

    #@299
    const-wide/32 v42, 0x5265c00

    #@29c
    mul-long v8, v40, v42

    #@29e
    .line 3099
    .local v8, "delta":J
    move-object/from16 v0, p0

    #@2a0
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@2a2
    move-wide/from16 v40, v0

    #@2a4
    const/16 v39, 0x6

    #@2a6
    move-object/from16 v0, p0

    #@2a8
    move/from16 v1, v39

    #@2aa
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@2ad
    move-result v39

    #@2ae
    add-int/lit8 v39, v39, -0x1

    #@2b0
    move/from16 v0, v39

    #@2b2
    int-to-long v0, v0

    #@2b3
    move-wide/from16 v42, v0

    #@2b5
    const-wide/32 v44, 0x5265c00

    #@2b8
    mul-long v42, v42, v44

    #@2ba
    sub-long v24, v40, v42

    #@2bc
    .line 3100
    .local v24, "min2":J
    const/16 v39, 0x6

    #@2be
    move-object/from16 v0, p0

    #@2c0
    move/from16 v1, v39

    #@2c2
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@2c5
    move-result v38

    #@2c6
    .line 3101
    .local v38, "yearLength":I
    move-object/from16 v0, p0

    #@2c8
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@2ca
    move-wide/from16 v40, v0

    #@2cc
    add-long v40, v40, v8

    #@2ce
    sub-long v40, v40, v24

    #@2d0
    move/from16 v0, v38

    #@2d2
    int-to-long v0, v0

    #@2d3
    move-wide/from16 v42, v0

    #@2d5
    const-wide/32 v44, 0x5265c00

    #@2d8
    mul-long v42, v42, v44

    #@2da
    rem-long v40, v40, v42

    #@2dc
    move-wide/from16 v0, v40

    #@2de
    move-object/from16 v2, p0

    #@2e0
    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    #@2e2
    .line 3102
    move-object/from16 v0, p0

    #@2e4
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@2e6
    move-wide/from16 v40, v0

    #@2e8
    const-wide/16 v42, 0x0

    #@2ea
    cmp-long v39, v40, v42

    #@2ec
    if-gez v39, :cond_17

    #@2ee
    move-object/from16 v0, p0

    #@2f0
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@2f2
    move-wide/from16 v40, v0

    #@2f4
    move/from16 v0, v38

    #@2f6
    int-to-long v0, v0

    #@2f7
    move-wide/from16 v42, v0

    #@2f9
    const-wide/32 v44, 0x5265c00

    #@2fc
    mul-long v42, v42, v44

    #@2fe
    add-long v40, v40, v42

    #@300
    move-wide/from16 v0, v40

    #@302
    move-object/from16 v2, p0

    #@304
    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    #@306
    .line 3103
    :cond_17
    move-object/from16 v0, p0

    #@308
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@30a
    move-wide/from16 v40, v0

    #@30c
    add-long v40, v40, v24

    #@30e
    move-object/from16 v0, p0

    #@310
    move-wide/from16 v1, v40

    #@312
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@315
    .line 3104
    return-void

    #@316
    .line 3112
    .end local v8    # "delta":J
    .end local v24    # "min2":J
    .end local v38    # "yearLength":I
    :pswitch_9
    move/from16 v0, p2

    #@318
    int-to-long v0, v0

    #@319
    move-wide/from16 v40, v0

    #@31b
    const-wide/32 v42, 0x5265c00

    #@31e
    mul-long v8, v40, v42

    #@320
    .line 3115
    .restart local v8    # "delta":J
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@323
    move-result v19

    #@324
    .line 3116
    .local v19, "leadDays":I
    const/16 v39, 0x7

    #@326
    move/from16 v0, p1

    #@328
    move/from16 v1, v39

    #@32a
    if-ne v0, v1, :cond_1a

    #@32c
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@32f
    move-result v39

    #@330
    :goto_3
    sub-int v19, v19, v39

    #@332
    .line 3117
    if-gez v19, :cond_18

    #@334
    add-int/lit8 v19, v19, 0x7

    #@336
    .line 3118
    :cond_18
    move-object/from16 v0, p0

    #@338
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@33a
    move-wide/from16 v40, v0

    #@33c
    move/from16 v0, v19

    #@33e
    int-to-long v0, v0

    #@33f
    move-wide/from16 v42, v0

    #@341
    const-wide/32 v44, 0x5265c00

    #@344
    mul-long v42, v42, v44

    #@346
    sub-long v24, v40, v42

    #@348
    .line 3119
    .restart local v24    # "min2":J
    move-object/from16 v0, p0

    #@34a
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@34c
    move-wide/from16 v40, v0

    #@34e
    add-long v40, v40, v8

    #@350
    sub-long v40, v40, v24

    #@352
    const-wide/32 v42, 0x240c8400

    #@355
    rem-long v40, v40, v42

    #@357
    move-wide/from16 v0, v40

    #@359
    move-object/from16 v2, p0

    #@35b
    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    #@35d
    .line 3120
    move-object/from16 v0, p0

    #@35f
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@361
    move-wide/from16 v40, v0

    #@363
    const-wide/16 v42, 0x0

    #@365
    cmp-long v39, v40, v42

    #@367
    if-gez v39, :cond_19

    #@369
    move-object/from16 v0, p0

    #@36b
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@36d
    move-wide/from16 v40, v0

    #@36f
    const-wide/32 v42, 0x240c8400

    #@372
    add-long v40, v40, v42

    #@374
    move-wide/from16 v0, v40

    #@376
    move-object/from16 v2, p0

    #@378
    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    #@37a
    .line 3121
    :cond_19
    move-object/from16 v0, p0

    #@37c
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@37e
    move-wide/from16 v40, v0

    #@380
    add-long v40, v40, v24

    #@382
    move-object/from16 v0, p0

    #@384
    move-wide/from16 v1, v40

    #@386
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@389
    .line 3122
    return-void

    #@38a
    .line 3116
    .end local v24    # "min2":J
    :cond_1a
    const/16 v39, 0x1

    #@38c
    goto :goto_3

    #@38d
    .line 3129
    .end local v8    # "delta":J
    .end local v19    # "leadDays":I
    :pswitch_a
    move/from16 v0, p2

    #@38f
    int-to-long v0, v0

    #@390
    move-wide/from16 v40, v0

    #@392
    const-wide/32 v42, 0x240c8400

    #@395
    mul-long v8, v40, v42

    #@397
    .line 3132
    .restart local v8    # "delta":J
    const/16 v39, 0x5

    #@399
    move-object/from16 v0, p0

    #@39b
    move/from16 v1, v39

    #@39d
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@3a0
    move-result v39

    #@3a1
    add-int/lit8 v39, v39, -0x1

    #@3a3
    div-int/lit8 v32, v39, 0x7

    #@3a5
    .line 3135
    .local v32, "preWeeks":I
    const/16 v39, 0x5

    #@3a7
    move-object/from16 v0, p0

    #@3a9
    move/from16 v1, v39

    #@3ab
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@3ae
    move-result v39

    #@3af
    .line 3136
    const/16 v40, 0x5

    #@3b1
    move-object/from16 v0, p0

    #@3b3
    move/from16 v1, v40

    #@3b5
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@3b8
    move-result v40

    #@3b9
    .line 3135
    sub-int v39, v39, v40

    #@3bb
    div-int/lit8 v31, v39, 0x7

    #@3bd
    .line 3138
    .local v31, "postWeeks":I
    move-object/from16 v0, p0

    #@3bf
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@3c1
    move-wide/from16 v40, v0

    #@3c3
    move/from16 v0, v32

    #@3c5
    int-to-long v0, v0

    #@3c6
    move-wide/from16 v42, v0

    #@3c8
    const-wide/32 v44, 0x240c8400

    #@3cb
    mul-long v42, v42, v44

    #@3cd
    sub-long v24, v40, v42

    #@3cf
    .line 3139
    .restart local v24    # "min2":J
    add-int v39, v32, v31

    #@3d1
    add-int/lit8 v39, v39, 0x1

    #@3d3
    move/from16 v0, v39

    #@3d5
    int-to-long v0, v0

    #@3d6
    move-wide/from16 v40, v0

    #@3d8
    const-wide/32 v42, 0x240c8400

    #@3db
    mul-long v16, v42, v40

    #@3dd
    .line 3141
    .local v16, "gap2":J
    move-object/from16 v0, p0

    #@3df
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@3e1
    move-wide/from16 v40, v0

    #@3e3
    add-long v40, v40, v8

    #@3e5
    sub-long v40, v40, v24

    #@3e7
    rem-long v40, v40, v16

    #@3e9
    move-wide/from16 v0, v40

    #@3eb
    move-object/from16 v2, p0

    #@3ed
    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    #@3ef
    .line 3142
    move-object/from16 v0, p0

    #@3f1
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@3f3
    move-wide/from16 v40, v0

    #@3f5
    const-wide/16 v42, 0x0

    #@3f7
    cmp-long v39, v40, v42

    #@3f9
    if-gez v39, :cond_1b

    #@3fb
    move-object/from16 v0, p0

    #@3fd
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@3ff
    move-wide/from16 v40, v0

    #@401
    add-long v40, v40, v16

    #@403
    move-wide/from16 v0, v40

    #@405
    move-object/from16 v2, p0

    #@407
    iput-wide v0, v2, Landroid/icu/util/Calendar;->time:J

    #@409
    .line 3143
    :cond_1b
    move-object/from16 v0, p0

    #@40b
    iget-wide v0, v0, Landroid/icu/util/Calendar;->time:J

    #@40d
    move-wide/from16 v40, v0

    #@40f
    add-long v40, v40, v24

    #@411
    move-object/from16 v0, p0

    #@413
    move-wide/from16 v1, v40

    #@415
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@418
    .line 3144
    return-void

    #@419
    .line 3147
    .end local v8    # "delta":J
    .end local v16    # "gap2":J
    .end local v24    # "min2":J
    .end local v31    # "postWeeks":I
    .end local v32    # "preWeeks":I
    :pswitch_b
    invoke-virtual/range {p0 .. p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@41c
    move-result v39

    #@41d
    add-int v39, v39, p2

    #@41f
    move-object/from16 v0, p0

    #@421
    move/from16 v1, p1

    #@423
    move/from16 v2, v39

    #@425
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    #@428
    .line 3148
    return-void

    #@429
    .line 2839
    nop

    #@42a
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method

.method public final roll(IZ)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "up"    # Z

    #@0
    .prologue
    .line 2760
    if-eqz p2, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/Calendar;->roll(II)V

    #@6
    .line 2758
    return-void

    #@7
    .line 2760
    :cond_0
    const/4 v0, -0x1

    #@8
    goto :goto_0
.end method

.method public final set(II)V
    .locals 4
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 2084
    iget-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 2085
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->computeFields()V

    #@8
    .line 2087
    :cond_0
    iget-object v0, p0, Landroid/icu/util/Calendar;->fields:[I

    #@a
    aput p2, v0, p1

    #@c
    .line 2089
    iget v0, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@e
    sget v1, Landroid/icu/util/Calendar;->STAMP_MAX:I

    #@10
    if-ne v0, v1, :cond_1

    #@12
    .line 2090
    invoke-direct {p0}, Landroid/icu/util/Calendar;->recalculateStamp()V

    #@15
    .line 2092
    :cond_1
    iget-object v0, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@17
    iget v1, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    iput v2, p0, Landroid/icu/util/Calendar;->nextStamp:I

    #@1d
    aput v1, v0, p1

    #@1f
    .line 2093
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@21
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@23
    iput-boolean v3, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@25
    .line 2082
    return-void
.end method

.method public final set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 2108
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    #@4
    .line 2109
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    #@8
    .line 2110
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    #@c
    .line 2106
    return-void
.end method

.method public final set(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    #@0
    .prologue
    .line 2127
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    #@4
    .line 2128
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    #@8
    .line 2129
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    #@c
    .line 2130
    const/16 v0, 0xb

    #@e
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    #@11
    .line 2131
    const/16 v0, 0xc

    #@13
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    #@16
    .line 2125
    return-void
.end method

.method public final set(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 2150
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/Calendar;->set(II)V

    #@4
    .line 2151
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/Calendar;->set(II)V

    #@8
    .line 2152
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/Calendar;->set(II)V

    #@c
    .line 2153
    const/16 v0, 0xb

    #@e
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/Calendar;->set(II)V

    #@11
    .line 2154
    const/16 v0, 0xc

    #@13
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/Calendar;->set(II)V

    #@16
    .line 2155
    const/16 v0, 0xd

    #@18
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/Calendar;->set(II)V

    #@1b
    .line 2148
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 2
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4217
    iget v0, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@2
    if-eq v0, p1, :cond_2

    #@4
    .line 4218
    const/4 v0, 0x1

    #@5
    if-lt p1, v0, :cond_0

    #@7
    const/4 v0, 0x7

    #@8
    if-le p1, v0, :cond_1

    #@a
    .line 4219
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@c
    const-string/jumbo v1, "Invalid day of week"

    #@f
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@12
    throw v0

    #@13
    .line 4221
    :cond_1
    iput p1, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@15
    .line 4222
    const/4 v0, 0x0

    #@16
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@18
    .line 4215
    :cond_2
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 4100
    iput-boolean p1, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@2
    .line 4098
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
    .line 6379
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
    .line 6381
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@e
    throw v0

    #@f
    :cond_0
    move v2, v1

    #@10
    .line 6379
    goto :goto_0

    #@11
    :cond_1
    move v0, v1

    #@12
    goto :goto_1

    #@13
    .line 6386
    :cond_2
    iput-object p1, p0, Landroid/icu/util/Calendar;->validLocale:Landroid/icu/util/ULocale;

    #@15
    .line 6387
    iput-object p2, p0, Landroid/icu/util/Calendar;->actualLocale:Landroid/icu/util/ULocale;

    #@17
    .line 6377
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 4252
    const/4 v0, 0x1

    #@1
    if-ge p1, v0, :cond_2

    #@3
    .line 4253
    const/4 p1, 0x1

    #@4
    .line 4257
    :cond_0
    :goto_0
    iget v0, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    #@6
    if-eq v0, p1, :cond_1

    #@8
    .line 4258
    iput p1, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    #@a
    .line 4259
    const/4 v0, 0x0

    #@b
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@d
    .line 4247
    :cond_1
    return-void

    #@e
    .line 4254
    :cond_2
    const/4 v0, 0x7

    #@f
    if-le p1, v0, :cond_0

    #@11
    .line 4255
    const/4 p1, 0x7

    #@12
    goto :goto_0
.end method

.method public final setRelatedYear(I)V
    .locals 7
    .param p1, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 2264
    sget-object v1, Landroid/icu/util/Calendar$CalType;->GREGORIAN:Landroid/icu/util/Calendar$CalType;

    #@2
    .line 2265
    .local v1, "type":Landroid/icu/util/Calendar$CalType;
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getType()Ljava/lang/String;

    #@5
    move-result-object v2

    #@6
    .line 2266
    .local v2, "typeString":Ljava/lang/String;
    invoke-static {}, Landroid/icu/util/Calendar$CalType;->values()[Landroid/icu/util/Calendar$CalType;

    #@9
    move-result-object v4

    #@a
    const/4 v3, 0x0

    #@b
    array-length v5, v4

    #@c
    :goto_0
    if-ge v3, v5, :cond_0

    #@e
    aget-object v0, v4, v3

    #@10
    .line 2267
    .local v0, "testType":Landroid/icu/util/Calendar$CalType;
    iget-object v6, v0, Landroid/icu/util/Calendar$CalType;->id:Ljava/lang/String;

    #@12
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@15
    move-result v6

    #@16
    if-eqz v6, :cond_1

    #@18
    .line 2268
    move-object v1, v0

    #@19
    .line 2272
    .end local v0    # "testType":Landroid/icu/util/Calendar$CalType;
    :cond_0
    invoke-static {}, Landroid/icu/util/Calendar;->-getandroid_icu_util_Calendar$CalTypeSwitchesValues()[I

    #@1c
    move-result-object v3

    #@1d
    invoke-virtual {v1}, Landroid/icu/util/Calendar$CalType;->ordinal()I

    #@20
    move-result v4

    #@21
    aget v3, v3, v4

    #@23
    packed-switch v3, :pswitch_data_0

    #@26
    .line 2304
    :goto_1
    :pswitch_0
    const/16 v3, 0x13

    #@28
    invoke-virtual {p0, v3, p1}, Landroid/icu/util/Calendar;->set(II)V

    #@2b
    .line 2263
    return-void

    #@2c
    .line 2266
    .restart local v0    # "testType":Landroid/icu/util/Calendar$CalType;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    #@2e
    goto :goto_0

    #@2f
    .line 2274
    .end local v0    # "testType":Landroid/icu/util/Calendar$CalType;
    :pswitch_1
    add-int/lit16 p1, p1, -0x26e

    #@31
    goto :goto_1

    #@32
    .line 2276
    :pswitch_2
    add-int/lit16 p1, p1, 0xeb0

    #@34
    goto :goto_1

    #@35
    .line 2278
    :pswitch_3
    add-int/lit16 p1, p1, 0xa4d

    #@37
    goto :goto_1

    #@38
    .line 2280
    :pswitch_4
    add-int/lit8 p1, p1, -0x4f

    #@3a
    goto :goto_1

    #@3b
    .line 2282
    :pswitch_5
    add-int/lit16 p1, p1, -0x11c

    #@3d
    goto :goto_1

    #@3e
    .line 2284
    :pswitch_6
    add-int/lit8 p1, p1, -0x8

    #@40
    goto :goto_1

    #@41
    .line 2286
    :pswitch_7
    add-int/lit16 p1, p1, 0x1574

    #@43
    goto :goto_1

    #@44
    .line 2288
    :pswitch_8
    add-int/lit16 p1, p1, 0x91d

    #@46
    goto :goto_1

    #@47
    .line 2294
    :pswitch_9
    invoke-static {p1}, Landroid/icu/util/Calendar;->firstIslamicStartYearFromGrego(I)I

    #@4a
    move-result p1

    #@4b
    goto :goto_1

    #@4c
    .line 2272
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setRepeatedWallTimeOption(I)V
    .locals 3
    .param p1, "option"    # I

    #@0
    .prologue
    .line 4134
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    .line 4135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Illegal repeated wall time option - "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v1

    #@1b
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v0

    #@1f
    .line 4137
    :cond_0
    iput p1, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@21
    .line 4133
    return-void
.end method

.method public setSkippedWallTimeOption(I)V
    .locals 3
    .param p1, "option"    # I

    #@0
    .prologue
    .line 4185
    if-eqz p1, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p1, v0, :cond_0

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p1, v0, :cond_0

    #@8
    .line 4186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Illegal skipped wall time option - "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 4188
    :cond_0
    iput p1, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@24
    .line 4184
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1993
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 1992
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 7
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 2015
    const-wide v2, 0x28d47dbbf19b000L

    #@7
    cmp-long v1, p1, v2

    #@9
    if-lez v1, :cond_2

    #@b
    .line 2016
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 2017
    const-wide p1, 0x28d47dbbf19b000L

    #@16
    .line 2028
    :cond_0
    :goto_0
    iput-wide p1, p0, Landroid/icu/util/Calendar;->time:J

    #@18
    .line 2029
    iput-boolean v4, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@1a
    iput-boolean v4, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@1c
    .line 2030
    iput-boolean v5, p0, Landroid/icu/util/Calendar;->areFieldsVirtuallySet:Z

    #@1e
    iput-boolean v5, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@20
    .line 2032
    const/4 v0, 0x0

    #@21
    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    #@23
    array-length v1, v1

    #@24
    if-ge v0, v1, :cond_4

    #@26
    .line 2033
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    #@28
    iget-object v2, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@2a
    aput v4, v2, v0

    #@2c
    aput v4, v1, v0

    #@2e
    .line 2032
    add-int/lit8 v0, v0, 0x1

    #@30
    goto :goto_1

    #@31
    .line 2019
    .end local v0    # "i":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "millis value greater than upper bounds for a Calendar : "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v1

    #@4b
    .line 2021
    :cond_2
    const-wide v2, -0x28ec76c40e65000L

    #@50
    cmp-long v1, p1, v2

    #@52
    if-gez v1, :cond_0

    #@54
    .line 2022
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->isLenient()Z

    #@57
    move-result v1

    #@58
    if-eqz v1, :cond_3

    #@5a
    .line 2023
    const-wide p1, -0x28ec76c40e65000L

    #@5f
    goto :goto_0

    #@60
    .line 2025
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@62
    new-instance v2, Ljava/lang/StringBuilder;

    #@64
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@67
    const-string/jumbo v3, "millis value less than lower bounds for a Calendar : "

    #@6a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v2

    #@6e
    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@71
    move-result-object v2

    #@72
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@75
    move-result-object v2

    #@76
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@79
    throw v1

    #@7a
    .line 2014
    .restart local v0    # "i":I
    :cond_4
    return-void
.end method

.method public setTimeZone(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "value"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 4065
    iput-object p1, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@2
    .line 4075
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@5
    .line 4063
    return-void
.end method

.method public setWeekData(Landroid/icu/util/Calendar$WeekData;)Landroid/icu/util/Calendar;
    .locals 1
    .param p1, "wdata"    # Landroid/icu/util/Calendar$WeekData;

    #@0
    .prologue
    .line 4819
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->firstDayOfWeek:I

    #@2
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setFirstDayOfWeek(I)V

    #@5
    .line 4820
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->minimalDaysInFirstWeek:I

    #@7
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    #@a
    .line 4822
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnset:I

    #@c
    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnset:I

    #@e
    .line 4823
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendOnsetMillis:I

    #@10
    iput v0, p0, Landroid/icu/util/Calendar;->weekendOnsetMillis:I

    #@12
    .line 4824
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCease:I

    #@14
    iput v0, p0, Landroid/icu/util/Calendar;->weekendCease:I

    #@16
    .line 4825
    iget v0, p1, Landroid/icu/util/Calendar$WeekData;->weekendCeaseMillis:I

    #@18
    iput v0, p0, Landroid/icu/util/Calendar;->weekendCeaseMillis:I

    #@1a
    .line 4826
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 4631
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    .line 4632
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v2

    #@9
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v2

    #@d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    .line 4633
    const-string/jumbo v2, "[time="

    #@13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    .line 4634
    iget-boolean v2, p0, Landroid/icu/util/Calendar;->isTimeSet:Z

    #@18
    if-eqz v2, :cond_0

    #@1a
    iget-wide v2, p0, Landroid/icu/util/Calendar;->time:J

    #@1c
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    .line 4635
    const-string/jumbo v2, ",areFieldsSet="

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    .line 4636
    iget-boolean v2, p0, Landroid/icu/util/Calendar;->areFieldsSet:Z

    #@2b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2e
    .line 4637
    const-string/jumbo v2, ",areAllFieldsSet="

    #@31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@34
    .line 4638
    iget-boolean v2, p0, Landroid/icu/util/Calendar;->areAllFieldsSet:Z

    #@36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@39
    .line 4639
    const-string/jumbo v2, ",lenient="

    #@3c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    .line 4640
    iget-boolean v2, p0, Landroid/icu/util/Calendar;->lenient:Z

    #@41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@44
    .line 4641
    const-string/jumbo v2, ",zone="

    #@47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4a
    .line 4642
    iget-object v2, p0, Landroid/icu/util/Calendar;->zone:Landroid/icu/util/TimeZone;

    #@4c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@4f
    .line 4643
    const-string/jumbo v2, ",firstDayOfWeek="

    #@52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@55
    .line 4644
    iget v2, p0, Landroid/icu/util/Calendar;->firstDayOfWeek:I

    #@57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5a
    .line 4645
    const-string/jumbo v2, ",minimalDaysInFirstWeek="

    #@5d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    .line 4646
    iget v2, p0, Landroid/icu/util/Calendar;->minimalDaysInFirstWeek:I

    #@62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@65
    .line 4647
    const-string/jumbo v2, ",repeatedWallTime="

    #@68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6b
    .line 4648
    iget v2, p0, Landroid/icu/util/Calendar;->repeatedWallTime:I

    #@6d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@70
    .line 4649
    const-string/jumbo v2, ",skippedWallTime="

    #@73
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    .line 4650
    iget v2, p0, Landroid/icu/util/Calendar;->skippedWallTime:I

    #@78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7b
    .line 4651
    const/4 v1, 0x0

    #@7c
    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@7e
    array-length v2, v2

    #@7f
    if-ge v1, v2, :cond_2

    #@81
    .line 4652
    const/16 v2, 0x2c

    #@83
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    #@8a
    move-result-object v3

    #@8b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v2

    #@8f
    const/16 v3, 0x3d

    #@91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@94
    .line 4653
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->isSet(I)Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_1

    #@9a
    iget-object v2, p0, Landroid/icu/util/Calendar;->fields:[I

    #@9c
    aget v2, v2, v1

    #@9e
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    #@a1
    move-result-object v2

    #@a2
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a5
    .line 4651
    add-int/lit8 v1, v1, 0x1

    #@a7
    goto :goto_1

    #@a8
    .line 4634
    .end local v1    # "i":I
    :cond_0
    const-string/jumbo v2, "?"

    #@ab
    goto/16 :goto_0

    #@ad
    .line 4653
    .restart local v1    # "i":I
    :cond_1
    const-string/jumbo v2, "?"

    #@b0
    goto :goto_2

    #@b1
    .line 4655
    :cond_2
    const/16 v2, 0x5d

    #@b3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@b6
    .line 4656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b9
    move-result-object v2

    #@ba
    return-object v2
.end method

.method protected validateField(I)V
    .locals 3
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 5329
    packed-switch p1, :pswitch_data_0

    #@4
    .line 5345
    :pswitch_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    #@7
    move-result v1

    #@8
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@b
    move-result v2

    #@c
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/util/Calendar;->validateField(III)V

    #@f
    .line 5327
    :goto_0
    return-void

    #@10
    .line 5331
    :pswitch_1
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    #@13
    move-result v0

    #@14
    .line 5332
    .local v0, "y":I
    const/4 v1, 0x2

    #@15
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@18
    move-result v1

    #@19
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/Calendar;->handleGetMonthLength(II)I

    #@1c
    move-result v1

    #@1d
    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    #@20
    goto :goto_0

    #@21
    .line 5335
    .end local v0    # "y":I
    :pswitch_2
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->handleGetExtendedYear()I

    #@24
    move-result v0

    #@25
    .line 5336
    .restart local v0    # "y":I
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    #@28
    move-result v1

    #@29
    invoke-virtual {p0, p1, v2, v1}, Landroid/icu/util/Calendar;->validateField(III)V

    #@2c
    goto :goto_0

    #@2d
    .line 5339
    .end local v0    # "y":I
    :pswitch_3
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->internalGet(I)I

    #@30
    move-result v1

    #@31
    if-nez v1, :cond_0

    #@33
    .line 5340
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@35
    const-string/jumbo v2, "DAY_OF_WEEK_IN_MONTH cannot be zero"

    #@38
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3b
    throw v1

    #@3c
    .line 5342
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMinimum(I)I

    #@3f
    move-result v1

    #@40
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->getMaximum(I)I

    #@43
    move-result v2

    #@44
    invoke-virtual {p0, p1, v1, v2}, Landroid/icu/util/Calendar;->validateField(III)V

    #@47
    goto :goto_0

    #@48
    .line 5329
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected final validateField(III)V
    .locals 4
    .param p1, "field"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    #@0
    .prologue
    .line 5359
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    #@2
    aget v0, v1, p1

    #@4
    .line 5360
    .local v0, "value":I
    if-lt v0, p2, :cond_0

    #@6
    if-le v0, p3, :cond_1

    #@8
    .line 5361
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v2, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    invoke-virtual {p0, p1}, Landroid/icu/util/Calendar;->fieldName(I)Ljava/lang/String;

    #@12
    move-result-object v3

    #@13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v2

    #@17
    .line 5362
    const/16 v3, 0x3d

    #@19
    .line 5361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v2

    #@21
    .line 5362
    const-string/jumbo v3, ", valid range="

    #@24
    .line 5361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 5363
    const-string/jumbo v3, ".."

    #@2f
    .line 5361
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v1

    #@3f
    .line 5358
    :cond_1
    return-void
.end method

.method protected validateFields()V
    .locals 3

    #@0
    .prologue
    .line 5312
    const/4 v0, 0x0

    #@1
    .local v0, "field":I
    :goto_0
    iget-object v1, p0, Landroid/icu/util/Calendar;->fields:[I

    #@3
    array-length v1, v1

    #@4
    if-ge v0, v1, :cond_1

    #@6
    .line 5313
    iget-object v1, p0, Landroid/icu/util/Calendar;->stamp:[I

    #@8
    aget v1, v1, v0

    #@a
    const/4 v2, 0x2

    #@b
    if-lt v1, v2, :cond_0

    #@d
    .line 5314
    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->validateField(I)V

    #@10
    .line 5312
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 5311
    :cond_1
    return-void
.end method

.method protected final weekNumber(II)I
    .locals 1
    .param p1, "dayOfPeriod"    # I
    .param p2, "dayOfWeek"    # I

    #@0
    .prologue
    .line 3902
    invoke-virtual {p0, p1, p1, p2}, Landroid/icu/util/Calendar;->weekNumber(III)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected weekNumber(III)I
    .locals 4
    .param p1, "desiredDay"    # I
    .param p2, "dayOfPeriod"    # I
    .param p3, "dayOfWeek"    # I

    #@0
    .prologue
    .line 3854
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getFirstDayOfWeek()I

    #@3
    move-result v2

    #@4
    sub-int v2, p3, v2

    #@6
    sub-int/2addr v2, p2

    #@7
    add-int/lit8 v2, v2, 0x1

    #@9
    rem-int/lit8 v0, v2, 0x7

    #@b
    .line 3855
    .local v0, "periodStartDayOfWeek":I
    if-gez v0, :cond_0

    #@d
    add-int/lit8 v0, v0, 0x7

    #@f
    .line 3860
    :cond_0
    add-int v2, p1, v0

    #@11
    add-int/lit8 v2, v2, -0x1

    #@13
    div-int/lit8 v1, v2, 0x7

    #@15
    .line 3865
    .local v1, "weekNo":I
    rsub-int/lit8 v2, v0, 0x7

    #@17
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@1a
    move-result v3

    #@1b
    if-lt v2, v3, :cond_1

    #@1d
    add-int/lit8 v1, v1, 0x1

    #@1f
    .line 3867
    :cond_1
    return v1
.end method
