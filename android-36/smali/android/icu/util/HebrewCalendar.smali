.class public Landroid/icu/util/HebrewCalendar;
.super Landroid/icu/util/Calendar;
.source "HebrewCalendar.java"


# static fields
.field public static final whitelist test-api ADAR:I = 0x6

.field public static final whitelist test-api ADAR_1:I = 0x5

.field public static final whitelist test-api AV:I = 0xb

.field private static final greylist-max-o BAHARAD:J = 0x2f34L

.field private static final greylist-max-o DAY_PARTS:J = 0x6540L

.field public static final whitelist test-api ELUL:I = 0xc

.field public static final whitelist test-api HESHVAN:I = 0x1

.field private static final greylist-max-o HOUR_PARTS:J = 0x438L

.field public static final whitelist test-api IYAR:I = 0x8

.field public static final whitelist test-api KISLEV:I = 0x2

.field private static final greylist-max-o LEAP_MONTH_START:[[I

.field private static final greylist-max-o LIMITS:[[I

.field private static final blacklist MONTHS_IN_CYCLE:I = 0xeb

.field private static final greylist-max-o MONTH_DAYS:I = 0x1d

.field private static final greylist-max-o MONTH_FRACT:J = 0x35b9L

.field private static final greylist-max-o MONTH_LENGTH:[[I

.field private static final greylist-max-o MONTH_PARTS:J = 0xbadf9L

.field private static final greylist-max-o MONTH_START:[[I

.field public static final whitelist test-api NISAN:I = 0x7

.field public static final whitelist test-api SHEVAT:I = 0x4

.field public static final whitelist test-api SIVAN:I = 0x9

.field public static final whitelist test-api TAMUZ:I = 0xa

.field public static final whitelist test-api TEVET:I = 0x3

.field public static final whitelist test-api TISHRI:I = 0x0

.field private static final blacklist YEARS_IN_CYCLE:I = 0x13

.field private static greylist-max-o cache:Landroid/icu/impl/CalendarCache; = null

.field private static blacklist gTemporalMonthCodesForHebrew:[Ljava/lang/String; = null

.field private static final whitelist serialVersionUID:J = -0x1b18c2be311f64d8L


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 45

    .line 160
    const/4 v0, 0x0

    filled-new-array {v0, v0, v0, v0}, [I

    move-result-object v1

    const v2, -0x4c4b40

    const v3, 0x4c4b40

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v4

    const/16 v5, 0xc

    filled-new-array {v0, v0, v5, v5}, [I

    move-result-object v6

    const/16 v7, 0x33

    const/16 v8, 0x38

    const/4 v9, 0x1

    filled-new-array {v9, v9, v7, v8}, [I

    move-result-object v7

    new-array v8, v0, [I

    const/16 v10, 0x1d

    const/16 v11, 0x1e

    move-object v12, v6

    filled-new-array {v9, v9, v10, v11}, [I

    move-result-object v6

    const/16 v13, 0x161

    const/16 v14, 0x181

    filled-new-array {v9, v9, v13, v14}, [I

    move-result-object v9

    move-object v15, v8

    new-array v8, v0, [I

    const/4 v10, -0x1

    const/4 v11, 0x5

    filled-new-array {v10, v10, v11, v11}, [I

    move-result-object v10

    move-object v11, v4

    move-object v4, v7

    move-object v7, v9

    move-object v9, v10

    new-array v10, v0, [I

    move-object/from16 v18, v11

    new-array v11, v0, [I

    move-object/from16 v19, v12

    new-array v12, v0, [I

    move/from16 v20, v13

    new-array v13, v0, [I

    move/from16 v21, v14

    new-array v14, v0, [I

    move-object/from16 v22, v15

    new-array v15, v0, [I

    new-array v5, v0, [I

    move-object/from16 v24, v1

    new-array v1, v0, [I

    move-object/from16 v25, v18

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v18

    move-object/from16 v26, v1

    new-array v1, v0, [I

    filled-new-array {v2, v2, v3, v3}, [I

    move-result-object v2

    new-array v3, v0, [I

    move-object/from16 v27, v1

    new-array v1, v0, [I

    move-object/from16 v28, v1

    new-array v1, v0, [I

    move-object/from16 v29, v1

    const/16 v1, 0xb

    move-object/from16 v30, v2

    const/16 v2, 0xc

    filled-new-array {v0, v0, v1, v2}, [I

    move-result-object v1

    move-object/from16 v0, v24

    move-object/from16 v24, v1

    move-object v1, v0

    move-object/from16 v21, v3

    move-object/from16 v16, v5

    move-object/from16 v3, v19

    move-object/from16 v5, v22

    move-object/from16 v2, v25

    move-object/from16 v17, v26

    move-object/from16 v19, v27

    move-object/from16 v22, v28

    move-object/from16 v23, v29

    move-object/from16 v20, v30

    const/16 v0, 0x1e

    filled-new-array/range {v1 .. v24}, [[I

    move-result-object v1

    sput-object v1, Landroid/icu/util/HebrewCalendar;->LIMITS:[[I

    .line 196
    filled-new-array {v0, v0, v0}, [I

    move-result-object v2

    const/16 v1, 0x1d

    filled-new-array {v1, v1, v0}, [I

    move-result-object v3

    filled-new-array {v1, v0, v0}, [I

    move-result-object v4

    filled-new-array {v1, v1, v1}, [I

    move-result-object v5

    filled-new-array {v0, v0, v0}, [I

    move-result-object v6

    filled-new-array {v0, v0, v0}, [I

    move-result-object v7

    filled-new-array {v1, v1, v1}, [I

    move-result-object v8

    filled-new-array {v0, v0, v0}, [I

    move-result-object v9

    filled-new-array {v1, v1, v1}, [I

    move-result-object v10

    filled-new-array {v0, v0, v0}, [I

    move-result-object v11

    filled-new-array {v1, v1, v1}, [I

    move-result-object v12

    filled-new-array {v0, v0, v0}, [I

    move-result-object v13

    filled-new-array {v1, v1, v1}, [I

    move-result-object v14

    filled-new-array/range {v2 .. v14}, [[I

    move-result-object v1

    sput-object v1, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    .line 218
    const/4 v1, 0x0

    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    filled-new-array {v0, v0, v0}, [I

    move-result-object v3

    const/16 v1, 0x3b

    const/16 v4, 0x3c

    move v5, v4

    filled-new-array {v1, v1, v5}, [I

    move-result-object v4

    const/16 v6, 0x58

    const/16 v7, 0x59

    const/16 v8, 0x5a

    move v9, v5

    filled-new-array {v6, v7, v8}, [I

    move-result-object v5

    const/16 v10, 0x75

    const/16 v11, 0x76

    const/16 v12, 0x77

    move v13, v6

    filled-new-array {v10, v11, v12}, [I

    move-result-object v6

    const/16 v14, 0x93

    const/16 v15, 0x94

    const/16 v1, 0x95

    move/from16 v17, v7

    filled-new-array {v14, v15, v1}, [I

    move-result-object v7

    move/from16 v18, v8

    filled-new-array {v14, v15, v1}, [I

    move-result-object v8

    const/16 v9, 0xb1

    const/16 v10, 0xb2

    const/16 v11, 0xb0

    filled-new-array {v11, v9, v10}, [I

    move-result-object v9

    const/16 v10, 0xcf

    const/16 v11, 0xd0

    const/16 v12, 0xce

    filled-new-array {v12, v10, v11}, [I

    move-result-object v10

    const/16 v11, 0xec

    const/16 v12, 0xed

    const/16 v13, 0xeb

    filled-new-array {v13, v11, v12}, [I

    move-result-object v11

    const/16 v12, 0x10a

    const/16 v13, 0x10b

    const/16 v14, 0x109

    filled-new-array {v14, v12, v13}, [I

    move-result-object v12

    const/16 v13, 0x127

    const/16 v14, 0x128

    const/16 v15, 0x126

    filled-new-array {v15, v13, v14}, [I

    move-result-object v13

    const/16 v14, 0x145

    const/16 v15, 0x146

    const/16 v1, 0x144

    filled-new-array {v1, v14, v15}, [I

    move-result-object v14

    const/16 v1, 0x162

    const/16 v15, 0x163

    const/16 v0, 0x161

    filled-new-array {v0, v1, v15}, [I

    move-result-object v15

    const/16 v0, 0x3c

    const/16 v1, 0x58

    filled-new-array/range {v2 .. v15}, [[I

    move-result-object v2

    sput-object v2, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    .line 239
    const/4 v2, 0x0

    filled-new-array {v2, v2, v2}, [I

    move-result-object v31

    const/16 v2, 0x1e

    filled-new-array {v2, v2, v2}, [I

    move-result-object v32

    const/16 v2, 0x3b

    filled-new-array {v2, v2, v0}, [I

    move-result-object v33

    const/16 v0, 0x59

    const/16 v2, 0x5a

    filled-new-array {v1, v0, v2}, [I

    move-result-object v34

    const/16 v0, 0x75

    const/16 v1, 0x76

    const/16 v2, 0x77

    filled-new-array {v0, v1, v2}, [I

    move-result-object v35

    const/16 v0, 0x93

    const/16 v1, 0x94

    const/16 v2, 0x95

    filled-new-array {v0, v1, v2}, [I

    move-result-object v36

    const/16 v0, 0xb2

    const/16 v1, 0xb3

    const/16 v2, 0xb1

    filled-new-array {v2, v0, v1}, [I

    move-result-object v37

    const/16 v0, 0xcf

    const/16 v1, 0xd0

    const/16 v2, 0xce

    filled-new-array {v2, v0, v1}, [I

    move-result-object v38

    const/16 v0, 0xed

    const/16 v1, 0xee

    const/16 v2, 0xec

    filled-new-array {v2, v0, v1}, [I

    move-result-object v39

    const/16 v0, 0x10a

    const/16 v1, 0x10b

    const/16 v2, 0x109

    filled-new-array {v2, v0, v1}, [I

    move-result-object v40

    const/16 v0, 0x128

    const/16 v1, 0x129

    const/16 v2, 0x127

    filled-new-array {v2, v0, v1}, [I

    move-result-object v41

    const/16 v0, 0x145

    const/16 v1, 0x146

    const/16 v2, 0x144

    filled-new-array {v2, v0, v1}, [I

    move-result-object v42

    const/16 v0, 0x163

    const/16 v1, 0x164

    const/16 v2, 0x162

    filled-new-array {v2, v0, v1}, [I

    move-result-object v43

    const/16 v0, 0x17f

    const/16 v1, 0x180

    const/16 v2, 0x181

    filled-new-array {v0, v1, v2}, [I

    move-result-object v44

    filled-new-array/range {v31 .. v44}, [[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    .line 263
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    sput-object v0, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    .line 899
    const-string v12, "M11"

    const-string v13, "M12"

    const-string v1, "M01"

    const-string v2, "M02"

    const-string v3, "M03"

    const-string v4, "M04"

    const-string v5, "M05"

    const-string v6, "M05L"

    const-string v7, "M06"

    const-string v8, "M07"

    const-string v9, "M08"

    const-string v10, "M09"

    const-string v11, "M10"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/HebrewCalendar;->gTemporalMonthCodesForHebrew:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 3

    .line 275
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 276
    return-void
.end method

.method public constructor whitelist test-api <init>(III)V
    .registers 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    .line 348
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 349
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 350
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 351
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 352
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

    .line 387
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 388
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 389
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 390
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 391
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 392
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 393
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 394
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 286
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 287
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 331
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 332
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->setTimeInMillis(J)V

    .line 333
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 318
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->setTimeInMillis(J)V

    .line 320
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 306
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 307
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 4
    .param p1, "date"    # Ljava/util/Date;

    .line 362
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 363
    invoke-virtual {p0, p1}, Landroid/icu/util/HebrewCalendar;->setTime(Ljava/util/Date;)V

    .line 364
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 3
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 296
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Landroid/icu/util/HebrewCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    .line 297
    return-void
.end method

.method public static greylist-max-o isLeapYear(I)Z
    .registers 3
    .param p0, "year"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 680
    mul-int/lit8 v0, p0, 0xc

    add-int/lit8 v0, v0, 0x11

    rem-int/lit8 v0, v0, 0x13

    .line 681
    .local v0, "x":I
    if-gez v0, :cond_a

    const/4 v1, -0x7

    goto :goto_c

    :cond_a
    const/16 v1, 0xc

    :goto_c
    if-lt v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method private static greylist-max-o monthsInYear(I)I
    .registers 2
    .param p0, "year"    # I

    .line 685
    invoke-static {p0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const/16 v0, 0xd

    goto :goto_b

    :cond_9
    const/16 v0, 0xc

    :goto_b
    return v0
.end method

.method private static greylist-max-o startOfYear(I)J
    .registers 12
    .param p0, "year"    # I

    .line 592
    sget-object v0, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 594
    .local v0, "day":J
    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_6d

    .line 596
    const-wide/16 v2, 0xeb

    int-to-long v4, p0

    mul-long/2addr v4, v2

    const-wide/16 v2, 0xea

    sub-long/2addr v4, v2

    const-wide/16 v2, 0x13

    invoke-static {v4, v5, v2, v3}, Landroid/icu/util/HebrewCalendar;->floorDivide(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    .line 598
    .local v2, "months":I
    int-to-long v3, v2

    const-wide/16 v5, 0x35b9

    mul-long/2addr v3, v5

    const-wide/16 v5, 0x2f34

    add-long/2addr v3, v5

    .line 599
    .local v3, "frac":J
    mul-int/lit8 v5, v2, 0x1d

    int-to-long v5, v5

    const-wide/16 v7, 0x6540

    div-long v9, v3, v7

    add-long/2addr v5, v9

    .line 600
    .end local v0    # "day":J
    .local v5, "day":J
    rem-long/2addr v3, v7

    .line 602
    const-wide/16 v0, 0x7

    rem-long v7, v5, v0

    long-to-int v7, v7

    .line 604
    .local v7, "wd":I
    const/4 v8, 0x2

    const-wide/16 v9, 0x1

    if-eq v7, v8, :cond_3b

    const/4 v8, 0x4

    if-eq v7, v8, :cond_3b

    const/4 v8, 0x6

    if-ne v7, v8, :cond_3f

    .line 606
    :cond_3b
    add-long/2addr v5, v9

    .line 607
    rem-long v0, v5, v0

    long-to-int v7, v0

    .line 609
    :cond_3f
    const/4 v0, 0x1

    if-ne v7, v0, :cond_53

    const-wide/16 v0, 0x4014

    cmp-long v0, v3, v0

    if-lez v0, :cond_53

    invoke-static {p0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_53

    .line 613
    const-wide/16 v0, 0x2

    add-long/2addr v5, v0

    move-wide v0, v5

    goto :goto_67

    .line 615
    :cond_53
    if-nez v7, :cond_66

    const-wide/16 v0, 0x5ae5

    cmp-long v0, v3, v0

    if-lez v0, :cond_66

    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 619
    add-long/2addr v5, v9

    move-wide v0, v5

    goto :goto_67

    .line 621
    :cond_66
    move-wide v0, v5

    .end local v5    # "day":J
    .restart local v0    # "day":J
    :goto_67
    sget-object v5, Landroid/icu/util/HebrewCalendar;->cache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p0

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    .line 623
    .end local v2    # "months":I
    .end local v3    # "frac":J
    .end local v7    # "wd":I
    :cond_6d
    return-wide v0
.end method

.method private final greylist-max-o yearType(I)I
    .registers 7
    .param p1, "year"    # I

    .line 646
    invoke-virtual {p0, p1}, Landroid/icu/util/HebrewCalendar;->handleGetYearLength(I)I

    move-result v0

    .line 648
    .local v0, "yearLength":I
    const/16 v1, 0x17c

    if-le v0, v1, :cond_a

    .line 649
    add-int/lit8 v0, v0, -0x1e

    .line 652
    :cond_a
    const/4 v1, 0x0

    .line 654
    .local v1, "type":I
    packed-switch v0, :pswitch_data_38

    .line 662
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Illegal year length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in year "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 660
    :pswitch_31
    const/4 v1, 0x2

    goto :goto_36

    .line 658
    :pswitch_33
    const/4 v1, 0x1

    goto :goto_36

    .line 656
    :pswitch_35
    const/4 v1, 0x0

    .line 665
    :goto_36
    return v1

    nop

    :pswitch_data_38
    .packed-switch 0x161
        :pswitch_35
        :pswitch_33
        :pswitch_31
    .end packed-switch
.end method


# virtual methods
.method public whitelist test-api add(II)V
    .registers 10
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 432
    sparse-switch p1, :sswitch_data_54

    .line 480
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_53

    .line 441
    :sswitch_7
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/HebrewCalendar;->get(I)I

    move-result v1

    .line 442
    .local v1, "month":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/icu/util/HebrewCalendar;->get(I)I

    move-result v3

    .line 444
    .local v3, "year":I
    const/4 v4, 0x0

    const/4 v5, 0x5

    if-lez p2, :cond_30

    .line 445
    if-ge v1, v5, :cond_18

    move v4, v2

    .line 446
    .local v4, "acrossAdar1":Z
    :cond_18
    add-int/2addr v1, p2

    .line 448
    :goto_19
    if-eqz v4, :cond_25

    if-lt v1, v5, :cond_25

    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v6

    if-nez v6, :cond_25

    .line 449
    add-int/lit8 v1, v1, 0x1

    .line 451
    :cond_25
    const/16 v6, 0xc

    if-gt v1, v6, :cond_2a

    .line 452
    goto :goto_43

    .line 454
    :cond_2a
    add-int/lit8 v1, v1, -0xd

    .line 455
    add-int/lit8 v3, v3, 0x1

    .line 456
    const/4 v4, 0x1

    goto :goto_19

    .line 459
    .end local v4    # "acrossAdar1":Z
    :cond_30
    if-le v1, v5, :cond_33

    move v4, v2

    .line 460
    .restart local v4    # "acrossAdar1":Z
    :cond_33
    add-int/2addr v1, p2

    .line 462
    :goto_34
    if-eqz v4, :cond_40

    if-gt v1, v5, :cond_40

    invoke-static {v3}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v6

    if-nez v6, :cond_40

    .line 463
    add-int/lit8 v1, v1, -0x1

    .line 465
    :cond_40
    if-ltz v1, :cond_4d

    .line 466
    nop

    .line 473
    :goto_43
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 474
    invoke-virtual {p0, v2, v3}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 475
    invoke-virtual {p0, v5}, Landroid/icu/util/HebrewCalendar;->pinField(I)V

    .line 476
    goto :goto_53

    .line 468
    :cond_4d
    add-int/lit8 v1, v1, 0xd

    .line 469
    add-int/lit8 v3, v3, -0x1

    .line 470
    const/4 v4, 0x1

    goto :goto_34

    .line 483
    .end local v1    # "month":I
    .end local v3    # "year":I
    .end local v4    # "acrossAdar1":Z
    :goto_53
    return-void

    :sswitch_data_54
    .sparse-switch
        0x2 -> :sswitch_7
        0x17 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist test-api getTemporalMonthCode()Ljava/lang/String;
    .registers 3

    .line 917
    sget-object v0, Landroid/icu/util/HebrewCalendar;->gTemporalMonthCodesForHebrew:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/icu/util/HebrewCalendar;->get(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 885
    const-string v0, "hebrew"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 18
    .param p1, "julianDay"    # I

    .line 788
    move-object/from16 v0, p0

    const v1, 0x54f5d

    sub-int v1, p1, v1

    int-to-long v1, v1

    .line 789
    .local v1, "d":J
    const-wide/16 v3, 0x6540

    mul-long/2addr v3, v1

    const-wide/32 v5, 0xbadf9

    invoke-static {v3, v4, v5, v6}, Landroid/icu/util/HebrewCalendar;->floorDivide(JJ)J

    move-result-wide v3

    .line 790
    .local v3, "m":J
    const-wide/16 v5, 0x13

    mul-long/2addr v5, v3

    const-wide/16 v7, 0xea

    add-long/2addr v5, v7

    const-wide/16 v7, 0xeb

    invoke-static {v5, v6, v7, v8}, Landroid/icu/util/HebrewCalendar;->floorDivide(JJ)J

    move-result-wide v5

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    long-to-int v5, v5

    .line 791
    .local v5, "year":I
    invoke-static {v5}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v6

    .line 792
    .local v6, "ys":J
    sub-long v8, v1, v6

    long-to-int v8, v8

    .line 795
    .local v8, "dayOfYear":I
    :goto_29
    const/4 v9, 0x1

    if-ge v8, v9, :cond_36

    .line 796
    add-int/lit8 v5, v5, -0x1

    .line 797
    invoke-static {v5}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v6

    .line 798
    sub-long v9, v1, v6

    long-to-int v8, v9

    goto :goto_29

    .line 802
    :cond_36
    invoke-direct {v0, v5}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v10

    .line 803
    .local v10, "yearType":I
    invoke-static {v5}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v11

    .line 804
    .local v11, "isLeap":Z
    if-eqz v11, :cond_43

    sget-object v12, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    goto :goto_45

    :cond_43
    sget-object v12, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    .line 806
    .local v12, "monthStart":[[I
    :goto_45
    const/4 v13, 0x0

    .line 807
    .local v13, "month":I
    :goto_46
    aget-object v14, v12, v13

    aget v14, v14, v10

    if-le v8, v14, :cond_4f

    .line 808
    add-int/lit8 v13, v13, 0x1

    goto :goto_46

    .line 810
    :cond_4f
    add-int/lit8 v13, v13, -0x1

    .line 811
    aget-object v14, v12, v13

    aget v14, v14, v10

    sub-int v14, v8, v14

    .line 813
    .local v14, "dayOfMonth":I
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v15}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 814
    invoke-virtual {v0, v9, v5}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 815
    const/16 v9, 0x13

    invoke-virtual {v0, v9, v5}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 816
    move v9, v13

    .line 817
    .local v9, "ordinal_month":I
    const/4 v15, 0x5

    if-nez v11, :cond_6b

    if-le v9, v15, :cond_6b

    .line 818
    add-int/lit8 v9, v9, -0x1

    .line 820
    :cond_6b
    const/16 v15, 0x17

    invoke-virtual {v0, v15, v9}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 821
    const/4 v15, 0x2

    invoke-virtual {v0, v15, v13}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 822
    const/4 v15, 0x5

    invoke-virtual {v0, v15, v14}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 823
    const/4 v15, 0x6

    invoke-virtual {v0, v15, v8}, Landroid/icu/util/HebrewCalendar;->internalSet(II)V

    .line 824
    return-void
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 8
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    .line 855
    const/16 v0, -0xeb

    if-le p2, v0, :cond_8

    const/16 v0, 0xeb

    if-gt v0, p2, :cond_f

    .line 856
    :cond_8
    div-int/lit16 v0, p2, 0xeb

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr p1, v0

    .line 857
    rem-int/lit16 p2, p2, 0xeb

    .line 859
    :cond_f
    :goto_f
    if-gez p2, :cond_19

    .line 860
    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_f

    .line 863
    :cond_19
    :goto_19
    const/16 v0, 0xc

    if-le p2, v0, :cond_26

    .line 864
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "eyear":I
    .local v0, "eyear":I
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result p1

    sub-int/2addr p2, p1

    move p1, v0

    goto :goto_19

    .line 867
    .end local v0    # "eyear":I
    .restart local p1    # "eyear":I
    :cond_26
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    .line 869
    .local v0, "day":J
    if-eqz p2, :cond_4b

    .line 870
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 871
    sget-object v2, Landroid/icu/util/HebrewCalendar;->LEAP_MONTH_START:[[I

    aget-object v2, v2, p2

    invoke-direct {p0, p1}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v3

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_4b

    .line 873
    :cond_3f
    sget-object v2, Landroid/icu/util/HebrewCalendar;->MONTH_START:[[I

    aget-object v2, v2, p2

    invoke-direct {p0, p1}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v3

    aget v2, v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 877
    :cond_4b
    :goto_4b
    const-wide/32 v2, 0x54f5d

    add-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 4

    .line 835
    const/16 v0, 0x13

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->newerField(II)I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 836
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/HebrewCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_12

    .line 838
    .end local v0    # "year":I
    :cond_e
    invoke-virtual {p0, v1, v1}, Landroid/icu/util/HebrewCalendar;->internalGet(II)I

    move-result v0

    .line 840
    .restart local v0    # "year":I
    :goto_12
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 696
    sget-object v0, Landroid/icu/util/HebrewCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 5
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 710
    const/16 v0, -0xeb

    if-le p2, v0, :cond_8

    const/16 v0, 0xeb

    if-gt v0, p2, :cond_f

    .line 711
    :cond_8
    div-int/lit16 v0, p2, 0xeb

    mul-int/lit8 v0, v0, 0x13

    add-int/2addr p1, v0

    .line 712
    rem-int/lit16 p2, p2, 0xeb

    .line 714
    :cond_f
    :goto_f
    if-gez p2, :cond_19

    .line 715
    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v0

    add-int/2addr p2, v0

    goto :goto_f

    .line 718
    :cond_19
    :goto_19
    const/16 v0, 0xc

    if-le p2, v0, :cond_26

    .line 719
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "extendedYear":I
    .local v0, "extendedYear":I
    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result p1

    sub-int/2addr p2, p1

    move p1, v0

    goto :goto_19

    .line 722
    .end local v0    # "extendedYear":I
    .restart local p1    # "extendedYear":I
    :cond_26
    packed-switch p2, :pswitch_data_3c

    .line 730
    sget-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object v0, v0, p2

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    .line 726
    :pswitch_31
    sget-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_LENGTH:[[I

    aget-object v0, v0, p2

    invoke-direct {p0, p1}, Landroid/icu/util/HebrewCalendar;->yearType(I)I

    move-result v1

    aget v0, v0, v1

    return v0

    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_31
        :pswitch_31
    .end packed-switch
.end method

.method protected whitelist test-api handleGetYearLength(I)I
    .registers 6
    .param p1, "eyear"    # I

    .line 739
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v0

    invoke-static {p1}, Landroid/icu/util/HebrewCalendar;->startOfYear(I)J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public whitelist test-api inTemporalLeapYear()Z
    .registers 2

    .line 896
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Landroid/icu/util/HebrewCalendar;->get(I)I

    move-result v0

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    return v0
.end method

.method protected blacklist internalGetMonth()I
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 955
    sget-object v0, Landroid/icu/util/HebrewCalendar;->MONTH_PRECEDENCE:[[[I

    invoke-virtual {p0, v0}, Landroid/icu/util/HebrewCalendar;->resolveFields([[[I)I

    move-result v0

    const/16 v1, 0x17

    if-ne v0, v1, :cond_20

    .line 956
    invoke-virtual {p0, v1}, Landroid/icu/util/HebrewCalendar;->internalGet(I)I

    move-result v0

    .line 957
    .local v0, "ordinalMonth":I
    invoke-virtual {p0}, Landroid/icu/util/HebrewCalendar;->handleGetExtendedYear()I

    move-result v1

    .line 958
    .local v1, "year":I
    invoke-static {v1}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v2

    if-nez v2, :cond_1d

    const/4 v2, 0x5

    if-le v0, v2, :cond_1d

    const/4 v2, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    :goto_1e
    add-int/2addr v2, v0

    return v2

    .line 960
    .end local v0    # "ordinalMonth":I
    .end local v1    # "year":I
    :cond_20
    invoke-super {p0}, Landroid/icu/util/Calendar;->internalGetMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api roll(II)V
    .registers 11
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 519
    sparse-switch p1, :sswitch_data_3c

    .line 545
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    .line 547
    return-void

    .line 523
    :sswitch_7
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/icu/util/HebrewCalendar;->get(I)I

    move-result v1

    .line 524
    .local v1, "month":I
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/icu/util/HebrewCalendar;->get(I)I

    move-result v2

    .line 526
    .local v2, "year":I
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v3

    .line 527
    .local v3, "leapYear":Z
    invoke-static {v2}, Landroid/icu/util/HebrewCalendar;->monthsInYear(I)I

    move-result v4

    .line 528
    .local v4, "yearLength":I
    rem-int v5, p2, v4

    add-int/2addr v5, v1

    .line 533
    .local v5, "newMonth":I
    const/4 v6, 0x5

    if-nez v3, :cond_30

    .line 534
    if-lez p2, :cond_28

    if-ge v1, v6, :cond_28

    if-lt v5, v6, :cond_28

    .line 535
    add-int/lit8 v5, v5, 0x1

    goto :goto_30

    .line 536
    :cond_28
    if-gez p2, :cond_30

    if-le v1, v6, :cond_30

    if-gt v5, v6, :cond_30

    .line 537
    add-int/lit8 v5, v5, -0x1

    .line 540
    :cond_30
    :goto_30
    add-int/lit8 v7, v5, 0xd

    rem-int/lit8 v7, v7, 0xd

    invoke-virtual {p0, v0, v7}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 541
    invoke-virtual {p0, v6}, Landroid/icu/util/HebrewCalendar;->pinField(I)V

    .line 542
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        0x2 -> :sswitch_7
        0x17 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist test-api setTemporalMonthCode(Ljava/lang/String;)V
    .registers 5
    .param p1, "temporalMonth"    # Ljava/lang/String;

    .line 932
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    .line 933
    :cond_e
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_f
    sget-object v1, Landroid/icu/util/HebrewCalendar;->gTemporalMonthCodesForHebrew:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_26

    .line 934
    sget-object v1, Landroid/icu/util/HebrewCalendar;->gTemporalMonthCodesForHebrew:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 935
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/HebrewCalendar;->set(II)V

    .line 936
    return-void

    .line 933
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 940
    .end local v0    # "m":I
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Incorrect temporal Month code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api validateField(I)V
    .registers 4
    .param p1, "field"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 754
    const/4 v0, 0x2

    if-eq p1, v0, :cond_7

    const/16 v0, 0x17

    if-ne p1, v0, :cond_21

    .line 755
    :cond_7
    invoke-virtual {p0}, Landroid/icu/util/HebrewCalendar;->handleGetExtendedYear()I

    move-result v0

    invoke-static {v0}, Landroid/icu/util/HebrewCalendar;->isLeapYear(I)Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/icu/util/HebrewCalendar;->internalGetMonth()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_19

    goto :goto_21

    .line 756
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MONTH cannot be ADAR_1(5) except leap years"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_21
    :goto_21
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->validateField(I)V

    .line 760
    return-void
.end method
