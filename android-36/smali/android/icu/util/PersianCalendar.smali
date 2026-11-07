.class public Landroid/icu/util/PersianCalendar;
.super Landroid/icu/util/Calendar;
.source "PersianCalendar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final greylist-max-o LIMITS:[[I

.field private static final greylist-max-o MONTH_COUNT:[[I

.field private static final greylist-max-o PERSIAN_EPOCH:I = 0x1dbaa0

.field private static final whitelist serialVersionUID:J = -0x5d5c320ee73c81dbL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 41

    .line 77
    const/16 v0, 0x1f

    const/4 v1, 0x0

    filled-new-array {v0, v0, v1}, [I

    move-result-object v2

    filled-new-array {v0, v0, v0}, [I

    move-result-object v3

    const/16 v4, 0x3e

    filled-new-array {v0, v0, v4}, [I

    move-result-object v4

    const/16 v5, 0x5d

    filled-new-array {v0, v0, v5}, [I

    move-result-object v5

    const/16 v6, 0x7c

    filled-new-array {v0, v0, v6}, [I

    move-result-object v6

    const/16 v7, 0x9b

    filled-new-array {v0, v0, v7}, [I

    move-result-object v7

    const/16 v8, 0xba

    const/16 v9, 0x1e

    filled-new-array {v9, v9, v8}, [I

    move-result-object v8

    const/16 v10, 0xd8

    filled-new-array {v9, v9, v10}, [I

    move-result-object v10

    const/16 v11, 0xf6

    filled-new-array {v9, v9, v11}, [I

    move-result-object v11

    const/16 v12, 0x114

    filled-new-array {v9, v9, v12}, [I

    move-result-object v12

    const/16 v13, 0x132

    filled-new-array {v9, v9, v13}, [I

    move-result-object v13

    const/16 v14, 0x150

    const/16 v15, 0x1d

    filled-new-array {v15, v9, v14}, [I

    move-result-object v9

    move-object/from16 v40, v13

    move-object v13, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object/from16 v12, v40

    filled-new-array/range {v2 .. v13}, [[I

    move-result-object v2

    sput-object v2, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    .line 270
    filled-new-array {v1, v1, v1, v1}, [I

    move-result-object v16

    const v2, -0x4c4b40

    const v3, 0x4c4b40

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v17

    const/16 v4, 0xb

    filled-new-array {v1, v1, v4, v4}, [I

    move-result-object v18

    const/16 v5, 0x34

    const/16 v6, 0x35

    const/4 v7, 0x1

    filled-new-array {v7, v7, v5, v6}, [I

    move-result-object v19

    new-array v5, v1, [I

    filled-new-array {v7, v7, v15, v0}, [I

    move-result-object v21

    const/16 v0, 0x16d

    const/16 v6, 0x16e

    filled-new-array {v7, v7, v0, v6}, [I

    move-result-object v22

    new-array v0, v1, [I

    const/4 v6, -0x1

    const/4 v7, 0x5

    filled-new-array {v6, v6, v7, v7}, [I

    move-result-object v24

    new-array v6, v1, [I

    new-array v7, v1, [I

    new-array v8, v1, [I

    new-array v9, v1, [I

    new-array v10, v1, [I

    new-array v11, v1, [I

    new-array v12, v1, [I

    new-array v13, v1, [I

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v33

    new-array v14, v1, [I

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v35

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v15, v1, [I

    filled-new-array {v1, v1, v4, v4}, [I

    move-result-object v39

    move-object/from16 v23, v0

    move-object/from16 v36, v2

    move-object/from16 v37, v3

    move-object/from16 v20, v5

    move-object/from16 v25, v6

    move-object/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v9

    move-object/from16 v29, v10

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    move-object/from16 v34, v14

    move-object/from16 v38, v15

    filled-new-array/range {v16 .. v39}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 113
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 114
    return-void
.end method

.method public constructor greylist-max-o <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 230
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 231
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 232
    return-void
.end method

.method public constructor greylist-max-o <init>(IIIIII)V
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 259
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 260
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 261
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 262
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 263
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/PersianCalendar;->set(II)V

    .line 264
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 128
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 129
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->setTimeInMillis(J)V

    .line 194
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 175
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 176
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->setTimeInMillis(J)V

    .line 177
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 160
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 209
    invoke-virtual {p0, p1}, Landroid/icu/util/PersianCalendar;->setTime(Ljava/util/Date;)V

    .line 210
    return-void
.end method

.method public constructor greylist <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 144
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/PersianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 145
    return-void
.end method

.method private static final greylist-max-o isLeapYear(I)Z
    .registers 6
    .param p0, "year"    # I

    .line 318
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 319
    .local v1, "remainder":[I
    mul-int/lit8 v2, p0, 0x19

    add-int/lit8 v2, v2, 0xb

    const/16 v3, 0x21

    invoke-static {v2, v3, v1}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    .line 320
    const/4 v2, 0x0

    aget v3, v1, v2

    const/16 v4, 0x8

    if-ge v3, v4, :cond_14

    goto :goto_15

    :cond_14
    move v0, v2

    :goto_15
    return v0
.end method


# virtual methods
.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    const-string v0, "persian"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 14
    .param p1, "julianDay"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 428
    const v0, 0x1dbaa0

    sub-int v0, p1, v0

    int-to-long v0, v0

    .line 429
    .local v0, "daysSinceEpoch":J
    const-wide/16 v2, 0x21

    mul-long v4, v0, v2

    const-wide/16 v6, 0x3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x2f15

    invoke-static {v4, v5, v6, v7}, Landroid/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    .line 431
    .local v4, "year":I
    int-to-long v6, v4

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x16d

    mul-long/2addr v6, v8

    const-wide/16 v8, 0x8

    int-to-long v10, v4

    mul-long/2addr v10, v8

    const-wide/16 v8, 0x15

    add-long/2addr v10, v8

    invoke-static {v10, v11, v2, v3}, Landroid/icu/util/PersianCalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v6, v2

    .line 432
    .local v6, "farvardin1":J
    sub-long v2, v0, v6

    long-to-int v2, v2

    .line 433
    .local v2, "dayOfYear":I
    const/16 v3, 0xd8

    if-ge v2, v3, :cond_33

    .line 434
    div-int/lit8 v3, v2, 0x1f

    .local v3, "month":I
    goto :goto_37

    .line 436
    .end local v3    # "month":I
    :cond_33
    add-int/lit8 v3, v2, -0x6

    div-int/lit8 v3, v3, 0x1e

    .line 438
    .restart local v3    # "month":I
    :goto_37
    sget-object v8, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v8, v8, v3

    const/4 v9, 0x2

    aget v8, v8, v9

    sub-int v8, v2, v8

    add-int/2addr v8, v5

    .line 439
    .local v8, "dayOfMonth":I
    add-int/2addr v2, v5

    .line 441
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v10}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 442
    invoke-virtual {p0, v5, v4}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 443
    const/16 v5, 0x13

    invoke-virtual {p0, v5, v4}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 444
    invoke-virtual {p0, v9, v3}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 445
    const/16 v5, 0x17

    invoke-virtual {p0, v5, v3}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 446
    const/4 v5, 0x5

    invoke-virtual {p0, v5, v8}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 447
    const/4 v5, 0x6

    invoke-virtual {p0, v5, v2}, Landroid/icu/util/PersianCalendar;->internalSet(II)V

    .line 448
    return-void
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 7
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 375
    if-ltz p2, :cond_6

    const/16 v0, 0xb

    if-le p2, v0, :cond_13

    .line 376
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 377
    .local v0, "rem":[I
    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    .line 378
    const/4 v1, 0x0

    aget p2, v0, v1

    .line 381
    .end local v0    # "rem":[I
    :cond_13
    add-int/lit8 v0, p1, -0x1

    mul-int/lit16 v0, v0, 0x16d

    const v1, 0x1dba9f

    add-int/2addr v0, v1

    mul-int/lit8 v1, p1, 0x8

    add-int/lit8 v1, v1, 0x15

    const/16 v2, 0x21

    invoke-static {v1, v2}, Landroid/icu/util/PersianCalendar;->floorDivide(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 382
    .local v0, "julianDay":I
    if-eqz p2, :cond_30

    .line 383
    sget-object v1, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v1, v1, p2

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    .line 385
    :cond_30
    return v0
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 400
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/PersianCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_12

    .line 402
    .end local v0    # "year":I
    :cond_e
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/PersianCalendar;->internalGet(II)I

    move-result v0

    .line 404
    .restart local v0    # "year":I
    :goto_12
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 306
    sget-object v0, Landroid/icu/util/PersianCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 5
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 341
    if-ltz p2, :cond_6

    const/16 v0, 0xb

    if-le p2, v0, :cond_13

    .line 342
    :cond_6
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 343
    .local v0, "rem":[I
    const/16 v1, 0xc

    invoke-static {p2, v1, v0}, Landroid/icu/util/PersianCalendar;->floorDivide(II[I)I

    move-result v1

    add-int/2addr p1, v1

    .line 344
    const/4 v1, 0x0

    aget p2, v0, v1

    .line 347
    .end local v0    # "rem":[I
    :cond_13
    sget-object v0, Landroid/icu/util/PersianCalendar;->MONTH_COUNT:[[I

    aget-object v0, v0, p2

    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method protected whitelist test-api handleGetYearLength(I)I
    .registers 3
    .param p1, "extendedYear"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    invoke-static {p1}, Landroid/icu/util/PersianCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0x16e

    goto :goto_b

    :cond_9
    const/16 v0, 0x16d

    :goto_b
    return v0
.end method
