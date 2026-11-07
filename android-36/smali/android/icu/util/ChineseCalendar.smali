.class public Landroid/icu/util/ChineseCalendar;
.super Landroid/icu/util/Calendar;
.source "ChineseCalendar.java"


# static fields
.field private static final greylist-max-o CHINA_ZONE:Landroid/icu/util/TimeZone;

.field static final greylist-max-o CHINESE_DATE_PRECEDENCE:[[[I

.field private static final greylist-max-o CHINESE_EPOCH_YEAR:I = -0xa4c

.field private static final greylist-max-o LIMITS:[[I

.field private static final greylist-max-o SYNODIC_GAP:I = 0x19

.field private static blacklist gTemporalLeapMonthCodes:[Ljava/lang/String; = null

.field private static final whitelist serialVersionUID:J = 0x6579d5fcd7c0e78cL


# instance fields
.field private greylist-max-o epochYear:I

.field private transient blacklist hasLeapMonthBetweenWinterSolstices:Z

.field private transient greylist-max-o newYearCache:Landroid/icu/impl/CalendarCache;

.field private transient greylist-max-o winterSolsticeCache:Landroid/icu/impl/CalendarCache;

.field private greylist-max-o zoneAstro:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 28

    .line 384
    const v0, 0x14585

    const/4 v1, 0x1

    filled-new-array {v1, v1, v0, v0}, [I

    move-result-object v2

    const/16 v0, 0x3c

    filled-new-array {v1, v1, v0, v0}, [I

    move-result-object v3

    const/4 v0, 0x0

    const/16 v4, 0xb

    filled-new-array {v0, v0, v4, v4}, [I

    move-result-object v5

    const/16 v6, 0x32

    const/16 v7, 0x37

    filled-new-array {v1, v1, v6, v7}, [I

    move-result-object v6

    move-object v7, v5

    move-object v5, v6

    new-array v6, v0, [I

    const/16 v8, 0x1d

    const/16 v9, 0x1e

    filled-new-array {v1, v1, v8, v9}, [I

    move-result-object v8

    const/16 v9, 0x161

    const/16 v10, 0x181

    filled-new-array {v1, v1, v9, v10}, [I

    move-result-object v9

    move-object v10, v7

    move-object v7, v8

    move-object v8, v9

    new-array v9, v0, [I

    const/4 v11, -0x1

    const/4 v12, 0x5

    filled-new-array {v11, v11, v12, v12}, [I

    move-result-object v11

    move-object v13, v10

    move-object v10, v11

    new-array v11, v0, [I

    move v14, v12

    new-array v12, v0, [I

    move-object v15, v13

    new-array v13, v0, [I

    move/from16 v16, v14

    new-array v14, v0, [I

    move-object/from16 v17, v15

    new-array v15, v0, [I

    new-array v4, v0, [I

    new-array v1, v0, [I

    move-object/from16 v20, v1

    new-array v1, v0, [I

    const v0, -0x4c4b40

    move-object/from16 v22, v1

    const v1, 0x4c4b40

    const/16 v23, 0x1

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v19

    move-object/from16 v24, v2

    move-object/from16 v21, v3

    const/4 v2, 0x0

    new-array v3, v2, [I

    filled-new-array {v0, v0, v1, v1}, [I

    move-result-object v0

    new-array v1, v2, [I

    move-object/from16 v25, v0

    new-array v0, v2, [I

    move-object/from16 v26, v0

    move/from16 v0, v23

    filled-new-array {v2, v2, v0, v0}, [I

    move-result-object v0

    move-object/from16 v23, v0

    const/16 v0, 0xc

    move-object/from16 v27, v1

    const/16 v1, 0xb

    filled-new-array {v2, v2, v1, v0}, [I

    move-result-object v0

    move-object/from16 v2, v25

    move-object/from16 v25, v0

    move/from16 v0, v16

    move-object/from16 v16, v4

    move-object/from16 v4, v17

    move-object/from16 v17, v20

    move-object/from16 v20, v3

    move-object/from16 v3, v21

    move-object/from16 v21, v2

    move-object/from16 v18, v22

    move-object/from16 v2, v24

    move-object/from16 v22, v27

    move-object/from16 v24, v23

    move-object/from16 v23, v26

    filled-new-array/range {v2 .. v25}, [[I

    move-result-object v1

    sput-object v1, Landroid/icu/util/ChineseCalendar;->LIMITS:[[I

    .line 468
    filled-new-array {v0}, [I

    move-result-object v2

    const/4 v0, 0x3

    const/4 v1, 0x7

    filled-new-array {v0, v1}, [I

    move-result-object v3

    const/4 v11, 0x4

    filled-new-array {v11, v1}, [I

    move-result-object v4

    const/16 v12, 0x8

    filled-new-array {v12, v1}, [I

    move-result-object v5

    const/16 v13, 0x12

    filled-new-array {v0, v13}, [I

    move-result-object v6

    filled-new-array {v11, v13}, [I

    move-result-object v7

    filled-new-array {v12, v13}, [I

    move-result-object v8

    const/4 v9, 0x6

    filled-new-array {v9}, [I

    move-result-object v9

    const/16 v10, 0x25

    const/16 v14, 0x16

    filled-new-array {v10, v14}, [I

    move-result-object v10

    filled-new-array/range {v2 .. v10}, [[I

    move-result-object v2

    filled-new-array {v0}, [I

    move-result-object v0

    filled-new-array {v11}, [I

    move-result-object v3

    filled-new-array {v12}, [I

    move-result-object v4

    const/16 v5, 0x28

    filled-new-array {v5, v1}, [I

    move-result-object v1

    filled-new-array {v5, v13}, [I

    move-result-object v5

    filled-new-array {v0, v3, v4, v1, v5}, [[I

    move-result-object v0

    filled-new-array {v2, v0}, [[[I

    move-result-object v0

    sput-object v0, Landroid/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    .line 630
    new-instance v0, Landroid/icu/util/SimpleTimeZone;

    const v1, 0x1b77400

    const-string v2, "CHINA_ZONE"

    invoke-direct {v0, v1, v2}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    .line 1049
    const-string v11, "M11L"

    const-string v12, "M12L"

    const-string v1, "M01L"

    const-string v2, "M02L"

    const-string v3, "M03L"

    const-string v4, "M04L"

    const-string v5, "M05L"

    const-string v6, "M06L"

    const-string v7, "M07L"

    const-string v8, "M08L"

    const-string v9, "M09L"

    const-string v10, "M10L"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/util/ChineseCalendar;->gTemporalLeapMonthCodes:[Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist test-api <init>()V
    .registers 5

    .line 143
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    const/16 v2, -0xa4c

    sget-object v3, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 144
    return-void
.end method

.method public constructor whitelist test-api <init>(IIII)V
    .registers 13
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # I
    .param p4, "date"    # I

    .line 169
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .end local p1    # "year":I
    .end local p2    # "month":I
    .end local p3    # "isLeapMonth":I
    .end local p4    # "date":I
    .local v1, "year":I
    .local v2, "month":I
    .local v3, "isLeapMonth":I
    .local v4, "date":I
    invoke-direct/range {v0 .. v7}, Landroid/icu/util/ChineseCalendar;-><init>(IIIIIII)V

    .line 170
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIII)V
    .registers 15
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "isLeapMonth"    # I
    .param p5, "date"    # I

    .line 226
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .end local p1    # "era":I
    .end local p2    # "year":I
    .end local p3    # "month":I
    .end local p4    # "isLeapMonth":I
    .end local p5    # "date":I
    .local v1, "era":I
    .local v2, "year":I
    .local v3, "month":I
    .local v4, "isLeapMonth":I
    .local v5, "date":I
    invoke-direct/range {v0 .. v8}, Landroid/icu/util/ChineseCalendar;-><init>(IIIIIIII)V

    .line 227
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIIII)V
    .registers 12
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # I
    .param p4, "date"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "second"    # I

    .line 193
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    const/16 v2, -0xa4c

    sget-object v3, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 199
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 202
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 203
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 204
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 205
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 206
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 207
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 208
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p7}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 209
    return-void
.end method

.method public constructor whitelist test-api <init>(IIIIIIII)V
    .registers 13
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "isLeapMonth"    # I
    .param p5, "date"    # I
    .param p6, "hour"    # I
    .param p7, "minute"    # I
    .param p8, "second"    # I

    .line 251
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    const/16 v2, -0xa4c

    sget-object v3, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 254
    const/16 v0, 0xe

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 257
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 258
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 259
    const/4 v0, 0x2

    invoke-virtual {p0, v0, p3}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 260
    const/16 v0, 0x16

    invoke-virtual {p0, v0, p4}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 261
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p5}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 262
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p6}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 263
    const/16 v0, 0xc

    invoke-virtual {p0, v0, p7}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 264
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p8}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 265
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    .line 283
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/16 v1, -0xa4c

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 284
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 313
    const/16 v0, -0xa4c

    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 314
    return-void
.end method

.method protected constructor greylist-max-o <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V
    .registers 7
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "epochYear"    # I
    .param p4, "zoneAstroCalc"    # Landroid/icu/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    .line 117
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    .line 123
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    .line 327
    iput p3, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    .line 328
    iput-object p4, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    .line 329
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->setTimeInMillis(J)V

    .line 330
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .registers 6
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    .line 293
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v0

    const/16 v1, -0xa4c

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 294
    return-void
.end method

.method public constructor whitelist test-api <init>(Landroid/icu/util/ULocale;)V
    .registers 5
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    .line 303
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forULocaleOrDefault(Landroid/icu/util/ULocale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    const/16 v1, -0xa4c

    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 304
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Date;)V
    .registers 6
    .param p1, "date"    # Ljava/util/Date;

    .line 152
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    move-result-object v0

    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v1

    const/16 v2, -0xa4c

    sget-object v3, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 153
    invoke-virtual {p0, p1}, Landroid/icu/util/ChineseCalendar;->setTime(Ljava/util/Date;)V

    .line 154
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/Locale;)V
    .registers 6
    .param p1, "aLocale"    # Ljava/util/Locale;

    .line 273
    invoke-static {p1}, Landroid/icu/util/TimeZone;->forLocaleOrDefault(Ljava/util/Locale;)Landroid/icu/util/TimeZone;

    move-result-object v0

    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    move-result-object v1

    const/16 v2, -0xa4c

    sget-object v3, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    .line 274
    return-void
.end method

.method private greylist-max-o computeChineseFields(IIIZ)V
    .registers 26
    .param p1, "days"    # I
    .param p2, "gyear"    # I
    .param p3, "gmonth"    # I
    .param p4, "setAllFields"    # Z

    .line 832
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v2}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v3

    .line 833
    .local v3, "solsticeAfter":I
    if-ge v1, v3, :cond_13

    .line 834
    add-int/lit8 v4, v2, -0x1

    invoke-direct {v0, v4}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v4

    .local v4, "solsticeBefore":I
    goto :goto_1a

    .line 836
    .end local v4    # "solsticeBefore":I
    :cond_13
    move v4, v3

    .line 837
    .restart local v4    # "solsticeBefore":I
    add-int/lit8 v5, v2, 0x1

    invoke-direct {v0, v5}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v3

    .line 843
    :goto_1a
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    invoke-direct {v0, v5, v6}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v5

    .line 844
    .local v5, "firstMoon":I
    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x0

    invoke-direct {v0, v7, v8}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v7

    .line 845
    .local v7, "lastMoon":I
    add-int/lit8 v9, v1, 0x1

    invoke-direct {v0, v9, v8}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v9

    .line 847
    .local v9, "thisMoon":I
    invoke-direct {v0, v5, v7}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v10

    const/16 v11, 0xc

    if-ne v10, v11, :cond_38

    move v10, v6

    goto :goto_39

    :cond_38
    move v10, v8

    :goto_39
    iput-boolean v10, v0, Landroid/icu/util/ChineseCalendar;->hasLeapMonthBetweenWinterSolstices:Z

    .line 849
    invoke-direct {v0, v5, v9}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v10

    .line 850
    .local v10, "month":I
    invoke-direct {v0, v2}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v11

    .line 851
    .local v11, "theNewYear":I
    if-ge v1, v11, :cond_4b

    .line 852
    add-int/lit8 v12, v2, -0x1

    invoke-direct {v0, v12}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v11

    .line 854
    :cond_4b
    iget-boolean v12, v0, Landroid/icu/util/ChineseCalendar;->hasLeapMonthBetweenWinterSolstices:Z

    if-eqz v12, :cond_57

    invoke-direct {v0, v5, v9}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v12

    if-eqz v12, :cond_57

    .line 855
    add-int/lit8 v10, v10, -0x1

    .line 857
    :cond_57
    if-ge v10, v6, :cond_5b

    .line 858
    add-int/lit8 v10, v10, 0xc

    .line 860
    :cond_5b
    invoke-direct {v0, v11, v9}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v12

    .line 861
    .local v12, "ordinalMonth":I
    if-gez v12, :cond_63

    .line 862
    add-int/lit8 v12, v12, 0xc

    .line 865
    :cond_63
    iget-boolean v13, v0, Landroid/icu/util/ChineseCalendar;->hasLeapMonthBetweenWinterSolstices:Z

    if-eqz v13, :cond_7b

    .line 866
    invoke-direct {v0, v9}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v13

    if-eqz v13, :cond_7b

    add-int/lit8 v13, v9, -0x19

    .line 867
    invoke-direct {v0, v13, v8}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v13

    invoke-direct {v0, v5, v13}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v13

    if-nez v13, :cond_7b

    move v13, v6

    goto :goto_7c

    :cond_7b
    move v13, v8

    .line 869
    .local v13, "isLeapMonth":Z
    :goto_7c
    add-int/lit8 v14, v10, -0x1

    const/4 v15, 0x2

    invoke-virtual {v0, v15, v14}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 870
    const/16 v14, 0x17

    invoke-virtual {v0, v14, v12}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 871
    if-eqz v13, :cond_8b

    move v14, v6

    goto :goto_8c

    :cond_8b
    move v14, v8

    :goto_8c
    const/16 v15, 0x16

    invoke-virtual {v0, v15, v14}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 873
    if-eqz p4, :cond_f0

    .line 876
    iget v14, v0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    sub-int v14, v2, v14

    .line 877
    .local v14, "extended_year":I
    add-int/lit16 v15, v2, 0xa4c

    .line 878
    .local v15, "cycle_year":I
    const/16 v8, 0xb

    move/from16 v16, v6

    const/4 v6, 0x6

    if-lt v10, v8, :cond_a5

    move/from16 v8, p3

    if-lt v8, v6, :cond_ab

    goto :goto_a7

    :cond_a5
    move/from16 v8, p3

    .line 880
    :goto_a7
    add-int/lit8 v14, v14, 0x1

    .line 881
    add-int/lit8 v15, v15, 0x1

    .line 883
    :cond_ab
    sub-int v17, v1, v9

    add-int/lit8 v6, v17, 0x1

    .line 885
    .local v6, "dayOfMonth":I
    move/from16 v17, v3

    .end local v3    # "solsticeAfter":I
    .local v17, "solsticeAfter":I
    const/16 v3, 0x13

    invoke-virtual {v0, v3, v14}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 888
    move/from16 v18, v4

    move/from16 v3, v16

    .end local v4    # "solsticeBefore":I
    .local v18, "solsticeBefore":I
    new-array v4, v3, [I

    .line 889
    .local v4, "yearOfCycle":[I
    add-int/lit8 v3, v15, -0x1

    move/from16 v19, v5

    .end local v5    # "firstMoon":I
    .local v19, "firstMoon":I
    const/16 v5, 0x3c

    invoke-static {v3, v5, v4}, Landroid/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v3

    .line 890
    .local v3, "cycle":I
    add-int/lit8 v5, v3, 0x1

    move/from16 v20, v3

    const/4 v3, 0x0

    .end local v3    # "cycle":I
    .local v20, "cycle":I
    invoke-virtual {v0, v3, v5}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 891
    aget v3, v4, v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-virtual {v0, v5, v3}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 893
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v6}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 899
    invoke-direct {v0, v2}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v3

    .line 900
    .local v3, "newYear":I
    if-ge v1, v3, :cond_e5

    .line 901
    add-int/lit8 v5, v2, -0x1

    invoke-direct {v0, v5}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v3

    .line 903
    :cond_e5
    sub-int v5, v1, v3

    const/16 v16, 0x1

    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x6

    invoke-virtual {v0, v1, v5}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    goto :goto_f8

    .line 873
    .end local v6    # "dayOfMonth":I
    .end local v14    # "extended_year":I
    .end local v15    # "cycle_year":I
    .end local v17    # "solsticeAfter":I
    .end local v18    # "solsticeBefore":I
    .end local v19    # "firstMoon":I
    .end local v20    # "cycle":I
    .local v3, "solsticeAfter":I
    .local v4, "solsticeBefore":I
    .restart local v5    # "firstMoon":I
    :cond_f0
    move/from16 v8, p3

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    .line 905
    .end local v3    # "solsticeAfter":I
    .end local v4    # "solsticeBefore":I
    .end local v5    # "firstMoon":I
    .restart local v17    # "solsticeAfter":I
    .restart local v18    # "solsticeBefore":I
    .restart local v19    # "firstMoon":I
    :goto_f8
    return-void
.end method

.method private final greylist-max-o daysToMillis(I)J
    .registers 6
    .param p1, "days"    # I

    .line 652
    int-to-long v0, p1

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    .line 653
    .local v0, "millis":J
    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    invoke-virtual {v2, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v2

    int-to-long v2, v2

    sub-long v2, v0, v2

    return-wide v2
.end method

.method private greylist-max-o hasNoMajorSolarTerm(I)Z
    .registers 6
    .param p1, "newMoon"    # I

    .line 746
    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v0

    .line 747
    .local v0, "mst":I
    add-int/lit8 v1, p1, 0x19

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    .line 748
    .local v1, "nmn":I
    invoke-direct {p0, v1}, Landroid/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    move-result v3

    .line 749
    .local v3, "mstt":I
    if-ne v0, v3, :cond_12

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    :goto_13
    return v2
.end method

.method private greylist-max-o isLeapMonthBetween(II)Z
    .registers 6
    .param p1, "newMoon1"    # I
    .param p2, "newMoon2"    # I

    .line 773
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_21

    .line 779
    const/4 v0, 0x0

    if-lt p2, p1, :cond_1f

    add-int/lit8 v1, p2, -0x19

    .line 780
    invoke-direct {p0, v1, v0}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v1

    invoke-direct {p0, p1, v1}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v1

    if-nez v1, :cond_1d

    .line 781
    invoke-direct {p0, p2}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1d
    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    nop

    .line 779
    :goto_20
    return v0

    .line 774
    :cond_21
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLeapMonthBetween("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): Invalid parameters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o majorSolarTerm(I)I
    .registers 6
    .param p1, "days"    # I

    .line 732
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    invoke-virtual {v0}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    move-result-wide v0

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    rem-int/lit8 v0, v0, 0xc

    .line 733
    .local v0, "term":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_24

    .line 734
    add-int/lit8 v0, v0, 0xc

    .line 736
    :cond_24
    return v0
.end method

.method private final greylist-max-o millisToDays(J)I
    .registers 7
    .param p1, "millis"    # J

    .line 662
    iget-object v0, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    invoke-virtual {v0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, p1

    const-wide/32 v2, 0x5265c00

    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;->floorDivide(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o newMoonNear(IZ)I
    .registers 6
    .param p1, "days"    # I
    .param p2, "after"    # Z

    .line 708
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    sget-object v1, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    invoke-virtual {v0, v1, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J

    move-result-wide v0

    .line 710
    .local v0, "newMoon":J
    invoke-direct {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result v2

    return v2
.end method

.method private greylist-max-o newYear(I)I
    .registers 12
    .param p1, "gyear"    # I

    .line 919
    iget-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 921
    .local v0, "cacheValue":J
    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_4e

    .line 923
    add-int/lit8 v2, p1, -0x1

    invoke-direct {p0, v2}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v2

    .line 924
    .local v2, "solsticeBefore":I
    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    move-result v3

    .line 925
    .local v3, "solsticeAfter":I
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v4

    .line 926
    .local v4, "newMoon1":I
    add-int/lit8 v6, v4, 0x19

    invoke-direct {p0, v6, v5}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v6

    .line 927
    .local v6, "newMoon2":I
    add-int/lit8 v7, v3, 0x1

    const/4 v8, 0x0

    invoke-direct {p0, v7, v8}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v7

    .line 929
    .local v7, "newMoon11":I
    invoke-direct {p0, v4, v7}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    move-result v8

    const/16 v9, 0xc

    if-ne v8, v9, :cond_47

    .line 930
    invoke-direct {p0, v4}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v8

    if-nez v8, :cond_3f

    invoke-direct {p0, v6}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    move-result v8

    if-eqz v8, :cond_47

    .line 931
    :cond_3f
    add-int/lit8 v8, v6, 0x19

    invoke-direct {p0, v8, v5}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v5

    int-to-long v0, v5

    goto :goto_48

    .line 933
    :cond_47
    int-to-long v0, v6

    .line 936
    :goto_48
    iget-object v5, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    int-to-long v8, p1

    invoke-virtual {v5, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    .line 938
    .end local v2    # "solsticeBefore":I
    .end local v3    # "solsticeAfter":I
    .end local v4    # "newMoon1":I
    .end local v6    # "newMoon2":I
    .end local v7    # "newMoon11":I
    :cond_4e
    long-to-int v2, v0

    return v2
.end method

.method private greylist-max-o offsetMonth(III)V
    .registers 8
    .param p1, "newMoon"    # I
    .param p2, "dom"    # I
    .param p3, "delta"    # I

    .line 510
    int-to-double v0, p3

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/2addr p1, v0

    .line 513
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result p1

    .line 516
    const v1, 0x253d8c    # 3.419992E-39f

    add-int/2addr v1, p1

    sub-int/2addr v1, v0

    add-int/2addr v1, p2

    .line 520
    .local v1, "jd":I
    const/16 v0, 0x1d

    const/16 v2, 0x14

    if-le p2, v0, :cond_30

    .line 521
    add-int/lit8 v0, v1, -0x1

    invoke-virtual {p0, v2, v0}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 526
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->complete()V

    .line 527
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->getActualMaximum(I)I

    move-result v0

    if-lt v0, p2, :cond_33

    .line 528
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    goto :goto_33

    .line 531
    :cond_30
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 533
    :cond_33
    :goto_33
    return-void
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 3
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 1020
    const/16 v0, -0xa4c

    iput v0, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    .line 1021
    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    .line 1023
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 1026
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    .line 1027
    new-instance v0, Landroid/icu/impl/CalendarCache;

    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    .line 1028
    return-void
.end method

.method private greylist-max-o synodicMonthsBetween(II)I
    .registers 7
    .param p1, "day1"    # I
    .param p2, "day2"    # I

    .line 721
    sub-int v0, p2, p1

    int-to-double v0, v0

    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method private greylist-max-o winterSolstice(I)I
    .registers 11
    .param p1, "gyear"    # I

    .line 679
    iget-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/icu/impl/CalendarCache;->get(J)J

    move-result-wide v0

    .line 681
    .local v0, "cacheValue":J
    sget-wide v2, Landroid/icu/impl/CalendarCache;->EMPTY:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_33

    .line 686
    const/16 v2, 0xb

    invoke-virtual {p0, p1, v2}, Landroid/icu/util/ChineseCalendar;->computeGregorianMonthStart(II)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const v4, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v2, v4

    invoke-direct {p0, v2}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    move-result-wide v4

    .line 690
    .local v4, "ms":J
    new-instance v2, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v2, v4, v5}, Landroid/icu/impl/CalendarAstronomer;-><init>(J)V

    sget-object v6, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    invoke-virtual {v2, v6, v3}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J

    move-result-wide v2

    .line 692
    .local v2, "solarLong":J
    invoke-direct {p0, v2, v3}, Landroid/icu/util/ChineseCalendar;->millisToDays(J)I

    move-result v6

    int-to-long v0, v6

    .line 693
    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    int-to-long v7, p1

    invoke-virtual {v6, v7, v8, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    .line 695
    .end local v2    # "solarLong":J
    .end local v4    # "ms":J
    :cond_33
    long-to-int v2, v0

    return v2
.end method


# virtual methods
.method public whitelist test-api add(II)V
    .registers 6
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 539
    sparse-switch p1, :sswitch_data_22

    .line 550
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    goto :goto_20

    .line 542
    :sswitch_7
    if-eqz p2, :cond_20

    .line 543
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v0

    .line 544
    .local v0, "dom":I
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v1

    const v2, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v2

    .line 545
    .local v1, "day":I
    sub-int v2, v1, v0

    add-int/lit8 v2, v2, 0x1

    .line 546
    .local v2, "moon":I
    invoke-direct {p0, v2, v0, p2}, Landroid/icu/util/ChineseCalendar;->offsetMonth(III)V

    .line 547
    .end local v0    # "dom":I
    .end local v1    # "day":I
    .end local v2    # "moon":I
    nop

    .line 553
    :cond_20
    :goto_20
    return-void

    nop

    :sswitch_data_22
    .sparse-switch
        0x2 -> :sswitch_7
        0x17 -> :sswitch_7
    .end sparse-switch
.end method

.method protected whitelist test-api getFieldResolutionTable()[[[I
    .registers 2

    .line 494
    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    return-object v0
.end method

.method public whitelist test-api getTemporalMonthCode()Ljava/lang/String;
    .registers 4

    .line 1068
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v0

    .line 1069
    .local v0, "is_leap":I
    if-eqz v0, :cond_12

    .line 1070
    sget-object v1, Landroid/icu/util/ChineseCalendar;->gTemporalLeapMonthCodes:[Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v2

    aget-object v1, v1, v2

    return-object v1

    .line 1072
    :cond_12
    invoke-super {p0}, Landroid/icu/util/Calendar;->getTemporalMonthCode()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api getType()Ljava/lang/String;
    .registers 2

    .line 1000
    const-string v0, "chinese"

    return-object v0
.end method

.method protected whitelist test-api handleComputeFields(I)V
    .registers 6
    .param p1, "julianDay"    # I

    .line 803
    const v0, 0x253d8c    # 3.419992E-39f

    sub-int v0, p1, v0

    .line 804
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->getGregorianYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->getGregorianMonth()I

    move-result v2

    .line 803
    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    .line 806
    return-void
.end method

.method protected whitelist test-api handleComputeMonthStart(IIZ)I
    .registers 21
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    .line 957
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ltz v1, :cond_10

    const/16 v4, 0xb

    if-le v1, v4, :cond_d

    goto :goto_10

    :cond_d
    move/from16 v5, p1

    goto :goto_1c

    .line 958
    :cond_10
    :goto_10
    new-array v4, v3, [I

    .line 959
    .local v4, "rem":[I
    const/16 v5, 0xc

    invoke-static {v1, v5, v4}, Landroid/icu/util/ChineseCalendar;->floorDivide(II[I)I

    move-result v5

    add-int v5, p1, v5

    .line 960
    .end local p1    # "eyear":I
    .local v5, "eyear":I
    aget v1, v4, v2

    .line 963
    .end local v4    # "rem":[I
    .end local p2    # "month":I
    .local v1, "month":I
    :goto_1c
    iget v4, v0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v3

    .line 964
    .local v4, "gyear":I
    invoke-direct {v0, v4}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    move-result v6

    .line 965
    .local v6, "newYear":I
    mul-int/lit8 v7, v1, 0x1d

    add-int/2addr v7, v6

    invoke-direct {v0, v7, v3}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v7

    .line 967
    .local v7, "newMoon":I
    const v8, 0x253d8c    # 3.419992E-39f

    add-int v9, v7, v8

    .line 970
    .local v9, "julianDay":I
    const/4 v10, 0x2

    invoke-virtual {v0, v10}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v11

    .line 971
    .local v11, "saveMonth":I
    const/16 v12, 0x17

    invoke-virtual {v0, v12}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v13

    .line 972
    .local v13, "saveOrdinalMonth":I
    const/16 v14, 0x16

    invoke-virtual {v0, v14}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v15

    .line 975
    .local v15, "saveIsLeapMonth":I
    if-eqz p3, :cond_46

    move/from16 v16, v15

    goto :goto_48

    :cond_46
    move/from16 v16, v2

    :goto_48
    move/from16 p1, v16

    .line 977
    .local p1, "isLeapMonth":I
    invoke-virtual {v0, v9}, Landroid/icu/util/ChineseCalendar;->computeGregorianFields(I)V

    .line 980
    move/from16 p2, v8

    invoke-virtual {v0}, Landroid/icu/util/ChineseCalendar;->getGregorianYear()I

    move-result v8

    .line 981
    invoke-virtual {v0}, Landroid/icu/util/ChineseCalendar;->getGregorianMonth()I

    move-result v12

    .line 980
    invoke-direct {v0, v7, v8, v12, v2}, Landroid/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    .line 983
    invoke-virtual {v0, v10}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v2

    if-ne v1, v2, :cond_69

    .line 984
    invoke-virtual {v0, v14}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v2

    move/from16 v8, p1

    .end local p1    # "isLeapMonth":I
    .local v8, "isLeapMonth":I
    if-eq v8, v2, :cond_73

    goto :goto_6b

    .line 983
    .end local v8    # "isLeapMonth":I
    .restart local p1    # "isLeapMonth":I
    :cond_69
    move/from16 v8, p1

    .line 985
    .end local p1    # "isLeapMonth":I
    .restart local v8    # "isLeapMonth":I
    :goto_6b
    add-int/lit8 v2, v7, 0x19

    invoke-direct {v0, v2, v3}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v7

    .line 986
    add-int v9, v7, p2

    .line 989
    :cond_73
    invoke-virtual {v0, v10, v11}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 990
    const/16 v2, 0x17

    invoke-virtual {v0, v2, v13}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 991
    invoke-virtual {v0, v14, v15}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 993
    add-int/lit8 v2, v9, -0x1

    return v2
.end method

.method protected whitelist test-api handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .registers 5
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    .line 462
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    return-object v0
.end method

.method protected whitelist test-api handleGetExtendedYear()I
    .registers 6

    .line 428
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v0}, Landroid/icu/util/ChineseCalendar;->newestStamp(III)I

    move-result v2

    const/16 v3, 0x13

    invoke-virtual {p0, v3}, Landroid/icu/util/ChineseCalendar;->getStamp(I)I

    move-result v4

    if-gt v2, v4, :cond_13

    .line 429
    invoke-virtual {p0, v3, v1}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    .local v0, "year":I
    goto :goto_26

    .line 431
    .end local v0    # "year":I
    :cond_13
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    sub-int/2addr v0, v1

    .line 433
    .local v0, "cycle":I
    mul-int/lit8 v2, v0, 0x3c

    invoke-virtual {p0, v1, v1}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v1

    add-int/2addr v2, v1

    iget v1, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    add-int/lit16 v1, v1, 0xa4c

    sub-int v1, v2, v1

    move v0, v1

    .line 435
    .local v0, "year":I
    :goto_26
    return v0
.end method

.method protected whitelist test-api handleGetLimit(II)I
    .registers 4
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    .line 417
    sget-object v0, Landroid/icu/util/ChineseCalendar;->LIMITS:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    return v0
.end method

.method protected whitelist test-api handleGetMonthLength(II)I
    .registers 6
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    .line 446
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/util/ChineseCalendar;->handleComputeMonthStart(IIZ)I

    move-result v1

    const v2, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v2

    add-int/2addr v1, v0

    .line 448
    .local v1, "thisStart":I
    add-int/lit8 v2, v1, 0x19

    invoke-direct {p0, v2, v0}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v0

    .line 449
    .local v0, "nextStart":I
    sub-int v2, v0, v1

    return v2
.end method

.method public greylist-max-o haveDefaultCentury()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1011
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api inTemporalLeapYear()Z
    .registers 3

    .line 1046
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->getActualMaximum(I)I

    move-result v0

    const/16 v1, 0x168

    if-le v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method protected blacklist internalGetMonth()I
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1115
    sget-object v0, Landroid/icu/util/ChineseCalendar;->MONTH_PRECEDENCE:[[[I

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->resolveFields([[[I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1116
    invoke-virtual {p0, v1}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v0

    return v0

    .line 1118
    :cond_e
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/util/Calendar;

    .line 1119
    .local v0, "temp":Landroid/icu/util/Calendar;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 1120
    const/16 v3, 0x16

    invoke-virtual {v0, v3, v2}, Landroid/icu/util/Calendar;->set(II)V

    .line 1121
    const/4 v2, 0x5

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v4}, Landroid/icu/util/Calendar;->set(II)V

    .line 1123
    const/16 v2, 0x17

    invoke-virtual {p0, v2}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/icu/util/Calendar;->roll(II)V

    .line 1124
    invoke-virtual {v0, v3}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v3, v2}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 1125
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->get(I)I

    move-result v2

    .line 1126
    .local v2, "month":I
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    .line 1127
    return v2
.end method

.method protected blacklist internalGetMonth(I)I
    .registers 4
    .param p1, "defaultValue"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1138
    sget-object v0, Landroid/icu/util/ChineseCalendar;->MONTH_PRECEDENCE:[[[I

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->resolveFields([[[I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_e

    .line 1139
    invoke-virtual {p0, v1, p1}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    move-result v0

    return v0

    .line 1141
    :cond_e
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->internalGetMonth()I

    move-result v0

    return v0
.end method

.method public whitelist test-api roll(II)V
    .registers 12
    .param p1, "field"    # I
    .param p2, "amount"    # I

    .line 559
    sparse-switch p1, :sswitch_data_62

    .line 608
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    goto :goto_60

    .line 562
    :sswitch_7
    if-eqz p2, :cond_60

    .line 563
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v0

    .line 564
    .local v0, "dom":I
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v1

    const v2, 0x253d8c    # 3.419992E-39f

    sub-int/2addr v1, v2

    .line 565
    .local v1, "day":I
    sub-int v2, v1, v0

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 573
    .local v2, "moon":I
    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v4

    .line 574
    .local v4, "m":I
    iget-boolean v5, p0, Landroid/icu/util/ChineseCalendar;->hasLeapMonthBetweenWinterSolstices:Z

    if-eqz v5, :cond_49

    .line 575
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Landroid/icu/util/ChineseCalendar;->get(I)I

    move-result v5

    if-ne v5, v3, :cond_30

    .line 576
    add-int/lit8 v4, v4, 0x1

    goto :goto_49

    .line 585
    :cond_30
    int-to-double v5, v4

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v5, v7

    const-wide v7, 0x403d87d4abcb41d5L    # 29.530588853

    mul-double/2addr v5, v7

    double-to-int v5, v5

    sub-int v5, v2, v5

    .line 587
    .local v5, "moon1":I
    invoke-direct {p0, v5, v3}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    move-result v3

    .line 588
    .end local v5    # "moon1":I
    .local v3, "moon1":I
    invoke-direct {p0, v3, v2}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 589
    add-int/lit8 v4, v4, 0x1

    .line 596
    .end local v3    # "moon1":I
    :cond_49
    :goto_49
    iget-boolean v3, p0, Landroid/icu/util/ChineseCalendar;->hasLeapMonthBetweenWinterSolstices:Z

    if-eqz v3, :cond_50

    const/16 v3, 0xd

    goto :goto_52

    :cond_50
    const/16 v3, 0xc

    .line 597
    .local v3, "n":I
    :goto_52
    add-int v5, v4, p2

    rem-int/2addr v5, v3

    .line 598
    .local v5, "newM":I
    if-gez v5, :cond_58

    .line 599
    add-int/2addr v5, v3

    .line 602
    :cond_58
    if-eq v5, v4, :cond_5f

    .line 603
    sub-int v6, v5, v4

    invoke-direct {p0, v2, v0, v6}, Landroid/icu/util/ChineseCalendar;->offsetMonth(III)V

    .line 605
    .end local v0    # "dom":I
    .end local v1    # "day":I
    .end local v2    # "moon":I
    .end local v3    # "n":I
    .end local v4    # "m":I
    .end local v5    # "newM":I
    :cond_5f
    nop

    .line 611
    :cond_60
    :goto_60
    return-void

    nop

    :sswitch_data_62
    .sparse-switch
        0x2 -> :sswitch_7
        0x17 -> :sswitch_7
    .end sparse-switch
.end method

.method public whitelist test-api setTemporalMonthCode(Ljava/lang/String;)V
    .registers 6
    .param p1, "temporalMonth"    # Ljava/lang/String;

    .line 1088
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x16

    if-ne v0, v1, :cond_51

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4d

    if-ne v0, v1, :cond_51

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x4c

    if-eq v0, v1, :cond_1c

    goto :goto_51

    .line 1093
    :cond_1c
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_1d
    sget-object v1, Landroid/icu/util/ChineseCalendar;->gTemporalLeapMonthCodes:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_38

    .line 1094
    sget-object v1, Landroid/icu/util/ChineseCalendar;->gTemporalLeapMonthCodes:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 1095
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 1096
    const/4 v1, 0x1

    invoke-virtual {p0, v3, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 1097
    return-void

    .line 1093
    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 1100
    .end local v0    # "m":I
    :cond_38
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

    .line 1089
    :cond_51
    :goto_51
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/ChineseCalendar;->set(II)V

    .line 1090
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->setTemporalMonthCode(Ljava/lang/String;)V

    .line 1091
    return-void
.end method
