.class public Landroid/icu/util/GregorianCalendar;
.super Landroid/icu/util/Calendar;
.source "GregorianCalendar.java"


# static fields
.field public static final AD:I = 0x1

.field public static final BC:I = 0x0

.field private static final EPOCH_YEAR:I = 0x7b2

.field private static final LIMITS:[[I

.field private static final MONTH_COUNT:[[I

.field private static final serialVersionUID:J = 0x7faacb46ed8a2479L


# instance fields
.field private transient cutoverJulianDay:I

.field private gregorianCutover:J

.field private transient gregorianCutoverYear:I

.field protected transient invertGregorian:Z

.field protected transient isGregorian:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0xb

    #@2
    const/16 v6, 0x1e

    #@4
    const/4 v4, 0x1

    #@5
    const/16 v3, 0x1f

    #@7
    const/4 v5, 0x0

    #@8
    .line 232
    const/16 v0, 0xc

    #@a
    new-array v0, v0, [[I

    #@c
    .line 234
    filled-new-array {v3, v3, v5, v5}, [I

    #@f
    move-result-object v1

    #@10
    aput-object v1, v0, v5

    #@12
    .line 235
    const/16 v1, 0x1c

    #@14
    const/16 v2, 0x1d

    #@16
    filled-new-array {v1, v2, v3, v3}, [I

    #@19
    move-result-object v1

    #@1a
    aput-object v1, v0, v4

    #@1c
    .line 236
    const/16 v1, 0x3b

    #@1e
    const/16 v2, 0x3c

    #@20
    filled-new-array {v3, v3, v1, v2}, [I

    #@23
    move-result-object v1

    #@24
    const/4 v2, 0x2

    #@25
    aput-object v1, v0, v2

    #@27
    .line 237
    const/16 v1, 0x5a

    #@29
    const/16 v2, 0x5b

    #@2b
    filled-new-array {v6, v6, v1, v2}, [I

    #@2e
    move-result-object v1

    #@2f
    const/4 v2, 0x3

    #@30
    aput-object v1, v0, v2

    #@32
    .line 238
    const/16 v1, 0x78

    #@34
    const/16 v2, 0x79

    #@36
    filled-new-array {v3, v3, v1, v2}, [I

    #@39
    move-result-object v1

    #@3a
    const/4 v2, 0x4

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 239
    const/16 v1, 0x97

    #@3f
    const/16 v2, 0x98

    #@41
    filled-new-array {v6, v6, v1, v2}, [I

    #@44
    move-result-object v1

    #@45
    const/4 v2, 0x5

    #@46
    aput-object v1, v0, v2

    #@48
    .line 240
    const/16 v1, 0xb5

    #@4a
    const/16 v2, 0xb6

    #@4c
    filled-new-array {v3, v3, v1, v2}, [I

    #@4f
    move-result-object v1

    #@50
    const/4 v2, 0x6

    #@51
    aput-object v1, v0, v2

    #@53
    .line 241
    const/16 v1, 0xd4

    #@55
    const/16 v2, 0xd5

    #@57
    filled-new-array {v3, v3, v1, v2}, [I

    #@5a
    move-result-object v1

    #@5b
    const/4 v2, 0x7

    #@5c
    aput-object v1, v0, v2

    #@5e
    .line 242
    const/16 v1, 0xf3

    #@60
    const/16 v2, 0xf4

    #@62
    filled-new-array {v6, v6, v1, v2}, [I

    #@65
    move-result-object v1

    #@66
    const/16 v2, 0x8

    #@68
    aput-object v1, v0, v2

    #@6a
    .line 243
    const/16 v1, 0x111

    #@6c
    const/16 v2, 0x112

    #@6e
    filled-new-array {v3, v3, v1, v2}, [I

    #@71
    move-result-object v1

    #@72
    const/16 v2, 0x9

    #@74
    aput-object v1, v0, v2

    #@76
    .line 244
    const/16 v1, 0x130

    #@78
    const/16 v2, 0x131

    #@7a
    filled-new-array {v6, v6, v1, v2}, [I

    #@7d
    move-result-object v1

    #@7e
    const/16 v2, 0xa

    #@80
    aput-object v1, v0, v2

    #@82
    .line 245
    const/16 v1, 0x14e

    #@84
    const/16 v2, 0x14f

    #@86
    filled-new-array {v3, v3, v1, v2}, [I

    #@89
    move-result-object v1

    #@8a
    aput-object v1, v0, v7

    #@8c
    .line 232
    sput-object v0, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    #@8e
    .line 255
    const/16 v0, 0x17

    #@90
    new-array v0, v0, [[I

    #@92
    .line 258
    filled-new-array {v5, v5, v4, v4}, [I

    #@95
    move-result-object v1

    #@96
    aput-object v1, v0, v5

    #@98
    .line 259
    const v1, 0x58f163

    #@9b
    const v2, 0x5915be

    #@9e
    filled-new-array {v4, v4, v1, v2}, [I

    #@a1
    move-result-object v1

    #@a2
    aput-object v1, v0, v4

    #@a4
    .line 260
    filled-new-array {v5, v5, v7, v7}, [I

    #@a7
    move-result-object v1

    #@a8
    const/4 v2, 0x2

    #@a9
    aput-object v1, v0, v2

    #@ab
    .line 261
    const/16 v1, 0x34

    #@ad
    const/16 v2, 0x35

    #@af
    filled-new-array {v4, v4, v1, v2}, [I

    #@b2
    move-result-object v1

    #@b3
    const/4 v2, 0x3

    #@b4
    aput-object v1, v0, v2

    #@b6
    .line 262
    new-array v1, v5, [I

    #@b8
    const/4 v2, 0x4

    #@b9
    aput-object v1, v0, v2

    #@bb
    .line 263
    const/16 v1, 0x1c

    #@bd
    filled-new-array {v4, v4, v1, v3}, [I

    #@c0
    move-result-object v1

    #@c1
    const/4 v2, 0x5

    #@c2
    aput-object v1, v0, v2

    #@c4
    .line 264
    const/16 v1, 0x16d

    #@c6
    const/16 v2, 0x16e

    #@c8
    filled-new-array {v4, v4, v1, v2}, [I

    #@cb
    move-result-object v1

    #@cc
    const/4 v2, 0x6

    #@cd
    aput-object v1, v0, v2

    #@cf
    .line 265
    new-array v1, v5, [I

    #@d1
    const/4 v2, 0x7

    #@d2
    aput-object v1, v0, v2

    #@d4
    .line 266
    const/4 v1, -0x1

    #@d5
    const/4 v2, -0x1

    #@d6
    const/4 v3, 0x4

    #@d7
    const/4 v4, 0x5

    #@d8
    filled-new-array {v1, v2, v3, v4}, [I

    #@db
    move-result-object v1

    #@dc
    const/16 v2, 0x8

    #@de
    aput-object v1, v0, v2

    #@e0
    .line 267
    new-array v1, v5, [I

    #@e2
    const/16 v2, 0x9

    #@e4
    aput-object v1, v0, v2

    #@e6
    .line 268
    new-array v1, v5, [I

    #@e8
    const/16 v2, 0xa

    #@ea
    aput-object v1, v0, v2

    #@ec
    .line 269
    new-array v1, v5, [I

    #@ee
    aput-object v1, v0, v7

    #@f0
    .line 270
    new-array v1, v5, [I

    #@f2
    const/16 v2, 0xc

    #@f4
    aput-object v1, v0, v2

    #@f6
    .line 271
    new-array v1, v5, [I

    #@f8
    const/16 v2, 0xd

    #@fa
    aput-object v1, v0, v2

    #@fc
    .line 272
    new-array v1, v5, [I

    #@fe
    const/16 v2, 0xe

    #@100
    aput-object v1, v0, v2

    #@102
    .line 273
    new-array v1, v5, [I

    #@104
    const/16 v2, 0xf

    #@106
    aput-object v1, v0, v2

    #@108
    .line 274
    new-array v1, v5, [I

    #@10a
    const/16 v2, 0x10

    #@10c
    aput-object v1, v0, v2

    #@10e
    .line 275
    const v1, -0x5915be

    #@111
    const v2, -0x5915be

    #@114
    const v3, 0x58f164

    #@117
    const v4, 0x5915bf

    #@11a
    filled-new-array {v1, v2, v3, v4}, [I

    #@11d
    move-result-object v1

    #@11e
    const/16 v2, 0x11

    #@120
    aput-object v1, v0, v2

    #@122
    .line 276
    new-array v1, v5, [I

    #@124
    const/16 v2, 0x12

    #@126
    aput-object v1, v0, v2

    #@128
    .line 277
    const v1, -0x5915bd

    #@12b
    const v2, -0x5915bd

    #@12e
    const v3, 0x58f163

    #@131
    const v4, 0x5915be

    #@134
    filled-new-array {v1, v2, v3, v4}, [I

    #@137
    move-result-object v1

    #@138
    const/16 v2, 0x13

    #@13a
    aput-object v1, v0, v2

    #@13c
    .line 278
    new-array v1, v5, [I

    #@13e
    const/16 v2, 0x14

    #@140
    aput-object v1, v0, v2

    #@142
    .line 279
    new-array v1, v5, [I

    #@144
    const/16 v2, 0x15

    #@146
    aput-object v1, v0, v2

    #@148
    .line 280
    new-array v1, v5, [I

    #@14a
    const/16 v2, 0x16

    #@14c
    aput-object v1, v0, v2

    #@14e
    .line 255
    sput-object v0, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    #@150
    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 338
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
    invoke-direct {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 337
    return-void
.end method

.method public constructor <init>(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 407
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@e
    .line 302
    const-wide v0, -0xb1d069b5400L

    #@13
    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@15
    .line 307
    const v0, 0x231519

    #@18
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@1a
    .line 313
    const/16 v0, 0x62e

    #@1c
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@1e
    .line 408
    const/4 v0, 0x0

    #@1f
    invoke-virtual {p0, v0, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@22
    .line 409
    invoke-virtual {p0, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@25
    .line 410
    const/4 v0, 0x2

    #@26
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@29
    .line 411
    const/4 v0, 0x5

    #@2a
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@2d
    .line 406
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 430
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@e
    .line 302
    const-wide v0, -0xb1d069b5400L

    #@13
    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@15
    .line 307
    const v0, 0x231519

    #@18
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@1a
    .line 313
    const/16 v0, 0x62e

    #@1c
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@1e
    .line 431
    const/4 v0, 0x0

    #@1f
    invoke-virtual {p0, v0, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@22
    .line 432
    invoke-virtual {p0, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@25
    .line 433
    const/4 v0, 0x2

    #@26
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@29
    .line 434
    const/4 v0, 0x5

    #@2a
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@2d
    .line 435
    const/16 v0, 0xb

    #@2f
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@32
    .line 436
    const/16 v0, 0xc

    #@34
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@37
    .line 429
    return-void
.end method

.method public constructor <init>(IIIIII)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "date"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    .line 457
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@4
    move-result-object v0

    #@5
    sget-object v1, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@7
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@a
    move-result-object v1

    #@b
    invoke-direct {p0, v0, v1}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@e
    .line 302
    const-wide v0, -0xb1d069b5400L

    #@13
    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@15
    .line 307
    const v0, 0x231519

    #@18
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@1a
    .line 313
    const/16 v0, 0x62e

    #@1c
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@1e
    .line 458
    const/4 v0, 0x0

    #@1f
    invoke-virtual {p0, v0, v2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@22
    .line 459
    invoke-virtual {p0, v2, p1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@25
    .line 460
    const/4 v0, 0x2

    #@26
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@29
    .line 461
    const/4 v0, 0x5

    #@2a
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@2d
    .line 462
    const/16 v0, 0xb

    #@2f
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@32
    .line 463
    const/16 v0, 0xc

    #@34
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@37
    .line 464
    const/16 v0, 0xd

    #@39
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@3c
    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 349
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 348
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 392
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 302
    const-wide v0, -0xb1d069b5400L

    #@8
    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@a
    .line 307
    const v0, 0x231519

    #@d
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@f
    .line 313
    const/16 v0, 0x62e

    #@11
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@13
    .line 393
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v0

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    #@1a
    .line 391
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 380
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@3
    .line 302
    const-wide v0, -0xb1d069b5400L

    #@8
    iput-wide v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@a
    .line 307
    const v0, 0x231519

    #@d
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@f
    .line 313
    const/16 v0, 0x62e

    #@11
    iput v0, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@13
    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@16
    move-result-wide v0

    #@17
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/GregorianCalendar;->setTimeInMillis(J)V

    #@1a
    .line 379
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 369
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 368
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 359
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 358
    return-void
.end method


# virtual methods
.method public getActualMaximum(I)I
    .locals 10
    .param p1, "field"    # I

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    const/4 v8, 0x1

    #@2
    .line 646
    packed-switch p1, :pswitch_data_0

    #@5
    .line 695
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->getActualMaximum(I)I

    #@8
    move-result v6

    #@9
    return v6

    #@a
    .line 669
    :pswitch_0
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->clone()Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Landroid/icu/util/Calendar;

    #@10
    .line 670
    .local v0, "cal":Landroid/icu/util/Calendar;
    invoke-virtual {v0, v8}, Landroid/icu/util/Calendar;->setLenient(Z)V

    #@13
    .line 672
    invoke-virtual {v0, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@16
    move-result v2

    #@17
    .line 673
    .local v2, "era":I
    invoke-virtual {v0}, Landroid/icu/util/Calendar;->getTime()Ljava/util/Date;

    #@1a
    move-result-object v1

    #@1b
    .line 678
    .local v1, "d":Ljava/util/Date;
    sget-object v6, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    #@1d
    aget-object v6, v6, v8

    #@1f
    aget v4, v6, v8

    #@21
    .line 679
    .local v4, "lowGood":I
    sget-object v6, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

    #@23
    aget-object v6, v6, v8

    #@25
    const/4 v7, 0x2

    #@26
    aget v6, v6, v7

    #@28
    add-int/lit8 v3, v6, 0x1

    #@2a
    .line 680
    .local v3, "highBad":I
    :goto_0
    add-int/lit8 v6, v4, 0x1

    #@2c
    if-ge v6, v3, :cond_1

    #@2e
    .line 681
    add-int v6, v4, v3

    #@30
    div-int/lit8 v5, v6, 0x2

    #@32
    .line 682
    .local v5, "y":I
    invoke-virtual {v0, v8, v5}, Landroid/icu/util/Calendar;->set(II)V

    #@35
    .line 683
    invoke-virtual {v0, v8}, Landroid/icu/util/Calendar;->get(I)I

    #@38
    move-result v6

    #@39
    if-ne v6, v5, :cond_0

    #@3b
    invoke-virtual {v0, v9}, Landroid/icu/util/Calendar;->get(I)I

    #@3e
    move-result v6

    #@3f
    if-ne v6, v2, :cond_0

    #@41
    .line 684
    move v4, v5

    #@42
    .line 683
    goto :goto_0

    #@43
    .line 686
    :cond_0
    move v3, v5

    #@44
    .line 687
    invoke-virtual {v0, v1}, Landroid/icu/util/Calendar;->setTime(Ljava/util/Date;)V

    #@47
    goto :goto_0

    #@48
    .line 691
    .end local v5    # "y":I
    :cond_1
    return v4

    #@49
    .line 646
    nop

    #@4a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public getActualMinimum(I)I
    .locals 1
    .param p1, "field"    # I

    #@0
    .prologue
    .line 616
    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->getMinimum(I)I

    #@3
    move-result v0

    #@4
    return v0
.end method

.method public final getGregorianChange()Ljava/util/Date;
    .locals 4

    #@0
    .prologue
    .line 515
    new-instance v0, Ljava/util/Date;

    #@2
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@4
    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    #@7
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 892
    const-string/jumbo v0, "gregorian"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 18
    .param p1, "julianDay"    # I

    #@0
    .prologue
    .line 759
    move-object/from16 v0, p0

    #@2
    iget v14, v0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@4
    move/from16 v0, p1

    #@6
    if-lt v0, v14, :cond_1

    #@8
    .line 760
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianMonth()I

    #@b
    move-result v13

    #@c
    .line 761
    .local v13, "month":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianDayOfMonth()I

    #@f
    move-result v3

    #@10
    .line 762
    .local v3, "dayOfMonth":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianDayOfYear()I

    #@13
    move-result v4

    #@14
    .line 763
    .local v4, "dayOfYear":I
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/GregorianCalendar;->getGregorianYear()I

    #@17
    move-result v6

    #@18
    .line 792
    .local v6, "eyear":I
    :goto_0
    const/4 v14, 0x2

    #@19
    move-object/from16 v0, p0

    #@1b
    invoke-virtual {v0, v14, v13}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    #@1e
    .line 793
    const/4 v14, 0x5

    #@1f
    move-object/from16 v0, p0

    #@21
    invoke-virtual {v0, v14, v3}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    #@24
    .line 794
    const/4 v14, 0x6

    #@25
    move-object/from16 v0, p0

    #@27
    invoke-virtual {v0, v14, v4}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    #@2a
    .line 795
    const/16 v14, 0x13

    #@2c
    move-object/from16 v0, p0

    #@2e
    invoke-virtual {v0, v14, v6}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    #@31
    .line 796
    const/4 v5, 0x1

    #@32
    .line 797
    .local v5, "era":I
    const/4 v14, 0x1

    #@33
    if-ge v6, v14, :cond_0

    #@35
    .line 798
    const/4 v5, 0x0

    #@36
    .line 799
    rsub-int/lit8 v6, v6, 0x1

    #@38
    .line 801
    :cond_0
    const/4 v14, 0x0

    #@39
    move-object/from16 v0, p0

    #@3b
    invoke-virtual {v0, v14, v5}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    #@3e
    .line 802
    const/4 v14, 0x1

    #@3f
    move-object/from16 v0, p0

    #@41
    invoke-virtual {v0, v14, v6}, Landroid/icu/util/GregorianCalendar;->internalSet(II)V

    #@44
    .line 756
    return-void

    #@45
    .line 767
    .end local v3    # "dayOfMonth":I
    .end local v4    # "dayOfYear":I
    .end local v5    # "era":I
    .end local v6    # "eyear":I
    .end local v13    # "month":I
    :cond_1
    const v14, 0x1a4450

    #@48
    sub-int v14, p1, v14

    #@4a
    int-to-long v10, v14

    #@4b
    .line 768
    .local v10, "julianEpochDay":J
    const-wide/16 v14, 0x4

    #@4d
    mul-long/2addr v14, v10

    #@4e
    const-wide/16 v16, 0x5b8

    #@50
    add-long v14, v14, v16

    #@52
    const-wide/16 v16, 0x5b5

    #@54
    invoke-static/range {v14 .. v17}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    #@57
    move-result-wide v14

    #@58
    long-to-int v6, v14

    #@59
    .line 771
    .restart local v6    # "eyear":I
    add-int/lit8 v14, v6, -0x1

    #@5b
    mul-int/lit16 v14, v14, 0x16d

    #@5d
    add-int/lit8 v15, v6, -0x1

    #@5f
    const/16 v16, 0x4

    #@61
    invoke-static/range {v15 .. v16}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    #@64
    move-result v15

    #@65
    add-int/2addr v14, v15

    #@66
    int-to-long v8, v14

    #@67
    .line 772
    .local v8, "january1":J
    sub-long v14, v10, v8

    #@69
    long-to-int v4, v14

    #@6a
    .line 780
    .restart local v4    # "dayOfYear":I
    and-int/lit8 v14, v6, 0x3

    #@6c
    if-nez v14, :cond_3

    #@6e
    const/4 v7, 0x1

    #@6f
    .line 783
    .local v7, "isLeap":Z
    :goto_1
    const/4 v2, 0x0

    #@70
    .line 784
    .local v2, "correction":I
    if-eqz v7, :cond_4

    #@72
    const/16 v12, 0x3c

    #@74
    .line 785
    .local v12, "march1":I
    :goto_2
    if-lt v4, v12, :cond_2

    #@76
    .line 786
    if-eqz v7, :cond_5

    #@78
    const/4 v2, 0x1

    #@79
    .line 788
    :cond_2
    :goto_3
    add-int v14, v4, v2

    #@7b
    mul-int/lit8 v14, v14, 0xc

    #@7d
    add-int/lit8 v14, v14, 0x6

    #@7f
    div-int/lit16 v13, v14, 0x16f

    #@81
    .line 789
    .restart local v13    # "month":I
    sget-object v14, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    #@83
    aget-object v15, v14, v13

    #@85
    if-eqz v7, :cond_6

    #@87
    const/4 v14, 0x3

    #@88
    :goto_4
    aget v14, v15, v14

    #@8a
    sub-int v14, v4, v14

    #@8c
    add-int/lit8 v3, v14, 0x1

    #@8e
    .line 790
    .restart local v3    # "dayOfMonth":I
    add-int/lit8 v4, v4, 0x1

    #@90
    goto :goto_0

    #@91
    .line 780
    .end local v2    # "correction":I
    .end local v3    # "dayOfMonth":I
    .end local v7    # "isLeap":Z
    .end local v12    # "march1":I
    .end local v13    # "month":I
    :cond_3
    const/4 v7, 0x0

    #@92
    .restart local v7    # "isLeap":Z
    goto :goto_1

    #@93
    .line 784
    .restart local v2    # "correction":I
    :cond_4
    const/16 v12, 0x3b

    #@95
    .restart local v12    # "march1":I
    goto :goto_2

    #@96
    .line 786
    :cond_5
    const/4 v2, 0x2

    #@97
    goto :goto_3

    #@98
    .line 789
    .restart local v13    # "month":I
    :cond_6
    const/4 v14, 0x2

    #@99
    goto :goto_4
.end method

.method protected handleComputeJulianDay(I)I
    .locals 5
    .param p1, "bestField"    # I

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 833
    iput-boolean v1, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    #@4
    .line 835
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    #@7
    move-result v0

    #@8
    .line 839
    .local v0, "jd":I
    iget-boolean v3, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    #@a
    iget v4, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@c
    if-lt v0, v4, :cond_0

    #@e
    move v1, v2

    #@f
    :cond_0
    if-eq v3, v1, :cond_1

    #@11
    .line 840
    iput-boolean v2, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    #@13
    .line 841
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->handleComputeJulianDay(I)I

    #@16
    move-result v0

    #@17
    .line 844
    :cond_1
    return v0
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 8
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v6, 0x0

    #@2
    .line 855
    if-ltz p2, :cond_0

    #@4
    const/16 v4, 0xb

    #@6
    if-le p2, v4, :cond_1

    #@8
    .line 856
    :cond_0
    new-array v2, v5, [I

    #@a
    .line 857
    .local v2, "rem":[I
    const/16 v4, 0xc

    #@c
    invoke-static {p2, v4, v2}, Landroid/icu/util/GregorianCalendar;->floorDivide(II[I)I

    #@f
    move-result v4

    #@10
    add-int/2addr p1, v4

    #@11
    .line 858
    aget p2, v2, v6

    #@13
    .line 861
    .end local v2    # "rem":[I
    :cond_1
    rem-int/lit8 v4, p1, 0x4

    #@15
    if-nez v4, :cond_6

    #@17
    const/4 v0, 0x1

    #@18
    .line 862
    .local v0, "isLeap":Z
    :goto_0
    add-int/lit8 v3, p1, -0x1

    #@1a
    .line 863
    .local v3, "y":I
    mul-int/lit16 v4, v3, 0x16d

    #@1c
    const/4 v7, 0x4

    #@1d
    invoke-static {v3, v7}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    #@20
    move-result v7

    #@21
    add-int/2addr v4, v7

    #@22
    const v7, 0x1a444f

    #@25
    add-int v1, v4, v7

    #@27
    .line 865
    .local v1, "julianDay":I
    iget v4, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@29
    if-lt p1, v4, :cond_7

    #@2b
    move v4, v5

    #@2c
    :goto_1
    iput-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    #@2e
    .line 866
    iget-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->invertGregorian:Z

    #@30
    if-eqz v4, :cond_2

    #@32
    .line 867
    iget-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    #@34
    if-eqz v4, :cond_8

    #@36
    :goto_2
    iput-boolean v6, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    #@38
    .line 869
    :cond_2
    iget-boolean v4, p0, Landroid/icu/util/GregorianCalendar;->isGregorian:Z

    #@3a
    if-eqz v4, :cond_4

    #@3c
    .line 870
    if-eqz v0, :cond_9

    #@3e
    rem-int/lit8 v4, p1, 0x64

    #@40
    if-nez v4, :cond_3

    #@42
    rem-int/lit16 v4, p1, 0x190

    #@44
    if-nez v4, :cond_9

    #@46
    :cond_3
    const/4 v0, 0x1

    #@47
    .line 873
    :goto_3
    const/16 v4, 0x190

    #@49
    invoke-static {v3, v4}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    #@4c
    move-result v4

    #@4d
    const/16 v5, 0x64

    #@4f
    invoke-static {v3, v5}, Landroid/icu/util/GregorianCalendar;->floorDivide(II)I

    #@52
    move-result v5

    #@53
    sub-int/2addr v4, v5

    #@54
    add-int/lit8 v4, v4, 0x2

    #@56
    add-int/2addr v1, v4

    #@57
    .line 880
    :cond_4
    if-eqz p2, :cond_5

    #@59
    .line 881
    sget-object v4, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    #@5b
    aget-object v5, v4, p2

    #@5d
    if-eqz v0, :cond_a

    #@5f
    const/4 v4, 0x3

    #@60
    :goto_4
    aget v4, v5, v4

    #@62
    add-int/2addr v1, v4

    #@63
    .line 884
    :cond_5
    return v1

    #@64
    .line 861
    .end local v0    # "isLeap":Z
    .end local v1    # "julianDay":I
    .end local v3    # "y":I
    :cond_6
    const/4 v0, 0x0

    #@65
    .restart local v0    # "isLeap":Z
    goto :goto_0

    #@66
    .restart local v1    # "julianDay":I
    .restart local v3    # "y":I
    :cond_7
    move v4, v6

    #@67
    .line 865
    goto :goto_1

    #@68
    :cond_8
    move v6, v5

    #@69
    .line 867
    goto :goto_2

    #@6a
    .line 870
    :cond_9
    const/4 v0, 0x0

    #@6b
    goto :goto_3

    #@6c
    .line 881
    :cond_a
    const/4 v4, 0x2

    #@6d
    goto :goto_4
.end method

.method protected handleGetExtendedYear()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x7b2

    #@2
    const/4 v5, 0x0

    #@3
    const/16 v4, 0x13

    #@5
    const/4 v3, 0x1

    #@6
    .line 814
    invoke-virtual {p0, v4, v3}, Landroid/icu/util/GregorianCalendar;->newerField(II)I

    #@9
    move-result v2

    #@a
    if-ne v2, v4, :cond_0

    #@c
    .line 815
    invoke-virtual {p0, v4, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    #@f
    move-result v1

    #@10
    .line 825
    .local v1, "year":I
    :goto_0
    return v1

    #@11
    .line 818
    .end local v1    # "year":I
    :cond_0
    invoke-virtual {p0, v5, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    #@14
    move-result v0

    #@15
    .line 819
    .local v0, "era":I
    if-nez v0, :cond_1

    #@17
    .line 820
    invoke-virtual {p0, v3, v3}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    #@1a
    move-result v2

    #@1b
    rsub-int/lit8 v1, v2, 0x1

    #@1d
    .restart local v1    # "year":I
    goto :goto_0

    #@1e
    .line 822
    .end local v1    # "year":I
    :cond_1
    invoke-virtual {p0, v3, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(II)I

    #@21
    move-result v1

    #@22
    .restart local v1    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    .line 287
    sget-object v0, Landroid/icu/util/GregorianCalendar;->LIMITS:[[I

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
    const/4 v1, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 724
    if-ltz p2, :cond_0

    #@4
    const/16 v3, 0xb

    #@6
    if-le p2, v3, :cond_1

    #@8
    .line 725
    :cond_0
    new-array v0, v1, [I

    #@a
    .line 726
    .local v0, "rem":[I
    const/16 v3, 0xc

    #@c
    invoke-static {p2, v3, v0}, Landroid/icu/util/GregorianCalendar;->floorDivide(II[I)I

    #@f
    move-result v3

    #@10
    add-int/2addr p1, v3

    #@11
    .line 727
    aget p2, v0, v2

    #@13
    .line 730
    .end local v0    # "rem":[I
    :cond_1
    sget-object v3, Landroid/icu/util/GregorianCalendar;->MONTH_COUNT:[[I

    #@15
    aget-object v3, v3, p2

    #@17
    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->isLeapYear(I)Z

    #@1a
    move-result v4

    #@1b
    if-eqz v4, :cond_2

    #@1d
    :goto_0
    aget v1, v3, v1

    #@1f
    return v1

    #@20
    :cond_2
    move v1, v2

    #@21
    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 1
    .param p1, "eyear"    # I

    #@0
    .prologue
    .line 737
    invoke-virtual {p0, p1}, Landroid/icu/util/GregorianCalendar;->isLeapYear(I)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/16 v0, 0x16e

    #@8
    :goto_0
    return v0

    #@9
    :cond_0
    const/16 v0, 0x16d

    #@b
    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    #@0
    .prologue
    .line 549
    invoke-super {p0}, Landroid/icu/util/Calendar;->hashCode()I

    #@3
    move-result v0

    #@4
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@6
    long-to-int v1, v2

    #@7
    xor-int/2addr v0, v1

    #@8
    return v0
.end method

.method inDaylightTime()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 708
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@4
    move-result-object v1

    #@5
    invoke-virtual {v1}, Landroid/icu/util/TimeZone;->useDaylightTime()Z

    #@8
    move-result v1

    #@9
    if-nez v1, :cond_0

    #@b
    return v0

    #@c
    .line 709
    :cond_0
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->complete()V

    #@f
    .line 710
    const/16 v1, 0x10

    #@11
    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    #@14
    move-result v1

    #@15
    if-eqz v1, :cond_1

    #@17
    const/4 v0, 0x1

    #@18
    :cond_1
    return v0
.end method

.method public isEquivalentTo(Landroid/icu/util/Calendar;)Z
    .locals 6
    .param p1, "other"    # Landroid/icu/util/Calendar;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 539
    invoke-super {p0, p1}, Landroid/icu/util/Calendar;->isEquivalentTo(Landroid/icu/util/Calendar;)Z

    #@4
    move-result v1

    #@5
    if-eqz v1, :cond_0

    #@7
    .line 540
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@9
    check-cast p1, Landroid/icu/util/GregorianCalendar;

    #@b
    .end local p1    # "other":Landroid/icu/util/Calendar;
    iget-wide v4, p1, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@d
    cmp-long v1, v2, v4

    #@f
    if-nez v1, :cond_0

    #@11
    const/4 v0, 0x1

    #@12
    .line 539
    :cond_0
    return v0
.end method

.method public isLeapYear(I)Z
    .locals 3
    .param p1, "year"    # I

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 526
    iget v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@4
    if-lt p1, v2, :cond_2

    #@6
    .line 527
    rem-int/lit8 v2, p1, 0x4

    #@8
    if-nez v2, :cond_1

    #@a
    rem-int/lit8 v2, p1, 0x64

    #@c
    if-nez v2, :cond_0

    #@e
    rem-int/lit16 v2, p1, 0x190

    #@10
    if-nez v2, :cond_1

    #@12
    .line 526
    :cond_0
    :goto_0
    return v0

    #@13
    :cond_1
    move v0, v1

    #@14
    .line 527
    goto :goto_0

    #@15
    .line 528
    :cond_2
    rem-int/lit8 v2, p1, 0x4

    #@17
    if-eqz v2, :cond_0

    #@19
    move v0, v1

    #@1a
    goto :goto_0
.end method

.method public roll(II)V
    .locals 10
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    const/16 v7, 0x34

    #@2
    const/4 v9, 0x3

    #@3
    const/4 v8, 0x1

    #@4
    .line 558
    packed-switch p1, :pswitch_data_0

    #@7
    .line 605
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    #@a
    .line 606
    return-void

    #@b
    .line 568
    :pswitch_0
    invoke-virtual {p0, v9}, Landroid/icu/util/GregorianCalendar;->get(I)I

    #@e
    move-result v5

    #@f
    .line 571
    .local v5, "woy":I
    const/16 v6, 0x11

    #@11
    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->get(I)I

    #@14
    move-result v1

    #@15
    .line 572
    .local v1, "isoYear":I
    const/4 v6, 0x6

    #@16
    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    #@19
    move-result v0

    #@1a
    .line 573
    .local v0, "isoDoy":I
    const/4 v6, 0x2

    #@1b
    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    #@1e
    move-result v6

    #@1f
    if-nez v6, :cond_5

    #@21
    .line 574
    if-lt v5, v7, :cond_0

    #@23
    .line 575
    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    #@26
    move-result v6

    #@27
    add-int/2addr v0, v6

    #@28
    .line 582
    :cond_0
    :goto_0
    add-int/2addr v5, p2

    #@29
    .line 584
    if-lt v5, v8, :cond_1

    #@2b
    if-le v5, v7, :cond_4

    #@2d
    .line 591
    :cond_1
    invoke-virtual {p0, v1}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    #@30
    move-result v2

    #@31
    .line 592
    .local v2, "lastDoy":I
    sub-int v6, v2, v0

    #@33
    const/4 v7, 0x7

    #@34
    invoke-virtual {p0, v7}, Landroid/icu/util/GregorianCalendar;->internalGet(I)I

    #@37
    move-result v7

    #@38
    add-int/2addr v6, v7

    #@39
    .line 593
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getFirstDayOfWeek()I

    #@3c
    move-result v7

    #@3d
    .line 592
    sub-int/2addr v6, v7

    #@3e
    rem-int/lit8 v3, v6, 0x7

    #@40
    .line 594
    .local v3, "lastRelDow":I
    if-gez v3, :cond_2

    #@42
    add-int/lit8 v3, v3, 0x7

    #@44
    .line 595
    :cond_2
    rsub-int/lit8 v6, v3, 0x6

    #@46
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getMinimalDaysInFirstWeek()I

    #@49
    move-result v7

    #@4a
    if-lt v6, v7, :cond_3

    #@4c
    add-int/lit8 v2, v2, -0x7

    #@4e
    .line 596
    :cond_3
    add-int/lit8 v6, v3, 0x1

    #@50
    invoke-virtual {p0, v2, v6}, Landroid/icu/util/GregorianCalendar;->weekNumber(II)I

    #@53
    move-result v4

    #@54
    .line 597
    .local v4, "lastWoy":I
    add-int v6, v5, v4

    #@56
    add-int/lit8 v6, v6, -0x1

    #@58
    rem-int/2addr v6, v4

    #@59
    add-int/lit8 v5, v6, 0x1

    #@5b
    .line 599
    .end local v2    # "lastDoy":I
    .end local v3    # "lastRelDow":I
    .end local v4    # "lastWoy":I
    :cond_4
    invoke-virtual {p0, v9, v5}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@5e
    .line 600
    invoke-virtual {p0, v8, v1}, Landroid/icu/util/GregorianCalendar;->set(II)V

    #@61
    .line 601
    return-void

    #@62
    .line 578
    :cond_5
    if-ne v5, v8, :cond_0

    #@64
    .line 579
    add-int/lit8 v6, v1, -0x1

    #@66
    invoke-virtual {p0, v6}, Landroid/icu/util/GregorianCalendar;->handleGetYearLength(I)I

    #@69
    move-result v6

    #@6a
    sub-int/2addr v0, v6

    #@6b
    goto :goto_0

    #@6c
    .line 558
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public setGregorianChange(Ljava/util/Date;)V
    .locals 8
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    const v7, 0x7fffffff

    #@3
    const/high16 v6, -0x80000000

    #@5
    .line 484
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    #@8
    move-result-wide v2

    #@9
    iput-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@b
    .line 489
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@d
    const-wide v4, -0x28ec76c40e65000L

    #@12
    cmp-long v1, v2, v4

    #@14
    if-gtz v1, :cond_0

    #@16
    .line 490
    iput v6, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@18
    iput v6, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@1a
    .line 483
    :goto_0
    return-void

    #@1b
    .line 491
    :cond_0
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@1d
    const-wide v4, 0x28d47dbbf19b000L

    #@22
    cmp-long v1, v2, v4

    #@24
    if-ltz v1, :cond_1

    #@26
    .line 492
    iput v7, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@28
    iput v7, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@2a
    goto :goto_0

    #@2b
    .line 497
    :cond_1
    iget-wide v2, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutover:J

    #@2d
    const-wide/32 v4, 0x5265c00

    #@30
    invoke-static {v2, v3, v4, v5}, Landroid/icu/util/GregorianCalendar;->floorDivide(JJ)J

    #@33
    move-result-wide v2

    #@34
    long-to-int v1, v2

    #@35
    iput v1, p0, Landroid/icu/util/GregorianCalendar;->cutoverJulianDay:I

    #@37
    .line 500
    new-instance v0, Landroid/icu/util/GregorianCalendar;

    #@39
    invoke-virtual {p0}, Landroid/icu/util/GregorianCalendar;->getTimeZone()Landroid/icu/util/TimeZone;

    #@3c
    move-result-object v1

    #@3d
    invoke-direct {v0, v1}, Landroid/icu/util/GregorianCalendar;-><init>(Landroid/icu/util/TimeZone;)V

    #@40
    .line 501
    .local v0, "cal":Landroid/icu/util/GregorianCalendar;
    invoke-virtual {v0, p1}, Landroid/icu/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    #@43
    .line 502
    const/16 v1, 0x13

    #@45
    invoke-virtual {v0, v1}, Landroid/icu/util/GregorianCalendar;->get(I)I

    #@48
    move-result v1

    #@49
    iput v1, p0, Landroid/icu/util/GregorianCalendar;->gregorianCutoverYear:I

    #@4b
    goto :goto_0
.end method
