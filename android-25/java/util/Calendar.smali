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
        Ljava/util/Calendar$CalendarAccessControlContext;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/util/Calendar;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ALL_FIELDS:I = 0x1ffff

.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field static final AM_PM_MASK:I = 0x200

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field private static final COMPUTED:I = 0x1

.field public static final DATE:I = 0x5

.field static final DATE_MASK:I = 0x20

.field public static final DAY_OF_MONTH:I = 0x5

.field static final DAY_OF_MONTH_MASK:I = 0x20

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field static final DAY_OF_WEEK_IN_MONTH_MASK:I = 0x100

.field static final DAY_OF_WEEK_MASK:I = 0x80

.field public static final DAY_OF_YEAR:I = 0x6

.field static final DAY_OF_YEAR_MASK:I = 0x40

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field static final DST_OFFSET_MASK:I = 0x10000

.field public static final ERA:I = 0x0

.field static final ERA_MASK:I = 0x1

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAME:[Ljava/lang/String;

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field static final HOUR_MASK:I = 0x400

.field public static final HOUR_OF_DAY:I = 0xb

.field static final HOUR_OF_DAY_MASK:I = 0x800

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field static final MILLISECOND_MASK:I = 0x4000

.field private static final MINIMUM_USER_STAMP:I = 0x2

.field public static final MINUTE:I = 0xc

.field static final MINUTE_MASK:I = 0x1000

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field static final MONTH_MASK:I = 0x4

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field static final SECOND_MASK:I = 0x2000

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field private static final UNSET:I = 0x0

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field static final WEEK_OF_MONTH_MASK:I = 0x10

.field public static final WEEK_OF_YEAR:I = 0x3

.field static final WEEK_OF_YEAR_MASK:I = 0x8

.field public static final YEAR:I = 0x1

.field static final YEAR_MASK:I = 0x2

.field public static final ZONE_OFFSET:I = 0xf

.field static final ZONE_OFFSET_MASK:I = 0x8000

.field private static final cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/Locale;",
            "[I>;"
        }
    .end annotation
.end field

.field static final currentSerialVersion:I = 0x1

.field static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field transient areAllFieldsSet:Z

.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field private nextStamp:I

.field private serialVersionOnStream:I

.field private transient sharedZone:Z

