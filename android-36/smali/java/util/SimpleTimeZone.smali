.class public Ljava/util/SimpleTimeZone;
.super Ljava/util/TimeZone;
.source "SimpleTimeZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/SimpleTimeZone$Cache;
    }
.end annotation


# static fields
.field private static final greylist-max-o DOM_MODE:I = 0x1

.field private static final greylist-max-o DOW_GE_DOM_MODE:I = 0x3

.field private static final greylist-max-o DOW_IN_MONTH_MODE:I = 0x2

.field private static final greylist-max-o DOW_LE_DOM_MODE:I = 0x4

.field private static final blacklist MAX_RULE_NUM:I = 0x6

.field public static final whitelist test-api STANDARD_TIME:I = 0x1

.field public static final whitelist test-api UTC_TIME:I = 0x2

.field public static final whitelist test-api WALL_TIME:I = 0x0

.field static final greylist-max-o currentSerialVersion:I = 0x2

.field private static final greylist-max-o gcal:Lsun/util/calendar/Gregorian;

.field private static final greylist-max-o millisPerDay:I = 0x5265c00

.field private static final greylist-max-o millisPerHour:I = 0x36ee80

.field static final whitelist serialVersionUID:J = -0x598a29f2ea10a5aL

.field private static final greylist-max-o staticLeapMonthLength:[B

.field private static final greylist-max-o staticMonthLength:[B


# instance fields
.field private volatile transient blacklist cache:Ljava/util/SimpleTimeZone$Cache;

.field private greylist-max-o dstSavings:I

.field private greylist-max-o endDay:I

.field private greylist-max-o endDayOfWeek:I

.field private greylist-max-o endMode:I

.field private greylist-max-o endMonth:I

.field private greylist-max-o endTime:I

.field private greylist-max-o endTimeMode:I

.field private final greylist-max-o monthLength:[B

.field private greylist-max-o rawOffset:I

.field private greylist-max-o serialVersionOnStream:I

.field private greylist-max-o startDay:I

.field private greylist-max-o startDayOfWeek:I

.field private greylist-max-o startMode:I

.field private greylist-max-o startMonth:I

.field private greylist-max-o startTime:I

.field private greylist-max-o startTimeMode:I

.field private greylist-max-o startYear:I

.field private greylist-max-o useDaylight:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1110
    const/16 v0, 0xc

    new-array v1, v0, [B

    fill-array-data v1, :array_18

    sput-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    .line 1111
    new-array v0, v0, [B

    fill-array-data v0, :array_22

    sput-object v0, Ljava/util/SimpleTimeZone;->staticLeapMonthLength:[B

    .line 1181
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    return-void

    nop

    :array_18
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

    :array_22
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

.method public constructor whitelist test-api <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "rawOffset"    # I
    .param p2, "ID"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 1096
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1109
    sget-object v0, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v0, p0, Ljava/util/SimpleTimeZone;->monthLength:[B

    .line 1270
    const/4 v0, 0x2

    iput v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 161
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 162
    invoke-virtual {p0, p2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 163
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 164
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;IIIIIIII)V
    .registers 25
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

    .line 219
    const/4 v12, 0x0

    const v13, 0x36ee80

    const/4 v7, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    .line 223
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;IIIIIIIII)V
    .registers 26
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

    .line 278
    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p11

    invoke-direct/range {v0 .. v13}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;IIIIIIIIIII)V

    .line 282
    return-void
.end method

.method public constructor whitelist test-api <init>(ILjava/lang/String;IIIIIIIIIII)V
    .registers 30
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

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, p13

    invoke-direct {v0}, Ljava/util/TimeZone;-><init>()V

    .line 1096
    const/4 v2, 0x0

    iput-boolean v2, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1109
    sget-object v2, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iput-object v2, v0, Ljava/util/SimpleTimeZone;->monthLength:[B

    .line 1270
    const/4 v2, 0x2

    iput v2, v0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 336
    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/util/SimpleTimeZone;->setID(Ljava/lang/String;)V

    .line 337
    move/from16 v3, p1

    iput v3, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 338
    move/from16 v4, p3

    iput v4, v0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 339
    move/from16 v5, p4

    iput v5, v0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 340
    move/from16 v6, p5

    iput v6, v0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 341
    move/from16 v7, p6

    iput v7, v0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 342
    move/from16 v8, p7

    iput v8, v0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 343
    move/from16 v9, p8

    iput v9, v0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 344
    move/from16 v10, p9

    iput v10, v0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 345
    move/from16 v11, p10

    iput v11, v0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 346
    move/from16 v12, p11

    iput v12, v0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 347
    move/from16 v13, p12

    iput v13, v0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 348
    iput v1, v0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 351
    invoke-direct {v0}, Ljava/util/SimpleTimeZone;->decodeRules()V

    .line 352
    if-lez v1, :cond_4a

    .line 355
    return-void

    .line 353
    :cond_4a
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Illegal daylight saving value: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method private greylist-max-o decodeEndRule()V
    .registers 5

    .line 1420
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1421
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_f6

    .line 1422
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ltz v0, :cond_db

    iget v0, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    const/16 v2, 0xb

    if-gt v0, v2, :cond_db

    .line 1426
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-ltz v0, :cond_c0

    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    const v2, 0x5265c00

    if-gt v0, v2, :cond_c0

    .line 1430
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v2, 0x2

    if-nez v0, :cond_2f

    .line 1431
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_50

    .line 1433
    :cond_2f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-lez v0, :cond_36

    .line 1434
    iput v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_4b

    .line 1436
    :cond_36
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1437
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lez v0, :cond_43

    .line 1438
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    goto :goto_4b

    .line 1440
    :cond_43
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1441
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    .line 1444
    :goto_4b
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    const/4 v3, 0x7

    if-gt v0, v3, :cond_a5

    .line 1449
    :goto_50
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v0, v2, :cond_7b

    .line 1450
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_60

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_60

    goto/16 :goto_f6

    .line 1451
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end day of week in month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1454
    :cond_7b
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v1, :cond_8a

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_8a

    goto :goto_f6

    .line 1455
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1445
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1427
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1423
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal end month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1459
    :cond_f6
    :goto_f6
    return-void
.end method

.method private greylist-max-o decodeRules()V
    .registers 1

    .line 1344
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    .line 1345
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    .line 1346
    return-void
.end method

.method private greylist-max-o decodeStartRule()V
    .registers 5

    .line 1373
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eqz v0, :cond_b

    move v0, v1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    .line 1374
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eqz v0, :cond_f6

    .line 1375
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ltz v0, :cond_db

    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    const/16 v2, 0xb

    if-gt v0, v2, :cond_db

    .line 1379
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-ltz v0, :cond_c0

    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const v2, 0x5265c00

    if-gt v0, v2, :cond_c0

    .line 1383
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v2, 0x2

    if-nez v0, :cond_2f

    .line 1384
    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_50

    .line 1386
    :cond_2f
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-lez v0, :cond_36

    .line 1387
    iput v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_4b

    .line 1389
    :cond_36
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1390
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lez v0, :cond_43

    .line 1391
    const/4 v0, 0x3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    goto :goto_4b

    .line 1393
    :cond_43
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    neg-int v0, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1394
    const/4 v0, 0x4

    iput v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1397
    :goto_4b
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    const/4 v3, 0x7

    if-gt v0, v3, :cond_a5

    .line 1402
    :goto_50
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v0, v2, :cond_7b

    .line 1403
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, -0x5

    if-lt v0, v1, :cond_60

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_60

    goto/16 :goto_f6

    .line 1404
    :cond_60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start day of week in month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1407
    :cond_7b
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v1, :cond_8a

    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    sget-object v1, Ljava/util/SimpleTimeZone;->staticMonthLength:[B

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    aget-byte v1, v1, v2

    if-gt v0, v1, :cond_8a

    goto :goto_f6

    .line 1408
    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start day "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_a5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start day of week "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1380
    :cond_c0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1376
    :cond_db
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal start month "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_f6
    :goto_f6
    return-void
.end method

.method private greylist-max-o getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .registers 14
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    .line 724
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 725
    .local v0, "time":I
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_a

    .line 726
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v0, v1

    .line 728
    :cond_a
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-nez v1, :cond_13

    .line 729
    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    sub-int/2addr v0, v1

    move v9, v0

    goto :goto_14

    .line 728
    :cond_13
    move v9, v0

    .line 731
    .end local v0    # "time":I
    .local v9, "time":I
    :goto_14
    iget v4, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v8, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local p3    # "year":I
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    .local v3, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .local v5, "year":I
    invoke-direct/range {v1 .. v9}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method private greylist-max-o getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I
    .registers 18
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I
    .param p4, "time"    # J

    .line 673
    move v0, p3

    iget-object v1, p0, Ljava/util/SimpleTimeZone;->cache:Ljava/util/SimpleTimeZone$Cache;

    .line 674
    .local v1, "cache":Ljava/util/SimpleTimeZone$Cache;
    if-eqz v1, :cond_21

    .line 675
    iget-wide v2, v1, Ljava/util/SimpleTimeZone$Cache;->start:J

    cmp-long v2, p4, v2

    if-ltz v2, :cond_17

    iget-wide v2, v1, Ljava/util/SimpleTimeZone$Cache;->end:J

    cmp-long v2, p4, v2

    if-gez v2, :cond_17

    .line 676
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    return v2

    .line 678
    :cond_17
    int-to-long v2, v0

    iget-wide v4, v1, Ljava/util/SimpleTimeZone$Cache;->year:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    .line 679
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v2

    .line 683
    :cond_21
    invoke-direct/range {p0 .. p3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v6

    .line 684
    .local v6, "start":J
    invoke-direct/range {p0 .. p3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v8

    .line 685
    .local v8, "end":J
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 686
    .local v2, "offset":I
    cmp-long v3, v6, v8

    if-gtz v3, :cond_43

    .line 687
    cmp-long v3, p4, v6

    if-ltz v3, :cond_3a

    cmp-long v3, p4, v8

    if-gez v3, :cond_3a

    .line 688
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    .line 690
    :cond_3a
    new-instance v3, Ljava/util/SimpleTimeZone$Cache;

    int-to-long v4, v0

    invoke-direct/range {v3 .. v9}, Ljava/util/SimpleTimeZone$Cache;-><init>(JJJ)V

    iput-object v3, p0, Ljava/util/SimpleTimeZone;->cache:Ljava/util/SimpleTimeZone$Cache;

    goto :goto_77

    .line 692
    :cond_43
    cmp-long v3, p4, v8

    if-gez v3, :cond_55

    .line 695
    add-int/lit8 v3, v0, -0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v6

    .line 696
    cmp-long v3, p4, v6

    if-ltz v3, :cond_66

    .line 697
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    goto :goto_66

    .line 699
    :cond_55
    cmp-long v3, p4, v6

    if-ltz v3, :cond_66

    .line 702
    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, p1, p2, v3}, Ljava/util/SimpleTimeZone;->getEnd(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J

    move-result-wide v8

    .line 703
    cmp-long v3, p4, v8

    if-gez v3, :cond_66

    .line 704
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v3

    .line 707
    :cond_66
    :goto_66
    cmp-long v3, v6, v8

    if-gtz v3, :cond_77

    .line 708
    new-instance v3, Ljava/util/SimpleTimeZone$Cache;

    iget v4, p0, Ljava/util/SimpleTimeZone;->startYear:I

    int-to-long v4, v4

    const-wide/16 v10, 0x1

    sub-long/2addr v4, v10

    invoke-direct/range {v3 .. v9}, Ljava/util/SimpleTimeZone$Cache;-><init>(JJJ)V

    iput-object v3, p0, Ljava/util/SimpleTimeZone;->cache:Ljava/util/SimpleTimeZone$Cache;

    .line 711
    :cond_77
    :goto_77
    return v2
.end method

.method private greylist-max-o getStart(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;I)J
    .registers 14
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "year"    # I

    .line 715
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 716
    .local v0, "time":I
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    .line 717
    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int/2addr v0, v1

    move v9, v0

    goto :goto_d

    .line 716
    :cond_c
    move v9, v0

    .line 719
    .end local v0    # "time":I
    .local v9, "time":I
    :goto_d
    iget v4, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v6, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v7, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v8, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    .end local p1    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local p2    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local p3    # "year":I
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    .local v3, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .local v5, "year":I
    invoke-direct/range {v1 .. v9}, Ljava/util/SimpleTimeZone;->getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J

    move-result-wide p1

    return-wide p1
.end method

.method private greylist-max-o getTransition(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IIIIII)J
    .registers 13
    .param p1, "cal"    # Lsun/util/calendar/BaseCalendar;
    .param p2, "cdate"    # Lsun/util/calendar/BaseCalendar$Date;
    .param p3, "mode"    # I
    .param p4, "year"    # I
    .param p5, "month"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "dayOfWeek"    # I
    .param p8, "timeOfDay"    # I

    .line 738
    invoke-virtual {p2, p4}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 739
    add-int/lit8 v0, p5, 0x1

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 740
    const/4 v0, 0x1

    packed-switch p3, :pswitch_data_42

    goto :goto_3b

    .line 754
    :pswitch_d
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 755
    const/4 v0, -0x1

    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    goto :goto_3b

    .line 750
    :pswitch_19
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 751
    invoke-virtual {p1, v0, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .line 752
    goto :goto_3b

    .line 743
    :pswitch_24
    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 744
    if-gez p6, :cond_30

    .line 745
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v0

    invoke-virtual {p2, v0}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 747
    :cond_30
    invoke-virtual {p1, p6, p7, p2}, Lsun/util/calendar/BaseCalendar;->getNthDayOfWeek(IILsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    move-object p2, v0

    check-cast p2, Lsun/util/calendar/BaseCalendar$Date;

    .line 748
    goto :goto_3b

    .line 741
    :pswitch_38
    invoke-virtual {p2, p6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 758
    :goto_3b
    invoke-virtual {p1, p2}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    int-to-long v2, p8

    add-long/2addr v0, v2

    return-wide v0

    :pswitch_data_42
    .packed-switch 0x1
        :pswitch_38
        :pswitch_24
        :pswitch_19
        :pswitch_d
    .end packed-switch
.end method

.method private greylist-max-o invalidateCache()V
    .registers 2

    .line 1276
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/SimpleTimeZone;->cache:Ljava/util/SimpleTimeZone$Cache;

    .line 1277
    return-void
.end method

.method private greylist-max-o makeRulesCompatible()V
    .registers 6

    .line 1472
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMode:I

    const/4 v1, -0x1

    const/16 v2, 0x1e

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_cc

    :pswitch_9
    goto :goto_2f

    .line 1487
    :pswitch_a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-lt v0, v2, :cond_11

    .line 1488
    iput v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_2f

    .line 1490
    :cond_11
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_2f

    .line 1481
    :pswitch_19
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    if-eq v0, v3, :cond_2f

    .line 1482
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    goto :goto_2f

    .line 1474
    :pswitch_25
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1475
    iput v3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1476
    nop

    .line 1495
    :cond_2f
    :goto_2f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endMode:I

    packed-switch v0, :pswitch_data_d8

    :pswitch_34
    goto :goto_5a

    .line 1510
    :pswitch_35
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-lt v0, v2, :cond_3c

    .line 1511
    iput v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_5a

    .line 1513
    :cond_3c
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_5a

    .line 1504
    :pswitch_44
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    if-eq v0, v3, :cond_5a

    .line 1505
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    goto :goto_5a

    .line 1497
    :pswitch_50
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    div-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1498
    iput v3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1499
    nop

    .line 1528
    :cond_5a
    :goto_5a
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    packed-switch v0, :pswitch_data_e4

    goto :goto_67

    .line 1529
    :pswitch_60
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1531
    :goto_67
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    const v1, 0x5265c00

    if-gez v0, :cond_7d

    .line 1532
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1533
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_67

    .line 1535
    :cond_7d
    :goto_7d
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    if-lt v0, v1, :cond_8e

    .line 1536
    iget v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1537
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    goto :goto_7d

    .line 1540
    :cond_8e
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    packed-switch v0, :pswitch_data_ea

    goto :goto_a6

    .line 1541
    :pswitch_94
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v4, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v2, v4

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    goto :goto_a6

    .line 1542
    :pswitch_9f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v2

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1544
    :goto_a6
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-gez v0, :cond_b9

    .line 1545
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1546
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_a6

    .line 1548
    :cond_b9
    :goto_b9
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    if-lt v0, v1, :cond_ca

    .line 1549
    iget v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1550
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    rem-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v3

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    goto :goto_b9

    .line 1552
    :cond_ca
    return-void

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_25
        :pswitch_9
        :pswitch_19
        :pswitch_a
    .end packed-switch

    :pswitch_data_d8
    .packed-switch 0x1
        :pswitch_50
        :pswitch_34
        :pswitch_44
        :pswitch_35
    .end packed-switch

    :pswitch_data_e4
    .packed-switch 0x2
        :pswitch_60
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_9f
        :pswitch_94
    .end packed-switch
.end method

.method private greylist-max-o packRules()[B
    .registers 4

    .line 1560
    const/4 v0, 0x6

    new-array v0, v0, [B

    .line 1561
    .local v0, "rules":[B
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    int-to-byte v1, v1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 1562
    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 1563
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 1564
    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 1567
    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 1568
    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 1570
    return-object v0
.end method

.method private greylist-max-o packTimes()[I
    .registers 4

    .line 1596
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1597
    .local v0, "times":[I
    const/4 v1, 0x0

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    aput v2, v0, v1

    .line 1598
    const/4 v1, 0x1

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    aput v2, v0, v1

    .line 1599
    return-object v0
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1662
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1664
    iget v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1f

    .line 1668
    iget v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-nez v0, :cond_f

    .line 1669
    iput v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1671
    :cond_f
    iget v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-nez v0, :cond_15

    .line 1672
    iput v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1677
    :cond_15
    iput v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iput v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    .line 1678
    const v0, 0x36ee80

    iput v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_2f

    .line 1683
    :cond_1f
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 1684
    .local v0, "length":I
    const/4 v2, 0x6

    if-gt v0, v2, :cond_3f

    .line 1685
    new-array v2, v0, [B

    .line 1686
    .local v2, "rules":[B
    invoke-virtual {p1, v2}, Ljava/io/ObjectInputStream;->readFully([B)V

    .line 1687
    invoke-direct {p0, v2}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    .line 1688
    .end local v2    # "rules":[B
    nop

    .line 1693
    .end local v0    # "length":I
    :goto_2f
    iget v0, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    if-lt v0, v1, :cond_3c

    .line 1694
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 1695
    .local v0, "times":[I
    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    .line 1698
    .end local v0    # "times":[I
    :cond_3c
    iput v1, p0, Ljava/util/SimpleTimeZone;->serialVersionOnStream:I

    .line 1699
    return-void

    .line 1689
    .local v0, "length":I
    :cond_3f
    new-instance v1, Ljava/io/InvalidObjectException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Too many rules: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o unpackRules([B)V
    .registers 4
    .param p1, "rules"    # [B

    .line 1579
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 1580
    const/4 v0, 0x1

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 1581
    const/4 v0, 0x2

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 1582
    const/4 v0, 0x3

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 1585
    array-length v0, p1

    const/4 v1, 0x6

    if-lt v0, v1, :cond_22

    .line 1586
    const/4 v0, 0x4

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 1587
    const/4 v0, 0x5

    aget-byte v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 1589
    :cond_22
    return-void
.end method

.method private greylist-max-o unpackTimes([I)V
    .registers 3
    .param p1, "times"    # [I

    .line 1607
    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 1608
    const/4 v0, 0x1

    aget v0, p1, v0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 1609
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1632
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packRules()[B

    move-result-object v0

    .line 1633
    .local v0, "rules":[B
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->packTimes()[I

    move-result-object v1

    .line 1636
    .local v1, "times":[I
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->makeRulesCompatible()V

    .line 1639
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 1642
    array-length v2, v0

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 1643
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    .line 1644
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1648
    invoke-direct {p0, v0}, Ljava/util/SimpleTimeZone;->unpackRules([B)V

    .line 1649
    invoke-direct {p0, v1}, Ljava/util/SimpleTimeZone;->unpackTimes([I)V

    .line 1650
    return-void
.end method


# virtual methods
.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 2

    .line 860
    invoke-super {p0}, Ljava/util/TimeZone;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 881
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 882
    return v0

    .line 887
    :cond_4
    instance-of v1, p1, Ljava/util/SimpleTimeZone;

    if-eqz v1, :cond_20

    .line 885
    move-object v1, p1

    check-cast v1, Ljava/util/SimpleTimeZone;

    .line 886
    .local v1, "that":Ljava/util/SimpleTimeZone;
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 887
    invoke-virtual {p0, v1}, Ljava/util/SimpleTimeZone;->hasSameRules(Ljava/util/TimeZone;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    .end local v1    # "that":Ljava/util/SimpleTimeZone;
    :cond_20
    const/4 v0, 0x0

    .line 885
    :goto_21
    return v0
.end method

.method public whitelist test-api getDSTSavings()I
    .registers 2

    .line 813
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v0, :cond_7

    iget v0, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public whitelist test-api getOffset(IIIIII)I
    .registers 23
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "dayOfWeek"    # I
    .param p6, "millis"    # I

    .line 607
    move-object/from16 v0, p0

    move/from16 v6, p1

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    const/4 v1, 0x1

    if-eq v6, v1, :cond_29

    if-nez v6, :cond_10

    goto :goto_29

    .line 608
    :cond_10
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal era "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_29
    :goto_29
    move/from16 v2, p2

    .line 612
    .local v2, "y":I
    if-nez v6, :cond_2f

    .line 614
    rsub-int/lit8 v2, v2, 0x1

    .line 622
    :cond_2f
    const v3, 0x116bd2d2

    if-lt v2, v3, :cond_3a

    .line 623
    rem-int/lit16 v3, v2, 0xaf0

    add-int/lit16 v2, v3, 0xaf0

    move v3, v2

    goto :goto_4a

    .line 624
    :cond_3a
    const v3, -0x116babfe

    if-gt v2, v3, :cond_49

    .line 628
    int-to-long v3, v2

    const-wide/16 v10, 0x1c

    invoke-static {v3, v4, v10, v11}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v3

    long-to-int v2, v3

    move v3, v2

    goto :goto_4a

    .line 624
    :cond_49
    move v3, v2

    .line 632
    .end local v2    # "y":I
    .local v3, "y":I
    :goto_4a
    add-int/lit8 v10, p3, 0x1

    .line 635
    .local v10, "m":I
    sget-object v2, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    .line 636
    .local v2, "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v4, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v4}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v4

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 637
    .local v4, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v4, v3, v10, v7}, Lsun/util/calendar/BaseCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 638
    invoke-virtual {v2, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 639
    .local v11, "time":J
    iget v5, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int v5, v9, v5

    int-to-long v13, v5

    add-long/2addr v11, v13

    .line 647
    const-wide v13, -0xb1d069b5400L

    cmp-long v5, v11, v13

    if-gez v5, :cond_90

    .line 648
    const-string v5, "julian"

    invoke-static {v5}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lsun/util/calendar/BaseCalendar;

    .line 649
    sget-object v5, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v2, v5}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    move-object v4, v5

    check-cast v4, Lsun/util/calendar/BaseCalendar$Date;

    .line 650
    invoke-virtual {v4, v3, v10, v7}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedDate(III)Lsun/util/calendar/BaseCalendar$Date;

    .line 651
    invoke-virtual {v2, v4}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v13

    move-object v15, v2

    .end local v2    # "cal":Lsun/util/calendar/BaseCalendar;
    .local v15, "cal":Lsun/util/calendar/BaseCalendar;
    int-to-long v1, v9

    add-long/2addr v13, v1

    iget v1, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v1, v1

    sub-long v11, v13, v1

    move-object v1, v15

    move-object v2, v4

    goto :goto_92

    .line 647
    .end local v15    # "cal":Lsun/util/calendar/BaseCalendar;
    .restart local v2    # "cal":Lsun/util/calendar/BaseCalendar;
    :cond_90
    move-object v1, v2

    move-object v2, v4

    .line 654
    .end local v4    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .local v1, "cal":Lsun/util/calendar/BaseCalendar;
    .local v2, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    :goto_92
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v4

    if-ne v4, v3, :cond_d4

    .line 655
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v4

    if-ne v4, v10, :cond_d0

    .line 656
    invoke-virtual {v2}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    if-ne v4, v7, :cond_cc

    const/4 v5, 0x1

    if-lt v8, v5, :cond_cc

    const/4 v4, 0x7

    if-gt v8, v4, :cond_cc

    if-ltz v9, :cond_cc

    const v4, 0x5265c00

    if-ge v9, v4, :cond_cc

    .line 665
    iget-boolean v4, v0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v4, :cond_c6

    iget v4, v0, Ljava/util/SimpleTimeZone;->startYear:I

    move/from16 v13, p2

    if-lt v13, v4, :cond_c8

    const/4 v5, 0x1

    if-eq v6, v5, :cond_c0

    move-wide v4, v11

    goto :goto_c9

    .line 669
    :cond_c0
    move-wide v4, v11

    .end local v11    # "time":J
    .local v4, "time":J
    invoke-direct/range {v0 .. v5}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v11

    return v11

    .line 665
    .end local v4    # "time":J
    .restart local v11    # "time":J
    :cond_c6
    move/from16 v13, p2

    :cond_c8
    move-wide v4, v11

    .line 666
    .end local v11    # "time":J
    .restart local v4    # "time":J
    :goto_c9
    iget v11, v0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v11

    .line 656
    .end local v4    # "time":J
    .restart local v11    # "time":J
    :cond_cc
    move/from16 v13, p2

    move-wide v4, v11

    .end local v11    # "time":J
    .restart local v4    # "time":J
    goto :goto_d7

    .line 655
    .end local v4    # "time":J
    .restart local v11    # "time":J
    :cond_d0
    move/from16 v13, p2

    move-wide v4, v11

    .end local v11    # "time":J
    .restart local v4    # "time":J
    goto :goto_d7

    .line 654
    .end local v4    # "time":J
    .restart local v11    # "time":J
    :cond_d4
    move/from16 v13, p2

    move-wide v4, v11

    .line 662
    .end local v11    # "time":J
    .restart local v4    # "time":J
    :goto_d7
    new-instance v11, Ljava/lang/IllegalArgumentException;

    invoke-direct {v11}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v11
.end method

.method public whitelist test-api getOffset(J)I
    .registers 4
    .param p1, "date"    # J

    .line 540
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/SimpleTimeZone;->getOffsets(J[I)I

    move-result v0

    return v0
.end method

.method greylist-max-o getOffsets(J[I)I
    .registers 14
    .param p1, "date"    # J
    .param p3, "offsets"    # [I

    .line 547
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 550
    .local v0, "offset":I
    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_57

    .line 551
    iget-object v1, p0, Ljava/util/SimpleTimeZone;->cache:Ljava/util/SimpleTimeZone$Cache;

    .line 552
    .local v1, "cache":Ljava/util/SimpleTimeZone$Cache;
    if-eqz v1, :cond_1d

    .line 553
    iget-wide v3, v1, Ljava/util/SimpleTimeZone$Cache;->start:J

    cmp-long v3, p1, v3

    if-ltz v3, :cond_1d

    iget-wide v3, v1, Ljava/util/SimpleTimeZone$Cache;->end:J

    cmp-long v3, p1, v3

    if-gez v3, :cond_1d

    .line 554
    iget v3, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    add-int/2addr v0, v3

    .line 555
    move-object v4, p0

    move-wide v8, p1

    goto :goto_59

    .line 558
    :cond_1d
    const-wide v3, -0xb1d069b5400L

    cmp-long v3, p1, v3

    if-ltz v3, :cond_29

    .line 559
    sget-object v3, Ljava/util/SimpleTimeZone;->gcal:Lsun/util/calendar/Gregorian;

    goto :goto_31

    :cond_29
    const-string v3, "julian"

    invoke-static {v3}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/BaseCalendar;

    :goto_31
    move-object v5, v3

    .line 560
    .local v5, "cal":Lsun/util/calendar/BaseCalendar;
    sget-object v3, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v5, v3}, Lsun/util/calendar/BaseCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Lsun/util/calendar/BaseCalendar$Date;

    .line 562
    .local v6, "cdate":Lsun/util/calendar/BaseCalendar$Date;
    iget v3, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    int-to-long v3, v3

    add-long/2addr v3, p1

    invoke-virtual {v5, v3, v4, v6}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    .line 563
    invoke-virtual {v6}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v7

    .line 564
    .local v7, "year":I
    iget v3, p0, Ljava/util/SimpleTimeZone;->startYear:I

    if-lt v7, v3, :cond_54

    .line 566
    invoke-virtual {v6, v2, v2, v2, v2}, Lsun/util/calendar/BaseCalendar$Date;->setTimeOfDay(IIII)Lsun/util/calendar/CalendarDate;

    .line 567
    move-object v4, p0

    move-wide v8, p1

    .end local p1    # "date":J
    .local v8, "date":J
    invoke-direct/range {v4 .. v9}, Ljava/util/SimpleTimeZone;->getOffset(Lsun/util/calendar/BaseCalendar;Lsun/util/calendar/BaseCalendar$Date;IJ)I

    move-result v0

    goto :goto_59

    .line 564
    .end local v8    # "date":J
    .restart local p1    # "date":J
    :cond_54
    move-object v4, p0

    move-wide v8, p1

    .end local p1    # "date":J
    .restart local v8    # "date":J
    goto :goto_59

    .line 550
    .end local v1    # "cache":Ljava/util/SimpleTimeZone$Cache;
    .end local v5    # "cal":Lsun/util/calendar/BaseCalendar;
    .end local v6    # "cdate":Lsun/util/calendar/BaseCalendar$Date;
    .end local v7    # "year":I
    .end local v8    # "date":J
    .restart local p1    # "date":J
    :cond_57
    move-object v4, p0

    move-wide v8, p1

    .line 571
    .end local p1    # "date":J
    .restart local v8    # "date":J
    :goto_59
    if-eqz p3, :cond_66

    .line 572
    iget p1, v4, Ljava/util/SimpleTimeZone;->rawOffset:I

    aput p1, p3, v2

    .line 573
    iget p1, v4, Ljava/util/SimpleTimeZone;->rawOffset:I

    sub-int p1, v0, p1

    const/4 p2, 0x1

    aput p1, p3, p2

    .line 575
    :cond_66
    return v0
.end method

.method public whitelist test-api getRawOffset()I
    .registers 2

    .line 770
    iget v0, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    return v0
.end method

.method public whitelist test-api hasSameRules(Ljava/util/TimeZone;)Z
    .registers 6
    .param p1, "other"    # Ljava/util/TimeZone;

    .line 898
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 899
    return v0

    .line 904
    :cond_4
    instance-of v1, p1, Ljava/util/SimpleTimeZone;

    if-eqz v1, :cond_70

    .line 901
    move-object v1, p1

    check-cast v1, Ljava/util/SimpleTimeZone;

    .local v1, "that":Ljava/util/SimpleTimeZone;
    iget v2, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-ne v2, v3, :cond_70

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    iget-boolean v3, v1, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-ne v2, v3, :cond_70

    iget-boolean v2, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    if-eqz v2, :cond_6f

    iget v2, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->dstSavings:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMode:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startMonth:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDay:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startTime:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startTimeMode:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMode:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endMonth:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDay:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTime:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endTime:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->endTimeMode:I

    if-ne v2, v3, :cond_70

    iget v2, p0, Ljava/util/SimpleTimeZone;->startYear:I

    iget v3, v1, Ljava/util/SimpleTimeZone;->startYear:I

    if-ne v2, v3, :cond_70

    :cond_6f
    goto :goto_71

    .end local v1    # "that":Ljava/util/SimpleTimeZone;
    :cond_70
    const/4 v0, 0x0

    :goto_71
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 869
    iget v0, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    xor-int/2addr v0, v1

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api inDaylightTime(Ljava/util/Date;)Z
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 851
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/SimpleTimeZone;->getOffset(J)I

    move-result v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    if-eq v0, v1, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public whitelist test-api observesDaylightTime()Z
    .registers 2

    .line 837
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->useDaylightTime()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api setDSTSavings(I)V
    .registers 5
    .param p1, "millisSavedDuringDST"    # I

    .line 793
    if-lez p1, :cond_5

    .line 797
    iput p1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    .line 798
    return-void

    .line 794
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal daylight saving value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api setEndRule(III)V
    .registers 5
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endTime"    # I

    .line 496
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 497
    return-void
.end method

.method public whitelist test-api setEndRule(IIII)V
    .registers 6
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I

    .line 469
    iput p1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    .line 470
    iput p2, p0, Ljava/util/SimpleTimeZone;->endDay:I

    .line 471
    iput p3, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    .line 472
    iput p4, p0, Ljava/util/SimpleTimeZone;->endTime:I

    .line 473
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    .line 474
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeEndRule()V

    .line 475
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 476
    return-void
.end method

.method public whitelist test-api setEndRule(IIIIZ)V
    .registers 8
    .param p1, "endMonth"    # I
    .param p2, "endDay"    # I
    .param p3, "endDayOfWeek"    # I
    .param p4, "endTime"    # I
    .param p5, "after"    # Z

    .line 521
    if-eqz p5, :cond_7

    .line 522
    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    goto :goto_c

    .line 524
    :cond_7
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setEndRule(IIII)V

    .line 526
    :goto_c
    return-void
.end method

.method public whitelist test-api setRawOffset(I)V
    .registers 2
    .param p1, "offsetMillis"    # I

    .line 780
    iput p1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    .line 781
    return-void
.end method

.method public whitelist test-api setStartRule(III)V
    .registers 5
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startTime"    # I

    .line 414
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 415
    return-void
.end method

.method public whitelist test-api setStartRule(IIII)V
    .registers 6
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I

    .line 388
    iput p1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    .line 389
    iput p2, p0, Ljava/util/SimpleTimeZone;->startDay:I

    .line 390
    iput p3, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    .line 391
    iput p4, p0, Ljava/util/SimpleTimeZone;->startTime:I

    .line 392
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    .line 393
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->decodeStartRule()V

    .line 394
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 395
    return-void
.end method

.method public whitelist test-api setStartRule(IIIIZ)V
    .registers 8
    .param p1, "startMonth"    # I
    .param p2, "startDay"    # I
    .param p3, "startDayOfWeek"    # I
    .param p4, "startTime"    # I
    .param p5, "after"    # Z

    .line 440
    if-eqz p5, :cond_7

    .line 441
    neg-int v0, p3

    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    goto :goto_c

    .line 443
    :cond_7
    neg-int v0, p2

    neg-int v1, p3

    invoke-virtual {p0, p1, v0, v1, p4}, Ljava/util/SimpleTimeZone;->setStartRule(IIII)V

    .line 445
    :goto_c
    return-void
.end method

.method public whitelist test-api setStartYear(I)V
    .registers 2
    .param p1, "year"    # I

    .line 364
    iput p1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    .line 365
    invoke-direct {p0}, Ljava/util/SimpleTimeZone;->invalidateCache()V

    .line 366
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "[id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 929
    invoke-virtual {p0}, Ljava/util/SimpleTimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->rawOffset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",dstSavings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->dstSavings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",useDaylight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startYear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startYear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",startTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->startTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endMonth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endMonth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endDay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endDayOfWeek="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endDayOfWeek:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",endTimeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ljava/util/SimpleTimeZone;->endTimeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 928
    return-object v0
.end method

.method public whitelist test-api useDaylightTime()Z
    .registers 2

    .line 823
    iget-boolean v0, p0, Ljava/util/SimpleTimeZone;->useDaylight:Z

    return v0
.end method
