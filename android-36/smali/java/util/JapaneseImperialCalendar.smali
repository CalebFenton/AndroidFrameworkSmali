.class Ljava/util/JapaneseImperialCalendar;
.super Ljava/util/Calendar;
.source "JapaneseImperialCalendar.java"


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field public static final blacklist BEFORE_MEIJI:I = 0x0

.field private static final blacklist BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

.field private static final blacklist EPOCH_OFFSET:I = 0xaf93b

.field public static final blacklist HEISEI:I = 0x4

.field static final blacklist LEAST_MAX_VALUES:[I

.field static final blacklist MAX_VALUES:[I

.field public static final blacklist MEIJI:I = 0x1

.field static final blacklist MIN_VALUES:[I

.field private static final blacklist ONE_DAY:J = 0x5265c00L

.field private static final blacklist ONE_HOUR:I = 0x36ee80

.field private static final blacklist ONE_MINUTE:I = 0xea60

.field private static final blacklist ONE_SECOND:I = 0x3e8

.field public static final blacklist REIWA:I = 0x5

.field public static final blacklist SHOWA:I = 0x3

.field public static final blacklist TAISHO:I = 0x2

.field private static final blacklist currentEra:I

.field private static final blacklist eras:[Lsun/util/calendar/Era;

.field private static final blacklist gcal:Lsun/util/calendar/Gregorian;

.field private static final blacklist jcal:Lsun/util/calendar/LocalGregorianCalendar;

.field private static final whitelist serialVersionUID:J = -0x2eb15d25e1c59a19L

.field private static final blacklist sinceFixedDates:[J


# instance fields
.field private transient blacklist cachedFixedDate:J

.field private transient blacklist jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

.field private transient blacklist originalFields:[I

.field private transient blacklist zoneOffsets:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 16

    .line 69
    nop

    .line 120
    nop

    .line 121
    const-string v0, "japanese"

    invoke-static {v0}, Lsun/util/calendar/CalendarSystem;->forName(Ljava/lang/String;)Lsun/util/calendar/CalendarSystem;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar;

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    .line 125
    invoke-static {}, Lsun/util/calendar/CalendarSystem;->getGregorianCalendar()Lsun/util/calendar/Gregorian;

    move-result-object v0

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    .line 128
    new-instance v1, Lsun/util/calendar/Era;

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v6, 0x0

    const-string v2, "BeforeMeiji"

    const-string v3, "BM"

    invoke-direct/range {v1 .. v6}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    sput-object v1, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    .line 167
    const/16 v0, 0x11

    new-array v1, v0, [I

    fill-array-data v1, :array_110

    sput-object v1, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    .line 186
    new-array v1, v0, [I

    fill-array-data v1, :array_136

    sput-object v1, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    .line 205
    new-array v0, v0, [I

    fill-array-data v0, :array_15c

    sput-object v0, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    .line 231
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar;->getEras()[Lsun/util/calendar/Era;

    move-result-object v0

    .line 232
    .local v0, "es":[Lsun/util/calendar/Era;
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 233
    .local v1, "length":I
    new-array v3, v1, [Lsun/util/calendar/Era;

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    .line 234
    new-array v3, v1, [J

    sput-object v3, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    .line 238
    const/4 v3, 0x0

    .line 241
    .local v3, "index":I
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v5, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    invoke-virtual {v5, v6}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v5

    aput-wide v5, v4, v3

    .line 242
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v5, v3, 0x1

    .end local v3    # "index":I
    .local v5, "index":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->BEFORE_MEIJI_ERA:Lsun/util/calendar/Era;

    aput-object v6, v4, v3

    .line 243
    array-length v3, v0

    const/4 v4, 0x0

    move v6, v4

    :goto_64
    if-ge v6, v3, :cond_80

    aget-object v7, v0, v6

    .line 251
    .local v7, "e":Lsun/util/calendar/Era;
    invoke-virtual {v7}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v8

    .line 252
    .local v8, "d":Lsun/util/calendar/CalendarDate;
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    sget-object v10, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v10, v8}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    aput-wide v10, v9, v5

    .line 253
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v10, v5, 0x1

    .end local v5    # "index":I
    .local v10, "index":I
    aput-object v7, v9, v5

    .line 243
    .end local v7    # "e":Lsun/util/calendar/Era;
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    add-int/lit8 v6, v6, 0x1

    move v5, v10

    goto :goto_64

    .line 257
    .end local v10    # "index":I
    .restart local v5    # "index":I
    :cond_80
    const/4 v3, 0x5

    sput v3, Ljava/util/JapaneseImperialCalendar;->currentEra:I

    .line 259
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    sget-object v7, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v7, v7

    sub-int/2addr v7, v2

    aput v7, v6, v4

    aput v7, v3, v4

    .line 264
    const v3, 0x7fffffff

    .line 265
    .local v3, "year":I
    const v4, 0x7fffffff

    .line 266
    .local v4, "dayOfYear":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v7, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v7}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v6

    .line 267
    .local v6, "date":Lsun/util/calendar/CalendarDate;
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_9e
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v8, v8

    if-ge v7, v8, :cond_106

    .line 268
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v8, v8, v7

    .line 269
    .local v8, "fd":J
    sget-object v10, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v10, v10, v7

    invoke-virtual {v10}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v10

    .line 270
    .local v10, "transitionDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v11

    invoke-virtual {v6, v11, v2, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 271
    sget-object v11, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v11, v6}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 272
    .local v11, "fdd":J
    cmp-long v13, v8, v11

    if-eqz v13, :cond_c8

    .line 273
    sub-long v13, v8, v11

    long-to-int v13, v13

    add-int/2addr v13, v2

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 275
    :cond_c8
    invoke-virtual {v10}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v13

    const/16 v14, 0xc

    const/16 v15, 0x1f

    invoke-virtual {v6, v13, v14, v15}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 276
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v13, v6}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    .line 277
    cmp-long v13, v8, v11

    if-eqz v13, :cond_e5

    .line 278
    sub-long v13, v11, v8

    long-to-int v13, v13

    add-int/2addr v13, v2

    invoke-static {v13, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 280
    :cond_e5
    const-wide/16 v13, 0x1

    sub-long v13, v8, v13

    invoke-static {v13, v14}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v13

    .line 281
    .local v13, "lgd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v14

    .line 286
    .local v14, "y":I
    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v15

    if-ne v15, v2, :cond_fd

    invoke-virtual {v13}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v15

    if-eq v15, v2, :cond_ff

    .line 287
    :cond_fd
    add-int/lit8 v14, v14, -0x1

    .line 289
    :cond_ff
    invoke-static {v14, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 267
    .end local v8    # "fd":J
    .end local v10    # "transitionDate":Lsun/util/calendar/CalendarDate;
    .end local v11    # "fdd":J
    .end local v13    # "lgd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v14    # "y":I
    add-int/lit8 v7, v7, 0x1

    goto :goto_9e

    .line 291
    .end local v7    # "i":I
    :cond_106
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aput v3, v7, v2

    .line 292
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v7, 0x6

    aput v4, v2, v7

    .line 293
    .end local v0    # "es":[Lsun/util/calendar/Era;
    .end local v1    # "length":I
    .end local v3    # "year":I
    .end local v4    # "dayOfYear":I
    .end local v5    # "index":I
    .end local v6    # "date":Lsun/util/calendar/CalendarDate;
    return-void

    :array_110
    .array-data 4
        0x0
        -0x116bc36f
        0x0
        0x1
        0x0
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x2ca1c80
        0x0
    .end array-data

    :array_136
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x4
        0x1c
        0x0
        0x7
        0x4
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x124f80
    .end array-data

    :array_15c
    .array-data 4
        0x0
        0x116bd2d2
        0xb
        0x35
        0x6
        0x1f
        0x16e
        0x7
        0x6
        0x1
        0xb
        0x17
        0x3b
        0x3b
        0x3e7
        0x3010b00
        0x6ddd00
    .end array-data
.end method

.method constructor blacklist <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 322
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1512
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 323
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 325
    return-void
.end method

.method constructor blacklist <init>(Ljava/util/TimeZone;Ljava/util/Locale;Z)V
    .registers 6
    .param p1, "zone"    # Ljava/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;
    .param p3, "flag"    # Z

    .line 335
    invoke-direct {p0, p1, p2}, Ljava/util/Calendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    .line 1512
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 336
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 337
    return-void
.end method

.method private blacklist actualMonthLength()I
    .registers 8

    .line 2182
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v0

    .line 2183
    .local v0, "length":I
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v1}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v1

    .line 2184
    .local v1, "eraIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_31

    .line 2185
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v2, v2, v1

    .line 2186
    .local v2, "transitionFixedDate":J
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .line 2187
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    iget-wide v5, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v5, v2, v5

    if-gtz v5, :cond_2b

    .line 2188
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v0, v5

    goto :goto_31

    .line 2190
    :cond_2b
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v5

    add-int/lit8 v0, v5, -0x1

    .line 2193
    .end local v2    # "transitionFixedDate":J
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    :cond_31
    :goto_31
    return v0
.end method

.method private blacklist computeFields(II)I
    .registers 35
    .param p1, "fieldMask"    # I
    .param p2, "tzMask"    # I

    .line 1558
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x0

    .line 1559
    .local v3, "zoneOffset":I
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    .line 1560
    .local v4, "tz":Ljava/util/TimeZone;
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    const/4 v6, 0x2

    if-nez v5, :cond_14

    .line 1561
    new-array v5, v6, [I

    iput-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1563
    :cond_14
    const v5, 0x18000

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v2, v5, :cond_43

    .line 1567
    instance-of v9, v4, Llibcore/util/ZoneInfo;

    if-eqz v9, :cond_2b

    .line 1568
    move-object v9, v4

    check-cast v9, Llibcore/util/ZoneInfo;

    iget-wide v10, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    iget-object v12, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v9, v10, v11, v12}, Llibcore/util/ZoneInfo;->getOffsetsByUtcTime(J[I)I

    move-result v3

    goto :goto_43

    .line 1571
    :cond_2b
    iget-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {v4, v9, v10}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v3

    .line 1572
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v4}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    aput v10, v9, v7

    .line 1573
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v10, v10, v7

    sub-int v10, v3, v10

    aput v10, v9, v8

    .line 1576
    :cond_43
    :goto_43
    const/16 v9, 0x10

    const/16 v10, 0xf

    if-eqz v2, :cond_6f

    .line 1577
    invoke-static {v2, v10}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_57

    .line 1578
    iget-object v11, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v7

    .line 1580
    :cond_57
    invoke-static {v2, v9}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_65

    .line 1581
    iget-object v11, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v12

    aput v12, v11, v8

    .line 1583
    :cond_65
    iget-object v11, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v11, v11, v7

    iget-object v12, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v12, v12, v8

    add-int v3, v11, v12

    .line 1589
    :cond_6f
    int-to-long v11, v3

    const-wide/32 v13, 0x5265c00

    div-long/2addr v11, v13

    .line 1590
    .local v11, "fixedDate":J
    const v15, 0x5265c00

    rem-int v15, v3, v15

    .line 1591
    .local v15, "timeOfDay":I
    move-wide/from16 v16, v13

    iget-wide v13, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    div-long v13, v13, v16

    add-long/2addr v11, v13

    .line 1592
    iget-wide v13, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    rem-long v13, v13, v16

    long-to-int v13, v13

    add-int/2addr v15, v13

    .line 1593
    int-to-long v13, v15

    cmp-long v13, v13, v16

    const-wide/16 v18, 0x1

    if-ltz v13, :cond_94

    .line 1594
    int-to-long v13, v15

    sub-long v13, v13, v16

    long-to-int v13, v13

    .line 1595
    .end local v15    # "timeOfDay":I
    .local v13, "timeOfDay":I
    add-long v11, v11, v18

    goto :goto_9e

    .line 1597
    .end local v13    # "timeOfDay":I
    .restart local v15    # "timeOfDay":I
    :cond_94
    :goto_94
    if-gez v15, :cond_9d

    .line 1598
    int-to-long v13, v15

    add-long v13, v13, v16

    long-to-int v15, v13

    .line 1599
    sub-long v11, v11, v18

    goto :goto_94

    .line 1597
    :cond_9d
    move v13, v15

    .line 1602
    .end local v15    # "timeOfDay":I
    .restart local v13    # "timeOfDay":I
    :goto_9e
    const-wide/32 v14, 0xaf93b

    add-long/2addr v11, v14

    .line 1605
    iget-wide v14, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    cmp-long v14, v11, v14

    if-nez v14, :cond_ae

    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-gez v14, :cond_b7

    .line 1606
    :cond_ae
    sget-object v14, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v14, v15, v11, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1607
    iput-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1609
    :cond_b7
    iget-object v14, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v14}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v14

    .line 1610
    .local v14, "era":I
    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v15

    .line 1613
    .local v15, "year":I
    invoke-virtual {v0, v7, v14}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1614
    invoke-virtual {v0, v8, v15}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1615
    move/from16 v16, v5

    or-int/lit8 v5, v1, 0x3

    .line 1617
    .local v5, "mask":I
    move/from16 v17, v8

    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    .line 1618
    .local v8, "month":I
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v9

    .line 1621
    .local v9, "dayOfMonth":I
    and-int/lit16 v10, v1, 0xa4

    const/4 v7, 0x5

    if-eqz v10, :cond_f4

    .line 1623
    invoke-virtual {v0, v6, v8}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1624
    invoke-virtual {v0, v7, v9}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1625
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v6

    const/4 v10, 0x7

    invoke-virtual {v0, v10, v6}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1626
    or-int/lit16 v5, v5, 0xa4

    .line 1629
    :cond_f4
    and-int/lit16 v6, v1, 0x7e00

    if-eqz v6, :cond_14e

    .line 1631
    const/16 v6, 0x9

    const/16 v10, 0xb

    if-eqz v13, :cond_131

    .line 1632
    const v28, 0x36ee80

    div-int v7, v13, v28

    .line 1633
    .local v7, "hours":I
    invoke-virtual {v0, v10, v7}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1634
    div-int/lit8 v10, v7, 0xc

    invoke-virtual {v0, v6, v10}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1635
    rem-int/lit8 v6, v7, 0xc

    const/16 v10, 0xa

    invoke-virtual {v0, v10, v6}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1636
    rem-int v6, v13, v28

    .line 1637
    .local v6, "r":I
    const v10, 0xea60

    div-int v10, v6, v10

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v10}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1638
    const v2, 0xea60

    rem-int/2addr v6, v2

    .line 1639
    div-int/lit16 v2, v6, 0x3e8

    const/16 v10, 0xd

    invoke-virtual {v0, v10, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1640
    rem-int/lit16 v2, v6, 0x3e8

    const/16 v10, 0xe

    invoke-virtual {v0, v10, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1641
    .end local v6    # "r":I
    .end local v7    # "hours":I
    goto :goto_14c

    .line 1642
    :cond_131
    const/4 v2, 0x0

    invoke-virtual {v0, v10, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1643
    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1644
    const/16 v10, 0xa

    invoke-virtual {v0, v10, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1645
    const/16 v6, 0xc

    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1646
    const/16 v10, 0xd

    invoke-virtual {v0, v10, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1647
    const/16 v10, 0xe

    invoke-virtual {v0, v10, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1649
    :goto_14c
    or-int/lit16 v5, v5, 0x7e00

    .line 1653
    :cond_14e
    and-int v2, v1, v16

    if-eqz v2, :cond_168

    .line 1654
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    const/16 v22, 0x0

    aget v2, v2, v22

    const/16 v6, 0xf

    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1655
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v2, v2, v17

    const/16 v6, 0x10

    invoke-virtual {v0, v6, v2}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1656
    or-int v5, v5, v16

    .line 1659
    :cond_168
    and-int/lit16 v2, v1, 0x158

    if-eqz v2, :cond_37a

    .line 1661
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v2

    .line 1664
    .local v2, "normalizedYear":I
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    invoke-direct {v0, v6}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v6

    .line 1667
    .local v6, "transitionYear":Z
    if-eqz v6, :cond_191

    .line 1668
    iget-object v7, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v7, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v20

    .line 1669
    .local v20, "fixedDateJan1":J
    move v10, v3

    move-object v7, v4

    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .local v7, "tz":Ljava/util/TimeZone;
    .local v10, "zoneOffset":I
    sub-long v3, v11, v20

    long-to-int v3, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    move-object/from16 v16, v7

    move-wide/from16 v6, v20

    .local v3, "dayOfYear":I
    goto :goto_1c9

    .line 1670
    .end local v7    # "tz":Ljava/util/TimeZone;
    .end local v10    # "zoneOffset":I
    .end local v20    # "fixedDateJan1":J
    .local v3, "zoneOffset":I
    .restart local v4    # "tz":Ljava/util/TimeZone;
    :cond_191
    move v10, v3

    move-object v7, v4

    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .restart local v7    # "tz":Ljava/util/TimeZone;
    .restart local v10    # "zoneOffset":I
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v3, v3, v17

    if-ne v2, v3, :cond_1b6

    .line 1671
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move v4, v6

    move-object/from16 v16, v7

    .end local v6    # "transitionYear":Z
    .end local v7    # "tz":Ljava/util/TimeZone;
    .local v4, "transitionYear":Z
    .local v16, "tz":Ljava/util/TimeZone;
    const-wide/high16 v6, -0x8000000000000000L

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v3, v6, v7, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 1672
    .local v1, "dx":Lsun/util/calendar/CalendarDate;
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v20

    .line 1673
    .restart local v20    # "fixedDateJan1":J
    sub-long v6, v11, v20

    long-to-int v3, v6

    add-int/lit8 v3, v3, 0x1

    .line 1674
    .end local v1    # "dx":Lsun/util/calendar/CalendarDate;
    .local v3, "dayOfYear":I
    move-wide/from16 v6, v20

    goto :goto_1c9

    .line 1675
    .end local v3    # "dayOfYear":I
    .end local v4    # "transitionYear":Z
    .end local v16    # "tz":Ljava/util/TimeZone;
    .end local v20    # "fixedDateJan1":J
    .restart local v6    # "transitionYear":Z
    .restart local v7    # "tz":Ljava/util/TimeZone;
    :cond_1b6
    move v4, v6

    move-object/from16 v16, v7

    .end local v6    # "transitionYear":Z
    .end local v7    # "tz":Ljava/util/TimeZone;
    .restart local v4    # "transitionYear":Z
    .restart local v16    # "tz":Ljava/util/TimeZone;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    long-to-int v3, v6

    .line 1676
    .restart local v3    # "dayOfYear":I
    int-to-long v6, v3

    sub-long v6, v11, v6

    add-long v20, v6, v18

    move-wide/from16 v6, v20

    .line 1678
    .local v6, "fixedDateJan1":J
    :goto_1c9
    if-eqz v4, :cond_1d9

    .line 1679
    iget-object v1, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v1, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v20

    move v1, v5

    move-wide/from16 v30, v20

    move/from16 v20, v4

    move-wide/from16 v4, v30

    goto :goto_1e1

    :cond_1d9
    move/from16 v20, v4

    move v1, v5

    .end local v4    # "transitionYear":Z
    .end local v5    # "mask":I
    .local v1, "mask":I
    .local v20, "transitionYear":Z
    int-to-long v4, v9

    sub-long v4, v11, v4

    add-long v4, v4, v18

    .line 1681
    .local v4, "fixedDateMonth1":J
    :goto_1e1
    move/from16 v21, v1

    .end local v1    # "mask":I
    .local v21, "mask":I
    const/4 v1, 0x6

    invoke-virtual {v0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1682
    add-int/lit8 v1, v9, -0x1

    const/16 v23, 0x7

    div-int/lit8 v1, v1, 0x7

    add-int/lit8 v1, v1, 0x1

    move/from16 v22, v3

    .end local v3    # "dayOfYear":I
    .local v22, "dayOfYear":I
    const/16 v3, 0x8

    invoke-virtual {v0, v3, v1}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1684
    invoke-direct {v0, v6, v7, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v1

    .line 1688
    .local v1, "weekOfYear":I
    const-wide/16 v25, 0x16d

    if-nez v1, :cond_2bb

    .line 1696
    move-wide/from16 v27, v6

    .end local v6    # "fixedDateJan1":J
    .local v27, "fixedDateJan1":J
    sub-long v6, v27, v18

    .line 1698
    .local v6, "fixedDec31":J
    invoke-static {v6, v7}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 1699
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    if-nez v20, :cond_22e

    move/from16 v23, v8

    .end local v8    # "month":I
    .local v23, "month":I
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v8

    invoke-direct {v0, v8}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v8

    if-nez v8, :cond_230

    .line 1700
    sub-long v24, v27, v25

    .line 1701
    .local v24, "prevJan1":J
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v8

    if-eqz v8, :cond_226

    .line 1702
    sub-long v24, v24, v18

    move/from16 v29, v9

    move-wide/from16 v8, v24

    move/from16 v24, v2

    goto/16 :goto_2b5

    .line 1701
    :cond_226
    move/from16 v29, v9

    move-wide/from16 v8, v24

    move/from16 v24, v2

    goto/16 :goto_2b5

    .line 1699
    .end local v23    # "month":I
    .end local v24    # "prevJan1":J
    .restart local v8    # "month":I
    :cond_22e
    move/from16 v23, v8

    .line 1704
    .end local v8    # "month":I
    .restart local v23    # "month":I
    :cond_230
    if-eqz v20, :cond_289

    .line 1705
    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v8

    move/from16 v29, v9

    move/from16 v9, v17

    .end local v9    # "dayOfMonth":I
    .local v29, "dayOfMonth":I
    if-ne v8, v9, :cond_27c

    .line 1711
    const/4 v8, 0x5

    if-le v14, v8, :cond_266

    .line 1712
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v9, v14, -0x1

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v8

    .line 1713
    .local v8, "pd":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v9

    if-ne v2, v9, :cond_263

    .line 1714
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    invoke-virtual {v3, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v9

    move/from16 v24, v2

    .end local v2    # "normalizedYear":I
    .local v24, "normalizedYear":I
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v9, v2}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_265

    .line 1713
    .end local v24    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_263
    move/from16 v24, v2

    .line 1716
    .end local v2    # "normalizedYear":I
    .end local v8    # "pd":Lsun/util/calendar/CalendarDate;
    .restart local v24    # "normalizedYear":I
    :goto_265
    goto :goto_270

    .line 1717
    .end local v24    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_266
    move/from16 v24, v2

    .end local v2    # "normalizedYear":I
    .restart local v24    # "normalizedYear":I
    const/4 v9, 0x1

    invoke-virtual {v3, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2, v9}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1719
    :goto_270
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1720
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .local v8, "prevJan1":J
    goto :goto_2b5

    .line 1722
    .end local v8    # "prevJan1":J
    .end local v24    # "normalizedYear":I
    .restart local v2    # "normalizedYear":I
    :cond_27c
    move/from16 v24, v2

    .end local v2    # "normalizedYear":I
    .restart local v24    # "normalizedYear":I
    sub-long v8, v27, v25

    .line 1723
    .restart local v8    # "prevJan1":J
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_2b5

    .line 1724
    sub-long v8, v8, v18

    goto :goto_2b5

    .line 1728
    .end local v8    # "prevJan1":J
    .end local v24    # "normalizedYear":I
    .end local v29    # "dayOfMonth":I
    .restart local v2    # "normalizedYear":I
    .restart local v9    # "dayOfMonth":I
    :cond_289
    move/from16 v24, v2

    move/from16 v29, v9

    .end local v2    # "normalizedYear":I
    .end local v9    # "dayOfMonth":I
    .restart local v24    # "normalizedYear":I
    .restart local v29    # "dayOfMonth":I
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v8}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    aget-object v2, v2, v8

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    .line 1729
    .local v2, "cd":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    invoke-virtual {v3, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v8

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    invoke-virtual {v8, v9}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1730
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v3}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1731
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1733
    .end local v2    # "cd":Lsun/util/calendar/CalendarDate;
    .restart local v8    # "prevJan1":J
    :cond_2b5
    :goto_2b5
    invoke-direct {v0, v8, v9, v6, v7}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v1

    .line 1734
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v6    # "fixedDec31":J
    .end local v8    # "prevJan1":J
    goto/16 :goto_368

    .line 1735
    .end local v23    # "month":I
    .end local v24    # "normalizedYear":I
    .end local v27    # "fixedDateJan1":J
    .end local v29    # "dayOfMonth":I
    .local v2, "normalizedYear":I
    .local v6, "fixedDateJan1":J
    .local v8, "month":I
    .restart local v9    # "dayOfMonth":I
    :cond_2bb
    move/from16 v24, v2

    move-wide/from16 v27, v6

    move/from16 v23, v8

    move/from16 v29, v9

    .end local v2    # "normalizedYear":I
    .end local v6    # "fixedDateJan1":J
    .end local v8    # "month":I
    .end local v9    # "dayOfMonth":I
    .restart local v23    # "month":I
    .restart local v24    # "normalizedYear":I
    .restart local v27    # "fixedDateJan1":J
    .restart local v29    # "dayOfMonth":I
    if-nez v20, :cond_2f7

    .line 1737
    const/16 v2, 0x34

    if-lt v1, v2, :cond_2f4

    .line 1738
    add-long v6, v27, v25

    .line 1739
    .local v6, "nextJan1":J
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v2

    if-eqz v2, :cond_2d5

    .line 1740
    add-long v6, v6, v18

    .line 1742
    :cond_2d5
    const-wide/16 v2, 0x6

    add-long/2addr v2, v6

    .line 1743
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v8

    .line 1742
    invoke-static {v2, v3, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v2

    .line 1744
    .local v2, "nextJan1st":J
    sub-long v8, v2, v6

    long-to-int v8, v8

    .line 1745
    .local v8, "ndays":I
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v8, v9, :cond_2f2

    const-wide/16 v17, 0x7

    sub-long v17, v2, v17

    cmp-long v9, v11, v17

    if-ltz v9, :cond_2f2

    .line 1747
    const/4 v1, 0x1

    .line 1749
    .end local v2    # "nextJan1st":J
    .end local v6    # "nextJan1":J
    .end local v8    # "ndays":I
    :cond_2f2
    goto/16 :goto_368

    .line 1737
    :cond_2f4
    move v3, v1

    goto/16 :goto_367

    .line 1751
    :cond_2f7
    iget-object v2, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1753
    .local v2, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    const/4 v9, 0x1

    if-ne v3, v9, :cond_319

    .line 1754
    invoke-virtual {v2, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1755
    invoke-virtual {v2, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v3

    invoke-virtual {v3, v9}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1756
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    .restart local v6    # "nextJan1":J
    goto :goto_345

    .line 1758
    .end local v6    # "nextJan1":J
    :cond_319
    invoke-static {v2}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v3

    add-int/2addr v3, v9

    .line 1759
    .local v3, "nextEraIndex":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 1760
    .local v6, "cd":Lsun/util/calendar/CalendarDate;
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v7, v7, v3

    invoke-virtual {v2, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1761
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v7

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    const/4 v9, 0x1

    invoke-virtual {v2, v9, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1762
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, v2}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1763
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v7, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v7

    move-wide v6, v7

    .line 1765
    .end local v3    # "nextEraIndex":I
    .local v6, "nextJan1":J
    :goto_345
    const-wide/16 v8, 0x6

    add-long/2addr v8, v6

    .line 1766
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v3

    .line 1765
    invoke-static {v8, v9, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v8

    .line 1767
    .local v8, "nextJan1st":J
    move v3, v1

    move-object/from16 v17, v2

    .end local v1    # "weekOfYear":I
    .end local v2    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v3, "weekOfYear":I
    .local v17, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sub-long v1, v8, v6

    long-to-int v1, v1

    .line 1768
    .local v1, "ndays":I
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v2

    if-lt v1, v2, :cond_367

    const-wide/16 v18, 0x7

    sub-long v18, v8, v18

    cmp-long v2, v11, v18

    if-ltz v2, :cond_367

    .line 1770
    const/4 v2, 0x1

    move v1, v2

    .end local v3    # "weekOfYear":I
    .local v2, "weekOfYear":I
    goto :goto_368

    .line 1774
    .end local v2    # "weekOfYear":I
    .end local v6    # "nextJan1":J
    .end local v8    # "nextJan1st":J
    .end local v17    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v1, "weekOfYear":I
    :cond_367
    :goto_367
    move v1, v3

    :goto_368
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1775
    const/4 v2, 0x4

    invoke-direct {v0, v4, v5, v11, v12}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 1776
    move/from16 v2, v21

    .end local v21    # "mask":I
    .local v2, "mask":I
    or-int/lit16 v2, v2, 0x158

    move v5, v2

    goto :goto_382

    .line 1659
    .end local v1    # "weekOfYear":I
    .end local v2    # "mask":I
    .end local v10    # "zoneOffset":I
    .end local v16    # "tz":Ljava/util/TimeZone;
    .end local v20    # "transitionYear":Z
    .end local v22    # "dayOfYear":I
    .end local v23    # "month":I
    .end local v24    # "normalizedYear":I
    .end local v27    # "fixedDateJan1":J
    .end local v29    # "dayOfMonth":I
    .local v3, "zoneOffset":I
    .local v4, "tz":Ljava/util/TimeZone;
    .restart local v5    # "mask":I
    .local v8, "month":I
    .restart local v9    # "dayOfMonth":I
    :cond_37a
    move v10, v3

    move-object/from16 v16, v4

    move v2, v5

    move/from16 v23, v8

    move/from16 v29, v9

    .line 1778
    .end local v3    # "zoneOffset":I
    .end local v4    # "tz":Ljava/util/TimeZone;
    .end local v8    # "month":I
    .end local v9    # "dayOfMonth":I
    .restart local v10    # "zoneOffset":I
    .restart local v16    # "tz":Ljava/util/TimeZone;
    .restart local v23    # "month":I
    .restart local v29    # "dayOfMonth":I
    :goto_382
    return v5
.end method

.method private static blacklist getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .registers 4
    .param p0, "fd"    # J

    .line 2153
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v1, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 2154
    .local v0, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v0, p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 2155
    return-object v0
.end method

.method private static blacklist getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .registers 4
    .param p0, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2235
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 2236
    .local v0, "era":Lsun/util/calendar/Era;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-lez v1, :cond_15

    .line 2237
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v1

    if-ne v2, v0, :cond_12

    .line 2238
    return v1

    .line 2236
    :cond_12
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 2241
    .end local v1    # "i":I
    :cond_15
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist getFixedDate(III)J
    .registers 27
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "fieldMask"    # I

    .line 1961
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    const/4 v3, 0x0

    .line 1962
    .local v3, "month":I
    const/4 v4, 0x1

    .line 1963
    .local v4, "firstDayOfMonth":I
    const/4 v5, 0x2

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_2d

    .line 1966
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    .line 1969
    const/16 v6, 0xb

    if-le v3, v6, :cond_1e

    .line 1970
    div-int/lit8 v6, v3, 0xc

    add-int/2addr v1, v6

    .line 1971
    .end local p2    # "year":I
    .local v1, "year":I
    rem-int/lit8 v3, v3, 0xc

    goto :goto_43

    .line 1972
    .end local v1    # "year":I
    .restart local p2    # "year":I
    :cond_1e
    if-gez v3, :cond_43

    .line 1973
    new-array v6, v7, [I

    .line 1974
    .local v6, "rem":[I
    const/16 v8, 0xc

    invoke-static {v3, v8, v6}, Lsun/util/calendar/CalendarUtils;->floorDivide(II[I)I

    move-result v8

    add-int/2addr v1, v8

    .line 1975
    .end local p2    # "year":I
    .restart local v1    # "year":I
    const/4 v8, 0x0

    aget v3, v6, v8

    .line 1976
    .end local v6    # "rem":[I
    goto :goto_43

    .line 1978
    .end local v1    # "year":I
    .restart local p2    # "year":I
    :cond_2d
    if-ne v1, v7, :cond_43

    if-eqz p1, :cond_43

    .line 1979
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    .line 1980
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    .line 1981
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    .line 1986
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local p2    # "year":I
    .restart local v1    # "year":I
    :cond_43
    :goto_43
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v6, v6, v7

    if-ne v1, v6, :cond_63

    .line 1987
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/high16 v8, -0x8000000000000000L

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v6, v8, v9, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 1988
    .local v6, "dx":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    sub-int/2addr v8, v7

    .line 1989
    .local v8, "m":I
    if-ge v3, v8, :cond_5d

    .line 1990
    move v3, v8

    .line 1992
    :cond_5d
    if-ne v3, v8, :cond_63

    .line 1993
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v4

    .line 1997
    .end local v6    # "dx":Lsun/util/calendar/CalendarDate;
    .end local v8    # "m":I
    :cond_63
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v8, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v6, v8}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 1998
    .local v6, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    if-lez p1, :cond_72

    sget-object v8, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v8, v8, p1

    goto :goto_73

    :cond_72
    const/4 v8, 0x0

    :goto_73
    invoke-virtual {v6, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1999
    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v6, v1, v8, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2000
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v6}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2004
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 2006
    .local v8, "fixedDate":J
    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v5

    const-wide/16 v12, 0x1

    const-wide/16 v14, 0x6

    move/from16 v16, v7

    const/4 v7, 0x7

    if-eqz v5, :cond_123

    .line 2008
    const/4 v5, 0x5

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v17

    if-eqz v17, :cond_aa

    .line 2015
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v7

    if-eqz v7, :cond_17f

    .line 2018
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    .line 2019
    int-to-long v10, v4

    sub-long/2addr v8, v10

    goto/16 :goto_17f

    .line 2022
    :cond_aa
    const/4 v5, 0x4

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v17

    if-eqz v17, :cond_e8

    .line 2023
    add-long v12, v8, v14

    .line 2024
    const-wide/16 v17, 0x7

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v10

    .line 2023
    invoke-static {v12, v13, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2027
    .local v10, "firstDayOfWeek":J
    sub-long v12, v10, v8

    move-wide/from16 v19, v14

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v14

    int-to-long v14, v14

    cmp-long v12, v12, v14

    if-ltz v12, :cond_cc

    .line 2028
    sub-long v10, v10, v17

    .line 2030
    :cond_cc
    invoke-static {v2, v7}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v12

    if-eqz v12, :cond_dc

    .line 2031
    add-long v14, v10, v19

    .line 2032
    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v12

    .line 2031
    invoke-static {v14, v15, v12}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2037
    :cond_dc
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v7

    int-to-long v12, v5

    add-long v8, v10, v12

    .line 2038
    .end local v10    # "firstDayOfWeek":J
    goto/16 :goto_17f

    .line 2040
    :cond_e8
    invoke-static {v2, v7}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 2041
    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    .local v5, "dayOfWeek":I
    goto :goto_f7

    .line 2043
    .end local v5    # "dayOfWeek":I
    :cond_f3
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 2049
    .restart local v5    # "dayOfWeek":I
    :goto_f7
    const/16 v10, 0x8

    invoke-static {v2, v10}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v11

    if-eqz v11, :cond_104

    .line 2050
    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v10

    .local v10, "dowim":I
    goto :goto_105

    .line 2052
    .end local v10    # "dowim":I
    :cond_104
    const/4 v10, 0x1

    .line 2054
    .restart local v10    # "dowim":I
    :goto_105
    if-ltz v10, :cond_112

    .line 2055
    mul-int/lit8 v7, v10, 0x7

    int-to-long v14, v7

    add-long/2addr v14, v8

    sub-long/2addr v14, v12

    invoke-static {v14, v15, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    move-wide v8, v7

    .end local v8    # "fixedDate":J
    .local v7, "fixedDate":J
    goto :goto_122

    .line 2060
    .end local v7    # "fixedDate":J
    .restart local v8    # "fixedDate":J
    :cond_112
    invoke-direct {v0, v3, v1}, Ljava/util/JapaneseImperialCalendar;->monthLength(II)I

    move-result v11

    add-int/lit8 v14, v10, 0x1

    mul-int/2addr v14, v7

    add-int/2addr v11, v14

    .line 2062
    .local v11, "lastDate":I
    int-to-long v14, v11

    add-long/2addr v14, v8

    sub-long/2addr v14, v12

    invoke-static {v14, v15, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v7

    move-wide v8, v7

    .line 2065
    .end local v5    # "dayOfWeek":I
    .end local v10    # "dowim":I
    .end local v11    # "lastDate":I
    :goto_122
    goto :goto_17f

    .line 2069
    :cond_123
    move-wide/from16 v19, v14

    const-wide/16 v17, 0x7

    const/4 v5, 0x6

    invoke-static {v2, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v10

    if-eqz v10, :cond_144

    .line 2070
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v7

    invoke-direct {v0, v7}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v7

    if-eqz v7, :cond_13c

    .line 2071
    invoke-direct {v0, v6, v8, v9}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v8

    .line 2074
    :cond_13c
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    int-to-long v10, v5

    add-long/2addr v8, v10

    .line 2075
    sub-long/2addr v8, v12

    goto :goto_17f

    .line 2077
    :cond_144
    add-long v14, v8, v19

    .line 2078
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v5

    .line 2077
    invoke-static {v14, v15, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2081
    .local v10, "firstDayOfWeek":J
    sub-long v14, v10, v8

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v5

    move-wide/from16 v21, v12

    int-to-long v12, v5

    cmp-long v5, v14, v12

    if-ltz v5, :cond_15d

    .line 2082
    sub-long v10, v10, v17

    .line 2084
    :cond_15d
    invoke-static {v2, v7}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v5

    if-eqz v5, :cond_173

    .line 2085
    invoke-virtual {v0, v7}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    .line 2086
    .restart local v5    # "dayOfWeek":I
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v7

    if-eq v5, v7, :cond_173

    .line 2087
    add-long v14, v10, v19

    invoke-static {v14, v15, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 2091
    .end local v5    # "dayOfWeek":I
    :cond_173
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    int-to-long v12, v5

    sub-long v12, v12, v21

    mul-long v12, v12, v17

    add-long v8, v10, v12

    .line 2094
    .end local v10    # "firstDayOfWeek":J
    :cond_17f
    :goto_17f
    return-wide v8
.end method

.method private blacklist getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 2106
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 2107
    .local v0, "era":Lsun/util/calendar/Era;
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2e

    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v1

    if-ne v1, v2, :cond_2e

    .line 2108
    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v1

    .local v1, "eraIndex":I
    :goto_15
    if-lez v1, :cond_2e

    .line 2109
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v3

    .line 2110
    .local v3, "d":Lsun/util/calendar/CalendarDate;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v4, v3}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    .line 2112
    .local v4, "fd":J
    cmp-long v6, v4, p2

    if-lez v6, :cond_2d

    .line 2113
    nop

    .line 2108
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v4    # "fd":J
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .line 2115
    .restart local v3    # "d":Lsun/util/calendar/CalendarDate;
    .restart local v4    # "fd":J
    :cond_2d
    return-wide v4

    .line 2118
    .end local v1    # "eraIndex":I
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v4    # "fd":J
    :cond_2e
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v3, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v1, v3}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v1

    .line 2119
    .local v1, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-virtual {v1, v3, v2, v2}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2120
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v2, v1}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v2

    return-wide v2
.end method

.method private blacklist getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J
    .registers 9
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "fixedDate"    # J

    .line 2133
    invoke-static {p1}, Ljava/util/JapaneseImperialCalendar;->getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    .line 2134
    .local v0, "eraIndex":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_10

    .line 2135
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v1, v1, v0

    .line 2138
    .local v1, "transition":J
    cmp-long v3, v1, p2

    if-gtz v3, :cond_10

    .line 2139
    return-wide v1

    .line 2144
    .end local v1    # "transition":J
    :cond_10
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v1, v1

    sub-long v1, p2, v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    return-wide v1
.end method

.method private blacklist getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;
    .registers 3

    .line 2251
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isFullyNormalized()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2252
    move-object v0, p0

    .local v0, "jc":Ljava/util/JapaneseImperialCalendar;
    goto :goto_15

    .line 2255
    .end local v0    # "jc":Ljava/util/JapaneseImperialCalendar;
    :cond_8
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    .line 2256
    .restart local v0    # "jc":Ljava/util/JapaneseImperialCalendar;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->setLenient(Z)V

    .line 2257
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 2259
    :goto_15
    return-object v0
.end method

.method private static blacklist getRolledValue(IIII)I
    .registers 6
    .param p0, "value"    # I
    .param p1, "amount"    # I
    .param p2, "min"    # I
    .param p3, "max"    # I

    .line 2313
    nop

    .line 2314
    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x1

    .line 2315
    .local v0, "range":I
    rem-int/2addr p1, v0

    .line 2316
    add-int v1, p0, p1

    .line 2317
    .local v1, "n":I
    if-le v1, p3, :cond_c

    .line 2318
    sub-int/2addr v1, v0

    goto :goto_f

    .line 2319
    :cond_c
    if-ge v1, p2, :cond_f

    .line 2320
    add-int/2addr v1, v0

    .line 2322
    :cond_f
    :goto_f
    nop

    .line 2323
    return v1
.end method

.method private static blacklist getTransitionEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I
    .registers 5
    .param p0, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2205
    invoke-static {p0}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v0

    .line 2206
    .local v0, "eraIndex":I
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 2207
    .local v1, "transitionDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2208
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_21

    .line 2209
    return v0

    .line 2211
    :cond_21
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_47

    .line 2212
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v0, v0, 0x1

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    .line 2213
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    if-ne v2, v3, :cond_47

    .line 2214
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v3

    if-ne v2, v3, :cond_47

    .line 2215
    return v0

    .line 2218
    :cond_47
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist getWeekNumber(JJ)I
    .registers 10
    .param p1, "fixedDay1"    # J
    .param p3, "fixedDate"    # J

    .line 1793
    const-wide/16 v0, 0x6

    add-long/2addr v0, p1

    .line 1794
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v2

    .line 1793
    invoke-static {v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v0

    .line 1795
    .local v0, "fixedDay1st":J
    sub-long v2, v0, p1

    long-to-int v2, v2

    .line 1796
    .local v2, "ndays":I
    nop

    .line 1797
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v3

    if-lt v2, v3, :cond_18

    .line 1798
    const-wide/16 v3, 0x7

    sub-long/2addr v0, v3

    .line 1800
    :cond_18
    sub-long v3, p3, v0

    long-to-int v3, v3

    .line 1801
    .local v3, "normalizedDayOfPeriod":I
    if-ltz v3, :cond_22

    .line 1802
    div-int/lit8 v4, v3, 0x7

    add-int/lit8 v4, v4, 0x1

    return v4

    .line 1804
    :cond_22
    const/4 v4, 0x7

    invoke-static {v3, v4}, Lsun/util/calendar/CalendarUtils;->floorDivide(II)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    return v4
.end method

.method private blacklist getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J
    .registers 8
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .line 1482
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfYear(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 1483
    .local v0, "t":J
    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v2, v4

    return-wide v2
.end method

.method private blacklist internalGetEra()I
    .registers 3

    .line 2331
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v0

    goto :goto_e

    :cond_c
    sget v0, Ljava/util/JapaneseImperialCalendar;->currentEra:I

    :goto_e
    return v0
.end method

.method private blacklist isTransitionYear(I)Z
    .registers 5
    .param p1, "normalizedYear"    # I

    .line 2222
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_5
    if-lez v0, :cond_1c

    .line 2223
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    .line 2224
    .local v2, "transitionYear":I
    if-ne p1, v2, :cond_16

    .line 2225
    return v1

    .line 2227
    :cond_16
    if-le p1, v2, :cond_19

    .line 2228
    goto :goto_1c

    .line 2222
    .end local v2    # "transitionYear":I
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 2231
    .end local v0    # "i":I
    :cond_1c
    :goto_1c
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist monthLength(I)I
    .registers 3
    .param p1, "month"    # I

    .line 2176
    nop

    .line 2177
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2178
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_12

    :cond_e
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    .line 2177
    :goto_12
    return v0
.end method

.method private blacklist monthLength(II)I
    .registers 4
    .param p1, "month"    # I
    .param p2, "gregorianYear"    # I

    .line 2165
    invoke-static {p2}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2166
    sget-object v0, Ljava/util/GregorianCalendar;->LEAP_MONTH_LENGTH:[I

    aget v0, v0, p1

    goto :goto_f

    :cond_b
    sget-object v0, Ljava/util/GregorianCalendar;->MONTH_LENGTH:[I

    aget v0, v0, p1

    .line 2165
    :goto_f
    return v0
.end method

.method private blacklist pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V
    .registers 11
    .param p1, "date"    # Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2269
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v0

    .line 2270
    .local v0, "year":I
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    .line 2271
    .local v1, "dom":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v3

    if-eq v0, v3, :cond_2c

    .line 2272
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2273
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2274
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, p1}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2275
    .local v2, "monthLength":I
    if-le v1, v2, :cond_23

    .line 2276
    invoke-virtual {p1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_26

    .line 2278
    :cond_23
    invoke-virtual {p1, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2280
    :goto_26
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2281
    .end local v2    # "monthLength":I
    goto :goto_9f

    .line 2282
    :cond_2c
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide/high16 v4, -0x8000000000000000L

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 2283
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v5, p0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 2284
    .local v4, "realDate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v5

    .line 2286
    .local v5, "tod":J
    const/16 v7, 0x190

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2287
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2288
    invoke-virtual {v4, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2289
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 2290
    sget-object v2, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v2

    .line 2291
    .restart local v2    # "monthLength":I
    if-le v1, v2, :cond_68

    .line 2292
    invoke-virtual {v4, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_79

    .line 2294
    :cond_68
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    if-ge v1, v7, :cond_76

    .line 2295
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    goto :goto_79

    .line 2297
    :cond_76
    invoke-virtual {v4, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2300
    :goto_79
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v7

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    if-ne v7, v8, :cond_94

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v7

    cmp-long v7, v5, v7

    if-gez v7, :cond_94

    .line 2301
    add-int/lit8 v7, v1, 0x1

    invoke-static {v7, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v4, v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 2304
    :cond_94
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    invoke-virtual {p1, v0, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 2307
    .end local v2    # "monthLength":I
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v4    # "realDate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v5    # "tod":J
    :goto_9f
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 2340
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 2341
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    if-nez v0, :cond_17

    .line 2342
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    iput-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 2343
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 2345
    :cond_17
    return-void
.end method


# virtual methods
.method public whitelist test-api add(II)V
    .registers 20
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 410
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 411
    return-void

    .line 414
    :cond_9
    if-ltz v1, :cond_132

    const/16 v3, 0xf

    if-ge v1, v3, :cond_132

    .line 419
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 421
    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v1, v7, :cond_45

    .line 422
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 423
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 424
    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    .line 425
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 426
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 427
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 428
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 429
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    goto/16 :goto_131

    :cond_45
    if-ne v1, v6, :cond_74

    .line 430
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 431
    .restart local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->addMonth(I)Lsun/util/calendar/CalendarDate;

    .line 432
    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->pinDayOfMonth(Lsun/util/calendar/LocalGregorianCalendar$Date;)V

    .line 433
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v8

    invoke-virtual {v0, v5, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 434
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v0, v7, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 435
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v0, v6, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 436
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 437
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    goto/16 :goto_131

    :cond_74
    if-nez v1, :cond_8f

    .line 438
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    add-int/2addr v3, v2

    .line 439
    .local v3, "era":I
    if-gez v3, :cond_7f

    .line 440
    const/4 v3, 0x0

    goto :goto_8a

    .line 441
    :cond_7f
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v4, v4

    sub-int/2addr v4, v7

    if-le v3, v4, :cond_8a

    .line 442
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .line 444
    :cond_8a
    :goto_8a
    invoke-virtual {v0, v5, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 445
    .end local v3    # "era":I
    goto/16 :goto_131

    .line 446
    :cond_8f
    int-to-long v4, v2

    .line 447
    .local v4, "delta":J
    const-wide/16 v6, 0x0

    .line 448
    .local v6, "timeOfDay":J
    const-wide/16 v8, 0x3e8

    const/16 v10, 0xc

    packed-switch v1, :pswitch_data_138

    goto :goto_b4

    .line 465
    :pswitch_9a
    goto :goto_b4

    .line 461
    :pswitch_9b
    mul-long/2addr v4, v8

    .line 462
    goto :goto_b4

    .line 457
    :pswitch_9d
    const-wide/32 v11, 0xea60

    mul-long/2addr v4, v11

    .line 458
    goto :goto_b4

    .line 453
    :pswitch_a2
    const-wide/32 v11, 0x36ee80

    mul-long/2addr v4, v11

    .line 454
    goto :goto_b4

    .line 484
    :pswitch_a7
    div-int/lit8 v11, v2, 0x2

    int-to-long v4, v11

    .line 485
    rem-int/lit8 v11, v2, 0x2

    mul-int/2addr v11, v10

    int-to-long v6, v11

    goto :goto_b4

    .line 479
    :pswitch_af
    goto :goto_b4

    .line 473
    :pswitch_b0
    const-wide/16 v11, 0x7

    mul-long/2addr v4, v11

    .line 474
    nop

    .line 491
    :goto_b4
    const/16 v11, 0xa

    if-lt v1, v11, :cond_bf

    .line 492
    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    add-long/2addr v8, v4

    invoke-virtual {v0, v8, v9}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 493
    return-void

    .line 502
    :cond_bf
    iget-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 503
    .local v11, "fd":J
    const/16 v13, 0xb

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v13, v13

    add-long/2addr v6, v13

    .line 504
    const-wide/16 v13, 0x3c

    mul-long/2addr v6, v13

    .line 505
    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v10

    move-wide v15, v8

    int-to-long v8, v10

    add-long/2addr v6, v8

    .line 506
    mul-long/2addr v6, v13

    .line 507
    const/16 v8, 0xd

    invoke-virtual {v0, v8}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 508
    mul-long/2addr v6, v15

    .line 509
    const/16 v8, 0xe

    invoke-virtual {v0, v8}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    .line 510
    const-wide/32 v8, 0x5265c00

    cmp-long v10, v6, v8

    const-wide/16 v13, 0x1

    if-ltz v10, :cond_f1

    .line 511
    add-long/2addr v11, v13

    .line 512
    sub-long/2addr v6, v8

    goto :goto_f9

    .line 513
    :cond_f1
    const-wide/16 v15, 0x0

    cmp-long v10, v6, v15

    if-gez v10, :cond_f9

    .line 514
    sub-long/2addr v11, v13

    .line 515
    add-long/2addr v6, v8

    .line 518
    :cond_f9
    :goto_f9
    add-long/2addr v11, v4

    .line 519
    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v10

    const/16 v13, 0x10

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v14

    add-int/2addr v10, v14

    .line 520
    .local v10, "zoneOffset":I
    const-wide/32 v14, 0xaf93b

    sub-long v14, v11, v14

    mul-long/2addr v14, v8

    add-long/2addr v14, v6

    int-to-long v8, v10

    sub-long/2addr v14, v8

    invoke-virtual {v0, v14, v15}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 521
    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    add-int/2addr v3, v8

    sub-int/2addr v10, v3

    .line 523
    if-eqz v10, :cond_131

    .line 524
    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v13, v10

    add-long/2addr v8, v13

    invoke-virtual {v0, v8, v9}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 525
    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 528
    .local v8, "fd2":J
    cmp-long v3, v8, v11

    if-eqz v3, :cond_131

    .line 529
    iget-wide v13, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    int-to-long v1, v10

    sub-long/2addr v13, v1

    invoke-virtual {v0, v13, v14}, Ljava/util/JapaneseImperialCalendar;->setTimeInMillis(J)V

    .line 533
    .end local v4    # "delta":J
    .end local v6    # "timeOfDay":J
    .end local v8    # "fd2":J
    .end local v10    # "zoneOffset":I
    .end local v11    # "fd":J
    :cond_131
    :goto_131
    return-void

    .line 415
    :cond_132
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :pswitch_data_138
    .packed-switch 0x3
        :pswitch_b0
        :pswitch_b0
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_b0
        :pswitch_a7
        :pswitch_a2
        :pswitch_a2
        :pswitch_9d
        :pswitch_9b
        :pswitch_9a
    .end packed-switch
.end method

.method public whitelist test-api clone()Ljava/lang/Object;
    .registers 3

    .line 1487
    invoke-super {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/JapaneseImperialCalendar;

    .line 1489
    .local v0, "other":Ljava/util/JapaneseImperialCalendar;
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1490
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    .line 1491
    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1492
    return-object v0
.end method

.method protected whitelist test-api computeFields()V
    .registers 7

    .line 1524
    const/4 v0, 0x0

    .line 1525
    .local v0, "mask":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->isPartiallyNormalized()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1527
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v0

    .line 1528
    not-int v1, v0

    const v2, 0x1ffff

    and-int/2addr v1, v2

    .line 1529
    .local v1, "fieldMask":I
    if-nez v1, :cond_1a

    iget-wide v2, p0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v2, v2, v4

    if-nez v2, :cond_24

    .line 1530
    :cond_1a
    const v2, 0x18000

    and-int/2addr v2, v0

    invoke-direct {p0, v1, v2}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v2

    or-int/2addr v0, v2

    .line 1532
    nop

    .line 1534
    .end local v1    # "fieldMask":I
    :cond_24
    goto :goto_2c

    .line 1536
    :cond_25
    const v0, 0x1ffff

    .line 1537
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    .line 1540
    :goto_2c
    invoke-virtual {p0, v0}, Ljava/util/JapaneseImperialCalendar;->setFieldsComputed(I)V

    .line 1541
    return-void
.end method

.method protected whitelist test-api computeTime()V
    .registers 21

    .line 1818
    move-object/from16 v0, p0

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v1

    const/16 v2, 0x11

    if-nez v1, :cond_3d

    .line 1819
    iget-object v1, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    if-nez v1, :cond_12

    .line 1820
    new-array v1, v2, [I

    iput-object v1, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    .line 1822
    :cond_12
    const/4 v1, 0x0

    .local v1, "field":I
    :goto_13
    if-ge v1, v2, :cond_3d

    .line 1823
    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    .line 1824
    .local v3, "value":I
    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 1826
    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v4

    if-lt v3, v4, :cond_2c

    invoke-virtual {v0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v4

    if-gt v3, v4, :cond_2c

    goto :goto_36

    .line 1827
    :cond_2c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1830
    :cond_36
    :goto_36
    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    aput v3, v4, v1

    .line 1822
    .end local v3    # "value":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1836
    .end local v1    # "field":I
    :cond_3d
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->selectFields()I

    move-result v1

    .line 1841
    .local v1, "fieldMask":I
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5a

    .line 1842
    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    .line 1843
    .local v4, "era":I
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v6

    if-eqz v6, :cond_58

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    goto :goto_59

    :cond_58
    move v6, v5

    .local v6, "year":I
    :goto_59
    goto :goto_6a

    .line 1845
    .end local v4    # "era":I
    .end local v6    # "year":I
    :cond_5a
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->isSet(I)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 1846
    sget v4, Ljava/util/JapaneseImperialCalendar;->currentEra:I

    .line 1847
    .restart local v4    # "era":I
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    .restart local v6    # "year":I
    goto :goto_6a

    .line 1850
    .end local v4    # "era":I
    .end local v6    # "year":I
    :cond_67
    const/4 v4, 0x3

    .line 1851
    .restart local v4    # "era":I
    const/16 v6, 0x2d

    .line 1857
    .restart local v6    # "year":I
    :goto_6a
    const-wide/16 v7, 0x0

    .line 1858
    .local v7, "timeOfDay":J
    const/16 v9, 0xb

    invoke-static {v1, v9}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v10

    const/16 v11, 0xc

    if-eqz v10, :cond_7d

    .line 1859
    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    goto :goto_94

    .line 1861
    :cond_7d
    const/16 v9, 0xa

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1863
    const/16 v9, 0x9

    invoke-static {v1, v9}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v10

    if-eqz v10, :cond_94

    .line 1864
    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    mul-int/2addr v9, v11

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1867
    :cond_94
    :goto_94
    const-wide/16 v9, 0x3c

    mul-long/2addr v7, v9

    .line 1868
    invoke-virtual {v0, v11}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v11

    int-to-long v11, v11

    add-long/2addr v7, v11

    .line 1869
    mul-long/2addr v7, v9

    .line 1870
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1871
    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    .line 1872
    const/16 v9, 0xe

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    .line 1876
    const-wide/32 v9, 0x5265c00

    div-long v11, v7, v9

    .line 1877
    .local v11, "fixedDate":J
    rem-long/2addr v7, v9

    .line 1878
    :goto_b7
    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-gez v13, :cond_c2

    .line 1879
    add-long/2addr v7, v9

    .line 1880
    const-wide/16 v13, 0x1

    sub-long/2addr v11, v13

    goto :goto_b7

    .line 1884
    :cond_c2
    invoke-direct {v0, v4, v6, v1}, Ljava/util/JapaneseImperialCalendar;->getFixedDate(III)J

    move-result-wide v13

    add-long/2addr v11, v13

    .line 1887
    const-wide/32 v13, 0xaf93b

    sub-long v13, v11, v13

    mul-long/2addr v13, v9

    add-long/2addr v13, v7

    .line 1902
    .local v13, "millis":J
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    .line 1903
    .local v9, "zone":Ljava/util/TimeZone;
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    if-nez v10, :cond_db

    .line 1904
    const/4 v10, 0x2

    new-array v10, v10, [I

    iput-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    .line 1906
    :cond_db
    const v10, 0x18000

    and-int v15, v1, v10

    .line 1907
    .local v15, "tzMask":I
    if-eq v15, v10, :cond_f3

    .line 1912
    invoke-virtual {v9}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v10

    move/from16 v16, v5

    move/from16 v17, v6

    .end local v6    # "year":I
    .local v17, "year":I
    int-to-long v5, v10

    sub-long v5, v13, v5

    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v9, v5, v6, v10}, Ljava/util/TimeZone;->getOffsets(J[I)I

    goto :goto_f7

    .line 1907
    .end local v17    # "year":I
    .restart local v6    # "year":I
    :cond_f3
    move/from16 v16, v5

    move/from16 v17, v6

    .line 1915
    .end local v6    # "year":I
    .restart local v17    # "year":I
    :goto_f7
    if-eqz v15, :cond_119

    .line 1916
    const/16 v5, 0xf

    invoke-static {v15, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_109

    .line 1917
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    aput v5, v6, v3

    .line 1919
    :cond_109
    const/16 v5, 0x10

    invoke-static {v15, v5}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v6

    if-eqz v6, :cond_119

    .line 1920
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    aput v5, v6, v16

    .line 1925
    :cond_119
    iget-object v5, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v5, v5, v3

    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->zoneOffsets:[I

    aget v6, v6, v16

    add-int/2addr v5, v6

    int-to-long v5, v5

    sub-long/2addr v13, v5

    .line 1928
    iput-wide v13, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 1930
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getSetStateFields()I

    move-result v5

    or-int/2addr v5, v1

    invoke-direct {v0, v5, v15}, Ljava/util/JapaneseImperialCalendar;->computeFields(II)I

    move-result v5

    .line 1932
    .local v5, "mask":I
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->isLenient()Z

    move-result v6

    if-nez v6, :cond_195

    .line 1933
    const/4 v6, 0x0

    .local v6, "field":I
    :goto_136
    if-ge v6, v2, :cond_190

    .line 1934
    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->isExternallySet(I)Z

    move-result v10

    if-nez v10, :cond_13f

    .line 1935
    goto :goto_149

    .line 1937
    :cond_13f
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    aget v10, v10, v6

    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v2

    if-ne v10, v2, :cond_14e

    .line 1933
    :goto_149
    add-int/lit8 v6, v6, 0x1

    const/16 v2, 0x11

    goto :goto_136

    .line 1938
    :cond_14e
    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v2

    .line 1940
    .local v2, "wrongValue":I
    iget-object v10, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    move/from16 v18, v1

    .end local v1    # "fieldMask":I
    .local v18, "fieldMask":I
    iget-object v1, v0, Ljava/util/JapaneseImperialCalendar;->fields:[I

    array-length v1, v1

    move/from16 v19, v4

    const/4 v4, 0x0

    .end local v4    # "era":I
    .local v19, "era":I
    invoke-static {v10, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1941
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Ljava/util/JapaneseImperialCalendar;->getFieldName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->originalFields:[I

    aget v4, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1933
    .end local v2    # "wrongValue":I
    .end local v18    # "fieldMask":I
    .end local v19    # "era":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "era":I
    :cond_190
    move/from16 v18, v1

    move/from16 v19, v4

    .end local v1    # "fieldMask":I
    .end local v4    # "era":I
    .restart local v18    # "fieldMask":I
    .restart local v19    # "era":I
    goto :goto_199

    .line 1932
    .end local v6    # "field":I
    .end local v18    # "fieldMask":I
    .end local v19    # "era":I
    .restart local v1    # "fieldMask":I
    .restart local v4    # "era":I
    :cond_195
    move/from16 v18, v1

    move/from16 v19, v4

    .line 1946
    .end local v1    # "fieldMask":I
    .end local v4    # "era":I
    .restart local v18    # "fieldMask":I
    .restart local v19    # "era":I
    :goto_199
    invoke-virtual {v0, v5}, Ljava/util/JapaneseImperialCalendar;->setFieldsNormalized(I)V

    .line 1947
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 365
    instance-of v0, p1, Ljava/util/JapaneseImperialCalendar;

    if-eqz v0, :cond_c

    .line 366
    invoke-super {p0, p1}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 365
    :goto_d
    return v0
.end method

.method public whitelist test-api getActualMaximum(I)I
    .registers 16
    .param p1, "field"    # I

    .line 1274
    const v0, 0x1fe81

    .line 1277
    .local v0, "fieldsForFixedMax":I
    const/4 v1, 0x1

    shl-int v2, v1, p1

    const v3, 0x1fe81

    and-int/2addr v2, v3

    if-eqz v2, :cond_11

    .line 1278
    invoke-virtual {p0, p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v1

    return v1

    .line 1281
    :cond_11
    invoke-direct {p0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v2

    .line 1282
    .local v2, "jc":Ljava/util/JapaneseImperialCalendar;
    iget-object v3, v2, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1284
    .local v3, "date":Lsun/util/calendar/LocalGregorianCalendar$Date;
    const-wide/high16 v4, -0x8000000000000000L

    const/16 v6, 0x190

    const-wide/16 v7, 0x1

    const-wide v9, 0x7fffffffffffffffL

    const/4 v11, 0x7

    packed-switch p1, :pswitch_data_344

    .line 1471
    :pswitch_26
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v1

    .line 1432
    :pswitch_2c
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfWeek()I

    move-result v4

    .line 1433
    .local v4, "dow":I
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/util/calendar/BaseCalendar$Date;

    .line 1434
    .local v5, "d":Lsun/util/calendar/BaseCalendar$Date;
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    .line 1435
    .local v6, "ndays":I
    invoke-virtual {v5, v1}, Lsun/util/calendar/BaseCalendar$Date;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1436
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v5}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1437
    invoke-virtual {v5}, Lsun/util/calendar/BaseCalendar$Date;->getDayOfWeek()I

    move-result v1

    .line 1438
    .local v1, "dow1":I
    sub-int v7, v4, v1

    .line 1439
    .local v7, "x":I
    if-gez v7, :cond_4e

    .line 1440
    add-int/lit8 v7, v7, 0x7

    .line 1442
    :cond_4e
    sub-int/2addr v6, v7

    .line 1443
    add-int/lit8 v8, v6, 0x6

    div-int/2addr v8, v11

    goto/16 :goto_343

    .line 1312
    .end local v1    # "dow1":I
    .end local v4    # "dow":I
    .end local v5    # "d":Lsun/util/calendar/BaseCalendar$Date;
    .end local v6    # "ndays":I
    .end local v7    # "x":I
    :pswitch_54
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    invoke-direct {p0, v6}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 1315
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v4

    .line 1316
    .local v4, "eraIndex":I
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v5

    if-eq v5, v1, :cond_6b

    .line 1317
    add-int/lit8 v4, v4, 0x1

    .line 1318
    nop

    .line 1320
    :cond_6b
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v5, v5, v4

    .line 1321
    .local v5, "transition":J
    iget-wide v7, v2, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1322
    .local v7, "fd":J
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v10, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v9, v10}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v9

    .line 1323
    .local v9, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v10

    invoke-virtual {v9, v10, v1, v1}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1324
    cmp-long v10, v7, v5

    if-gez v10, :cond_90

    .line 1325
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v1, v9}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    sub-long v10, v5, v10

    long-to-int v1, v10

    move v8, v1

    goto/16 :goto_343

    .line 1327
    :cond_90
    invoke-virtual {v9, v1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1328
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v1, v9}, Lsun/util/calendar/Gregorian;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    sub-long/2addr v10, v5

    long-to-int v1, v10

    move v8, v1

    goto/16 :goto_343

    .line 1330
    .end local v4    # "eraIndex":I
    .end local v5    # "transition":J
    .end local v7    # "fd":J
    .end local v9    # "d":Lsun/util/calendar/CalendarDate;
    :cond_9e
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v9, v10, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 1331
    .local v6, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v7

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v8

    if-ne v7, v8, :cond_cd

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v7

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v8

    if-ne v7, v8, :cond_cd

    .line 1332
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v4, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    .line 1333
    .local v4, "fd":J
    invoke-direct {p0, v6, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v7

    .line 1334
    .local v7, "jan1":J
    sub-long v9, v4, v7

    long-to-int v9, v9

    add-int/2addr v1, v9

    move v8, v1

    goto/16 :goto_343

    .line 1335
    .end local v4    # "fd":J
    .end local v7    # "jan1":J
    :cond_cd
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v7

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v8

    if-ne v7, v8, :cond_102

    .line 1336
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v4, v5, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1337
    .local v4, "d1":Lsun/util/calendar/CalendarDate;
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v5, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v7

    .line 1338
    .local v7, "fd1":J
    invoke-virtual {v4, v1}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1339
    invoke-virtual {v4, v1}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    move-result-object v5

    invoke-virtual {v5, v1}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 1340
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1341
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    .line 1342
    .local v9, "fd2":J
    sub-long v11, v9, v7

    long-to-int v1, v11

    move v8, v1

    goto/16 :goto_343

    .line 1344
    .end local v4    # "d1":Lsun/util/calendar/CalendarDate;
    .end local v7    # "fd1":J
    .end local v9    # "fd2":J
    :cond_102
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getYearLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    goto/16 :goto_343

    .line 1310
    .end local v6    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :pswitch_10a
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    goto/16 :goto_343

    .line 1402
    :pswitch_112
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v9, v10, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1403
    .local v4, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v5

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    if-ne v5, v6, :cond_144

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v5

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    if-ne v5, v6, :cond_144

    .line 1404
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v5

    .line 1405
    .local v5, "fd":J
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v1

    int-to-long v9, v1

    sub-long v9, v5, v9

    add-long/2addr v9, v7

    .line 1406
    .local v9, "month1":J
    invoke-direct {p0, v9, v10, v5, v6}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v8

    goto/16 :goto_343

    .line 1408
    .end local v5    # "fd":J
    .end local v9    # "month1":J
    :cond_144
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v6, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v5

    .line 1409
    .local v5, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v6

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    invoke-virtual {v5, v6, v7, v1}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1410
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v1, v5}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v1

    .line 1411
    .local v1, "dayOfWeek":I
    invoke-direct {p0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v6

    .line 1412
    .local v6, "monthLength":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v7

    sub-int/2addr v1, v7

    .line 1413
    if-gez v1, :cond_16a

    .line 1414
    add-int/lit8 v1, v1, 0x7

    .line 1416
    :cond_16a
    rsub-int/lit8 v7, v1, 0x7

    .line 1417
    .local v7, "nDaysFirstWeek":I
    const/4 v8, 0x3

    .line 1418
    .local v8, "weekOfMonth":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v9

    if-lt v7, v9, :cond_175

    .line 1419
    add-int/lit8 v8, v8, 0x1

    .line 1421
    :cond_175
    add-int/lit8 v9, v7, 0x15

    sub-int/2addr v6, v9

    .line 1422
    if-lez v6, :cond_180

    .line 1423
    add-int/lit8 v8, v8, 0x1

    .line 1424
    if-le v6, v11, :cond_180

    .line 1425
    add-int/lit8 v8, v8, 0x1

    .line 1428
    :cond_180
    goto/16 :goto_343

    .line 1348
    .end local v1    # "dayOfWeek":I
    .end local v4    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v5    # "d":Lsun/util/calendar/CalendarDate;
    .end local v6    # "monthLength":I
    .end local v7    # "nDaysFirstWeek":I
    .end local v8    # "weekOfMonth":I
    :pswitch_182
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v7

    invoke-direct {p0, v7}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v7

    const/4 v8, 0x6

    if-nez v7, :cond_258

    .line 1349
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v7, v9, v10, v11}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1350
    .local v7, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v9

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v10

    if-ne v9, v10, :cond_1bc

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v10

    if-ne v9, v10, :cond_1bc

    .line 1351
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v4

    .line 1352
    .local v4, "fd":J
    invoke-direct {p0, v7, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getFixedDateJan1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v8

    .line 1353
    .local v8, "jan1":J
    invoke-direct {p0, v8, v9, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v1

    move v8, v1

    goto/16 :goto_343

    .line 1354
    .end local v4    # "fd":J
    .end local v8    # "jan1":J
    :cond_1bc
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v9

    if-nez v9, :cond_21c

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v10

    if-ne v9, v10, :cond_21c

    .line 1355
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v4, v5, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1357
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v4, v6}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1358
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v5, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1359
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v5

    invoke-virtual {v7, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1360
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v5

    add-int/2addr v5, v1

    invoke-virtual {v7, v5, v1, v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1361
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1362
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v5

    .line 1363
    .local v5, "jan1":J
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v1, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1364
    .local v8, "nextJan1":J
    const-wide/16 v10, 0x6

    add-long/2addr v10, v8

    .line 1365
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v1

    .line 1364
    invoke-static {v10, v11, v1}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 1366
    .local v10, "nextJan1st":J
    sub-long v12, v10, v8

    long-to-int v1, v12

    .line 1367
    .local v1, "ndays":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v12

    if-lt v1, v12, :cond_215

    .line 1368
    const-wide/16 v12, 0x7

    sub-long/2addr v10, v12

    .line 1370
    :cond_215
    invoke-direct {p0, v5, v6, v10, v11}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v12

    move v8, v12

    goto/16 :goto_343

    .line 1373
    .end local v1    # "ndays":I
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v5    # "jan1":J
    .end local v8    # "nextJan1":J
    .end local v10    # "nextJan1st":J
    :cond_21c
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    sget-object v5, Ljava/util/TimeZone;->NO_TIMEZONE:Ljava/util/TimeZone;

    invoke-virtual {v4, v5}, Lsun/util/calendar/Gregorian;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/Gregorian$Date;

    move-result-object v4

    .line 1374
    .restart local v4    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {v4, v5, v1, v1}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 1375
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v5, v4}, Lsun/util/calendar/Gregorian;->getDayOfWeek(Lsun/util/calendar/CalendarDate;)I

    move-result v5

    .line 1377
    .local v5, "dayOfWeek":I
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int/2addr v5, v6

    .line 1378
    if-gez v5, :cond_23a

    .line 1379
    add-int/lit8 v5, v5, 0x7

    .line 1381
    :cond_23a
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v6

    add-int/2addr v6, v5

    sub-int/2addr v6, v1

    .line 1382
    .local v6, "magic":I
    if-eq v6, v8, :cond_254

    .line 1383
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->isLeapYear()Z

    move-result v1

    if-eqz v1, :cond_250

    const/4 v1, 0x5

    if-eq v6, v1, :cond_24f

    const/16 v1, 0xc

    if-ne v6, v1, :cond_250

    :cond_24f
    goto :goto_254

    .line 1386
    :cond_250
    const/16 v8, 0x34

    goto/16 :goto_343

    .line 1384
    :cond_254
    :goto_254
    const/16 v8, 0x35

    goto/16 :goto_343

    .line 1389
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v5    # "dayOfWeek":I
    .end local v6    # "magic":I
    .end local v7    # "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :cond_258
    if-ne v2, p0, :cond_261

    .line 1390
    invoke-virtual {v2}, Ljava/util/JapaneseImperialCalendar;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Ljava/util/JapaneseImperialCalendar;

    .line 1392
    :cond_261
    invoke-virtual {p0, v8}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v4

    .line 1393
    .local v4, "max":I
    invoke-virtual {v2, v8, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 1394
    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v6

    .line 1395
    .local v6, "weekOfYear":I
    if-ne v6, v1, :cond_27b

    if-le v4, v11, :cond_27b

    .line 1396
    const/4 v1, -0x1

    invoke-virtual {v2, v5, v1}, Ljava/util/JapaneseImperialCalendar;->add(II)V

    .line 1397
    invoke-virtual {v2, v5}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v1

    move v8, v1

    .end local v6    # "weekOfYear":I
    .local v1, "weekOfYear":I
    goto :goto_27c

    .line 1399
    .end local v1    # "weekOfYear":I
    .restart local v6    # "weekOfYear":I
    :cond_27b
    move v8, v6

    .end local v6    # "weekOfYear":I
    .local v8, "weekOfYear":I
    :goto_27c
    goto/16 :goto_343

    .line 1286
    .end local v4    # "max":I
    .end local v8    # "weekOfYear":I
    :pswitch_27e
    const/16 v4, 0xb

    .line 1287
    .local v4, "month":I
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-direct {p0, v5}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v5

    if-eqz v5, :cond_2b7

    .line 1289
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v5

    .line 1290
    .local v5, "eraIndex":I
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    if-eq v6, v1, :cond_297

    .line 1291
    add-int/lit8 v5, v5, 0x1

    .line 1292
    nop

    .line 1294
    :cond_297
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->sinceFixedDates:[J

    aget-wide v9, v6, v5

    .line 1295
    .local v9, "transition":J
    iget-wide v11, v2, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 1296
    .local v11, "fd":J
    cmp-long v6, v11, v9

    if-gez v6, :cond_2b5

    .line 1297
    nop

    .line 1298
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->clone()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1299
    .local v6, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v13, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sub-long v7, v9, v7

    invoke-virtual {v13, v6, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 1300
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    .line 1302
    .end local v5    # "eraIndex":I
    .end local v6    # "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v9    # "transition":J
    .end local v11    # "fd":J
    :cond_2b5
    move v8, v4

    goto :goto_2dd

    .line 1303
    :cond_2b7
    sget-object v5, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v5, v9, v10, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v5

    .line 1304
    .local v5, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v7

    if-ne v6, v7, :cond_2dc

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v7

    if-ne v6, v7, :cond_2dc

    .line 1305
    invoke-virtual {v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v6

    sub-int/2addr v6, v1

    move v8, v6

    .end local v4    # "month":I
    .local v6, "month":I
    goto :goto_2dd

    .line 1308
    .end local v5    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v6    # "month":I
    .restart local v4    # "month":I
    :cond_2dc
    move v8, v4

    .end local v4    # "month":I
    .local v8, "month":I
    :goto_2dd
    goto :goto_343

    .line 1446
    .end local v8    # "month":I
    :pswitch_2de
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v2}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v11

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v11, v12, v5}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1448
    .local v4, "jd":Lsun/util/calendar/CalendarDate;
    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v5

    .line 1450
    .local v5, "eraIndex":I
    sget-object v11, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v11, v11

    sub-int/2addr v11, v1

    if-ne v5, v11, :cond_30c

    .line 1451
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v1, v9, v10, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 1452
    .local v1, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v7

    .line 1455
    .local v7, "year":I
    if-le v7, v6, :cond_32c

    .line 1456
    add-int/lit16 v6, v7, -0x190

    invoke-virtual {v4, v6}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    goto :goto_32c

    .line 1459
    .end local v1    # "d":Lsun/util/calendar/CalendarDate;
    .end local v7    # "year":I
    :cond_30c
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v9, v5, 0x1

    aget-object v6, v6, v9

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v6, v9}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v9

    sub-long/2addr v9, v7

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v6

    invoke-virtual {v1, v9, v10, v6}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    .line 1460
    .restart local v1    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v7

    .line 1463
    .restart local v7    # "year":I
    invoke-virtual {v4, v7}, Lsun/util/calendar/CalendarDate;->setYear(I)Lsun/util/calendar/CalendarDate;

    .line 1465
    :cond_32c
    :goto_32c
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1466
    invoke-direct {p0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    invoke-direct {p0, v1}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    cmp-long v6, v8, v10

    if-lez v6, :cond_341

    .line 1467
    add-int/lit8 v7, v7, -0x1

    move v8, v7

    goto :goto_342

    .line 1466
    :cond_341
    move v8, v7

    .line 1469
    .end local v7    # "year":I
    .local v8, "year":I
    :goto_342
    nop

    .line 1284
    .end local v1    # "d":Lsun/util/calendar/CalendarDate;
    .end local v4    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v5    # "eraIndex":I
    .end local v8    # "year":I
    :goto_343
    return v8

    :pswitch_data_344
    .packed-switch 0x1
        :pswitch_2de
        :pswitch_27e
        :pswitch_182
        :pswitch_112
        :pswitch_10a
        :pswitch_54
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method

.method public whitelist test-api getActualMinimum(I)I
    .registers 20
    .param p1, "field"    # I

    .line 1173
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v2, 0xe

    invoke-static {v2, v1}, Ljava/util/JapaneseImperialCalendar;->isFieldSet(II)Z

    move-result v2

    if-nez v2, :cond_11

    .line 1174
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v2

    return v2

    .line 1177
    :cond_11
    const/4 v2, 0x0

    .line 1178
    .local v2, "value":I
    invoke-direct {v0}, Ljava/util/JapaneseImperialCalendar;->getNormalizedCalendar()Ljava/util/JapaneseImperialCalendar;

    move-result-object v3

    .line 1181
    .local v3, "jc":Ljava/util/JapaneseImperialCalendar;
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v3}, Ljava/util/JapaneseImperialCalendar;->getTimeInMillis()J

    move-result-wide v5

    .line 1182
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    .line 1181
    invoke-virtual {v4, v5, v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 1183
    .local v4, "jd":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v4}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v5

    .line 1184
    .local v5, "eraIndex":I
    const/16 v6, 0x190

    const-wide/high16 v7, -0x8000000000000000L

    packed-switch v1, :pswitch_data_11e

    goto/16 :goto_11c

    .line 1228
    :pswitch_31
    const/4 v2, 0x1

    .line 1229
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1231
    .local v7, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v7, v6}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 1232
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1233
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getEra()Lsun/util/calendar/Era;

    move-result-object v6

    invoke-virtual {v4, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1234
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    invoke-virtual {v4, v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1235
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1237
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 1238
    .local v8, "jan1":J
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v10

    .line 1239
    .local v10, "fd":J
    invoke-direct {v0, v8, v9, v10, v11}, Ljava/util/JapaneseImperialCalendar;->getWeekNumber(JJ)I

    move-result v6

    .line 1240
    .local v6, "woy":I
    add-int/lit8 v12, v6, -0x1

    mul-int/lit8 v12, v12, 0x7

    int-to-long v12, v12

    sub-long v12, v10, v12

    .line 1241
    .local v12, "day1":J
    cmp-long v14, v12, v8

    if-ltz v14, :cond_82

    cmp-long v14, v12, v8

    if-nez v14, :cond_11c

    .line 1243
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v14

    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v16

    cmp-long v14, v14, v16

    if-gez v14, :cond_11c

    .line 1244
    :cond_82
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_11c

    .line 1218
    .end local v6    # "woy":I
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v8    # "jan1":J
    .end local v10    # "fd":J
    .end local v12    # "day1":J
    :pswitch_86
    const/4 v6, 0x1

    if-le v5, v6, :cond_11c

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v7

    if-ne v7, v6, :cond_11c

    .line 1219
    sget-object v7, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v7, v7, v5

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v7

    .line 1220
    .local v7, "since":J
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v9

    .line 1221
    .local v9, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v10

    sub-int/2addr v10, v6

    .line 1222
    .end local v2    # "value":I
    .local v10, "value":I
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v9}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v6

    if-ge v2, v6, :cond_b8

    .line 1223
    add-int/lit8 v10, v10, 0x1

    move v2, v10

    goto :goto_b9

    .line 1222
    :cond_b8
    move v2, v10

    .line 1225
    .end local v7    # "since":J
    .end local v9    # "d":Lsun/util/calendar/CalendarDate;
    .end local v10    # "value":I
    .restart local v2    # "value":I
    :goto_b9
    goto :goto_11c

    .line 1186
    :pswitch_ba
    if-lez v5, :cond_ef

    .line 1187
    const/4 v2, 0x1

    .line 1188
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, v5

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v7

    invoke-virtual {v6, v7}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v6

    .line 1189
    .local v6, "since":J
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v6, v7, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 1193
    .local v8, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v8}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v9

    invoke-virtual {v4, v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1194
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1195
    nop

    .line 1196
    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    invoke-direct {v0, v8}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_ee

    .line 1197
    add-int/lit8 v2, v2, 0x1

    .line 1199
    .end local v6    # "since":J
    .end local v8    # "d":Lsun/util/calendar/CalendarDate;
    :cond_ee
    goto :goto_11c

    .line 1200
    :cond_ef
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v2

    .line 1201
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v10

    invoke-virtual {v9, v7, v8, v10}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 1205
    .local v7, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v7}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v8

    .line 1206
    .local v8, "y":I
    if-le v8, v6, :cond_105

    .line 1207
    add-int/lit16 v8, v8, -0x190

    .line 1209
    :cond_105
    invoke-virtual {v4, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setYear(I)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 1210
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 1211
    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    invoke-direct {v0, v7}, Ljava/util/JapaneseImperialCalendar;->getYearOffsetInMillis(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v11

    cmp-long v6, v9, v11

    if-gez v6, :cond_11b

    .line 1212
    add-int/lit8 v2, v2, 0x1

    .line 1215
    .end local v7    # "d":Lsun/util/calendar/CalendarDate;
    .end local v8    # "y":I
    :cond_11b
    nop

    .line 1248
    :cond_11c
    :goto_11c
    return v2

    nop

    :pswitch_data_11e
    .packed-switch 0x1
        :pswitch_ba
        :pswitch_86
        :pswitch_31
    .end packed-switch
.end method

.method public whitelist test-api getCalendarType()Ljava/lang/String;
    .registers 2

    .line 347
    const-string v0, "japanese"

    return-object v0
.end method

.method public whitelist test-api getDisplayName(IILjava/util/Locale;)Ljava/lang/String;
    .registers 11
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;

    .line 991
    const/4 v4, 0x4

    const/16 v6, 0x287

    const/4 v3, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .end local p1    # "field":I
    .end local p2    # "style":I
    .end local p3    # "locale":Ljava/util/Locale;
    .local v1, "field":I
    .local v2, "style":I
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual/range {v0 .. v6}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_10

    .line 993
    return-object p2

    .line 996
    :cond_10
    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result p1

    .line 999
    .local p1, "fieldValue":I
    const/4 p3, 0x1

    if-ne v1, p3, :cond_28

    .line 1000
    invoke-virtual {p0, v2}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_27

    if-ne p1, p3, :cond_27

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/util/JapaneseImperialCalendar;->get(I)I

    move-result v3

    if-nez v3, :cond_28

    .line 1001
    :cond_27
    return-object p2

    .line 1004
    :cond_28
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1, p1, v2, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueName(Ljava/lang/String;IIILjava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 1008
    .local p2, "name":Ljava/lang/String;
    if-eqz p2, :cond_38

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4f

    :cond_38
    if-nez v1, :cond_4f

    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v3, v3

    if-ge p1, v3, :cond_4f

    .line 1011
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v3, v3, p1

    .line 1012
    .local v3, "era":Lsun/util/calendar/Era;
    if-ne v2, p3, :cond_4a

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object p3

    goto :goto_4e

    :cond_4a
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object p3

    :goto_4e
    move-object p2, p3

    .line 1014
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_4f
    return-object p2
.end method

.method public whitelist test-api getDisplayNames(IILjava/util/Locale;)Ljava/util/Map;
    .registers 12
    .param p1, "field"    # I
    .param p2, "style"    # I
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1019
    const/4 v4, 0x4

    const/16 v6, 0x287

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .end local p1    # "field":I
    .end local p2    # "style":I
    .end local p3    # "locale":Ljava/util/Locale;
    .local v1, "field":I
    .local v2, "style":I
    .local v5, "locale":Ljava/util/Locale;
    invoke-virtual/range {v0 .. v6}, Ljava/util/JapaneseImperialCalendar;->checkDisplayNameParams(IIIILjava/util/Locale;I)Z

    move-result p1

    if-nez p1, :cond_10

    .line 1021
    const/4 p1, 0x0

    return-object p1

    .line 1024
    :cond_10
    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getCalendarType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1, v2, v5}, Lsun/util/locale/provider/CalendarDataUtility;->retrieveFieldValueNames(Ljava/lang/String;IILjava/util/Locale;)Ljava/util/Map;

    move-result-object p1

    .line 1026
    .local p1, "names":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_90

    .line 1027
    if-nez v1, :cond_90

    .line 1028
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    .line 1029
    .local p2, "size":I
    if-nez v2, :cond_49

    .line 1030
    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    .line 1032
    .local p3, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_45

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1033
    .local v4, "key":Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-interface {p3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1034
    .end local v4    # "key":Ljava/lang/String;
    goto :goto_2f

    .line 1035
    :cond_45
    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p2

    .line 1037
    .end local p3    # "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_49
    sget-object p3, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length p3, p3

    if-ge p2, p3, :cond_90

    .line 1038
    invoke-virtual {p0, v2}, Ljava/util/JapaneseImperialCalendar;->getBaseStyle(I)I

    move-result p3

    .line 1039
    .local p3, "baseStyle":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_53
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v4, v4

    if-ge v3, v4, :cond_90

    .line 1040
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8d

    .line 1041
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v4, v4, v3

    .line 1042
    .local v4, "era":Lsun/util/calendar/Era;
    if-eqz p3, :cond_72

    const/4 v6, 0x1

    if-eq p3, v6, :cond_72

    const/4 v6, 0x4

    if-ne p3, v6, :cond_7d

    .line 1044
    :cond_72
    invoke-virtual {v4}, Lsun/util/calendar/Era;->getAbbreviation()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    :cond_7d
    if-eqz p3, :cond_82

    const/4 v6, 0x2

    if-ne p3, v6, :cond_8d

    .line 1047
    :cond_82
    invoke-virtual {v4}, Lsun/util/calendar/Era;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    .end local v4    # "era":Lsun/util/calendar/Era;
    :cond_8d
    add-int/lit8 v3, v3, 0x1

    goto :goto_53

    .line 1054
    .end local v3    # "i":I
    .end local p2    # "size":I
    .end local p3    # "baseStyle":I
    :cond_90
    return-object p1
.end method

.method public whitelist test-api getGreatestMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1127
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    goto :goto_8

    :cond_4
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    :goto_8
    return v0
.end method

.method public whitelist test-api getLeastMaximum(I)I
    .registers 4
    .param p1, "field"    # I

    .line 1149
    packed-switch p1, :pswitch_data_16

    .line 1151
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    aget v0, v0, p1

    goto :goto_15

    .line 1150
    :pswitch_8
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-virtual {p0, v1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1149
    :goto_15
    return v0

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist test-api getMaximum(I)I
    .registers 6
    .param p1, "field"    # I

    .line 1098
    packed-switch p1, :pswitch_data_26

    .line 1104
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MAX_VALUES:[I

    aget v1, v0, p1

    goto :goto_24

    .line 1101
    :pswitch_8
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide v1, 0x7fffffffffffffffL

    invoke-virtual {p0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    .line 1102
    .local v0, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    sget-object v1, Ljava/util/JapaneseImperialCalendar;->LEAST_MAX_VALUES:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1098
    .end local v0    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    :goto_24
    return v1

    nop

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public whitelist test-api getMinimum(I)I
    .registers 3
    .param p1, "field"    # I

    .line 1076
    sget-object v0, Ljava/util/JapaneseImperialCalendar;->MIN_VALUES:[I

    aget v0, v0, p1

    return v0
.end method

.method public whitelist test-api getTimeZone()Ljava/util/TimeZone;
    .registers 3

    .line 1496
    invoke-super {p0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    .line 1498
    .local v0, "zone":Ljava/util/TimeZone;
    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1499
    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 375
    invoke-super {p0}, Ljava/util/Calendar;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api roll(II)V
    .registers 28
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 564
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    if-nez v2, :cond_9

    .line 565
    return-void

    .line 568
    :cond_9
    if-ltz v1, :cond_5ec

    const/16 v3, 0xf

    if-ge v1, v3, :cond_5ec

    .line 573
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->complete()V

    .line 575
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v4

    .line 576
    .local v4, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v5

    .line 578
    .local v5, "max":I
    const-wide/high16 v6, -0x8000000000000000L

    const/4 v8, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, 0x5

    const/4 v15, 0x7

    const-wide/16 v16, 0x7

    const/4 v9, 0x1

    packed-switch v1, :pswitch_data_5f2

    move v10, v4

    .end local v4    # "min":I
    .local v10, "min":I
    goto/16 :goto_5df

    .line 593
    .end local v10    # "min":I
    .restart local v4    # "min":I
    :pswitch_2a
    add-int/lit8 v6, v5, 0x1

    .line 594
    .local v6, "unit":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    .line 595
    .local v7, "h":I
    add-int v8, v7, v2

    rem-int/2addr v8, v6

    .line 596
    .local v8, "nh":I
    if-gez v8, :cond_36

    .line 597
    add-int/2addr v8, v6

    .line 599
    :cond_36
    move/from16 v18, v4

    .end local v4    # "min":I
    .local v18, "min":I
    iget-wide v3, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    const v13, 0x36ee80

    sub-int v15, v8, v7

    mul-int/2addr v15, v13

    int-to-long v10, v15

    add-long/2addr v3, v10

    iput-wide v3, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 605
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v10, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v10, v11, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 606
    .local v3, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    const/16 v11, 0xa

    if-eq v4, v10, :cond_85

    .line 607
    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v4

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/CalendarDate;

    .line 608
    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    .line 609
    invoke-virtual {v0, v12}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v10

    add-int/2addr v10, v9

    .line 610
    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    .line 608
    invoke-virtual {v3, v4, v10, v9}, Lsun/util/calendar/CalendarDate;->setDate(III)Lsun/util/calendar/CalendarDate;

    .line 611
    if-ne v1, v11, :cond_7d

    .line 612
    nop

    .line 613
    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lsun/util/calendar/CalendarDate;->addHours(I)Lsun/util/calendar/CalendarDate;

    .line 615
    :cond_7d
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v4, v3}, Lsun/util/calendar/LocalGregorianCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v9

    iput-wide v9, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    .line 617
    :cond_85
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getHours()I

    move-result v4

    .line 618
    .local v4, "hourOfDay":I
    rem-int v9, v4, v6

    invoke-virtual {v0, v1, v9}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 619
    if-ne v1, v11, :cond_96

    .line 620
    const/16 v9, 0xb

    invoke-virtual {v0, v9, v4}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    goto :goto_a2

    .line 622
    :cond_96
    div-int/lit8 v9, v4, 0xc

    const/16 v10, 0x9

    invoke-virtual {v0, v10, v9}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 623
    rem-int/lit8 v9, v4, 0xc

    invoke-virtual {v0, v11, v9}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 627
    :goto_a2
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getZoneOffset()I

    move-result v9

    .line 628
    .local v9, "zoneOffset":I
    invoke-virtual {v3}, Lsun/util/calendar/CalendarDate;->getDaylightSaving()I

    move-result v10

    .line 629
    .local v10, "saving":I
    sub-int v11, v9, v10

    const/16 v13, 0xf

    invoke-virtual {v0, v13, v11}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 630
    const/16 v11, 0x10

    invoke-virtual {v0, v11, v10}, Ljava/util/JapaneseImperialCalendar;->internalSet(II)V

    .line 631
    return-void

    .line 954
    .end local v3    # "d":Lsun/util/calendar/CalendarDate;
    .end local v6    # "unit":I
    .end local v7    # "h":I
    .end local v8    # "nh":I
    .end local v9    # "zoneOffset":I
    .end local v10    # "saving":I
    .end local v18    # "min":I
    .local v4, "min":I
    :pswitch_b7
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    const/4 v4, 0x1

    .line 955
    .end local v18    # "min":I
    .restart local v4    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_e6

    .line 956
    invoke-virtual {v0, v14}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    .line 957
    .local v3, "dom":I
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v7, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v6

    .line 958
    .local v6, "monthLength":I
    rem-int/lit8 v7, v6, 0x7

    .line 959
    .local v7, "lastDays":I
    div-int/lit8 v5, v6, 0x7

    .line 960
    add-int/lit8 v8, v3, -0x1

    rem-int/2addr v8, v15

    .line 961
    .local v8, "x":I
    if-ge v8, v7, :cond_dd

    .line 962
    add-int/lit8 v5, v5, 0x1

    .line 964
    :cond_dd
    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    invoke-virtual {v0, v15, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 965
    goto/16 :goto_5e0

    .line 969
    .end local v3    # "dom":I
    .end local v6    # "monthLength":I
    .end local v7    # "lastDays":I
    .end local v8    # "x":I
    :cond_e6
    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 970
    .local v6, "fd":J
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v3, v6, v7}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v10

    .line 971
    .local v10, "month1":J
    invoke-direct {v0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v3

    .line 972
    .local v3, "monthLength":I
    rem-int/lit8 v8, v3, 0x7

    .line 973
    .local v8, "lastDays":I
    div-int/lit8 v5, v3, 0x7

    .line 974
    sub-long v12, v6, v10

    long-to-int v12, v12

    rem-int/2addr v12, v15

    .line 975
    .local v12, "x":I
    if-ge v12, v8, :cond_fe

    .line 976
    add-int/lit8 v5, v5, 0x1

    .line 978
    :cond_fe
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    invoke-static {v13, v2, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v13

    sub-int/2addr v13, v9

    .line 979
    .local v13, "value":I
    mul-int/lit8 v9, v13, 0x7

    int-to-long v14, v9

    add-long/2addr v14, v10

    move/from16 v17, v3

    move/from16 v16, v4

    .end local v3    # "monthLength":I
    .end local v4    # "min":I
    .local v16, "min":I
    .local v17, "monthLength":I
    int-to-long v3, v12

    add-long/2addr v14, v3

    .line 980
    .end local v6    # "fd":J
    .local v14, "fd":J
    invoke-static {v14, v15}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 981
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v4

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 982
    return-void

    .line 918
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v8    # "lastDays":I
    .end local v10    # "month1":J
    .end local v12    # "x":I
    .end local v13    # "value":I
    .end local v14    # "fd":J
    .end local v16    # "min":I
    .end local v17    # "monthLength":I
    .restart local v4    # "min":I
    :pswitch_11e
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 919
    .local v3, "normalizedYear":I
    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v4

    if-nez v4, :cond_14a

    add-int/lit8 v4, v3, -0x1

    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v4

    if-nez v4, :cond_14a

    .line 922
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    .line 923
    .local v4, "weekOfYear":I
    if-le v4, v9, :cond_14a

    const/16 v6, 0x34

    if-ge v4, v6, :cond_14a

    .line 924
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    invoke-virtual {v0, v13, v6}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 925
    const/4 v5, 0x7

    .line 926
    move/from16 v4, v18

    goto/16 :goto_5e0

    .line 934
    .end local v4    # "weekOfYear":I
    :cond_14a
    rem-int/2addr v2, v15

    .line 935
    .end local p2    # "amount":I
    .local v2, "amount":I
    if-nez v2, :cond_14e

    .line 936
    return-void

    .line 938
    :cond_14e
    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 939
    .restart local v6    # "fd":J
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v4

    invoke-static {v6, v7, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v10

    .line 940
    .local v10, "dowFirst":J
    int-to-long v12, v2

    add-long/2addr v6, v12

    .line 941
    cmp-long v4, v6, v10

    if-gez v4, :cond_161

    .line 942
    add-long v6, v6, v16

    goto :goto_169

    .line 943
    :cond_161
    add-long v12, v10, v16

    cmp-long v4, v6, v12

    if-ltz v4, :cond_169

    .line 944
    sub-long v6, v6, v16

    .line 946
    :cond_169
    :goto_169
    invoke-static {v6, v7}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 947
    .local v4, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-static {v4}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v12

    invoke-virtual {v0, v8, v12}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 948
    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v8

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v12

    sub-int/2addr v12, v9

    invoke-virtual {v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v9

    invoke-virtual {v0, v8, v12, v9}, Ljava/util/JapaneseImperialCalendar;->set(III)V

    .line 949
    return-void

    .line 900
    .end local v2    # "amount":I
    .end local v3    # "normalizedYear":I
    .end local v6    # "fd":J
    .end local v10    # "dowFirst":J
    .end local v18    # "min":I
    .local v4, "min":I
    .restart local p2    # "amount":I
    :pswitch_185
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 901
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_19b

    .line 902
    move/from16 v4, v18

    goto/16 :goto_5e0

    .line 907
    :cond_19b
    const/4 v3, 0x6

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    move/from16 v10, v18

    .end local v18    # "min":I
    .local v10, "min":I
    invoke-static {v4, v2, v10, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v4

    .line 908
    .local v4, "value":I
    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    invoke-virtual {v0, v3}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    int-to-long v13, v3

    sub-long/2addr v6, v13

    .line 909
    .local v6, "jan0":J
    int-to-long v13, v4

    add-long/2addr v13, v6

    invoke-static {v13, v14}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    .line 910
    .local v3, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    nop

    .line 911
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-virtual {v0, v12, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 912
    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 913
    return-void

    .line 875
    .end local v3    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v6    # "jan0":J
    .end local v10    # "min":I
    .local v4, "min":I
    :pswitch_1c6
    move v10, v4

    .end local v4    # "min":I
    .restart local v10    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_1de

    .line 876
    sget-object v3, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v4, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v5

    .line 877
    move v4, v10

    goto/16 :goto_5e0

    .line 884
    :cond_1de
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    invoke-direct {v0, v3, v6, v7}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v3

    .line 889
    .local v3, "month1":J
    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    sub-long/2addr v6, v3

    long-to-int v6, v6

    .line 890
    invoke-direct {v0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v7

    sub-int/2addr v7, v9

    .line 889
    invoke-static {v6, v2, v8, v7}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v6

    .line 891
    .local v6, "value":I
    int-to-long v7, v6

    add-long/2addr v7, v3

    invoke-static {v7, v8}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v7

    .line 892
    .local v7, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    nop

    .line 894
    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 895
    return-void

    .line 828
    .end local v3    # "month1":J
    .end local v6    # "value":I
    .end local v7    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v10    # "min":I
    .restart local v4    # "min":I
    :pswitch_203
    move v10, v4

    .end local v4    # "min":I
    .restart local v10    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    .line 830
    .local v3, "isTransitionYear":Z
    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v6

    sub-int/2addr v4, v6

    .line 831
    .local v4, "dow":I
    if-gez v4, :cond_21b

    .line 832
    add-int/lit8 v4, v4, 0x7

    .line 835
    :cond_21b
    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 838
    .local v6, "fd":J
    const-wide/16 v11, 0x1

    if-eqz v3, :cond_22c

    .line 839
    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, v8, v6, v7}, Ljava/util/JapaneseImperialCalendar;->getFixedDateMonth1(Lsun/util/calendar/LocalGregorianCalendar$Date;J)J

    move-result-wide v13

    .line 840
    .local v13, "month1":J
    invoke-direct {v0}, Ljava/util/JapaneseImperialCalendar;->actualMonthLength()I

    move-result v8

    .local v8, "monthLength":I
    goto :goto_23d

    .line 842
    .end local v8    # "monthLength":I
    .end local v13    # "month1":J
    :cond_22c
    const/4 v8, 0x5

    invoke-virtual {v0, v8}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v13

    int-to-long v13, v13

    sub-long v13, v6, v13

    add-long/2addr v13, v11

    .line 843
    .restart local v13    # "month1":J
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v8, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getMonthLength(Lsun/util/calendar/CalendarDate;)I

    move-result v8

    .line 847
    .restart local v8    # "monthLength":I
    :goto_23d
    const-wide/16 v18, 0x6

    move-wide/from16 v20, v11

    add-long v11, v13, v18

    .line 848
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getFirstDayOfWeek()I

    move-result v15

    .line 847
    invoke-static {v11, v12, v15}, Lsun/util/calendar/LocalGregorianCalendar;->getDayOfWeekDateOnOrBefore(JI)J

    move-result-wide v11

    .line 851
    .local v11, "monthDay1st":J
    move/from16 v18, v10

    .end local v10    # "min":I
    .restart local v18    # "min":I
    sub-long v9, v11, v13

    long-to-int v9, v9

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getMinimalDaysInFirstWeek()I

    move-result v10

    if-lt v9, v10, :cond_258

    .line 852
    sub-long v11, v11, v16

    .line 854
    :cond_258
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 857
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v9

    const/4 v10, 0x1

    invoke-static {v9, v2, v10, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v9

    sub-int/2addr v9, v10

    .line 860
    .local v9, "value":I
    mul-int/lit8 v10, v9, 0x7

    move-wide v15, v6

    move v7, v5

    .end local v5    # "max":I
    .end local v6    # "fd":J
    .local v7, "max":I
    .local v15, "fd":J
    int-to-long v5, v10

    add-long/2addr v5, v11

    move-wide/from16 v22, v5

    int-to-long v5, v4

    add-long v5, v22, v5

    .line 864
    .local v5, "nfd":J
    cmp-long v10, v5, v13

    if-gez v10, :cond_27a

    .line 865
    move-wide v5, v13

    move v10, v3

    move/from16 v17, v4

    goto :goto_287

    .line 866
    :cond_27a
    move v10, v3

    move/from16 v17, v4

    .end local v3    # "isTransitionYear":Z
    .end local v4    # "dow":I
    .local v10, "isTransitionYear":Z
    .local v17, "dow":I
    int-to-long v3, v8

    add-long/2addr v3, v13

    cmp-long v3, v5, v3

    if-ltz v3, :cond_287

    .line 867
    int-to-long v3, v8

    add-long/2addr v3, v13

    sub-long v5, v3, v20

    .line 869
    :cond_287
    :goto_287
    invoke-static {v5, v6}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v3

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 870
    return-void

    .line 756
    .end local v7    # "max":I
    .end local v8    # "monthLength":I
    .end local v9    # "value":I
    .end local v10    # "isTransitionYear":Z
    .end local v11    # "monthDay1st":J
    .end local v13    # "month1":J
    .end local v15    # "fd":J
    .end local v17    # "dow":I
    .end local v18    # "min":I
    .local v4, "min":I
    .local v5, "max":I
    :pswitch_294
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    .line 757
    .local v3, "y":I
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v4

    .line 758
    .end local v5    # "max":I
    .local v4, "max":I
    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    invoke-virtual {v0, v15, v5}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 759
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v5

    .line 760
    .local v5, "woy":I
    add-int v8, v5, v2

    .line 761
    .local v8, "value":I
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v9

    invoke-direct {v0, v9}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v9

    if-nez v9, :cond_34b

    .line 762
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v9

    .line 763
    .local v9, "year":I
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v11

    if-ne v9, v11, :cond_2ce

    .line 764
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v4

    move v10, v4

    move/from16 v4, v18

    goto :goto_2ed

    .line 765
    :cond_2ce
    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v11

    if-ne v9, v11, :cond_2ea

    .line 766
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v10

    .line 767
    .end local v18    # "min":I
    .local v10, "min":I
    invoke-virtual {v0, v13}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v4

    .line 768
    if-le v8, v10, :cond_2e4

    if-ge v8, v4, :cond_2e4

    .line 769
    invoke-virtual {v0, v13, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 770
    return-void

    .line 776
    :cond_2e4
    move/from16 v24, v10

    move v10, v4

    move/from16 v4, v24

    goto :goto_2ed

    .line 765
    .end local v10    # "min":I
    .restart local v18    # "min":I
    :cond_2ea
    move v10, v4

    move/from16 v4, v18

    .line 776
    .end local v18    # "min":I
    .local v4, "min":I
    .local v10, "max":I
    :goto_2ed
    if-le v8, v4, :cond_2f5

    if-ge v8, v10, :cond_2f5

    .line 777
    invoke-virtual {v0, v13, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 778
    return-void

    .line 780
    :cond_2f5
    iget-wide v11, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 782
    .local v11, "fd":J
    sub-int v14, v5, v4

    mul-int/2addr v14, v15

    int-to-long v13, v14

    sub-long v13, v11, v13

    .line 783
    .local v13, "day1":J
    move/from16 v17, v15

    const/4 v15, 0x1

    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v15

    if-eq v9, v15, :cond_314

    .line 784
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v6, v13, v14}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v6

    if-eq v6, v3, :cond_311

    .line 785
    add-int/lit8 v4, v4, 0x1

    goto :goto_330

    .line 784
    :cond_311
    move/from16 v18, v4

    goto :goto_32e

    .line 788
    :cond_314
    sget-object v15, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v15, v6, v7, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 789
    .local v4, "d":Lsun/util/calendar/CalendarDate;
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v6, v4}, Lsun/util/calendar/LocalGregorianCalendar;->getFixedDate(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v6

    cmp-long v6, v13, v6

    if-gez v6, :cond_32e

    .line 790
    add-int/lit8 v6, v18, 0x1

    move v4, v6

    .end local v18    # "min":I
    .local v6, "min":I
    goto :goto_330

    .line 795
    .end local v4    # "d":Lsun/util/calendar/CalendarDate;
    .end local v6    # "min":I
    .restart local v18    # "min":I
    :cond_32e
    :goto_32e
    move/from16 v4, v18

    .end local v18    # "min":I
    .local v4, "min":I
    :goto_330
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v6

    sub-int v6, v10, v6

    mul-int/lit8 v6, v6, 0x7

    int-to-long v6, v6

    add-long/2addr v11, v6

    .line 796
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->gcal:Lsun/util/calendar/Gregorian;

    invoke-virtual {v6, v11, v12}, Lsun/util/calendar/Gregorian;->getYearFromFixedDate(J)I

    move-result v6

    if-eq v6, v3, :cond_348

    .line 797
    add-int/lit8 v6, v10, -0x1

    move v5, v6

    .end local v10    # "max":I
    .local v6, "max":I
    goto/16 :goto_5e0

    .line 796
    .end local v6    # "max":I
    .restart local v10    # "max":I
    :cond_348
    move v5, v10

    goto/16 :goto_5e0

    .line 803
    .end local v9    # "year":I
    .end local v10    # "max":I
    .end local v11    # "fd":J
    .end local v13    # "day1":J
    .local v4, "max":I
    .restart local v18    # "min":I
    :cond_34b
    move/from16 v17, v15

    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->cachedFixedDate:J

    .line 804
    .local v6, "fd":J
    sub-int v9, v5, v18

    mul-int/lit8 v9, v9, 0x7

    int-to-long v9, v9

    sub-long v9, v6, v9

    .line 806
    .local v9, "day1":J
    invoke-static {v9, v10}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v11

    .line 807
    .local v11, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v11}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v13

    iget-object v14, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v14}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v14

    if-ne v13, v14, :cond_376

    invoke-virtual {v11}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v13

    iget-object v14, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v14}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v14

    if-eq v13, v14, :cond_373

    goto :goto_376

    :cond_373
    move/from16 v13, v18

    goto :goto_378

    .line 808
    :cond_376
    :goto_376
    add-int/lit8 v13, v18, 0x1

    .line 812
    .end local v18    # "min":I
    .local v13, "min":I
    :goto_378
    sub-int v14, v4, v5

    mul-int/lit8 v14, v14, 0x7

    int-to-long v14, v14

    add-long/2addr v6, v14

    .line 813
    sget-object v14, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v14, v11, v6, v7}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 814
    invoke-virtual {v11}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v14

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v15

    if-ne v14, v15, :cond_39b

    invoke-virtual {v11}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v14

    iget-object v15, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v15}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v15

    if-eq v14, v15, :cond_39d

    .line 815
    :cond_39b
    add-int/lit8 v4, v4, -0x1

    .line 819
    :cond_39d
    invoke-static {v5, v2, v13, v4}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v14

    const/16 v22, 0x1

    add-int/lit8 v14, v14, -0x1

    .line 820
    .end local v8    # "value":I
    .local v14, "value":I
    mul-int/lit8 v8, v14, 0x7

    move/from16 v16, v13

    .end local v13    # "min":I
    .restart local v16    # "min":I
    int-to-long v12, v8

    add-long/2addr v12, v9

    invoke-static {v12, v13}, Ljava/util/JapaneseImperialCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v8

    .line 821
    .end local v11    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .local v8, "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v11}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 822
    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v11

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v11}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 823
    return-void

    .line 645
    .end local v3    # "y":I
    .end local v6    # "fd":J
    .end local v8    # "d":Lsun/util/calendar/LocalGregorianCalendar$Date;
    .end local v9    # "day1":J
    .end local v14    # "value":I
    .end local v16    # "min":I
    .local v4, "min":I
    .local v5, "max":I
    :pswitch_3c2
    move/from16 v18, v4

    .end local v4    # "min":I
    .restart local v18    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/JapaneseImperialCalendar;->isTransitionYear(I)Z

    move-result v3

    if-nez v3, :cond_521

    .line 646
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    .line 647
    .local v3, "year":I
    const/4 v10, 0x1

    invoke-virtual {v0, v10}, Ljava/util/JapaneseImperialCalendar;->getMaximum(I)I

    move-result v4

    if-ne v3, v4, :cond_46d

    .line 648
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v6, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 649
    .local v4, "jd":Lsun/util/calendar/CalendarDate;
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v6, v7, v8, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 650
    .local v6, "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v7

    const/16 v22, 0x1

    add-int/lit8 v5, v7, -0x1

    .line 651
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    move/from16 v10, v18

    .end local v18    # "min":I
    .local v10, "min":I
    invoke-static {v7, v2, v10, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v7

    .line 652
    .local v7, "n":I
    if-ne v7, v5, :cond_466

    .line 654
    const/16 v8, -0x190

    invoke-virtual {v4, v8}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 655
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 656
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    if-le v8, v9, :cond_42c

    .line 657
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    invoke-virtual {v4, v8}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 658
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 660
    :cond_42c
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    if-ne v8, v9, :cond_45e

    .line 661
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v8

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v11

    cmp-long v8, v8, v11

    if-lez v8, :cond_45e

    .line 662
    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v4, v8}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 663
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    const/16 v22, 0x1

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 664
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v8, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 666
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    move v7, v8

    .line 668
    :cond_45e
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 670
    :cond_466
    const/4 v15, 0x2

    invoke-virtual {v0, v15, v7}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 671
    .end local v4    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v7    # "n":I
    move v4, v10

    goto/16 :goto_51f

    .end local v10    # "min":I
    .restart local v18    # "min":I
    :cond_46d
    move/from16 v10, v18

    .end local v18    # "min":I
    .restart local v10    # "min":I
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Ljava/util/JapaneseImperialCalendar;->getMinimum(I)I

    move-result v8

    if-ne v3, v8, :cond_4fe

    .line 672
    sget-object v4, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    iget-wide v8, v0, Ljava/util/JapaneseImperialCalendar;->time:J

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v11

    invoke-virtual {v4, v8, v9, v11}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v4

    .line 673
    .restart local v4    # "jd":Lsun/util/calendar/CalendarDate;
    sget-object v8, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v0}, Ljava/util/JapaneseImperialCalendar;->getZone()Ljava/util/TimeZone;

    move-result-object v9

    invoke-virtual {v8, v6, v7, v9}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v6

    .line 674
    .restart local v6    # "d":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v7

    const/16 v22, 0x1

    add-int/lit8 v7, v7, -0x1

    .line 675
    .end local v10    # "min":I
    .local v7, "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v8

    invoke-static {v8, v2, v7, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v8

    .line 676
    .local v8, "n":I
    if-ne v8, v7, :cond_4f8

    .line 678
    const/16 v9, 0x190

    invoke-virtual {v4, v9}, Lsun/util/calendar/CalendarDate;->addYear(I)Lsun/util/calendar/CalendarDate;

    .line 679
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v9}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 680
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    if-ge v9, v10, :cond_4be

    .line 681
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    invoke-virtual {v4, v9}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 682
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 684
    :cond_4be
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v10

    if-ne v9, v10, :cond_4f0

    .line 685
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v9

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-gez v9, :cond_4f0

    .line 686
    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v4, v9}, Lsun/util/calendar/CalendarDate;->setMonth(I)Lsun/util/calendar/CalendarDate;

    .line 687
    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    const/16 v22, 0x1

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v4, v9}, Lsun/util/calendar/CalendarDate;->setDayOfMonth(I)Lsun/util/calendar/CalendarDate;

    .line 688
    sget-object v9, Ljava/util/JapaneseImperialCalendar;->jcal:Lsun/util/calendar/LocalGregorianCalendar;

    invoke-virtual {v9, v4}, Lsun/util/calendar/LocalGregorianCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 690
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    move v8, v9

    .line 692
    :cond_4f0
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 694
    :cond_4f8
    const/4 v15, 0x2

    invoke-virtual {v0, v15, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 695
    .end local v4    # "jd":Lsun/util/calendar/CalendarDate;
    .end local v6    # "d":Lsun/util/calendar/CalendarDate;
    .end local v8    # "n":I
    move v4, v7

    goto :goto_51f

    .line 696
    .end local v7    # "min":I
    .restart local v10    # "min":I
    :cond_4fe
    const/4 v15, 0x2

    invoke-virtual {v0, v15}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v4

    add-int/2addr v4, v2

    const/16 v19, 0xc

    rem-int/lit8 v4, v4, 0xc

    .line 697
    .local v4, "mon":I
    if-gez v4, :cond_50c

    .line 698
    add-int/lit8 v4, v4, 0xc

    .line 700
    :cond_50c
    const/4 v15, 0x2

    invoke-virtual {v0, v15, v4}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 706
    invoke-direct {v0, v4}, Ljava/util/JapaneseImperialCalendar;->monthLength(I)I

    move-result v6

    .line 707
    .local v6, "monthLen":I
    const/4 v9, 0x5

    invoke-virtual {v0, v9}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    if-le v7, v6, :cond_51e

    .line 708
    invoke-virtual {v0, v9, v6}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 711
    .end local v3    # "year":I
    .end local v4    # "mon":I
    .end local v6    # "monthLen":I
    :cond_51e
    move v4, v10

    .end local v10    # "min":I
    .local v4, "min":I
    :goto_51f
    goto/16 :goto_5d3

    .line 712
    .end local v4    # "min":I
    .restart local v18    # "min":I
    :cond_521
    move/from16 v10, v18

    .end local v18    # "min":I
    .restart local v10    # "min":I
    iget-object v3, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-static {v3}, Ljava/util/JapaneseImperialCalendar;->getEraIndex(Lsun/util/calendar/LocalGregorianCalendar$Date;)I

    move-result v3

    .line 713
    .local v3, "eraIndex":I
    const/4 v4, 0x0

    .line 714
    .local v4, "transition":Lsun/util/calendar/CalendarDate;
    iget-object v6, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_547

    .line 715
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .line 716
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v6

    sub-int/2addr v6, v7

    move/from16 v24, v5

    move-object v5, v4

    move v4, v6

    move/from16 v6, v24

    .end local v10    # "min":I
    .local v6, "min":I
    goto :goto_581

    .line 718
    .end local v6    # "min":I
    .restart local v10    # "min":I
    :cond_547
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v6, v6

    sub-int/2addr v6, v7

    if-ge v3, v6, :cond_57e

    .line 719
    sget-object v6, Ljava/util/JapaneseImperialCalendar;->eras:[Lsun/util/calendar/Era;

    add-int/lit8 v7, v3, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v4

    .line 720
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    iget-object v7, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v7}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v7

    if-ne v6, v7, :cond_57a

    .line 721
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v6

    const/4 v7, 0x1

    add-int/lit8 v5, v6, -0x1

    .line 722
    invoke-virtual {v4}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v6

    if-ne v6, v7, :cond_576

    .line 723
    add-int/lit8 v5, v5, -0x1

    move v6, v5

    move-object v5, v4

    move v4, v10

    goto :goto_581

    .line 722
    :cond_576
    move v6, v5

    move-object v5, v4

    move v4, v10

    goto :goto_581

    .line 720
    :cond_57a
    move v6, v5

    move-object v5, v4

    move v4, v10

    goto :goto_581

    .line 718
    :cond_57e
    move v6, v5

    move-object v5, v4

    move v4, v10

    .line 729
    .end local v10    # "min":I
    .local v4, "min":I
    .local v5, "transition":Lsun/util/calendar/CalendarDate;
    .local v6, "max":I
    :goto_581
    if-ne v4, v6, :cond_584

    .line 733
    return-void

    .line 735
    :cond_584
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v7

    invoke-static {v7, v2, v4, v6}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v7

    .line 736
    .local v7, "n":I
    const/4 v15, 0x2

    invoke-virtual {v0, v15, v7}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 737
    if-ne v7, v4, :cond_5b4

    .line 738
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    const/4 v10, 0x1

    if-ne v8, v10, :cond_59f

    .line 739
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    if-eq v8, v10, :cond_5d2

    .line 740
    :cond_59f
    iget-object v8, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v8

    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v9

    if-ge v8, v9, :cond_5d2

    .line 741
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    const/4 v9, 0x5

    invoke-virtual {v0, v9, v8}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    goto :goto_5d2

    .line 744
    :cond_5b4
    if-ne v7, v6, :cond_5d2

    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v8

    const/16 v22, 0x1

    add-int/lit8 v8, v8, -0x1

    if-ne v8, v7, :cond_5d2

    .line 745
    invoke-virtual {v5}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v8

    .line 746
    .local v8, "dom":I
    iget-object v9, v0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v9}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v9

    if-lt v9, v8, :cond_5d2

    .line 747
    add-int/lit8 v9, v8, -0x1

    const/4 v12, 0x5

    invoke-virtual {v0, v12, v9}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 751
    .end local v3    # "eraIndex":I
    .end local v5    # "transition":Lsun/util/calendar/CalendarDate;
    .end local v7    # "n":I
    .end local v8    # "dom":I
    :cond_5d2
    :goto_5d2
    move v5, v6

    .end local v6    # "max":I
    .local v5, "max":I
    :goto_5d3
    return-void

    .line 635
    :pswitch_5d4
    move v10, v4

    .end local v4    # "min":I
    .restart local v10    # "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMinimum(I)I

    move-result v4

    .line 636
    .end local v10    # "min":I
    .restart local v4    # "min":I
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->getActualMaximum(I)I

    move-result v5

    .line 637
    goto :goto_5e0

    .line 588
    :pswitch_5de
    move v10, v4

    .line 986
    .end local v4    # "min":I
    .restart local v10    # "min":I
    :goto_5df
    move v4, v10

    .end local v10    # "min":I
    .restart local v4    # "min":I
    :goto_5e0
    invoke-virtual/range {p0 .. p1}, Ljava/util/JapaneseImperialCalendar;->internalGet(I)I

    move-result v3

    invoke-static {v3, v2, v4, v5}, Ljava/util/JapaneseImperialCalendar;->getRolledValue(IIII)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/JapaneseImperialCalendar;->set(II)V

    .line 987
    return-void

    .line 569
    .end local v4    # "min":I
    .end local v5    # "max":I
    :cond_5ec
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    :pswitch_data_5f2
    .packed-switch 0x0
        :pswitch_5de
        :pswitch_5d4
        :pswitch_3c2
        :pswitch_294
        :pswitch_203
        :pswitch_1c6
        :pswitch_185
        :pswitch_11e
        :pswitch_b7
        :pswitch_5de
        :pswitch_2a
        :pswitch_2a
        :pswitch_5de
        :pswitch_5de
        :pswitch_5de
    .end packed-switch
.end method

.method public whitelist test-api roll(IZ)V
    .registers 4
    .param p1, "field"    # I
    .param p2, "up"    # Z

    .line 537
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, -0x1

    :goto_5
    invoke-virtual {p0, p1, v0}, Ljava/util/JapaneseImperialCalendar;->roll(II)V

    .line 538
    return-void
.end method

.method public whitelist test-api setTimeZone(Ljava/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Ljava/util/TimeZone;

    .line 1503
    invoke-super {p0, p1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 1505
    iget-object v0, p0, Ljava/util/JapaneseImperialCalendar;->jdate:Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-virtual {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setZone(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;

    .line 1506
    return-void
.end method
