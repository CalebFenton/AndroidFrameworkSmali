.class public final Llibcore/icu/DateIntervalFormat;
.super Ljava/lang/Object;
.source "DateIntervalFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibcore/icu/DateIntervalFormat$FormatterCache;
    }
.end annotation


# static fields
.field private static final CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    new-instance v0, Llibcore/icu/DateIntervalFormat$FormatterCache;

    #@2
    invoke-direct {v0}, Llibcore/icu/DateIntervalFormat$FormatterCache;-><init>()V

    #@5
    sput-object v0, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    #@7
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static formatDateRange(JJILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "startMs"    # J
    .param p2, "endMs"    # J
    .param p4, "flags"    # I
    .param p5, "olsonId"    # Ljava/lang/String;

    #@0
    .prologue
    .line 46
    and-int/lit16 v2, p4, 0x2000

    #@2
    if-eqz v2, :cond_0

    #@4
    .line 47
    const-string/jumbo p5, "UTC"

    #@7
    .line 51
    :cond_0
    if-eqz p5, :cond_1

    #@9
    invoke-static {p5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@c
    move-result-object v7

    #@d
    .line 52
    .local v7, "tz":Ljava/util/TimeZone;
    :goto_0
    invoke-static {v7}, Llibcore/icu/DateUtilsBridge;->icuTimeZone(Ljava/util/TimeZone;)Landroid/icu/util/TimeZone;

    #@10
    move-result-object v1

    #@11
    .line 53
    .local v1, "icuTimeZone":Landroid/icu/util/TimeZone;
    invoke-static {}, Landroid/icu/util/ULocale;->getDefault()Landroid/icu/util/ULocale;

    #@14
    move-result-object v0

    #@15
    .local v0, "icuLocale":Landroid/icu/util/ULocale;
    move-wide v2, p0

    #@16
    move-wide v4, p2

    #@17
    move v6, p4

    #@18
    .line 54
    invoke-static/range {v0 .. v6}, Llibcore/icu/DateIntervalFormat;->formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;

    #@1b
    move-result-object v2

    #@1c
    return-object v2

    #@1d
    .line 51
    .end local v0    # "icuLocale":Landroid/icu/util/ULocale;
    .end local v1    # "icuTimeZone":Landroid/icu/util/TimeZone;
    .end local v7    # "tz":Ljava/util/TimeZone;
    :cond_1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@20
    move-result-object v7

    #@21
    .restart local v7    # "tz":Ljava/util/TimeZone;
    goto :goto_0
.end method

.method public static formatDateRange(Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;JJI)Ljava/lang/String;
    .locals 12
    .param p0, "icuLocale"    # Landroid/icu/util/ULocale;
    .param p1, "icuTimeZone"    # Landroid/icu/util/TimeZone;
    .param p2, "startMs"    # J
    .param p4, "endMs"    # J
    .param p6, "flags"    # I

    #@0
    .prologue
    .line 61
    invoke-static {p1, p0, p2, p3}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    #@3
    move-result-object v6

    #@4
    .line 63
    .local v6, "startCalendar":Landroid/icu/util/Calendar;
    cmp-long v7, p2, p4

    #@6
    if-nez v7, :cond_2

    #@8
    .line 64
    move-object v2, v6

    #@9
    .line 69
    .local v2, "endCalendar":Landroid/icu/util/Calendar;
    :goto_0
    invoke-static {v2}, Llibcore/icu/DateIntervalFormat;->isMidnight(Landroid/icu/util/Calendar;)Z

    #@c
    move-result v3

    #@d
    .line 75
    .local v3, "endsAtMidnight":Z
    cmp-long v7, p2, p4

    #@f
    if-eqz v7, :cond_1

    #@11
    if-eqz v3, :cond_1

    #@13
    .line 76
    and-int/lit8 v7, p6, 0x1

    #@15
    if-eqz v7, :cond_0

    #@17
    .line 77
    invoke-static {v6, v2}, Llibcore/icu/DateUtilsBridge;->dayDistance(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;)I

    #@1a
    move-result v7

    #@1b
    const/4 v8, 0x1

    #@1c
    if-gt v7, v8, :cond_1

    #@1e
    .line 78
    :cond_0
    const/4 v7, 0x5

    #@1f
    const/4 v8, -0x1

    #@20
    invoke-virtual {v2, v7, v8}, Landroid/icu/util/Calendar;->add(II)V

    #@23
    .line 81
    :cond_1
    move/from16 v0, p6

    #@25
    invoke-static {v6, v2, v0}, Llibcore/icu/DateUtilsBridge;->toSkeleton(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;I)Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    .line 82
    .local v5, "skeleton":Ljava/lang/String;
    sget-object v8, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    #@2b
    monitor-enter v8

    #@2c
    .line 84
    :try_start_0
    invoke-static {v5, p0, p1}, Llibcore/icu/DateIntervalFormat;->getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;

    #@2f
    move-result-object v4

    #@30
    .line 85
    .local v4, "formatter":Landroid/icu/text/DateIntervalFormat;
    new-instance v7, Ljava/lang/StringBuffer;

    #@32
    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    #@35
    .line 86
    new-instance v9, Ljava/text/FieldPosition;

    #@37
    const/4 v10, 0x0

    #@38
    invoke-direct {v9, v10}, Ljava/text/FieldPosition;-><init>(I)V

    #@3b
    .line 85
    invoke-virtual {v4, v6, v2, v7, v9}, Landroid/icu/text/DateIntervalFormat;->format(Landroid/icu/util/Calendar;Landroid/icu/util/Calendar;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    #@3e
    move-result-object v7

    #@3f
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@42
    move-result-object v7

    #@43
    monitor-exit v8

    #@44
    return-object v7

    #@45
    .line 66
    .end local v2    # "endCalendar":Landroid/icu/util/Calendar;
    .end local v3    # "endsAtMidnight":Z
    .end local v4    # "formatter":Landroid/icu/text/DateIntervalFormat;
    .end local v5    # "skeleton":Ljava/lang/String;
    :cond_2
    move-wide/from16 v0, p4

    #@47
    invoke-static {p1, p0, v0, v1}, Llibcore/icu/DateUtilsBridge;->createIcuCalendar(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;J)Landroid/icu/util/Calendar;

    #@4a
    move-result-object v2

    #@4b
    .restart local v2    # "endCalendar":Landroid/icu/util/Calendar;
    goto :goto_0

    #@4c
    .line 82
    .restart local v3    # "endsAtMidnight":Z
    .restart local v5    # "skeleton":Ljava/lang/String;
    :catchall_0
    move-exception v7

    #@4d
    monitor-exit v8

    #@4e
    throw v7
.end method

.method private static getFormatter(Ljava/lang/String;Landroid/icu/util/ULocale;Landroid/icu/util/TimeZone;)Landroid/icu/text/DateIntervalFormat;
    .locals 4
    .param p0, "skeleton"    # Ljava/lang/String;
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "icuTimeZone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8
    move-result-object v2

    #@9
    const-string/jumbo v3, "\t"

    #@c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    const-string/jumbo v3, "\t"

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    .line 93
    .local v1, "key":Ljava/lang/String;
    sget-object v2, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    #@25
    invoke-virtual {v2, v1}, Llibcore/icu/DateIntervalFormat$FormatterCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@28
    move-result-object v0

    #@29
    check-cast v0, Landroid/icu/text/DateIntervalFormat;

    #@2b
    .line 94
    .local v0, "formatter":Landroid/icu/text/DateIntervalFormat;
    if-eqz v0, :cond_0

    #@2d
    .line 95
    return-object v0

    #@2e
    .line 97
    :cond_0
    invoke-static {p0, p1}, Landroid/icu/text/DateIntervalFormat;->getInstance(Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateIntervalFormat;

    #@31
    move-result-object v0

    #@32
    .line 98
    invoke-virtual {v0, p2}, Landroid/icu/text/DateIntervalFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    #@35
    .line 99
    sget-object v2, Llibcore/icu/DateIntervalFormat;->CACHED_FORMATTERS:Llibcore/icu/DateIntervalFormat$FormatterCache;

    #@37
    invoke-virtual {v2, v1, v0}, Llibcore/icu/DateIntervalFormat$FormatterCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    .line 100
    return-object v0
.end method

.method private static isMidnight(Landroid/icu/util/Calendar;)Z
    .locals 2
    .param p0, "c"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 104
    const/16 v1, 0xb

    #@3
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@6
    move-result v1

    #@7
    if-nez v1, :cond_0

    #@9
    .line 105
    const/16 v1, 0xc

    #@b
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@e
    move-result v1

    #@f
    if-nez v1, :cond_0

    #@11
    .line 106
    const/16 v1, 0xd

    #@13
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@16
    move-result v1

    #@17
    if-nez v1, :cond_0

    #@19
    .line 107
    const/16 v1, 0xe

    #@1b
    invoke-virtual {p0, v1}, Landroid/icu/util/Calendar;->get(I)I

    #@1e
    move-result v1

    #@1f
    if-nez v1, :cond_0

    #@21
    const/4 v0, 0x1

    #@22
    .line 104
    :cond_0
    return v0
.end method
