.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/Calendar$AvailableCalendarTypes;,
        Ljava/util/Calendar$CalendarAccessControlContext;,
        Ljava/util/Calendar$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final greylist-max-o ALL_FIELDS:I = 0x1ffff

.field public static final whitelist test-api ALL_STYLES:I = 0x0

.field public static final whitelist test-api AM:I = 0x0

.field public static final whitelist test-api AM_PM:I = 0x9

.field static final greylist-max-o AM_PM_MASK:I = 0x200

.field public static final whitelist test-api APRIL:I = 0x3

.field public static final whitelist test-api AUGUST:I = 0x7

.field private static final greylist-max-o COMPUTED:I = 0x1

.field public static final whitelist test-api DATE:I = 0x5

.field static final greylist-max-o DATE_MASK:I = 0x20

.field public static final whitelist test-api DAY_OF_MONTH:I = 0x5

.field static final greylist-max-o DAY_OF_MONTH_MASK:I = 0x20

.field public static final whitelist test-api DAY_OF_WEEK:I = 0x7

.field public static final whitelist test-api DAY_OF_WEEK_IN_MONTH:I = 0x8

.field static final greylist-max-o DAY_OF_WEEK_IN_MONTH_MASK:I = 0x100

.field static final greylist-max-o DAY_OF_WEEK_MASK:I = 0x80

.field public static final whitelist test-api DAY_OF_YEAR:I = 0x6

.field static final greylist-max-o DAY_OF_YEAR_MASK:I = 0x40

.field public static final whitelist test-api DECEMBER:I = 0xb

.field public static final whitelist test-api DST_OFFSET:I = 0x10

.field static final greylist-max-o DST_OFFSET_MASK:I = 0x10000

.field public static final whitelist test-api ERA:I = 0x0

.field static final greylist-max-o ERA_MASK:I = 0x1

.field public static final whitelist test-api FEBRUARY:I = 0x1

.field public static final whitelist test-api FIELD_COUNT:I = 0x11

.field private static final greylist-max-o FIELD_NAME:[Ljava/lang/String;

.field public static final whitelist test-api FRIDAY:I = 0x6

.field public static final whitelist test-api HOUR:I = 0xa

.field static final greylist-max-o HOUR_MASK:I = 0x400

.field public static final whitelist test-api HOUR_OF_DAY:I = 0xb

.field static final greylist-max-o HOUR_OF_DAY_MASK:I = 0x800

.field public static final whitelist test-api JANUARY:I = 0x0

.field public static final whitelist test-api JULY:I = 0x6

.field public static final whitelist test-api JUNE:I = 0x5

.field public static final whitelist test-api LONG:I = 0x2

.field public static final whitelist test-api LONG_FORMAT:I = 0x2

.field public static final whitelist test-api LONG_STANDALONE:I = 0x8002

.field public static final whitelist test-api MARCH:I = 0x2

.field public static final whitelist test-api MAY:I = 0x4

.field public static final whitelist test-api MILLISECOND:I = 0xe

.field static final greylist-max-o MILLISECOND_MASK:I = 0x4000

.field private static final greylist-max-o MINIMUM_USER_STAMP:I = 0x2

.field public static final whitelist test-api MINUTE:I = 0xc

.field static final greylist-max-o MINUTE_MASK:I = 0x1000

.field public static final whitelist test-api MONDAY:I = 0x2

.field public static final whitelist test-api MONTH:I = 0x2

.field static final greylist-max-o MONTH_MASK:I = 0x4

.field public static final whitelist test-api NARROW_FORMAT:I = 0x4

.field public static final whitelist test-api NARROW_STANDALONE:I = 0x8004

.field public static final whitelist test-api NOVEMBER:I = 0xa

.field public static final whitelist test-api OCTOBER:I = 0x9

.field public static final whitelist test-api PM:I = 0x1

.field public static final whitelist test-api SATURDAY:I = 0x7

.field public static final whitelist test-api SECOND:I = 0xd

.field static final greylist-max-o SECOND_MASK:I = 0x2000

.field public static final whitelist test-api SEPTEMBER:I = 0x8

.field public static final whitelist test-api SHORT:I = 0x1

.field public static final whitelist test-api SHORT_FORMAT:I = 0x1

.field public static final whitelist test-api SHORT_STANDALONE:I = 0x8001

.field static final greylist-max-o STANDALONE_MASK:I = 0x8000

.field public static final whitelist test-api SUNDAY:I = 0x1

.field public static final whitelist test-api THURSDAY:I = 0x5

.field public static final whitelist test-api TUESDAY:I = 0x3

.field public static final whitelist test-api UNDECIMBER:I = 0xc

.field private static final greylist-max-o UNSET:I = 0x0

.field public static final whitelist test-api WEDNESDAY:I = 0x4

.field public static final whitelist test-api WEEK_OF_MONTH:I = 0x4

.field static final greylist-max-o WEEK_OF_MONTH_MASK:I = 0x10

.field public static final whitelist test-api WEEK_OF_YEAR:I = 0x3

.field static final greylist-max-o WEEK_OF_YEAR_MASK:I = 0x8

.field public static final whitelist test-api YEAR:I = 0x1

.field static final greylist-max-o YEAR_MASK:I = 0x2

.field public static final whitelist test-api ZONE_OFFSET:I = 0xf

.field static final greylist-max-o ZONE_OFFSET_MASK:I = 0x8000

.field private static final greylist-max-o cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/Locale;",
            "[I>;"
        }
    .end annotation
.end field

.field static final greylist-max-o currentSerialVersion:I = 0x1

.field static final whitelist serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field transient greylist-max-o areAllFieldsSet:Z

.field protected whitelist test-api areFieldsSet:Z

