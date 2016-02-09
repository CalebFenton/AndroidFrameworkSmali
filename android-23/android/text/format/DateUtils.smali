.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field public static final FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static sNowTime:Landroid/text/format/Time;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 43
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    #@7
    .line 41
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    #@0
    .prologue
    .line 502
    new-instance v1, Ljava/util/Formatter;

    #@2
    new-instance v0, Ljava/lang/StringBuilder;

    #@4
    const/16 v2, 0x32

    #@6
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    #@9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@c
    move-result-object v2

    #@d
    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@10
    .local v1, "f":Ljava/util/Formatter;
    move-object v0, p0

    #@11
    move-wide v2, p1

    #@12
    move-wide v4, p3

    #@13
    move v6, p5

    #@14
    .line 503
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 526
    const/4 v7, 0x0

    #@1
    move-object v0, p0

    #@2
    move-object v1, p1

    #@3
    move-wide v2, p2

    #@4
    move-wide v4, p4

    #@5
    move v6, p6

    #@6
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I
    .param p7, "timeZone"    # Ljava/lang/String;

    #@0
    .prologue
    .line 697
    and-int/lit16 v2, p6, 0xc1

    #@2
    const/4 v3, 0x1

    #@3
    if-ne v2, v3, :cond_0

    #@5
    .line 698
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    #@8
    move-result v2

    #@9
    if-eqz v2, :cond_1

    #@b
    const/16 v2, 0x80

    #@d
    :goto_0
    or-int/2addr p6, v2

    #@e
    .line 701
    :cond_0
    invoke-static/range {p2 .. p7}, Llibcore/icu/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v1

    #@12
    .line 703
    .local v1, "range":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    #@15
    move-result-object v2

    #@16
    invoke-interface {v2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 707
    return-object p1

    #@1a
    .line 698
    .end local v1    # "range":Ljava/lang/String;
    :cond_1
    const/16 v2, 0x40

    #@1c
    goto :goto_0

    #@1d
    .line 704
    .restart local v1    # "range":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@1e
    .line 705
    .local v0, "impossible":Ljava/io/IOException;
    new-instance v2, Ljava/lang/AssertionError;

    #@20
    invoke-direct {v2, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@23
    throw v2
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I

    #@0
    .prologue
    move-object v1, p0

    #@1
    move-wide v2, p1

    #@2
    move-wide v4, p1

    #@3
    move v6, p3

    #@4
    .line 753
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static formatDuration(J)Ljava/lang/CharSequence;
    .locals 12
    .param p0, "millis"    # J

    #@0
    .prologue
    const-wide/32 v10, 0x36ee80

    #@3
    const-wide/32 v6, 0xea60

    #@6
    const/4 v9, 0x1

    #@7
    const/4 v8, 0x0

    #@8
    .line 359
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@b
    move-result-object v2

    #@c
    .line 360
    .local v2, "res":Landroid/content/res/Resources;
    cmp-long v4, p0, v10

    #@e
    if-ltz v4, :cond_0

    #@10
    .line 361
    const-wide/32 v4, 0x1b7740

    #@13
    add-long/2addr v4, p0

    #@14
    div-long/2addr v4, v10

    #@15
    long-to-int v0, v4

    #@16
    .line 362
    .local v0, "hours":I
    new-array v4, v9, [Ljava/lang/Object;

    #@18
    .line 363
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@1b
    move-result-object v5

    #@1c
    aput-object v5, v4, v8

    #@1e
    const v5, 0x1140004

    #@21
    .line 362
    invoke-virtual {v2, v5, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@24
    move-result-object v4

    #@25
    return-object v4

    #@26
    .line 364
    .end local v0    # "hours":I
    :cond_0
    cmp-long v4, p0, v6

    #@28
    if-ltz v4, :cond_1

    #@2a
    .line 365
    const-wide/16 v4, 0x7530

    #@2c
    add-long/2addr v4, p0

    #@2d
    div-long/2addr v4, v6

    #@2e
    long-to-int v1, v4

    #@2f
    .line 366
    .local v1, "minutes":I
    new-array v4, v9, [Ljava/lang/Object;

    #@31
    .line 367
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@34
    move-result-object v5

    #@35
    aput-object v5, v4, v8

    #@37
    const v5, 0x1140003

    #@3a
    .line 366
    invoke-virtual {v2, v5, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@3d
    move-result-object v4

    #@3e
    return-object v4

    #@3f
    .line 369
    .end local v1    # "minutes":I
    :cond_1
    const-wide/16 v4, 0x1f4

    #@41
    add-long/2addr v4, p0

    #@42
    const-wide/16 v6, 0x3e8

    #@44
    div-long/2addr v4, v6

    #@45
    long-to-int v3, v4

    #@46
    .line 370
    .local v3, "seconds":I
    new-array v4, v9, [Ljava/lang/Object;

    #@48
    .line 371
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4b
    move-result-object v5

    #@4c
    aput-object v5, v4, v8

    #@4e
    const v5, 0x1140002

    #@51
    .line 370
    invoke-virtual {v2, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    #@54
    move-result-object v4

    #@55
    return-object v4
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "elapsedSeconds"    # J

    #@0
    .prologue
    .line 381
    const/4 v0, 0x0

    #@1
    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 13
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    #@0
    .prologue
    .line 394
    const-wide/16 v2, 0x0

    #@2
    .line 395
    .local v2, "hours":J
    const-wide/16 v4, 0x0

    #@4
    .line 396
    .local v4, "minutes":J
    const-wide/16 v6, 0x0

    #@6
    .line 397
    .local v6, "seconds":J
    const-wide/16 v8, 0xe10

    #@8
    cmp-long v8, p1, v8

    #@a
    if-ltz v8, :cond_0

    #@c
    .line 398
    const-wide/16 v8, 0xe10

    #@e
    div-long v2, p1, v8

    #@10
    .line 399
    const-wide/16 v8, 0xe10

    #@12
    mul-long/2addr v8, v2

    #@13
    sub-long/2addr p1, v8

    #@14
    .line 401
    :cond_0
    const-wide/16 v8, 0x3c

    #@16
    cmp-long v8, p1, v8

    #@18
    if-ltz v8, :cond_1

    #@1a
    .line 402
    const-wide/16 v8, 0x3c

    #@1c
    div-long v4, p1, v8

    #@1e
    .line 403
    const-wide/16 v8, 0x3c

    #@20
    mul-long/2addr v8, v4

    #@21
    sub-long/2addr p1, v8

    #@22
    .line 405
    :cond_1
    move-wide v6, p1

    #@23
    .line 409
    move-object v1, p0

    #@24
    .line 410
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-nez v1, :cond_2

    #@26
    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    #@28
    .end local v1    # "sb":Ljava/lang/StringBuilder;
    const/16 v8, 0x8

    #@2a
    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    #@2d
    .line 418
    .restart local v1    # "sb":Ljava/lang/StringBuilder;
    :goto_0
    new-instance v0, Ljava/util/Formatter;

    #@2f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@32
    move-result-object v8

    #@33
    invoke-direct {v0, v1, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    #@36
    .line 419
    .local v0, "f":Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    #@39
    .line 420
    const-wide/16 v8, 0x0

    #@3b
    cmp-long v8, v2, v8

    #@3d
    if-lez v8, :cond_3

    #@3f
    .line 421
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    #@41
    const/4 v9, 0x3

    #@42
    new-array v9, v9, [Ljava/lang/Object;

    #@44
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@47
    move-result-object v10

    #@48
    const/4 v11, 0x0

    #@49
    aput-object v10, v9, v11

    #@4b
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@4e
    move-result-object v10

    #@4f
    const/4 v11, 0x1

    #@50
    aput-object v10, v9, v11

    #@52
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@55
    move-result-object v10

    #@56
    const/4 v11, 0x2

    #@57
    aput-object v10, v9, v11

    #@59
    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@5c
    move-result-object v8

    #@5d
    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@60
    move-result-object v8

    #@61
    return-object v8

    #@62
    .line 413
    .end local v0    # "f":Ljava/util/Formatter;
    :cond_2
    const/4 v8, 0x0

    #@63
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    #@66
    goto :goto_0

    #@67
    .line 423
    .restart local v0    # "f":Ljava/util/Formatter;
    :cond_3
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    #@69
    const/4 v9, 0x2

    #@6a
    new-array v9, v9, [Ljava/lang/Object;

    #@6c
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@6f
    move-result-object v10

    #@70
    const/4 v11, 0x0

    #@71
    aput-object v10, v9, v11

    #@73
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@76
    move-result-object v10

    #@77
    const/4 v11, 0x1

    #@78
    aput-object v10, v9, v11

    #@7a
    invoke-virtual {v0, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    #@7d
    move-result-object v8

    #@7e
    invoke-virtual {v8}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    return-object v8
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "then"    # J
    .param p2, "now"    # J
    .param p4, "dateStyle"    # I
    .param p5, "timeStyle"    # I

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const/4 v6, 0x2

    #@2
    const/4 v5, 0x1

    #@3
    .line 446
    new-instance v2, Ljava/util/GregorianCalendar;

    #@5
    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    #@8
    .line 447
    .local v2, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@b
    .line 448
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    #@e
    move-result-object v3

    #@f
    .line 449
    .local v3, "thenDate":Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    #@11
    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    #@14
    .line 450
    .local v1, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@17
    .line 454
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    #@1a
    move-result v4

    #@1b
    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    #@1e
    move-result v5

    #@1f
    if-ne v4, v5, :cond_0

    #@21
    .line 455
    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    #@24
    move-result v4

    #@25
    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    #@28
    move-result v5

    #@29
    if-ne v4, v5, :cond_0

    #@2b
    .line 456
    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    #@2e
    move-result v4

    #@2f
    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    #@32
    move-result v5

    #@33
    if-ne v4, v5, :cond_0

    #@35
    .line 457
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    #@38
    move-result-object v0

    #@39
    .line 461
    .local v0, "f":Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@3c
    move-result-object v4

    #@3d
    return-object v4

    #@3e
    .line 459
    .end local v0    # "f":Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    #@41
    move-result-object v0

    #@42
    .restart local v0    # "f":Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 2
    .param p0, "ampm"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 216
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@7
    move-result-object v0

    #@8
    iget-object v0, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    #@a
    add-int/lit8 v1, p0, 0x0

    #@c
    aget-object v0, v0, v1

    #@e
    return-object v0
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .param p0, "dayOfWeek"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 194
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@7
    move-result-object v0

    #@8
    .line 196
    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 202
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@d
    .line 204
    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    #@f
    return-object v2

    #@10
    .line 197
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longWeekdayNames:[Ljava/lang/String;

    #@12
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@13
    .line 198
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@15
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@16
    .line 199
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@18
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@19
    .line 200
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortWeekdayNames:[Ljava/lang/String;

    #@1b
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 201
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyWeekdayNames:[Ljava/lang/String;

    #@1e
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@1f
    .line 196
    nop

    #@20
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 232
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    #@7
    move-result-object v0

    #@8
    .line 234
    .local v0, "d":Llibcore/icu/LocaleData;
    sparse-switch p1, :sswitch_data_0

    #@b
    .line 240
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@d
    .line 242
    .local v1, "names":[Ljava/lang/String;
    :goto_0
    aget-object v2, v1, p0

    #@f
    return-object v2

    #@10
    .line 235
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_0
    iget-object v1, v0, Llibcore/icu/LocaleData;->longMonthNames:[Ljava/lang/String;

    #@12
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@13
    .line 236
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_1
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@15
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@16
    .line 237
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_2
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@18
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@19
    .line 238
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_3
    iget-object v1, v0, Llibcore/icu/LocaleData;->shortMonthNames:[Ljava/lang/String;

    #@1b
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@1c
    .line 239
    .end local v1    # "names":[Ljava/lang/String;
    :sswitch_4
    iget-object v1, v0, Llibcore/icu/LocaleData;->tinyMonthNames:[Ljava/lang/String;

    #@1e
    .restart local v1    # "names":[Ljava/lang/String;
    goto :goto_0

    #@1f
    .line 234
    nop

    #@20
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 13
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minResolution"    # J
    .param p5, "transitionResolution"    # J
    .param p7, "flags"    # I

    #@0
    .prologue
    .line 326
    move/from16 v0, p7

    #@2
    and-int/lit16 v2, v0, 0xc1

    #@4
    const/4 v3, 0x1

    #@5
    if-ne v2, v3, :cond_0

    #@7
    .line 327
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    #@a
    move-result v2

    #@b
    if-eqz v2, :cond_1

    #@d
    const/16 v2, 0x80

    #@f
    :goto_0
    or-int p7, p7, v2

    #@11
    .line 330
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@14
    move-result-object v2

    #@15
    .line 331
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@18
    move-result-object v3

    #@19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1c
    move-result-wide v6

    #@1d
    move-wide v4, p1

    #@1e
    move-wide/from16 v8, p3

    #@20
    move-wide/from16 v10, p5

    #@22
    move/from16 v12, p7

    #@24
    .line 330
    invoke-static/range {v2 .. v12}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 327
    :cond_1
    const/16 v2, 0x40

    #@2b
    goto :goto_0
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "startTime"    # J

    #@0
    .prologue
    .line 254
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v2

    #@4
    const-wide/32 v4, 0xea60

    #@7
    move-wide v0, p0

    #@8
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J

    #@0
    .prologue
    .line 270
    const v6, 0x10014

    #@3
    .local v6, "flags":I
    move-wide v0, p0

    #@4
    move-wide v2, p2

    #@5
    move-wide v4, p4

    #@6
    .line 271
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 10
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 296
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    .line 297
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@7
    move-result-object v1

    #@8
    move-wide v2, p0

    #@9
    move-wide v4, p2

    #@a
    move-wide v6, p4

    #@b
    move/from16 v8, p6

    #@d
    .line 296
    invoke-static/range {v0 .. v8}, Llibcore/icu/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;

    #@10
    move-result-object v0

    #@11
    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 824
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 17
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "withPreposition"    # Z

    #@0
    .prologue
    .line 774
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v10

    #@4
    .line 775
    .local v10, "now":J
    sub-long v4, v10, p1

    #@6
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    #@9
    move-result-wide v14

    #@a
    .line 777
    .local v14, "span":J
    const-class v13, Landroid/text/format/DateUtils;

    #@c
    monitor-enter v13

    #@d
    .line 778
    :try_start_0
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    #@f
    if-nez v3, :cond_0

    #@11
    .line 779
    new-instance v3, Landroid/text/format/Time;

    #@13
    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    #@16
    sput-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    #@18
    .line 782
    :cond_0
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    #@1a
    if-nez v3, :cond_1

    #@1c
    .line 783
    new-instance v3, Landroid/text/format/Time;

    #@1e
    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    #@21
    sput-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    #@23
    .line 786
    :cond_1
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    #@25
    invoke-virtual {v3, v10, v11}, Landroid/text/format/Time;->set(J)V

    #@28
    .line 787
    sget-object v3, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    #@2a
    move-wide/from16 v0, p1

    #@2c
    invoke-virtual {v3, v0, v1}, Landroid/text/format/Time;->set(J)V

    #@2f
    .line 790
    const-wide/32 v4, 0x5265c00

    #@32
    cmp-long v3, v14, v4

    #@34
    if-gez v3, :cond_3

    #@36
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    #@38
    iget v3, v3, Landroid/text/format/Time;->weekDay:I

    #@3a
    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    #@3c
    iget v4, v4, Landroid/text/format/Time;->weekDay:I

    #@3e
    if-ne v3, v4, :cond_3

    #@40
    .line 792
    const/4 v8, 0x1

    #@41
    .local v8, "flags":I
    move-object/from16 v3, p0

    #@43
    move-wide/from16 v4, p1

    #@45
    move-wide/from16 v6, p1

    #@47
    .line 793
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    #@4a
    move-result-object v12

    #@4b
    .line 794
    .local v12, "result":Ljava/lang/String;
    const v2, 0x1040323

    #@4e
    .line 808
    .local v2, "prepositionId":I
    :goto_0
    if-eqz p3, :cond_2

    #@50
    .line 809
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@53
    move-result-object v9

    #@54
    .line 810
    .local v9, "res":Landroid/content/res/Resources;
    const/4 v3, 0x1

    #@55
    new-array v3, v3, [Ljava/lang/Object;

    #@57
    const/4 v4, 0x0

    #@58
    aput-object v12, v3, v4

    #@5a
    invoke-virtual {v9, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5d
    move-result-object v12

    #@5e
    .end local v9    # "res":Landroid/content/res/Resources;
    :cond_2
    monitor-exit v13

    #@5f
    .line 813
    return-object v12

    #@60
    .line 795
    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_3
    :try_start_1
    sget-object v3, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    #@62
    iget v3, v3, Landroid/text/format/Time;->year:I

    #@64
    sget-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    #@66
    iget v4, v4, Landroid/text/format/Time;->year:I

    #@68
    if-eq v3, v4, :cond_4

    #@6a
    .line 797
    const v8, 0x20014

    #@6d
    .restart local v8    # "flags":I
    move-object/from16 v3, p0

    #@6f
    move-wide/from16 v4, p1

    #@71
    move-wide/from16 v6, p1

    #@73
    .line 798
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    #@76
    move-result-object v12

    #@77
    .line 801
    .restart local v12    # "result":Ljava/lang/String;
    const v2, 0x1040322

    #@7a
    .restart local v2    # "prepositionId":I
    goto :goto_0

    #@7b
    .line 804
    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :cond_4
    const v8, 0x10010

    #@7e
    .restart local v8    # "flags":I
    move-object/from16 v3, p0

    #@80
    move-wide/from16 v4, p1

    #@82
    move-wide/from16 v6, p1

    #@84
    .line 805
    invoke-static/range {v3 .. v8}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@87
    move-result-object v12

    #@88
    .line 806
    .restart local v12    # "result":Ljava/lang/String;
    const v2, 0x1040322

    #@8b
    .restart local v2    # "prepositionId":I
    goto :goto_0

    #@8c
    .line 777
    .end local v2    # "prepositionId":I
    .end local v8    # "flags":I
    .end local v12    # "result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@8d
    monitor-exit v13

    #@8e
    throw v3
.end method

.method private static initFormatStrings()V
    .locals 2

    #@0
    .prologue
    .line 336
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    .line 337
    :try_start_0
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 335
    return-void

    #@8
    .line 336
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method

.method private static initFormatStringsLocked()V
    .locals 3

    #@0
    .prologue
    .line 342
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@3
    move-result-object v1

    #@4
    .line 343
    .local v1, "r":Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    #@7
    move-result-object v0

    #@8
    .line 344
    .local v0, "cfg":Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    #@a
    if-eqz v2, :cond_0

    #@c
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    #@e
    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    #@11
    move-result v2

    #@12
    if-eqz v2, :cond_0

    #@14
    .line 341
    :goto_0
    return-void

    #@15
    .line 345
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    #@17
    .line 346
    const v2, 0x1040336

    #@1a
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@1d
    move-result-object v2

    #@1e
    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    #@20
    .line 347
    const v2, 0x1040337

    #@23
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    #@29
    goto :goto_0
.end method

.method public static isToday(J)Z
    .locals 8
    .param p0, "when"    # J

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 468
    new-instance v3, Landroid/text/format/Time;

    #@3
    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    #@6
    .line 469
    .local v3, "time":Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    #@9
    .line 471
    iget v2, v3, Landroid/text/format/Time;->year:I

    #@b
    .line 472
    .local v2, "thenYear":I
    iget v0, v3, Landroid/text/format/Time;->month:I

    #@d
    .line 473
    .local v0, "thenMonth":I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    #@f
    .line 475
    .local v1, "thenMonthDay":I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@12
    move-result-wide v6

    #@13
    invoke-virtual {v3, v6, v7}, Landroid/text/format/Time;->set(J)V

    #@16
    .line 476
    iget v5, v3, Landroid/text/format/Time;->year:I

    #@18
    if-ne v2, v5, :cond_0

    #@1a
    .line 477
    iget v5, v3, Landroid/text/format/Time;->month:I

    #@1c
    if-ne v0, v5, :cond_0

    #@1e
    .line 478
    iget v5, v3, Landroid/text/format/Time;->monthDay:I

    #@20
    if-ne v1, v5, :cond_0

    #@22
    const/4 v4, 0x1

    #@23
    .line 476
    :cond_0
    return v4
.end method
