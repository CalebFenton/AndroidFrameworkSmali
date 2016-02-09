.class public Landroid/icu/util/IndianCalendar;
.super Landroid/icu/util/Calendar;
.source "IndianCalendar.java"


# static fields
.field public static final AGRAHAYANA:I = 0x8

.field public static final ASADHA:I = 0x3

.field public static final ASVINA:I = 0x6

.field public static final BHADRA:I = 0x5

.field public static final CHAITRA:I = 0x0

.field public static final IE:I = 0x0

.field private static final INDIAN_ERA_START:I = 0x4e

.field private static final INDIAN_YEAR_START:I = 0x50

.field public static final JYAISTHA:I = 0x2

.field public static final KARTIKA:I = 0x7

.field private static final LIMITS:[[I

.field public static final MAGHA:I = 0xa

.field public static final PAUSA:I = 0x9

.field public static final PHALGUNA:I = 0xb

.field public static final SRAVANA:I = 0x4

.field public static final VAISAKHA:I = 0x1

.field private static final serialVersionUID:J = 0x3235383330303532L


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/4 v7, 0x5

    #@1
    const v6, 0x4c4b40

    #@4
    const v5, -0x4c4b40

    #@7
    const/4 v4, 0x1

    #@8
    const/4 v3, 0x0

    #@9
    .line 400
    const/16 v0, 0x16

    #@b
    new-array v0, v0, [[I

    #@d
    .line 403
    filled-new-array {v3, v3, v3, v3}, [I

    #@10
    move-result-object v1

    #@11
    aput-object v1, v0, v3

    #@13
    .line 404
    filled-new-array {v5, v5, v6, v6}, [I

    #@16
    move-result-object v1

    #@17
    aput-object v1, v0, v4

    #@19
    .line 405
    const/16 v1, 0xb

    #@1b
    const/16 v2, 0xb

    #@1d
    filled-new-array {v3, v3, v1, v2}, [I

    #@20
    move-result-object v1

    #@21
    const/4 v2, 0x2

    #@22
    aput-object v1, v0, v2

    #@24
    .line 406
    const/16 v1, 0x34

    #@26
    const/16 v2, 0x35

    #@28
    filled-new-array {v4, v4, v1, v2}, [I

    #@2b
    move-result-object v1

    #@2c
    const/4 v2, 0x3

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 407
    new-array v1, v3, [I

    #@31
    const/4 v2, 0x4

    #@32
    aput-object v1, v0, v2

    #@34
    .line 408
    const/16 v1, 0x1e

    #@36
    const/16 v2, 0x1f

    #@38
    filled-new-array {v4, v4, v1, v2}, [I

    #@3b
    move-result-object v1

    #@3c
    aput-object v1, v0, v7

    #@3e
    .line 409
    const/16 v1, 0x16d

    #@40
    const/16 v2, 0x16e

    #@42
    filled-new-array {v4, v4, v1, v2}, [I

    #@45
    move-result-object v1

    #@46
    const/4 v2, 0x6

    #@47
    aput-object v1, v0, v2

    #@49
    .line 410
    new-array v1, v3, [I

    #@4b
    const/4 v2, 0x7

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 411
    const/4 v1, -0x1

    #@4f
    const/4 v2, -0x1

    #@50
    filled-new-array {v1, v2, v7, v7}, [I

    #@53
    move-result-object v1

    #@54
    const/16 v2, 0x8

    #@56
    aput-object v1, v0, v2

    #@58
    .line 412
    new-array v1, v3, [I

    #@5a
    const/16 v2, 0x9

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 413
    new-array v1, v3, [I

    #@60
    const/16 v2, 0xa

    #@62
    aput-object v1, v0, v2

    #@64
    .line 414
    new-array v1, v3, [I

    #@66
    const/16 v2, 0xb

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 415
    new-array v1, v3, [I

    #@6c
    const/16 v2, 0xc

    #@6e
    aput-object v1, v0, v2

    #@70
    .line 416
    new-array v1, v3, [I

    #@72
    const/16 v2, 0xd

    #@74
    aput-object v1, v0, v2

    #@76
    .line 417
    new-array v1, v3, [I

    #@78
    const/16 v2, 0xe

    #@7a
    aput-object v1, v0, v2

    #@7c
    .line 418
    new-array v1, v3, [I

    #@7e
    const/16 v2, 0xf

    #@80
    aput-object v1, v0, v2

    #@82
    .line 419
    new-array v1, v3, [I

    #@84
    const/16 v2, 0x10

    #@86
    aput-object v1, v0, v2

    #@88
    .line 420
    filled-new-array {v5, v5, v6, v6}, [I

    #@8b
    move-result-object v1

    #@8c
    const/16 v2, 0x11

    #@8e
    aput-object v1, v0, v2

    #@90
    .line 421
    new-array v1, v3, [I

    #@92
    const/16 v2, 0x12

    #@94
    aput-object v1, v0, v2

    #@96
    .line 422
    filled-new-array {v5, v5, v6, v6}, [I

    #@99
    move-result-object v1

    #@9a
    const/16 v2, 0x13

    #@9c
    aput-object v1, v0, v2

    #@9e
    .line 423
    new-array v1, v3, [I

    #@a0
    const/16 v2, 0x14

    #@a2
    aput-object v1, v0, v2

    #@a4
    .line 424
    new-array v1, v3, [I

    #@a6
    const/16 v2, 0x15

    #@a8
    aput-object v1, v0, v2

    #@aa
    .line 400
    sput-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    #@ac
    .line 67
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 163
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 162
    return-void
.end method

.method public constructor <init>(III)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    .line 255
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 256
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@11
    .line 257
    const/4 v0, 0x2

    #@12
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@15
    .line 258
    const/4 v0, 0x5

    #@16
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@19
    .line 254
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 2
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    .line 284
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 285
    const/4 v0, 0x1

    #@e
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@11
    .line 286
    const/4 v0, 0x2

    #@12
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@15
    .line 287
    const/4 v0, 0x5

    #@16
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@19
    .line 288
    const/16 v0, 0xb

    #@1b
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@1e
    .line 289
    const/16 v0, 0xc

    #@20
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@23
    .line 290
    const/16 v0, 0xd

    #@25
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/IndianCalendar;->set(II)V

    #@28
    .line 282
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 175
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 224
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->setTimeInMillis(J)V

    #@a
    .line 223
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 210
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@6
    move-result-wide v0

    #@7
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IndianCalendar;->setTimeInMillis(J)V

    #@a
    .line 209
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 197
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 196
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 237
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@6
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@9
    move-result-object v1

    #@a
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 238
    invoke-virtual {p0, p1}, Landroid/icu/util/IndianCalendar;->setTime(Ljava/util/Date;)V

    #@10
    .line 236
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 186
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/IndianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 185
    return-void
.end method

.method private static IndianToJD(III)D
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I

    #@0
    .prologue
    const/4 v8, 0x3

    #@1
    .line 474
    add-int/lit8 v0, p0, 0x4e

    #@3
    .line 477
    .local v0, "gyear":I
    invoke-static {v0}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    #@6
    move-result v5

    #@7
    if-eqz v5, :cond_0

    #@9
    .line 478
    const/16 v1, 0x1f

    #@b
    .line 479
    .local v1, "leapMonth":I
    const/16 v5, 0x15

    #@d
    invoke-static {v0, v8, v5}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    #@10
    move-result-wide v6

    #@11
    .line 485
    .local v6, "start":D
    :goto_0
    const/4 v5, 0x1

    #@12
    if-ne p1, v5, :cond_1

    #@14
    .line 486
    add-int/lit8 v5, p2, -0x1

    #@16
    int-to-double v8, v5

    #@17
    add-double v2, v6, v8

    #@19
    .line 499
    .local v2, "jd":D
    :goto_1
    return-wide v2

    #@1a
    .line 481
    .end local v1    # "leapMonth":I
    .end local v2    # "jd":D
    .end local v6    # "start":D
    :cond_0
    const/16 v1, 0x1e

    #@1c
    .line 482
    .restart local v1    # "leapMonth":I
    const/16 v5, 0x16

    #@1e
    invoke-static {v0, v8, v5}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    #@21
    move-result-wide v6

    #@22
    .restart local v6    # "start":D
    goto :goto_0

    #@23
    .line 488
    :cond_1
    int-to-double v8, v1

    #@24
    add-double v2, v6, v8

    #@26
    .line 489
    .restart local v2    # "jd":D
    add-int/lit8 v4, p1, -0x2

    #@28
    .line 490
    .local v4, "m":I
    const/4 v5, 0x5

    #@29
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    #@2c
    move-result v4

    #@2d
    .line 491
    mul-int/lit8 v5, v4, 0x1f

    #@2f
    int-to-double v8, v5

    #@30
    add-double/2addr v2, v8

    #@31
    .line 492
    const/16 v5, 0x8

    #@33
    if-lt p1, v5, :cond_2

    #@35
    .line 493
    add-int/lit8 v4, p1, -0x7

    #@37
    .line 494
    mul-int/lit8 v5, v4, 0x1e

    #@39
    int-to-double v8, v5

    #@3a
    add-double/2addr v2, v8

    #@3b
    .line 496
    :cond_2
    add-int/lit8 v5, p2, -0x1

    #@3d
    int-to-double v8, v5

    #@3e
    add-double/2addr v2, v8

    #@3f
    goto :goto_1
.end method

.method private static gregorianToJD(III)D
    .locals 6
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "date"    # I

    #@0
    .prologue
    .line 511
    add-int/lit8 v1, p0, -0x1

    #@2
    .line 512
    .local v1, "y":I
    mul-int/lit16 v2, v1, 0x16d

    #@4
    .line 513
    div-int/lit8 v3, v1, 0x4

    #@6
    .line 512
    add-int/2addr v2, v3

    #@7
    .line 514
    div-int/lit8 v3, v1, 0x64

    #@9
    .line 512
    sub-int/2addr v2, v3

    #@a
    .line 515
    div-int/lit16 v3, v1, 0x190

    #@c
    .line 512
    add-int/2addr v2, v3

    #@d
    .line 516
    mul-int/lit16 v3, p1, 0x16f

    #@f
    add-int/lit16 v3, v3, -0x16a

    #@11
    div-int/lit8 v3, v3, 0xc

    #@13
    .line 512
    add-int/2addr v3, v2

    #@14
    .line 517
    const/4 v2, 0x2

    #@15
    if-gt p1, v2, :cond_0

    #@17
    const/4 v2, 0x0

    #@18
    .line 512
    :goto_0
    add-int/2addr v2, v3

    #@19
    add-int v0, v2, p2

    #@1b
    .line 519
    .local v0, "result":I
    add-int/lit8 v2, v0, -0x1

    #@1d
    int-to-double v2, v2

    #@1e
    .line 510
    const-wide v4, 0x413a445180000000L    # 1721425.5

    #@23
    .line 519
    add-double/2addr v2, v4

    #@24
    return-wide v2

    #@25
    .line 517
    .end local v0    # "result":I
    :cond_0
    invoke-static {p0}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    #@28
    move-result v2

    #@29
    if-eqz v2, :cond_1

    #@2b
    const/4 v2, -0x1

    #@2c
    goto :goto_0

    #@2d
    :cond_1
    const/4 v2, -0x2

    #@2e
    goto :goto_0
.end method

.method private static isGregorianLeap(I)Z
    .locals 3
    .param p0, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 572
    rem-int/lit8 v2, p0, 0x4

    #@4
    if-nez v2, :cond_2

    #@6
    .line 573
    rem-int/lit8 v2, p0, 0x64

    #@8
    if-nez v2, :cond_0

    #@a
    rem-int/lit16 v2, p0, 0x190

    #@c
    if-nez v2, :cond_1

    #@e
    .line 572
    :cond_0
    :goto_0
    return v0

    #@f
    :cond_1
    move v0, v1

    #@10
    .line 573
    goto :goto_0

    #@11
    :cond_2
    move v0, v1

    #@12
    .line 572
    goto :goto_0
.end method

.method private static jdToGregorian(D)[I
    .locals 34
    .param p0, "jd"    # D

    #@0
    .prologue
    .line 532
    const-wide/high16 v30, 0x3fe0000000000000L    # 0.5

    #@2
    sub-double v30, p0, v30

    #@4
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    #@7
    move-result-wide v30

    #@8
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    #@a
    add-double v24, v30, v32

    #@c
    .line 528
    .local v24, "wjd":D
    const-wide v30, 0x413a445180000000L    # 1721425.5

    #@11
    .line 533
    sub-double v10, v24, v30

    #@13
    .line 534
    .local v10, "depoch":D
    const-wide v30, 0x4101d58800000000L    # 146097.0

    #@18
    div-double v30, v10, v30

    #@1a
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    #@1d
    move-result-wide v22

    #@1e
    .line 535
    .local v22, "quadricent":D
    const-wide v30, 0x4101d58800000000L    # 146097.0

    #@23
    rem-double v12, v10, v30

    #@25
    .line 536
    .local v12, "dqc":D
    const-wide v30, 0x40e1d58000000000L    # 36524.0

    #@2a
    div-double v30, v12, v30

    #@2c
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    #@2f
    move-result-wide v4

    #@30
    .line 537
    .local v4, "cent":D
    const-wide v30, 0x40e1d58000000000L    # 36524.0

    #@35
    rem-double v8, v12, v30

    #@37
    .line 538
    .local v8, "dcent":D
    const-wide v30, 0x4096d40000000000L    # 1461.0

    #@3c
    div-double v30, v8, v30

    #@3e
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    #@41
    move-result-wide v20

    #@42
    .line 539
    .local v20, "quad":D
    const-wide v30, 0x4096d40000000000L    # 1461.0

    #@47
    rem-double v14, v8, v30

    #@49
    .line 540
    .local v14, "dquad":D
    const-wide v30, 0x4076d00000000000L    # 365.0

    #@4e
    div-double v30, v14, v30

    #@50
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    #@53
    move-result-wide v28

    #@54
    .line 541
    .local v28, "yindex":D
    const-wide/high16 v30, 0x4079000000000000L    # 400.0

    #@56
    mul-double v30, v30, v22

    #@58
    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    #@5a
    mul-double v32, v32, v4

    #@5c
    add-double v30, v30, v32

    #@5e
    const-wide/high16 v32, 0x4010000000000000L    # 4.0

    #@60
    mul-double v32, v32, v20

    #@62
    add-double v30, v30, v32

    #@64
    add-double v30, v30, v28

    #@66
    move-wide/from16 v0, v30

    #@68
    double-to-int v0, v0

    #@69
    move/from16 v19, v0

    #@6b
    .line 543
    .local v19, "year":I
    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    #@6d
    cmpl-double v30, v4, v30

    #@6f
    if-eqz v30, :cond_0

    #@71
    const-wide/high16 v30, 0x4010000000000000L    # 4.0

    #@73
    cmpl-double v30, v28, v30

    #@75
    if-nez v30, :cond_2

    #@77
    :cond_0
    const/16 v30, 0x1

    #@79
    :goto_0
    if-nez v30, :cond_1

    #@7b
    .line 544
    add-int/lit8 v19, v19, 0x1

    #@7d
    .line 547
    :cond_1
    const/16 v30, 0x1

    #@7f
    const/16 v31, 0x1

    #@81
    move/from16 v0, v19

    #@83
    move/from16 v1, v30

    #@85
    move/from16 v2, v31

    #@87
    invoke-static {v0, v1, v2}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    #@8a
    move-result-wide v30

    #@8b
    sub-double v26, v24, v30

    #@8d
    .line 548
    .local v26, "yearday":D
    const/16 v30, 0x3

    #@8f
    const/16 v31, 0x1

    #@91
    move/from16 v0, v19

    #@93
    move/from16 v1, v30

    #@95
    move/from16 v2, v31

    #@97
    invoke-static {v0, v1, v2}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    #@9a
    move-result-wide v30

    #@9b
    cmpg-double v30, v24, v30

    #@9d
    if-gez v30, :cond_3

    #@9f
    const/16 v30, 0x0

    #@a1
    :goto_1
    move/from16 v0, v30

    #@a3
    int-to-double v0, v0

    #@a4
    move-wide/from16 v16, v0

    #@a6
    .line 553
    .local v16, "leapadj":D
    add-double v30, v26, v16

    #@a8
    const-wide/high16 v32, 0x4028000000000000L    # 12.0

    #@aa
    mul-double v30, v30, v32

    #@ac
    const-wide v32, 0x4077500000000000L    # 373.0

    #@b1
    add-double v30, v30, v32

    #@b3
    const-wide v32, 0x4076f00000000000L    # 367.0

    #@b8
    div-double v30, v30, v32

    #@ba
    invoke-static/range {v30 .. v31}, Ljava/lang/Math;->floor(D)D

    #@bd
    move-result-wide v30

    #@be
    move-wide/from16 v0, v30

    #@c0
    double-to-int v0, v0

    #@c1
    move/from16 v18, v0

    #@c3
    .line 554
    .local v18, "month":I
    const/16 v30, 0x1

    #@c5
    move/from16 v0, v19

    #@c7
    move/from16 v1, v18

    #@c9
    move/from16 v2, v30

    #@cb
    invoke-static {v0, v1, v2}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    #@ce
    move-result-wide v30

    #@cf
    sub-double v30, v24, v30

    #@d1
    move-wide/from16 v0, v30

    #@d3
    double-to-int v0, v0

    #@d4
    move/from16 v30, v0

    #@d6
    add-int/lit8 v6, v30, 0x1

    #@d8
    .line 556
    .local v6, "day":I
    const/16 v30, 0x3

    #@da
    move/from16 v0, v30

    #@dc
    new-array v7, v0, [I

    #@de
    .line 558
    .local v7, "julianDate":[I
    const/16 v30, 0x0

    #@e0
    aput v19, v7, v30

    #@e2
    .line 559
    const/16 v30, 0x1

    #@e4
    aput v18, v7, v30

    #@e6
    .line 560
    const/16 v30, 0x2

    #@e8
    aput v6, v7, v30

    #@ea
    .line 562
    return-object v7

    #@eb
    .line 543
    .end local v6    # "day":I
    .end local v7    # "julianDate":[I
    .end local v16    # "leapadj":D
    .end local v18    # "month":I
    .end local v26    # "yearday":D
    :cond_2
    const/16 v30, 0x0

    #@ed
    goto :goto_0

    #@ee
    .line 550
    .restart local v26    # "yearday":D
    :cond_3
    invoke-static/range {v19 .. v19}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    #@f1
    move-result v30

    #@f2
    if-eqz v30, :cond_4

    #@f4
    const/16 v30, 0x1

    #@f6
    goto :goto_1

    #@f7
    :cond_4
    const/16 v30, 0x2

    #@f9
    goto :goto_1
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 582
    const-string/jumbo v0, "indian"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 14
    .param p1, "julianDay"    # I

    #@0
    .prologue
    const/4 v13, 0x1

    #@1
    const/4 v12, 0x0

    #@2
    .line 362
    int-to-double v10, p1

    #@3
    invoke-static {v10, v11}, Landroid/icu/util/IndianCalendar;->jdToGregorian(D)[I

    #@6
    move-result-object v3

    #@7
    .line 363
    .local v3, "gregorianDay":[I
    aget v9, v3, v12

    #@9
    add-int/lit8 v2, v9, -0x4e

    #@b
    .line 364
    .local v2, "IndianYear":I
    aget v9, v3, v12

    #@d
    invoke-static {v9, v13, v13}, Landroid/icu/util/IndianCalendar;->gregorianToJD(III)D

    #@10
    move-result-wide v4

    #@11
    .line 365
    .local v4, "jdAtStartOfGregYear":D
    int-to-double v10, p1

    #@12
    sub-double/2addr v10, v4

    #@13
    double-to-int v8, v10

    #@14
    .line 367
    .local v8, "yday":I
    const/16 v9, 0x50

    #@16
    if-ge v8, v9, :cond_1

    #@18
    .line 369
    add-int/lit8 v2, v2, -0x1

    #@1a
    .line 370
    aget v9, v3, v12

    #@1c
    add-int/lit8 v9, v9, -0x1

    #@1e
    invoke-static {v9}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    #@21
    move-result v9

    #@22
    if-eqz v9, :cond_0

    #@24
    const/16 v6, 0x1f

    #@26
    .line 371
    .local v6, "leapMonth":I
    :goto_0
    add-int/lit16 v9, v6, 0x9b

    #@28
    add-int/lit8 v9, v9, 0x5a

    #@2a
    add-int/lit8 v9, v9, 0xa

    #@2c
    add-int/2addr v8, v9

    #@2d
    .line 377
    :goto_1
    if-ge v8, v6, :cond_3

    #@2f
    .line 378
    const/4 v1, 0x0

    #@30
    .line 379
    .local v1, "IndianMonth":I
    add-int/lit8 v0, v8, 0x1

    #@32
    .line 392
    .local v0, "IndianDayOfMonth":I
    :goto_2
    invoke-virtual {p0, v12, v12}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    #@35
    .line 393
    const/16 v9, 0x13

    #@37
    invoke-virtual {p0, v9, v2}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    #@3a
    .line 394
    invoke-virtual {p0, v13, v2}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    #@3d
    .line 395
    const/4 v9, 0x2

    #@3e
    invoke-virtual {p0, v9, v1}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    #@41
    .line 396
    const/4 v9, 0x5

    #@42
    invoke-virtual {p0, v9, v0}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    #@45
    .line 397
    add-int/lit8 v9, v8, 0x1

    #@47
    const/4 v10, 0x6

    #@48
    invoke-virtual {p0, v10, v9}, Landroid/icu/util/IndianCalendar;->internalSet(II)V

    #@4b
    .line 357
    return-void

    #@4c
    .line 370
    .end local v0    # "IndianDayOfMonth":I
    .end local v1    # "IndianMonth":I
    .end local v6    # "leapMonth":I
    :cond_0
    const/16 v6, 0x1e

    #@4e
    .restart local v6    # "leapMonth":I
    goto :goto_0

    #@4f
    .line 373
    .end local v6    # "leapMonth":I
    :cond_1
    aget v9, v3, v12

    #@51
    invoke-static {v9}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    #@54
    move-result v9

    #@55
    if-eqz v9, :cond_2

    #@57
    const/16 v6, 0x1f

    #@59
    .line 374
    .restart local v6    # "leapMonth":I
    :goto_3
    add-int/lit8 v8, v8, -0x50

    #@5b
    goto :goto_1

    #@5c
    .line 373
    .end local v6    # "leapMonth":I
    :cond_2
    const/16 v6, 0x1e

    #@5e
    .restart local v6    # "leapMonth":I
    goto :goto_3

    #@5f
    .line 381
    :cond_3
    sub-int v7, v8, v6

    #@61
    .line 382
    .local v7, "mday":I
    const/16 v9, 0x9b

    #@63
    if-ge v7, v9, :cond_4

    #@65
    .line 383
    div-int/lit8 v9, v7, 0x1f

    #@67
    add-int/lit8 v1, v9, 0x1

    #@69
    .line 384
    .restart local v1    # "IndianMonth":I
    rem-int/lit8 v9, v7, 0x1f

    #@6b
    add-int/lit8 v0, v9, 0x1

    #@6d
    .restart local v0    # "IndianDayOfMonth":I
    goto :goto_2

    #@6e
    .line 386
    .end local v0    # "IndianDayOfMonth":I
    .end local v1    # "IndianMonth":I
    :cond_4
    add-int/lit16 v7, v7, -0x9b

    #@70
    .line 387
    div-int/lit8 v9, v7, 0x1e

    #@72
    add-int/lit8 v1, v9, 0x6

    #@74
    .line 388
    .restart local v1    # "IndianMonth":I
    rem-int/lit8 v9, v7, 0x1e

    #@76
    add-int/lit8 v0, v9, 0x1

    #@78
    .restart local v0    # "IndianDayOfMonth":I
    goto :goto_2
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    .line 446
    if-ltz p2, :cond_0

    #@2
    const/16 v1, 0xb

    #@4
    if-le p2, v1, :cond_1

    #@6
    .line 447
    :cond_0
    div-int/lit8 v1, p2, 0xc

    #@8
    add-int/2addr p1, v1

    #@9
    .line 448
    rem-int/lit8 p2, p2, 0xc

    #@b
    .line 451
    :cond_1
    const/16 v1, 0xc

    #@d
    if-ne p2, v1, :cond_2

    #@f
    .line 452
    const/4 v0, 0x1

    #@10
    .line 457
    .local v0, "imonth":I
    :goto_0
    const/4 v1, 0x1

    #@11
    invoke-static {p1, v0, v1}, Landroid/icu/util/IndianCalendar;->IndianToJD(III)D

    #@14
    move-result-wide v2

    #@15
    .line 459
    .local v2, "jd":D
    double-to-int v1, v2

    #@16
    return v1

    #@17
    .line 454
    .end local v0    # "imonth":I
    .end local v2    # "jd":D
    :cond_2
    add-int/lit8 v0, p2, 0x1

    #@19
    .restart local v0    # "imonth":I
    goto :goto_0
.end method

.method protected handleGetExtendedYear()I
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x13

    #@2
    const/4 v2, 0x1

    #@3
    .line 313
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IndianCalendar;->newerField(II)I

    #@6
    move-result v1

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 314
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IndianCalendar;->internalGet(II)I

    #@c
    move-result v0

    #@d
    .line 320
    .local v0, "year":I
    :goto_0
    return v0

    #@e
    .line 317
    .end local v0    # "year":I
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/IndianCalendar;->internalGet(II)I

    #@11
    move-result v0

    #@12
    .restart local v0    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    .line 433
    sget-object v0, Landroid/icu/util/IndianCalendar;->LIMITS:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    aget v0, v0, p2

    #@6
    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 5
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    const/16 v4, 0x1f

    #@2
    const/4 v3, 0x1

    #@3
    const/4 v2, 0x0

    #@4
    .line 336
    if-ltz p2, :cond_0

    #@6
    const/16 v1, 0xb

    #@8
    if-le p2, v1, :cond_1

    #@a
    .line 337
    :cond_0
    new-array v0, v3, [I

    #@c
    .line 338
    .local v0, "remainder":[I
    const/16 v1, 0xc

    #@e
    invoke-static {p2, v1, v0}, Landroid/icu/util/IndianCalendar;->floorDivide(II[I)I

    #@11
    move-result v1

    #@12
    add-int/2addr p1, v1

    #@13
    .line 339
    aget p2, v0, v2

    #@15
    .line 342
    .end local v0    # "remainder":[I
    :cond_1
    add-int/lit8 v1, p1, 0x4e

    #@17
    invoke-static {v1}, Landroid/icu/util/IndianCalendar;->isGregorianLeap(I)Z

    #@1a
    move-result v1

    #@1b
    if-eqz v1, :cond_2

    #@1d
    if-nez p2, :cond_2

    #@1f
    .line 343
    return v4

    #@20
    .line 346
    :cond_2
    if-lt p2, v3, :cond_3

    #@22
    const/4 v1, 0x5

    #@23
    if-gt p2, v1, :cond_3

    #@25
    .line 347
    return v4

    #@26
    .line 350
    :cond_3
    const/16 v1, 0x1e

    #@28
    return v1
.end method

.method protected handleGetYearLength(I)I
    .locals 1
    .param p1, "extendedYear"    # I

    #@0
    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleGetYearLength(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method
