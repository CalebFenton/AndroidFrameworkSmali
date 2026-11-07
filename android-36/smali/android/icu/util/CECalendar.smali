.class abstract Landroid/icu/util/CECalendar;
.super Landroid/icu/util/Calendar;
.source "CECalendar.java"


# static fields
.field private static final greylist-max-o LIMITS:[[I

.field private static final whitelist serialVersionUID:J = -0xddf1b4470f5acbfL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 26

    .line 24
    const/4 v0, 0x0

    const/4 v1, 0x1

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v2

    const v3, 0x4c4b40

    filled-new-array {v1, v1, v3, v3}, [I

    move-result-object v4

    const/16 v5, 0xc

    move-object v6, v4

    filled-new-array {v0, v0, v5, v5}, [I

    move-result-object v4

    const/16 v7, 0x34

    const/16 v8, 0x35

    filled-new-array {v1, v1, v7, v8}, [I

    move-result-object v7

    move-object v8, v6

    new-array v6, v0, [I

    const/16 v9, 0x1e

    const/4 v10, 0x5

    filled-new-array {v1, v1, v10, v9}, [I

    move-result-object v9

    const/16 v11, 0x16d

    const/16 v12, 0x16e

    filled-new-array {v1, v1, v11, v12}, [I

    move-result-object v11

    move-object v12, v7

    move-object v7, v9

    new-array v9, v0, [I

    const/4 v13, -0x1

    filled-new-array {v13, v13, v1, v10}, [I

    move-result-object v10

    move-object v1, v8

    move-object v8, v11

    new-array v11, v0, [I

    move-object v13, v12

    new-array v12, v0, [I

    move-object v14, v13

    new-array v13, v0, [I

    move-object v15, v14

    new-array v14, v0, [I

    move-object/from16 v16, v15

    new-array v15, v0, [I

    new-array v5, v0, [I

    new-array v3, v0, [I

    move-object/from16 v19, v1

    new-array v1, v0, [I

    move-object/from16 v20, v1

    const v1, -0x4c4b40

    move-object/from16 v21, v2

    move-object/from16 v17, v3

    move-object/from16 v3, v19

    const v2, 0x4c4b40

    const/16 v18, 0xc

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v19

    move-object/from16 v22, v3

    new-array v3, v0, [I

    filled-new-array {v1, v1, v2, v2}, [I

    move-result-object v1

    new-array v2, v0, [I

    move-object/from16 v23, v1

    new-array v1, v0, [I

    move-object/from16 v24, v1

    new-array v1, v0, [I

    move-object/from16 v25, v1

    move/from16 v1, v18

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    move-object/from16 v18, v16

    move-object/from16 v16, v5

    move-object/from16 v5, v18

    move-object/from16 v18, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v22

    move-object/from16 v22, v2

    move-object/from16 v2, v21

    move-object/from16 v21, v23

    move-object/from16 v23, v24

    move-object/from16 v24, v25

    move-object/from16 v25, v0

    filled-new-array/range {v2 .. v25}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    return-void
.end method

.method protected constructor greylist-max-o <init>()V
    .registers 3

    .line 62
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 63
    return-void
.end method

.method protected constructor greylist-max-o <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 133
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 134
    invoke-virtual {p0, p1, p2, p3}, Landroid/icu/util/CECalendar;->set(III)V

    .line 135
    return-void
.end method

.method protected constructor greylist-max-o <init>(IIIIII)V
    .registers 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    .line 163
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 164
    invoke-virtual/range {p0 .. p6}, Landroid/icu/util/CECalendar;->set(IIIIII)V

    .line 165
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 72
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 73
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CECalendar;->setTimeInMillis(J)V

    .line 119
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 104
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CECalendar;->setTimeInMillis(J)V

    .line 106
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 92
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 93
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 144
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 145
    invoke-virtual {p0, p1}, Landroid/icu/util/CECalendar;->setTime(Ljava/util/Date;)V

    .line 146
    return-void
.end method

.method protected constructor greylist-max-o <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 82
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/CECalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 83
    return-void
.end method

.method public static greylist-max-o ceToJD(JIII)I
    .registers 9
    .param p0, "year"    # J
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "jdEpochOffset"    # I

    .line 245
    if-ltz p2, :cond_9

    .line 246
    div-int/lit8 v0, p2, 0xd

    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 247
    rem-int/lit8 p2, p2, 0xd

    goto :goto_15

    .line 249
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 250
    div-int/lit8 v0, p2, 0xd

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    add-long/2addr p0, v0

    .line 251
    rem-int/lit8 v0, p2, 0xd

    add-int/lit8 p2, v0, 0xc

    .line 253
    :goto_15
    int-to-long v0, p4

    const-wide/16 v2, 0x16d

    mul-long/2addr v2, p0

    add-long/2addr v0, v2

    .line 256
    const-wide/16 v2, 0x4

    invoke-static {p0, p1, v2, v3}, Landroid/icu/util/CECalendar;->floorDivide(JJ)J

    move-result-wide v2

    add-long/2addr v0, v2

    mul-int/lit8 v2, p2, 0x1e

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, p3

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    long-to-int v0, v0

    .line 253
    return v0
.end method

.method public static greylist-max-o jdToCE(II[I)V
    .registers 12
    .param p0, "julianDay"    # I
    .param p1, "jdEpochOffset"    # I
    .param p2, "fields"    # [I

    .line 268
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 270
    .local v1, "r4":[I
    sub-int v2, p0, p1

    const/16 v3, 0x5b5

    invoke-static {v2, v3, v1}, Landroid/icu/util/CECalendar;->floorDivide(II[I)I

    move-result v2

    .line 273
    .local v2, "c4":I
    mul-int/lit8 v3, v2, 0x4

    const/4 v4, 0x0

    aget v5, v1, v4

    const/16 v6, 0x16d

    div-int/2addr v5, v6

    aget v7, v1, v4

    const/16 v8, 0x5b4

    div-int/2addr v7, v8

    sub-int/2addr v5, v7

    add-int/2addr v3, v5

    aput v3, p2, v4

    .line 275
    aget v3, v1, v4

    if-ne v3, v8, :cond_21

    goto :goto_25

    :cond_21
    aget v3, v1, v4

    rem-int/lit16 v6, v3, 0x16d

    .line 278
    .local v6, "doy":I
    :goto_25
    div-int/lit8 v3, v6, 0x1e

    aput v3, p2, v0

    .line 280
    rem-int/lit8 v3, v6, 0x1e

    add-int/2addr v3, v0

    const/4 v0, 0x2

    aput v3, p2, v0

    .line 281
    return-void
.end method


# virtual methods
.method protected abstract greylist-max-o getJDEpochOffset()I
.end method

.method public whitelist test-api getTemporalMonthCode()Ljava/lang/String;
    .registers 3

    .line 297
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/CECalendar;->get(I)I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    const-string v0, "M13"

    return-object v0

    .line 298
    :cond_c
    invoke-super {p0}, Landroid/icu/util/Calendar;->getTemporalMonthCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 8
    .param p1, "eyear"    # I
    .param p2, "emonth"    # I
    .param p3, "useMonth"    # Z

    .line 185
    int-to-long v0, p1

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/icu/util/CECalendar;->getJDEpochOffset()I

    move-result v3

    invoke-static {v0, v1, p2, v2, v3}, Landroid/icu/util/CECalendar;->ceToJD(JIII)I

    move-result v0

    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 192
    sget-object v0, Landroid/icu/util/CECalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 4
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 212
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0xd

    if-eqz v0, :cond_9

    .line 215
    const/16 v0, 0x1e

    return v0

    .line 220
    :cond_9
    rem-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x5

    return v0
.end method

.method public whitelist test-api setTemporalMonthCode(Ljava/lang/String;)V
    .registers 4
    .param p1, "temporalMonth"    # Ljava/lang/String;

    .line 310
    const-string v0, "M13"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 311
    const/4 v0, 0x2

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CECalendar;->set(II)V

    .line 312
    const/16 v0, 0x16

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/CECalendar;->set(II)V

    .line 313
    return-void

    .line 315
    :cond_15
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->setTemporalMonthCode(Ljava/lang/String;)V

    .line 316
    return-void
.end method