.field private transient stamp:[I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v2, 0x1

    #@2
    const/4 v1, 0x0

    #@3
    const-class v0, Ljava/util/Calendar;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@8
    move-result v0

    #@9
    if-eqz v0, :cond_0

    #@b
    move v0, v1

    #@c
    :goto_0
    sput-boolean v0, Ljava/util/Calendar;->-assertionsDisabled:Z

    #@e
    .line 842
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@10
    invoke-direct {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@13
    .line 841
    sput-object v0, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@15
    .line 2502
    const/16 v0, 0x11

    #@17
    new-array v0, v0, [Ljava/lang/String;

    #@19
    .line 2503
    const-string/jumbo v3, "ERA"

    #@1c
    aput-object v3, v0, v1

    #@1e
    const-string/jumbo v1, "YEAR"

    #@21
    aput-object v1, v0, v2

    #@23
    const-string/jumbo v1, "MONTH"

    #@26
    const/4 v2, 0x2

    #@27
    aput-object v1, v0, v2

    #@29
    const-string/jumbo v1, "WEEK_OF_YEAR"

    #@2c
    aput-object v1, v0, v4

    #@2e
    const-string/jumbo v1, "WEEK_OF_MONTH"

    #@31
    const/4 v2, 0x4

    #@32
    aput-object v1, v0, v2

    #@34
    const-string/jumbo v1, "DAY_OF_MONTH"

    #@37
    const/4 v2, 0x5

    #@38
    aput-object v1, v0, v2

    #@3a
    .line 2504
    const-string/jumbo v1, "DAY_OF_YEAR"

    #@3d
    const/4 v2, 0x6

    #@3e
    aput-object v1, v0, v2

    #@40
    const-string/jumbo v1, "DAY_OF_WEEK"

    #@43
    const/4 v2, 0x7

    #@44
    aput-object v1, v0, v2

    #@46
    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH"

    #@49
    const/16 v2, 0x8

    #@4b
    aput-object v1, v0, v2

    #@4d
    const-string/jumbo v1, "AM_PM"

    #@50
    const/16 v2, 0x9

    #@52
    aput-object v1, v0, v2

    #@54
    const-string/jumbo v1, "HOUR"

    #@57
    const/16 v2, 0xa

    #@59
    aput-object v1, v0, v2

    #@5b
    .line 2505
    const-string/jumbo v1, "HOUR_OF_DAY"

    #@5e
    const/16 v2, 0xb

    #@60
    aput-object v1, v0, v2

    #@62
    const-string/jumbo v1, "MINUTE"

    #@65
    const/16 v2, 0xc

    #@67
    aput-object v1, v0, v2

    #@69
    const-string/jumbo v1, "SECOND"

    #@6c
    const/16 v2, 0xd

    #@6e
    aput-object v1, v0, v2

    #@70
    const-string/jumbo v1, "MILLISECOND"

    #@73
    const/16 v2, 0xe

    #@75
    aput-object v1, v0, v2

    #@77
    const-string/jumbo v1, "ZONE_OFFSET"

    #@7a
    const/16 v2, 0xf

    #@7c
    aput-object v1, v0, v2

    #@7e
    .line 2506
    const-string/jumbo v1, "DST_OFFSET"

    #@81
    const/16 v2, 0x10

    #@83
    aput-object v1, v0, v2

    #@85
    .line 2502
    sput-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    #@87
    .line 309
    return-void

    #@88
    :cond_0
    move v0, v2

    #@89
    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 938
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@6
    invoke-static {v1}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@d
    .line 939
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    #@10
    .line 936
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/16 v1, 0x11

    #@3
    .line 948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 809
    iput-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    #@8
    .line 821
    const/4 v0, 0x0

    #@9
    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    #@b
    .line 874
    const/4 v0, 0x2

    #@c
    iput v0, p0, Ljava/util/Calendar;->nextStamp:I

    #@e
    .line 906
    iput v2, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    #@10
    .line 954
    if-nez p2, :cond_0

    #@12
    .line 955
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@15
    move-result-object p2

    #@16
    .line 957
    :cond_0
    new-array v0, v1, [I

    #@18
    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@1a
    .line 958
    new-array v0, v1, [Z

    #@1c
    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@1e
    .line 959
    new-array v0, v1, [I

    #@20
    iput-object v0, p0, Ljava/util/Calendar;->stamp:[I

    #@22
    .line 961
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@24
    .line 962
    invoke-direct {p0, p2}, Ljava/util/Calendar;->setWeekCountData(Ljava/util/Locale;)V

    #@27
    .line 948
    return-void
.end method

.method private final adjustStamp()V
    .locals 6

    #@0
    .prologue
    .line 2614
    const/4 v1, 0x2

    #@1
    .line 2615
    .local v1, "max":I
    const/4 v3, 0x2

    #@2
    .line 2618
    .local v3, "newStamp":I
    :cond_0
    const v2, 0x7fffffff

    #@5
    .line 2619
    .local v2, "min":I
    const/4 v0, 0x0

    #@6
    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    #@8
    array-length v5, v5

    #@9
    if-ge v0, v5, :cond_3

    #@b
    .line 2620
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    #@d
    aget v4, v5, v0

    #@f
    .line 2621
    .local v4, "v":I
    if-lt v4, v3, :cond_1

    #@11
    if-le v2, v4, :cond_1

    #@13
    .line 2622
    move v2, v4

    #@14
    .line 2624
    :cond_1
    if-ge v1, v4, :cond_2

    #@16
    .line 2625
    move v1, v4

    #@17
    .line 2619
    :cond_2
    add-int/lit8 v0, v0, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 2628
    .end local v4    # "v":I
    :cond_3
    if-eq v1, v2, :cond_4

    #@1c
    const v5, 0x7fffffff

    #@1f
    if-ne v2, v5, :cond_4

    #@21
    .line 2641
    :goto_1
    iput v3, p0, Ljava/util/Calendar;->nextStamp:I

    #@23
    .line 2613
    return-void

    #@24
    .line 2631
    :cond_4
    const/4 v0, 0x0

    #@25
    :goto_2
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    #@27
    array-length v5, v5

    #@28
    if-ge v0, v5, :cond_6

    #@2a
    .line 2632
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    #@2c
    aget v5, v5, v0

    #@2e
    if-ne v5, v2, :cond_5

    #@30
    .line 2633
    iget-object v5, p0, Ljava/util/Calendar;->stamp:[I

    #@32
    aput v3, v5, v0

    #@34
    .line 2631
    :cond_5
    add-int/lit8 v0, v0, 0x1

    #@36
    goto :goto_2

    #@37
    .line 2636
    :cond_6
    add-int/lit8 v3, v3, 0x1

    #@39
    .line 2637
    if-ne v2, v1, :cond_0

    #@3b
    goto :goto_1
.end method

.method private static final aggregateStamp(II)I
    .locals 1
    .param p0, "stamp_a"    # I
    .param p1, "stamp_b"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1858
    if-eqz p0, :cond_0

    #@3
    if-nez p1, :cond_1

    #@5
    .line 1859
    :cond_0
    return v0

    #@6
    .line 1861
    :cond_1
    if-le p0, p1, :cond_2

    #@8
    .end local p0    # "stamp_a":I
    :goto_0
    return p0

    #@9
    .restart local p0    # "stamp_a":I
    :cond_2
    move p0, p1

    #@a
    goto :goto_0
.end method

.method private static final appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V
    .locals 3
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "item"    # Ljava/lang/String;
    .param p2, "valid"    # Z
    .param p3, "value"    # J

    #@0
    .prologue
    .line 2554
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x3d

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    .line 2555
    if-eqz p2, :cond_0

    #@b
    .line 2556
    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@e
    .line 2553
    :goto_0
    return-void

    #@f
    .line 2558
    :cond_0
    const/16 v0, 0x3f

    #@11
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@14
    goto :goto_0
.end method

.method private compareTo(J)I
    .locals 3
    .param p1, "t"    # J

    #@0
    .prologue
    .line 2596
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    #@3
    move-result-wide v0

    #@4
    .line 2597
    .local v0, "thisTime":J
    cmp-long v2, v0, p1

    #@6
    if-lez v2, :cond_0

    #@8
    const/4 v2, 0x1

    #@9
    :goto_0
    return v2

    #@a
    :cond_0
    cmp-long v2, v0, p1

    #@c
    if-nez v2, :cond_1

    #@e
    const/4 v2, 0x0

    #@f
    goto :goto_0

    #@10
    :cond_1
    const/4 v2, -0x1

    #@11
    goto :goto_0
.end method

.method private static createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1025
    new-instance v0, Ljava/util/GregorianCalendar;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@5
    return-object v0
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    const-class v0, Ljava/util/Calendar;

    #@2
    monitor-enter v0

    #@3
    .line 1039
    :try_start_0
    invoke-static {}, Ljava/text/DateFormat;->getAvailableLocales()[Ljava/util/Locale;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result-object v1

    #@7
    monitor-exit v0

    #@8
    return-object v1

    #@9
    :catchall_0
    move-exception v1

    #@a
    monitor-exit v0

    #@b
    throw v1
.end method

.method private getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;
    .locals 6
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1482
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@4
    move-result-object v3

    #@5
    .line 1483
    .local v3, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v3}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    #@8
    move-result-object v2

    #@9
    .line 1484
    .local v2, "strings":[Ljava/lang/String;
    if-eqz v2, :cond_2

    #@b
    .line 1485
    new-instance v1, Ljava/util/HashMap;

    #@d
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    #@10
    .line 1486
    .local v1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    #@11
    .local v0, "i":I
    :goto_0
    array-length v4, v2

    #@12
    if-ge v0, v4, :cond_1

    #@14
    .line 1487
    aget-object v4, v2, v0

    #@16
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    #@19
    move-result v4

    #@1a
    if-nez v4, :cond_0

    #@1c
    .line 1486
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1490
    :cond_0
    aget-object v4, v2, v0

    #@21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@24
    move-result-object v5

    #@25
    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    goto :goto_1

    #@29
    .line 1492
    :cond_1
    return-object v1

    #@2a
    .line 1494
    .end local v0    # "i":I
    .end local v1    # "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_2
    return-object v4
.end method

.method static final getFieldName(I)Ljava/lang/String;
    .locals 1
    .param p0, "field"    # I

    #@0
    .prologue
    .line 2518
    sget-object v0, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    #@2
    aget-object v0, v0, p0

    #@4
    return-object v0
.end method

.method private getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;
    .locals 2
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "symbols"    # Ljava/text/DateFormatSymbols;

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 1510
    const/4 v0, 0x0

    #@2
    .line 1511
    .local v0, "strings":[Ljava/lang/String;
    sparse-switch p1, :sswitch_data_0

    #@5
    .line 1528
    .end local v0    # "strings":[Ljava/lang/String;
    :goto_0
    return-object v0

    #@6
    .line 1513
    .restart local v0    # "strings":[Ljava/lang/String;
    :sswitch_0
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    #@b
    .line 1517
    .local v0, "strings":[Ljava/lang/String;
    :sswitch_1
    if-ne p2, v1, :cond_0

    #@d
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    #@12
    .local v0, "strings":[Ljava/lang/String;
    :cond_0
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    #@17
    .line 1521
    .local v0, "strings":[Ljava/lang/String;
    :sswitch_2
    if-ne p2, v1, :cond_1

    #@19
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    #@1e
    .local v0, "strings":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    #@23
    .line 1525
    .local v0, "strings":[Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p3}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@26
    move-result-object v0

    #@27
    .local v0, "strings":[Ljava/lang/String;
    goto :goto_0

    #@28
    .line 1511
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
        0x9 -> :sswitch_3
    .end sparse-switch
.end method

.method public static getInstance()Ljava/util/Calendar;
    .locals 3

    #@0
    .prologue
    .line 974
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@3
    move-result-object v1

    #@4
    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@6
    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@9
    move-result-object v2

    #@a
    invoke-static {v1, v2}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    #@d
    move-result-object v0

    #@e
    .line 975
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    #@f
    iput-boolean v1, v0, Ljava/util/Calendar;->sharedZone:Z

    #@11
    .line 976
    return-object v0
.end method

.method public static getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1002
    invoke-static {}, Ljava/util/TimeZone;->getDefaultRef()Ljava/util/TimeZone;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1, p0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    #@7
    move-result-object v0

    #@8
    .line 1003
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    #@9
    iput-boolean v1, v0, Ljava/util/Calendar;->sharedZone:Z

    #@b
    .line 1004
    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 1
    .param p0, "zone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 989
    sget-object v0, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    #@2
    invoke-static {v0}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    #@5
    move-result-object v0

    #@6
    invoke-static {p0, v0}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 1
    .param p0, "zone"    # Ljava/util/TimeZone;
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 1019
    invoke-static {p0, p1}, Ljava/util/Calendar;->createCalendar(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static final getMillisOf(Ljava/util/Calendar;)J
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 2601
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    .line 2602
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    #@6
    return-wide v2

    #@7
    .line 2604
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@a
    move-result-object v0

    #@b
    check-cast v0, Ljava/util/Calendar;

    #@d
    .line 2605
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x1

    #@e
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setLenient(Z)V

    #@11
    .line 2606
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@14
    move-result-wide v2

    #@15
    return-wide v2
.end method

.method private invalidateWeekFields()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x4

    #@2
    const/4 v4, 0x3

    #@3
    .line 2650
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    #@5
    aget v3, v3, v5

    #@7
    if-eq v3, v6, :cond_0

    #@9
    .line 2651
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    #@b
    aget v3, v3, v4

    #@d
    if-eq v3, v6, :cond_0

    #@f
    .line 2652
    return-void

    #@10
    .line 2658
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Ljava/util/Calendar;

    #@16
    .line 2659
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->setLenient(Z)V

    #@19
    .line 2660
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->clear(I)V

    #@1c
    .line 2661
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->clear(I)V

    #@1f
    .line 2663
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    #@21
    aget v3, v3, v5

    #@23
    if-ne v3, v6, :cond_1

    #@25
    .line 2664
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    #@28
    move-result v1

    #@29
    .line 2665
    .local v1, "weekOfMonth":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    #@2b
    aget v3, v3, v5

    #@2d
    if-eq v3, v1, :cond_1

    #@2f
    .line 2666
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    #@31
    aput v1, v3, v5

    #@33
    .line 2670
    .end local v1    # "weekOfMonth":I
    :cond_1
    iget-object v3, p0, Ljava/util/Calendar;->stamp:[I

    #@35
    aget v3, v3, v4

    #@37
    if-ne v3, v6, :cond_2

    #@39
    .line 2671
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    #@3c
    move-result v2

    #@3d
    .line 2672
    .local v2, "weekOfYear":I
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    #@3f
    aget v3, v3, v4

    #@41
    if-eq v3, v2, :cond_2

    #@43
    .line 2673
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    #@45
    aput v2, v3, v4

    #@47
    .line 2648
    .end local v2    # "weekOfYear":I
    :cond_2
    return-void
.end method

.method static final isFieldSet(II)Z
    .locals 3
    .param p0, "fieldMask"    # I
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 1676
    shl-int v2, v0, p1

    #@4
    and-int/2addr v2, p0

    #@5
    if-eqz v2, :cond_0

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    move v0, v1

    #@9
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 9
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    const/16 v8, 0x11

    #@4
    .line 2725
    move-object v2, p1

    #@5
    .line 2726
    .local v2, "input":Ljava/io/ObjectInputStream;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@8
    .line 2728
    new-array v4, v8, [I

    #@a
    iput-object v4, p0, Ljava/util/Calendar;->stamp:[I

    #@c
    .line 2733
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    #@e
    const/4 v7, 0x2

    #@f
    if-lt v4, v7, :cond_3

    #@11
    .line 2735
    iput-boolean v5, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@13
    .line 2736
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    #@15
    if-nez v4, :cond_0

    #@17
    new-array v4, v8, [I

    #@19
    iput-object v4, p0, Ljava/util/Calendar;->fields:[I

    #@1b
    .line 2737
    :cond_0
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    #@1d
    if-nez v4, :cond_1

    #@1f
    new-array v4, v8, [Z

    #@21
    iput-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    #@23
    .line 2745
    :cond_1
    iput v5, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    #@25
    .line 2751
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@27
    instance-of v4, v4, Ljava/util/SimpleTimeZone;

    #@29
    if-eqz v4, :cond_2

    #@2b
    .line 2752
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@2d
    invoke-virtual {v4}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    .line 2753
    .local v1, "id":Ljava/lang/String;
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@34
    move-result-object v3

    #@35
    .line 2754
    .local v3, "tz":Ljava/util/TimeZone;
    if-eqz v3, :cond_2

    #@37
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@39
    invoke-virtual {v3, v4}, Ljava/util/TimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    #@3c
    move-result v4

    #@3d
    if-eqz v4, :cond_2

    #@3f
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@46
    move-result v4

    #@47
    if-eqz v4, :cond_2

    #@49
    .line 2755
    iput-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@4b
    .line 2723
    .end local v1    # "id":Ljava/lang/String;
    .end local v3    # "tz":Ljava/util/TimeZone;
    :cond_2
    return-void

    #@4c
    .line 2739
    :cond_3
    iget v4, p0, Ljava/util/Calendar;->serialVersionOnStream:I

    #@4e
    if-ltz v4, :cond_1

    #@50
    .line 2741
    const/4 v0, 0x0

    #@51
    .local v0, "i":I
    :goto_0
    if-ge v0, v8, :cond_1

    #@53
    .line 2742
    iget-object v7, p0, Ljava/util/Calendar;->stamp:[I

    #@55
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    #@57
    aget-boolean v4, v4, v0

    #@59
    if-eqz v4, :cond_4

    #@5b
    move v4, v5

    #@5c
    :goto_1
    aput v4, v7, v0

    #@5e
    .line 2741
    add-int/lit8 v0, v0, 0x1

    #@60
    goto :goto_0

    #@61
    :cond_4
    move v4, v6

    #@62
    .line 2742
    goto :goto_1
.end method

.method private setWeekCountData(Ljava/util/Locale;)V
    .locals 5
    .param p1, "desiredLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 2571
    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@4
    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@7
    move-result-object v0

    #@8
    check-cast v0, [I

    #@a
    .line 2572
    .local v0, "data":[I
    if-nez v0, :cond_0

    #@c
    .line 2573
    invoke-static {p1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@f
    move-result-object v1

    #@10
    .line 2574
    .local v1, "localeData":Llibcore/icu/LocaleData;
    const/4 v2, 0x2

    #@11
    new-array v0, v2, [I

    #@13
    .line 2575
    iget-object v2, v1, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    #@15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@18
    move-result v2

    #@19
    aput v2, v0, v3

    #@1b
    .line 2576
    iget-object v2, v1, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    #@1d
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    #@20
    move-result v2

    #@21
    aput v2, v0, v4

    #@23
    .line 2577
    sget-object v2, Ljava/util/Calendar;->cachedLocaleData:Ljava/util/concurrent/ConcurrentMap;

    #@25
    invoke-interface {v2, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    .line 2579
    .end local v1    # "localeData":Llibcore/icu/LocaleData;
    :cond_0
    aget v2, v0, v3

    #@2a
    iput v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@2c
    .line 2580
    aget v2, v0, v4

    #@2e
    iput v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@30
    .line 2568
    return-void
.end method

.method private updateTime()V
    .locals 1

    #@0
    .prologue
    .line 2589
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    #@3
    .line 2592
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@6
    .line 2588
    return-void
.end method

.method private declared-synchronized writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 2696
    :try_start_0
    iget-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    if-nez v1, :cond_0

    #@5
    .line 2698
    :try_start_1
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@8
    .line 2704
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@b
    monitor-exit p0

    #@c
    .line 2692
    return-void

    #@d
    .line 2700
    :catch_0
    move-exception v0

    #@e
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    goto :goto_0

    #@f
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catchall_0
    move-exception v1

    #@10
    monitor-exit p0

    #@11
    throw v1
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "when"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1958
    instance-of v1, p1, Ljava/util/Calendar;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1959
    check-cast p1, Ljava/util/Calendar;

    #@7
    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    #@a
    move-result v1

    #@b
    if-lez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 1958
    :cond_0
    return v0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "when"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1937
    instance-of v1, p1, Ljava/util/Calendar;

    #@3
    if-eqz v1, :cond_0

    #@5
    .line 1938
    check-cast p1, Ljava/util/Calendar;

    #@7
    .end local p1    # "when":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    #@a
    move-result v1

    #@b
    if-gez v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 1937
    :cond_0
    return v0
.end method

.method checkDisplayNameParams(IIIILjava/util/Locale;I)Z
    .locals 1
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "minStyle"    # I
    .param p4, "maxStyle"    # I
    .param p5, "locale"    # Ljava/util/Locale;
    .param p6, "fieldMask"    # I

    #@0
    .prologue
    .line 1499
    if-ltz p1, :cond_0

    #@2
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@4
    array-length v0, v0

    #@5
    if-lt p1, v0, :cond_1

    #@7
    .line 1501
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@c
    throw v0

    #@d
    .line 1500
    :cond_1
    if-lt p2, p3, :cond_0

    #@f
    if-gt p2, p4, :cond_0

    #@11
    .line 1503
    if-nez p5, :cond_2

    #@13
    .line 1504
    new-instance v0, Ljava/lang/NullPointerException;

    #@15
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@18
    throw v0

    #@19
    .line 1506
    :cond_2
    invoke-static {p6, p1}, Ljava/util/Calendar;->isFieldSet(II)Z

    #@1c
    move-result v0

    #@1d
    return v0
.end method

.method public final clear()V
    .locals 5

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1301
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_0

    #@7
    .line 1302
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    #@9
    iget-object v3, p0, Ljava/util/Calendar;->fields:[I

    #@b
    aput v4, v3, v0

    #@d
    aput v4, v2, v0

    #@f
    .line 1303
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    #@11
    add-int/lit8 v1, v0, 0x1

    #@13
    .end local v0    # "i":I
    .local v1, "i":I
    aput-boolean v4, v2, v0

    #@15
    move v0, v1

    #@16
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    #@17
    .line 1305
    :cond_0
    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@19
    iput-boolean v4, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@1b
    .line 1306
    iput-boolean v4, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@1d
    .line 1299
    return-void
.end method

.method public final clear(I)V
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1332
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@3
    aput v1, v0, p1

    #@5
    .line 1333
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    #@7
    aput v1, v0, p1

    #@9
    .line 1334
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@b
    aput-boolean v1, v0, p1

    #@d
    .line 1336
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@f
    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@11
    .line 1337
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@13
    .line 1330
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 6

    #@0
    .prologue
    const/16 v5, 0x11

    #@2
    .line 2483
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@5
    move-result-object v2

    #@6
    check-cast v2, Ljava/util/Calendar;

    #@8
    .line 2485
    .local v2, "other":Ljava/util/Calendar;
    const/16 v3, 0x11

    #@a
    new-array v3, v3, [I

    #@c
    iput-object v3, v2, Ljava/util/Calendar;->fields:[I

    #@e
    .line 2486
    const/16 v3, 0x11

    #@10
    new-array v3, v3, [Z

    #@12
    iput-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    #@14
    .line 2487
    const/16 v3, 0x11

    #@16
    new-array v3, v3, [I

    #@18
    iput-object v3, v2, Ljava/util/Calendar;->stamp:[I

    #@1a
    .line 2488
    const/4 v1, 0x0

    #@1b
    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_0

    #@1d
    .line 2489
    iget-object v3, v2, Ljava/util/Calendar;->fields:[I

    #@1f
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    #@21
    aget v4, v4, v1

    #@23
    aput v4, v3, v1

    #@25
    .line 2490
    iget-object v3, v2, Ljava/util/Calendar;->stamp:[I

    #@27
    iget-object v4, p0, Ljava/util/Calendar;->stamp:[I

    #@29
    aget v4, v4, v1

    #@2b
    aput v4, v3, v1

    #@2d
    .line 2491
    iget-object v3, v2, Ljava/util/Calendar;->isSet:[Z

    #@2f
    iget-object v4, p0, Ljava/util/Calendar;->isSet:[Z

    #@31
    aget-boolean v4, v4, v1

    #@33
    aput-boolean v4, v3, v1

    #@35
    .line 2488
    add-int/lit8 v1, v1, 0x1

    #@37
    goto :goto_0

    #@38
    .line 2493
    :cond_0
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@3a
    invoke-virtual {v3}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@3d
    move-result-object v3

    #@3e
    check-cast v3, Ljava/util/TimeZone;

    #@40
    iput-object v3, v2, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@42
    .line 2494
    return-object v2

    #@43
    .line 2496
    .end local v1    # "i":I
    .end local v2    # "other":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    #@44
    .line 2498
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v3, Ljava/lang/InternalError;

    #@46
    invoke-direct {v3}, Ljava/lang/InternalError;-><init>()V

    #@49
    throw v3
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherCalendar"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1981
    check-cast p1, Ljava/util/Calendar;

    #@2
    .end local p1    # "anotherCalendar":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->compareTo(Ljava/util/Calendar;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public compareTo(Ljava/util/Calendar;)I
    .locals 2
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 1982
    invoke-static {p1}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    #@3
    move-result-wide v0

    #@4
    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;->compareTo(J)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected complete()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 1540
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 1541
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    #@8
    .line 1542
    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@a
    if-eqz v0, :cond_1

    #@c
    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 1538
    :goto_0
    return-void

    #@11
    .line 1543
    :cond_1
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    #@14
    .line 1544
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@16
    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@18
    goto :goto_0
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 1887
    if-ne p0, p1, :cond_0

    #@3
    .line 1888
    const/4 v4, 0x1

    #@4
    return v4

    #@5
    .line 1890
    :cond_0
    :try_start_0
    move-object v0, p1

    #@6
    check-cast v0, Ljava/util/Calendar;

    #@8
    move-object v3, v0

    #@9
    .line 1891
    .local v3, "that":Ljava/util/Calendar;
    invoke-static {v3}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    #@c
    move-result-wide v6

    #@d
    invoke-direct {p0, v6, v7}, Ljava/util/Calendar;->compareTo(J)I

    #@10
    move-result v5

    #@11
    if-nez v5, :cond_1

    #@13
    .line 1892
    iget-boolean v5, p0, Ljava/util/Calendar;->lenient:Z

    #@15
    iget-boolean v6, v3, Ljava/util/Calendar;->lenient:Z

    #@17
    if-ne v5, v6, :cond_1

    #@19
    .line 1893
    iget v5, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@1b
    iget v6, v3, Ljava/util/Calendar;->firstDayOfWeek:I

    #@1d
    if-ne v5, v6, :cond_1

    #@1f
    .line 1894
    iget v5, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@21
    iget v6, v3, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@23
    if-ne v5, v6, :cond_1

    #@25
    .line 1895
    iget-object v5, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@27
    iget-object v6, v3, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@29
    invoke-virtual {v5, v6}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@2c
    move-result v4

    #@2d
    .line 1891
    :cond_1
    return v4

    #@2e
    .line 1896
    .end local v3    # "that":Ljava/util/Calendar;
    :catch_0
    move-exception v2

    #@2f
    .line 1901
    .local v2, "e":Ljava/lang/Exception;
    return v4
.end method

.method public get(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1144
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@3
    .line 1145
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->internalGet(I)I

    #@6
    move-result v0

    #@7
    return v0
.end method

.method public getActualMaximum(I)I
    .locals 6
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2439
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    #@3
    move-result v1

    #@4
    .line 2440
    .local v1, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    #@7
    move-result v0

    #@8
    .line 2443
    .local v0, "endValue":I
    if-ne v1, v0, :cond_0

    #@a
    .line 2444
    return v1

    #@b
    .line 2449
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/util/Calendar;

    #@11
    .line 2450
    .local v3, "work":Ljava/util/Calendar;
    const/4 v4, 0x1

    #@12
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    #@15
    .line 2454
    const/4 v4, 0x3

    #@16
    if-eq p1, v4, :cond_1

    #@18
    const/4 v4, 0x4

    #@19
    if-ne p1, v4, :cond_2

    #@1b
    .line 2455
    :cond_1
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@1d
    const/4 v5, 0x7

    #@1e
    invoke-virtual {v3, v5, v4}, Ljava/util/Calendar;->set(II)V

    #@21
    .line 2460
    :cond_2
    move v2, v1

    #@22
    .line 2463
    .local v2, "result":I
    :goto_0
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    #@25
    .line 2464
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    #@28
    move-result v4

    #@29
    if-eq v4, v1, :cond_4

    #@2b
    .line 2472
    :cond_3
    return v2

    #@2c
    .line 2467
    :cond_4
    move v2, v1

    #@2d
    .line 2468
    add-int/lit8 v1, v1, 0x1

    #@2f
    .line 2470
    if-gt v1, v0, :cond_3

    #@31
    goto :goto_0
.end method

.method public getActualMinimum(I)I
    .locals 5
    .param p1, "field"    # I

    #@0
    .prologue
    .line 2385
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    #@3
    move-result v1

    #@4
    .line 2386
    .local v1, "fieldValue":I
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    #@7
    move-result v0

    #@8
    .line 2389
    .local v0, "endValue":I
    if-ne v1, v0, :cond_0

    #@a
    .line 2390
    return v1

    #@b
    .line 2395
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, Ljava/util/Calendar;

    #@11
    .line 2396
    .local v3, "work":Ljava/util/Calendar;
    const/4 v4, 0x1

    #@12
    invoke-virtual {v3, v4}, Ljava/util/Calendar;->setLenient(Z)V

    #@15
    .line 2401
    move v2, v1

    #@16
    .line 2404
    .local v2, "result":I
    :goto_0
    invoke-virtual {v3, p1, v1}, Ljava/util/Calendar;->set(II)V

    #@19
    .line 2405
    invoke-virtual {v3, p1}, Ljava/util/Calendar;->get(I)I

    #@1c
    move-result v4

    #@1d
    if-eq v4, v1, :cond_2

    #@1f
    .line 2413
    :cond_1
    return v2

    #@20
    .line 2408
    :cond_2
    move v2, v1

    #@21
    .line 2409
    add-int/lit8 v1, v1, -0x1

    #@23
    .line 2411
    if-lt v1, v0, :cond_1

    #@25
    goto :goto_0
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 1395
    const/4 v3, 0x0

    #@2
    const/4 v4, 0x2

    #@3
    .line 1396
    const/16 v6, 0x285

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move-object v5, p3

    #@9
    .line 1395
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1397
    return-object v10

    #@10
    .line 1400
    :cond_0
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@13
    move-result-object v9

    #@14
    .line 1401
    .local v9, "symbols":Ljava/text/DateFormatSymbols;
    invoke-direct {p0, p1, p2, v9}, Ljava/util/Calendar;->getFieldStrings(IILjava/text/DateFormatSymbols;)[Ljava/lang/String;

    #@17
    move-result-object v8

    #@18
    .line 1402
    .local v8, "strings":[Ljava/lang/String;
    if-eqz v8, :cond_1

    #@1a
    .line 1403
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    #@1d
    move-result v7

    #@1e
    .line 1404
    .local v7, "fieldValue":I
    array-length v0, v8

    #@1f
    if-ge v7, v0, :cond_1

    #@21
    .line 1405
    aget-object v0, v8, v7

    #@23
    return-object v0

    #@24
    .line 1408
    .end local v7    # "fieldValue":I
    :cond_1
    return-object v10
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 10
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, 0x2

    #@1
    const/4 v9, 0x0

    #@2
    const/4 v3, 0x0

    #@3
    .line 1456
    const/16 v6, 0x285

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move v2, p2

    #@8
    move-object v5, p3

    #@9
    .line 1455
    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    #@c
    move-result v0

    #@d
    if-nez v0, :cond_0

    #@f
    .line 1457
    return-object v9

    #@10
    .line 1459
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@13
    .line 1462
    if-nez p2, :cond_5

    #@15
    .line 1463
    const/4 v0, 0x1

    #@16
    invoke-direct {p0, p1, v0, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    #@19
    move-result-object v8

    #@1a
    .line 1464
    .local v8, "shortNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    #@1c
    const/16 v0, 0x9

    #@1e
    if-ne p1, v0, :cond_2

    #@20
    .line 1465
    :cond_1
    return-object v8

    #@21
    .line 1467
    :cond_2
    invoke-direct {p0, p1, v4, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    #@24
    move-result-object v7

    #@25
    .line 1468
    .local v7, "longNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez v8, :cond_3

    #@27
    .line 1469
    return-object v7

    #@28
    .line 1471
    :cond_3
    if-eqz v7, :cond_4

    #@2a
    .line 1472
    invoke-interface {v8, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    #@2d
    .line 1474
    :cond_4
    return-object v8

    #@2e
    .line 1478
    .end local v7    # "longNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v8    # "shortNames":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_5
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNamesImpl(IILjava/util/Locale;)Ljava/util/Map;

    #@31
    move-result-object v0

    #@32
    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 2158
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@2
    return v0
.end method

.method public abstract getGreatestMinimum(I)I
.end method

.method public abstract getLeastMaximum(I)I
.end method

.method public abstract getMaximum(I)I
.end method

.method public getMinimalDaysInFirstWeek()I
    .locals 1

    #@0
    .prologue
    .line 2192
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@2
    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method final getSetStateFields()I
    .locals 3

    #@0
    .prologue
    .line 1572
    const/4 v1, 0x0

    #@1
    .line 1573
    .local v1, "mask":I
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    #@4
    array-length v2, v2

    #@5
    if-ge v0, v2, :cond_1

    #@7
    .line 1574
    iget-object v2, p0, Ljava/util/Calendar;->stamp:[I

    #@9
    aget v2, v2, v0

    #@b
    if-eqz v2, :cond_0

    #@d
    .line 1575
    const/4 v2, 0x1

    #@e
    shl-int/2addr v2, v0

    #@f
    or-int/2addr v1, v2

    #@10
    .line 1573
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@12
    goto :goto_0

    #@13
    .line 1578
    :cond_1
    return v1
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 1074
    new-instance v0, Ljava/util/Date;

    #@2
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

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
    .line 1100
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1101
    invoke-direct {p0}, Ljava/util/Calendar;->updateTime()V

    #@7
    .line 1103
    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    #@9
    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 2081
    iget-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 2082
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@6
    invoke-virtual {v0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Ljava/util/TimeZone;

    #@c
    iput-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@e
    .line 2083
    const/4 v0, 0x0

    #@f
    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    #@11
    .line 2085
    :cond_0
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@13
    return-object v0
.end method

.method public getWeekYear()I
    .locals 1

    #@0
    .prologue
    .line 2230
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method public getWeeksInWeekYear()I
    .locals 1

    #@0
    .prologue
    .line 2287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method getZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 2092
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 6

    #@0
    .prologue
    .line 1912
    iget-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    #@2
    if-eqz v1, :cond_0

    #@4
    const/4 v1, 0x1

    #@5
    .line 1913
    :goto_0
    iget v4, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@7
    shl-int/lit8 v4, v4, 0x1

    #@9
    .line 1912
    or-int/2addr v1, v4

    #@a
    .line 1914
    iget v4, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@c
    shl-int/lit8 v4, v4, 0x4

    #@e
    .line 1912
    or-int/2addr v1, v4

    #@f
    .line 1915
    iget-object v4, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@11
    invoke-virtual {v4}, Ljava/util/TimeZone;->hashCode()I

    #@14
    move-result v4

    #@15
    shl-int/lit8 v4, v4, 0x7

    #@17
    .line 1912
    or-int v0, v1, v4

    #@19
    .line 1916
    .local v0, "otheritems":I
    invoke-static {p0}, Ljava/util/Calendar;->getMillisOf(Ljava/util/Calendar;)J

    #@1c
    move-result-wide v2

    #@1d
    .line 1917
    .local v2, "t":J
    long-to-int v1, v2

    #@1e
    const/16 v4, 0x20

    #@20
    shr-long v4, v2, v4

    #@22
    long-to-int v4, v4

    #@23
    xor-int/2addr v1, v4

    #@24
    xor-int/2addr v1, v0

    #@25
    return v1

    #@26
    .line 1912
    .end local v0    # "otheritems":I
    .end local v2    # "t":J
    :cond_0
    const/4 v1, 0x0

    #@27
    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1158
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method final internalSet(II)V
    .locals 1
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1175
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@2
    aput p2, v0, p1

    #@4
    .line 1173
    return-void
.end method

.method final isExternallySet(I)Z
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1562
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    #@2
    aget v0, v0, p1

    #@4
    const/4 v1, 0x2

    #@5
    if-lt v0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/4 v0, 0x0

    #@a
    goto :goto_0
.end method

.method final isFullyNormalized()Z
    .locals 1

    #@0
    .prologue
    .line 1661
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 2128
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    #@2
    return v0
.end method

.method final isPartiallyNormalized()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1653
    iget-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@3
    if-eqz v1, :cond_0

    #@5
    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@7
    if-eqz v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    :cond_1
    const/4 v0, 0x1

    #@b
    goto :goto_0
.end method

.method public final isSet(I)Z
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1350
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    #@3
    aget v1, v1, p1

    #@5
    if-eqz v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method public isWeekDateSupported()Z
    .locals 1

    #@0
    .prologue
    .line 2208
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public roll(II)V
    .locals 2
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 2041
    :goto_0
    if-lez p2, :cond_0

    #@3
    .line 2042
    const/4 v0, 0x1

    #@4
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->roll(IZ)V

    #@7
    .line 2043
    add-int/lit8 p2, p2, -0x1

    #@9
    goto :goto_0

    #@a
    .line 2045
    :cond_0
    :goto_1
    if-gez p2, :cond_1

    #@c
    .line 2046
    invoke-virtual {p0, p1, v1}, Ljava/util/Calendar;->roll(IZ)V

    #@f
    .line 2047
    add-int/lit8 p2, p2, 0x1

    #@11
    goto :goto_1

    #@12
    .line 2039
    :cond_1
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method final selectFields()I
    .locals 14

    #@0
    .prologue
    .line 1707
    const/4 v5, 0x2

    #@1
    .line 1709
    .local v5, "fieldMask":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@3
    const/4 v12, 0x0

    #@4
    aget v11, v11, v12

    #@6
    if-eqz v11, :cond_0

    #@8
    .line 1710
    const/4 v5, 0x3

    #@9
    .line 1724
    :cond_0
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@b
    const/4 v12, 0x7

    #@c
    aget v2, v11, v12

    #@e
    .line 1725
    .local v2, "dowStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@10
    const/4 v12, 0x2

    #@11
    aget v8, v11, v12

    #@13
    .line 1726
    .local v8, "monthStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@15
    const/4 v12, 0x5

    #@16
    aget v1, v11, v12

    #@18
    .line 1727
    .local v1, "domStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@1a
    const/4 v12, 0x4

    #@1b
    aget v11, v11, v12

    #@1d
    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    #@20
    move-result v9

    #@21
    .line 1728
    .local v9, "womStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@23
    const/16 v12, 0x8

    #@25
    aget v11, v11, v12

    #@27
    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    #@2a
    move-result v3

    #@2b
    .line 1729
    .local v3, "dowimStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@2d
    const/4 v12, 0x6

    #@2e
    aget v4, v11, v12

    #@30
    .line 1730
    .local v4, "doyStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@32
    const/4 v12, 0x3

    #@33
    aget v11, v11, v12

    #@35
    invoke-static {v11, v2}, Ljava/util/Calendar;->aggregateStamp(II)I

    #@38
    move-result v10

    #@39
    .line 1732
    .local v10, "woyStamp":I
    move v0, v1

    #@3a
    .line 1733
    .local v0, "bestStamp":I
    if-le v9, v1, :cond_1

    #@3c
    .line 1734
    move v0, v9

    #@3d
    .line 1736
    :cond_1
    if-le v3, v0, :cond_2

    #@3f
    .line 1737
    move v0, v3

    #@40
    .line 1739
    :cond_2
    if-le v4, v0, :cond_3

    #@42
    .line 1740
    move v0, v4

    #@43
    .line 1742
    :cond_3
    if-le v10, v0, :cond_4

    #@45
    .line 1743
    move v0, v10

    #@46
    .line 1750
    :cond_4
    if-nez v0, :cond_5

    #@48
    .line 1751
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@4a
    const/4 v12, 0x4

    #@4b
    aget v9, v11, v12

    #@4d
    .line 1752
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@4f
    const/16 v12, 0x8

    #@51
    aget v11, v11, v12

    #@53
    invoke-static {v11, v2}, Ljava/lang/Math;->max(II)I

    #@56
    move-result v3

    #@57
    .line 1753
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@59
    const/4 v12, 0x3

    #@5a
    aget v10, v11, v12

    #@5c
    .line 1754
    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    #@5f
    move-result v11

    #@60
    invoke-static {v11, v10}, Ljava/lang/Math;->max(II)I

    #@63
    move-result v0

    #@64
    .line 1760
    if-nez v0, :cond_5

    #@66
    .line 1761
    move v1, v8

    #@67
    move v0, v8

    #@68
    .line 1765
    :cond_5
    if-eq v0, v1, :cond_6

    #@6a
    .line 1766
    if-ne v0, v9, :cond_f

    #@6c
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@6e
    const/4 v12, 0x4

    #@6f
    aget v11, v11, v12

    #@71
    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    #@73
    const/4 v13, 0x3

    #@74
    aget v12, v12, v13

    #@76
    if-lt v11, v12, :cond_f

    #@78
    .line 1768
    :cond_6
    or-int/lit8 v5, v5, 0x4

    #@7a
    .line 1769
    if-ne v0, v1, :cond_12

    #@7c
    .line 1770
    or-int/lit8 v5, v5, 0x20

    #@7e
    .line 1812
    :cond_7
    :goto_0
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@80
    const/16 v12, 0xb

    #@82
    aget v6, v11, v12

    #@84
    .line 1813
    .local v6, "hourOfDayStamp":I
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@86
    const/16 v12, 0xa

    #@88
    aget v11, v11, v12

    #@8a
    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    #@8c
    const/16 v13, 0x9

    #@8e
    aget v12, v12, v13

    #@90
    invoke-static {v11, v12}, Ljava/util/Calendar;->aggregateStamp(II)I

    #@93
    move-result v7

    #@94
    .line 1814
    .local v7, "hourStamp":I
    if-le v7, v6, :cond_23

    #@96
    move v0, v7

    #@97
    .line 1817
    :goto_1
    if-nez v0, :cond_8

    #@99
    .line 1818
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@9b
    const/16 v12, 0xa

    #@9d
    aget v11, v11, v12

    #@9f
    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    #@a1
    const/16 v13, 0x9

    #@a3
    aget v12, v12, v13

    #@a5
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    #@a8
    move-result v0

    #@a9
    .line 1822
    :cond_8
    if-eqz v0, :cond_9

    #@ab
    .line 1823
    if-ne v0, v6, :cond_24

    #@ad
    .line 1824
    or-int/lit16 v5, v5, 0x800

    #@af
    .line 1832
    :cond_9
    :goto_2
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@b1
    const/16 v12, 0xc

    #@b3
    aget v11, v11, v12

    #@b5
    if-eqz v11, :cond_a

    #@b7
    .line 1833
    or-int/lit16 v5, v5, 0x1000

    #@b9
    .line 1835
    :cond_a
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@bb
    const/16 v12, 0xd

    #@bd
    aget v11, v11, v12

    #@bf
    if-eqz v11, :cond_b

    #@c1
    .line 1836
    or-int/lit16 v5, v5, 0x2000

    #@c3
    .line 1838
    :cond_b
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@c5
    const/16 v12, 0xe

    #@c7
    aget v11, v11, v12

    #@c9
    if-eqz v11, :cond_c

    #@cb
    .line 1839
    or-int/lit16 v5, v5, 0x4000

    #@cd
    .line 1841
    :cond_c
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@cf
    const/16 v12, 0xf

    #@d1
    aget v11, v11, v12

    #@d3
    const/4 v12, 0x2

    #@d4
    if-lt v11, v12, :cond_d

    #@d6
    .line 1842
    const v11, 0x8000

    #@d9
    or-int/2addr v5, v11

    #@da
    .line 1844
    :cond_d
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@dc
    const/16 v12, 0x10

    #@de
    aget v11, v11, v12

    #@e0
    const/4 v12, 0x2

    #@e1
    if-lt v11, v12, :cond_e

    #@e3
    .line 1845
    const/high16 v11, 0x10000

    #@e5
    or-int/2addr v5, v11

    #@e6
    .line 1848
    :cond_e
    return v5

    #@e7
    .line 1767
    .end local v6    # "hourOfDayStamp":I
    .end local v7    # "hourStamp":I
    :cond_f
    if-ne v0, v3, :cond_10

    #@e9
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@eb
    const/16 v12, 0x8

    #@ed
    aget v11, v11, v12

    #@ef
    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    #@f1
    const/4 v13, 0x3

    #@f2
    aget v12, v12, v13

    #@f4
    if-ge v11, v12, :cond_6

    #@f6
    .line 1796
    :cond_10
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    #@f8
    if-nez v11, :cond_1e

    #@fa
    if-eq v0, v4, :cond_11

    #@fc
    if-ne v0, v10, :cond_1c

    #@fe
    :cond_11
    const/4 v11, 0x1

    #@ff
    :goto_3
    if-nez v11, :cond_1e

    #@101
    new-instance v11, Ljava/lang/AssertionError;

    #@103
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@106
    throw v11

    #@107
    .line 1772
    :cond_12
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    #@109
    if-nez v11, :cond_15

    #@10b
    if-eq v0, v9, :cond_13

    #@10d
    if-ne v0, v3, :cond_14

    #@10f
    :cond_13
    const/4 v11, 0x1

    #@110
    :goto_4
    if-nez v11, :cond_15

    #@112
    new-instance v11, Ljava/lang/AssertionError;

    #@114
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@117
    throw v11

    #@118
    :cond_14
    const/4 v11, 0x0

    #@119
    goto :goto_4

    #@11a
    .line 1773
    :cond_15
    if-eqz v2, :cond_16

    #@11c
    .line 1774
    or-int/lit16 v5, v5, 0x80

    #@11e
    .line 1776
    :cond_16
    if-ne v9, v3, :cond_18

    #@120
    .line 1779
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@122
    const/4 v12, 0x4

    #@123
    aget v11, v11, v12

    #@125
    iget-object v12, p0, Ljava/util/Calendar;->stamp:[I

    #@127
    const/16 v13, 0x8

    #@129
    aget v12, v12, v13

    #@12b
    if-lt v11, v12, :cond_17

    #@12d
    .line 1780
    or-int/lit8 v5, v5, 0x10

    #@12f
    goto/16 :goto_0

    #@131
    .line 1782
    :cond_17
    or-int/lit16 v5, v5, 0x100

    #@133
    goto/16 :goto_0

    #@135
    .line 1785
    :cond_18
    if-ne v0, v9, :cond_19

    #@137
    .line 1786
    or-int/lit8 v5, v5, 0x10

    #@139
    goto/16 :goto_0

    #@13b
    .line 1788
    :cond_19
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    #@13d
    if-nez v11, :cond_1b

    #@13f
    if-ne v0, v3, :cond_1a

    #@141
    const/4 v11, 0x1

    #@142
    :goto_5
    if-nez v11, :cond_1b

    #@144
    new-instance v11, Ljava/lang/AssertionError;

    #@146
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@149
    throw v11

    #@14a
    :cond_1a
    const/4 v11, 0x0

    #@14b
    goto :goto_5

    #@14c
    .line 1789
    :cond_1b
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@14e
    const/16 v12, 0x8

    #@150
    aget v11, v11, v12

    #@152
    if-eqz v11, :cond_7

    #@154
    .line 1790
    or-int/lit16 v5, v5, 0x100

    #@156
    goto/16 :goto_0

    #@158
    .line 1797
    :cond_1c
    if-nez v0, :cond_1d

    #@15a
    const/4 v11, 0x1

    #@15b
    goto :goto_3

    #@15c
    :cond_1d
    const/4 v11, 0x0

    #@15d
    goto :goto_3

    #@15e
    .line 1798
    :cond_1e
    if-ne v0, v4, :cond_1f

    #@160
    .line 1799
    or-int/lit8 v5, v5, 0x40

    #@162
    goto/16 :goto_0

    #@164
    .line 1801
    :cond_1f
    sget-boolean v11, Ljava/util/Calendar;->-assertionsDisabled:Z

    #@166
    if-nez v11, :cond_21

    #@168
    if-ne v0, v10, :cond_20

    #@16a
    const/4 v11, 0x1

    #@16b
    :goto_6
    if-nez v11, :cond_21

    #@16d
    new-instance v11, Ljava/lang/AssertionError;

    #@16f
    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    #@172
    throw v11

    #@173
    :cond_20
    const/4 v11, 0x0

    #@174
    goto :goto_6

    #@175
    .line 1802
    :cond_21
    if-eqz v2, :cond_22

    #@177
    .line 1803
    or-int/lit16 v5, v5, 0x80

    #@179
    .line 1805
    :cond_22
    or-int/lit8 v5, v5, 0x8

    #@17b
    goto/16 :goto_0

    #@17d
    .restart local v6    # "hourOfDayStamp":I
    .restart local v7    # "hourStamp":I
    :cond_23
    move v0, v6

    #@17e
    .line 1814
    goto/16 :goto_1

    #@180
    .line 1826
    :cond_24
    or-int/lit16 v5, v5, 0x400

    #@182
    .line 1827
    iget-object v11, p0, Ljava/util/Calendar;->stamp:[I

    #@184
    const/16 v12, 0x9

    #@186
    aget v11, v11, v12

    #@188
    if-eqz v11, :cond_9

    #@18a
    .line 1828
    or-int/lit16 v5, v5, 0x200

    #@18c
    goto/16 :goto_2
.end method

.method public set(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 1196
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@3
    if-eqz v0, :cond_0

    #@5
    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@7
    if-eqz v0, :cond_2

    #@9
    .line 1199
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/Calendar;->internalSet(II)V

    #@c
    .line 1200
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@e
    .line 1201
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@10
    .line 1202
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@12
    const/4 v1, 0x1

    #@13
    aput-boolean v1, v0, p1

    #@15
    .line 1203
    iget-object v0, p0, Ljava/util/Calendar;->stamp:[I

    #@17
    iget v1, p0, Ljava/util/Calendar;->nextStamp:I

    #@19
    add-int/lit8 v2, v1, 0x1

    #@1b
    iput v2, p0, Ljava/util/Calendar;->nextStamp:I

    #@1d
    aput v1, v0, p1

    #@1f
    .line 1204
    iget v0, p0, Ljava/util/Calendar;->nextStamp:I

    #@21
    const v1, 0x7fffffff

    #@24
    if-ne v0, v1, :cond_1

    #@26
    .line 1205
    invoke-direct {p0}, Ljava/util/Calendar;->adjustStamp()V

    #@29
    .line 1192
    :cond_1
    return-void

    #@2a
    .line 1197
    :cond_2
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    #@2d
    goto :goto_0
.end method

.method public final set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 1225
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    #@4
    .line 1226
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 1227
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    #@c
    .line 1223
    return-void
.end method

.method public final set(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    #@0
    .prologue
    .line 1249
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    #@4
    .line 1250
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 1251
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    #@c
    .line 1252
    const/16 v0, 0xb

    #@e
    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 1253
    const/16 v0, 0xc

    #@13
    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    #@16
    .line 1247
    return-void
.end method

.method public final set(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 1277
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    #@4
    .line 1278
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 1279
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    #@c
    .line 1280
    const/16 v0, 0xb

    #@e
    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    #@11
    .line 1281
    const/16 v0, 0xc

    #@13
    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    #@16
    .line 1282
    const/16 v0, 0xd

    #@18
    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    #@1b
    .line 1275
    return-void
.end method

.method final setFieldsComputed(I)V
    .locals 3
    .param p1, "fieldMask"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1595
    const v1, 0x1ffff

    #@4
    if-ne p1, v1, :cond_2

    #@6
    .line 1596
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_0

    #@c
    .line 1597
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    #@e
    aput v2, v1, v0

    #@10
    .line 1598
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    #@12
    aput-boolean v2, v1, v0

    #@14
    .line 1596
    add-int/lit8 v0, v0, 0x1

    #@16
    goto :goto_0

    #@17
    .line 1600
    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@19
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@1b
    .line 1594
    :cond_1
    return-void

    #@1c
    .line 1602
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    #@1d
    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    #@1f
    array-length v1, v1

    #@20
    if-ge v0, v1, :cond_1

    #@22
    .line 1603
    and-int/lit8 v1, p1, 0x1

    #@24
    if-ne v1, v2, :cond_4

    #@26
    .line 1604
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    #@28
    aput v2, v1, v0

    #@2a
    .line 1605
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    #@2c
    aput-boolean v2, v1, v0

    #@2e
    .line 1611
    :cond_3
    :goto_2
    ushr-int/lit8 p1, p1, 0x1

    #@30
    .line 1602
    add-int/lit8 v0, v0, 0x1

    #@32
    goto :goto_1

    #@33
    .line 1607
    :cond_4
    iget-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@35
    if-eqz v1, :cond_3

    #@37
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    #@39
    aget-boolean v1, v1, v0

    #@3b
    if-nez v1, :cond_3

    #@3d
    .line 1608
    const/4 v1, 0x0

    #@3e
    iput-boolean v1, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@40
    goto :goto_2
.end method

.method final setFieldsNormalized(I)V
    .locals 4
    .param p1, "fieldMask"    # I

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1632
    const v1, 0x1ffff

    #@4
    if-eq p1, v1, :cond_1

    #@6
    .line 1633
    const/4 v0, 0x0

    #@7
    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    #@9
    array-length v1, v1

    #@a
    if-ge v0, v1, :cond_1

    #@c
    .line 1634
    and-int/lit8 v1, p1, 0x1

    #@e
    if-nez v1, :cond_0

    #@10
    .line 1635
    iget-object v1, p0, Ljava/util/Calendar;->stamp:[I

    #@12
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    #@14
    aput v3, v2, v0

    #@16
    aput v3, v1, v0

    #@18
    .line 1636
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    #@1a
    aput-boolean v3, v1, v0

    #@1c
    .line 1638
    :cond_0
    shr-int/lit8 p1, p1, 0x1

    #@1e
    .line 1633
    add-int/lit8 v0, v0, 0x1

    #@20
    goto :goto_0

    #@21
    .line 1644
    .end local v0    # "i":I
    :cond_1
    const/4 v1, 0x1

    #@22
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@24
    .line 1645
    iput-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@26
    .line 1631
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2141
    iget v0, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 2142
    return-void

    #@5
    .line 2144
    :cond_0
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@7
    .line 2145
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    #@a
    .line 2139
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "lenient"    # Z

    #@0
    .prologue
    .line 2116
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    #@2
    .line 2114
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 1
    .param p1, "value"    # I

    #@0
    .prologue
    .line 2173
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@2
    if-ne v0, p1, :cond_0

    #@4
    .line 2174
    return-void

    #@5
    .line 2176
    :cond_0
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@7
    .line 2177
    invoke-direct {p0}, Ljava/util/Calendar;->invalidateWeekFields()V

    #@a
    .line 2171
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1089
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 1088
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 3
    .param p1, "millis"    # J

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 1116
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    #@3
    cmp-long v0, v0, p1

    #@5
    if-nez v0, :cond_0

    #@7
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@9
    if-eqz v0, :cond_0

    #@b
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@d
    if-eqz v0, :cond_0

    #@f
    iget-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@11
    if-eqz v0, :cond_0

    #@13
    .line 1117
    return-void

    #@14
    .line 1119
    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    #@16
    .line 1120
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@18
    .line 1121
    const/4 v0, 0x0

    #@19
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@1b
    .line 1122
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    #@1e
    .line 1123
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@20
    iput-boolean v2, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@22
    .line 1113
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "value"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 2058
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@3
    .line 2059
    iput-boolean v0, p0, Ljava/util/Calendar;->sharedZone:Z

    #@5
    .line 2069
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@7
    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@9
    .line 2056
    return-void
.end method

.method final setUnnormalized()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1668
    iput-boolean v0, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@3
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@5
    .line 1667
    return-void
.end method

.method public setWeekDate(III)V
    .locals 1
    .param p1, "weekYear"    # I
    .param p2, "weekOfYear"    # I
    .param p3, "dayOfWeek"    # I

    #@0
    .prologue
    .line 2266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    #@2
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    #@5
    throw v0
.end method

.method setZoneShared(Z)V
    .locals 0
    .param p1, "shared"    # Z

    #@0
    .prologue
    .line 2099
    iput-boolean p1, p0, Ljava/util/Calendar;->sharedZone:Z

    #@2
    .line 2098
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 2534
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    const/16 v2, 0x320

    #@5
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@8
    .line 2535
    .local v0, "buffer":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const/16 v3, 0x5b

    #@16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@19
    .line 2536
    const-string/jumbo v2, "time"

    #@1c
    iget-boolean v3, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@1e
    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    #@20
    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    #@23
    .line 2537
    const-string/jumbo v2, ",areFieldsSet="

    #@26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v2

    #@2a
    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@2f
    .line 2538
    const-string/jumbo v2, ",areAllFieldsSet="

    #@32
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    iget-boolean v3, p0, Ljava/util/Calendar;->areAllFieldsSet:Z

    #@38
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@3b
    .line 2539
    const-string/jumbo v2, ",lenient="

    #@3e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    #@44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@47
    .line 2540
    const-string/jumbo v2, ",zone="

    #@4a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v2

    #@4e
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@53
    .line 2541
    const-string/jumbo v2, ",firstDayOfWeek"

    #@56
    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@58
    int-to-long v4, v3

    #@59
    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    #@5c
    .line 2542
    const-string/jumbo v2, ",minimalDaysInFirstWeek"

    #@5f
    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@61
    int-to-long v4, v3

    #@62
    invoke-static {v0, v2, v6, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    #@65
    .line 2543
    const/4 v1, 0x0

    #@66
    .local v1, "i":I
    :goto_0
    const/16 v2, 0x11

    #@68
    if-ge v1, v2, :cond_0

    #@6a
    .line 2544
    const/16 v2, 0x2c

    #@6c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@6f
    .line 2545
    sget-object v2, Ljava/util/Calendar;->FIELD_NAME:[Ljava/lang/String;

    #@71
    aget-object v2, v2, v1

    #@73
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->isSet(I)Z

    #@76
    move-result v3

    #@77
    iget-object v4, p0, Ljava/util/Calendar;->fields:[I

    #@79
    aget v4, v4, v1

    #@7b
    int-to-long v4, v4

    #@7c
    invoke-static {v0, v2, v3, v4, v5}, Ljava/util/Calendar;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/String;ZJ)V

    #@7f
    .line 2543
    add-int/lit8 v1, v1, 0x1

    #@81
    goto :goto_0

    #@82
    .line 2547
    :cond_0
    const/16 v2, 0x5d

    #@84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@87
    .line 2548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    return-object v2
.end method
