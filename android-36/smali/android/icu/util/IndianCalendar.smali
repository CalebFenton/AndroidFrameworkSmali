.class public Landroid/icu/util/IndianCalendar;
.super Landroid/icu/util/Calendar;
.source "IndianCalendar.java"


# static fields
.field public static final whitelist test-api AGRAHAYANA:I = 0x8

.field public static final whitelist test-api ASADHA:I = 0x3

.field public static final whitelist test-api ASVINA:I = 0x6

.field public static final whitelist test-api BHADRA:I = 0x5

.field public static final whitelist test-api CHAITRA:I = 0x0

.field public static final whitelist test-api IE:I = 0x0

.field private static final greylist-max-o INDIAN_ERA_START:I = 0x4e

.field private static final greylist-max-o INDIAN_YEAR_START:I = 0x50

.field public static final whitelist test-api JYAISTHA:I = 0x2

.field public static final whitelist test-api KARTIKA:I = 0x7

.field private static final greylist-max-o LIMITS:[[I

.field public static final whitelist test-api MAGHA:I = 0xa

.field public static final whitelist test-api PAUSA:I = 0x9

.field public static final whitelist test-api PHALGUNA:I = 0xb

.field public static final whitelist test-api SRAVANA:I = 0x4

.field public static final whitelist test-api VAISAKHA:I = 0x1

.field private static final whitelist serialVersionUID:J = 0x3235383330303532L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 26

    .line 376
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    const v2, -0x4c4b40

    const v3, 0x4c4b40

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v4

    const/16 v5, 0xb

    filled-new-array {v0, v0, v5, v5}, [I

    move-result-object v6

    const/16 v7, 0x34

    const/16 v8, 0x35

    const/4 v9, 0x1

    filled-new-array {v9, v9, v7, v8}, [I

    move-result-object v7

    new-array v8, v0, [I

    const/16 v10, 0x1e

    const/16 v11, 0x1f

    filled-new-array {v9, v9, v10, v11}, [I

    move-result-object v10

    const/16 v11, 0x16d

    const/16 v12, 0x16e

    filled-new-array {v9, v9, v11, v12}, [I

    move-result-object v9

    move-object v11, v8

    new-array v8, v0, [I

    const/4 v12, -0x1

    const/4 v13, 0x5

    filled-new-array {v12, v12, v13, v13}, [I

    move-result-object v12

    move-object v13, v6

    move-object v6, v10

    new-array v10, v0, [I

    move-object v14, v11

    new-array v11, v0, [I

    move-object v15, v4

    move-object v4, v7

    move-object v7, v9

    move-object v9, v12

    new-array v12, v0, [I

    move-object/from16 v16, v13

    new-array v13, v0, [I

    move-object/from16 v17, v14

    new-array v14, v0, [I

    move-object/from16 v18, v15

    new-array v15, v0, [I

    new-array v5, v0, [I

    move-object/from16 v20, v1

    new-array v1, v0, [I

    move-object/from16 v21, v18

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v18

    move-object/from16 v22, v1

    new-array v1, v0, [I

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v2

    new-array v3, v0, [I

    move-object/from16 v23, v1

    new-array v1, v0, [I

    move-object/from16 v24, v1

    new-array v1, v0, [I

    move-object/from16 v25, v1

    const/16 v1, 0xb

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    move-object/from16 v1, v20

    move-object/from16 v19, v23

    move-object/from16 v23, v25

    move-object/from16 v20, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v17

    move-object/from16 v17, v22

    move-object/from16 v22, v24

    move-object/from16 v24, v0

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 150
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 151
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 235
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 237
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 238
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 240
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIII)V
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 263
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 264
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 265
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 266
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 267
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 268
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 269
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/IndianCalendar;->set(II)V

    .line 270
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 161
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 162
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->setTimeInMillis(J)V

    .line 208
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->setTimeInMillis(J)V

    .line 195
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 181
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 182
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 218
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 219
    invoke-virtual {p0, p1}, Landroid/icu/util/IndianCalendar;->setTime(Ljava/util/Date;)V

    .line 220
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 171
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 172
    return-void
.end method

.method private greylist-max-o IndianToJD(III)D
    .registers 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 446
    add-int/lit8 v0, p1, 0x4e

    .line 449
    .local v0, "gyear":I
    invoke-static {v0}, Landroid/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_12

    .line 450
    const/16 v1, 0x1f

    .line 451
    .local v1, "leapMonth":I
    const/16 v3, 0x15

    invoke-direct {p0, v0, v2, v3}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v2

    .local v2, "start":D
    goto :goto_1a

    .line 453
    .end local v1    # "leapMonth":I
    .end local v2    # "start":D
    :cond_12
    const/16 v1, 0x1e

    .line 454
    .restart local v1    # "leapMonth":I
    const/16 v3, 0x16

    invoke-direct {p0, v0, v2, v3}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v2

    .line 457
    .restart local v2    # "start":D
    :goto_1a
    const/4 v4, 0x1

    if-ne p2, v4, :cond_22

    .line 458
    add-int/lit8 v4, p3, -0x1

    int-to-double v4, v4

    add-double/2addr v4, v2

    .local v4, "jd":D
    goto :goto_3d

    .line 460
    .end local v4    # "jd":D
    :cond_22
    int-to-double v4, v1

    add-double/2addr v4, v2

    .line 461
    .restart local v4    # "jd":D
    add-int/lit8 v6, p2, -0x2

    .line 462
    .local v6, "m":I
    const/4 v7, 0x5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 463
    mul-int/lit8 v7, v6, 0x1f

    int-to-double v7, v7

    add-double/2addr v4, v7

    .line 464
    const/16 v7, 0x8

    if-lt p2, v7, :cond_39

    .line 465
    add-int/lit8 v6, p2, -0x7

    .line 466
    mul-int/lit8 v7, v6, 0x1e

    int-to-double v7, v7

    add-double/2addr v4, v7

    .line 468
    :cond_39
    add-int/lit8 v7, p3, -0x1

    int-to-double v7, v7

    add-double/2addr v4, v7

    .line 471
    .end local v6    # "m":I
    :goto_3d
    return-wide v4
.end method

.method private greylist-max-o gregorianToJD(III)D
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 482
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/IndianCalendar;->computeGregorianMonthStart(II)I

    move-result v0

    add-int/2addr v0, p3

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 489
    const-string v0, "indian"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 14
    .param p1, "julianDay"    # I

    .line 335
    invoke-virtual {p0, p1}, Landroid/icu/util/IndianCalendar;->computeGregorianFields(I)V

    .line 336
    invoke-virtual {p0}, Landroid/icu/util/IndianCalendar;->getGregorianYear()I

    move-result v0

    .line 337
    .local v0, "gregorianYear":I
    add-int/lit8 v1, v0, -0x4e

    .line 339
    .local v1, "IndianYear":I
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v0, v2, v3}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    move-result-wide v4

    .line 340
    .local v4, "jdAtStartOfGregYear":D
    int-to-double v6, p1

    sub-double/2addr v6, v4

    double-to-int v6, v6

    .line 342
    .local v6, "yday":I
    const/16 v7, 0x50

    const/16 v8, 0x1f

    const/16 v9, 0x1e

    if-ge v6, v7, :cond_2e

    .line 344
    add-int/lit8 v1, v1, -0x1

    .line 345
    add-int/lit8 v7, v0, -0x1

    invoke-static {v7}, Landroid/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_25

    goto :goto_26

    :cond_25
    move v8, v9

    .line 346
    .local v8, "leapMonth":I
    :goto_26
    add-int/lit16 v7, v8, 0x9b

    add-int/lit8 v7, v7, 0x5a

    add-int/lit8 v7, v7, 0xa

    add-int/2addr v6, v7

    goto :goto_38

    .line 348
    .end local v8    # "leapMonth":I
    :cond_2e
    invoke-static {v0}, Landroid/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v7

    if-eqz v7, :cond_35

    goto :goto_36

    :cond_35
    move v8, v9

    .line 349
    .restart local v8    # "leapMonth":I
    :goto_36
    add-int/lit8 v6, v6, -0x50

    .line 352
    :goto_38
    const/4 v7, 0x6

    if-ge v6, v8, :cond_3f

    .line 353
    const/4 v9, 0x0

    .line 354
    .local v9, "IndianMonth":I
    add-int/lit8 v10, v6, 0x1

    .local v10, "IndianDayOfMonth":I
    goto :goto_58

    .line 356
    .end local v9    # "IndianMonth":I
    .end local v10    # "IndianDayOfMonth":I
    :cond_3f
    sub-int v9, v6, v8

    .line 357
    .local v9, "mday":I
    const/16 v10, 0x9b

    if-ge v9, v10, :cond_4e

    .line 358
    div-int/lit8 v10, v9, 0x1f

    add-int/2addr v10, v3

    .line 359
    .local v10, "IndianMonth":I
    rem-int/lit8 v11, v9, 0x1f

    add-int/2addr v11, v3

    move v9, v10

    move v10, v11

    .local v11, "IndianDayOfMonth":I
    goto :goto_58

    .line 361
    .end local v10    # "IndianMonth":I
    .end local v11    # "IndianDayOfMonth":I
    :cond_4e
    add-int/lit16 v9, v9, -0x9b

    .line 362
    div-int/lit8 v10, v9, 0x1e

    add-int/2addr v10, v7

    .line 363
    .restart local v10    # "IndianMonth":I
    rem-int/lit8 v11, v9, 0x1e

    add-int/2addr v11, v3

    move v9, v10

    move v10, v11

    .line 367
    .local v9, "IndianMonth":I
    .local v10, "IndianDayOfMonth":I
    :goto_58
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 368
    const/16 v2, 0x13

    invoke-virtual {p0, v2, v1}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 369
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 370
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v9}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 371
    const/16 v2, 0x17

    invoke-virtual {p0, v2, v9}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 372
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v10}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 373
    add-int/lit8 v2, v6, 0x1

    invoke-virtual {p0, v7, v2}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    .line 374
    return-void
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    .line 422
    if-ltz p2, :cond_6

    const/16 v0, 0xb

    if-le p2, v0, :cond_b

    .line 423
    :cond_6
    div-int/lit8 v0, p2, 0xc

    add-int/2addr p1, v0

    .line 424
    rem-int/lit8 p2, p2, 0xc

    .line 427
    :cond_b
    add-int/lit8 v0, p2, 0x1

    .line 429
    .local v0, "imonth":I
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/icu/util/IndianCalendar;->IndianToJD(III)D

    move-result-wide v1

    .line 431
    .local v1, "jd":D
    double-to-int v3, v1

    return v3
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4

    .line 291
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 292
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_12

    .line 295
    .end local v0    # "year":I
    :cond_e
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/IndianCalendar;->internalGet(II)I

    move-result v0

    .line 298
    .restart local v0    # "year":I
    :goto_12
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 410
    sget-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 6
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 312
    const/4 v0, 0x1

    if-ltz p2, :cond_7

    const/16 v1, 0xb

    if-le p2, v1, :cond_13

    .line 313
    :cond_7
    new-array v1, v0, [I

    .line 314
    .local v1, "remainder":[I
    const/16 v2, 0xc

    invoke-static {p2, v2, v1}, Landroid/icu/util/IndianCalendar;->floorDivide(II[I)I

    move-result v2

    add-int/2addr p1, v2

    .line 315
    const/4 v2, 0x0

    aget p2, v1, v2

    .line 318
    .end local v1    # "remainder":[I
    :cond_13
    add-int/lit8 v1, p1, 0x4e

    invoke-static {v1}, Landroid/icu/util/IndianCalendar;->isGregorianLeapYear(I)Z

    move-result v1

    const/16 v2, 0x1f

    if-eqz v1, :cond_20

    if-nez p2, :cond_20

    .line 319
    return v2

    .line 322
    :cond_20
    if-lt p2, v0, :cond_26

    const/4 v0, 0x5

    if-gt p2, v0, :cond_26

    .line 323
    return v2

    .line 326
    :cond_26
    const/16 v0, 0x1e

    return v0
.end method

.method protected whitelist test-api handleGetYearLength(I)I
    .registers 3
    .param p1, "extendedYear"    # I

    .line 305
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    move-result v0

    return v0
.end method
