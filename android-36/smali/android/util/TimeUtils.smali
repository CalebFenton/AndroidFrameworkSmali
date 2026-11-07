.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final greylist-max-o HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final blacklist MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

.field public static final greylist-max-o NANOS_PER_MS:J = 0xf4240L

.field private static final greylist-max-o SECONDS_PER_DAY:I = 0x15180

.field private static final greylist-max-o SECONDS_PER_HOUR:I = 0xe10

.field private static final greylist-max-o SECONDS_PER_MINUTE:I = 0x3c

.field public static final blacklist sDumpDateFormat:Ljava/text/SimpleDateFormat;

.field private static greylist-max-o sFormatStr:[C

.field private static final greylist-max-o sFormatSync:Ljava/lang/Object;

.field private static final greylist-max-o sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static greylist-max-o sTmpFormatStr:[C


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    .line 53
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    .line 79
    nop

    .line 80
    const-wide v0, 0x16806b5bc00L

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    .line 181
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 182
    const/16 v0, 0x1d

    new-array v1, v0, [C

    sput-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 183
    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static greylist-max-o accumField(IIZI)I
    .registers 6
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    .line 187
    const/16 v0, 0x3e7

    if-le p0, v0, :cond_f

    .line 188
    const/4 v0, 0x0

    .line 189
    .local v0, "num":I
    :goto_5
    if-eqz p0, :cond_c

    .line 190
    add-int/lit8 v0, v0, 0x1

    .line 191
    div-int/lit8 p0, p0, 0xa

    goto :goto_5

    .line 193
    :cond_c
    add-int v1, v0, p1

    return v1

    .line 195
    .end local v0    # "num":I
    :cond_f
    const/16 v0, 0x63

    if-gt p0, v0, :cond_30

    if-eqz p2, :cond_19

    const/4 v0, 0x3

    if-lt p3, v0, :cond_19

    goto :goto_30

    .line 198
    :cond_19
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2d

    if-eqz p2, :cond_23

    const/4 v0, 0x2

    if-lt p3, v0, :cond_23

    goto :goto_2d

    .line 201
    :cond_23
    if-nez p2, :cond_2a

    if-lez p0, :cond_28

    goto :goto_2a

    .line 205
    :cond_28
    const/4 v0, 0x0

    return v0

    .line 202
    :cond_2a
    :goto_2a
    add-int/lit8 v0, p1, 0x1

    return v0

    .line 199
    :cond_2d
    :goto_2d
    add-int/lit8 v0, p1, 0x2

    return v0

    .line 196
    :cond_30
    :goto_30
    add-int/lit8 v0, p1, 0x3

    return v0
.end method

.method public static blacklist dumpTime(Ljava/io/PrintWriter;J)V
    .registers 5
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "time"    # J

    .line 448
    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public static blacklist dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V
    .registers 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "time"    # J
    .param p3, "now"    # J

    .line 480
    sget-object v0, Landroid/util/TimeUtils;->sDumpDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 481
    cmp-long v0, p1, p3

    if-nez v0, :cond_18

    .line 482
    const-string v0, " (now)"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_25

    .line 484
    :cond_18
    const-string v0, " ("

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 485
    invoke-static {p1, p2, p3, p4, p0}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 486
    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 488
    :goto_25
    return-void
.end method

.method public static greylist-max-o formatDuration(J)Ljava/lang/String;
    .registers 7
    .param p0, "duration"    # J

    .line 353
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 355
    .local v2, "len":I
    new-instance v3, Ljava/lang/String;

    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-direct {v3, v4, v1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0

    return-object v3

    .line 356
    .end local v2    # "len":I
    :catchall_11
    move-exception v1

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_11

    throw v1
.end method

.method public static greylist-max-o formatDuration(JJLjava/io/PrintWriter;)V
    .registers 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    .line 379
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 380
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 381
    return-void

    .line 383
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 384
    return-void
.end method

.method public static blacklist formatDuration(JJLjava/lang/StringBuilder;)V
    .registers 8
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "sb"    # Ljava/lang/StringBuilder;

    .line 369
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_c

    .line 370
    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    return-void

    .line 373
    :cond_c
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;I)V

    .line 374
    return-void
.end method

.method public static greylist-max-p formatDuration(JLjava/io/PrintWriter;)V
    .registers 4
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 363
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 364
    return-void
.end method

.method public static greylist-max-p formatDuration(JLjava/io/PrintWriter;I)V
    .registers 9
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    .line 343
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 345
    .local v1, "len":I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    .end local v1    # "len":I
    monitor-exit v0

    .line 347
    return-void

    .line 346
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_14

    throw v1
.end method

.method public static greylist-max-o formatDuration(JLjava/lang/StringBuilder;)V
    .registers 7
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    .line 324
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v2

    .line 326
    .local v2, "len":I
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    invoke-virtual {p2, v3, v1, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 327
    nop

    .end local v2    # "len":I
    monitor-exit v0

    .line 328
    return-void

    .line 327
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_4 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public static greylist-max-o formatDuration(JLjava/lang/StringBuilder;I)V
    .registers 8
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;
    .param p3, "fieldLen"    # I

    .line 333
    sget-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v0

    .line 334
    :try_start_3
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v1

    .line 335
    .local v1, "len":I
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 336
    nop

    .end local v1    # "len":I
    monitor-exit v0

    .line 337
    return-void

    .line 336
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method private static greylist-max-o formatDurationLocked(JI)I
    .registers 23
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    .line 251
    move-wide/from16 v0, p0

    move/from16 v2, p2

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v3, v3

    if-ge v3, v2, :cond_d

    .line 252
    new-array v3, v2, [C

    sput-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 255
    :cond_d
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .line 257
    .local v4, "formatStr":[C
    const-wide/16 v5, 0x0

    cmp-long v3, v0, v5

    const/16 v7, 0x20

    if-nez v3, :cond_29

    .line 258
    const/4 v3, 0x0

    .line 259
    .local v3, "pos":I
    add-int/lit8 v2, v2, -0x1

    .line 260
    .end local p2    # "fieldLen":I
    .local v2, "fieldLen":I
    :goto_1a
    if-ge v3, v2, :cond_22

    .line 261
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "pos":I
    .local v5, "pos":I
    aput-char v7, v4, v3

    move v3, v5

    goto :goto_1a

    .line 263
    .end local v5    # "pos":I
    .restart local v3    # "pos":I
    :cond_22
    const/16 v5, 0x30

    aput-char v5, v4, v3

    .line 264
    add-int/lit8 v5, v3, 0x1

    return v5

    .line 268
    .end local v2    # "fieldLen":I
    .end local v3    # "pos":I
    .restart local p2    # "fieldLen":I
    :cond_29
    cmp-long v3, v0, v5

    if-lez v3, :cond_30

    .line 269
    const/16 v3, 0x2b

    .local v3, "prefix":C
    goto :goto_33

    .line 271
    .end local v3    # "prefix":C
    :cond_30
    const/16 v3, 0x2d

    .line 272
    .restart local v3    # "prefix":C
    neg-long v0, v0

    .line 275
    .end local p0    # "duration":J
    .local v0, "duration":J
    :goto_33
    const-wide/16 v5, 0x3e8

    rem-long v8, v0, v5

    long-to-int v10, v8

    .line 276
    .local v10, "millis":I
    div-long v5, v0, v5

    long-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    .line 277
    .local v5, "seconds":I
    const/4 v6, 0x0

    .local v6, "days":I
    const/4 v8, 0x0

    .local v8, "hours":I
    const/4 v9, 0x0

    .line 279
    .local v9, "minutes":I
    const v11, 0x15180

    if-lt v5, v11, :cond_4c

    .line 280
    div-int v6, v5, v11

    .line 281
    mul-int/2addr v11, v6

    sub-int/2addr v5, v11

    .line 283
    :cond_4c
    const/16 v11, 0xe10

    if-lt v5, v11, :cond_57

    .line 284
    div-int/lit16 v8, v5, 0xe10

    .line 285
    mul-int/lit16 v11, v8, 0xe10

    sub-int/2addr v5, v11

    move v11, v8

    goto :goto_58

    .line 283
    :cond_57
    move v11, v8

    .line 287
    .end local v8    # "hours":I
    .local v11, "hours":I
    :goto_58
    const/16 v8, 0x3c

    if-lt v5, v8, :cond_64

    .line 288
    div-int/lit8 v9, v5, 0x3c

    .line 289
    mul-int/lit8 v8, v9, 0x3c

    sub-int/2addr v5, v8

    move v12, v5

    move v13, v9

    goto :goto_66

    .line 287
    :cond_64
    move v12, v5

    move v13, v9

    .line 292
    .end local v5    # "seconds":I
    .end local v9    # "minutes":I
    .local v12, "seconds":I
    .local v13, "minutes":I
    :goto_66
    const/4 v5, 0x0

    .line 294
    .local v5, "pos":I
    const/4 v15, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v2, :cond_aa

    .line 295
    invoke-static {v6, v9, v8, v8}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v16

    .line 296
    .local v16, "myLen":I
    move/from16 v17, v7

    if-lez v16, :cond_76

    move v7, v9

    goto :goto_77

    :cond_76
    move v7, v8

    :goto_77
    invoke-static {v11, v9, v7, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    add-int v16, v16, v7

    .line 297
    if-lez v16, :cond_81

    move v7, v9

    goto :goto_82

    :cond_81
    move v7, v8

    :goto_82
    invoke-static {v13, v9, v7, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    add-int v16, v16, v7

    .line 298
    if-lez v16, :cond_8c

    move v7, v9

    goto :goto_8d

    :cond_8c
    move v7, v8

    :goto_8d
    invoke-static {v12, v9, v7, v15}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    add-int v16, v16, v7

    .line 299
    if-lez v16, :cond_97

    const/4 v7, 0x3

    goto :goto_98

    :cond_97
    move v7, v8

    :goto_98
    invoke-static {v10, v15, v9, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v7

    add-int/2addr v7, v9

    add-int v16, v16, v7

    move/from16 v7, v16

    .line 300
    .end local v16    # "myLen":I
    .local v7, "myLen":I
    :goto_a1
    if-ge v7, v2, :cond_aa

    .line 301
    aput-char v17, v4, v5

    .line 302
    add-int/lit8 v5, v5, 0x1

    .line 303
    add-int/lit8 v7, v7, 0x1

    goto :goto_a1

    .line 307
    .end local v7    # "myLen":I
    :cond_aa
    aput-char v3, v4, v5

    .line 308
    add-int/lit8 v7, v5, 0x1

    .line 310
    .end local v5    # "pos":I
    .local v7, "pos":I
    move v5, v7

    .line 311
    .local v5, "start":I
    if-eqz v2, :cond_b4

    move/from16 v16, v9

    goto :goto_b6

    :cond_b4
    move/from16 v16, v8

    .line 312
    .local v16, "zeropad":Z
    :goto_b6
    move/from16 v17, v8

    const/4 v8, 0x0

    move/from16 v18, v9

    const/4 v9, 0x0

    move/from16 v19, v5

    move v5, v6

    .end local v6    # "days":I
    .local v5, "days":I
    .local v19, "start":I
    const/16 v6, 0x64

    move/from16 v14, v19

    .end local v19    # "start":I
    .local v14, "start":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 313
    move/from16 v19, v5

    .end local v5    # "days":I
    .local v19, "days":I
    if-eq v7, v14, :cond_ce

    move/from16 v8, v18

    goto :goto_d0

    :cond_ce
    move/from16 v8, v17

    :goto_d0
    if-eqz v16, :cond_d4

    move v9, v15

    goto :goto_d6

    :cond_d4
    move/from16 v9, v17

    :goto_d6
    const/16 v6, 0x68

    move v5, v11

    .end local v11    # "hours":I
    .local v5, "hours":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 314
    .end local v5    # "hours":I
    .restart local v11    # "hours":I
    if-eq v7, v14, :cond_e2

    move/from16 v8, v18

    goto :goto_e4

    :cond_e2
    move/from16 v8, v17

    :goto_e4
    if-eqz v16, :cond_e8

    move v9, v15

    goto :goto_ea

    :cond_e8
    move/from16 v9, v17

    :goto_ea
    const/16 v6, 0x6d

    move v5, v13

    .end local v13    # "minutes":I
    .local v5, "minutes":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 315
    .end local v5    # "minutes":I
    .restart local v13    # "minutes":I
    if-eq v7, v14, :cond_f6

    move/from16 v8, v18

    goto :goto_f8

    :cond_f6
    move/from16 v8, v17

    :goto_f8
    if-eqz v16, :cond_fc

    move v9, v15

    goto :goto_fe

    :cond_fc
    move/from16 v9, v17

    :goto_fe
    const/16 v6, 0x73

    move v5, v12

    .end local v12    # "seconds":I
    .local v5, "seconds":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v7

    .line 316
    .end local v5    # "seconds":I
    .restart local v12    # "seconds":I
    if-eqz v16, :cond_10b

    if-eq v7, v14, :cond_10b

    const/4 v9, 0x3

    goto :goto_10d

    :cond_10b
    move/from16 v9, v17

    :goto_10d
    const/16 v6, 0x6d

    const/4 v8, 0x1

    move v5, v10

    .end local v10    # "millis":I
    .local v5, "millis":I
    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    move-result v6

    .line 317
    .end local v7    # "pos":I
    .local v6, "pos":I
    const/16 v7, 0x73

    aput-char v7, v4, v6

    .line 318
    add-int/lit8 v7, v6, 0x1

    return v7
.end method

.method public static greylist-max-o formatForLogging(J)Ljava/lang/String;
    .registers 4
    .param p0, "millis"    # J

    .line 434
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_a

    .line 435
    const-string/jumbo v0, "unknown"

    return-object v0

    .line 437
    :cond_a
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatRealtime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 395
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist formatTime(JJ)Ljava/lang/String;
    .registers 9
    .param p0, "time"    # J
    .param p2, "referenceTime"    # J

    .line 401
    sub-long v0, p0, p2

    .line 402
    .local v0, "diff":J
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_26

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 405
    :cond_26
    cmp-long v2, v0, v2

    if-gez v2, :cond_49

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    neg-long v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms ago)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 408
    :cond_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (now)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static greylist-max-o formatUptime(J)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # J

    .line 389
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Landroid/util/TimeUtils;->formatTime(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;
    .registers 12
    .param p0, "offsetMillis"    # I
    .param p1, "isDst"    # Z
    .param p2, "whenMillis"    # J
    .param p4, "countryIso"    # Ljava/lang/String;

    .line 103
    const/4 v0, 0x0

    if-nez p4, :cond_4

    .line 104
    return-object v0

    .line 107
    :cond_4
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 109
    .local v4, "bias":Landroid/icu/util/TimeZone;
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v1

    .line 110
    .local v1, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    if-nez v1, :cond_13

    .line 111
    return-object v0

    .line 113
    :cond_13
    move v5, p0

    move v6, p1

    move-wide v2, p2

    .end local p0    # "offsetMillis":I
    .end local p1    # "isDst":Z
    .end local p2    # "whenMillis":J
    .local v2, "whenMillis":J
    .local v5, "offsetMillis":I
    .local v6, "isDst":Z
    invoke-virtual/range {v1 .. v6}, Lcom/android/i18n/timezone/CountryTimeZones;->lookupByOffsetWithBias(JLandroid/icu/util/TimeZone;IZ)Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;

    move-result-object p0

    .line 115
    .local p0, "offsetResult":Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Lcom/android/i18n/timezone/CountryTimeZones$OffsetResult;->getTimeZone()Landroid/icu/util/TimeZone;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public static whitelist getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .registers 7
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    .line 90
    invoke-static {p0, p1, p2, p3, p4}, Landroid/util/TimeUtils;->getIcuTimeZone(IZJLjava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v0

    .line 93
    .local v0, "icuTimeZone":Landroid/icu/util/TimeZone;
    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/icu/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method public static whitelist getTimeZoneDatabaseVersion()Ljava/lang/String;
    .registers 1

    .line 168
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/i18n/timezone/ZoneInfoDb;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getTimeZoneIdsForCountryCode(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .param p0, "countryCode"    # Ljava/lang/String;
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

    .line 131
    if-eqz p0, :cond_41

    .line 134
    invoke-static {}, Lcom/android/i18n/timezone/TimeZoneFinder;->getInstance()Lcom/android/i18n/timezone/TimeZoneFinder;

    move-result-object v0

    .line 135
    .local v0, "timeZoneFinder":Lcom/android/i18n/timezone/TimeZoneFinder;
    nop

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/i18n/timezone/TimeZoneFinder;->lookupCountryTimeZones(Ljava/lang/String;)Lcom/android/i18n/timezone/CountryTimeZones;

    move-result-object v1

    .line 137
    .local v1, "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    if-nez v1, :cond_13

    .line 138
    const/4 v2, 0x0

    return-object v2

    .line 141
    :cond_13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v2, "timeZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Lcom/android/i18n/timezone/CountryTimeZones;->getTimeZoneMappings()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;

    .line 143
    .local v4, "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    sget-object v5, Landroid/util/TimeUtils;->MIN_USE_DATE_OF_TIMEZONE:Ljava/time/Instant;

    invoke-virtual {v4, v5}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->isShownInPickerAt(Ljava/time/Instant;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 144
    invoke-virtual {v4}, Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;->getTimeZoneId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    .end local v4    # "timeZoneMapping":Lcom/android/i18n/timezone/CountryTimeZones$TimeZoneMapping;
    :cond_3b
    goto :goto_20

    .line 147
    :cond_3c
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 132
    .end local v0    # "timeZoneFinder":Lcom/android/i18n/timezone/TimeZoneFinder;
    .end local v1    # "countryTimeZones":Lcom/android/i18n/timezone/CountryTimeZones;
    .end local v2    # "timeZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_41
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "countryCode == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static whitelist isTimeBetween(Ljava/time/LocalTime;Ljava/time/LocalTime;Ljava/time/LocalTime;)Z
    .registers 4
    .param p0, "reference"    # Ljava/time/LocalTime;
    .param p1, "start"    # Ljava/time/LocalTime;
    .param p2, "end"    # Ljava/time/LocalTime;

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

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1, p2}, Ljava/time/LocalTime;->isBefore(Ljava/time/LocalTime;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 467
    :cond_30
    const/4 v0, 0x0

    return v0

    .line 469
    :cond_32
    const/4 v0, 0x1

    return v0
.end method

.method public static greylist-max-r logTimeOfDay(J)Ljava/lang/String;
    .registers 9
    .param p0, "millis"    # J

    .line 422
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 423
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v1, 0x0

    cmp-long v1, p0, v1

    if-ltz v1, :cond_1d

    .line 424
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 425
    const-string v6, "%tm-%td %tH:%tM:%tS.%tL"

    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    move-object v5, v0

    filled-new-array/range {v0 .. v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 427
    :cond_1d
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static greylist-max-o printFieldLocked([CICIZI)I
    .registers 11
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    .line 211
    if-nez p4, :cond_4

    if-lez p1, :cond_66

    .line 212
    :cond_4
    move v0, p3

    .line 213
    .local v0, "startPos":I
    const/16 v1, 0x3e7

    if-le p1, v1, :cond_2f

    .line 214
    const/4 v1, 0x0

    .line 215
    .local v1, "tmp":I
    :goto_a
    if-eqz p1, :cond_1f

    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 216
    rem-int/lit8 v2, p1, 0xa

    .line 217
    .local v2, "dig":I
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    add-int/lit8 v4, v2, 0x30

    int-to-char v4, v4

    aput-char v4, v3, v1

    .line 218
    add-int/lit8 v1, v1, 0x1

    .line 219
    div-int/lit8 p1, p1, 0xa

    .line 220
    .end local v2    # "dig":I
    goto :goto_a

    .line 221
    :cond_1f
    add-int/lit8 v1, v1, -0x1

    .line 222
    :goto_21
    if-ltz v1, :cond_2e

    .line 223
    sget-object v2, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    aget-char v2, v2, v1

    aput-char v2, p0, p3

    .line 224
    add-int/lit8 p3, p3, 0x1

    .line 225
    add-int/lit8 v1, v1, -0x1

    goto :goto_21

    .line 227
    .end local v1    # "tmp":I
    :cond_2e
    goto :goto_62

    .line 228
    :cond_2f
    if-eqz p4, :cond_34

    const/4 v1, 0x3

    if-ge p5, v1, :cond_38

    :cond_34
    const/16 v1, 0x63

    if-le p1, v1, :cond_44

    .line 229
    :cond_38
    div-int/lit8 v1, p1, 0x64

    .line 230
    .local v1, "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 231
    add-int/lit8 p3, p3, 0x1

    .line 232
    mul-int/lit8 v2, v1, 0x64

    sub-int/2addr p1, v2

    .line 234
    .end local v1    # "dig":I
    :cond_44
    if-eqz p4, :cond_49

    const/4 v1, 0x2

    if-ge p5, v1, :cond_4f

    :cond_49
    const/16 v1, 0x9

    if-gt p1, v1, :cond_4f

    if-eq v0, p3, :cond_5b

    .line 235
    :cond_4f
    div-int/lit8 v1, p1, 0xa

    .line 236
    .restart local v1    # "dig":I
    add-int/lit8 v2, v1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    .line 237
    add-int/lit8 p3, p3, 0x1

    .line 238
    mul-int/lit8 v2, v1, 0xa

    sub-int/2addr p1, v2

    .line 240
    .end local v1    # "dig":I
    :cond_5b
    add-int/lit8 v1, p1, 0x30

    int-to-char v1, v1

    aput-char v1, p0, p3

    .line 241
    add-int/lit8 p3, p3, 0x1

    .line 243
    :goto_62
    aput-char p2, p0, p3

    .line 244
    add-int/lit8 p3, p3, 0x1

    .line 246
    .end local v0    # "startPos":I
    :cond_66
    return p3
.end method
