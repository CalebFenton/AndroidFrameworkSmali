.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final whitelist ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final whitelist DAY_IN_MILLIS:J = 0x5265c00L

.field public static final whitelist FORMAT_12HOUR:I = 0x40
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_24HOUR:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_ABBREV_ALL:I = 0x80000

.field public static final whitelist FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final whitelist FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final whitelist FORMAT_ABBREV_TIME:I = 0x4000

.field public static final whitelist FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final whitelist FORMAT_CAP_AMPM:I = 0x100
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_MIDNIGHT:I = 0x1000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_NOON:I = 0x400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final whitelist FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final whitelist FORMAT_NO_NOON:I = 0x200

.field public static final whitelist FORMAT_NO_NOON_MIDNIGHT:I = 0xa00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist FORMAT_NO_YEAR:I = 0x8

.field public static final whitelist FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final whitelist FORMAT_SHOW_DATE:I = 0x10

.field public static final whitelist FORMAT_SHOW_TIME:I = 0x1

.field public static final whitelist FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final whitelist FORMAT_SHOW_YEAR:I = 0x4

.field public static final whitelist FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final whitelist HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_LONG:I = 0xa
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_MEDIUM:I = 0x14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORT:I = 0x1e
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORTER:I = 0x28
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist LENGTH_SHORTEST:I = 0x32
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist MINUTE_IN_MILLIS:J = 0xea60L

.field public static final whitelist MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final whitelist MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final whitelist NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final whitelist SECOND_IN_MILLIS:J = 0x3e8L

.field public static final whitelist WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final whitelist WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final whitelist YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final whitelist YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final whitelist YEAR_IN_MILLIS:J = 0x7528ad000L
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static greylist-max-o sElapsedFormatHMMSS:Ljava/lang/String;

.field private static greylist-max-o sElapsedFormatMMSS:Ljava/lang/String;

.field private static greylist-max-o sLastConfig:Landroid/content/res/Configuration;

.field private static final greylist-max-o sLock:Ljava/lang/Object;

.field private static greylist-max-o sNowTime:Landroid/text/format/Time;

.field private static greylist-max-o sThenTime:Landroid/text/format/Time;

