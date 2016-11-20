.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# static fields
.field private static final DOM_MODE:I = 0x1

.field private static final DOW_GE_DOM_MODE:I = 0x3

.field private static final DOW_IN_MONTH_MODE:I = 0x2

.field private static final DOW_LE_DOM_MODE:I = 0x4

.field public static final STANDARD_TIME:I = 0x1

.field public static final UTC_TIME:I = 0x2

.field public static final WALL_TIME:I = 0x0

.field static final currentSerialVersion:I = 0x2

.field private static final gcal:Lsun/util/calendar/Gregorian;

.field private static final millisPerDay:I = 0x5265c00

.field private static final millisPerHour:I = 0x36ee80

.field static final serialVersionUID:J = -0x598a29f2ea10a5aL

.field private static final staticLeapMonthLength:[B

.field private static final staticMonthLength:[B


# instance fields
.field private transient cacheEnd:J

.field private transient cacheStart:J

.field private transient cacheYear:J

.field private dstSavings:I

.field private endDay:I

.field private endDayOfWeek:I

.field private endMode:I

.field private endMonth:I

.field private endTime:I

.field private endTimeMode:I

.field private final monthLength:[B

.field private rawOffset:I

.field private serialVersionOnStream:I

.field private startDay:I

.field private startDayOfWeek:I

.field private startMode:I

.field private startMonth:I

.field private startTime:I

.field private startTimeMode:I

.field private startYear:I

.field private useDaylight:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xc

    #@2
    .line 1128
    new-array v0, v1, [B

    #@4
    fill-array-data v0, :array_0

    #@7
    sput-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    #@9
    .line 1129
    new-array v0, v1, [B

    #@b
    fill-array-data v0, :array_1

    #@e
    sput-object v0, Ljava/util/SimpleTimeZone;->staticLeapMonthLength:[B

    #@10
    .line 1199
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    #@16
    .line 150
    return-void

    #@17
    .line 1128
    nop

    #@18
    :array_0
    .array-data 1
        0x1ft
        0x1ct
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data

    #@22
    .line 1129
    :array_1
    .array-data 1
        0x1ft
        0x1dt
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
        0x1ft
        0x1et
        0x1ft
        0x1et
        0x1ft
    .end array-data
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    #@0
    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    #@3
    .line 1114
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@6
    .line 1127
    sget-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    #@8
    iput-object v0, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    #@a
    .line 1279
    const/4 v0, 0x2

    #@b
    iput v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    #@d
    .line 160
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@f
    .line 161
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    #@12
    .line 162
    const v0, 0x36ee80

    #@15
    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@17
    .line 158
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIII)V
    .locals 14
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I

    #@0
    .prologue
    .line 219
    const/4 v7, 0x0

    #@1
    .line 220
    const/4 v12, 0x0

    #@2
    .line 221
    const v13, 0x36ee80

    #@5
    move-object v0, p0

    #@6
    move v1, p1

    #@7
    move-object/from16 v2, p2

    #@9
    move/from16 v3, p3

    #@b
    move/from16 v4, p4

    #@d
    move/from16 v5, p5

    #@f
    move/from16 v6, p6

    #@11
    move/from16 v8, p7

    #@13
    move/from16 v9, p8

    #@15
    move/from16 v10, p9

    #@17
    move/from16 v11, p10

    #@19
    .line 218
    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    #@1c
    .line 216
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIII)V
    .locals 14
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "endMonth"    # I
    .param p8, "endDay"    # I
    .param p9, "endDayOfWeek"    # I
    .param p10, "endTime"    # I
    .param p11, "dstSavings"    # I

    #@0
    .prologue
    .line 278
    const/4 v7, 0x0

    #@1
    .line 279
    const/4 v12, 0x0

    #@2
    move-object v0, p0

    #@3
    move v1, p1

    #@4
    move-object/from16 v2, p2

    #@6
    move/from16 v3, p3

    #@8
    move/from16 v4, p4

    #@a
    move/from16 v5, p5

    #@c
    move/from16 v6, p6

    #@e
    move/from16 v8, p7

    #@10
    move/from16 v9, p8

    #@12
    move/from16 v10, p9

    #@14
    move/from16 v11, p10

    #@16
    move/from16 v13, p11

    #@18
    .line 277
    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    #@1b
    .line 275
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;IIIIIIIIIII)V
    .locals 4
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;
    .param p3, "startMonth"    # I
    .param p4, "startDay"    # I
    .param p5, "startDayOfWeek"    # I
    .param p6, "startTime"    # I
    .param p7, "startTimeMode"    # I
    .param p8, "endMonth"    # I
    .param p9, "endDay"    # I
    .param p10, "endDayOfWeek"    # I
    .param p11, "endTime"    # I
    .param p12, "endTimeMode"    # I
    .param p13, "dstSavings"    # I

    #@0
    .prologue
    .line 328
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    #@3
    .line 1114
    const/4 v1, 0x0

    #@4
    iput-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@6
    .line 1127
    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    #@8
    iput-object v1, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    #@a
    .line 1279
    const/4 v1, 0x2

    #@b
    iput v1, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    #@d
    .line 335
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    #@10
    .line 336
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@12
    .line 337
    iput p3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@14
    .line 338
    iput p4, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@16
    .line 339
    iput p5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@18
    .line 340
    iput p6, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@1a
    .line 341
    iput p7, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@1c
    .line 342
    iput p8, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@1e
    .line 343
    iput p9, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@20
    .line 344
    iput p10, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@22
    .line 345
    iput p11, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@24
    .line 346
    move/from16 v0, p12

    #@26
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@28
    .line 347
    move/from16 v0, p13

    #@2a
    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@2c
    .line 350
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeRules()V

    #@2f
    .line 351
    if-gtz p13, :cond_0

    #@31
    .line 352
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@33
    new-instance v2, Ljava/lang/StringBuilder;

    #@35
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@38
    const-string/jumbo v3, "Illegal daylight saving value: "

    #@3b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v2

    #@3f
    move/from16 v0, p13

    #@41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@44
    move-result-object v2

    #@45
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@48
    move-result-object v2

    #@49
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@4c
    throw v1

    #@4d
    .line 333
    :cond_0
    return-void
.end method

.method private decodeEndRule()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 1427
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@5
    if-eqz v2, :cond_0

    #@7
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@9
    if-eqz v2, :cond_0

    #@b
    move v0, v1

    #@c
    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@e
    .line 1428
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@10
    if-eqz v0, :cond_c

    #@12
    .line 1429
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@14
    if-ltz v0, :cond_1

    #@16
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@18
    const/16 v2, 0xb

    #@1a
    if-le v0, v2, :cond_2

    #@1c
    .line 1430
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 1431
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Illegal end month "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1430
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 1433
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@3a
    if-ltz v0, :cond_3

    #@3c
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@3e
    const v2, 0x5265c00

    #@41
    if-le v0, v2, :cond_4

    #@43
    .line 1434
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Illegal end time "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 1434
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 1437
    :cond_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@61
    if-nez v0, :cond_7

    #@63
    .line 1438
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@65
    .line 1456
    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@67
    if-ne v0, v3, :cond_a

    #@69
    .line 1457
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@6b
    const/4 v1, -0x5

    #@6c
    if-lt v0, v1, :cond_6

    #@6e
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@70
    const/4 v1, 0x5

    #@71
    if-le v0, v1, :cond_c

    #@73
    .line 1458
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@75
    .line 1459
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, "Illegal end day of week in month "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 1458
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v0

    #@8f
    .line 1440
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@91
    if-lez v0, :cond_8

    #@93
    .line 1441
    iput v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@95
    .line 1451
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@97
    const/4 v2, 0x7

    #@98
    if-le v0, v2, :cond_5

    #@9a
    .line 1452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9c
    .line 1453
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v2, "Illegal end day of week "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    .line 1452
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v0

    #@b6
    .line 1443
    :cond_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@b8
    neg-int v0, v0

    #@b9
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@bb
    .line 1444
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@bd
    if-lez v0, :cond_9

    #@bf
    .line 1445
    const/4 v0, 0x3

    #@c0
    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@c2
    goto :goto_0

    #@c3
    .line 1447
    :cond_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@c5
    neg-int v0, v0

    #@c6
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@c8
    .line 1448
    const/4 v0, 0x4

    #@c9
    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@cb
    goto :goto_0

    #@cc
    .line 1461
    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@ce
    if-lt v0, v1, :cond_b

    #@d0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@d2
    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    #@d4
    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@d6
    aget-byte v1, v1, v2

    #@d8
    if-le v0, v1, :cond_c

    #@da
    .line 1462
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@dc
    .line 1463
    new-instance v1, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v2, "Illegal end day "

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@ea
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v1

    #@ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    .line 1462
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v0

    #@f6
    .line 1426
    :cond_c
    return-void
.end method

.method private decodeRules()V
    .locals 0

    #@0
    .prologue
    .line 1351
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    #@3
    .line 1352
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    #@6
    .line 1349
    return-void
.end method

.method private decodeStartRule()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    const/4 v0, 0x0

    #@3
    .line 1380
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@5
    if-eqz v2, :cond_0

    #@7
    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@9
    if-eqz v2, :cond_0

    #@b
    move v0, v1

    #@c
    :cond_0
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@e
    .line 1381
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@10
    if-eqz v0, :cond_c

    #@12
    .line 1382
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@14
    if-ltz v0, :cond_1

    #@16
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@18
    const/16 v2, 0xb

    #@1a
    if-le v0, v2, :cond_2

    #@1c
    .line 1383
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@1e
    .line 1384
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Illegal start month "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    .line 1383
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 1386
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@3a
    if-ltz v0, :cond_3

    #@3c
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@3e
    const v2, 0x5265c00

    #@41
    if-le v0, v2, :cond_4

    #@43
    .line 1387
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@45
    .line 1388
    new-instance v1, Ljava/lang/StringBuilder;

    #@47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@4a
    const-string/jumbo v2, "Illegal start time "

    #@4d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v1

    #@51
    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@56
    move-result-object v1

    #@57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5a
    move-result-object v1

    #@5b
    .line 1387
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@5e
    throw v0

    #@5f
    .line 1390
    :cond_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@61
    if-nez v0, :cond_7

    #@63
    .line 1391
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@65
    .line 1409
    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@67
    if-ne v0, v3, :cond_a

    #@69
    .line 1410
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@6b
    const/4 v1, -0x5

    #@6c
    if-lt v0, v1, :cond_6

    #@6e
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@70
    const/4 v1, 0x5

    #@71
    if-le v0, v1, :cond_c

    #@73
    .line 1411
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@75
    .line 1412
    new-instance v1, Ljava/lang/StringBuilder;

    #@77
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@7a
    const-string/jumbo v2, "Illegal start day of week in month "

    #@7d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v1

    #@81
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@86
    move-result-object v1

    #@87
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v1

    #@8b
    .line 1411
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@8e
    throw v0

    #@8f
    .line 1393
    :cond_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@91
    if-lez v0, :cond_8

    #@93
    .line 1394
    iput v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@95
    .line 1404
    :goto_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@97
    const/4 v2, 0x7

    #@98
    if-le v0, v2, :cond_5

    #@9a
    .line 1405
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9c
    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v2, "Illegal start day of week "

    #@a4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v1

    #@a8
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@aa
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v1

    #@ae
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@b1
    move-result-object v1

    #@b2
    .line 1405
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@b5
    throw v0

    #@b6
    .line 1396
    :cond_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@b8
    neg-int v0, v0

    #@b9
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@bb
    .line 1397
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@bd
    if-lez v0, :cond_9

    #@bf
    .line 1398
    const/4 v0, 0x3

    #@c0
    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@c2
    goto :goto_0

    #@c3
    .line 1400
    :cond_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@c5
    neg-int v0, v0

    #@c6
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@c8
    .line 1401
    const/4 v0, 0x4

    #@c9
    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@cb
    goto :goto_0

    #@cc
    .line 1414
    :cond_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@ce
    if-lt v0, v1, :cond_b

    #@d0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@d2
    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    #@d4
    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@d6
    aget-byte v1, v1, v2

    #@d8
    if-le v0, v1, :cond_c

    #@da
    .line 1415
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@dc
    .line 1416
    new-instance v1, Ljava/lang/StringBuilder;

    #@de
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e1
    const-string/jumbo v2, "Illegal start day "

    #@e4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e7
    move-result-object v1

    #@e8
    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@ea
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ed
    move-result-object v1

    #@ee
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f1
    move-result-object v1

    #@f2
    .line 1415
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@f5
    throw v0

    #@f6
    .line 1379
    :cond_c
    return-void
.end method

.method private getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .locals 9
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    #@0
    .prologue
    .line 734
    iget v8, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@2
    .line 735
    .local v8, "time":I
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 736
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@9
    sub-int/2addr v8, v0

    #@a
    .line 738
    :cond_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@c
    if-nez v0, :cond_1

    #@e
    .line 739
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@10
    sub-int/2addr v8, v0

    #@11
    .line 741
    :cond_1
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@13
    iget v5, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@15
    iget v6, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@17
    .line 742
    iget v7, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@19
    move-object v0, p0

    #@1a
    move-object v1, p1

    #@1b
    move-object v2, p2

    #@1c
    move v4, p3

    #@1d
    .line 741
    invoke-direct/range {v0 .. v8}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    #@20
    move-result-wide v0

    #@21
    return-wide v0
.end method

.method private getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I
    .locals 10
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I
    .param p4, "time"    # J

    #@0
    .prologue
    .line 673
    monitor-enter p0

    #@1
    .line 674
    :try_start_0
    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    #@3
    const-wide/16 v8, 0x0

    #@5
    cmp-long v3, v6, v8

    #@7
    if-eqz v3, :cond_1

    #@9
    .line 675
    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    #@b
    cmp-long v3, p4, v6

    #@d
    if-ltz v3, :cond_0

    #@f
    iget-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    #@11
    cmp-long v3, p4, v6

    #@13
    if-gez v3, :cond_0

    #@15
    .line 676
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@17
    iget v6, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@19
    add-int/2addr v3, v6

    #@1a
    monitor-exit p0

    #@1b
    return v3

    #@1c
    .line 678
    :cond_0
    int-to-long v6, p3

    #@1d
    :try_start_1
    iget-wide v8, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    #@1f
    cmp-long v3, v6, v8

    #@21
    if-nez v3, :cond_1

    #@23
    .line 679
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@25
    monitor-exit p0

    #@26
    return v3

    #@27
    :cond_1
    monitor-exit p0

    #@28
    .line 684
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    #@2b
    move-result-wide v4

    #@2c
    .line 685
    .local v4, "start":J
    invoke-direct {p0, p1, p2, p3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    #@2f
    move-result-wide v0

    #@30
    .line 686
    .local v0, "end":J
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@32
    .line 687
    .local v2, "offset":I
    cmp-long v3, v4, v0

    #@34
    if-gtz v3, :cond_4

    #@36
    .line 688
    cmp-long v3, p4, v4

    #@38
    if-ltz v3, :cond_2

    #@3a
    cmp-long v3, p4, v0

    #@3c
    if-gez v3, :cond_2

    #@3e
    .line 689
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@40
    add-int/2addr v2, v3

    #@41
    .line 691
    :cond_2
    monitor-enter p0

    #@42
    .line 692
    int-to-long v6, p3

    #@43
    :try_start_2
    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    #@45
    .line 693
    iput-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    #@47
    .line 694
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@49
    :goto_0
    monitor-exit p0

    #@4a
    .line 721
    :cond_3
    return v2

    #@4b
    .line 673
    .end local v0    # "end":J
    .end local v2    # "offset":I
    .end local v4    # "start":J
    :catchall_0
    move-exception v3

    #@4c
    monitor-exit p0

    #@4d
    throw v3

    #@4e
    .line 691
    .restart local v0    # "end":J
    .restart local v2    # "offset":I
    .restart local v4    # "start":J
    :catchall_1
    move-exception v3

    #@4f
    monitor-exit p0

    #@50
    throw v3

    #@51
    .line 697
    :cond_4
    cmp-long v3, p4, v0

    #@53
    if-gez v3, :cond_6

    #@55
    .line 700
    add-int/lit8 v3, p3, -0x1

    #@57
    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    #@5a
    move-result-wide v4

    #@5b
    .line 701
    cmp-long v3, p4, v4

    #@5d
    if-ltz v3, :cond_5

    #@5f
    .line 702
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@61
    add-int/2addr v2, v3

    #@62
    .line 712
    :cond_5
    :goto_1
    cmp-long v3, v4, v0

    #@64
    if-gtz v3, :cond_3

    #@66
    .line 713
    monitor-enter p0

    #@67
    .line 715
    :try_start_3
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@69
    int-to-long v6, v3

    #@6a
    const-wide/16 v8, 0x1

    #@6c
    sub-long/2addr v6, v8

    #@6d
    iput-wide v6, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    #@6f
    .line 716
    iput-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    #@71
    .line 717
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    #@73
    goto :goto_0

    #@74
    .line 713
    :catchall_2
    move-exception v3

    #@75
    monitor-exit p0

    #@76
    throw v3

    #@77
    .line 704
    :cond_6
    cmp-long v3, p4, v4

    #@79
    if-ltz v3, :cond_5

    #@7b
    .line 707
    add-int/lit8 v3, p3, 0x1

    #@7d
    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    #@80
    move-result-wide v0

    #@81
    .line 708
    cmp-long v3, p4, v0

    #@83
    if-gez v3, :cond_5

    #@85
    .line 709
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@87
    add-int/2addr v2, v3

    #@88
    goto :goto_1
.end method

.method private getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .locals 9
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    #@0
    .prologue
    .line 725
    iget v8, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@2
    .line 726
    .local v8, "time":I
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@4
    const/4 v1, 0x2

    #@5
    if-eq v0, v1, :cond_0

    #@7
    .line 727
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@9
    sub-int/2addr v8, v0

    #@a
    .line 729
    :cond_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@c
    iget v5, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@e
    iget v6, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@10
    .line 730
    iget v7, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@12
    move-object v0, p0

    #@13
    move-object v1, p1

    #@14
    move-object v2, p2

    #@15
    move v4, p3

    #@16
    .line 729
    invoke-direct/range {v0 .. v8}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    #@19
    move-result-wide v0

    #@1a
    return-wide v0
.end method

.method private getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J
    .locals 4
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "mode"    # I
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "timeOfDay"    # I

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    .line 748
    invoke-virtual {p2, p4}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@4
    .line 749
    add-int/lit8 v0, p5, 0x1

    #@6
    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@9
    .line 750
    packed-switch p3, :pswitch_data_0

    #@c
    .line 773
    :goto_0
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@f
    move-result-wide v0

    #@10
    int-to-long v2, p8

    #@11
    add-long/2addr v0, v2

    #@12
    return-wide v0

    #@13
    .line 752
    :pswitch_0
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@16
    goto :goto_0

    #@17
    .line 756
    :pswitch_1
    invoke-virtual {p2, v1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@1a
    .line 757
    if-gez p6, :cond_0

    #@1c
    .line 758
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    #@1f
    move-result v0

    #@20
    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@23
    .line 760
    :cond_0
    invoke-virtual {p1, p6, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@26
    move-result-object p2

    #@27
    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    #@29
    .restart local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    goto :goto_0

    #@2a
    .line 764
    :pswitch_2
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@2d
    .line 765
    invoke-virtual {p1, v1, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@30
    move-result-object p2

    #@31
    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    #@33
    .restart local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    goto :goto_0

    #@34
    .line 769
    :pswitch_3
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@37
    .line 770
    const/4 v0, -0x1

    #@38
    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@3b
    move-result-object p2

    #@3c
    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    #@3e
    .restart local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    goto :goto_0

    #@3f
    .line 750
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private declared-synchronized invalidateCache()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 1282
    :try_start_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@3
    add-int/lit8 v0, v0, -0x1

    #@5
    int-to-long v0, v0

    #@6
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheYear:J

    #@8
    .line 1283
    const-wide/16 v0, 0x0

    #@a
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    #@c
    const-wide/16 v0, 0x0

    #@e
    iput-wide v0, p0, Ljava/util/SimpleTimeZone;->cacheStart:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    monitor-exit p0

    #@11
    .line 1281
    return-void

    #@12
    :catchall_0
    move-exception v0

    #@13
    monitor-exit p0

    #@14
    throw v0
.end method

.method private makeRulesCompatible()V
    .locals 5

    #@0
    .prologue
    const/16 v4, 0x1e

    #@2
    const/4 v2, -0x1

    #@3
    const v3, 0x5265c00

    #@6
    const/4 v1, 0x1

    #@7
    .line 1479
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@9
    packed-switch v0, :pswitch_data_0

    #@c
    .line 1502
    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@e
    packed-switch v0, :pswitch_data_1

    #@11
    .line 1535
    :cond_1
    :goto_1
    :pswitch_1
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@13
    packed-switch v0, :pswitch_data_2

    #@16
    .line 1540
    :goto_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@18
    if-gez v0, :cond_4

    #@1a
    .line 1541
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@1c
    add-int/2addr v0, v3

    #@1d
    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@1f
    .line 1542
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@21
    add-int/lit8 v0, v0, 0x5

    #@23
    rem-int/lit8 v0, v0, 0x7

    #@25
    add-int/lit8 v0, v0, 0x1

    #@27
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@29
    goto :goto_2

    #@2a
    .line 1481
    :pswitch_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@2c
    div-int/lit8 v0, v0, 0x7

    #@2e
    add-int/lit8 v0, v0, 0x1

    #@30
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@32
    .line 1482
    iput v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@34
    goto :goto_0

    #@35
    .line 1488
    :pswitch_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@37
    if-eq v0, v1, :cond_0

    #@39
    .line 1489
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@3b
    div-int/lit8 v0, v0, 0x7

    #@3d
    add-int/lit8 v0, v0, 0x1

    #@3f
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@41
    goto :goto_0

    #@42
    .line 1494
    :pswitch_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@44
    if-lt v0, v4, :cond_2

    #@46
    .line 1495
    iput v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@48
    goto :goto_0

    #@49
    .line 1497
    :cond_2
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@4b
    div-int/lit8 v0, v0, 0x7

    #@4d
    add-int/lit8 v0, v0, 0x1

    #@4f
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@51
    goto :goto_0

    #@52
    .line 1504
    :pswitch_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@54
    div-int/lit8 v0, v0, 0x7

    #@56
    add-int/lit8 v0, v0, 0x1

    #@58
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@5a
    .line 1505
    iput v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5c
    goto :goto_1

    #@5d
    .line 1511
    :pswitch_6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@5f
    if-eq v0, v1, :cond_1

    #@61
    .line 1512
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@63
    div-int/lit8 v0, v0, 0x7

    #@65
    add-int/lit8 v0, v0, 0x1

    #@67
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@69
    goto :goto_1

    #@6a
    .line 1517
    :pswitch_7
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@6c
    if-lt v0, v4, :cond_3

    #@6e
    .line 1518
    iput v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@70
    goto :goto_1

    #@71
    .line 1520
    :cond_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@73
    div-int/lit8 v0, v0, 0x7

    #@75
    add-int/lit8 v0, v0, 0x1

    #@77
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@79
    goto :goto_1

    #@7a
    .line 1537
    :pswitch_8
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@7c
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@7e
    add-int/2addr v0, v1

    #@7f
    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@81
    goto :goto_2

    #@82
    .line 1544
    :cond_4
    :goto_3
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@84
    if-lt v0, v3, :cond_5

    #@86
    .line 1545
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@88
    sub-int/2addr v0, v3

    #@89
    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@8b
    .line 1546
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@8d
    rem-int/lit8 v0, v0, 0x7

    #@8f
    add-int/lit8 v0, v0, 0x1

    #@91
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@93
    goto :goto_3

    #@94
    .line 1549
    :cond_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@96
    packed-switch v0, :pswitch_data_3

    #@99
    .line 1556
    :goto_4
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@9b
    if-gez v0, :cond_6

    #@9d
    .line 1557
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@9f
    add-int/2addr v0, v3

    #@a0
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@a2
    .line 1558
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@a4
    add-int/lit8 v0, v0, 0x5

    #@a6
    rem-int/lit8 v0, v0, 0x7

    #@a8
    add-int/lit8 v0, v0, 0x1

    #@aa
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@ac
    goto :goto_4

    #@ad
    .line 1551
    :pswitch_9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@af
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@b1
    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@b3
    add-int/2addr v1, v2

    #@b4
    add-int/2addr v0, v1

    #@b5
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@b7
    goto :goto_4

    #@b8
    .line 1554
    :pswitch_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@ba
    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@bc
    add-int/2addr v0, v1

    #@bd
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@bf
    goto :goto_4

    #@c0
    .line 1560
    :cond_6
    :goto_5
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@c2
    if-lt v0, v3, :cond_7

    #@c4
    .line 1561
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@c6
    sub-int/2addr v0, v3

    #@c7
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@c9
    .line 1562
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@cb
    rem-int/lit8 v0, v0, 0x7

    #@cd
    add-int/lit8 v0, v0, 0x1

    #@cf
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@d1
    goto :goto_5

    #@d2
    .line 1477
    :cond_7
    return-void

    #@d3
    .line 1479
    nop

    #@d4
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch

    #@e0
    .line 1502
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
    .end packed-switch

    #@ec
    .line 1535
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_8
    .end packed-switch

    #@f2
    .line 1549
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private packRules()[B
    .locals 3

    #@0
    .prologue
    .line 1572
    const/4 v1, 0x6

    #@1
    new-array v0, v1, [B

    #@3
    .line 1573
    .local v0, "rules":[B
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@5
    int-to-byte v1, v1

    #@6
    const/4 v2, 0x0

    #@7
    aput-byte v1, v0, v2

    #@9
    .line 1574
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@b
    int-to-byte v1, v1

    #@c
    const/4 v2, 0x1

    #@d
    aput-byte v1, v0, v2

    #@f
    .line 1575
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@11
    int-to-byte v1, v1

    #@12
    const/4 v2, 0x2

    #@13
    aput-byte v1, v0, v2

    #@15
    .line 1576
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@17
    int-to-byte v1, v1

    #@18
    const/4 v2, 0x3

    #@19
    aput-byte v1, v0, v2

    #@1b
    .line 1579
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@1d
    int-to-byte v1, v1

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-byte v1, v0, v2

    #@21
    .line 1580
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@23
    int-to-byte v1, v1

    #@24
    const/4 v2, 0x5

    #@25
    aput-byte v1, v0, v2

    #@27
    .line 1582
    return-object v0
.end method

.method private packTimes()[I
    .locals 3

    #@0
    .prologue
    .line 1608
    const/4 v1, 0x2

    #@1
    new-array v0, v1, [I

    #@3
    .line 1609
    .local v0, "times":[I
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@5
    const/4 v2, 0x0

    #@6
    aput v1, v0, v2

    #@8
    .line 1610
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@a
    const/4 v2, 0x1

    #@b
    aput v1, v0, v2

    #@d
    .line 1611
    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x2

    #@2
    .line 1672
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@5
    .line 1674
    iget v3, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    #@7
    if-ge v3, v5, :cond_3

    #@9
    .line 1678
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@b
    if-nez v3, :cond_0

    #@d
    .line 1679
    iput v5, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@f
    .line 1681
    :cond_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@11
    if-nez v3, :cond_1

    #@13
    .line 1682
    iput v5, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@15
    .line 1687
    :cond_1
    iput v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@17
    iput v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@19
    .line 1688
    const v3, 0x36ee80

    #@1c
    iput v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@1e
    .line 1699
    :goto_0
    iget v3, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    #@20
    if-lt v3, v4, :cond_2

    #@22
    .line 1700
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    #@25
    move-result-object v2

    #@26
    check-cast v2, [I

    #@28
    .line 1701
    .local v2, "times":[I
    invoke-direct {p0, v2}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    #@2b
    .line 1704
    .end local v2    # "times":[I
    :cond_2
    iput v4, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    #@2d
    .line 1670
    return-void

    #@2e
    .line 1693
    :cond_3
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    #@31
    move-result v0

    #@32
    .line 1694
    .local v0, "length":I
    new-array v1, v0, [B

    #@34
    .line 1695
    .local v1, "rules":[B
    invoke-virtual {p1, v1}, Ljava/io/ObjectInputStream;->readFully([B)V

    #@37
    .line 1696
    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    #@3a
    goto :goto_0
.end method

.method private unpackRules([B)V
    .locals 2
    .param p1, "rules"    # [B

    #@0
    .prologue
    .line 1591
    const/4 v0, 0x0

    #@1
    aget-byte v0, p1, v0

    #@3
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@5
    .line 1592
    const/4 v0, 0x1

    #@6
    aget-byte v0, p1, v0

    #@8
    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@a
    .line 1593
    const/4 v0, 0x2

    #@b
    aget-byte v0, p1, v0

    #@d
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@f
    .line 1594
    const/4 v0, 0x3

    #@10
    aget-byte v0, p1, v0

    #@12
    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@14
    .line 1597
    array-length v0, p1

    #@15
    const/4 v1, 0x6

    #@16
    if-lt v0, v1, :cond_0

    #@18
    .line 1598
    const/4 v0, 0x4

    #@19
    aget-byte v0, p1, v0

    #@1b
    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@1d
    .line 1599
    const/4 v0, 0x5

    #@1e
    aget-byte v0, p1, v0

    #@20
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@22
    .line 1589
    :cond_0
    return-void
.end method

.method private unpackTimes([I)V
    .locals 1
    .param p1, "times"    # [I

    #@0
    .prologue
    .line 1619
    const/4 v0, 0x0

    #@1
    aget v0, p1, v0

    #@3
    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@5
    .line 1620
    const/4 v0, 0x1

    #@6
    aget v0, p1, v0

    #@8
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@a
    .line 1618
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 1643
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packRules()[B

    #@3
    move-result-object v0

    #@4
    .line 1644
    .local v0, "rules":[B
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packTimes()[I

    #@7
    move-result-object v1

    #@8
    .line 1647
    .local v1, "times":[I
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->makeRulesCompatible()V

    #@b
    .line 1650
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    #@e
    .line 1653
    array-length v2, v0

    #@f
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    #@12
    .line 1654
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    #@15
    .line 1655
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    #@18
    .line 1659
    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    #@1b
    .line 1660
    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    #@1e
    .line 1640
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 871
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 893
    if-ne p0, p1, :cond_0

    #@3
    .line 894
    const/4 v1, 0x1

    #@4
    return v1

    #@5
    .line 896
    :cond_0
    instance-of v2, p1, Ljava/util/SimpleTimeZone;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 897
    return v1

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 900
    check-cast v0, Ljava/util/SimpleTimeZone;

    #@d
    .line 902
    .local v0, "that":Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@14
    move-result-object v3

    #@15
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@18
    move-result v2

    #@19
    if-eqz v2, :cond_2

    #@1b
    .line 903
    invoke-virtual {p0, v0}, Ljava/util/SimpleTimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    #@1e
    move-result v1

    #@1f
    .line 902
    :cond_2
    return v1
.end method

.method public getDSTSavings()I
    .locals 1

    #@0
    .prologue
    .line 828
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method

.method public getOffset(IIIIII)I
    .locals 14
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    #@0
    .prologue
    .line 607
    const/4 v2, 0x1

    #@1
    if-eq p1, v2, :cond_0

    #@3
    if-eqz p1, :cond_0

    #@5
    .line 608
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@7
    new-instance v9, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v10, "Illegal era "

    #@f
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v9

    #@13
    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16
    move-result-object v9

    #@17
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v9

    #@1b
    invoke-direct {v2, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1e
    throw v2

    #@1f
    .line 611
    :cond_0
    move/from16 v5, p2

    #@21
    .line 612
    .local v5, "y":I
    if-nez p1, :cond_1

    #@23
    .line 614
    rsub-int/lit8 v5, p2, 0x1

    #@25
    .line 622
    :cond_1
    const v2, 0x116bd2d2

    #@28
    if-lt v5, v2, :cond_5

    #@2a
    .line 623
    rem-int/lit16 v2, v5, 0xaf0

    #@2c
    add-int/lit16 v5, v2, 0xaf0

    #@2e
    .line 632
    :cond_2
    :goto_0
    add-int/lit8 v8, p3, 0x1

    #@30
    .line 635
    .local v8, "m":I
    sget-object v3, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    #@32
    .line 636
    .local v3, "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@34
    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@37
    move-result-object v4

    #@38
    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    #@3a
    .line 637
    .local v4, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    move/from16 v0, p4

    #@3c
    invoke-virtual {v4, v5, v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    #@3f
    .line 638
    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@42
    move-result-wide v6

    #@43
    .line 639
    .local v6, "time":J
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@45
    sub-int v2, p6, v2

    #@47
    int-to-long v10, v2

    #@48
    add-long/2addr v6, v10

    #@49
    .line 647
    const-wide v10, -0xb1d069b5400L

    #@4e
    cmp-long v2, v6, v10

    #@50
    if-gez v2, :cond_3

    #@52
    .line 648
    const-string/jumbo v2, "julian"

    #@55
    invoke-static {v2}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    #@58
    move-result-object v3

    #@59
    .end local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    check-cast v3, Lsun/util/calendar/BaseCalendar;

    #@5b
    .line 649
    .restart local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v2, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@5d
    invoke-virtual {v3, v2}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@60
    move-result-object v4

    #@61
    .end local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    #@63
    .line 650
    .restart local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    move/from16 v0, p4

    #@65
    invoke-virtual {v4, v5, v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    #@68
    .line 651
    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@6b
    move-result-wide v10

    #@6c
    move/from16 v0, p6

    #@6e
    int-to-long v12, v0

    #@6f
    add-long/2addr v10, v12

    #@70
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@72
    int-to-long v12, v2

    #@73
    sub-long v6, v10, v12

    #@75
    .line 654
    :cond_3
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@78
    move-result v2

    #@79
    if-ne v2, v5, :cond_4

    #@7b
    .line 655
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@7e
    move-result v2

    #@7f
    if-eq v2, v8, :cond_6

    #@81
    .line 662
    :cond_4
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@83
    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    #@86
    throw v2

    #@87
    .line 624
    .end local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v6    # "time":J
    .end local v8    # "m":I
    :cond_5
    const v2, -0x116babfe

    #@8a
    if-gt v5, v2, :cond_2

    #@8c
    .line 628
    int-to-long v10, v5

    #@8d
    const-wide/16 v12, 0x1c

    #@8f
    invoke-static {v10, v11, v12, v13}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    #@92
    move-result-wide v10

    #@93
    long-to-int v5, v10

    #@94
    goto :goto_0

    #@95
    .line 656
    .restart local v3    # "cal":Lsun/util/calendar/BaseCalendar;
    .restart local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .restart local v6    # "time":J
    .restart local v8    # "m":I
    :cond_6
    invoke-virtual {v4}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@98
    move-result v2

    #@99
    move/from16 v0, p4

    #@9b
    if-ne v2, v0, :cond_4

    #@9d
    .line 660
    const/4 v2, 0x1

    #@9e
    move/from16 v0, p5

    #@a0
    if-lt v0, v2, :cond_4

    #@a2
    const/4 v2, 0x7

    #@a3
    move/from16 v0, p5

    #@a5
    if-gt v0, v2, :cond_4

    #@a7
    .line 661
    if-ltz p6, :cond_4

    #@a9
    const v2, 0x5265c00

    #@ac
    move/from16 v0, p6

    #@ae
    if-ge v0, v2, :cond_4

    #@b0
    .line 665
    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@b2
    if-eqz v2, :cond_7

    #@b4
    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@b6
    move/from16 v0, p2

    #@b8
    if-ge v0, v2, :cond_8

    #@ba
    .line 666
    :cond_7
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@bc
    return v2

    #@bd
    .line 665
    :cond_8
    const/4 v2, 0x1

    #@be
    if-ne p1, v2, :cond_7

    #@c0
    move-object v2, p0

    #@c1
    .line 669
    invoke-direct/range {v2 .. v7}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    #@c4
    move-result v2

    #@c5
    return v2
.end method

.method public getOffset(J)I
    .locals 1
    .param p1, "date"    # J

    #@0
    .prologue
    .line 539
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Ljava/util/SimpleTimeZone;->getOffsets(J[I)I

    #@4
    move-result v0

    #@5
    return v0
.end method

.method getOffsets(J[I)I
    .locals 11
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    #@0
    .prologue
    const/4 v7, 0x0

    #@1
    .line 546
    iget v6, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@3
    .line 549
    .local v6, "offset":I
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 550
    monitor-enter p0

    #@8
    .line 551
    :try_start_0
    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    #@a
    const-wide/16 v8, 0x0

    #@c
    cmp-long v0, v4, v8

    #@e
    if-eqz v0, :cond_2

    #@10
    .line 552
    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheStart:J

    #@12
    cmp-long v0, p1, v4

    #@14
    if-ltz v0, :cond_2

    #@16
    iget-wide v4, p0, Ljava/util/SimpleTimeZone;->cacheEnd:J

    #@18
    cmp-long v0, p1, v4

    #@1a
    if-gez v0, :cond_2

    #@1c
    .line 553
    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    add-int/2addr v6, v0

    #@1f
    monitor-exit p0

    #@20
    .line 571
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    #@22
    .line 572
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@24
    aput v0, p3, v7

    #@26
    .line 573
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@28
    sub-int v0, v6, v0

    #@2a
    const/4 v4, 0x1

    #@2b
    aput v0, p3, v4

    #@2d
    .line 575
    :cond_1
    return v6

    #@2e
    :cond_2
    monitor-exit p0

    #@2f
    .line 558
    const-wide v4, -0xb1d069b5400L

    #@34
    cmp-long v0, p1, v4

    #@36
    if-ltz v0, :cond_3

    #@38
    .line 559
    sget-object v1, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    #@3a
    .line 560
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    :goto_1
    sget-object v0, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    #@3c
    invoke-virtual {v1, v0}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    #@3f
    move-result-object v2

    #@40
    check-cast v2, Lsun/util/calendar/BaseCalendar$Date;

    #@42
    .line 562
    .local v2, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@44
    int-to-long v4, v0

    #@45
    add-long/2addr v4, p1

    #@46
    invoke-virtual {v1, v4, v5, v2}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    #@49
    .line 563
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@4c
    move-result v3

    #@4d
    .line 564
    .local v3, "year":I
    iget v0, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@4f
    if-lt v3, v0, :cond_0

    #@51
    .line 566
    invoke-virtual {v2, v7, v7, v7, v7}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    #@54
    move-object v0, p0

    #@55
    move-wide v4, p1

    #@56
    .line 567
    invoke-direct/range {v0 .. v5}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    #@59
    move-result v6

    #@5a
    goto :goto_0

    #@5b
    .line 550
    .end local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v3    # "year":I
    :catchall_0
    move-exception v0

    #@5c
    monitor-exit p0

    #@5d
    throw v0

    #@5e
    .line 559
    :cond_3
    const-string/jumbo v0, "julian"

    #@61
    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    #@64
    move-result-object v1

    #@65
    check-cast v1, Lsun/util/calendar/BaseCalendar;

    #@67
    .restart local v1    # "cal":Lsun/util/calendar/BaseCalendar;
    goto :goto_1
.end method

.method public getRawOffset()I
    .locals 1

    #@0
    .prologue
    .line 785
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@2
    return v0
.end method

.method public hasSameRules(Ljava/util/TimeZone;)Z
    .locals 5
    .param p1, "other"    # Ljava/util/TimeZone;

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 914
    if-ne p0, p1, :cond_0

    #@4
    .line 915
    return v1

    #@5
    .line 917
    :cond_0
    instance-of v3, p1, Ljava/util/SimpleTimeZone;

    #@7
    if-nez v3, :cond_1

    #@9
    .line 918
    return v2

    #@a
    :cond_1
    move-object v0, p1

    #@b
    .line 920
    check-cast v0, Ljava/util/SimpleTimeZone;

    #@d
    .line 921
    .local v0, "that":Ljava/util/SimpleTimeZone;
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@f
    iget v4, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@11
    if-ne v3, v4, :cond_5

    #@13
    .line 922
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@15
    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@17
    if-ne v3, v4, :cond_5

    #@19
    .line 923
    iget-boolean v3, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@1b
    if-eqz v3, :cond_2

    #@1d
    .line 925
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@1f
    iget v4, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@21
    if-ne v3, v4, :cond_4

    #@23
    .line 926
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@25
    iget v4, v0, Ljava/util/SimpleTimeZone;->startMode:I

    #@27
    if-ne v3, v4, :cond_4

    #@29
    .line 927
    iget v3, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2b
    iget v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2d
    if-ne v3, v4, :cond_4

    #@2f
    .line 928
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@31
    iget v4, v0, Ljava/util/SimpleTimeZone;->startDay:I

    #@33
    if-ne v3, v4, :cond_4

    #@35
    .line 929
    iget v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@37
    iget v4, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@39
    if-ne v3, v4, :cond_4

    #@3b
    .line 930
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@3d
    iget v4, v0, Ljava/util/SimpleTimeZone;->startTime:I

    #@3f
    if-ne v3, v4, :cond_4

    #@41
    .line 931
    iget v3, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@43
    iget v4, v0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@45
    if-ne v3, v4, :cond_4

    #@47
    .line 932
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@49
    iget v4, v0, Ljava/util/SimpleTimeZone;->endMode:I

    #@4b
    if-ne v3, v4, :cond_4

    #@4d
    .line 933
    iget v3, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@4f
    iget v4, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@51
    if-ne v3, v4, :cond_4

    #@53
    .line 934
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@55
    iget v4, v0, Ljava/util/SimpleTimeZone;->endDay:I

    #@57
    if-ne v3, v4, :cond_4

    #@59
    .line 935
    iget v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5b
    iget v4, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@5d
    if-ne v3, v4, :cond_4

    #@5f
    .line 936
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@61
    iget v4, v0, Ljava/util/SimpleTimeZone;->endTime:I

    #@63
    if-ne v3, v4, :cond_4

    #@65
    .line 937
    iget v3, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@67
    iget v4, v0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@69
    if-ne v3, v4, :cond_4

    #@6b
    .line 938
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@6d
    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    #@6f
    if-ne v3, v4, :cond_3

    #@71
    .line 921
    :cond_2
    :goto_0
    return v1

    #@72
    :cond_3
    move v1, v2

    #@73
    .line 938
    goto :goto_0

    #@74
    :cond_4
    move v1, v2

    #@75
    .line 925
    goto :goto_0

    #@76
    :cond_5
    move v1, v2

    #@77
    .line 921
    goto :goto_0
.end method

.method public declared-synchronized hashCode()I
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 880
    :try_start_0
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@3
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@5
    xor-int/2addr v0, v1

    #@6
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@8
    xor-int/2addr v0, v1

    #@9
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@b
    xor-int/2addr v0, v1

    #@c
    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@e
    .line 880
    xor-int/2addr v0, v1

    #@f
    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@11
    .line 880
    xor-int/2addr v0, v1

    #@12
    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@14
    .line 880
    xor-int/2addr v0, v1

    #@15
    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@17
    .line 880
    xor-int/2addr v0, v1

    #@18
    .line 881
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 880
    xor-int/2addr v0, v1

    #@1b
    monitor-exit p0

    #@1c
    return v0

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit p0

    #@1f
    throw v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 862
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@3
    move-result-wide v0

    #@4
    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    #@7
    move-result v0

    #@8
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@a
    if-eq v0, v1, :cond_0

    #@c
    const/4 v0, 0x1

    #@d
    :goto_0
    return v0

    #@e
    :cond_0
    const/4 v0, 0x0

    #@f
    goto :goto_0
.end method

.method public observesDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 852
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public setDSTSavings(I)V
    .locals 3
    .param p1, "millisSavedDuringDST"    # I

    #@0
    .prologue
    .line 808
    if-gtz p1, :cond_0

    #@2
    .line 809
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@4
    new-instance v1, Ljava/lang/StringBuilder;

    #@6
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@9
    const-string/jumbo v2, "Illegal daylight saving value: "

    #@c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v1

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 812
    :cond_0
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@1e
    .line 807
    return-void
.end method

.method public setEndRule(III)V
    .locals 1
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endTime"    # I

    #@0
    .prologue
    .line 495
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    #@4
    .line 493
    return-void
.end method

.method public setEndRule(IIII)V
    .locals 1
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I

    #@0
    .prologue
    .line 468
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@2
    .line 469
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@4
    .line 470
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@6
    .line 471
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@8
    .line 472
    const/4 v0, 0x0

    #@9
    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@b
    .line 473
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    #@e
    .line 474
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    #@11
    .line 466
    return-void
.end method

.method public setEndRule(IIIIZ)V
    .locals 2
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I
    .param p5, "after"    # Z

    #@0
    .prologue
    .line 520
    if-eqz p5, :cond_0

    #@2
    .line 521
    neg-int v0, p3

    #@3
    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    #@6
    .line 518
    :goto_0
    return-void

    #@7
    .line 523
    :cond_0
    neg-int v0, p2

    #@8
    neg-int v1, p3

    #@9
    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    #@c
    goto :goto_0
.end method

.method public setRawOffset(I)V
    .locals 0
    .param p1, "offsetMillis"    # I

    #@0
    .prologue
    .line 795
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@2
    .line 793
    return-void
.end method

.method public setStartRule(III)V
    .locals 1
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startTime"    # I

    #@0
    .prologue
    .line 413
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    #@4
    .line 412
    return-void
.end method

.method public setStartRule(IIII)V
    .locals 1
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I

    #@0
    .prologue
    .line 387
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@2
    .line 388
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@4
    .line 389
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@6
    .line 390
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@8
    .line 391
    const/4 v0, 0x0

    #@9
    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@b
    .line 392
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    #@e
    .line 393
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    #@11
    .line 385
    return-void
.end method

.method public setStartRule(IIIIZ)V
    .locals 2
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I
    .param p5, "after"    # Z

    #@0
    .prologue
    .line 439
    if-eqz p5, :cond_0

    #@2
    .line 440
    neg-int v0, p3

    #@3
    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    #@6
    .line 436
    :goto_0
    return-void

    #@7
    .line 442
    :cond_0
    neg-int v0, p2

    #@8
    neg-int v1, p3

    #@9
    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    #@c
    goto :goto_0
.end method

.method public setStartYear(I)V
    .locals 0
    .param p1, "year"    # I

    #@0
    .prologue
    .line 363
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@2
    .line 364
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    #@5
    .line 361
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getClass()Ljava/lang/Class;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    .line 947
    const-string/jumbo v1, "[id="

    #@14
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    .line 947
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    #@1b
    move-result-object v1

    #@1c
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v0

    #@20
    .line 948
    const-string/jumbo v1, ",offset="

    #@23
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v0

    #@27
    .line 948
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    #@29
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v0

    #@2d
    .line 949
    const-string/jumbo v1, ",dstSavings="

    #@30
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    .line 949
    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    #@36
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@39
    move-result-object v0

    #@3a
    .line 950
    const-string/jumbo v1, ",useDaylight="

    #@3d
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@40
    move-result-object v0

    #@41
    .line 950
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@43
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    #@46
    move-result-object v0

    #@47
    .line 951
    const-string/jumbo v1, ",startYear="

    #@4a
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4d
    move-result-object v0

    #@4e
    .line 951
    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    #@50
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@53
    move-result-object v0

    #@54
    .line 952
    const-string/jumbo v1, ",startMode="

    #@57
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v0

    #@5b
    .line 952
    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    #@5d
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@60
    move-result-object v0

    #@61
    .line 953
    const-string/jumbo v1, ",startMonth="

    #@64
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v0

    #@68
    .line 953
    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    #@6a
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@6d
    move-result-object v0

    #@6e
    .line 954
    const-string/jumbo v1, ",startDay="

    #@71
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v0

    #@75
    .line 954
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    #@77
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v0

    #@7b
    .line 955
    const-string/jumbo v1, ",startDayOfWeek="

    #@7e
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@81
    move-result-object v0

    #@82
    .line 955
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    #@84
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@87
    move-result-object v0

    #@88
    .line 956
    const-string/jumbo v1, ",startTime="

    #@8b
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v0

    #@8f
    .line 956
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    #@91
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@94
    move-result-object v0

    #@95
    .line 957
    const-string/jumbo v1, ",startTimeMode="

    #@98
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v0

    #@9c
    .line 957
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    #@9e
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@a1
    move-result-object v0

    #@a2
    .line 958
    const-string/jumbo v1, ",endMode="

    #@a5
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a8
    move-result-object v0

    #@a9
    .line 958
    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    #@ab
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v0

    #@af
    .line 959
    const-string/jumbo v1, ",endMonth="

    #@b2
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v0

    #@b6
    .line 959
    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    #@b8
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v0

    #@bc
    .line 960
    const-string/jumbo v1, ",endDay="

    #@bf
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v0

    #@c3
    .line 960
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    #@c5
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c8
    move-result-object v0

    #@c9
    .line 961
    const-string/jumbo v1, ",endDayOfWeek="

    #@cc
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@cf
    move-result-object v0

    #@d0
    .line 961
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    #@d2
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@d5
    move-result-object v0

    #@d6
    .line 962
    const-string/jumbo v1, ",endTime="

    #@d9
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@dc
    move-result-object v0

    #@dd
    .line 962
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    #@df
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@e2
    move-result-object v0

    #@e3
    .line 963
    const-string/jumbo v1, ",endTimeMode="

    #@e6
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@e9
    move-result-object v0

    #@ea
    .line 963
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    #@ec
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ef
    move-result-object v0

    #@f0
    .line 963
    const/16 v1, 0x5d

    #@f2
    .line 946
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@f5
    move-result-object v0

    #@f6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f9
    move-result-object v0

    #@fa
    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    #@0
    .prologue
    .line 838
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    #@2
    return v0
.end method
