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
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist ACCUMULATED_DAYS_IN_MONTH:[I

.field static final blacklist ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

.field public static final blacklist APRIL:I = 0x4

.field public static final blacklist AUGUST:I = 0x8

.field private static final blacklist BASE_YEAR:I = 0x7b2

.field static final blacklist DAYS_IN_MONTH:[I

.field public static final blacklist DECEMBER:I = 0xc

.field public static final blacklist FEBRUARY:I = 0x2

.field private static final blacklist FIXED_DATES:[I

.field public static final blacklist FRIDAY:I = 0x6

.field public static final blacklist JANUARY:I = 0x1

.field public static final blacklist JULY:I = 0x7

.field public static final blacklist JUNE:I = 0x6

.field public static final blacklist MARCH:I = 0x3

.field public static final blacklist MAY:I = 0x5

.field public static final blacklist MONDAY:I = 0x2

.field public static final blacklist NOVEMBER:I = 0xb

.field public static final blacklist OCTOBER:I = 0xa

.field public static final blacklist SATURDAY:I = 0x7

.field public static final blacklist SEPTEMBER:I = 0x9

.field public static final blacklist SUNDAY:I = 0x1

.field public static final blacklist THURSDAY:I = 0x5

.field public static final blacklist TUESDAY:I = 0x3

.field public static final blacklist WEDNESDAY:I = 0x4


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 39
    nop

    .line 70
    const/16 v0, 0x46

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    .line 314
    const/16 v0, 0xd

    new-array v1, v0, [I

    fill-array-data v1, :array_b2

    sput-object v1, Lsun/util/calendar/BaseCalendar;->DAYS_IN_MONTH:[I

    .line 317
    new-array v1, v0, [I

    fill-array-data v1, :array_d0

    sput-object v1, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    .line 321
    new-array v0, v0, [I

    fill-array-data v0, :array_ee

    sput-object v0, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

    return-void

    :array_22
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

    :array_b2
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

    :array_d0
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

    :array_ee
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

.method public constructor blacklist <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Lsun/util/calendar/AbstractCalendar;-><init>()V

    return-void
.end method

.method public static final blacklist getDayOfWeekFromFixedDate(J)I
    .registers 5
    .param p0, "fixedDate"    # J

    .line 482
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    const-wide/16 v1, 0x7

    if-ltz v0, :cond_e

    .line 483
    rem-long v0, p0, v1

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 485
    :cond_e
    invoke-static {p0, p1, v1, v2}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private blacklist getMonthLength(II)I
    .registers 5
    .param p1, "year"    # I
    .param p2, "month"    # I

    .line 336
    sget-object v0, Lsun/util/calendar/BaseCalendar;->DAYS_IN_MONTH:[I

    aget v0, v0, p2

    .line 337
    .local v0, "days":I
    const/4 v1, 0x2

    if-ne p2, v1, :cond_f

    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 340
    :cond_f
    return v0
.end method


# virtual methods
.method public blacklist getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .registers 22
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .line 424
    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-object/from16 v3, p1

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 428
    .local v3, "gdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v3, v1, v2}, Lsun/util/calendar/BaseCalendar$Date;->hit(J)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1c

    .line 429
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getCachedYear()I

    move-result v4

    .line 430
    .local v4, "year":I
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v6

    .line 431
    .local v6, "jan1":J
    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v8

    .local v8, "isLeap":Z
    goto :goto_33

    .line 436
    .end local v4    # "year":I
    .end local v6    # "jan1":J
    .end local v8    # "isLeap":Z
    :cond_1c
    invoke-virtual {v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getGregorianYearFromFixedDate(J)I

    move-result v4

    .line 437
    .restart local v4    # "year":I
    const/4 v6, 0x0

    invoke-virtual {v0, v4, v5, v5, v6}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v6

    .line 438
    .restart local v6    # "jan1":J
    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v8

    .line 440
    .restart local v8    # "isLeap":Z
    if-eqz v8, :cond_2e

    const/16 v9, 0x16e

    goto :goto_30

    :cond_2e
    const/16 v9, 0x16d

    :goto_30
    invoke-virtual {v3, v4, v6, v7, v9}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 443
    :goto_33
    sub-long v9, v1, v6

    long-to-int v9, v9

    .line 444
    .local v9, "priorDays":I
    const-wide/16 v10, 0x1f

    add-long/2addr v10, v6

    const-wide/16 v12, 0x1c

    add-long/2addr v10, v12

    .line 445
    .local v10, "mar1":J
    const-wide/16 v12, 0x1

    if-eqz v8, :cond_41

    .line 446
    add-long/2addr v10, v12

    .line 448
    :cond_41
    cmp-long v14, v1, v10

    if-ltz v14, :cond_4b

    .line 449
    if-eqz v8, :cond_49

    move v14, v5

    goto :goto_4a

    :cond_49
    const/4 v14, 0x2

    :goto_4a
    add-int/2addr v9, v14

    .line 451
    :cond_4b
    mul-int/lit8 v14, v9, 0xc

    add-int/lit16 v14, v14, 0x175

    .line 452
    .local v14, "month":I
    const/16 v15, 0x16f

    if-lez v14, :cond_55

    .line 453
    div-int/2addr v14, v15

    goto :goto_59

    .line 455
    :cond_55
    invoke-static {v14, v15}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v14

    .line 457
    :goto_59
    sget-object v15, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    aget v15, v15, v14

    move-wide/from16 v16, v12

    int-to-long v12, v15

    add-long/2addr v12, v6

    .line 458
    .local v12, "month1":J
    if-eqz v8, :cond_68

    const/4 v15, 0x3

    if-lt v14, v15, :cond_68

    .line 459
    add-long v12, v12, v16

    .line 461
    :cond_68
    move v15, v5

    move-wide/from16 v16, v6

    .end local v6    # "jan1":J
    .local v16, "jan1":J
    sub-long v5, v1, v12

    long-to-int v5, v5

    add-int/2addr v5, v15

    .line 462
    .local v5, "dayOfMonth":I
    invoke-static {v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v6

    .line 463
    .local v6, "dayOfWeek":I
    nop

    .line 464
    invoke-virtual {v3, v4}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 465
    invoke-virtual {v3, v14}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 466
    invoke-virtual {v3, v5}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 467
    invoke-virtual {v3, v6}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfWeek(I)V

    .line 468
    invoke-virtual {v3, v8}, Lsun/util/calendar/BaseCalendar$Date;->setLeapYear(Z)V

    .line 469
    invoke-virtual {v3, v15}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    .line 470
    return-void
.end method

.method public blacklist getDayOfWeek(Lsun/util/calendar/CalendarDate;)I
    .registers 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 476
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    .line 477
    .local v0, "fixedDate":J
    invoke-static {v0, v1}, Lsun/util/calendar/BaseCalendar;->getDayOfWeekFromFixedDate(J)I

    move-result v2

    return v2
.end method

.method final blacklist getDayOfYear(III)J
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .line 350
    int-to-long v0, p3

    .line 351
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 352
    sget-object v2, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH_LEAP:[I

    aget v2, v2, p2

    goto :goto_10

    :cond_c
    sget-object v2, Lsun/util/calendar/BaseCalendar;->ACCUMULATED_DAYS_IN_MONTH:[I

    aget v2, v2, p2

    :goto_10
    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 350
    return-wide v0
.end method

.method public blacklist getDayOfYear(Lsun/util/calendar/CalendarDate;)J
    .registers 5
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 344
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 345
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    .line 346
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    .line 344
    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J
    .registers 25
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "cache"    # Lsun/util/calendar/BaseCalendar$Date;

    .line 368
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x1

    if-ne v1, v4, :cond_e

    if-ne v2, v4, :cond_e

    goto :goto_f

    :cond_e
    const/4 v4, 0x0

    .line 371
    .local v4, "isJan1":Z
    :goto_f
    const-wide/16 v5, 0x1

    if-eqz v3, :cond_2b

    invoke-virtual {v3, v0}, Lsun/util/calendar/BaseCalendar$Date;->hit(I)Z

    move-result v7

    if-eqz v7, :cond_2b

    .line 372
    if-eqz v4, :cond_20

    .line 373
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v5

    return-wide v5

    .line 375
    :cond_20
    invoke-virtual {v3}, Lsun/util/calendar/BaseCalendar$Date;->getCachedJan1()J

    move-result-wide v7

    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    move-result-wide v9

    add-long/2addr v7, v9

    sub-long/2addr v7, v5

    return-wide v7

    .line 379
    :cond_2b
    add-int/lit16 v7, v0, -0x7b2

    .line 380
    .local v7, "n":I
    if-ltz v7, :cond_54

    sget-object v10, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    array-length v10, v10

    if-ge v7, v10, :cond_54

    .line 381
    sget-object v10, Lsun/util/calendar/BaseCalendar;->FIXED_DATES:[I

    aget v10, v10, v7

    int-to-long v10, v10

    .line 382
    .local v10, "jan1":J
    if-eqz v3, :cond_49

    .line 383
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v12

    if-eqz v12, :cond_44

    const/16 v8, 0x16e

    goto :goto_46

    :cond_44
    const/16 v8, 0x16d

    :goto_46
    invoke-virtual {v3, v0, v10, v11, v8}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 385
    :cond_49
    if-eqz v4, :cond_4d

    move-wide v8, v10

    goto :goto_53

    :cond_4d
    invoke-virtual/range {p0 .. p3}, Lsun/util/calendar/BaseCalendar;->getDayOfYear(III)J

    move-result-wide v8

    add-long/2addr v8, v10

    sub-long/2addr v8, v5

    :goto_53
    return-wide v8

    .line 388
    .end local v10    # "jan1":J
    :cond_54
    int-to-long v10, v0

    sub-long/2addr v10, v5

    .line 389
    .local v10, "prevyear":J
    int-to-long v12, v2

    .line 391
    .local v12, "days":J
    const-wide/16 v14, 0x0

    cmp-long v14, v10, v14

    const/16 v15, 0xc

    const-wide/16 v8, 0x64

    const-wide/16 v16, 0x190

    const-wide/16 v5, 0x4

    const-wide/16 v18, 0x16d

    if-ltz v14, :cond_80

    .line 392
    mul-long v18, v18, v10

    div-long v5, v10, v5

    add-long v18, v18, v5

    div-long v5, v10, v8

    sub-long v18, v18, v5

    div-long v5, v10, v16

    add-long v18, v18, v5

    mul-int/lit16 v5, v1, 0x16f

    add-int/lit16 v5, v5, -0x16a

    div-int/2addr v5, v15

    int-to-long v5, v5

    add-long v18, v18, v5

    add-long v12, v12, v18

    goto :goto_a3

    .line 398
    :cond_80
    mul-long v18, v18, v10

    .line 399
    invoke-static {v10, v11, v5, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v5

    add-long v18, v18, v5

    .line 400
    invoke-static {v10, v11, v8, v9}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v5

    sub-long v18, v18, v5

    .line 401
    move-wide/from16 v5, v16

    invoke-static {v10, v11, v5, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v5

    add-long v18, v18, v5

    mul-int/lit16 v5, v1, 0x16f

    add-int/lit16 v5, v5, -0x16a

    .line 402
    invoke-static {v5, v15}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v5

    int-to-long v5, v5

    add-long v18, v18, v5

    add-long v12, v12, v18

    .line 405
    :goto_a3
    const/4 v5, 0x2

    if-le v1, v5, :cond_b2

    .line 406
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_af

    const-wide/16 v5, 0x1

    goto :goto_b1

    :cond_af
    const-wide/16 v5, 0x2

    :goto_b1
    sub-long/2addr v12, v5

    .line 410
    :cond_b2
    if-eqz v3, :cond_c4

    if-eqz v4, :cond_c4

    .line 411
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v5

    if-eqz v5, :cond_bf

    const/16 v8, 0x16e

    goto :goto_c1

    :cond_bf
    const/16 v8, 0x16d

    :goto_c1
    invoke-virtual {v3, v0, v12, v13, v8}, Lsun/util/calendar/BaseCalendar$Date;->setCache(IJI)V

    .line 414
    :cond_c4
    return-wide v12
.end method

.method public blacklist getFixedDate(Lsun/util/calendar/CalendarDate;)J
    .registers 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 357
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_9

    .line 358
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 360
    :cond_9
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    .line 361
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v1

    .line 362
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    move-object v3, p1

    check-cast v3, Lsun/util/calendar/BaseCalendar$Date;

    .line 360
    invoke-virtual {p0, v0, v1, v2, v3}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v0

    return-wide v0
.end method

.method final blacklist getGregorianYearFromFixedDate(J)I
    .registers 16
    .param p1, "fixedDate"    # J

    .line 501
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    const-wide/16 v1, 0x1

    const v3, 0x8eac

    const-wide/32 v4, 0x23ab1

    if-lez v0, :cond_25

    .line 502
    sub-long v0, p1, v1

    .line 503
    .local v0, "d0":J
    div-long v6, v0, v4

    long-to-int v2, v6

    .line 504
    .local v2, "n400":I
    rem-long v4, v0, v4

    long-to-int v4, v4

    .line 505
    .local v4, "d1":I
    div-int v5, v4, v3

    .line 506
    .local v5, "n100":I
    rem-int v3, v4, v3

    .line 507
    .local v3, "d2":I
    div-int/lit16 v6, v3, 0x5b5

    .line 508
    .local v6, "n4":I
    rem-int/lit16 v7, v3, 0x5b5

    .line 509
    .local v7, "d3":I
    div-int/lit16 v8, v7, 0x16d

    .line 510
    .local v8, "n1":I
    rem-int/lit16 v9, v7, 0x16d

    add-int/lit8 v9, v9, 0x1

    .local v9, "d4":I
    goto :goto_55

    .line 512
    .end local v0    # "d0":J
    .end local v2    # "n400":I
    .end local v3    # "d2":I
    .end local v4    # "d1":I
    .end local v5    # "n100":I
    .end local v6    # "n4":I
    .end local v7    # "d3":I
    .end local v8    # "n1":I
    .end local v9    # "d4":I
    :cond_25
    sub-long v0, p1, v1

    .line 513
    .restart local v0    # "d0":J
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->floorDivide(JJ)J

    move-result-wide v6

    long-to-int v2, v6

    .line 514
    .restart local v2    # "n400":I
    invoke-static {v0, v1, v4, v5}, Lsun/util/calendar/CalendarUtils;->mod(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 515
    .restart local v4    # "d1":I
    invoke-static {v4, v3}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v5

    .line 516
    .restart local v5    # "n100":I
    invoke-static {v4, v3}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v3

    .line 517
    .restart local v3    # "d2":I
    const/16 v6, 0x5b5

    invoke-static {v3, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v7

    .line 518
    .local v7, "n4":I
    invoke-static {v3, v6}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v6

    .line 519
    .local v6, "d3":I
    const/16 v8, 0x16d

    invoke-static {v6, v8}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v9

    .line 520
    .local v9, "n1":I
    invoke-static {v6, v8}, Lsun/util/calendar/CalendarUtils;->mod(II)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move v12, v7

    move v7, v6

    move v6, v12

    move v12, v9

    move v9, v8

    move v8, v12

    .line 522
    .local v6, "n4":I
    .local v7, "d3":I
    .restart local v8    # "n1":I
    .local v9, "d4":I
    :goto_55
    mul-int/lit16 v10, v2, 0x190

    mul-int/lit8 v11, v5, 0x64

    add-int/2addr v10, v11

    mul-int/lit8 v11, v6, 0x4

    add-int/2addr v10, v11

    add-int/2addr v10, v8

    .line 523
    .local v10, "year":I
    const/4 v11, 0x4

    if-eq v5, v11, :cond_65

    if-eq v8, v11, :cond_65

    .line 524
    add-int/lit8 v10, v10, 0x1

    .line 526
    :cond_65
    return v10
.end method

.method public blacklist getMonthLength(Lsun/util/calendar/CalendarDate;)I
    .registers 7
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 326
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 327
    .local v0, "gdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    .line 328
    .local v1, "month":I
    const/4 v2, 0x1

    if-lt v1, v2, :cond_17

    const/16 v2, 0xc

    if-gt v1, v2, :cond_17

    .line 331
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v2

    invoke-direct {p0, v2, v1}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v2

    return v2

    .line 329
    :cond_17
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal month value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist getYearFromFixedDate(J)I
    .registers 4
    .param p1, "fixedDate"    # J

    .line 489
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/BaseCalendar;->getGregorianYearFromFixedDate(J)I

    move-result v0

    return v0
.end method

.method public blacklist getYearLength(Lsun/util/calendar/CalendarDate;)I
    .registers 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 307
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0x16e

    goto :goto_12

    :cond_10
    const/16 v0, 0x16d

    :goto_12
    return v0
.end method

.method public blacklist getYearLengthInMonths(Lsun/util/calendar/CalendarDate;)I
    .registers 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 311
    const/16 v0, 0xc

    return v0
.end method

.method blacklist isLeapYear(I)Z
    .registers 3
    .param p1, "normalizedYear"    # I

    .line 539
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method protected blacklist isLeapYear(Lsun/util/calendar/CalendarDate;)Z
    .registers 3
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 535
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v0

    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public blacklist normalize(Lsun/util/calendar/CalendarDate;)Z
    .registers 15
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 218
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 219
    return v1

    .line 222
    :cond_8
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 223
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getZone()Ljava/util/TimeZone;

    move-result-object v2

    .line 227
    .local v2, "zi":Ljava/util/TimeZone;
    if-eqz v2, :cond_15

    .line 228
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    .line 229
    return v1

    .line 232
    :cond_15
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalizeTime(Lsun/util/calendar/CalendarDate;)I

    move-result v3

    .line 233
    .local v3, "days":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 234
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    int-to-long v4, v4

    int-to-long v6, v3

    add-long/2addr v4, v6

    .line 235
    .local v4, "d":J
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v6

    .line 236
    .local v6, "m":I
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v7

    .line 237
    .local v7, "y":I
    invoke-direct {p0, v7, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v8

    .line 239
    .local v8, "ml":I
    const-wide/16 v9, 0x0

    cmp-long v11, v4, v9

    if-lez v11, :cond_43

    int-to-long v11, v8

    cmp-long v11, v4, v11

    if-lez v11, :cond_3b

    goto :goto_43

    .line 263
    :cond_3b
    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v9

    invoke-virtual {v0, v9}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfWeek(I)V

    goto :goto_94

    .line 240
    :cond_43
    :goto_43
    cmp-long v9, v4, v9

    if-gtz v9, :cond_66

    const-wide/16 v9, -0x1c

    cmp-long v9, v4, v9

    if-lez v9, :cond_66

    .line 241
    add-int/lit8 v6, v6, -0x1

    invoke-direct {p0, v7, v6}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v8

    .line 242
    int-to-long v9, v8

    add-long/2addr v4, v9

    .line 243
    long-to-int v9, v4

    invoke-virtual {v0, v9}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 244
    if-nez v6, :cond_62

    .line 245
    const/16 v6, 0xc

    .line 246
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {v0, v9}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 248
    :cond_62
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_94

    .line 249
    :cond_66
    int-to-long v9, v8

    cmp-long v9, v4, v9

    if-lez v9, :cond_88

    add-int/lit8 v9, v8, 0x1c

    int-to-long v9, v9

    cmp-long v9, v4, v9

    if-gez v9, :cond_88

    .line 250
    int-to-long v9, v8

    sub-long/2addr v4, v9

    .line 251
    add-int/lit8 v6, v6, 0x1

    .line 252
    long-to-int v9, v4

    invoke-virtual {v0, v9}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 253
    const/16 v9, 0xc

    if-le v6, v9, :cond_84

    .line 254
    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v0, v9}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 255
    const/4 v6, 0x1

    .line 257
    :cond_84
    invoke-virtual {v0, v6}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_94

    .line 259
    :cond_88
    invoke-virtual {p0, v7, v6, v1, v0}, Lsun/util/calendar/BaseCalendar;->getFixedDate(IIILsun/util/calendar/BaseCalendar$Date;)J

    move-result-wide v9

    add-long/2addr v9, v4

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    .line 260
    .local v9, "fixedDate":J
    invoke-virtual {p0, v0, v9, v10}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 261
    .end local v9    # "fixedDate":J
    nop

    .line 265
    :goto_94
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v9

    invoke-virtual {p0, v9}, Lsun/util/calendar/BaseCalendar;->isLeapYear(I)Z

    move-result v9

    invoke-virtual {p1, v9}, Lsun/util/calendar/CalendarDate;->setLeapYear(Z)V

    .line 266
    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lsun/util/calendar/CalendarDate;->setZoneOffset(I)V

    .line 267
    invoke-virtual {p1, v9}, Lsun/util/calendar/CalendarDate;->setDaylightSaving(I)V

    .line 268
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    .line 269
    return v1
.end method

.method blacklist normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .registers 15
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 273
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 274
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v1

    .line 275
    .local v1, "year":I
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v2

    int-to-long v2, v2

    .line 276
    .local v2, "month":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0xc

    if-gtz v4, :cond_33

    .line 277
    sub-long v9, v5, v2

    .line 278
    .local v9, "xm":J
    div-long v11, v9, v7

    add-long/2addr v11, v5

    long-to-int v4, v11

    sub-int/2addr v1, v4

    .line 279
    rem-long v4, v9, v7

    const-wide/16 v6, 0xd

    sub-long v2, v6, v4

    .line 280
    cmp-long v4, v2, v6

    if-nez v4, :cond_2b

    .line 281
    add-int/lit8 v1, v1, 0x1

    .line 282
    const-wide/16 v2, 0x1

    .line 284
    :cond_2b
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 285
    long-to-int v4, v2

    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .end local v9    # "xm":J
    goto :goto_49

    .line 286
    :cond_33
    cmp-long v4, v2, v7

    if-lez v4, :cond_49

    .line 287
    sub-long v9, v2, v5

    div-long/2addr v9, v7

    long-to-int v4, v9

    add-int/2addr v1, v4

    .line 288
    sub-long v9, v2, v5

    rem-long/2addr v9, v7

    add-long v2, v9, v5

    .line 289
    invoke-virtual {v0, v1}, Lsun/util/calendar/BaseCalendar$Date;->setNormalizedYear(I)V

    .line 290
    long-to-int v4, v2

    invoke-virtual {v0, v4}, Lsun/util/calendar/BaseCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_4a

    .line 286
    :cond_49
    :goto_49
    nop

    .line 292
    :goto_4a
    return-void
.end method

.method public blacklist validate(Lsun/util/calendar/CalendarDate;)Z
    .registers 9
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 192
    move-object v0, p1

    check-cast v0, Lsun/util/calendar/BaseCalendar$Date;

    .line 193
    .local v0, "bdate":Lsun/util/calendar/BaseCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->isNormalized()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_b

    .line 194
    return v2

    .line 196
    :cond_b
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getMonth()I

    move-result v1

    .line 197
    .local v1, "month":I
    const/4 v3, 0x0

    if-lt v1, v2, :cond_43

    const/16 v4, 0xc

    if-le v1, v4, :cond_17

    goto :goto_43

    .line 200
    :cond_17
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfMonth()I

    move-result v4

    .line 201
    .local v4, "d":I
    if-lez v4, :cond_42

    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-direct {p0, v5, v1}, Lsun/util/calendar/BaseCalendar;->getMonthLength(II)I

    move-result v5

    if-le v4, v5, :cond_28

    goto :goto_42

    .line 204
    :cond_28
    invoke-virtual {v0}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v5

    .line 205
    .local v5, "dow":I
    const/high16 v6, -0x80000000

    if-eq v5, v6, :cond_37

    invoke-virtual {p0, v0}, Lsun/util/calendar/BaseCalendar;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    if-eq v5, v6, :cond_37

    .line 206
    return v3

    .line 209
    :cond_37
    invoke-virtual {p0, p1}, Lsun/util/calendar/BaseCalendar;->validateTime(Lsun/util/calendar/CalendarDate;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 210
    return v3

    .line 213
    :cond_3e
    invoke-virtual {v0, v2}, Lsun/util/calendar/BaseCalendar$Date;->setNormalized(Z)V

    .line 214
    return v2

    .line 202
    .end local v5    # "dow":I
    :cond_42
    :goto_42
    return v3

    .line 198
    .end local v4    # "d":I
    :cond_43
    :goto_43
    return v3
.end method