.field public static final whitelist sameMonthTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist sameYearTable:[I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 131
    const/4 v0, 0x0

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 135
    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .registers 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "startMillis"    # J
    .param p3, "endMillis"    # J
    .param p5, "flags"    # I

    .line 562
    new-instance v0, Ljava/util/Formatter;

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    move-object v4, v0

    .line 563
    .local v4, "f":Ljava/util/Formatter;
    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    move v9, p5

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "startMillis":J
    .end local p3    # "endMillis":J
    .end local p5    # "flags":I
    .local v3, "context":Landroid/content/Context;
    .local v5, "startMillis":J
    .local v7, "endMillis":J
    .local v9, "flags":I
    invoke-static/range {v3 .. v9}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I

    .line 586
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "formatter":Ljava/util/Formatter;
    .end local p2    # "startMillis":J
    .end local p4    # "endMillis":J
    .end local p6    # "flags":I
    .local v0, "context":Landroid/content/Context;
    .local v1, "formatter":Ljava/util/Formatter;
    .local v2, "startMillis":J
    .local v4, "endMillis":J
    .local v6, "flags":I
    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .registers 15
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "formatter"    # Ljava/util/Formatter;
    .param p2, "startMillis"    # J
    .param p4, "endMillis"    # J
    .param p6, "flags"    # I
    .param p7, "timeZone"    # Ljava/lang/String;

    .line 757
    and-int/lit16 v0, p6, 0xc1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    .line 758
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/16 v0, 0x80

    goto :goto_10

    :cond_e
    const/16 v0, 0x40

    :goto_10
    or-int/2addr p6, v0

    move v5, p6

    goto :goto_14

    .line 757
    :cond_13
    move v5, p6

    .line 761
    .end local p6    # "flags":I
    .local v5, "flags":I
    :goto_14
    move-wide v1, p2

    move-wide v3, p4

    move-object v6, p7

    .end local p2    # "startMillis":J
    .end local p4    # "endMillis":J
    .end local p7    # "timeZone":Ljava/lang/String;
    .local v1, "startMillis":J
    .local v3, "endMillis":J
    .local v6, "timeZone":Ljava/lang/String;
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateIntervalFormat;->formatDateRange(JJILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 763
    .local p2, "range":Ljava/lang/String;
    :try_start_1b
    invoke-virtual {p1}, Ljava/util/Formatter;->out()Ljava/lang/Appendable;

    move-result-object p3

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_22} :catch_24

    .line 766
    nop

    .line 767
    return-object p1

    .line 764
    :catch_24
    move-exception v0

    move-object p3, v0

    .line 765
    .local p3, "impossible":Ljava/io/IOException;
    new-instance p4, Ljava/lang/AssertionError;

    invoke-direct {p4, p3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p4
.end method

.method public static whitelist formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "flags"    # I

    .line 813
    move-wide v3, p1

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .end local p0    # "context":Landroid/content/Context;
    .end local p1    # "millis":J
    .end local p3    # "flags":I
    .local v0, "context":Landroid/content/Context;
    .local v1, "millis":J
    .local v5, "flags":I
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static greylist formatDuration(J)Ljava/lang/CharSequence;
    .registers 3
    .param p0, "millis"    # J

    .line 386
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Landroid/text/format/DateUtils;->formatDuration(JI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static greylist-max-r formatDuration(JI)Ljava/lang/CharSequence;
    .registers 9
    .param p0, "millis"    # J
    .param p2, "abbrev"    # I

    .line 403
    sparse-switch p2, :sswitch_data_68

    .line 416
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .local v0, "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    goto :goto_f

    .line 413
    .end local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    :sswitch_6
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->NARROW:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 414
    .restart local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    goto :goto_f

    .line 410
    .end local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    :sswitch_9
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->SHORT:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 411
    .restart local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    goto :goto_f

    .line 405
    .end local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    :sswitch_c
    sget-object v0, Landroid/icu/text/MeasureFormat$FormatWidth;->WIDE:Landroid/icu/text/MeasureFormat$FormatWidth;

    .line 406
    .restart local v0    # "width":Landroid/icu/text/MeasureFormat$FormatWidth;
    nop

    .line 418
    :goto_f
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/icu/text/MeasureFormat;->getInstance(Ljava/util/Locale;Landroid/icu/text/MeasureFormat$FormatWidth;)Landroid/icu/text/MeasureFormat;

    move-result-object v1

    .line 419
    .local v1, "formatter":Landroid/icu/text/MeasureFormat;
    const-wide/32 v2, 0x36ee80

    cmp-long v4, p0, v2

    if-ltz v4, :cond_34

    .line 420
    const-wide/32 v4, 0x1b7740

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v2, v4

    .line 421
    .local v2, "hours":I
    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->HOUR:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 422
    .end local v2    # "hours":I
    :cond_34
    const-wide/32 v2, 0xea60

    cmp-long v4, p0, v2

    if-ltz v4, :cond_50

    .line 423
    const-wide/16 v4, 0x7530

    add-long/2addr v4, p0

    div-long/2addr v4, v2

    long-to-int v2, v4

    .line 424
    .local v2, "minutes":I
    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->MINUTE:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 426
    .end local v2    # "minutes":I
    :cond_50
    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p0

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v2, v2

    .line 427
    .local v2, "seconds":I
    new-instance v3, Landroid/icu/util/Measure;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    sget-object v5, Landroid/icu/util/MeasureUnit;->SECOND:Landroid/icu/util/TimeUnit;

    invoke-direct {v3, v4, v5}, Landroid/icu/util/Measure;-><init>(Ljava/lang/Number;Landroid/icu/util/MeasureUnit;)V

    invoke-virtual {v1, v3}, Landroid/icu/text/MeasureFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_68
    .sparse-switch
        0xa -> :sswitch_c
        0x14 -> :sswitch_9
        0x1e -> :sswitch_9
        0x28 -> :sswitch_9
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public static whitelist formatElapsedTime(J)Ljava/lang/String;
    .registers 3
    .param p0, "elapsedSeconds"    # J

    .line 437
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .registers 15
    .param p0, "recycle"    # Ljava/lang/StringBuilder;
    .param p1, "elapsedSeconds"    # J

    .line 450
    const-wide/16 v0, 0x0

    .line 451
    .local v0, "hours":J
    const-wide/16 v2, 0x0

    .line 452
    .local v2, "minutes":J
    const-wide/16 v4, 0x0

    .line 453
    .local v4, "seconds":J
    const-wide/16 v6, 0xe10

    cmp-long v8, p1, v6

    if-ltz v8, :cond_10

    .line 454
    div-long v0, p1, v6

    .line 455
    mul-long/2addr v6, v0

    sub-long/2addr p1, v6

    .line 457
    :cond_10
    const-wide/16 v6, 0x3c

    cmp-long v8, p1, v6

    if-ltz v8, :cond_1a

    .line 458
    div-long v2, p1, v6

    .line 459
    mul-long/2addr v6, v2

    sub-long/2addr p1, v6

    .line 461
    :cond_1a
    move-wide v4, p1

    .line 465
    move-object v6, p0

    .line 466
    .local v6, "sb":Ljava/lang/StringBuilder;
    if-nez v6, :cond_27

    .line 467
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v8, 0x8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v6, v7

    goto :goto_2b

    .line 469
    :cond_27
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 474
    :goto_2b
    new-instance v7, Ljava/util/Formatter;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 475
    .local v7, "f":Ljava/util/Formatter;
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 476
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-lez v8, :cond_58

    .line 477
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    filled-new-array {v9, v10, v11}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 479
    :cond_58
    sget-object v8, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    filled-new-array {v9, v10}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8
.end method

.method public static final whitelist formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .registers 11
    .param p0, "then"    # J
    .param p2, "now"    # J
    .param p4, "dateStyle"    # I
    .param p5, "timeStyle"    # I

    .line 502
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 503
    .local v0, "thenCal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 504
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 505
    .local v1, "thenDate":Ljava/util/Date;
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 506
    .local v2, "nowCal":Ljava/util/Calendar;
    invoke-virtual {v2, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 510
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3a

    .line 511
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3a

    .line 512
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v4, v3, :cond_3a

    .line 513
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .local v3, "f":Ljava/text/DateFormat;
    goto :goto_3e

    .line 515
    .end local v3    # "f":Ljava/text/DateFormat;
    :cond_3a
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    .line 517
    .restart local v3    # "f":Ljava/text/DateFormat;
    :goto_3e
    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static whitelist getAMPMString(I)Ljava/lang/String;
    .registers 3
    .param p0, "ampm"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 235
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "amPm":[Ljava/lang/String;
    add-int/lit8 v1, p0, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public static whitelist getDayOfWeekString(II)Ljava/lang/String;
    .registers 5
    .param p0, "dayOfWeek"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    invoke-static {}, Landroid/icu/text/DateFormatSymbols;->getInstance()Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 209
    .local v0, "dfs":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_16

    .line 220
    const/4 v1, 0x0

    .local v1, "width":I
    goto :goto_d

    .line 214
    .end local v1    # "width":I
    :sswitch_9
    const/4 v1, 0x2

    .line 215
    .restart local v1    # "width":I
    goto :goto_d

    .line 211
    .end local v1    # "width":I
    :sswitch_b
    const/4 v1, 0x1

    .line 212
    .restart local v1    # "width":I
    nop

    .line 223
    :goto_d
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols;->getWeekdays(II)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p0

    return-object v2

    nop

    :sswitch_data_16
    .sparse-switch
        0xa -> :sswitch_b
        0x32 -> :sswitch_9
    .end sparse-switch
.end method

.method public static whitelist getMonthString(II)Ljava/lang/String;
    .registers 5
    .param p0, "month"    # I
    .param p1, "abbrev"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getIcuDateFormatSymbols(Ljava/util/Locale;)Landroid/icu/text/DateFormatSymbols;

    move-result-object v0

    .line 254
    .local v0, "dfs":Landroid/icu/text/DateFormatSymbols;
    sparse-switch p1, :sswitch_data_1a

    .line 265
    const/4 v1, 0x0

    .local v1, "width":I
    goto :goto_11

    .line 259
    .end local v1    # "width":I
    :sswitch_d
    const/4 v1, 0x2

    .line 260
    .restart local v1    # "width":I
    goto :goto_11

    .line 256
    .end local v1    # "width":I
    :sswitch_f
    const/4 v1, 0x1

    .line 257
    .restart local v1    # "width":I
    nop

    .line 268
    :goto_11
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/icu/text/DateFormatSymbols;->getMonths(II)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p0

    return-object v2

    nop

    :sswitch_data_1a
    .sparse-switch
        0xa -> :sswitch_f
        0x32 -> :sswitch_d
    .end sparse-switch
.end method

.method public static whitelist getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .registers 20
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "time"    # J
    .param p3, "minResolution"    # J
    .param p5, "transitionResolution"    # J
    .param p7, "flags"    # I

    .line 352
    move/from16 v0, p7

    and-int/lit16 v1, v0, 0xc1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_15

    .line 353
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/16 v1, 0x80

    goto :goto_12

    :cond_10
    const/16 v1, 0x40

    :goto_12
    or-int/2addr v0, v1

    move v11, v0

    .end local p7    # "flags":I
    .local v0, "flags":I
    goto :goto_16

    .line 352
    .end local v0    # "flags":I
    .restart local p7    # "flags":I
    :cond_15
    move v11, v0

    .line 356
    .end local p7    # "flags":I
    .local v11, "flags":I
    :goto_16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 357
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 356
    move-wide v3, p1

    move-wide v7, p3

    move-wide/from16 v9, p5

    invoke-static/range {v1 .. v11}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeDateTimeString(Ljava/util/Locale;Ljava/util/TimeZone;JJJJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .registers 8
    .param p0, "startTime"    # J

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    .end local p0    # "startTime":J
    .local v0, "startTime":J
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .registers 13
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J

    .line 296
    const v6, 0x10014

    .line 297
    .local v6, "flags":I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .end local p0    # "time":J
    .end local p2    # "now":J
    .end local p4    # "minResolution":J
    .local v0, "time":J
    .local v2, "now":J
    .local v4, "minResolution":J
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .registers 16
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "minResolution"    # J
    .param p6, "flags"    # I

    .line 322
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 323
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    .line 322
    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    move v8, p6

    .end local p0    # "time":J
    .end local p2    # "now":J
    .end local p4    # "minResolution":J
    .end local p6    # "flags":I
    .local v2, "time":J
    .local v4, "now":J
    .local v6, "minResolution":J
    .local v8, "flags":I
    invoke-static/range {v0 .. v8}, Landroid/text/format/RelativeDateTimeFormatter;->getRelativeTimeSpanString(Ljava/util/Locale;Ljava/util/TimeZone;JJJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static whitelist getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .registers 4
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J

    .line 884
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .registers 16
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "millis"    # J
    .param p3, "withPreposition"    # Z

    .line 834
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 835
    .local v7, "now":J
    sub-long v0, v7, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    .line 837
    .local v9, "span":J
    const-class v11, Landroid/text/format/DateUtils;

    monitor-enter v11

    .line 838
    :try_start_d
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v0, :cond_18

    .line 839
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 842
    :cond_18
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    if-nez v0, :cond_23

    .line 843
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 846
    :cond_23
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v0, v7, v8}, Landroid/text/format/Time;->set(J)V

    .line 847
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 850
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v9, v0

    if-gez v0, :cond_4a

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_4a

    .line 852
    const/4 v6, 0x1

    .line 853
    .local v6, "flags":I
    move-wide v4, p1

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, "result":Ljava/lang/String;
    const v1, 0x10408d9

    .line 855
    .end local v6    # "flags":I
    .local v1, "prepositionId":I
    goto :goto_6f

    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "prepositionId":I
    :cond_4a
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_62

    .line 857
    const v6, 0x20014

    .line 858
    .restart local v6    # "flags":I
    move-wide v4, p1

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 861
    .restart local v0    # "result":Ljava/lang/String;
    const v1, 0x10408d8

    .line 862
    .end local v6    # "flags":I
    .restart local v1    # "prepositionId":I
    goto :goto_6f

    .line 864
    .end local v0    # "result":Ljava/lang/String;
    .end local v1    # "prepositionId":I
    :cond_62
    const v6, 0x10010

    .line 865
    .restart local v6    # "flags":I
    move-wide v4, p1

    move-object v1, p0

    move-wide v2, p1

    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    .line 866
    .restart local v0    # "result":Ljava/lang/String;
    const v1, 0x10408d8

    .line 868
    .end local v6    # "flags":I
    .restart local v1    # "prepositionId":I
    :goto_6f
    if-eqz p3, :cond_7e

    .line 869
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 870
    .local v2, "res":Landroid/content/res/Resources;
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 872
    .end local v1    # "prepositionId":I
    .end local v2    # "res":Landroid/content/res/Resources;
    :cond_7e
    monitor-exit v11

    .line 873
    return-object v0

    .line 872
    .end local v0    # "result":Ljava/lang/String;
    :catchall_80
    move-exception v0

    monitor-exit v11
    :try_end_82
    .catchall {:try_start_d .. :try_end_82} :catchall_80

    throw v0
.end method

.method private static greylist-max-o initFormatStrings()V
    .registers 2

    .line 362
    sget-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 363
    :try_start_3
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStringsLocked()V

    .line 364
    monitor-exit v0

    .line 365
    return-void

    .line 364
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method

.method private static greylist-max-o initFormatStringsLocked()V
    .registers 3

    .line 368
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 369
    .local v0, "r":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 370
    .local v1, "cfg":Landroid/content/res/Configuration;
    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v2, :cond_14

    sget-object v2, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 371
    :cond_14
    sput-object v1, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 372
    const v2, 0x104039d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 373
    const v2, 0x104039c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 375
    :cond_28
    return-void
.end method

.method private static blacklist isSameDate(JJ)Z
    .registers 11
    .param p0, "oneMillis"    # J
    .param p2, "twoMillis"    # J

    .line 528
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v0

    .line 530
    .local v0, "zoneId":Ljava/time/ZoneId;
    invoke-static {p0, p1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 531
    .local v1, "oneInstant":Ljava/time/Instant;
    invoke-static {v1, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 533
    .local v2, "oneLocalDateTime":Ljava/time/LocalDateTime;
    invoke-static {p2, p3}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v3

    .line 534
    .local v3, "twoInstant":Ljava/time/Instant;
    invoke-static {v3, v0}, Ljava/time/LocalDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/LocalDateTime;

    move-result-object v4

    .line 536
    .local v4, "twoLocalDateTime":Ljava/time/LocalDateTime;
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getYear()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getYear()I

    move-result v6

    if-ne v5, v6, :cond_34

    .line 537
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getMonthValue()I

    move-result v6

    if-ne v5, v6, :cond_34

    .line 538
    invoke-virtual {v2}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v4}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v6

    if-ne v5, v6, :cond_34

    const/4 v5, 0x1

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    .line 536
    :goto_35
    return v5
.end method

.method public static whitelist isToday(J)Z
    .registers 4
    .param p0, "when"    # J

    .line 524
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/text/format/DateUtils;->isSameDate(JJ)Z

    move-result v0

    return v0
.end method
