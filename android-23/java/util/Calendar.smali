.class public abstract Ljava/util/Calendar;
.super Ljava/lang/Object;
.source "Calendar.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
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
.field public static final ALL_STYLES:I = 0x0

.field public static final AM:I = 0x0

.field public static final AM_PM:I = 0x9

.field public static final APRIL:I = 0x3

.field public static final AUGUST:I = 0x7

.field public static final DATE:I = 0x5

.field public static final DAY_OF_MONTH:I = 0x5

.field public static final DAY_OF_WEEK:I = 0x7

.field public static final DAY_OF_WEEK_IN_MONTH:I = 0x8

.field public static final DAY_OF_YEAR:I = 0x6

.field public static final DECEMBER:I = 0xb

.field public static final DST_OFFSET:I = 0x10

.field public static final ERA:I = 0x0

.field public static final FEBRUARY:I = 0x1

.field public static final FIELD_COUNT:I = 0x11

.field private static final FIELD_NAMES:[Ljava/lang/String;

.field public static final FRIDAY:I = 0x6

.field public static final HOUR:I = 0xa

.field public static final HOUR_OF_DAY:I = 0xb

.field public static final JANUARY:I = 0x0

.field public static final JULY:I = 0x6

.field public static final JUNE:I = 0x5

.field public static final LONG:I = 0x2

.field public static final MARCH:I = 0x2

.field public static final MAY:I = 0x4

.field public static final MILLISECOND:I = 0xe

.field public static final MINUTE:I = 0xc

.field public static final MONDAY:I = 0x2

.field public static final MONTH:I = 0x2

.field public static final NOVEMBER:I = 0xa

.field public static final OCTOBER:I = 0x9

.field public static final PM:I = 0x1

.field public static final SATURDAY:I = 0x7

.field public static final SECOND:I = 0xd

.field public static final SEPTEMBER:I = 0x8

.field public static final SHORT:I = 0x1

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final UNDECIMBER:I = 0xc

.field public static final WEDNESDAY:I = 0x4

.field public static final WEEK_OF_MONTH:I = 0x4

.field public static final WEEK_OF_YEAR:I = 0x3

.field public static final YEAR:I = 0x1

.field public static final ZONE_OFFSET:I = 0xf

.field private static final serialPersistentFields:[Ljava/io/ObjectStreamField;

.field private static final serialVersionUID:J = -0x1915b2e13723a472L


# instance fields
.field protected areFieldsSet:Z

.field protected fields:[I

.field private firstDayOfWeek:I

.field protected isSet:[Z

.field protected isTimeSet:Z

.field transient lastDateFieldSet:I

.field transient lastTimeFieldSet:I

.field private lenient:Z

.field private minimalDaysInFirstWeek:I

.field protected time:J

.field private zone:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x4

    #@1
    const/4 v7, 0x3

    #@2
    const/4 v6, 0x2

    #@3
    const/4 v5, 0x1

    #@4
    const/4 v4, 0x0

    #@5
    .line 704
    const/16 v0, 0x11

    #@7
    new-array v0, v0, [Ljava/lang/String;

    #@9
    const-string/jumbo v1, "ERA"

    #@c
    aput-object v1, v0, v4

    #@e
    const-string/jumbo v1, "YEAR"

    #@11
    aput-object v1, v0, v5

    #@13
    const-string/jumbo v1, "MONTH"

    #@16
    aput-object v1, v0, v6

    #@18
    .line 705
    const-string/jumbo v1, "WEEK_OF_YEAR"

    #@1b
    aput-object v1, v0, v7

    #@1d
    const-string/jumbo v1, "WEEK_OF_MONTH"

    #@20
    aput-object v1, v0, v8

    #@22
    const-string/jumbo v1, "DAY_OF_MONTH"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "DAY_OF_YEAR"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 706
    const-string/jumbo v1, "DAY_OF_WEEK"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    const-string/jumbo v1, "DAY_OF_WEEK_IN_MONTH"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    const-string/jumbo v1, "AM_PM"

    #@3e
    const/16 v2, 0x9

    #@40
    aput-object v1, v0, v2

    #@42
    const-string/jumbo v1, "HOUR"

    #@45
    const/16 v2, 0xa

    #@47
    aput-object v1, v0, v2

    #@49
    .line 707
    const-string/jumbo v1, "HOUR_OF_DAY"

    #@4c
    const/16 v2, 0xb

    #@4e
    aput-object v1, v0, v2

    #@50
    const-string/jumbo v1, "MINUTE"

    #@53
    const/16 v2, 0xc

    #@55
    aput-object v1, v0, v2

    #@57
    const-string/jumbo v1, "SECOND"

    #@5a
    const/16 v2, 0xd

    #@5c
    aput-object v1, v0, v2

    #@5e
    const-string/jumbo v1, "MILLISECOND"

    #@61
    const/16 v2, 0xe

    #@63
    aput-object v1, v0, v2

    #@65
    .line 708
    const-string/jumbo v1, "ZONE_OFFSET"

    #@68
    const/16 v2, 0xf

    #@6a
    aput-object v1, v0, v2

    #@6c
    const-string/jumbo v1, "DST_OFFSET"

    #@6f
    const/16 v2, 0x10

    #@71
    aput-object v1, v0, v2

    #@73
    .line 704
    sput-object v0, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    #@75
    .line 1366
    const/16 v0, 0xb

    #@77
    new-array v0, v0, [Ljava/io/ObjectStreamField;

    #@79
    .line 1367
    new-instance v1, Ljava/io/ObjectStreamField;

    #@7b
    const-string/jumbo v2, "areFieldsSet"

    #@7e
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@80
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@83
    aput-object v1, v0, v4

    #@85
    .line 1368
    new-instance v1, Ljava/io/ObjectStreamField;

    #@87
    const-string/jumbo v2, "fields"

    #@8a
    const-class v3, [I

    #@8c
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@8f
    aput-object v1, v0, v5

    #@91
    .line 1369
    new-instance v1, Ljava/io/ObjectStreamField;

    #@93
    const-string/jumbo v2, "firstDayOfWeek"

    #@96
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@98
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@9b
    aput-object v1, v0, v6

    #@9d
    .line 1370
    new-instance v1, Ljava/io/ObjectStreamField;

    #@9f
    const-string/jumbo v2, "isSet"

    #@a2
    const-class v3, [Z

    #@a4
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@a7
    aput-object v1, v0, v7

    #@a9
    .line 1371
    new-instance v1, Ljava/io/ObjectStreamField;

    #@ab
    const-string/jumbo v2, "isTimeSet"

    #@ae
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@b0
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@b3
    aput-object v1, v0, v8

    #@b5
    .line 1372
    new-instance v1, Ljava/io/ObjectStreamField;

    #@b7
    const-string/jumbo v2, "lenient"

    #@ba
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    #@bc
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@bf
    const/4 v2, 0x5

    #@c0
    aput-object v1, v0, v2

    #@c2
    .line 1373
    new-instance v1, Ljava/io/ObjectStreamField;

    #@c4
    const-string/jumbo v2, "minimalDaysInFirstWeek"

    #@c7
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@c9
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@cc
    const/4 v2, 0x6

    #@cd
    aput-object v1, v0, v2

    #@cf
    .line 1374
    new-instance v1, Ljava/io/ObjectStreamField;

    #@d1
    const-string/jumbo v2, "nextStamp"

    #@d4
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@d6
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@d9
    const/4 v2, 0x7

    #@da
    aput-object v1, v0, v2

    #@dc
    .line 1375
    new-instance v1, Ljava/io/ObjectStreamField;

    #@de
    const-string/jumbo v2, "serialVersionOnStream"

    #@e1
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    #@e3
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@e6
    const/16 v2, 0x8

    #@e8
    aput-object v1, v0, v2

    #@ea
    .line 1376
    new-instance v1, Ljava/io/ObjectStreamField;

    #@ec
    const-string/jumbo v2, "time"

    #@ef
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    #@f1
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@f4
    const/16 v2, 0x9

    #@f6
    aput-object v1, v0, v2

    #@f8
    .line 1377
    new-instance v1, Ljava/io/ObjectStreamField;

    #@fa
    const-string/jumbo v2, "zone"

    #@fd
    const-class v3, Ljava/util/TimeZone;

    #@ff
    invoke-direct {v1, v2, v3}, Ljava/io/ObjectStreamField;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    #@102
    const/16 v2, 0xa

    #@104
    aput-object v1, v0, v2

    #@106
    .line 1366
    sput-object v0, Ljava/util/Calendar;->serialPersistentFields:[Ljava/io/ObjectStreamField;

    #@108
    .line 289
    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 714
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@7
    move-result-object v1

    #@8
    invoke-direct {p0, v0, v1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    #@b
    .line 713
    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;)V
    .locals 3
    .param p1, "timezone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/16 v2, 0x11

    #@2
    const/4 v1, 0x0

    #@3
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@6
    .line 718
    new-array v0, v2, [I

    #@8
    iput-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@a
    .line 719
    new-array v0, v2, [Z

    #@c
    iput-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@e
    .line 720
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@10
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@12
    .line 721
    const/4 v0, 0x1

    #@13
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setLenient(Z)V

    #@16
    .line 722
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    #@19
    .line 717
    return-void
.end method

.method protected constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "timezone"    # Ljava/util/TimeZone;
    .param p2, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 729
    invoke-direct {p0, p1}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;)V

    #@3
    .line 730
    invoke-static {p2}, Llibcore/icu/LocaleData;->mapInvalidAndNullLocales(Ljava/util/Locale;)Ljava/util/Locale;

    #@6
    move-result-object p2

    #@7
    .line 731
    invoke-static {p2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@a
    move-result-object v0

    #@b
    .line 732
    .local v0, "localeData":Llibcore/icu/LocaleData;
    iget-object v1, v0, Llibcore/icu/LocaleData;->firstDayOfWeek:Ljava/lang/Integer;

    #@d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@10
    move-result v1

    #@11
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setFirstDayOfWeek(I)V

    #@14
    .line 733
    iget-object v1, v0, Llibcore/icu/LocaleData;->minimalDaysInFirstWeek:Ljava/lang/Integer;

    #@16
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    #@19
    move-result v1

    #@1a
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->setMinimalDaysInFirstWeek(I)V

    #@1d
    .line 728
    return-void
.end method

.method private static checkStyle(I)V
    .locals 3
    .param p0, "style"    # I

    #@0
    .prologue
    .line 1321
    if-eqz p0, :cond_0

    #@2
    const/4 v0, 0x1

    #@3
    if-eq p0, v0, :cond_0

    #@5
    const/4 v0, 0x2

    #@6
    if-eq p0, v0, :cond_0

    #@8
    .line 1322
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "bad style "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 1320
    :cond_0
    return-void
.end method

.method public static declared-synchronized getAvailableLocales()[Ljava/util/Locale;
    .locals 2

    #@0
    .prologue
    const-class v0, Ljava/util/Calendar;

    #@2
    monitor-enter v0

    #@3
    .line 952
    :try_start_0
    invoke-static {}, Llibcore/icu/ICU;->getAvailableCalendarLocales()[Ljava/util/Locale;
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

.method private getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;
    .locals 4
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    .line 1302
    if-ltz p1, :cond_0

    #@3
    const/16 v1, 0x11

    #@5
    if-lt p1, v1, :cond_1

    #@7
    .line 1303
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v2, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v3, "bad field "

    #@11
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v2

    #@19
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v2

    #@1d
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@20
    throw v1

    #@21
    .line 1305
    :cond_1
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    #@24
    .line 1306
    invoke-static {p3}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    #@27
    move-result-object v0

    #@28
    .line 1307
    .local v0, "dfs":Ljava/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_0

    #@2b
    .line 1317
    const/4 v1, 0x0

    #@2c
    return-object v1

    #@2d
    .line 1309
    :sswitch_0
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    return-object v1

    #@32
    .line 1311
    :sswitch_1
    if-ne p2, v2, :cond_2

    #@34
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    #@37
    move-result-object v1

    #@38
    :goto_0
    return-object v1

    #@39
    :cond_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    goto :goto_0

    #@3e
    .line 1313
    :sswitch_2
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getEras()[Ljava/lang/String;

    #@41
    move-result-object v1

    #@42
    return-object v1

    #@43
    .line 1315
    :sswitch_3
    if-ne p2, v2, :cond_3

    #@45
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getMonths()[Ljava/lang/String;

    #@48
    move-result-object v1

    #@49
    :goto_1
    return-object v1

    #@4a
    :cond_3
    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    #@4d
    move-result-object v1

    #@4e
    goto :goto_1

    #@4f
    .line 1307
    nop

    #@50
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x2 -> :sswitch_3
        0x7 -> :sswitch_1
        0x9 -> :sswitch_0
    .end sparse-switch
.end method

.method public static declared-synchronized getInstance()Ljava/util/Calendar;
    .locals 2

    #@0
    .prologue
    const-class v1, Ljava/util/Calendar;

    #@2
    monitor-enter v1

    #@3
    .line 974
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const-class v1, Ljava/util/Calendar;

    #@2
    monitor-enter v1

    #@3
    .line 982
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const-class v1, Ljava/util/Calendar;

    #@2
    monitor-enter v1

    #@3
    .line 990
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    invoke-direct {v0, p0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public static declared-synchronized getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 2
    .param p0, "timezone"    # Ljava/util/TimeZone;
    .param p1, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const-class v1, Ljava/util/Calendar;

    #@2
    monitor-enter v1

    #@3
    .line 998
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    #@5
    invoke-direct {v0, p0, p1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    return-object v0

    #@a
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method private static insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V
    .locals 3
    .param p1, "values"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 1356
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p1, :cond_0

    #@2
    .line 1357
    return-void

    #@3
    .line 1359
    :cond_0
    const/4 v0, 0x0

    #@4
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@5
    if-ge v0, v1, :cond_3

    #@7
    .line 1360
    aget-object v1, p1, v0

    #@9
    if-eqz v1, :cond_1

    #@b
    aget-object v1, p1, v0

    #@d
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    #@10
    move-result v1

    #@11
    if-eqz v1, :cond_2

    #@13
    .line 1359
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@15
    goto :goto_0

    #@16
    .line 1361
    :cond_2
    aget-object v1, p1, v0

    #@18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v2

    #@1c
    invoke-interface {p0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1f
    goto :goto_1

    #@20
    .line 1355
    :cond_3
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    const/4 v4, 0x0

    #@2
    const/4 v2, 0x1

    #@3
    .line 1398
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    #@6
    move-result-object v0

    #@7
    .line 1399
    .local v0, "readFields":Ljava/io/ObjectInputStream$GetField;
    const-string/jumbo v1, "areFieldsSet"

    #@a
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@d
    move-result v1

    #@e
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@10
    .line 1400
    const-string/jumbo v1, "fields"

    #@13
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v1

    #@17
    check-cast v1, [I

    #@19
    iput-object v1, p0, Ljava/util/Calendar;->fields:[I

    #@1b
    .line 1401
    const-string/jumbo v1, "firstDayOfWeek"

    #@1e
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@21
    move-result v1

    #@22
    iput v1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@24
    .line 1402
    const-string/jumbo v1, "isSet"

    #@27
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@2a
    move-result-object v1

    #@2b
    check-cast v1, [Z

    #@2d
    iput-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    #@2f
    .line 1403
    const-string/jumbo v1, "isTimeSet"

    #@32
    invoke-virtual {v0, v1, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@35
    move-result v1

    #@36
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@38
    .line 1404
    const-string/jumbo v1, "lenient"

    #@3b
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Z)Z

    #@3e
    move-result v1

    #@3f
    iput-boolean v1, p0, Ljava/util/Calendar;->lenient:Z

    #@41
    .line 1405
    const-string/jumbo v1, "minimalDaysInFirstWeek"

    #@44
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;I)I

    #@47
    move-result v1

    #@48
    iput v1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@4a
    .line 1406
    const-string/jumbo v1, "time"

    #@4d
    const-wide/16 v2, 0x0

    #@4f
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;J)J

    #@52
    move-result-wide v2

    #@53
    iput-wide v2, p0, Ljava/util/Calendar;->time:J

    #@55
    .line 1407
    const-string/jumbo v1, "zone"

    #@58
    invoke-virtual {v0, v1, v4}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    #@5b
    move-result-object v1

    #@5c
    check-cast v1, Ljava/util/TimeZone;

    #@5e
    iput-object v1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@60
    .line 1397
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1381
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@3
    .line 1382
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->putFields()Ljava/io/ObjectOutputStream$PutField;

    #@6
    move-result-object v0

    #@7
    .line 1383
    .local v0, "putFields":Ljava/io/ObjectOutputStream$PutField;
    const-string/jumbo v1, "areFieldsSet"

    #@a
    iget-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@f
    .line 1384
    const-string/jumbo v1, "fields"

    #@12
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    #@14
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@17
    .line 1385
    const-string/jumbo v1, "firstDayOfWeek"

    #@1a
    iget v2, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@1c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@1f
    .line 1386
    const-string/jumbo v1, "isSet"

    #@22
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    #@24
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@27
    .line 1387
    const-string/jumbo v1, "isTimeSet"

    #@2a
    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@2c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@2f
    .line 1388
    const-string/jumbo v1, "lenient"

    #@32
    iget-boolean v2, p0, Ljava/util/Calendar;->lenient:Z

    #@34
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Z)V

    #@37
    .line 1389
    const-string/jumbo v1, "minimalDaysInFirstWeek"

    #@3a
    iget v2, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@3c
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@3f
    .line 1390
    const-string/jumbo v1, "nextStamp"

    #@42
    const/4 v2, 0x2

    #@43
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@46
    .line 1391
    const-string/jumbo v1, "serialVersionOnStream"

    #@49
    const/4 v2, 0x1

    #@4a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;I)V

    #@4d
    .line 1392
    const-string/jumbo v1, "time"

    #@50
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    #@52
    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;J)V

    #@55
    .line 1393
    const-string/jumbo v1, "zone"

    #@58
    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@5a
    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectOutputStream$PutField;->put(Ljava/lang/String;Ljava/lang/Object;)V

    #@5d
    .line 1394
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->writeFields()V

    #@60
    .line 1380
    return-void
.end method


# virtual methods
.method public abstract add(II)V
.end method

.method public after(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "calendar"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 763
    instance-of v1, p1, Ljava/util/Calendar;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 764
    return v0

    #@6
    .line 766
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v2

    #@a
    check-cast p1, Ljava/util/Calendar;

    #@c
    .end local p1    # "calendar":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@f
    move-result-wide v4

    #@10
    cmp-long v1, v2, v4

    #@12
    if-lez v1, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    :cond_1
    return v0
.end method

.method public before(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "calendar"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 782
    instance-of v1, p1, Ljava/util/Calendar;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 783
    return v0

    #@6
    .line 785
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@9
    move-result-wide v2

    #@a
    check-cast p1, Ljava/util/Calendar;

    #@c
    .end local p1    # "calendar":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@f
    move-result-wide v4

    #@10
    cmp-long v1, v2, v4

    #@12
    if-gez v1, :cond_1

    #@14
    const/4 v0, 0x1

    #@15
    :cond_1
    return v0
.end method

.method public final clear()V
    .locals 3

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 794
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x11

    #@4
    if-ge v0, v1, :cond_0

    #@6
    .line 795
    iget-object v1, p0, Ljava/util/Calendar;->fields:[I

    #@8
    aput v2, v1, v0

    #@a
    .line 796
    iget-object v1, p0, Ljava/util/Calendar;->isSet:[Z

    #@c
    aput-boolean v2, v1, v0

    #@e
    .line 794
    add-int/lit8 v0, v0, 0x1

    #@10
    goto :goto_0

    #@11
    .line 798
    :cond_0
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@13
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@15
    .line 793
    return-void
.end method

.method public final clear(I)V
    .locals 2
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 807
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@3
    aput v1, v0, p1

    #@5
    .line 808
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@7
    aput-boolean v1, v0, p1

    #@9
    .line 809
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@b
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@d
    .line 806
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3

    #@0
    .prologue
    .line 820
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/util/Calendar;

    #@6
    .line 821
    .local v0, "clone":Ljava/util/Calendar;
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    #@8
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@b
    move-result-object v2

    #@c
    check-cast v2, [I

    #@e
    iput-object v2, v0, Ljava/util/Calendar;->fields:[I

    #@10
    .line 822
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    #@12
    invoke-virtual {v2}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@15
    move-result-object v2

    #@16
    check-cast v2, [Z

    #@18
    iput-object v2, v0, Ljava/util/Calendar;->isSet:[Z

    #@1a
    .line 823
    iget-object v2, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@1c
    invoke-virtual {v2}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@1f
    move-result-object v2

    #@20
    check-cast v2, Ljava/util/TimeZone;

    #@22
    iput-object v2, v0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    #@24
    .line 824
    return-object v0

    #@25
    .line 825
    .end local v0    # "clone":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    #@26
    .line 826
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@2b
    throw v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "anotherCalendar"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1260
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
    .locals 6
    .param p1, "anotherCalendar"    # Ljava/util/Calendar;

    #@0
    .prologue
    .line 1261
    if-nez p1, :cond_0

    #@2
    .line 1262
    new-instance v4, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v5, "anotherCalendar == null"

    #@7
    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v4

    #@b
    .line 1264
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@e
    move-result-wide v2

    #@f
    .line 1265
    .local v2, "timeInMillis":J
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    #@12
    move-result-wide v0

    #@13
    .line 1266
    .local v0, "anotherTimeInMillis":J
    cmp-long v4, v2, v0

    #@15
    if-lez v4, :cond_1

    #@17
    .line 1267
    const/4 v4, 0x1

    #@18
    return v4

    #@19
    .line 1269
    :cond_1
    cmp-long v4, v2, v0

    #@1b
    if-nez v4, :cond_2

    #@1d
    .line 1270
    const/4 v4, 0x0

    #@1e
    return v4

    #@1f
    .line 1272
    :cond_2
    const/4 v4, -0x1

    #@20
    return v4
.end method

.method protected complete()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 839
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 840
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    #@8
    .line 841
    iput-boolean v1, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@a
    .line 843
    :cond_0
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 844
    invoke-virtual {p0}, Ljava/util/Calendar;->computeFields()V

    #@11
    .line 845
    iput-boolean v1, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@13
    .line 838
    :cond_1
    return-void
.end method

.method protected abstract computeFields()V
.end method

.method protected abstract computeTime()V
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 873
    if-ne p0, p1, :cond_0

    #@3
    .line 874
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 876
    :cond_0
    instance-of v2, p1, Ljava/util/Calendar;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 877
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 879
    check-cast v0, Ljava/util/Calendar;

    #@d
    .line 880
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@10
    move-result-wide v2

    #@11
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    #@14
    move-result-wide v4

    #@15
    cmp-long v2, v2, v4

    #@17
    if-nez v2, :cond_2

    #@19
    .line 881
    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    #@1c
    move-result v2

    #@1d
    invoke-virtual {v0}, Ljava/util/Calendar;->isLenient()Z

    #@20
    move-result v3

    #@21
    if-ne v2, v3, :cond_2

    #@23
    .line 882
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@26
    move-result v2

    #@27
    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@2a
    move-result v3

    #@2b
    if-ne v2, v3, :cond_2

    #@2d
    .line 883
    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@30
    move-result v2

    #@31
    invoke-virtual {v0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@34
    move-result v3

    #@35
    if-ne v2, v3, :cond_2

    #@37
    .line 884
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@3a
    move-result-object v1

    #@3b
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@3e
    move-result-object v2

    #@3f
    invoke-virtual {v1, v2}, Ljava/util/TimeZone;->equals(Ljava/lang/Object;)Z

    #@42
    move-result v1

    #@43
    .line 880
    :cond_2
    return v1
.end method

.method public get(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 899
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@3
    .line 900
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

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
    .line 909
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMaximum(I)I

    #@3
    move-result v4

    #@4
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getLeastMaximum(I)I

    #@7
    move-result v0

    #@8
    .local v0, "next":I
    if-ne v4, v0, :cond_0

    #@a
    .line 910
    return v0

    #@b
    .line 912
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@e
    .line 913
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    #@10
    .line 914
    .local v2, "orgTime":J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    #@13
    .line 916
    :cond_1
    move v1, v0

    #@14
    .line 917
    .local v1, "value":I
    const/4 v4, 0x1

    #@15
    invoke-virtual {p0, p1, v4}, Ljava/util/Calendar;->roll(IZ)V

    #@18
    .line 918
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    #@1b
    move-result v0

    #@1c
    .line 919
    if-gt v0, v1, :cond_1

    #@1e
    .line 920
    iput-wide v2, p0, Ljava/util/Calendar;->time:J

    #@20
    .line 921
    const/4 v4, 0x0

    #@21
    iput-boolean v4, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@23
    .line 922
    return v1
.end method

.method public getActualMinimum(I)I
    .locals 6
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 930
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getMinimum(I)I

    #@4
    move-result v4

    #@5
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getGreatestMinimum(I)I

    #@8
    move-result v0

    #@9
    .local v0, "next":I
    if-ne v4, v0, :cond_0

    #@b
    .line 931
    return v0

    #@c
    .line 933
    :cond_0
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@f
    .line 934
    iget-wide v2, p0, Ljava/util/Calendar;->time:J

    #@11
    .line 935
    .local v2, "orgTime":J
    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    #@14
    .line 937
    :cond_1
    move v1, v0

    #@15
    .line 938
    .local v1, "value":I
    invoke-virtual {p0, p1, v5}, Ljava/util/Calendar;->roll(IZ)V

    #@18
    .line 939
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    #@1b
    move-result v0

    #@1c
    .line 940
    if-lt v0, v1, :cond_1

    #@1e
    .line 941
    iput-wide v2, p0, Ljava/util/Calendar;->time:J

    #@20
    .line 942
    iput-boolean v5, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@22
    .line 943
    return v1
.end method

.method public getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .locals 3
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1293
    if-nez p2, :cond_0

    #@3
    .line 1294
    const/4 p2, 0x1

    #@4
    .line 1296
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 1297
    .local v0, "array":[Ljava/lang/String;
    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    #@b
    move-result v1

    #@c
    .line 1298
    .local v1, "value":I
    if-eqz v0, :cond_1

    #@e
    aget-object v2, v0, v1

    #@10
    :cond_1
    return-object v2
.end method

.method public getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .locals 3
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
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 1343
    invoke-static {p2}, Ljava/util/Calendar;->checkStyle(I)V

    #@5
    .line 1344
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@8
    .line 1345
    new-instance v0, Ljava/util/HashMap;

    #@a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@d
    .line 1346
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eq p2, v1, :cond_0

    #@f
    if-nez p2, :cond_1

    #@11
    .line 1347
    :cond_0
    invoke-direct {p0, p1, v1, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    #@18
    .line 1349
    :cond_1
    if-eq p2, v2, :cond_2

    #@1a
    if-nez p2, :cond_3

    #@1c
    .line 1350
    :cond_2
    invoke-direct {p0, p1, v2, p3}, Ljava/util/Calendar;->getDisplayNameArray(IILjava/util/Locale;)[Ljava/lang/String;

    #@1f
    move-result-object v1

    #@20
    invoke-static {v0, v1}, Ljava/util/Calendar;->insertValuesInMap(Ljava/util/Map;[Ljava/lang/String;)V

    #@23
    .line 1352
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    #@26
    move-result v1

    #@27
    if-eqz v1, :cond_4

    #@29
    const/4 v0, 0x0

    #@2a
    .end local v0    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_4
    return-object v0
.end method

.method public getFirstDayOfWeek()I
    .locals 1

    #@0
    .prologue
    .line 959
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
    .line 1018
    iget v0, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@2
    return v0
.end method

.method public abstract getMinimum(I)I
.end method

.method public final getTime()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 1035
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
    .line 1047
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1048
    invoke-virtual {p0}, Ljava/util/Calendar;->computeTime()V

    #@7
    .line 1049
    const/4 v0, 0x1

    #@8
    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@a
    .line 1051
    :cond_0
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    #@c
    return-wide v0
.end method

.method public getTimeZone()Ljava/util/TimeZone;
    .locals 1

    #@0
    .prologue
    .line 1058
    iget-object v0, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 1063
    invoke-virtual {p0}, Ljava/util/Calendar;->isLenient()Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, 0x4d5

    #@8
    :goto_0
    invoke-virtual {p0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    .line 1064
    invoke-virtual {p0}, Ljava/util/Calendar;->getMinimalDaysInFirstWeek()I

    #@10
    move-result v1

    #@11
    .line 1063
    add-int/2addr v0, v1

    #@12
    .line 1064
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1}, Ljava/util/TimeZone;->hashCode()I

    #@19
    move-result v1

    #@1a
    .line 1063
    add-int/2addr v0, v1

    #@1b
    return v0

    #@1c
    :cond_0
    const/16 v0, 0x4cf

    #@1e
    goto :goto_0
.end method

.method protected final internalGet(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1071
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@2
    aget v0, v0, p1

    #@4
    return v0
.end method

.method public isLenient()Z
    .locals 1

    #@0
    .prologue
    .line 1079
    iget-boolean v0, p0, Ljava/util/Calendar;->lenient:Z

    #@2
    return v0
.end method

.method public final isSet(I)Z
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 1095
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@2
    aget-boolean v0, v0, p1

    #@4
    return v0
.end method

.method public roll(II)V
    .locals 3
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    .line 1105
    if-ltz p2, :cond_0

    #@2
    const/4 v2, 0x1

    #@3
    .line 1106
    .local v2, "increment":Z
    :goto_0
    if-eqz v2, :cond_1

    #@5
    move v0, p2

    #@6
    .line 1107
    .local v0, "count":I
    :goto_1
    const/4 v1, 0x0

    #@7
    .local v1, "i":I
    :goto_2
    if-ge v1, v0, :cond_2

    #@9
    .line 1108
    invoke-virtual {p0, p1, v2}, Ljava/util/Calendar;->roll(IZ)V

    #@c
    .line 1107
    add-int/lit8 v1, v1, 0x1

    #@e
    goto :goto_2

    #@f
    .line 1105
    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v2    # "increment":Z
    :cond_0
    const/4 v2, 0x0

    #@10
    .restart local v2    # "increment":Z
    goto :goto_0

    #@11
    .line 1106
    :cond_1
    neg-int v0, p2

    #@12
    .restart local v0    # "count":I
    goto :goto_1

    #@13
    .line 1104
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public abstract roll(IZ)V
.end method

.method public set(II)V
    .locals 5
    .param p1, "field"    # I
    .param p2, "value"    # I

    #@0
    .prologue
    const/16 v4, 0xa

    #@2
    const/16 v3, 0x9

    #@4
    const/4 v2, 0x0

    #@5
    .line 1124
    iget-object v0, p0, Ljava/util/Calendar;->fields:[I

    #@7
    aput p2, v0, p1

    #@9
    .line 1125
    iget-object v0, p0, Ljava/util/Calendar;->isSet:[Z

    #@b
    const/4 v1, 0x1

    #@c
    aput-boolean v1, v0, p1

    #@e
    .line 1126
    iput-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@10
    iput-boolean v2, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@12
    .line 1127
    const/4 v0, 0x2

    #@13
    if-le p1, v0, :cond_0

    #@15
    if-ge p1, v3, :cond_0

    #@17
    .line 1128
    iput p1, p0, Ljava/util/Calendar;->lastDateFieldSet:I

    #@19
    .line 1130
    :cond_0
    if-eq p1, v4, :cond_1

    #@1b
    const/16 v0, 0xb

    #@1d
    if-ne p1, v0, :cond_2

    #@1f
    .line 1131
    :cond_1
    iput p1, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    #@21
    .line 1133
    :cond_2
    if-ne p1, v3, :cond_3

    #@23
    .line 1134
    iput v4, p0, Ljava/util/Calendar;->lastTimeFieldSet:I

    #@25
    .line 1123
    :cond_3
    return-void
.end method

.method public final set(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    #@0
    .prologue
    .line 1144
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->set(II)V

    #@4
    .line 1145
    const/4 v0, 0x2

    #@5
    invoke-virtual {p0, v0, p2}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 1146
    const/4 v0, 0x5

    #@9
    invoke-virtual {p0, v0, p3}, Ljava/util/Calendar;->set(II)V

    #@c
    .line 1143
    return-void
.end method

.method public final set(IIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    #@0
    .prologue
    .line 1155
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    #@3
    .line 1156
    const/16 v0, 0xb

    #@5
    invoke-virtual {p0, v0, p4}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 1157
    const/16 v0, 0xc

    #@a
    invoke-virtual {p0, v0, p5}, Ljava/util/Calendar;->set(II)V

    #@d
    .line 1154
    return-void
.end method

.method public final set(IIIIII)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 1166
    invoke-virtual/range {p0 .. p5}, Ljava/util/Calendar;->set(IIIII)V

    #@3
    .line 1167
    const/16 v0, 0xd

    #@5
    invoke-virtual {p0, v0, p6}, Ljava/util/Calendar;->set(II)V

    #@8
    .line 1165
    return-void
.end method

.method public setFirstDayOfWeek(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1175
    iput p1, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@2
    .line 1174
    return-void
.end method

.method public setLenient(Z)V
    .locals 0
    .param p1, "value"    # Z

    #@0
    .prologue
    .line 1183
    iput-boolean p1, p0, Ljava/util/Calendar;->lenient:Z

    #@2
    .line 1182
    return-void
.end method

.method public setMinimalDaysInFirstWeek(I)V
    .locals 0
    .param p1, "value"    # I

    #@0
    .prologue
    .line 1190
    iput p1, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@2
    .line 1189
    return-void
.end method

.method public final setTime(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 1197
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@7
    .line 1196
    return-void
.end method

.method public setTimeInMillis(J)V
    .locals 3
    .param p1, "milliseconds"    # J

    #@0
    .prologue
    .line 1205
    iget-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@6
    if-eqz v0, :cond_0

    #@8
    iget-wide v0, p0, Ljava/util/Calendar;->time:J

    #@a
    cmp-long v0, v0, p1

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 1206
    :cond_0
    iput-wide p1, p0, Ljava/util/Calendar;->time:J

    #@10
    .line 1207
    const/4 v0, 0x1

    #@11
    iput-boolean v0, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@13
    .line 1208
    const/4 v0, 0x0

    #@14
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@16
    .line 1209
    invoke-virtual {p0}, Ljava/util/Calendar;->complete()V

    #@19
    .line 1204
    :cond_1
    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 1
    .param p1, "timezone"    # Ljava/util/TimeZone;

    #@0
    .prologue
    .line 1217
    iput-object p1, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@2
    .line 1218
    const/4 v0, 0x0

    #@3
    iput-boolean v0, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@5
    .line 1216
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    #@0
    .prologue
    .line 1226
    new-instance v1, Ljava/lang/StringBuilder;

    #@2
    new-instance v2, Ljava/lang/StringBuilder;

    #@4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@7
    invoke-virtual {p0}, Ljava/util/Calendar;->getClass()Ljava/lang/Class;

    #@a
    move-result-object v3

    #@b
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@e
    move-result-object v3

    #@f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v2

    #@13
    .line 1227
    const-string/jumbo v3, "[time="

    #@16
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v3

    #@1a
    .line 1227
    iget-boolean v2, p0, Ljava/util/Calendar;->isTimeSet:Z

    #@1c
    if-eqz v2, :cond_0

    #@1e
    iget-wide v4, p0, Ljava/util/Calendar;->time:J

    #@20
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    #@23
    move-result-object v2

    #@24
    .line 1226
    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    .line 1228
    const-string/jumbo v3, ",areFieldsSet="

    #@2b
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    .line 1228
    iget-boolean v3, p0, Ljava/util/Calendar;->areFieldsSet:Z

    #@31
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@34
    move-result-object v2

    #@35
    .line 1229
    const-string/jumbo v3, ",lenient="

    #@38
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v2

    #@3c
    .line 1229
    iget-boolean v3, p0, Ljava/util/Calendar;->lenient:Z

    #@3e
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 1230
    const-string/jumbo v3, ",zone="

    #@45
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    .line 1230
    iget-object v3, p0, Ljava/util/Calendar;->zone:Ljava/util/TimeZone;

    #@4b
    invoke-virtual {v3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@4e
    move-result-object v3

    #@4f
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@52
    move-result-object v2

    #@53
    .line 1231
    const-string/jumbo v3, ",firstDayOfWeek="

    #@56
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    .line 1231
    iget v3, p0, Ljava/util/Calendar;->firstDayOfWeek:I

    #@5c
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@5f
    move-result-object v2

    #@60
    .line 1232
    const-string/jumbo v3, ",minimalDaysInFirstWeek="

    #@63
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@66
    move-result-object v2

    #@67
    .line 1232
    iget v3, p0, Ljava/util/Calendar;->minimalDaysInFirstWeek:I

    #@69
    .line 1226
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v2

    #@6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v2

    #@71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@74
    .line 1233
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@75
    .local v0, "i":I
    :goto_1
    const/16 v2, 0x11

    #@77
    if-ge v0, v2, :cond_2

    #@79
    .line 1234
    const/16 v2, 0x2c

    #@7b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@7e
    .line 1235
    sget-object v2, Ljava/util/Calendar;->FIELD_NAMES:[Ljava/lang/String;

    #@80
    aget-object v2, v2, v0

    #@82
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    .line 1236
    const/16 v2, 0x3d

    #@87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@8a
    .line 1237
    iget-object v2, p0, Ljava/util/Calendar;->isSet:[Z

    #@8c
    aget-boolean v2, v2, v0

    #@8e
    if-eqz v2, :cond_1

    #@90
    .line 1238
    iget-object v2, p0, Ljava/util/Calendar;->fields:[I

    #@92
    aget v2, v2, v0

    #@94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@97
    .line 1233
    :goto_2
    add-int/lit8 v0, v0, 0x1

    #@99
    goto :goto_1

    #@9a
    .line 1227
    .end local v0    # "i":I
    .end local v1    # "result":Ljava/lang/StringBuilder;
    :cond_0
    const-string/jumbo v2, "?"

    #@9d
    goto :goto_0

    #@9e
    .line 1240
    .restart local v0    # "i":I
    .restart local v1    # "result":Ljava/lang/StringBuilder;
    :cond_1
    const/16 v2, 0x3f

    #@a0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a3
    goto :goto_2

    #@a4
    .line 1243
    :cond_2
    const/16 v2, 0x5d

    #@a6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@a9
    .line 1244
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ac
    move-result-object v2

    #@ad
    return-object v2
.end method
