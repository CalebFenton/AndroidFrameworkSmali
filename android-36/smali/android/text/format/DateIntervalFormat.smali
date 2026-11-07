.class public final Landroid/text/format/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# static fields
.field private static final blacklist CACHED_FORMATTERS:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/icu/text/DateIntervalFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 43
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static blacklist formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "startMs"    # J
    .param p2, "endMs"    # J
    .param p4, "flags"    # I
    .param p5, "olsonId"    # Ljava/lang/String;

    .line 54
    and-int/lit16 v0, p4, 0x2000

    if-eqz v0, :cond_6

    .line 55
    const-string p5, "UTC"

    .line 59
    :cond_6
    if-eqz p5, :cond_d

    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    goto :goto_11

    :cond_d
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 60
    .local v0, "tz":Ljava/util/TimeZone;
    :goto_11
    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    move-result-object v2

    .line 61
    .local v2, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    move-result-object v1

    .line 62
    .local v1, "icuLocale":Landroid/icu/util/ULocale;
    move-wide v3, p0

    move-wide v5, p2

    move v7, p4

    .end local p0    # "startMs":J
    .end local p2    # "endMs":J
    .end local p4    # "flags":I
    .local v3, "startMs":J
    .local v5, "endMs":J
    .local v7, "flags":I
    invoke-static/range {v1 .. v7}, Landroid/text/format/DateIntervalFormat;->formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;
    .registers 15
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "startMs"    # J
    .param p4, "endMs"    # J
    .param p6, "flags"    # I

    .line 72
    invoke-static {p1, p0, p2, p3}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v0

    .line 74
    .local v0, "startCalendar":Landroid/icu/util/Calendar;
    cmp-long v1, p2, p4

    if-nez v1, :cond_a

    .line 75
    move-object v1, v0

    .local v1, "endCalendar":Landroid/icu/util/Calendar;
    goto :goto_e

    .line 77
    .end local v1    # "endCalendar":Landroid/icu/util/Calendar;
    :cond_a
    invoke-static {p1, p0, p4, p5}, Landroid/text/format/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    move-result-object v1

    .line 89
    .restart local v1    # "endCalendar":Landroid/icu/util/Calendar;
    :goto_e
    invoke-static {v1}, Landroid/text/format/DateIntervalFormat;->isExactlyMidnight(Landroid/icu/util/Calendar;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_38

    .line 90
    and-int/lit8 v2, p6, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1c

    move v2, v4

    goto :goto_1d

    :cond_1c
    move v2, v3

    .line 91
    .local v2, "showTime":Z
    :goto_1d
    invoke-static {v0, v1}, Landroid/text/format/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    move-result v5

    if-ne v5, v4, :cond_24

    goto :goto_25

    :cond_24
    move v4, v3

    .line 93
    .local v4, "endsDayAfterStart":Z
    :goto_25
    if-nez v2, :cond_2b

    cmp-long v5, p2, p4

    if-nez v5, :cond_33

    :cond_2b
    if-eqz v4, :cond_38

    .line 95
    invoke-static {v0}, Landroid/text/format/DateUtilsBridge;->isDisplayMidnightUsingSkeleton(Landroid/icu/util/Calendar;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 96
    :cond_33
    const/4 v5, 0x5

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/icu/util/Calendar;->add(II)V

    .line 100
    .end local v2    # "showTime":Z
    .end local v4    # "endsDayAfterStart":Z
    :cond_38
    invoke-static {v0, v1, p6}, Landroid/text/format/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    move-result-object v2

    .line 101
    .local v2, "skeleton":Ljava/lang/String;
    sget-object v4, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    monitor-enter v4

    .line 102
    nop

    .line 103
    :try_start_40
    invoke-static {v2, p0, p1}, Landroid/text/format/DateIntervalFormat;->getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v5

    .line 104
    .local v5, "formatter":Landroid/icu/text/DateIntervalFormat;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v7, Ljava/text/FieldPosition;

    invoke-direct {v7, v3}, Ljava/text/FieldPosition;-><init>(I)V

    invoke-virtual {v5, v0, v1, v6, v7}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    monitor-exit v4

    .line 104
    return-object v3

    .line 106
    .end local v5    # "formatter":Landroid/icu/text/DateIntervalFormat;
    :catchall_58
    move-exception v3

    monitor-exit v4
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_58

    throw v3
.end method

.method private static blacklist getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;
    .registers 6
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "icuTimeZone"    # Landroid/icu/util/TimeZone;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "key":Ljava/lang/String;
    sget-object v1, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/text/DateIntervalFormat;

    .line 113
    .local v1, "formatter":Landroid/icu/text/DateIntervalFormat;
    if-eqz v1, :cond_2a

    .line 114
    return-object v1

    .line 116
    :cond_2a
    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    move-result-object v1

    .line 117
    invoke-virtual {v1, p2}, Landroid/icu/text/DateIntervalFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 118
    sget-object v2, Landroid/text/format/DateIntervalFormat;->CACHED_FORMATTERS:Landroid/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v1
.end method

.method private static blacklist isExactlyMidnight(Landroid/icu/util/Calendar;)Z
    .registers 2
    .param p0, "c"    # Landroid/icu/util/Calendar;

    .line 123
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 124
    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 125
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    .line 126
    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Landroid/icu/util/Calendar;->get(I)I

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    goto :goto_23

    :cond_22
    const/4 v0, 0x0

    .line 123
    :goto_23
    return v0
.end method

.method public static blacklist isLibcoreVFlagEnabled()Z
    .registers 1

    .line 136
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/Flags;->vApis()Z

    move-result v0

    return v0
.end method