.field protected whitelist test-api fields:[I

.field private greylist-max-o firstDayOfWeek:I

.field protected whitelist test-api isSet:[Z

.field protected whitelist test-api isTimeSet:Z

.field private greylist-max-o lenient:Z

.field private greylist-max-o minimalDaysInFirstWeek:I

.field private greylist-max-o nextStamp:I

.field private greylist-max-o serialVersionOnStream:I

.field private transient greylist-max-o sharedZone:Z

.field private transient greylist-max-o stamp:[I

.field protected whitelist test-api time:J

.field private greylist zone:Ljava/util/TimeZone;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smdefaultTimeZone(Ljava/util/Locale;)Ljava/util/TimeZone;
    .registers 1

    invoke-static {p0}, Ljava/util/Calendar;->defaultTimeZone(Ljava/util/Locale;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 4

    .line 314
    nop

    .line 935
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    .line 3390
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "ERA"

    aput-object v3, v0, v2

    const/4 v2, 0x1

    const-string v3, "YEAR"

    aput-object v3, v0, v2

    const/4 v2, 0x2

    const-string v3, "MONTH"

    aput-object v3, v0, v2

    const-string v2, "WEEK_OF_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "WEEK_OF_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "DAY_OF_MONTH"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DAY_OF_YEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DAY_OF_WEEK"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "DAY_OF_WEEK_IN_MONTH"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "AM_PM"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HOUR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "HOUR_OF_DAY"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "MINUTE"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "SECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MILLISECOND"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ZONE_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "DST_OFFSET"

    aput-object v2, v0, v1

    sput-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    return-void
.end method

.method protected constructor whitelist test-api <init>()V
    .registers 3

    .line 1597
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1598
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 1599
    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 1608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    .line 915
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 968
    const/4 v1, 0x2

    iput v1, p0, Ljava/util/Calendar;->nextStamp:I

    .line 1000
    iput v0, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 1614
    if-nez p2, :cond_14

    .line 1615
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    .line 1618
    :cond_14
    const/16 v0, 0x11

    new-array v1, v0, [I

    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    .line 1619
    new-array v1, v0, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    .line 1620
    new-array v0, v0, [I

    iput-object v0, p0, Ljava/util/Calendar;->stamp:[I

    .line 1622
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 1623
    invoke-direct {p0, p2}, Ljava/util/Calendar;->setWeekCountData(Ljava/util/Locale;)V

    .line 1624
    return-void
.end method

.method private greylist-max-o adjustStamp()V
    .registers 8

    .line 3508
    const/4 v0, 0x2

    .line 3509
    .local v0, "max":I
    const/4 v1, 0x2

    .line 3512
    .local v1, "newStamp":I
    :goto_2
    const v2, 0x7fffffff

    .line 3513
    .local v2, "min":I
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    array-length v4, v3

    const/4 v5, 0x0

    :goto_9
    if-ge v5, v4, :cond_18

    aget v6, v3, v5

    .line 3514
    .local v6, "v":I
    if-lt v6, v1, :cond_12

    if-le v2, v6, :cond_12

    .line 3515
    move v2, v6

    .line 3517
    :cond_12
    if-ge v0, v6, :cond_15

    .line 3518
    move v0, v6

    .line 3513
    .end local v6    # "v":I
    :cond_15
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 3521
    :cond_18
    if-eq v0, v2, :cond_20

    const v3, 0x7fffffff

    if-ne v2, v3, :cond_20

    .line 3522
    goto :goto_38

    .line 3524
    :cond_20
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    array-length v4, v4

    if-ge v3, v4, :cond_33

    .line 3525
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v3

    if-ne v4, v2, :cond_30

    .line 3526
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v4, v3

    .line 3524
    :cond_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 3529
    .end local v3    # "i":I
    :cond_33
    add-int/lit8 v1, v1, 0x1

    .line 3530
    if-ne v2, v0, :cond_3b

    .line 3531
    nop

    .line 3534
    .end local v2    # "min":I
    :goto_38
    iput v1, p0, Ljava/util/Calendar;->nextStamp:I

    .line 3535
    return-void

    .line 3533
    :cond_3b
    goto :goto_2
.end method

.method private static greylist-max-o aggregateStamp(II)I
    .registers 3
    .param p0, "stamp_a"    # I
    .param p1, "stamp_b"    # I

    .line 2679
    if-eqz p0, :cond_b

    if-nez p1, :cond_5

    goto :goto_b

    .line 2682
    :cond_5
    if-le p0, p1, :cond_9

    move v0, p0

    goto :goto_a

    :cond_9
    move v0, p1

    :goto_a
    return v0

    .line 2680
    :cond_b
    :goto_b
    const/4 v0, 0x0

    return v0
.end method

.method private static greylist-max-o appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V
    .registers 7
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "valid"    # Z
    .param p3, "value"    # J

    .line 3443
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3444
    if-eqz p2, :cond_f

    .line 3445
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_14

    .line 3447
    :cond_f
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3449
    :goto_14
    return-void
.end method

.method private greylist-max-o compareTo(J)I
    .registers 6
    .param p1, "t"    # J

    .line 3490
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    .line 3491
    .local v0, "thisTime":J
    cmp-long v2, v0, p1

    if-lez v2, :cond_a

    const/4 v2, 0x1

    goto :goto_11

    :cond_a
    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_11

    :cond_10
    const/4 v2, -0x1

    :goto_11
    return v2
.end method

.method private static greylist-max-o createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1765
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static blacklist defaultTimeZone(Ljava/util/Locale;)Ljava/util/TimeZone;
    .registers 5
    .param p0, "l"    # Ljava/util/Locale;

    .line 1703
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 1705
    .local v0, "defaultTZ":Ljava/util/TimeZone;
    if-nez p0, :cond_7

    .line 1706
    return-object v0

    .line 1708
    :cond_7
    const-string v1, "tz"

    invoke-virtual {p0, v1}, Ljava/util/Locale;->getUnicodeLocaleType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1709
    .local v1, "shortTZID":Ljava/lang/String;
    if-eqz v1, :cond_28

    .line 1714
    nop

    .line 1712
    invoke-static {v1}, Llibcore/icu/ICU;->convertToTzId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Ljava/util/Calendar$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Ljava/util/Calendar$$ExternalSyntheticLambda0;-><init>()V

    .line 1713
    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    .line 1714
    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/TimeZone;

    goto :goto_29

    .line 1715
    :cond_28
    move-object v2, v0

    .line 1709
    :goto_29
    return-object v2
.end method

.method public static whitelist test-api getAvailableCalendarTypes()Ljava/util/Set;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2701
    invoke-static {}, Ljava/util/Calendar$AvailableCalendarTypes;->-$$Nest$sfgetSET()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized whitelist test-api getAvailableLocales()[Ljava/util/Locale;
    .registers 2

    const-class v0, Ljava/util/Calendar;

    monitor-enter v0

    .line 1780
    :try_start_3
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    .line 1780
    :catchall_9
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_a .. :try_end_b} :catchall_9

    throw v1
.end method

.method private greylist-max-o getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;
    .registers 10
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2276
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    .line 2277
    .local v0, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v0}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v1

    .line 2278
    .local v1, "strings":[Ljava/lang/String;
    if-eqz v1, :cond_29

    .line 2279
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2280
    .local v2, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10
    array-length v4, v1

    if-ge v3, v4, :cond_28

    .line 2281
    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2282
    goto :goto_25

    .line 2284
    :cond_1c
    aget-object v4, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2280
    :goto_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 2286
    .end local v3    # "i":I
    :cond_28
    return-object v2

    .line 2288
    .end local v2    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_29
    const/4 v2, 0x0

    return-object v2
.end method

.method static greylist-max-o getFieldName(I)Ljava/lang/String;
    .registers 2
    .param p0, "field"    # I

    .line 3406
    sget-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method private greylist-max-o getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;
    .registers 7
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "symbols"    # Ljava/text/DateFormatSymbols;

    .line 2311
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2314
    .local v0, "baseStyle":I
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 2315
    return-object v2

    .line 2318
    :cond_9
    const/4 v1, 0x2

    sparse-switch p1, :sswitch_data_30

    .line 2323
    goto :goto_2f

    .line 2322
    :sswitch_e
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 2321
    :sswitch_13
    if-ne v0, v1, :cond_1a

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_1a
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 2320
    :sswitch_1f
    if-ne v0, v1, :cond_26

    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    :cond_26
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    goto :goto_2f

    .line 2319
    :sswitch_2b
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    move-result-object v2

    .line 2318
    :goto_2f
    return-object v2

    :sswitch_data_30
    .sparse-switch
        0x0 -> :sswitch_2b
        0x2 -> :sswitch_1f
        0x7 -> :sswitch_13
        0x9 -> :sswitch_e
    .end sparse-switch
.end method

.method public static whitelist test-api getInstance()Ljava/util/Calendar;
    .registers 2

    .line 1641
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    .line 1642
    .local v0, "aLocale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Calendar;->defaultTimeZone(Ljava/util/Locale;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    return-object v1
.end method

.method public static whitelist test-api getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 2
    .param p0, "aLocale"    # Ljava/util/Locale;

    .line 1674
    invoke-static {p0}, Ljava/util/Calendar;->defaultTimeZone(Ljava/util/Locale;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, p0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .registers 2
    .param p0, "zone"    # Ljava/util/TimeZone;

    .line 1656
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist test-api getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1689
    invoke-static {p0, p1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-o getJapaneseImperialInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .registers 3
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 1698
    new-instance v0, Ljava/util/JapaneseImperialCalendar;

    invoke-direct {v0, p0, p1}, Ljava/util/JapaneseImperialCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method

.method private static greylist-max-o getMillisOf(Ljava/util/Calendar;)J
    .registers 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 3495
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_7

    .line 3496
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0

    .line 3498
    :cond_7
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3499
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3500
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method private greylist-max-o invalidateWeekFields()V
    .registers 7

    .line 3543
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_10

    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, v2

    if-eq v0, v3, :cond_10

    .line 3545
    return-void

    .line 3551
    :cond_10
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3552
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3553
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->clear(I)V

    .line 3554
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->clear(I)V

    .line 3556
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v1

    if-ne v4, v3, :cond_33

    .line 3557
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3558
    .local v4, "weekOfMonth":I
    iget-object v5, p0, Ljava/util/Calendar;->fields:[I

    aget v5, v5, v1

    if-eq v5, v4, :cond_33

    .line 3559
    iget-object v5, p0, Ljava/util/Calendar;->fields:[I

    aput v4, v5, v1

    .line 3563
    .end local v4    # "weekOfMonth":I
    :cond_33
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    aget v1, v1, v2

    if-ne v1, v3, :cond_47

    .line 3564
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 3565
    .local v1, "weekOfYear":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aget v3, v3, v2

    if-eq v3, v1, :cond_47

    .line 3566
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v3, v2

    .line 3569
    .end local v1    # "weekOfYear":I
    :cond_47
    return-void
.end method

.method static greylist-max-o isFieldSet(II)Z
    .registers 4
    .param p0, "fieldMask"    # I
    .param p1, "field"    # I

    .line 2473
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_7

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method private greylist-max-o isNarrowFormatStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .line 2669
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    const/4 v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_6
    return v0
.end method

.method private greylist-max-o isNarrowStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .line 2665
    const/4 v0, 0x4

    if-eq p1, v0, :cond_b

    const v0, 0x8004

    if-ne p1, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method private greylist-max-o isStandaloneStyle(I)Z
    .registers 3
    .param p1, "style"    # I

    .line 2661
    const v0, 0x8000

    and-int/2addr v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 3625
    move-object v0, p1

    .line 3626
    .local v0, "input":Ljava/io/ObjectInputStream;
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3628
    const/16 v1, 0x11

    new-array v2, v1, [I

    iput-object v2, p0, Ljava/util/Calendar;->stamp:[I

    .line 3633
    iget v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v2, v3, :cond_23

    .line 3635
    iput-boolean v4, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 3636
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    if-nez v2, :cond_1a

    .line 3637
    new-array v2, v1, [I

    iput-object v2, p0, Ljava/util/Calendar;->fields:[I

    .line 3639
    :cond_1a
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    if-nez v2, :cond_35

    .line 3640
    new-array v1, v1, [Z

    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    goto :goto_35

    .line 3643
    :cond_23
    iget v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    if-ltz v2, :cond_35

    .line 3645
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_28
    if-ge v2, v1, :cond_35

    .line 3646
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v5, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v5, v5, v2

    aput v5, v3, v2

    .line 3645
    add-int/lit8 v2, v2, 0x1

    goto :goto_28

    .line 3650
    .end local v2    # "i":I
    :cond_35
    :goto_35
    iput v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    .line 3687
    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    instance-of v1, v1, Ljava/util/SimpleTimeZone;

    if-eqz v1, :cond_5d

    .line 3688
    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    .line 3689
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    .line 3690
    .local v2, "tz":Ljava/util/TimeZone;
    if-eqz v2, :cond_5d

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 3691
    iput-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 3694
    .end local v1    # "id":Ljava/lang/String;
    .end local v2    # "tz":Ljava/util/TimeZone;
    :cond_5d
    return-void
.end method

.method private greylist-max-o setWeekCountData(Ljava/util/Locale;)V
    .registers 7
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    .line 3459
    invoke-static {p1}, Llibcore/icu/LocaleData;->getCompatibleLocaleForBug159514442(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object p1

    .line 3461
    sget-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3462
    .local v0, "data":[I
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2c

    .line 3463
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 3467
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v3

    .line 3468
    .local v3, "localeData":Llibcore/icu/LocaleData;
    iget-object v4, v3, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2

    .line 3469
    iget-object v4, v3, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v1

    .line 3471
    sget-object v4, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3473
    .end local v3    # "localeData":Llibcore/icu/LocaleData;
    :cond_2c
    aget v2, v0, v2

    iput v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 3474
    aget v1, v0, v1

    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 3475
    return-void
.end method

.method public static greylist-max-o toStandaloneStyle(I)I
    .registers 2
    .param p0, "style"    # I

    .line 2657
    const v0, 0x8000

    or-int/2addr v0, p0

    return v0
.end method

.method private greylist-max-o updateTime()V
    .registers 2

    .line 3483
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    .line 3486
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 3487
    return-void
.end method

.method private declared-synchronized whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 3590
    :try_start_1
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_a

    .line 3592
    :try_start_5
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_f

    .line 3594
    goto :goto_a

    .end local p0    # "this":Ljava/util/Calendar;
    :catch_9
    move-exception v0

    .line 3599
    :cond_a
    :goto_a
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_f

    .line 3600
    monitor-exit p0

    return-void

    .line 3589
    .end local p1    # "stream":Ljava/io/ObjectOutputStream;
    :catchall_f
    move-exception p1

    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw p1
.end method


# virtual methods
.method public abstract whitelist test-api add(II)V
.end method

.method public whitelist test-api after(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "when"    # Ljava/lang/Object;

    .line 2841
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 2842
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-lez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2841
    :goto_10
    return v0
.end method

.method public whitelist test-api before(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "when"    # Ljava/lang/Object;

    .line 2820
    instance-of v0, p1, Ljava/util/Calendar;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Ljava/util/Calendar;

    .line 2821
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    .line 2820
    :goto_10
    return v0
.end method

.method greylist-max-o checkDisplayNameParams(IIIILjava/util/Locale;I)Z
    .registers 9
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "minStyle"    # I
    .param p4, "maxStyle"    # I
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "fieldMask"    # I

    .line 2293
    invoke-virtual {p0, p2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v0

    .line 2294
    .local v0, "baseStyle":I
    if-ltz p1, :cond_27

    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    if-ge p1, v1, :cond_27

    if-lt v0, p3, :cond_27

    if-gt v0, p4, :cond_27

    const/4 v1, 0x3

    if-eq v0, v1, :cond_27

    .line 2300
    if-eq v0, v1, :cond_21

    .line 2304
    if-eqz p5, :cond_1b

    .line 2307
    invoke-static {p6, p1}, Ljava/util/Calendar;->isFieldSet(II)Z

    move-result v1

    return v1

    .line 2305
    :cond_1b
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 2301
    :cond_21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 2296
    :cond_27
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public final whitelist test-api clear()V
    .registers 5

    .line 2049
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_17

    .line 2050
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v2, v3, v0

    aput v2, v1, v0

    .line 2051
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    aput-boolean v2, v1, v0

    move v0, v3

    goto :goto_1

    .line 2053
    .end local v3    # "i":I
    :cond_17
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2054
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 2055
    return-void
.end method

.method public final whitelist test-api clear(I)V
    .registers 4
    .param p1, "field"    # I

    .line 2080
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    const/4 v1, 0x0

    aput v1, v0, p1

    .line 2081
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v0, p1

    .line 2082
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v0, p1

    .line 2084
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2085
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 2086
    return-void
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 6

    .line 3369
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 3371
    .local v0, "other":Ljava/util/Calendar;
    const/16 v1, 0x11

    new-array v2, v1, [I

    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    .line 3372
    new-array v2, v1, [Z

    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    .line 3373
    new-array v2, v1, [I

    iput-object v2, v0, Ljava/util/Calendar;->stamp:[I

    .line 3374
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_15
    if-ge v2, v1, :cond_32

    .line 3375
    iget-object v3, v0, Ljava/util/Calendar;->fields:[I

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 3376
    iget-object v3, v0, Ljava/util/Calendar;->stamp:[I

    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    aget v4, v4, v2

    aput v4, v3, v2

    .line 3377
    iget-object v3, v0, Ljava/util/Calendar;->isSet:[Z

    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v4, v4, v2

    aput-boolean v4, v3, v2

    .line 3374
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    .line 3379
    .end local v2    # "i":I
    :cond_32
    iget-boolean v1, p0, Ljava/util/Calendar;->sharedZone:Z

    if-nez v1, :cond_40

    .line 3380
    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v1}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/TimeZone;

    iput-object v1, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_40
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_40} :catch_41

    .line 3382
    :cond_40
    return-object v0

    .line 3384
    .end local v0    # "other":Ljava/util/Calendar;
    :catch_41
    move-exception v0

    .line 3386
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/InternalError;

    invoke-direct {v1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v1
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

    .line 314
    check-cast p1, Ljava/util/Calendar;

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    move-result p1

    return p1
.end method

.method public whitelist test-api compareTo(Ljava/util/Calendar;)I
    .registers 4
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    .line 2866
    invoke-static {p1}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;->compareTo(J)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api complete()V
    .registers 2

    .line 2336
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_7

    .line 2337
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 2339
    :cond_7
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_17

    .line 2340
    :cond_f
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 2341
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2343
    :cond_17
    return-void
.end method

.method protected abstract whitelist test-api computeFields()V
.end method

.method protected abstract whitelist test-api computeTime()V
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 2764
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 2765
    return v0

    .line 2768
    :cond_4
    const/4 v1, 0x0

    :try_start_5
    move-object v2, p1

    check-cast v2, Ljava/util/Calendar;

    .line 2769
    .local v2, "that":Ljava/util/Calendar;
    invoke-static {v2}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Ljava/util/Calendar;->compareTo(J)I

    move-result v3

    if-nez v3, :cond_42

    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    iget-boolean v4, v2, Ljava/util/Calendar;->lenient:Z

    if-ne v3, v4, :cond_42

    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    iget v4, v2, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v3, v4, :cond_42

    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    iget v4, v2, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v3, v4, :cond_42

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    instance-of v3, v3, Llibcore/util/ZoneInfo;

    if-eqz v3, :cond_35

    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    iget-object v4, v2, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2776
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    goto :goto_41

    :cond_35
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2777
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3f} :catch_44

    if-eqz v3, :cond_42

    :goto_41
    goto :goto_43

    :cond_42
    move v0, v1

    .line 2769
    :goto_43
    return v0

    .line 2778
    .end local v2    # "that":Ljava/util/Calendar;
    :catch_44
    move-exception v0

    .line 2783
    return v1
.end method

.method public whitelist test-api get(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1892
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 1893
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    move-result v0

    return v0
.end method

.method public whitelist test-api getActualMaximum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 3323
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    move-result v0

    .line 3324
    .local v0, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v1

    .line 3327
    .local v1, "endValue":I
    if-ne v0, v1, :cond_b

    .line 3328
    return v0

    .line 3333
    :cond_b
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 3334
    .local v2, "work":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3338
    const/4 v3, 0x3

    if-eq p1, v3, :cond_1b

    const/4 v3, 0x4

    if-ne p1, v3, :cond_21

    .line 3339
    :cond_1b
    const/4 v3, 0x7

    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 3345
    :cond_21
    move v3, v0

    .line 3348
    .local v3, "result":I
    :cond_22
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 3349
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_2c

    .line 3350
    goto :goto_31

    .line 3352
    :cond_2c
    move v3, v0

    .line 3353
    add-int/lit8 v0, v0, 0x1

    .line 3355
    if-le v0, v1, :cond_22

    .line 3357
    :goto_31
    return v3
.end method

.method public whitelist test-api getActualMinimum(I)I
    .registers 7
    .param p1, "field"    # I

    .line 3269
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    move-result v0

    .line 3270
    .local v0, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    .line 3273
    .local v1, "endValue":I
    if-ne v0, v1, :cond_b

    .line 3274
    return v0

    .line 3279
    :cond_b
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Calendar;

    .line 3280
    .local v2, "work":Ljava/util/Calendar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->setLenient(Z)V

    .line 3285
    move v3, v0

    .line 3288
    .local v3, "result":I
    :cond_16
    invoke-virtual {v2, p1, v0}, Ljava/util/Calendar;->set(II)V

    .line 3289
    invoke-virtual {v2, p1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-eq v4, v0, :cond_20

    .line 3290
    goto :goto_25

    .line 3292
    :cond_20
    move v3, v0

    .line 3293
    add-int/lit8 v0, v0, -0x1

    .line 3295
    if-ge v0, v1, :cond_16

    .line 3297
    :goto_25
    return v3
.end method

.method greylist-max-o getBaseStyle(I)I
    .registers 3
    .param p1, "style"    # I

    .line 2648
    const v0, -0x8001

    and-int/2addr v0, p1

    return v0
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 2736
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 2150
    if-nez p2, :cond_5

    .line 2151
    const/4 p2, 0x1

    move v2, p2

    goto :goto_6

    .line 2150
    :cond_5
    move v2, p2

    .line 2154
    .end local p2    # "style":I
    .local v2, "style":I
    :goto_6
    const/4 v4, 0x4

    const/16 v6, 0x285

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move-object v5, p3

    .end local p1    # "field":I
    .end local p3    # "locale":Ljava/util/Locale;
    .local v1, "field":I
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_15

    .line 2156
    return-object p2

    .line 2159
    :cond_15
    invoke-virtual {p0}, Ljava/util/Calendar;->getCalendarType()Ljava/lang/String;

    move-result-object p1

    .line 2160
    .local p1, "calendarType":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p3

    .line 2163
    .local p3, "fieldValue":I
    invoke-direct {p0, v2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v3

    if-nez v3, :cond_42

    invoke-direct {p0, v2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v3

    if-nez v3, :cond_42

    if-nez v1, :cond_31

    and-int/lit8 v3, v2, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_31

    goto :goto_42

    .line 2185
    :cond_31
    invoke-static {v5}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v3

    .line 2186
    .local v3, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, v1, v2, v3}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    move-result-object v4

    .line 2187
    .local v4, "strings":[Ljava/lang/String;
    if-eqz v4, :cond_41

    .line 2188
    array-length v6, v4

    if-ge p3, v6, :cond_41

    .line 2189
    aget-object p2, v4, p3

    return-object p2

    .line 2192
    :cond_41
    return-object p2

    .line 2165
    .end local v3    # "symbols":Ljava/text/DateFormatSymbols;
    .end local v4    # "strings":[Ljava/lang/String;
    :cond_42
    :goto_42
    invoke-static {p1, v1, p3, v2, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2169
    .local p2, "val":Ljava/lang/String;
    if-nez p2, :cond_67

    .line 2170
    invoke-direct {p0, v2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result v3

    if-eqz v3, :cond_58

    .line 2171
    nop

    .line 2173
    invoke-static {v2}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result v3

    .line 2171
    invoke-static {p1, v1, p3, v3, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    goto :goto_67

    .line 2175
    :cond_58
    invoke-direct {p0, v2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result v3

    if-eqz v3, :cond_67

    .line 2176
    nop

    .line 2178
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result v3

    .line 2176
    invoke-static {p1, v1, p3, v3, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 2182
    :cond_67
    :goto_67
    return-object p2
.end method

.method public whitelist test-api getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .registers 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 2245
    const/4 v4, 0x4

    const/16 v6, 0x285

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .end local p1    # "field":I
    .end local p2    # "style":I
    .end local p3    # "locale":Ljava/util/Locale;
    .local v1, "field":I
    .local v2, "style":I
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 2247
    const/4 p1, 0x0

    return-object p1

    .line 2250
    :cond_10
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    .line 2252
    invoke-virtual {p0}, Ljava/util/Calendar;->getCalendarType()Ljava/lang/String;

    move-result-object p1

    .line 2253
    .local p1, "calendarType":Ljava/lang/String;
    if-eqz v2, :cond_32

    invoke-direct {p0, v2}, Ljava/util/Calendar;->isStandaloneStyle(I)Z

    move-result p2

    if-nez p2, :cond_32

    invoke-direct {p0, v2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result p2

    if-nez p2, :cond_32

    if-nez v1, :cond_2d

    and-int/lit8 p2, v2, 0x1

    const/4 p3, 0x1

    if-ne p2, p3, :cond_2d

    goto :goto_32

    .line 2272
    :cond_2d
    invoke-direct {p0, v1, v2, v5}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p2

    return-object p2

    .line 2256
    :cond_32
    :goto_32
    invoke-static {p1, v1, v2, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p2

    .line 2259
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_53

    .line 2260
    invoke-direct {p0, v2}, Ljava/util/Calendar;->isNarrowFormatStyle(I)Z

    move-result p3

    if-eqz p3, :cond_48

    .line 2261
    nop

    .line 2262
    invoke-static {v2}, Ljava/util/Calendar;->toStandaloneStyle(I)I

    move-result p3

    .line 2261
    invoke-static {p1, v1, p3, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p2

    goto :goto_53

    .line 2263
    :cond_48
    if-eqz v2, :cond_53

    .line 2264
    nop

    .line 2265
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->getBaseStyle(I)I

    move-result p3

    .line 2264
    invoke-static {p1, v1, p3, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p2

    .line 2268
    :cond_53
    :goto_53
    return-object p2
.end method

.method public whitelist test-api getFirstDayOfWeek()I
    .registers 2

    .line 3042
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    return v0
.end method

.method public abstract whitelist test-api getGreatestMinimum(I)I
.end method

.method public abstract whitelist test-api getLeastMaximum(I)I
.end method

.method public abstract whitelist test-api getMaximum(I)I
.end method

.method public whitelist test-api getMinimalDaysInFirstWeek()I
    .registers 2

    .line 3076
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    return v0
.end method

.method public abstract whitelist test-api getMinimum(I)I
.end method

.method final greylist-max-o getSetStateFields()I
    .registers 4

    .line 2369
    const/4 v0, 0x0

    .line 2370
    .local v0, "mask":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v1, v2, :cond_13

    .line 2371
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aget v2, v2, v1

    if-eqz v2, :cond_10

    .line 2372
    const/4 v2, 0x1

    shl-int/2addr v2, v1

    or-int/2addr v0, v2

    .line 2370
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2375
    .end local v1    # "i":I
    :cond_13
    return v0
.end method

.method public final whitelist test-api getTime()Ljava/util/Date;
    .registers 4

    .line 1815
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public whitelist test-api getTimeInMillis()J
    .registers 3

    .line 1843
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-nez v0, :cond_7

    .line 1844
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    .line 1846
    :cond_7
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    return-wide v0
.end method

.method public whitelist test-api getTimeZone()Ljava/util/TimeZone;
    .registers 2

    .line 2965
    iget-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    if-eqz v0, :cond_11

    .line 2966
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TimeZone;

    iput-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2967
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2969
    :cond_11
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api getWeekYear()I
    .registers 2

    .line 3114
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getWeeksInWeekYear()I
    .registers 2

    .line 3171
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o getZone()Ljava/util/TimeZone;
    .registers 2

    .line 2976
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 7

    .line 2795
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    iget v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    shl-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    iget v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    iget-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2798
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    .line 2799
    .local v0, "otheritems":I
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    move-result-wide v1

    .line 2800
    .local v1, "t":J
    long-to-int v3, v1

    const/16 v4, 0x20

    shr-long v4, v1, v4

    long-to-int v4, v4

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    return v3
.end method

.method protected final whitelist test-api internalGet(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1906
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aget v0, v0, p1

    return v0
.end method

.method final greylist-max-o internalSet(II)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1923
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    aput p2, v0, p1

    .line 1924
    return-void
.end method

.method final greylist-max-o isExternallySet(I)Z
    .registers 4
    .param p1, "field"    # I

    .line 2359
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method final greylist-max-o isFullyNormalized()Z
    .registers 2

    .line 2458
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public whitelist test-api isLenient()Z
    .registers 2

    .line 3012
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    return v0
.end method

.method final greylist-max-o isPartiallyNormalized()Z
    .registers 2

    .line 2450
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public final whitelist test-api isSet(I)Z
    .registers 3
    .param p1, "field"    # I

    .line 2099
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    aget v0, v0, p1

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public whitelist test-api isWeekDateSupported()Z
    .registers 2

    .line 3092
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api roll(II)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 2925
    nop

    :goto_1
    if-lez p2, :cond_a

    .line 2926
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    .line 2927
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 2929
    :cond_a
    :goto_a
    if-gez p2, :cond_13

    .line 2930
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    .line 2931
    add-int/lit8 p2, p2, 0x1

    goto :goto_a

    .line 2933
    :cond_13
    return-void
.end method

.method public abstract whitelist test-api roll(IZ)V
.end method

.method final greylist-max-o selectFields()I
    .registers 16

    .line 2503
    const/4 v0, 0x2

    .line 2505
    .local v0, "fieldMask":I
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-eqz v1, :cond_a

    .line 2506
    or-int/lit8 v0, v0, 0x1

    .line 2520
    :cond_a
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    .line 2521
    .local v1, "dowStamp":I
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    .line 2522
    .local v2, "monthStamp":I
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v5, 0x5

    aget v4, v4, v5

    .line 2523
    .local v4, "domStamp":I
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    invoke-static {v5, v1}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v5

    .line 2524
    .local v5, "womStamp":I
    iget-object v7, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v8, 0x8

    aget v7, v7, v8

    invoke-static {v7, v1}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v7

    .line 2525
    .local v7, "dowimStamp":I
    iget-object v9, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v10, 0x6

    aget v9, v9, v10

    .line 2526
    .local v9, "doyStamp":I
    iget-object v10, p0, Ljava/util/Calendar;->stamp:[I

    const/4 v11, 0x3

    aget v10, v10, v11

    invoke-static {v10, v1}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v10

    .line 2528
    .local v10, "woyStamp":I
    move v12, v4

    .line 2529
    .local v12, "bestStamp":I
    if-le v5, v12, :cond_3e

    .line 2530
    move v12, v5

    .line 2532
    :cond_3e
    if-le v7, v12, :cond_41

    .line 2533
    move v12, v7

    .line 2535
    :cond_41
    if-le v9, v12, :cond_44

    .line 2536
    move v12, v9

    .line 2538
    :cond_44
    if-le v10, v12, :cond_47

    .line 2539
    move v12, v10

    .line 2546
    :cond_47
    if-nez v12, :cond_65

    .line 2547
    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v5, v13, v6

    .line 2548
    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v13, v13, v8

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2549
    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v10, v13, v11

    .line 2550
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    invoke-static {v13, v10}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 2556
    if-nez v12, :cond_65

    .line 2557
    move v4, v2

    move v12, v2

    .line 2561
    :cond_65
    if-eq v12, v4, :cond_8d

    if-ne v12, v5, :cond_73

    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v13, v13, v6

    iget-object v14, p0, Ljava/util/Calendar;->stamp:[I

    aget v14, v14, v11

    if-ge v13, v14, :cond_8d

    :cond_73
    if-ne v12, v7, :cond_80

    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    aget v13, v13, v8

    iget-object v14, p0, Ljava/util/Calendar;->stamp:[I

    aget v11, v14, v11

    if-lt v13, v11, :cond_80

    goto :goto_8d

    .line 2592
    :cond_80
    nop

    .line 2594
    if-ne v12, v9, :cond_86

    .line 2595
    or-int/lit8 v0, v0, 0x40

    goto :goto_b8

    .line 2597
    :cond_86
    nop

    .line 2598
    if-eqz v1, :cond_8b

    .line 2599
    or-int/lit16 v0, v0, 0x80

    .line 2601
    :cond_8b
    or-int/2addr v0, v8

    goto :goto_b8

    .line 2564
    :cond_8d
    :goto_8d
    or-int/2addr v0, v6

    .line 2565
    if-ne v12, v4, :cond_93

    .line 2566
    or-int/lit8 v0, v0, 0x20

    goto :goto_b8

    .line 2568
    :cond_93
    nop

    .line 2569
    if-eqz v1, :cond_98

    .line 2570
    or-int/lit16 v0, v0, 0x80

    .line 2572
    :cond_98
    if-ne v5, v7, :cond_aa

    .line 2575
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    aget v6, v11, v6

    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    aget v8, v11, v8

    if-lt v6, v8, :cond_a7

    .line 2576
    or-int/lit8 v0, v0, 0x10

    goto :goto_b8

    .line 2578
    :cond_a7
    or-int/lit16 v0, v0, 0x100

    goto :goto_b8

    .line 2581
    :cond_aa
    if-ne v12, v5, :cond_af

    .line 2582
    or-int/lit8 v0, v0, 0x10

    goto :goto_b8

    .line 2584
    :cond_af
    nop

    .line 2585
    iget-object v6, p0, Ljava/util/Calendar;->stamp:[I

    aget v6, v6, v8

    if-eqz v6, :cond_b8

    .line 2586
    or-int/lit16 v0, v0, 0x100

    .line 2608
    :cond_b8
    :goto_b8
    iget-object v6, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v8, 0xb

    aget v6, v6, v8

    .line 2609
    .local v6, "hourOfDayStamp":I
    iget-object v8, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v11, 0xa

    aget v8, v8, v11

    iget-object v13, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v14, 0x9

    aget v13, v13, v14

    invoke-static {v8, v13}, Ljava/util/Calendar;->aggregateStamp(II)I

    move-result v8

    .line 2610
    .local v8, "hourStamp":I
    if-le v8, v6, :cond_d2

    move v13, v8

    goto :goto_d3

    :cond_d2
    move v13, v6

    .line 2613
    .end local v12    # "bestStamp":I
    .local v13, "bestStamp":I
    :goto_d3
    if-nez v13, :cond_e1

    .line 2614
    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    aget v11, v12, v11

    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    aget v12, v12, v14

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 2618
    :cond_e1
    if-eqz v13, :cond_f2

    .line 2619
    if-ne v13, v6, :cond_e8

    .line 2620
    or-int/lit16 v0, v0, 0x800

    goto :goto_f2

    .line 2622
    :cond_e8
    or-int/lit16 v0, v0, 0x400

    .line 2623
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    aget v11, v11, v14

    if-eqz v11, :cond_f2

    .line 2624
    or-int/lit16 v0, v0, 0x200

    .line 2628
    :cond_f2
    :goto_f2
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xc

    aget v11, v11, v12

    if-eqz v11, :cond_fc

    .line 2629
    or-int/lit16 v0, v0, 0x1000

    .line 2631
    :cond_fc
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xd

    aget v11, v11, v12

    if-eqz v11, :cond_106

    .line 2632
    or-int/lit16 v0, v0, 0x2000

    .line 2634
    :cond_106
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xe

    aget v11, v11, v12

    if-eqz v11, :cond_110

    .line 2635
    or-int/lit16 v0, v0, 0x4000

    .line 2637
    :cond_110
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0xf

    aget v11, v11, v12

    if-lt v11, v3, :cond_11c

    .line 2638
    const v11, 0x8000

    or-int/2addr v0, v11

    .line 2640
    :cond_11c
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    const/16 v12, 0x10

    aget v11, v11, v12

    if-lt v11, v3, :cond_127

    .line 2641
    const/high16 v3, 0x10000

    or-int/2addr v0, v3

    .line 2644
    :cond_127
    return v0
.end method

.method public whitelist test-api set(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "value"    # I

    .line 1944
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-nez v0, :cond_b

    .line 1945
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1947
    :cond_b
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->internalSet(II)V

    .line 1948
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1949
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1950
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    .line 1951
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    iget v1, p0, Ljava/util/Calendar;->nextStamp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/Calendar;->nextStamp:I

    aput v1, v0, p1

    .line 1952
    iget v0, p0, Ljava/util/Calendar;->nextStamp:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_2c

    .line 1953
    invoke-direct {p0}, Ljava/util/Calendar;->adjustStamp()V

    .line 1955
    :cond_2c
    return-void
.end method

.method public final whitelist test-api set(III)V
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 1973
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1974
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1975
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 1976
    return-void
.end method

.method public final whitelist test-api set(IIIII)V
    .registers 7
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .line 1997
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 1998
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 1999
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 2000
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 2001
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 2002
    return-void
.end method

.method public final whitelist test-api set(IIIIII)V
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 2025
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    .line 2026
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    .line 2027
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    .line 2028
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    .line 2029
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    .line 2030
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    .line 2031
    return-void
.end method

.method final greylist-max-o setFieldsComputed(I)V
    .registers 5
    .param p1, "fieldMask"    # I

    .line 2392
    const v0, 0x1ffff

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1c

    .line 2393
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_17

    .line 2394
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v2, v0

    .line 2395
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v2, v0

    .line 2393
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2397
    .end local v0    # "i":I
    :cond_17
    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    goto :goto_41

    .line 2399
    :cond_1c
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1d
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_41

    .line 2400
    and-int/lit8 v2, p1, 0x1

    if-ne v2, v1, :cond_2f

    .line 2401
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    aput v1, v2, v0

    .line 2402
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v2, v0

    goto :goto_3c

    .line 2404
    :cond_2f
    iget-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v2, :cond_3c

    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aget-boolean v2, v2, v0

    if-nez v2, :cond_3c

    .line 2405
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2408
    :cond_3c
    :goto_3c
    ushr-int/lit8 p1, p1, 0x1

    .line 2399
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 2411
    .end local v0    # "i":I
    :cond_41
    :goto_41
    return-void
.end method

.method final greylist-max-o setFieldsNormalized(I)V
    .registers 6
    .param p1, "fieldMask"    # I

    .line 2429
    const v0, 0x1ffff

    const/4 v1, 0x0

    if-eq p1, v0, :cond_21

    .line 2430
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_7
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    array-length v2, v2

    if-ge v0, v2, :cond_21

    .line 2431
    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1c

    .line 2432
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    aput v1, v3, v0

    aput v1, v2, v0

    .line 2433
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    aput-boolean v1, v2, v0

    .line 2435
    :cond_1c
    shr-int/lit8 p1, p1, 0x1

    .line 2430
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2441
    .end local v0    # "i":I
    :cond_21
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2442
    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2443
    return-void
.end method

.method public whitelist test-api setFirstDayOfWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3025
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    if-ne v0, p1, :cond_5

    .line 3026
    return-void

    .line 3028
    :cond_5
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    .line 3029
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 3030
    return-void
.end method

.method public whitelist test-api setLenient(Z)V
    .registers 2
    .param p1, "lenient"    # Z

    .line 3000
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    .line 3001
    return-void
.end method

.method public whitelist test-api setMinimalDaysInFirstWeek(I)V
    .registers 3
    .param p1, "value"    # I

    .line 3057
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    if-ne v0, p1, :cond_5

    .line 3058
    return-void

    .line 3060
    :cond_5
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    .line 3061
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    .line 3062
    return-void
.end method

.method public final whitelist test-api setTime(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 1831
    const-string v0, "date must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1832
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1833
    return-void
.end method

.method public whitelist test-api setTimeInMillis(J)V
    .registers 5
    .param p1, "millis"    # J

    .line 1862
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_13

    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    if-eqz v0, :cond_13

    .line 1865
    return-void

    .line 1867
    :cond_13
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    .line 1868
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    .line 1869
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 1870
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    .line 1871
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 1872
    return-void
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "value"    # Ljava/util/TimeZone;

    .line 2942
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    .line 2943
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2953
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    .line 2954
    return-void
.end method

.method final greylist-max-o setUnnormalized()V
    .registers 2

    .line 2465
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    .line 2466
    return-void
.end method

.method public whitelist test-api setWeekDate(III)V
    .registers 5
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    .line 3150
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method greylist-max-o setZoneShared(Z)V
    .registers 2
    .param p1, "shared"    # Z

    .line 2983
    iput-boolean p1, p0, Ljava/util/Calendar;->sharedZone:Z

    .line 2984
    return-void
.end method

.method public final whitelist test-api toInstant()Ljava/time/Instant;
    .registers 3

    .line 3706
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 7

    .line 3423
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x320

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3424
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3425
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    const-string v4, "time"

    invoke-static {v0, v4, v1, v2, v3}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3426
    const-string v1, ",areFieldsSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3427
    const-string v1, ",areAllFieldsSet="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3428
    const-string v1, ",lenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3429
    const-string v1, ",zone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3430
    iget v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    int-to-long v1, v1

    const-string v3, ",firstDayOfWeek"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4, v1, v2}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3431
    iget v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    int-to-long v1, v1

    const-string v3, ",minimalDaysInFirstWeek"

    invoke-static {v0, v3, v4, v1, v2}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3432
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5f
    const/16 v2, 0x11

    if-ge v1, v2, :cond_7b

    .line 3433
    const/16 v2, 0x2c

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3434
    sget-object v2, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->isSet(I)Z

    move-result v3

    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    aget v4, v4, v1

    int-to-long v4, v4

    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    .line 3432
    add-int/lit8 v1, v1, 0x1

    goto :goto_5f

    .line 3436
    .end local v1    # "i":I
    :cond_7b
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3437
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
