.class public Lcom/android/internal/telephony/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final blacklist HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final blacklist MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

.field public static final blacklist NANOS_PER_MS:J = 0xf4240L

.field public static final blacklist sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field private static blacklist sFormatStr:[C

.field private static final blacklist sFormatSync:Ljava/lang/Object;

.field private static final blacklist sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static blacklist sTmpFormatStr:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    const-wide v0, 0x16806b5bc00L

    .line 80
    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x1d

    .line 182
    new-array v1, v0, [C

    sput-object v1, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    .line 183
    new-array v0, v0, [C

    sput-object v0, Lcom/android/internal/telephony/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static blacklist accumField(IIZI)I
    .registers 7

    const/16 v0, 0x3e7

    const/4 v1, 0x0

    if-le p0, v0, :cond_e

    :goto_5
    if-eqz p0, :cond_c

    add-int/lit8 v1, v1, 0x1

    .line 191
    div-int/lit8 p0, p0, 0xa

    goto :goto_5

    :cond_c
    add-int/2addr v1, p1

    return v1

    :cond_e
    const/16 v0, 0x63

    const/4 v2, 0x3

    if-gt p0, v0, :cond_2d

    if-eqz p2, :cond_18

    if-lt p3, v2, :cond_18

    goto :goto_2d

    :cond_18
    const/16 v0, 0x9

    const/4 v2, 0x2

    if-gt p0, v0, :cond_2b

    if-eqz p2, :cond_22

    if-lt p3, v2, :cond_22

    goto :goto_2b

    :cond_22
    if-nez p2, :cond_28

    if-lez p0, :cond_27

    goto :goto_28

    :cond_27
    return v1

    :cond_28
    :goto_28
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_2b
    :goto_2b
    add-int/2addr p1, v2

    return p1

    :cond_2d
    :goto_2d
    add-int/2addr p1, v2

    return p1
.end method

.method public static blacklist dumpTime(Ljava/io/PrintWriter;J)V
    .registers 5

    .line 448
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V
    .registers 7

    .line 480
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    cmp-long v0, p1, p3

    if-nez v0, :cond_18

    .line 482
    const-string p1, " (now)"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 484
    :cond_18
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    invoke-static {p1, p2, p3, p4, p0}, Lcom/android/internal/telephony/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 486
    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist formatDuration(J)Ljava/lang/String;
    .registers 5

    .line 353
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 354
    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 355
    new-instance p1, Ljava/lang/String;

    sget-object v2, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    invoke-direct {p1, v2, v1, p0}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object p1

    :catchall_11
    move-exception p0

    .line 356
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static blacklist formatDuration(JJLjava/io/PrintWriter;)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 380
    const-string p0, "--"

    invoke-virtual {p4, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    :cond_c
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    .line 383
    invoke-static {p0, p1, p4, p2}, Lcom/android/internal/telephony/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static blacklist formatDuration(JJLjava/lang/StringBuilder;)V
    .registers 7

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 370
    const-string p0, "--"

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_c
    sub-long/2addr p0, p2

    const/4 p2, 0x0

    .line 373
    invoke-static {p0, p1, p4, p2}, Lcom/android/internal/telephony/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    return-void
.end method

.method public static blacklist formatDuration(JLjava/io/PrintWriter;)V
    .registers 4

    const/4 v0, 0x0

    .line 363
    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static blacklist formatDuration(JLjava/io/PrintWriter;I)V
    .registers 6

    .line 343
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 345
    new-instance p1, Ljava/lang/String;

    sget-object p3, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    const/4 v1, 0x0

    invoke-direct {p1, p3, v1, p0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public static blacklist formatDuration(JLjava/lang/StringBuilder;)V
    .registers 5

    .line 324
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 325
    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/android/internal/telephony/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 326
    sget-object p1, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, p1, v1, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 327
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public static blacklist formatDuration(JLjava/lang/StringBuilder;I)V
    .registers 5

    .line 333
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-static {p0, p1, p3}, Lcom/android/internal/telephony/TimeUtils;->formatDurationLocked(JI)I

    move-result p0

    .line 335
    sget-object p1, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 336
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method private static blacklist formatDurationLocked(JI)I
    .registers 19

    move-wide/from16 v0, p0

    move/from16 v2, p2

    .line 251
    sget-object v3, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_d

    .line 252
    new-array v3, v2, [C

    sput-object v3, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    .line 255
    :cond_d
    sget-object v4, Lcom/android/internal/telephony/TimeUtils;->sFormatStr:[C

    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    const/16 v5, 0x20

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v3, :cond_29

    add-int/lit8 v0, v2, -0x1

    :goto_1b
    if-ge v11, v0, :cond_23

    add-int/lit8 v1, v11, 0x1

    .line 261
    aput-char v5, v4, v11

    move v11, v1

    goto :goto_1b

    :cond_23
    const/16 v0, 0x30

    .line 263
    aput-char v0, v4, v11

    add-int/2addr v11, v10

    return v11

    :cond_29
    if-lez v3, :cond_2e

    const/16 v3, 0x2b

    goto :goto_31

    :cond_2e
    neg-long v0, v0

    const/16 v3, 0x2d

    :goto_31
    const-wide/16 v6, 0x3e8

    .line 275
    rem-long v8, v0, v6

    long-to-int v12, v8

    .line 276
    div-long/2addr v0, v6

    long-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    const v1, 0x15180

    if-lt v0, v1, :cond_47

    .line 280
    div-int v6, v0, v1

    mul-int/2addr v1, v6

    sub-int/2addr v0, v1

    goto :goto_48

    :cond_47
    move v6, v11

    :goto_48
    const/16 v1, 0xe10

    if-lt v0, v1, :cond_52

    .line 284
    div-int/lit16 v1, v0, 0xe10

    mul-int/lit16 v7, v1, 0xe10

    sub-int/2addr v0, v7

    goto :goto_53

    :cond_52
    move v1, v11

    :goto_53
    const/16 v7, 0x3c

    if-lt v0, v7, :cond_5e

    .line 288
    div-int/lit8 v7, v0, 0x3c

    mul-int/lit8 v8, v7, 0x3c

    sub-int/2addr v0, v8

    move v13, v7

    goto :goto_5f

    :cond_5e
    move v13, v11

    :goto_5f
    const/4 v14, 0x3

    const/4 v15, 0x2

    if-eqz v2, :cond_9a

    .line 295
    invoke-static {v6, v10, v11, v11}, Lcom/android/internal/telephony/TimeUtils;->accumField(IIZI)I

    move-result v7

    if-lez v7, :cond_6b

    move v8, v10

    goto :goto_6c

    :cond_6b
    move v8, v11

    .line 296
    :goto_6c
    invoke-static {v1, v10, v8, v15}, Lcom/android/internal/telephony/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_75

    move v8, v10

    goto :goto_76

    :cond_75
    move v8, v11

    .line 297
    :goto_76
    invoke-static {v13, v10, v8, v15}, Lcom/android/internal/telephony/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_7f

    move v8, v10

    goto :goto_80

    :cond_7f
    move v8, v11

    .line 298
    :goto_80
    invoke-static {v0, v10, v8, v15}, Lcom/android/internal/telephony/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v7, v8

    if-lez v7, :cond_89

    move v8, v14

    goto :goto_8a

    :cond_89
    move v8, v11

    .line 299
    :goto_8a
    invoke-static {v12, v15, v10, v8}, Lcom/android/internal/telephony/TimeUtils;->accumField(IIZI)I

    move-result v8

    add-int/2addr v8, v10

    add-int/2addr v7, v8

    move v8, v11

    :goto_91
    if-ge v7, v2, :cond_9b

    .line 301
    aput-char v5, v4, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_91

    :cond_9a
    move v8, v11

    .line 307
    :cond_9b
    aput-char v3, v4, v8

    add-int/lit8 v7, v8, 0x1

    if-eqz v2, :cond_a3

    move v2, v10

    goto :goto_a4

    :cond_a3
    move v2, v11

    :goto_a4
    const/4 v8, 0x0

    const/4 v9, 0x0

    move v5, v6

    const/16 v6, 0x64

    .line 312
    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v3

    move v5, v7

    if-eq v3, v5, :cond_b2

    move v8, v10

    goto :goto_b3

    :cond_b2
    move v8, v11

    :goto_b3
    if-eqz v2, :cond_b7

    move v9, v15

    goto :goto_b8

    :cond_b7
    move v9, v11

    :goto_b8
    const/16 v6, 0x68

    move v7, v5

    move v5, v1

    move v1, v7

    move v7, v3

    .line 313
    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    if-eq v7, v1, :cond_c6

    move v8, v10

    goto :goto_c7

    :cond_c6
    move v8, v11

    :goto_c7
    if-eqz v2, :cond_cb

    move v9, v15

    goto :goto_cc

    :cond_cb
    move v9, v11

    :goto_cc
    const/16 v6, 0x6d

    move v5, v13

    .line 314
    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    if-eq v7, v1, :cond_d7

    move v8, v10

    goto :goto_d8

    :cond_d7
    move v8, v11

    :goto_d8
    if-eqz v2, :cond_dc

    move v9, v15

    goto :goto_dd

    :cond_dc
    move v9, v11

    :goto_dd
    const/16 v6, 0x73

    move v5, v0

    .line 315
    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    if-eqz v2, :cond_ea

    if-eq v7, v1, :cond_ea

    move v9, v14

    goto :goto_eb

    :cond_ea
    move v9, v11

    :goto_eb
    const/16 v6, 0x6d

    const/4 v8, 0x1

    move v5, v12

    .line 316
    invoke-static/range {v4 .. v9}, Lcom/android/internal/telephony/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v0

    const/16 v1, 0x73

    .line 317
    aput-char v1, v4, v0

    add-int/2addr v0, v10

    return v0
.end method

.method public static blacklist formatForLogging(J)Ljava/lang/String;
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_9

    .line 435
    const-string p0, "unknown"

    return-object p0

    .line 437
    :cond_9
    sget-object v0, Lcom/android/internal/telephony/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatRealtime(J)Ljava/lang/String;
    .registers 4

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatTime(JJ)Ljava/lang/String;
    .registers 6

    sub-long p2, p0, p2

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_22

    .line 403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    if-gez v0, :cond_3f

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    neg-long p0, p2

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " ms ago)"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 408
    :cond_3f
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " (now)"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static blacklist formatUptime(J)Ljava/lang/String;
    .registers 4

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Lcom/android/internal/telephony/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 12

    const/4 v0, 0x0

    if-nez p4, :cond_4

    return-object v0

    .line 107
    :cond_4
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 109
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    move v5, p0

    move v6, p1

    move-wide v2, p2

    .line 113
    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 115
    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_21
    return-object v0
.end method

.method public static blacklist getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 5

    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 93
    invoke-virtual {p0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public static blacklist getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .line 168
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_40

    .line 134
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v0

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object p0

    if-nez p0, :cond_12

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 142
    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    :goto_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 143
    sget-object v2, Lcom/android/internal/telephony/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v1, v2}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 144
    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 147
    :cond_3b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 132
    :cond_40
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "countryCode == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static blacklist isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z
    .registers 4

    .line 462
    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 464
    :cond_c
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 466
    :cond_1e
    invoke-virtual {p0, p2}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p0, p1}, Ljava/time/LocalTime;->isAfter(Ljava/time/LocalTime;)Z

    move-result p0

    if-eqz p0, :cond_32

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result p0

    if-eqz p0, :cond_32

    :cond_30
    const/4 p0, 0x0

    return p0

    :cond_32
    const/4 p0, 0x1

    return p0
.end method

.method public static blacklist logTimeOfDay(J)Ljava/lang/String;
    .registers 8

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_1d

    .line 424
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 425
    const-string p0, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 427
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist printFieldLocked([CICIZI)I
    .registers 8

    if-nez p4, :cond_6

    if-lez p1, :cond_5

    goto :goto_6

    :cond_5
    return p3

    :cond_6
    :goto_6
    const/16 v0, 0x3e7

    if-le p1, v0, :cond_2b

    const/4 p4, 0x0

    :goto_b
    if-eqz p1, :cond_1e

    .line 215
    sget-object p5, Lcom/android/internal/telephony/TimeUtils;->sTmpFormatStr:[C

    array-length v0, p5

    if-ge p4, v0, :cond_1e

    .line 216
    rem-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    .line 217
    aput-char v0, p5, p4

    add-int/lit8 p4, p4, 0x1

    .line 219
    div-int/lit8 p1, p1, 0xa

    goto :goto_b

    :cond_1e
    :goto_1e
    add-int/lit8 p4, p4, -0x1

    if-ltz p4, :cond_60

    .line 223
    sget-object p1, Lcom/android/internal/telephony/TimeUtils;->sTmpFormatStr:[C

    aget-char p1, p1, p4

    aput-char p1, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1e

    :cond_2b
    if-eqz p4, :cond_30

    const/4 v0, 0x3

    if-ge p5, v0, :cond_34

    :cond_30
    const/16 v0, 0x63

    if-le p1, v0, :cond_41

    .line 229
    :cond_34
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v1, v0, 0x30

    int-to-char v1, v1

    .line 230
    aput-char v1, p0, p3

    add-int/lit8 v1, p3, 0x1

    mul-int/lit8 v0, v0, 0x64

    sub-int/2addr p1, v0

    goto :goto_42

    :cond_41
    move v1, p3

    :goto_42
    if-eqz p4, :cond_47

    const/4 p4, 0x2

    if-ge p5, p4, :cond_4d

    :cond_47
    const/16 p4, 0x9

    if-gt p1, p4, :cond_4d

    if-eq p3, v1, :cond_59

    .line 235
    :cond_4d
    div-int/lit8 p3, p1, 0xa

    add-int/lit8 p4, p3, 0x30

    int-to-char p4, p4

    .line 236
    aput-char p4, p0, v1

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 p3, p3, 0xa

    sub-int/2addr p1, p3

    :cond_59
    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    .line 240
    aput-char p1, p0, v1

    add-int/lit8 p3, v1, 0x1

    .line 243
    :cond_60
    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    return p3
.end method
