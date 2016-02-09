.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final DBG:Z = false

.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field public static final NANOS_PER_MS:J = 0xf4240L

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;

.field private static sLastCountry:Ljava/lang/String;

.field private static final sLastLockObj:Ljava/lang/Object;

.field private static sLastUniqueCountry:Ljava/lang/String;

.field private static final sLastUniqueLockObj:Ljava/lang/Object;

.field private static sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLastZones:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation
.end field

.field private static sLoggingFormat:Ljava/text/SimpleDateFormat;

.field private static sTmpFormatStr:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    const/16 v2, 0x1d

    #@2
    const/4 v1, 0x0

    #@3
    .line 49
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    sput-object v0, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    #@a
    .line 50
    sput-object v1, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;

    #@c
    .line 51
    sput-object v1, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    #@e
    .line 54
    new-instance v0, Ljava/lang/Object;

    #@10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@13
    sput-object v0, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    #@15
    .line 55
    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    #@17
    .line 56
    sput-object v1, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    #@19
    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    #@1b
    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    #@1e
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    #@21
    sput-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    #@23
    .line 251
    new-instance v0, Ljava/lang/Object;

    #@25
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@28
    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2a
    .line 252
    new-array v0, v2, [C

    #@2c
    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    #@2e
    .line 253
    new-array v0, v2, [C

    #@30
    sput-object v0, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    #@32
    .line 43
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method private static accumField(IIZI)I
    .locals 5
    .param p0, "amt"    # I
    .param p1, "suffix"    # I
    .param p2, "always"    # Z
    .param p3, "zeropad"    # I

    #@0
    .prologue
    const/4 v4, 0x3

    #@1
    const/4 v3, 0x2

    #@2
    const/4 v2, 0x0

    #@3
    .line 256
    const/16 v1, 0x3e7

    #@5
    if-le p0, v1, :cond_1

    #@7
    .line 257
    const/4 v0, 0x0

    #@8
    .line 258
    .local v0, "num":I
    :goto_0
    if-eqz p0, :cond_0

    #@a
    .line 259
    add-int/lit8 v0, v0, 0x1

    #@c
    .line 260
    div-int/lit8 p0, p0, 0xa

    #@e
    goto :goto_0

    #@f
    .line 262
    :cond_0
    add-int v1, v0, p1

    #@11
    return v1

    #@12
    .line 264
    .end local v0    # "num":I
    :cond_1
    const/16 v1, 0x63

    #@14
    if-gt p0, v1, :cond_2

    #@16
    if-eqz p2, :cond_3

    #@18
    if-lt p3, v4, :cond_3

    #@1a
    .line 265
    :cond_2
    add-int/lit8 v1, p1, 0x3

    #@1c
    return v1

    #@1d
    .line 267
    :cond_3
    const/16 v1, 0x9

    #@1f
    if-gt p0, v1, :cond_4

    #@21
    if-eqz p2, :cond_5

    #@23
    if-lt p3, v3, :cond_5

    #@25
    .line 268
    :cond_4
    add-int/lit8 v1, p1, 0x2

    #@27
    return v1

    #@28
    .line 270
    :cond_5
    if-nez p2, :cond_6

    #@2a
    if-lez p0, :cond_7

    #@2c
    .line 271
    :cond_6
    add-int/lit8 v1, p1, 0x1

    #@2e
    return v1

    #@2f
    .line 274
    :cond_7
    return v2
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 4
    .param p0, "time"    # J
    .param p2, "now"    # J
    .param p4, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 411
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 412
    const-string/jumbo v0, "--"

    #@9
    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    .line 413
    return-void

    #@d
    .line 415
    :cond_0
    sub-long v0, p0, p2

    #@f
    const/4 v2, 0x0

    #@10
    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@13
    .line 410
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 2
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 406
    const/4 v0, 0x0

    #@1
    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    #@4
    .line 405
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 6
    .param p0, "duration"    # J
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "fieldLen"    # I

    #@0
    .prologue
    .line 398
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 399
    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    #@6
    move-result v0

    #@7
    .line 400
    .local v0, "len":I
    new-instance v1, Ljava/lang/String;

    #@9
    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    #@b
    const/4 v4, 0x0

    #@c
    invoke-direct {v1, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    #@f
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v2

    #@13
    .line 397
    return-void

    #@14
    .line 398
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    #@15
    monitor-exit v2

    #@16
    throw v1
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .param p0, "duration"    # J
    .param p2, "builder"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 390
    sget-object v2, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 391
    const/4 v1, 0x0

    #@4
    :try_start_0
    invoke-static {p0, p1, v1}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    #@7
    move-result v0

    #@8
    .line 392
    .local v0, "len":I
    sget-object v1, Landroid/util/TimeUtils;->sFormatStr:[C

    #@a
    const/4 v3, 0x0

    #@b
    invoke-virtual {p2, v1, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    monitor-exit v2

    #@f
    .line 389
    return-void

    #@10
    .line 390
    .end local v0    # "len":I
    :catchall_0
    move-exception v1

    #@11
    monitor-exit v2

    #@12
    throw v1
.end method

.method private static formatDurationLocked(JI)I
    .locals 22
    .param p0, "duration"    # J
    .param p2, "fieldLen"    # I

    #@0
    .prologue
    .line 318
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    #@2
    array-length v4, v4

    #@3
    move/from16 v0, p2

    #@5
    if-ge v4, v0, :cond_0

    #@7
    .line 319
    move/from16 v0, p2

    #@9
    new-array v4, v0, [C

    #@b
    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    #@d
    .line 322
    :cond_0
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    #@f
    .line 324
    .local v2, "formatStr":[C
    const-wide/16 v6, 0x0

    #@11
    cmp-long v4, p0, v6

    #@13
    if-nez v4, :cond_2

    #@15
    .line 325
    const/4 v5, 0x0

    #@16
    .line 326
    .local v5, "pos":I
    add-int/lit8 p2, p2, -0x1

    #@18
    move/from16 v16, v5

    #@1a
    .line 327
    .end local v5    # "pos":I
    .local v16, "pos":I
    :goto_0
    move/from16 v0, v16

    #@1c
    move/from16 v1, p2

    #@1e
    if-ge v0, v1, :cond_1

    #@20
    .line 328
    add-int/lit8 v5, v16, 0x1

    #@22
    .end local v16    # "pos":I
    .restart local v5    # "pos":I
    const/16 v4, 0x20

    #@24
    aput-char v4, v2, v16

    #@26
    move/from16 v16, v5

    #@28
    .end local v5    # "pos":I
    .restart local v16    # "pos":I
    goto :goto_0

    #@29
    .line 330
    :cond_1
    const/16 v4, 0x30

    #@2b
    aput-char v4, v2, v16

    #@2d
    .line 331
    add-int/lit8 v4, v16, 0x1

    #@2f
    return v4

    #@30
    .line 335
    .end local v16    # "pos":I
    :cond_2
    const-wide/16 v6, 0x0

    #@32
    cmp-long v4, p0, v6

    #@34
    if-lez v4, :cond_6

    #@36
    .line 336
    const/16 v17, 0x2b

    #@38
    .line 342
    .local v17, "prefix":C
    :goto_1
    const-wide/16 v6, 0x3e8

    #@3a
    rem-long v6, p0, v6

    #@3c
    long-to-int v13, v6

    #@3d
    .line 343
    .local v13, "millis":I
    const-wide/16 v6, 0x3e8

    #@3f
    div-long v6, p0, v6

    #@41
    long-to-double v6, v6

    #@42
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@45
    move-result-wide v6

    #@46
    double-to-int v0, v6

    #@47
    move/from16 v18, v0

    #@49
    .line 344
    .local v18, "seconds":I
    const/4 v3, 0x0

    #@4a
    .local v3, "days":I
    const/4 v12, 0x0

    #@4b
    .local v12, "hours":I
    const/4 v14, 0x0

    #@4c
    .line 346
    .local v14, "minutes":I
    const v4, 0x15180

    #@4f
    move/from16 v0, v18

    #@51
    if-le v0, v4, :cond_3

    #@53
    .line 347
    const v4, 0x15180

    #@56
    div-int v3, v18, v4

    #@58
    .line 348
    const v4, 0x15180

    #@5b
    mul-int/2addr v4, v3

    #@5c
    sub-int v18, v18, v4

    #@5e
    .line 350
    :cond_3
    const/16 v4, 0xe10

    #@60
    move/from16 v0, v18

    #@62
    if-le v0, v4, :cond_4

    #@64
    .line 351
    move/from16 v0, v18

    #@66
    div-int/lit16 v12, v0, 0xe10

    #@68
    .line 352
    mul-int/lit16 v4, v12, 0xe10

    #@6a
    sub-int v18, v18, v4

    #@6c
    .line 354
    :cond_4
    const/16 v4, 0x3c

    #@6e
    move/from16 v0, v18

    #@70
    if-le v0, v4, :cond_5

    #@72
    .line 355
    div-int/lit8 v14, v18, 0x3c

    #@74
    .line 356
    mul-int/lit8 v4, v14, 0x3c

    #@76
    sub-int v18, v18, v4

    #@78
    .line 359
    :cond_5
    const/4 v5, 0x0

    #@79
    .line 361
    .restart local v5    # "pos":I
    if-eqz p2, :cond_b

    #@7b
    .line 362
    const/4 v4, 0x1

    #@7c
    const/4 v6, 0x0

    #@7d
    const/4 v7, 0x0

    #@7e
    invoke-static {v3, v4, v6, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    #@81
    move-result v15

    #@82
    .line 363
    .local v15, "myLen":I
    if-lez v15, :cond_7

    #@84
    const/4 v4, 0x1

    #@85
    :goto_2
    const/4 v6, 0x1

    #@86
    const/4 v7, 0x2

    #@87
    invoke-static {v12, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    #@8a
    move-result v4

    #@8b
    add-int/2addr v15, v4

    #@8c
    .line 364
    if-lez v15, :cond_8

    #@8e
    const/4 v4, 0x1

    #@8f
    :goto_3
    const/4 v6, 0x1

    #@90
    const/4 v7, 0x2

    #@91
    invoke-static {v14, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    #@94
    move-result v4

    #@95
    add-int/2addr v15, v4

    #@96
    .line 365
    if-lez v15, :cond_9

    #@98
    const/4 v4, 0x1

    #@99
    :goto_4
    const/4 v6, 0x1

    #@9a
    const/4 v7, 0x2

    #@9b
    move/from16 v0, v18

    #@9d
    invoke-static {v0, v6, v4, v7}, Landroid/util/TimeUtils;->accumField(IIZI)I

    #@a0
    move-result v4

    #@a1
    add-int/2addr v15, v4

    #@a2
    .line 366
    if-lez v15, :cond_a

    #@a4
    const/4 v4, 0x3

    #@a5
    :goto_5
    const/4 v6, 0x2

    #@a6
    const/4 v7, 0x1

    #@a7
    invoke-static {v13, v6, v7, v4}, Landroid/util/TimeUtils;->accumField(IIZI)I

    #@aa
    move-result v4

    #@ab
    add-int/lit8 v4, v4, 0x1

    #@ad
    add-int/2addr v15, v4

    #@ae
    .line 367
    :goto_6
    move/from16 v0, p2

    #@b0
    if-ge v15, v0, :cond_b

    #@b2
    .line 368
    const/16 v4, 0x20

    #@b4
    aput-char v4, v2, v5

    #@b6
    .line 369
    add-int/lit8 v5, v5, 0x1

    #@b8
    .line 370
    add-int/lit8 v15, v15, 0x1

    #@ba
    goto :goto_6

    #@bb
    .line 338
    .end local v3    # "days":I
    .end local v5    # "pos":I
    .end local v12    # "hours":I
    .end local v13    # "millis":I
    .end local v14    # "minutes":I
    .end local v15    # "myLen":I
    .end local v17    # "prefix":C
    .end local v18    # "seconds":I
    :cond_6
    const/16 v17, 0x2d

    #@bd
    .line 339
    .restart local v17    # "prefix":C
    move-wide/from16 v0, p0

    #@bf
    neg-long v0, v0

    #@c0
    move-wide/from16 p0, v0

    #@c2
    goto/16 :goto_1

    #@c4
    .line 363
    .restart local v3    # "days":I
    .restart local v5    # "pos":I
    .restart local v12    # "hours":I
    .restart local v13    # "millis":I
    .restart local v14    # "minutes":I
    .restart local v15    # "myLen":I
    .restart local v18    # "seconds":I
    :cond_7
    const/4 v4, 0x0

    #@c5
    goto :goto_2

    #@c6
    .line 364
    :cond_8
    const/4 v4, 0x0

    #@c7
    goto :goto_3

    #@c8
    .line 365
    :cond_9
    const/4 v4, 0x0

    #@c9
    goto :goto_4

    #@ca
    .line 366
    :cond_a
    const/4 v4, 0x0

    #@cb
    goto :goto_5

    #@cc
    .line 374
    .end local v15    # "myLen":I
    :cond_b
    aput-char v17, v2, v5

    #@ce
    .line 375
    add-int/lit8 v5, v5, 0x1

    #@d0
    .line 377
    move/from16 v19, v5

    #@d2
    .line 378
    .local v19, "start":I
    if-eqz p2, :cond_c

    #@d4
    const/16 v20, 0x1

    #@d6
    .line 379
    .local v20, "zeropad":Z
    :goto_7
    const/16 v4, 0x64

    #@d8
    const/4 v6, 0x0

    #@d9
    const/4 v7, 0x0

    #@da
    invoke-static/range {v2 .. v7}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    #@dd
    move-result v5

    #@de
    .line 380
    move/from16 v0, v19

    #@e0
    if-eq v5, v0, :cond_d

    #@e2
    const/4 v10, 0x1

    #@e3
    :goto_8
    if-eqz v20, :cond_e

    #@e5
    const/4 v11, 0x2

    #@e6
    :goto_9
    const/16 v8, 0x68

    #@e8
    move-object v6, v2

    #@e9
    move v7, v12

    #@ea
    move v9, v5

    #@eb
    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    #@ee
    move-result v5

    #@ef
    .line 381
    move/from16 v0, v19

    #@f1
    if-eq v5, v0, :cond_f

    #@f3
    const/4 v10, 0x1

    #@f4
    :goto_a
    if-eqz v20, :cond_10

    #@f6
    const/4 v11, 0x2

    #@f7
    :goto_b
    const/16 v8, 0x6d

    #@f9
    move-object v6, v2

    #@fa
    move v7, v14

    #@fb
    move v9, v5

    #@fc
    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    #@ff
    move-result v5

    #@100
    .line 382
    move/from16 v0, v19

    #@102
    if-eq v5, v0, :cond_11

    #@104
    const/4 v10, 0x1

    #@105
    :goto_c
    if-eqz v20, :cond_12

    #@107
    const/4 v11, 0x2

    #@108
    :goto_d
    const/16 v8, 0x73

    #@10a
    move-object v6, v2

    #@10b
    move/from16 v7, v18

    #@10d
    move v9, v5

    #@10e
    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    #@111
    move-result v5

    #@112
    .line 383
    if-eqz v20, :cond_13

    #@114
    move/from16 v0, v19

    #@116
    if-eq v5, v0, :cond_13

    #@118
    const/4 v11, 0x3

    #@119
    :goto_e
    const/16 v8, 0x6d

    #@11b
    const/4 v10, 0x1

    #@11c
    move-object v6, v2

    #@11d
    move v7, v13

    #@11e
    move v9, v5

    #@11f
    invoke-static/range {v6 .. v11}, Landroid/util/TimeUtils;->printFieldLocked([CICIZI)I

    #@122
    move-result v5

    #@123
    .line 384
    const/16 v4, 0x73

    #@125
    aput-char v4, v2, v5

    #@127
    .line 385
    add-int/lit8 v4, v5, 0x1

    #@129
    return v4

    #@12a
    .line 378
    .end local v20    # "zeropad":Z
    :cond_c
    const/16 v20, 0x0

    #@12c
    .restart local v20    # "zeropad":Z
    goto :goto_7

    #@12d
    .line 380
    :cond_d
    const/4 v10, 0x0

    #@12e
    goto :goto_8

    #@12f
    :cond_e
    const/4 v11, 0x0

    #@130
    goto :goto_9

    #@131
    .line 381
    :cond_f
    const/4 v10, 0x0

    #@132
    goto :goto_a

    #@133
    :cond_10
    const/4 v11, 0x0

    #@134
    goto :goto_b

    #@135
    .line 382
    :cond_11
    const/4 v10, 0x0

    #@136
    goto :goto_c

    #@137
    :cond_12
    const/4 v11, 0x0

    #@138
    goto :goto_d

    #@139
    .line 383
    :cond_13
    const/4 v11, 0x0

    #@13a
    goto :goto_e
.end method

.method public static formatForLogging(J)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J

    #@0
    .prologue
    .line 450
    const-wide/16 v0, 0x0

    #@2
    cmp-long v0, p0, v0

    #@4
    if-gtz v0, :cond_0

    #@6
    .line 451
    const-string/jumbo v0, "unknown"

    #@9
    return-object v0

    #@a
    .line 453
    :cond_0
    sget-object v0, Landroid/util/TimeUtils;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    #@c
    new-instance v1, Ljava/util/Date;

    #@e
    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    #@11
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    return-object v0
.end method

.method public static formatUptime(J)Ljava/lang/String;
    .locals 6
    .param p0, "time"    # J

    #@0
    .prologue
    const-wide/16 v4, 0x0

    #@2
    .line 420
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    #@5
    move-result-wide v2

    #@6
    sub-long v0, p0, v2

    #@8
    .line 421
    .local v0, "diff":J
    cmp-long v2, v0, v4

    #@a
    if-lez v2, :cond_0

    #@c
    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    const-string/jumbo v3, " (in "

    #@18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    const-string/jumbo v3, " ms)"

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v2

    #@2b
    return-object v2

    #@2c
    .line 424
    :cond_0
    cmp-long v2, v0, v4

    #@2e
    if-gez v2, :cond_1

    #@30
    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    #@32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@35
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@38
    move-result-object v2

    #@39
    const-string/jumbo v3, " ("

    #@3c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3f
    move-result-object v2

    #@40
    neg-long v4, v0

    #@41
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    const-string/jumbo v3, " ms ago)"

    #@48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4b
    move-result-object v2

    #@4c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4f
    move-result-object v2

    #@50
    return-object v2

    #@51
    .line 427
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@53
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@56
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@59
    move-result-object v2

    #@5a
    const-string/jumbo v3, " (now)"

    #@5d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@60
    move-result-object v2

    #@61
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@64
    move-result-object v2

    #@65
    return-object v2
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 10
    .param p0, "offset"    # I
    .param p1, "dst"    # Z
    .param p2, "when"    # J
    .param p4, "country"    # Ljava/lang/String;

    #@0
    .prologue
    .line 67
    const/4 v0, 0x0

    #@1
    .line 68
    .local v0, "best":Ljava/util/TimeZone;
    new-instance v5, Ljava/util/Date;

    #@3
    invoke-direct {v5, p2, p3}, Ljava/util/Date;-><init>(J)V

    #@6
    .line 70
    .local v5, "d":Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    #@9
    move-result-object v1

    #@a
    .line 71
    .local v1, "current":Ljava/util/TimeZone;
    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@d
    move-result-object v3

    #@e
    .line 72
    .local v3, "currentName":Ljava/lang/String;
    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    #@11
    move-result v4

    #@12
    .line 73
    .local v4, "currentOffset":I
    invoke-virtual {v1, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@15
    move-result v2

    #@16
    .line 75
    .local v2, "currentDst":Z
    invoke-static {p4}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    #@19
    move-result-object v8

    #@1a
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1d
    move-result-object v7

    #@1e
    .end local v0    # "best":Ljava/util/TimeZone;
    .local v7, "tz$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    #@21
    move-result v8

    #@22
    if-eqz v8, :cond_2

    #@24
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Ljava/util/TimeZone;

    #@2a
    .line 80
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@2d
    move-result-object v8

    #@2e
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@31
    move-result v8

    #@32
    if-eqz v8, :cond_1

    #@34
    .line 81
    if-ne v4, p0, :cond_1

    #@36
    if-ne v2, p1, :cond_1

    #@38
    .line 82
    return-object v1

    #@39
    .line 91
    :cond_1
    if-nez v0, :cond_0

    #@3b
    .line 92
    invoke-virtual {v6, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    #@3e
    move-result v8

    #@3f
    if-ne v8, p0, :cond_0

    #@41
    .line 93
    invoke-virtual {v6, v5}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    #@44
    move-result v8

    #@45
    if-ne v8, p1, :cond_0

    #@47
    .line 94
    move-object v0, v6

    #@48
    .local v0, "best":Ljava/util/TimeZone;
    goto :goto_0

    #@49
    .line 99
    .end local v0    # "best":Ljava/util/TimeZone;
    .end local v6    # "tz":Ljava/util/TimeZone;
    :cond_2
    return-object v0
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 238
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 159
    sget-object v10, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v10

    #@3
    .line 160
    if-eqz p0, :cond_0

    #@5
    :try_start_0
    sget-object v9, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    #@7
    invoke-virtual {p0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v9

    #@b
    if-eqz v9, :cond_0

    #@d
    .line 162
    sget-object v9, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v10

    #@10
    return-object v9

    #@11
    :cond_0
    monitor-exit v10

    #@12
    .line 166
    new-instance v7, Ljava/util/ArrayList;

    #@14
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    #@17
    .line 168
    .local v7, "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    if-nez p0, :cond_1

    #@19
    .line 170
    return-object v7

    #@1a
    .line 159
    .end local v7    # "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :catchall_0
    move-exception v9

    #@1b
    monitor-exit v10

    #@1c
    throw v9

    #@1d
    .line 173
    .restart local v7    # "tzs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    :cond_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@20
    move-result-object v5

    #@21
    .line 174
    .local v5, "r":Landroid/content/res/Resources;
    const v9, 0x1110014

    #@24
    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    #@27
    move-result-object v4

    #@28
    .line 177
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    :try_start_1
    const-string/jumbo v9, "timezones"

    #@2b
    invoke-static {v4, v9}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    #@2e
    .line 180
    :cond_2
    :goto_0
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    #@31
    .line 182
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    #@34
    move-result-object v3

    #@35
    .line 183
    .local v3, "element":Ljava/lang/String;
    if-eqz v3, :cond_3

    #@37
    const-string/jumbo v9, "timezone"

    #@3a
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@3d
    move-result v9

    #@3e
    if-eqz v9, :cond_3

    #@40
    .line 187
    const-string/jumbo v9, "code"

    #@43
    const/4 v10, 0x0

    #@44
    invoke-interface {v4, v10, v9}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@47
    move-result-object v0

    #@48
    .line 189
    .local v0, "code":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@4b
    move-result v9

    #@4c
    if-eqz v9, :cond_2

    #@4e
    .line 190
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    #@51
    move-result v9

    #@52
    const/4 v10, 0x4

    #@53
    if-ne v9, v10, :cond_2

    #@55
    .line 191
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    #@58
    move-result-object v8

    #@59
    .line 192
    .local v8, "zoneIdString":Ljava/lang/String;
    invoke-static {v8}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    #@5c
    move-result-object v6

    #@5d
    .line 193
    .local v6, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    #@60
    move-result-object v9

    #@61
    const-string/jumbo v10, "GMT"

    #@64
    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@67
    move-result v9

    #@68
    if-nez v9, :cond_2

    #@6a
    .line 195
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@6d
    goto :goto_0

    #@6e
    .line 204
    .end local v0    # "code":Ljava/lang/String;
    .end local v3    # "element":Ljava/lang/String;
    .end local v6    # "tz":Ljava/util/TimeZone;
    .end local v8    # "zoneIdString":Ljava/lang/String;
    :catch_0
    move-exception v2

    #@6f
    .line 205
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_2
    const-string/jumbo v9, "TimeUtils"

    #@72
    new-instance v10, Ljava/lang/StringBuilder;

    #@74
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@77
    const-string/jumbo v11, "Got xml parser exception getTimeZone(\'"

    #@7a
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v10

    #@7e
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v10

    #@82
    const-string/jumbo v11, "\'): e="

    #@85
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@88
    move-result-object v10

    #@89
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8c
    move-result-object v10

    #@8d
    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@90
    .line 209
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@93
    .line 212
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_1
    sget-object v10, Landroid/util/TimeUtils;->sLastLockObj:Ljava/lang/Object;

    #@95
    monitor-enter v10

    #@96
    .line 214
    :try_start_3
    sput-object v7, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;

    #@98
    .line 215
    sput-object p0, Landroid/util/TimeUtils;->sLastCountry:Ljava/lang/String;

    #@9a
    .line 216
    sget-object v9, Landroid/util/TimeUtils;->sLastZones:Ljava/util/ArrayList;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@9c
    monitor-exit v10

    #@9d
    return-object v9

    #@9e
    .line 209
    .restart local v3    # "element":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@a1
    goto :goto_1

    #@a2
    .line 206
    .end local v3    # "element":Ljava/lang/String;
    :catch_1
    move-exception v1

    #@a3
    .line 207
    .local v1, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v9, "TimeUtils"

    #@a6
    new-instance v10, Ljava/lang/StringBuilder;

    #@a8
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@ab
    const-string/jumbo v11, "Got IO exception getTimeZone(\'"

    #@ae
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b1
    move-result-object v10

    #@b2
    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v10

    #@b6
    const-string/jumbo v11, "\'): e="

    #@b9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bc
    move-result-object v10

    #@bd
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c0
    move-result-object v10

    #@c1
    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    #@c4
    .line 209
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@c7
    goto :goto_1

    #@c8
    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    #@c9
    .line 209
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    #@cc
    .line 208
    throw v9

    #@cd
    .line 212
    :catchall_2
    move-exception v9

    #@ce
    monitor-exit v10

    #@cf
    throw v9
.end method

.method public static getTimeZonesWithUniqueOffsets(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .param p0, "country"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/TimeZone;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 110
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    #@2
    monitor-enter v7

    #@3
    .line 111
    if-eqz p0, :cond_0

    #@5
    :try_start_0
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    #@7
    invoke-virtual {p0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v6

    #@b
    if-eqz v6, :cond_0

    #@d
    .line 116
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    monitor-exit v7

    #@10
    return-object v6

    #@11
    :cond_0
    monitor-exit v7

    #@12
    .line 120
    invoke-static {p0}, Landroid/util/TimeUtils;->getTimeZones(Ljava/lang/String;)Ljava/util/ArrayList;

    #@15
    move-result-object v5

    #@16
    .line 121
    .local v5, "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    new-instance v2, Ljava/util/ArrayList;

    #@18
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    #@1b
    .line 122
    .local v2, "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v4

    #@1f
    .local v4, "zone$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    #@22
    move-result v6

    #@23
    if-eqz v6, :cond_4

    #@25
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@28
    move-result-object v3

    #@29
    check-cast v3, Ljava/util/TimeZone;

    #@2b
    .line 125
    .local v3, "zone":Ljava/util/TimeZone;
    const/4 v0, 0x0

    #@2c
    .line 126
    .local v0, "found":Z
    const/4 v1, 0x0

    #@2d
    .local v1, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@30
    move-result v6

    #@31
    if-ge v1, v6, :cond_2

    #@33
    .line 127
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@36
    move-result-object v6

    #@37
    check-cast v6, Ljava/util/TimeZone;

    #@39
    invoke-virtual {v6}, Ljava/util/TimeZone;->getRawOffset()I

    #@3c
    move-result v6

    #@3d
    invoke-virtual {v3}, Ljava/util/TimeZone;->getRawOffset()I

    #@40
    move-result v7

    #@41
    if-ne v6, v7, :cond_3

    #@43
    .line 128
    const/4 v0, 0x1

    #@44
    .line 132
    :cond_2
    if-nez v0, :cond_1

    #@46
    .line 137
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@49
    goto :goto_0

    #@4a
    .line 110
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v2    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .end local v3    # "zone":Ljava/util/TimeZone;
    .end local v4    # "zone$iterator":Ljava/util/Iterator;
    .end local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :catchall_0
    move-exception v6

    #@4b
    monitor-exit v7

    #@4c
    throw v6

    #@4d
    .line 126
    .restart local v0    # "found":Z
    .restart local v1    # "i":I
    .restart local v2    # "uniqueTimeZones":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/TimeZone;>;"
    .restart local v3    # "zone":Ljava/util/TimeZone;
    .restart local v4    # "zone$iterator":Ljava/util/Iterator;
    .restart local v5    # "zones":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/TimeZone;>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 141
    .end local v0    # "found":Z
    .end local v1    # "i":I
    .end local v3    # "zone":Ljava/util/TimeZone;
    :cond_4
    sget-object v7, Landroid/util/TimeUtils;->sLastUniqueLockObj:Ljava/lang/Object;

    #@52
    monitor-enter v7

    #@53
    .line 143
    :try_start_1
    sput-object v2, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;

    #@55
    .line 144
    sput-object p0, Landroid/util/TimeUtils;->sLastUniqueCountry:Ljava/lang/String;

    #@57
    .line 146
    sget-object v6, Landroid/util/TimeUtils;->sLastUniqueZoneOffsets:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@59
    monitor-exit v7

    #@5a
    return-object v6

    #@5b
    .line 141
    :catchall_1
    move-exception v6

    #@5c
    monitor-exit v7

    #@5d
    throw v6
.end method

.method public static logTimeOfDay(J)Ljava/lang/String;
    .locals 4
    .param p0, "millis"    # J

    #@0
    .prologue
    .line 439
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    #@3
    move-result-object v0

    #@4
    .line 440
    .local v0, "c":Ljava/util/Calendar;
    const-wide/16 v2, 0x0

    #@6
    cmp-long v1, p0, v2

    #@8
    if-ltz v1, :cond_0

    #@a
    .line 441
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    #@d
    .line 442
    const-string/jumbo v1, "%tm-%td %tH:%tM:%tS.%tL"

    #@10
    const/4 v2, 0x6

    #@11
    new-array v2, v2, [Ljava/lang/Object;

    #@13
    const/4 v3, 0x0

    #@14
    aput-object v0, v2, v3

    #@16
    const/4 v3, 0x1

    #@17
    aput-object v0, v2, v3

    #@19
    const/4 v3, 0x2

    #@1a
    aput-object v0, v2, v3

    #@1c
    const/4 v3, 0x3

    #@1d
    aput-object v0, v2, v3

    #@1f
    const/4 v3, 0x4

    #@20
    aput-object v0, v2, v3

    #@22
    const/4 v3, 0x5

    #@23
    aput-object v0, v2, v3

    #@25
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    return-object v1

    #@2a
    .line 444
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@2d
    move-result-object v1

    #@2e
    return-object v1
.end method

.method private static printFieldLocked([CICIZI)I
    .locals 5
    .param p0, "formatStr"    # [C
    .param p1, "amt"    # I
    .param p2, "suffix"    # C
    .param p3, "pos"    # I
    .param p4, "always"    # Z
    .param p5, "zeropad"    # I

    #@0
    .prologue
    .line 279
    if-nez p4, :cond_0

    #@2
    if-lez p1, :cond_7

    #@4
    .line 280
    :cond_0
    move v1, p3

    #@5
    .line 281
    .local v1, "startPos":I
    const/16 v3, 0x3e7

    #@7
    if-le p1, v3, :cond_2

    #@9
    .line 282
    const/4 v2, 0x0

    #@a
    .line 283
    .local v2, "tmp":I
    :goto_0
    if-eqz p1, :cond_1

    #@c
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    #@e
    array-length v3, v3

    #@f
    if-ge v2, v3, :cond_1

    #@11
    .line 284
    rem-int/lit8 v0, p1, 0xa

    #@13
    .line 285
    .local v0, "dig":I
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    #@15
    add-int/lit8 v4, v0, 0x30

    #@17
    int-to-char v4, v4

    #@18
    aput-char v4, v3, v2

    #@1a
    .line 286
    add-int/lit8 v2, v2, 0x1

    #@1c
    .line 287
    div-int/lit8 p1, p1, 0xa

    #@1e
    goto :goto_0

    #@1f
    .line 289
    .end local v0    # "dig":I
    :cond_1
    add-int/lit8 v2, v2, -0x1

    #@21
    .line 290
    :goto_1
    if-ltz v2, :cond_6

    #@23
    .line 291
    sget-object v3, Landroid/util/TimeUtils;->sTmpFormatStr:[C

    #@25
    aget-char v3, v3, v2

    #@27
    aput-char v3, p0, p3

    #@29
    .line 292
    add-int/lit8 p3, p3, 0x1

    #@2b
    .line 293
    add-int/lit8 v2, v2, -0x1

    #@2d
    goto :goto_1

    #@2e
    .line 296
    .end local v2    # "tmp":I
    :cond_2
    if-eqz p4, :cond_8

    #@30
    const/4 v3, 0x3

    #@31
    if-lt p5, v3, :cond_8

    #@33
    .line 297
    :goto_2
    div-int/lit8 v0, p1, 0x64

    #@35
    .line 298
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    #@37
    int-to-char v3, v3

    #@38
    aput-char v3, p0, p3

    #@3a
    .line 299
    add-int/lit8 p3, p3, 0x1

    #@3c
    .line 300
    mul-int/lit8 v3, v0, 0x64

    #@3e
    sub-int/2addr p1, v3

    #@3f
    .line 302
    .end local v0    # "dig":I
    :cond_3
    if-eqz p4, :cond_9

    #@41
    const/4 v3, 0x2

    #@42
    if-lt p5, v3, :cond_9

    #@44
    .line 303
    :cond_4
    :goto_3
    div-int/lit8 v0, p1, 0xa

    #@46
    .line 304
    .restart local v0    # "dig":I
    add-int/lit8 v3, v0, 0x30

    #@48
    int-to-char v3, v3

    #@49
    aput-char v3, p0, p3

    #@4b
    .line 305
    add-int/lit8 p3, p3, 0x1

    #@4d
    .line 306
    mul-int/lit8 v3, v0, 0xa

    #@4f
    sub-int/2addr p1, v3

    #@50
    .line 308
    .end local v0    # "dig":I
    :cond_5
    add-int/lit8 v3, p1, 0x30

    #@52
    int-to-char v3, v3

    #@53
    aput-char v3, p0, p3

    #@55
    .line 309
    add-int/lit8 p3, p3, 0x1

    #@57
    .line 311
    :cond_6
    aput-char p2, p0, p3

    #@59
    .line 312
    add-int/lit8 p3, p3, 0x1

    #@5b
    .line 314
    .end local v1    # "startPos":I
    :cond_7
    return p3

    #@5c
    .line 296
    .restart local v1    # "startPos":I
    :cond_8
    const/16 v3, 0x63

    #@5e
    if-le p1, v3, :cond_3

    #@60
    goto :goto_2

    #@61
    .line 302
    :cond_9
    const/16 v3, 0x9

    #@63
    if-gt p1, v3, :cond_4

    #@65
    if-eq v1, p3, :cond_5

    #@67
    goto :goto_3
.end method
