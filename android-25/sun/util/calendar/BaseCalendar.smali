.class public abstract Lsun/util/calendar/BaseCalendar;
.super Lsun/util/calendar/AbstractCalendar;
.source "BaseCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/BaseCalendar$Date;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field static final ACCUMULATED_DAYS_IN_MONTH:[I

.field static final ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

.field public static final APRIL:I = 0x4

.field public static final AUGUST:I = 0x8

.field private static final BASE_YEAR:I = 0x7b2

.field static final DAYS_IN_MONTH:[I

.field public static final DECEMBER:I = 0xc

.field public static final FEBRUARY:I = 0x2

.field private static final FIXED_DATES:[I

.field public static final FRIDAY:I = 0x6

.field public static final JANUARY:I = 0x1

.field public static final JULY:I = 0x7

.field public static final JUNE:I = 0x6

.field public static final MARCH:I = 0x3

.field public static final MAY:I = 0x5

.field public static final MONDAY:I = 0x2

.field public static final NOVEMBER:I = 0xb

.field public static final OCTOBER:I = 0xa

.field public static final SATURDAY:I = 0x7

.field public static final SEPTEMBER:I = 0x9

.field public static final SUNDAY:I = 0x1

.field public static final THURSDAY:I = 0x5

.field public static final TUESDAY:I = 0x3

.field public static final WEDNESDAY:I = 0x4


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xd

    #@2
    const-class v0, Lsun/util/calendar/BaseCalendar;

    #@4
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    sput-boolean v0, Lsun/util/calendar/BaseCalendar;->-assertionsDisabled:Z

    #@d
    .line 71
    const/16 v0, 0x46

    #@f
    new-array v0, v0, [I

    #@11
    fill-array-data v0, :array_0

    #@14
    sput-object v0, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    #@16
    .line 313
    new-array v0, v1, [I

    #@18
    fill-array-data v0, :array_1

    #@1b
    .line 311
    sput-object v0, Lsun/util/calendar/BaseCalendar;->DAYS_IN_MONTH:[I

    #@1d
    .line 316
    new-array v0, v1, [I

    #@1f
    fill-array-data v0, :array_2

    #@22
    .line 314
    sput-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    #@24
    .line 320
    new-array v0, v1, [I

    #@26
    fill-array-data v0, :array_3

    #@29
    .line 318
    sput-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

    #@2b
    .line 40
    return-void

    #@2c
    :cond_0
    const/4 v0, 0x1

    #@2d
    goto :goto_0

    #@2e
    .line 71
    :array_0
    .array-data 4
        0xaf93b
        0xafaa8
        0xafc15
        0xafd83
        0xafef0
        0xb005d
        0xb01ca
        0xb0338
        0xb04a5
        0xb0612
        0xb077f
        0xb08ed
        0xb0a5a
        0xb0bc7
        0xb0d34
        0xb0ea2
        0xb100f
        0xb117c
        0xb12e9
        0xb1457
        0xb15c4
        0xb1731
        0xb189e
        0xb1a0c
        0xb1b79
        0xb1ce6
        0xb1e53
        0xb1fc1
        0xb212e
        0xb229b
        0xb2408
        0xb2576
        0xb26e3
        0xb2850
        0xb29bd
        0xb2b2b
        0xb2c98
        0xb2e05
        0xb2f72
        0xb30e0
        0xb324d
        0xb33ba
        0xb3527
        0xb3695
        0xb3802
        0xb396f
        0xb3adc
        0xb3c4a
        0xb3db7
        0xb3f24
        0xb4091
        0xb41ff
        0xb436c
        0xb44d9
        0xb4646
        0xb47b4
        0xb4921
        0xb4a8e
        0xb4bfb
        0xb4d69
        0xb4ed6
        0xb5043
        0xb51b0
        0xb531e    # 1.040007E-39f
        0xb548b
        0xb55f8
        0xb5765
        0xb58d3
        0xb5a40
        0xb5bad
    .end array-data

    #@be
    .line 313
    :array_1
    .array-data 4
        0x1f
        0x1f
        0x1c
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
        0x1f
        0x1e
        0x1f
        0x1e
        0x1f
    .end array-data

    #@dc
    .line 316
    :array_2
    .array-data 4
        -0x1e
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
    .end array-data

    #@fa
    .line 320
    :array_3
    .array-data 4
        -0x1e
        0x0
        0x1f
        0x3c
        0x5b
        0x79
        0x98
        0xb6
        0xd5
        0xf4
        0x112
        0x131
        0x14f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 40
    invoke-direct {p0}, Lsun/util/calendar/AbstractCalendar;-><init>()V

    #@3
    return-void
.end method

.method public static final getDayOfWeekFromFixedDate(J)I
    .locals 4
    .param p0, "fixedDate"    # J

    #@0
    .prologue
    const-wide/16 v2, 0x7

    #@2
    .line 479
    const-wide/16 v0, 0x0

    #@4
    cmp-long v0, p0, v0

    #@6
    if-ltz v0, :cond_0

    #@8
    .line 480
    rem-long v0, p0, v2

    #@a
    long-to-int v0, v0

    #@b
    add-int/lit8 v0, v0, 0x1

    #@d
    return v0

    #@e
    .line 482
    :cond_0
    invoke-static {p0, p1, v2, v3}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    #@11
    move-result-wide v0

    #@12
    long-to-int v0, v0

    #@13
    add-int/lit8 v0, v0, 0x1

    #@15
    return v0
.end method

.method private final getMonthLength(II)I
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 333
    sget-object v1, Lsun/util/calendar/BaseCalendar;->DAYS_IN_MONTH:[I

    #@2
    aget v0, v1, p2

    #@4
    .line 334
    .local v0, "days":I
    const/4 v1, 0x2

    #@5
    if-ne p2, v1, :cond_0

    #@7
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 335
    add-int/lit8 v0, v0, 0x1

    #@f
    .line 337
    :cond_0
    return v0
.end method


# virtual methods
.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 24
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    #@0
    .prologue
    move-object/from16 v8, p1

    #@2
    .line 421
    check-cast v8, Lsun/util/calendar/BaseCalendar$Date;

    #@4
    .line 425
    .local v8, "gdate":Lsun/util/calendar/BaseCalendar$Date;
    move-wide/from16 v0, p2

    #@6
    invoke-virtual {v8, v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->hit(J)Z

    #@9
    move-result v19

    #@a
    if-eqz v19, :cond_3

    #@c
    .line 426
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getCachedYear()I

    #@f
    move-result v18

    #@10
    .line 427
    .local v18, "year":I
    invoke-virtual {v8}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    #@13
    move-result-wide v10

    #@14
    .line 428
    .local v10, "jan1":J
    move-object/from16 v0, p0

    #@16
    move/from16 v1, v18

    #@18
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@1b
    move-result v9

    #@1c
    .line 440
    .local v9, "isLeap":Z
    :goto_0
    sub-long v20, p2, v10

    #@1e
    move-wide/from16 v0, v20

    #@20
    long-to-int v15, v0

    #@21
    .line 441
    .local v15, "priorDays":I
    const-wide/16 v20, 0x1f

    #@23
    add-long v20, v20, v10

    #@25
    const-wide/16 v22, 0x1c

    #@27
    add-long v12, v20, v22

    #@29
    .line 442
    .local v12, "mar1":J
    if-eqz v9, :cond_0

    #@2b
    .line 443
    const-wide/16 v20, 0x1

    #@2d
    add-long v12, v12, v20

    #@2f
    .line 445
    :cond_0
    cmp-long v19, p2, v12

    #@31
    if-ltz v19, :cond_1

    #@33
    .line 446
    if-eqz v9, :cond_5

    #@35
    const/16 v19, 0x1

    #@37
    :goto_1
    add-int v15, v15, v19

    #@39
    .line 448
    :cond_1
    mul-int/lit8 v19, v15, 0xc

    #@3b
    move/from16 v0, v19

    #@3d
    add-int/lit16 v14, v0, 0x175

    #@3f
    .line 449
    .local v14, "month":I
    if-lez v14, :cond_6

    #@41
    .line 450
    div-int/lit16 v14, v14, 0x16f

    #@43
    .line 454
    :goto_2
    sget-object v19, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    #@45
    aget v19, v19, v14

    #@47
    move/from16 v0, v19

    #@49
    int-to-long v0, v0

    #@4a
    move-wide/from16 v20, v0

    #@4c
    add-long v16, v10, v20

    #@4e
    .line 455
    .local v16, "month1":J
    if-eqz v9, :cond_2

    #@50
    const/16 v19, 0x3

    #@52
    move/from16 v0, v19

    #@54
    if-lt v14, v0, :cond_2

    #@56
    .line 456
    const-wide/16 v20, 0x1

    #@58
    add-long v16, v16, v20

    #@5a
    .line 458
    :cond_2
    sub-long v20, p2, v16

    #@5c
    move-wide/from16 v0, v20

    #@5e
    long-to-int v0, v0

    #@5f
    move/from16 v19, v0

    #@61
    add-int/lit8 v6, v19, 0x1

    #@63
    .line 459
    .local v6, "dayOfMonth":I
    invoke-static/range {p2 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    #@66
    move-result v7

    #@67
    .line 460
    .local v7, "dayOfWeek":I
    sget-boolean v19, Lsun/util/calendar/BaseCalendar;->-assertionsDisabled:Z

    #@69
    if-nez v19, :cond_8

    #@6b
    if-lez v7, :cond_7

    #@6d
    const/16 v19, 0x1

    #@6f
    :goto_3
    if-nez v19, :cond_8

    #@71
    new-instance v19, Ljava/lang/AssertionError;

    #@73
    new-instance v20, Ljava/lang/StringBuilder;

    #@75
    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    #@78
    const-string/jumbo v21, "negative day of week "

    #@7b
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v20

    #@7f
    move-object/from16 v0, v20

    #@81
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@84
    move-result-object v20

    #@85
    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@88
    move-result-object v20

    #@89
    invoke-direct/range {v19 .. v20}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    #@8c
    throw v19

    #@8d
    .line 433
    .end local v6    # "dayOfMonth":I
    .end local v7    # "dayOfWeek":I
    .end local v9    # "isLeap":Z
    .end local v10    # "jan1":J
    .end local v12    # "mar1":J
    .end local v14    # "month":I
    .end local v15    # "priorDays":I
    .end local v16    # "month1":J
    .end local v18    # "year":I
    :cond_3
    move-object/from16 v0, p0

    #@8f
    move-wide/from16 v1, p2

    #@91
    invoke-virtual {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getGregorianYearFromFixedDate(J)I

    #@94
    move-result v18

    #@95
    .line 434
    .restart local v18    # "year":I
    const/16 v19, 0x1

    #@97
    const/16 v20, 0x1

    #@99
    const/16 v21, 0x0

    #@9b
    move-object/from16 v0, p0

    #@9d
    move/from16 v1, v18

    #@9f
    move/from16 v2, v19

    #@a1
    move/from16 v3, v20

    #@a3
    move-object/from16 v4, v21

    #@a5
    invoke-virtual {v0, v1, v2, v3, v4}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@a8
    move-result-wide v10

    #@a9
    .line 435
    .restart local v10    # "jan1":J
    move-object/from16 v0, p0

    #@ab
    move/from16 v1, v18

    #@ad
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@b0
    move-result v9

    #@b1
    .line 437
    .restart local v9    # "isLeap":Z
    if-eqz v9, :cond_4

    #@b3
    const/16 v19, 0x16e

    #@b5
    :goto_4
    move/from16 v0, v18

    #@b7
    move/from16 v1, v19

    #@b9
    invoke-virtual {v8, v0, v10, v11, v1}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    #@bc
    goto/16 :goto_0

    #@be
    :cond_4
    const/16 v19, 0x16d

    #@c0
    goto :goto_4

    #@c1
    .line 446
    .restart local v12    # "mar1":J
    .restart local v15    # "priorDays":I
    :cond_5
    const/16 v19, 0x2

    #@c3
    goto/16 :goto_1

    #@c5
    .line 452
    .restart local v14    # "month":I
    :cond_6
    const/16 v19, 0x16f

    #@c7
    move/from16 v0, v19

    #@c9
    invoke-static {v14, v0}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@cc
    move-result v14

    #@cd
    goto/16 :goto_2

    #@cf
    .line 460
    .restart local v6    # "dayOfMonth":I
    .restart local v7    # "dayOfWeek":I
    .restart local v16    # "month1":J
    :cond_7
    const/16 v19, 0x0

    #@d1
    goto :goto_3

    #@d2
    .line 461
    :cond_8
    move/from16 v0, v18

    #@d4
    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@d7
    .line 462
    invoke-virtual {v8, v14}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@da
    .line 463
    invoke-virtual {v8, v6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@dd
    .line 464
    invoke-virtual {v8, v7}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfWeek(I)V

    #@e0
    .line 465
    invoke-virtual {v8, v9}, Lsun/util/calendar/BaseCalendar$Date;->setLeapYear(Z)V

    #@e3
    .line 466
    const/16 v19, 0x1

    #@e5
    move/from16 v0, v19

    #@e7
    invoke-virtual {v8, v0}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    #@ea
    .line 420
    return-void
.end method

.method public getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 473
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    #@3
    move-result-wide v0

    #@4
    .line 474
    .local v0, "fixedDate":J
    invoke-static {v0, v1}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    #@7
    move-result v2

    #@8
    return v2
.end method

.method final getDayOfYear(III)J
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    #@0
    .prologue
    .line 347
    int-to-long v2, p3

    #@1
    .line 348
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@4
    move-result v0

    #@5
    if-eqz v0, :cond_0

    #@7
    .line 349
    sget-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

    #@9
    aget v0, v0, p2

    #@b
    .line 348
    :goto_0
    int-to-long v0, v0

    #@c
    .line 347
    add-long/2addr v0, v2

    #@d
    return-wide v0

    #@e
    .line 349
    :cond_0
    sget-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    #@10
    aget v0, v0, p2

    #@12
    goto :goto_0
.end method

.method public getDayOfYear(Lsun/util/calendar/CalendarDate;)J
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 341
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@3
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@6
    move-result v0

    #@7
    .line 342
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    #@a
    move-result v1

    #@b
    .line 343
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    #@e
    move-result v2

    #@f
    .line 341
    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    #@12
    move-result-wide v0

    #@13
    return-wide v0
.end method

.method public getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .locals 14
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "cache"    # Lsun/util/calendar/BaseCalendar$Date;

    #@0
    .prologue
    .line 365
    const/4 v10, 0x1

    #@1
    move/from16 v0, p2

    #@3
    if-ne v0, v10, :cond_0

    #@5
    const/4 v10, 0x1

    #@6
    move/from16 v0, p3

    #@8
    if-ne v0, v10, :cond_0

    #@a
    const/4 v4, 0x1

    #@b
    .line 368
    .local v4, "isJan1":Z
    :goto_0
    if-eqz p4, :cond_2

    #@d
    move-object/from16 v0, p4

    #@f
    invoke-virtual {v0, p1}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    #@12
    move-result v10

    #@13
    if-eqz v10, :cond_2

    #@15
    .line 369
    if-eqz v4, :cond_1

    #@17
    .line 370
    invoke-virtual/range {p4 .. p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    #@1a
    move-result-wide v10

    #@1b
    return-wide v10

    #@1c
    .line 365
    .end local v4    # "isJan1":Z
    :cond_0
    const/4 v4, 0x0

    #@1d
    .restart local v4    # "isJan1":Z
    goto :goto_0

    #@1e
    .line 372
    :cond_1
    invoke-virtual/range {p4 .. p4}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    #@21
    move-result-wide v10

    #@22
    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    #@25
    move-result-wide v12

    #@26
    add-long/2addr v10, v12

    #@27
    const-wide/16 v12, 0x1

    #@29
    sub-long/2addr v10, v12

    #@2a
    return-wide v10

    #@2b
    .line 376
    :cond_2
    add-int/lit16 v5, p1, -0x7b2

    #@2d
    .line 377
    .local v5, "n":I
    if-ltz v5, :cond_6

    #@2f
    sget-object v10, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    #@31
    array-length v10, v10

    #@32
    if-ge v5, v10, :cond_6

    #@34
    .line 378
    sget-object v10, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    #@36
    aget v10, v10, v5

    #@38
    int-to-long v6, v10

    #@39
    .line 379
    .local v6, "jan1":J
    if-eqz p4, :cond_3

    #@3b
    .line 380
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@3e
    move-result v10

    #@3f
    if-eqz v10, :cond_4

    #@41
    const/16 v10, 0x16e

    #@43
    :goto_1
    move-object/from16 v0, p4

    #@45
    invoke-virtual {v0, p1, v6, v7, v10}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    #@48
    .line 382
    :cond_3
    if-eqz v4, :cond_5

    #@4a
    .end local v6    # "jan1":J
    :goto_2
    return-wide v6

    #@4b
    .line 380
    .restart local v6    # "jan1":J
    :cond_4
    const/16 v10, 0x16d

    #@4d
    goto :goto_1

    #@4e
    .line 382
    :cond_5
    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    #@51
    move-result-wide v10

    #@52
    add-long/2addr v10, v6

    #@53
    const-wide/16 v12, 0x1

    #@55
    sub-long v6, v10, v12

    #@57
    goto :goto_2

    #@58
    .line 385
    .end local v6    # "jan1":J
    :cond_6
    int-to-long v10, p1

    #@59
    const-wide/16 v12, 0x1

    #@5b
    sub-long v8, v10, v12

    #@5d
    .line 386
    .local v8, "prevyear":J
    move/from16 v0, p3

    #@5f
    int-to-long v2, v0

    #@60
    .line 388
    .local v2, "days":J
    const-wide/16 v10, 0x0

    #@62
    cmp-long v10, v8, v10

    #@64
    if-ltz v10, :cond_9

    #@66
    .line 389
    const-wide/16 v10, 0x16d

    #@68
    mul-long/2addr v10, v8

    #@69
    .line 390
    const-wide/16 v12, 0x4

    #@6b
    div-long v12, v8, v12

    #@6d
    .line 389
    add-long/2addr v10, v12

    #@6e
    .line 391
    const-wide/16 v12, 0x64

    #@70
    div-long v12, v8, v12

    #@72
    .line 389
    sub-long/2addr v10, v12

    #@73
    .line 392
    const-wide/16 v12, 0x190

    #@75
    div-long v12, v8, v12

    #@77
    .line 389
    add-long/2addr v10, v12

    #@78
    .line 393
    move/from16 v0, p2

    #@7a
    mul-int/lit16 v12, v0, 0x16f

    #@7c
    add-int/lit16 v12, v12, -0x16a

    #@7e
    div-int/lit8 v12, v12, 0xc

    #@80
    int-to-long v12, v12

    #@81
    .line 389
    add-long/2addr v10, v12

    #@82
    add-long/2addr v2, v10

    #@83
    .line 402
    :goto_3
    const/4 v10, 0x2

    #@84
    move/from16 v0, p2

    #@86
    if-le v0, v10, :cond_7

    #@88
    .line 403
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@8b
    move-result v10

    #@8c
    if-eqz v10, :cond_a

    #@8e
    const/4 v10, 0x1

    #@8f
    :goto_4
    int-to-long v10, v10

    #@90
    sub-long/2addr v2, v10

    #@91
    .line 407
    :cond_7
    if-eqz p4, :cond_8

    #@93
    if-eqz v4, :cond_8

    #@95
    .line 408
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@98
    move-result v10

    #@99
    if-eqz v10, :cond_b

    #@9b
    const/16 v10, 0x16e

    #@9d
    :goto_5
    move-object/from16 v0, p4

    #@9f
    invoke-virtual {v0, p1, v2, v3, v10}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    #@a2
    .line 411
    :cond_8
    return-wide v2

    #@a3
    .line 395
    :cond_9
    const-wide/16 v10, 0x16d

    #@a5
    mul-long/2addr v10, v8

    #@a6
    .line 396
    const-wide/16 v12, 0x4

    #@a8
    invoke-static {v8, v9, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@ab
    move-result-wide v12

    #@ac
    .line 395
    add-long/2addr v10, v12

    #@ad
    .line 397
    const-wide/16 v12, 0x64

    #@af
    invoke-static {v8, v9, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@b2
    move-result-wide v12

    #@b3
    .line 395
    sub-long/2addr v10, v12

    #@b4
    .line 398
    const-wide/16 v12, 0x190

    #@b6
    invoke-static {v8, v9, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@b9
    move-result-wide v12

    #@ba
    .line 395
    add-long/2addr v10, v12

    #@bb
    .line 399
    move/from16 v0, p2

    #@bd
    mul-int/lit16 v12, v0, 0x16f

    #@bf
    add-int/lit16 v12, v12, -0x16a

    #@c1
    const/16 v13, 0xc

    #@c3
    invoke-static {v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@c6
    move-result v12

    #@c7
    int-to-long v12, v12

    #@c8
    .line 395
    add-long/2addr v10, v12

    #@c9
    add-long/2addr v2, v10

    #@ca
    goto :goto_3

    #@cb
    .line 403
    :cond_a
    const/4 v10, 0x2

    #@cc
    goto :goto_4

    #@cd
    .line 408
    :cond_b
    const/16 v10, 0x16d

    #@cf
    goto :goto_5
.end method

.method public getFixedDate(Lsun/util/calendar/CalendarDate;)J
    .locals 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 354
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@3
    move-result v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 355
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    #@9
    :cond_0
    move-object v0, p1

    #@a
    .line 357
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@c
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@f
    move-result v0

    #@10
    .line 358
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    #@13
    move-result v1

    #@14
    .line 359
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    #@17
    move-result v2

    #@18
    .line 360
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    #@1a
    .line 357
    .end local p1    # "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p0, v0, v1, v2, p1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@1d
    move-result-wide v0

    #@1e
    return-wide v0
.end method

.method final getGregorianYearFromFixedDate(J)I
    .locals 15
    .param p1, "fixedDate"    # J

    #@0
    .prologue
    .line 498
    const-wide/16 v12, 0x0

    #@2
    cmp-long v11, p1, v12

    #@4
    if-lez v11, :cond_1

    #@6
    .line 499
    const-wide/16 v12, 0x1

    #@8
    sub-long v0, p1, v12

    #@a
    .line 500
    .local v0, "d0":J
    const-wide/32 v12, 0x23ab1

    #@d
    div-long v12, v0, v12

    #@f
    long-to-int v9, v12

    #@10
    .line 501
    .local v9, "n400":I
    const-wide/32 v12, 0x23ab1

    #@13
    rem-long v12, v0, v12

    #@15
    long-to-int v2, v12

    #@16
    .line 502
    .local v2, "d1":I
    const v11, 0x8eac

    #@19
    div-int v7, v2, v11

    #@1b
    .line 503
    .local v7, "n100":I
    const v11, 0x8eac

    #@1e
    rem-int v3, v2, v11

    #@20
    .line 504
    .local v3, "d2":I
    div-int/lit16 v8, v3, 0x5b5

    #@22
    .line 505
    .local v8, "n4":I
    rem-int/lit16 v4, v3, 0x5b5

    #@24
    .line 506
    .local v4, "d3":I
    div-int/lit16 v6, v4, 0x16d

    #@26
    .line 507
    .local v6, "n1":I
    rem-int/lit16 v11, v4, 0x16d

    #@28
    add-int/lit8 v5, v11, 0x1

    #@2a
    .line 519
    .local v5, "d4":I
    :goto_0
    mul-int/lit16 v11, v9, 0x190

    #@2c
    mul-int/lit8 v12, v7, 0x64

    #@2e
    add-int/2addr v11, v12

    #@2f
    mul-int/lit8 v12, v8, 0x4

    #@31
    add-int/2addr v11, v12

    #@32
    add-int v10, v11, v6

    #@34
    .line 520
    .local v10, "year":I
    const/4 v11, 0x4

    #@35
    if-eq v7, v11, :cond_0

    #@37
    const/4 v11, 0x4

    #@38
    if-eq v6, v11, :cond_0

    #@3a
    .line 521
    add-int/lit8 v10, v10, 0x1

    #@3c
    .line 523
    :cond_0
    return v10

    #@3d
    .line 509
    .end local v0    # "d0":J
    .end local v2    # "d1":I
    .end local v3    # "d2":I
    .end local v4    # "d3":I
    .end local v5    # "d4":I
    .end local v6    # "n1":I
    .end local v7    # "n100":I
    .end local v8    # "n4":I
    .end local v9    # "n400":I
    .end local v10    # "year":I
    :cond_1
    const-wide/16 v12, 0x1

    #@3f
    sub-long v0, p1, v12

    #@41
    .line 510
    .restart local v0    # "d0":J
    const-wide/32 v12, 0x23ab1

    #@44
    invoke-static {v0, v1, v12, v13}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    #@47
    move-result-wide v12

    #@48
    long-to-int v9, v12

    #@49
    .line 511
    .restart local v9    # "n400":I
    const-wide/32 v12, 0x23ab1

    #@4c
    invoke-static {v0, v1, v12, v13}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    #@4f
    move-result-wide v12

    #@50
    long-to-int v2, v12

    #@51
    .line 512
    .restart local v2    # "d1":I
    const v11, 0x8eac

    #@54
    invoke-static {v2, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@57
    move-result v7

    #@58
    .line 513
    .restart local v7    # "n100":I
    const v11, 0x8eac

    #@5b
    invoke-static {v2, v11}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    #@5e
    move-result v3

    #@5f
    .line 514
    .restart local v3    # "d2":I
    const/16 v11, 0x5b5

    #@61
    invoke-static {v3, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@64
    move-result v8

    #@65
    .line 515
    .restart local v8    # "n4":I
    const/16 v11, 0x5b5

    #@67
    invoke-static {v3, v11}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    #@6a
    move-result v4

    #@6b
    .line 516
    .restart local v4    # "d3":I
    const/16 v11, 0x16d

    #@6d
    invoke-static {v4, v11}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    #@70
    move-result v6

    #@71
    .line 517
    .restart local v6    # "n1":I
    const/16 v11, 0x16d

    #@73
    invoke-static {v4, v11}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    #@76
    move-result v11

    #@77
    add-int/lit8 v5, v11, 0x1

    #@79
    .restart local v5    # "d4":I
    goto :goto_0
.end method

.method public getMonthLength(Lsun/util/calendar/CalendarDate;)I
    .locals 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    move-object v0, p1

    #@1
    .line 323
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@3
    .line 324
    .local v0, "gdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@6
    move-result v1

    #@7
    .line 325
    .local v1, "month":I
    const/4 v2, 0x1

    #@8
    if-lt v1, v2, :cond_0

    #@a
    const/16 v2, 0xc

    #@c
    if-le v1, v2, :cond_1

    #@e
    .line 326
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v3, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v4, "Illegal month value: "

    #@18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v3

    #@1c
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v3

    #@20
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v3

    #@24
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v2

    #@28
    .line 328
    :cond_1
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@2b
    move-result v2

    #@2c
    invoke-direct {p0, v2, v1}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    #@2f
    move-result v2

    #@30
    return v2
.end method

.method public getYearFromFixedDate(J)I
    .locals 1
    .param p1, "fixedDate"    # J

    #@0
    .prologue
    .line 486
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/BaseCalendar;->getGregorianYearFromFixedDate(J)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public getYearLength(Lsun/util/calendar/CalendarDate;)I
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 304
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    #@2
    .end local p1    # "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@9
    move-result v0

    #@a
    if-eqz v0, :cond_0

    #@c
    const/16 v0, 0x16e

    #@e
    :goto_0
    return v0

    #@f
    :cond_0
    const/16 v0, 0x16d

    #@11
    goto :goto_0
.end method

.method public getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 308
    const/16 v0, 0xc

    #@2
    return v0
.end method

.method isLeapYear(I)Z
    .locals 1
    .param p1, "normalizedYear"    # I

    #@0
    .prologue
    .line 536
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method protected isLeapYear(Lsun/util/calendar/CalendarDate;)Z
    .locals 1
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 532
    check-cast p1, Lsun/util/calendar/BaseCalendar$Date;

    #@2
    .end local p1    # "date":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@5
    move-result v0

    #@6
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@9
    move-result v0

    #@a
    return v0
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .locals 14
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    .line 219
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    #@3
    move-result v10

    #@4
    if-eqz v10, :cond_0

    #@6
    .line 220
    const/4 v10, 0x1

    #@7
    return v10

    #@8
    :cond_0
    move-object v0, p1

    #@9
    .line 223
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@b
    .line 224
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    #@e
    move-result-object v9

    #@f
    .line 228
    .local v9, "zi":Ljava/util/TimeZone;
    if-eqz v9, :cond_1

    #@11
    .line 229
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    #@14
    .line 230
    const/4 v10, 0x1

    #@15
    return v10

    #@16
    .line 233
    :cond_1
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalizeTime(Lsun/util/calendar/CalendarDate;)I

    #@19
    move-result v1

    #@1a
    .line 234
    .local v1, "days":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    #@1d
    .line 235
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@20
    move-result v10

    #@21
    int-to-long v10, v10

    #@22
    int-to-long v12, v1

    #@23
    add-long v2, v10, v12

    #@25
    .line 236
    .local v2, "d":J
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@28
    move-result v6

    #@29
    .line 237
    .local v6, "m":I
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@2c
    move-result v8

    #@2d
    .line 238
    .local v8, "y":I
    invoke-direct {p0, v8, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    #@30
    move-result v7

    #@31
    .line 240
    .local v7, "ml":I
    const-wide/16 v10, 0x0

    #@33
    cmp-long v10, v2, v10

    #@35
    if-lez v10, :cond_2

    #@37
    int-to-long v10, v7

    #@38
    cmp-long v10, v2, v10

    #@3a
    if-lez v10, :cond_7

    #@3c
    .line 241
    :cond_2
    const-wide/16 v10, 0x0

    #@3e
    cmp-long v10, v2, v10

    #@40
    if-gtz v10, :cond_4

    #@42
    const-wide/16 v10, -0x1c

    #@44
    cmp-long v10, v2, v10

    #@46
    if-lez v10, :cond_4

    #@48
    .line 242
    add-int/lit8 v6, v6, -0x1

    #@4a
    invoke-direct {p0, v8, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    #@4d
    move-result v7

    #@4e
    .line 243
    int-to-long v10, v7

    #@4f
    add-long/2addr v2, v10

    #@50
    .line 244
    long-to-int v10, v2

    #@51
    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@54
    .line 245
    if-nez v6, :cond_3

    #@56
    .line 246
    const/16 v6, 0xc

    #@58
    .line 247
    add-int/lit8 v10, v8, -0x1

    #@5a
    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@5d
    .line 249
    :cond_3
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@60
    .line 266
    :goto_0
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@63
    move-result v10

    #@64
    invoke-virtual {p0, v10}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    #@67
    move-result v10

    #@68
    invoke-virtual {p1, v10}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    #@6b
    .line 267
    const/4 v10, 0x0

    #@6c
    invoke-virtual {p1, v10}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    #@6f
    .line 268
    const/4 v10, 0x0

    #@70
    invoke-virtual {p1, v10}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    #@73
    .line 269
    const/4 v10, 0x1

    #@74
    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    #@77
    .line 270
    const/4 v10, 0x1

    #@78
    return v10

    #@79
    .line 250
    :cond_4
    int-to-long v10, v7

    #@7a
    cmp-long v10, v2, v10

    #@7c
    if-lez v10, :cond_6

    #@7e
    add-int/lit8 v10, v7, 0x1c

    #@80
    int-to-long v10, v10

    #@81
    cmp-long v10, v2, v10

    #@83
    if-gez v10, :cond_6

    #@85
    .line 251
    int-to-long v10, v7

    #@86
    sub-long/2addr v2, v10

    #@87
    .line 252
    add-int/lit8 v6, v6, 0x1

    #@89
    .line 253
    long-to-int v10, v2

    #@8a
    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    #@8d
    .line 254
    const/16 v10, 0xc

    #@8f
    if-le v6, v10, :cond_5

    #@91
    .line 255
    add-int/lit8 v10, v8, 0x1

    #@93
    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@96
    .line 256
    const/4 v6, 0x1

    #@97
    .line 258
    :cond_5
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@9a
    goto :goto_0

    #@9b
    .line 260
    :cond_6
    const/4 v10, 0x1

    #@9c
    invoke-virtual {p0, v8, v6, v10, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    #@9f
    move-result-wide v10

    #@a0
    add-long/2addr v10, v2

    #@a1
    const-wide/16 v12, 0x1

    #@a3
    sub-long v4, v10, v12

    #@a5
    .line 261
    .local v4, "fixedDate":J
    invoke-virtual {p0, v0, v4, v5}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    #@a8
    goto :goto_0

    #@a9
    .line 264
    .end local v4    # "fixedDate":J
    :cond_7
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    #@ac
    move-result v10

    #@ad
    invoke-virtual {v0, v10}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfWeek(I)V

    #@b0
    goto :goto_0
.end method

.method normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .locals 12
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    const-wide/16 v10, 0xc

    #@2
    const-wide/16 v8, 0x1

    #@4
    move-object v0, p1

    #@5
    .line 274
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@7
    .line 275
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@a
    move-result v1

    #@b
    .line 276
    .local v1, "year":I
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@e
    move-result v6

    #@f
    int-to-long v2, v6

    #@10
    .line 277
    .local v2, "month":J
    const-wide/16 v6, 0x0

    #@12
    cmp-long v6, v2, v6

    #@14
    if-gtz v6, :cond_1

    #@16
    .line 278
    sub-long v4, v8, v2

    #@18
    .line 279
    .local v4, "xm":J
    div-long v6, v4, v10

    #@1a
    add-long/2addr v6, v8

    #@1b
    long-to-int v6, v6

    #@1c
    sub-int/2addr v1, v6

    #@1d
    .line 280
    rem-long v6, v4, v10

    #@1f
    const-wide/16 v8, 0xd

    #@21
    sub-long v2, v8, v6

    #@23
    .line 281
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@26
    .line 282
    long-to-int v6, v2

    #@27
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@2a
    .line 273
    .end local v4    # "xm":J
    :cond_0
    :goto_0
    return-void

    #@2b
    .line 283
    :cond_1
    cmp-long v6, v2, v10

    #@2d
    if-lez v6, :cond_0

    #@2f
    .line 284
    sub-long v6, v2, v8

    #@31
    div-long/2addr v6, v10

    #@32
    long-to-int v6, v6

    #@33
    add-int/2addr v1, v6

    #@34
    .line 285
    sub-long v6, v2, v8

    #@36
    rem-long/2addr v6, v10

    #@37
    add-long v2, v6, v8

    #@39
    .line 286
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    #@3c
    .line 287
    long-to-int v6, v2

    #@3d
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    #@40
    goto :goto_0
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 7
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    const/4 v5, 0x0

    #@2
    move-object v0, p1

    #@3
    .line 193
    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    #@5
    .line 194
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    #@8
    move-result v4

    #@9
    if-eqz v4, :cond_0

    #@b
    .line 195
    return v6

    #@c
    .line 197
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    #@f
    move-result v3

    #@10
    .line 198
    .local v3, "month":I
    if-lt v3, v6, :cond_1

    #@12
    const/16 v4, 0xc

    #@14
    if-le v3, v4, :cond_2

    #@16
    .line 199
    :cond_1
    return v5

    #@17
    .line 201
    :cond_2
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    #@1a
    move-result v1

    #@1b
    .line 202
    .local v1, "d":I
    if-lez v1, :cond_3

    #@1d
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    #@20
    move-result v4

    #@21
    invoke-direct {p0, v4, v3}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    #@24
    move-result v4

    #@25
    if-le v1, v4, :cond_4

    #@27
    .line 203
    :cond_3
    return v5

    #@28
    .line 205
    :cond_4
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    #@2b
    move-result v2

    #@2c
    .line 206
    .local v2, "dow":I
    const/high16 v4, -0x80000000

    #@2e
    if-eq v2, v4, :cond_5

    #@30
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    #@33
    move-result v4

    #@34
    if-eq v2, v4, :cond_5

    #@36
    .line 207
    return v5

    #@37
    .line 210
    :cond_5
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->validateTime(Lsun/util/calendar/CalendarDate;)Z

    #@3a
    move-result v4

    #@3b
    if-nez v4, :cond_6

    #@3d
    .line 211
    return v5

    #@3e
    .line 214
    :cond_6
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    #@41
    .line 215
    return v6
.end method
