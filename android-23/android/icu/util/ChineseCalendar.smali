.class public Landroid/icu/util/ChineseCalendar;
.super Landroid/icu/util/Calendar;
.source "ChineseCalendar.java"


# static fields
.field private static final CHINA_ZONE:Landroid/icu/util/TimeZone;

.field static final CHINESE_DATE_PRECEDENCE:[[[I

.field private static final CHINESE_EPOCH_YEAR:I = -0xa4c

.field private static final LIMITS:[[I

.field private static final SYNODIC_GAP:I = 0x19

.field private static final serialVersionUID:J = 0x6579d5fcd7c0e78cL


# instance fields
.field private transient astro:Landroid/icu/impl/CalendarAstronomer;

.field private epochYear:I

.field private transient isLeapYear:Z

.field private transient newYearCache:Landroid/icu/impl/CalendarCache;

.field private transient winterSolsticeCache:Landroid/icu/impl/CalendarCache;

.field private zoneAstro:Landroid/icu/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x5

    #@1
    const/4 v8, 0x4

    #@2
    const/4 v7, 0x3

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 399
    const/16 v0, 0x17

    #@7
    new-array v0, v0, [[I

    #@9
    .line 402
    const v1, 0x14585

    #@c
    const v2, 0x14585

    #@f
    filled-new-array {v6, v6, v1, v2}, [I

    #@12
    move-result-object v1

    #@13
    aput-object v1, v0, v5

    #@15
    .line 403
    const/16 v1, 0x3c

    #@17
    const/16 v2, 0x3c

    #@19
    filled-new-array {v6, v6, v1, v2}, [I

    #@1c
    move-result-object v1

    #@1d
    aput-object v1, v0, v6

    #@1f
    .line 404
    const/16 v1, 0xb

    #@21
    const/16 v2, 0xb

    #@23
    filled-new-array {v5, v5, v1, v2}, [I

    #@26
    move-result-object v1

    #@27
    const/4 v2, 0x2

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 405
    const/16 v1, 0x32

    #@2c
    const/16 v2, 0x37

    #@2e
    filled-new-array {v6, v6, v1, v2}, [I

    #@31
    move-result-object v1

    #@32
    aput-object v1, v0, v7

    #@34
    .line 406
    new-array v1, v5, [I

    #@36
    aput-object v1, v0, v8

    #@38
    .line 407
    const/16 v1, 0x1d

    #@3a
    const/16 v2, 0x1e

    #@3c
    filled-new-array {v6, v6, v1, v2}, [I

    #@3f
    move-result-object v1

    #@40
    aput-object v1, v0, v9

    #@42
    .line 408
    const/16 v1, 0x161

    #@44
    const/16 v2, 0x181

    #@46
    filled-new-array {v6, v6, v1, v2}, [I

    #@49
    move-result-object v1

    #@4a
    const/4 v2, 0x6

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 409
    new-array v1, v5, [I

    #@4f
    const/4 v2, 0x7

    #@50
    aput-object v1, v0, v2

    #@52
    .line 410
    const/4 v1, -0x1

    #@53
    const/4 v2, -0x1

    #@54
    filled-new-array {v1, v2, v9, v9}, [I

    #@57
    move-result-object v1

    #@58
    const/16 v2, 0x8

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 411
    new-array v1, v5, [I

    #@5e
    const/16 v2, 0x9

    #@60
    aput-object v1, v0, v2

    #@62
    .line 412
    new-array v1, v5, [I

    #@64
    const/16 v2, 0xa

    #@66
    aput-object v1, v0, v2

    #@68
    .line 413
    new-array v1, v5, [I

    #@6a
    const/16 v2, 0xb

    #@6c
    aput-object v1, v0, v2

    #@6e
    .line 414
    new-array v1, v5, [I

    #@70
    const/16 v2, 0xc

    #@72
    aput-object v1, v0, v2

    #@74
    .line 415
    new-array v1, v5, [I

    #@76
    const/16 v2, 0xd

    #@78
    aput-object v1, v0, v2

    #@7a
    .line 416
    new-array v1, v5, [I

    #@7c
    const/16 v2, 0xe

    #@7e
    aput-object v1, v0, v2

    #@80
    .line 417
    new-array v1, v5, [I

    #@82
    const/16 v2, 0xf

    #@84
    aput-object v1, v0, v2

    #@86
    .line 418
    new-array v1, v5, [I

    #@88
    const/16 v2, 0x10

    #@8a
    aput-object v1, v0, v2

    #@8c
    .line 419
    const v1, -0x4c4b40

    #@8f
    const v2, -0x4c4b40

    #@92
    const v3, 0x4c4b40

    #@95
    const v4, 0x4c4b40

    #@98
    filled-new-array {v1, v2, v3, v4}, [I

    #@9b
    move-result-object v1

    #@9c
    const/16 v2, 0x11

    #@9e
    aput-object v1, v0, v2

    #@a0
    .line 420
    new-array v1, v5, [I

    #@a2
    const/16 v2, 0x12

    #@a4
    aput-object v1, v0, v2

    #@a6
    .line 421
    const v1, -0x4c4b40

    #@a9
    const v2, -0x4c4b40

    #@ac
    const v3, 0x4c4b40

    #@af
    const v4, 0x4c4b40

    #@b2
    filled-new-array {v1, v2, v3, v4}, [I

    #@b5
    move-result-object v1

    #@b6
    const/16 v2, 0x13

    #@b8
    aput-object v1, v0, v2

    #@ba
    .line 422
    new-array v1, v5, [I

    #@bc
    const/16 v2, 0x14

    #@be
    aput-object v1, v0, v2

    #@c0
    .line 423
    new-array v1, v5, [I

    #@c2
    const/16 v2, 0x15

    #@c4
    aput-object v1, v0, v2

    #@c6
    .line 424
    filled-new-array {v5, v5, v6, v6}, [I

    #@c9
    move-result-object v1

    #@ca
    const/16 v2, 0x16

    #@cc
    aput-object v1, v0, v2

    #@ce
    .line 399
    sput-object v0, Landroid/icu/util/ChineseCalendar;->LIMITS:[[I

    #@d0
    .line 487
    const/4 v0, 0x2

    #@d1
    new-array v0, v0, [[[I

    #@d3
    .line 488
    const/16 v1, 0x9

    #@d5
    new-array v1, v1, [[I

    #@d7
    .line 489
    new-array v2, v6, [I

    #@d9
    aput v9, v2, v5

    #@db
    aput-object v2, v1, v5

    #@dd
    .line 490
    const/4 v2, 0x7

    #@de
    filled-new-array {v7, v2}, [I

    #@e1
    move-result-object v2

    #@e2
    aput-object v2, v1, v6

    #@e4
    .line 491
    const/4 v2, 0x7

    #@e5
    filled-new-array {v8, v2}, [I

    #@e8
    move-result-object v2

    #@e9
    const/4 v3, 0x2

    #@ea
    aput-object v2, v1, v3

    #@ec
    .line 492
    const/16 v2, 0x8

    #@ee
    const/4 v3, 0x7

    #@ef
    filled-new-array {v2, v3}, [I

    #@f2
    move-result-object v2

    #@f3
    aput-object v2, v1, v7

    #@f5
    .line 493
    const/16 v2, 0x12

    #@f7
    filled-new-array {v7, v2}, [I

    #@fa
    move-result-object v2

    #@fb
    aput-object v2, v1, v8

    #@fd
    .line 494
    const/16 v2, 0x12

    #@ff
    filled-new-array {v8, v2}, [I

    #@102
    move-result-object v2

    #@103
    aput-object v2, v1, v9

    #@105
    .line 495
    const/16 v2, 0x8

    #@107
    const/16 v3, 0x12

    #@109
    filled-new-array {v2, v3}, [I

    #@10c
    move-result-object v2

    #@10d
    const/4 v3, 0x6

    #@10e
    aput-object v2, v1, v3

    #@110
    .line 496
    new-array v2, v6, [I

    #@112
    const/4 v3, 0x6

    #@113
    aput v3, v2, v5

    #@115
    const/4 v3, 0x7

    #@116
    aput-object v2, v1, v3

    #@118
    .line 497
    const/16 v2, 0x25

    #@11a
    const/16 v3, 0x16

    #@11c
    filled-new-array {v2, v3}, [I

    #@11f
    move-result-object v2

    #@120
    const/16 v3, 0x8

    #@122
    aput-object v2, v1, v3

    #@124
    .line 488
    aput-object v1, v0, v5

    #@126
    .line 499
    new-array v1, v9, [[I

    #@128
    .line 500
    new-array v2, v6, [I

    #@12a
    aput v7, v2, v5

    #@12c
    aput-object v2, v1, v5

    #@12e
    .line 501
    new-array v2, v6, [I

    #@130
    aput v8, v2, v5

    #@132
    aput-object v2, v1, v6

    #@134
    .line 502
    new-array v2, v6, [I

    #@136
    const/16 v3, 0x8

    #@138
    aput v3, v2, v5

    #@13a
    const/4 v3, 0x2

    #@13b
    aput-object v2, v1, v3

    #@13d
    .line 503
    const/16 v2, 0x28

    #@13f
    const/4 v3, 0x7

    #@140
    filled-new-array {v2, v3}, [I

    #@143
    move-result-object v2

    #@144
    aput-object v2, v1, v7

    #@146
    .line 504
    const/16 v2, 0x28

    #@148
    const/16 v3, 0x12

    #@14a
    filled-new-array {v2, v3}, [I

    #@14d
    move-result-object v2

    #@14e
    aput-object v2, v1, v8

    #@150
    .line 499
    aput-object v1, v0, v6

    #@152
    .line 487
    sput-object v0, Landroid/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    #@154
    .line 650
    new-instance v0, Landroid/icu/util/SimpleTimeZone;

    #@156
    const-string/jumbo v1, "CHINA_ZONE"

    #@159
    const v2, 0x1b77400

    #@15c
    invoke-direct {v0, v2, v1}, Landroid/icu/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    #@15f
    invoke-virtual {v0}, Landroid/icu/util/SimpleTimeZone;->freeze()Landroid/icu/util/TimeZone;

    #@162
    move-result-object v0

    #@163
    sput-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@165
    .line 83
    return-void
.end method

.method public constructor <init>()V
    .locals 4

    #@0
    .prologue
    .line 149
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
    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@c
    const/16 v3, -0xa4c

    #@e
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@11
    .line 148
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # I
    .param p4, "date"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v6, v5

    #@7
    move v7, v5

    #@8
    .line 177
    invoke-direct/range {v0 .. v7}, Landroid/icu/util/ChineseCalendar;-><init>(IIIIIII)V

    #@b
    .line 176
    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 9
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "isLeapMonth"    # I
    .param p5, "date"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    move-object v0, p0

    #@2
    move v1, p1

    #@3
    move v2, p2

    #@4
    move v3, p3

    #@5
    move v4, p4

    #@6
    move v5, p5

    #@7
    move v7, v6

    #@8
    move v8, v6

    #@9
    .line 236
    invoke-direct/range {v0 .. v8}, Landroid/icu/util/ChineseCalendar;-><init>(IIIIIIII)V

    #@c
    .line 234
    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLeapMonth"    # I
    .param p4, "date"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I
    .param p7, "second"    # I

    #@0
    .prologue
    .line 202
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
    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@c
    const/16 v3, -0xa4c

    #@e
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@11
    .line 208
    const/16 v0, 0xe

    #@13
    const/4 v1, 0x0

    #@14
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@17
    .line 211
    const/4 v0, 0x1

    #@18
    invoke-virtual {p0, v0, p1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@1b
    .line 212
    const/4 v0, 0x2

    #@1c
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@1f
    .line 213
    const/16 v0, 0x16

    #@21
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@24
    .line 214
    const/4 v0, 0x5

    #@25
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@28
    .line 215
    const/16 v0, 0xb

    #@2a
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@2d
    .line 216
    const/16 v0, 0xc

    #@2f
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@32
    .line 217
    const/16 v0, 0xd

    #@34
    invoke-virtual {p0, v0, p7}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@37
    .line 200
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 5
    .param p1, "era"    # I
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "isLeapMonth"    # I
    .param p5, "date"    # I
    .param p6, "hour"    # I
    .param p7, "minute"    # I
    .param p8, "second"    # I

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 262
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
    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@d
    const/16 v3, -0xa4c

    #@f
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@12
    .line 265
    const/16 v0, 0xe

    #@14
    invoke-virtual {p0, v0, v4}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@17
    .line 268
    invoke-virtual {p0, v4, p1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@1a
    .line 269
    const/4 v0, 0x1

    #@1b
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@1e
    .line 270
    const/4 v0, 0x2

    #@1f
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@22
    .line 271
    const/16 v0, 0x16

    #@24
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@27
    .line 272
    const/4 v0, 0x5

    #@28
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@2b
    .line 273
    const/16 v0, 0xb

    #@2d
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@30
    .line 274
    const/16 v0, 0xc

    #@32
    invoke-virtual {p0, v0, p7}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@35
    .line 275
    const/16 v0, 0xd

    #@37
    invoke-virtual {p0, v0, p8}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@3a
    .line 260
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 296
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@8
    const/16 v2, -0xa4c

    #@a
    invoke-direct {p0, p1, v0, v2, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@d
    .line 295
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 329
    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@2
    const/16 v1, -0xa4c

    #@4
    invoke-direct {p0, p1, p2, v1, v0}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@7
    .line 328
    return-void
.end method

.method protected constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "epochYear"    # I
    .param p4, "zoneAstroCalc"    # Landroid/icu/util/TimeZone;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 341
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 119
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@a
    .line 125
    new-instance v0, Landroid/icu/impl/CalendarCache;

    #@c
    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    #@11
    .line 131
    new-instance v0, Landroid/icu/impl/CalendarCache;

    #@13
    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    #@16
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    #@18
    .line 342
    iput p3, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    #@1a
    .line 343
    iput-object p4, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    #@1c
    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@1f
    move-result-wide v0

    #@20
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->setTimeInMillis(J)V

    #@23
    .line 340
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 3
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 307
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@6
    const/16 v2, -0xa4c

    #@8
    invoke-direct {p0, p1, v0, v2, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@b
    .line 306
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 318
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@6
    const/16 v2, -0xa4c

    #@8
    invoke-direct {p0, v0, p1, v2, v1}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@b
    .line 317
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 4
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 159
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
    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@c
    const/16 v3, -0xa4c

    #@e
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@11
    .line 160
    invoke-virtual {p0, p1}, Landroid/icu/util/ChineseCalendar;->setTime(Ljava/util/Date;)V

    #@14
    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 4
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 285
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@7
    move-result-object v1

    #@8
    sget-object v2, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@a
    const/16 v3, -0xa4c

    #@c
    invoke-direct {p0, v0, v1, v3, v2}, Landroid/icu/util/ChineseCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;ILandroid/icu/util/TimeZone;)V

    #@f
    .line 284
    return-void
.end method

.method private computeChineseFields(IIIZ)V
    .locals 17
    .param p1, "days"    # I
    .param p2, "gyear"    # I
    .param p3, "gmonth"    # I
    .param p4, "setAllFields"    # Z

    #@0
    .prologue
    .line 859
    move-object/from16 v0, p0

    #@2
    move/from16 v1, p2

    #@4
    invoke-direct {v0, v1}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    #@7
    move-result v11

    #@8
    .line 860
    .local v11, "solsticeAfter":I
    move/from16 v0, p1

    #@a
    if-ge v0, v11, :cond_6

    #@c
    .line 861
    add-int/lit8 v15, p2, -0x1

    #@e
    move-object/from16 v0, p0

    #@10
    invoke-direct {v0, v15}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    #@13
    move-result v12

    #@14
    .line 870
    .local v12, "solsticeBefore":I
    :goto_0
    add-int/lit8 v15, v12, 0x1

    #@16
    const/16 v16, 0x1

    #@18
    move-object/from16 v0, p0

    #@1a
    move/from16 v1, v16

    #@1c
    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@1f
    move-result v6

    #@20
    .line 871
    .local v6, "firstMoon":I
    add-int/lit8 v15, v11, 0x1

    #@22
    const/16 v16, 0x0

    #@24
    move-object/from16 v0, p0

    #@26
    move/from16 v1, v16

    #@28
    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@2b
    move-result v8

    #@2c
    .line 872
    .local v8, "lastMoon":I
    add-int/lit8 v15, p1, 0x1

    #@2e
    const/16 v16, 0x0

    #@30
    move-object/from16 v0, p0

    #@32
    move/from16 v1, v16

    #@34
    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@37
    move-result v13

    #@38
    .line 874
    .local v13, "thisMoon":I
    move-object/from16 v0, p0

    #@3a
    invoke-direct {v0, v6, v8}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    #@3d
    move-result v15

    #@3e
    const/16 v16, 0xc

    #@40
    move/from16 v0, v16

    #@42
    if-ne v15, v0, :cond_7

    #@44
    const/4 v15, 0x1

    #@45
    :goto_1
    move-object/from16 v0, p0

    #@47
    iput-boolean v15, v0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    #@49
    .line 876
    move-object/from16 v0, p0

    #@4b
    invoke-direct {v0, v6, v13}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    #@4e
    move-result v9

    #@4f
    .line 877
    .local v9, "month":I
    move-object/from16 v0, p0

    #@51
    iget-boolean v15, v0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    #@53
    if-eqz v15, :cond_0

    #@55
    move-object/from16 v0, p0

    #@57
    invoke-direct {v0, v6, v13}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    #@5a
    move-result v15

    #@5b
    if-eqz v15, :cond_0

    #@5d
    .line 878
    add-int/lit8 v9, v9, -0x1

    #@5f
    .line 880
    :cond_0
    const/4 v15, 0x1

    #@60
    if-ge v9, v15, :cond_1

    #@62
    .line 881
    add-int/lit8 v9, v9, 0xc

    #@64
    .line 884
    :cond_1
    move-object/from16 v0, p0

    #@66
    iget-boolean v15, v0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    #@68
    if-eqz v15, :cond_9

    #@6a
    .line 885
    move-object/from16 v0, p0

    #@6c
    invoke-direct {v0, v13}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    #@6f
    move-result v15

    #@70
    .line 884
    if-eqz v15, :cond_9

    #@72
    .line 886
    add-int/lit8 v15, v13, -0x19

    #@74
    const/16 v16, 0x0

    #@76
    move-object/from16 v0, p0

    #@78
    move/from16 v1, v16

    #@7a
    invoke-direct {v0, v15, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@7d
    move-result v15

    #@7e
    move-object/from16 v0, p0

    #@80
    invoke-direct {v0, v6, v15}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    #@83
    move-result v15

    #@84
    if-eqz v15, :cond_8

    #@86
    const/4 v7, 0x0

    #@87
    .line 888
    .local v7, "isLeapMonth":Z
    :goto_2
    add-int/lit8 v15, v9, -0x1

    #@89
    const/16 v16, 0x2

    #@8b
    move-object/from16 v0, p0

    #@8d
    move/from16 v1, v16

    #@8f
    invoke-virtual {v0, v1, v15}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@92
    .line 889
    if-eqz v7, :cond_a

    #@94
    const/4 v15, 0x1

    #@95
    :goto_3
    const/16 v16, 0x16

    #@97
    move-object/from16 v0, p0

    #@99
    move/from16 v1, v16

    #@9b
    invoke-virtual {v0, v1, v15}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@9e
    .line 891
    if-eqz p4, :cond_5

    #@a0
    .line 894
    move-object/from16 v0, p0

    #@a2
    iget v15, v0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    #@a4
    sub-int v5, p2, v15

    #@a6
    .line 895
    .local v5, "extended_year":I
    move/from16 v0, p2

    #@a8
    add-int/lit16 v3, v0, 0xa4c

    #@aa
    .line 896
    .local v3, "cycle_year":I
    const/16 v15, 0xb

    #@ac
    if-lt v9, v15, :cond_2

    #@ae
    .line 897
    const/4 v15, 0x6

    #@af
    move/from16 v0, p3

    #@b1
    if-lt v0, v15, :cond_3

    #@b3
    .line 898
    :cond_2
    add-int/lit8 v5, v5, 0x1

    #@b5
    .line 899
    add-int/lit8 v3, v3, 0x1

    #@b7
    .line 901
    :cond_3
    sub-int v15, p1, v13

    #@b9
    add-int/lit8 v4, v15, 0x1

    #@bb
    .line 903
    .local v4, "dayOfMonth":I
    const/16 v15, 0x13

    #@bd
    move-object/from16 v0, p0

    #@bf
    invoke-virtual {v0, v15, v5}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@c2
    .line 906
    const/4 v15, 0x1

    #@c3
    new-array v14, v15, [I

    #@c5
    .line 907
    .local v14, "yearOfCycle":[I
    add-int/lit8 v15, v3, -0x1

    #@c7
    const/16 v16, 0x3c

    #@c9
    move/from16 v0, v16

    #@cb
    invoke-static {v15, v0, v14}, Landroid/icu/util/ChineseCalendar;->floorDivide(II[I)I

    #@ce
    move-result v2

    #@cf
    .line 908
    .local v2, "cycle":I
    add-int/lit8 v15, v2, 0x1

    #@d1
    const/16 v16, 0x0

    #@d3
    move-object/from16 v0, p0

    #@d5
    move/from16 v1, v16

    #@d7
    invoke-virtual {v0, v1, v15}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@da
    .line 909
    const/4 v15, 0x0

    #@db
    aget v15, v14, v15

    #@dd
    add-int/lit8 v15, v15, 0x1

    #@df
    const/16 v16, 0x1

    #@e1
    move-object/from16 v0, p0

    #@e3
    move/from16 v1, v16

    #@e5
    invoke-virtual {v0, v1, v15}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@e8
    .line 911
    const/4 v15, 0x5

    #@e9
    move-object/from16 v0, p0

    #@eb
    invoke-virtual {v0, v15, v4}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@ee
    .line 917
    move-object/from16 v0, p0

    #@f0
    move/from16 v1, p2

    #@f2
    invoke-direct {v0, v1}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    #@f5
    move-result v10

    #@f6
    .line 918
    .local v10, "newYear":I
    move/from16 v0, p1

    #@f8
    if-ge v0, v10, :cond_4

    #@fa
    .line 919
    add-int/lit8 v15, p2, -0x1

    #@fc
    move-object/from16 v0, p0

    #@fe
    invoke-direct {v0, v15}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    #@101
    move-result v10

    #@102
    .line 921
    :cond_4
    sub-int v15, p1, v10

    #@104
    add-int/lit8 v15, v15, 0x1

    #@106
    const/16 v16, 0x6

    #@108
    move-object/from16 v0, p0

    #@10a
    move/from16 v1, v16

    #@10c
    invoke-virtual {v0, v1, v15}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@10f
    .line 852
    .end local v2    # "cycle":I
    .end local v3    # "cycle_year":I
    .end local v4    # "dayOfMonth":I
    .end local v5    # "extended_year":I
    .end local v10    # "newYear":I
    .end local v14    # "yearOfCycle":[I
    :cond_5
    return-void

    #@110
    .line 863
    .end local v6    # "firstMoon":I
    .end local v7    # "isLeapMonth":Z
    .end local v8    # "lastMoon":I
    .end local v9    # "month":I
    .end local v12    # "solsticeBefore":I
    .end local v13    # "thisMoon":I
    :cond_6
    move v12, v11

    #@111
    .line 864
    .restart local v12    # "solsticeBefore":I
    add-int/lit8 v15, p2, 0x1

    #@113
    move-object/from16 v0, p0

    #@115
    invoke-direct {v0, v15}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    #@118
    move-result v11

    #@119
    goto/16 :goto_0

    #@11b
    .line 874
    .restart local v6    # "firstMoon":I
    .restart local v8    # "lastMoon":I
    .restart local v13    # "thisMoon":I
    :cond_7
    const/4 v15, 0x0

    #@11c
    goto/16 :goto_1

    #@11e
    .line 886
    .restart local v9    # "month":I
    :cond_8
    const/4 v7, 0x1

    #@11f
    .restart local v7    # "isLeapMonth":Z
    goto/16 :goto_2

    #@121
    .line 884
    .end local v7    # "isLeapMonth":Z
    :cond_9
    const/4 v7, 0x0

    #@122
    .restart local v7    # "isLeapMonth":Z
    goto/16 :goto_2

    #@124
    .line 889
    :cond_a
    const/4 v15, 0x0

    #@125
    goto/16 :goto_3
.end method

.method private final daysToMillis(I)J
    .locals 6
    .param p1, "days"    # I

    #@0
    .prologue
    .line 672
    int-to-long v2, p1

    #@1
    const-wide/32 v4, 0x5265c00

    #@4
    mul-long v0, v2, v4

    #@6
    .line 673
    .local v0, "millis":J
    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    #@8
    invoke-virtual {v2, v0, v1}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@b
    move-result v2

    #@c
    int-to-long v2, v2

    #@d
    sub-long v2, v0, v2

    #@f
    return-wide v2
.end method

.method private hasNoMajorSolarTerm(I)Z
    .locals 5
    .param p1, "newMoon"    # I

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 772
    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    #@4
    move-result v0

    #@5
    .line 773
    .local v0, "mst":I
    add-int/lit8 v4, p1, 0x19

    #@7
    invoke-direct {p0, v4, v3}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@a
    move-result v2

    #@b
    .line 774
    .local v2, "nmn":I
    invoke-direct {p0, v2}, Landroid/icu/util/ChineseCalendar;->majorSolarTerm(I)I

    #@e
    move-result v1

    #@f
    .line 775
    .local v1, "mstt":I
    if-ne v0, v1, :cond_0

    #@11
    :goto_0
    return v3

    #@12
    :cond_0
    const/4 v3, 0x0

    #@13
    goto :goto_0
.end method

.method private isLeapMonthBetween(II)Z
    .locals 3
    .param p1, "newMoon1"    # I
    .param p2, "newMoon2"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 799
    invoke-direct {p0, p1, p2}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    #@4
    move-result v1

    #@5
    const/16 v2, 0x32

    #@7
    if-lt v1, v2, :cond_0

    #@9
    .line 800
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@b
    new-instance v1, Ljava/lang/StringBuilder;

    #@d
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@10
    const-string/jumbo v2, "isLeapMonthBetween("

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    .line 801
    const-string/jumbo v2, ", "

    #@1e
    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@25
    move-result-object v1

    #@26
    .line 802
    const-string/jumbo v2, "): Invalid parameters"

    #@29
    .line 800
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v1

    #@2d
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v1

    #@31
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@34
    throw v0

    #@35
    .line 805
    :cond_0
    if-lt p2, p1, :cond_1

    #@37
    .line 806
    add-int/lit8 v1, p2, -0x19

    #@39
    invoke-direct {p0, v1, v0}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@3c
    move-result v0

    #@3d
    invoke-direct {p0, p1, v0}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    #@40
    move-result v0

    #@41
    if-nez v0, :cond_2

    #@43
    .line 807
    invoke-direct {p0, p2}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    #@46
    move-result v0

    #@47
    .line 805
    :cond_1
    :goto_0
    return v0

    #@48
    .line 806
    :cond_2
    const/4 v0, 0x1

    #@49
    goto :goto_0
.end method

.method private majorSolarTerm(I)I
    .locals 6
    .param p1, "days"    # I

    #@0
    .prologue
    .line 755
    iget-object v1, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@2
    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    #@5
    move-result-wide v2

    #@6
    invoke-virtual {v1, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@9
    .line 758
    iget-object v1, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@b
    invoke-virtual {v1}, Landroid/icu/impl/CalendarAstronomer;->getSunLongitude()D

    #@e
    move-result-wide v2

    #@f
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    #@11
    mul-double/2addr v2, v4

    #@12
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    #@17
    div-double/2addr v2, v4

    #@18
    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    #@1b
    move-result-wide v2

    #@1c
    double-to-int v1, v2

    #@1d
    add-int/lit8 v1, v1, 0x2

    #@1f
    rem-int/lit8 v0, v1, 0xc

    #@21
    .line 759
    .local v0, "term":I
    const/4 v1, 0x1

    #@22
    if-ge v0, v1, :cond_0

    #@24
    .line 760
    add-int/lit8 v0, v0, 0xc

    #@26
    .line 762
    :cond_0
    return v0
.end method

.method private final millisToDays(J)I
    .locals 5
    .param p1, "millis"    # J

    #@0
    .prologue
    .line 682
    iget-object v0, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    #@2
    invoke-virtual {v0, p1, p2}, Landroid/icu/util/TimeZone;->getOffset(J)I

    #@5
    move-result v0

    #@6
    int-to-long v0, v0

    #@7
    add-long/2addr v0, p1

    #@8
    const-wide/32 v2, 0x5265c00

    #@b
    invoke-static {v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;->floorDivide(JJ)J

    #@e
    move-result-wide v0

    #@f
    long-to-int v0, v0

    #@10
    return v0
.end method

.method private newMoonNear(IZ)I
    .locals 6
    .param p1, "days"    # I
    .param p2, "after"    # Z

    #@0
    .prologue
    .line 730
    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@2
    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    #@5
    move-result-wide v4

    #@6
    invoke-virtual {v2, v4, v5}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@9
    .line 731
    iget-object v2, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@b
    sget-object v3, Landroid/icu/impl/CalendarAstronomer;->NEW_MOON:Landroid/icu/impl/CalendarAstronomer$MoonAge;

    #@d
    invoke-virtual {v2, v3, p2}, Landroid/icu/impl/CalendarAstronomer;->getMoonTime(Landroid/icu/impl/CalendarAstronomer$MoonAge;Z)J

    #@10
    move-result-wide v0

    #@11
    .line 733
    .local v0, "newMoon":J
    invoke-direct {p0, v0, v1}, Landroid/icu/util/ChineseCalendar;->millisToDays(J)I

    #@14
    move-result v2

    #@15
    return v2
.end method

.method private newYear(I)I
    .locals 11
    .param p1, "gyear"    # I

    #@0
    .prologue
    const/4 v10, 0x1

    #@1
    .line 937
    iget-object v7, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    #@3
    int-to-long v8, p1

    #@4
    invoke-virtual {v7, v8, v9}, Landroid/icu/impl/CalendarCache;->get(J)J

    #@7
    move-result-wide v0

    #@8
    .line 939
    .local v0, "cacheValue":J
    sget-wide v8, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@a
    cmp-long v7, v0, v8

    #@c
    if-nez v7, :cond_1

    #@e
    .line 941
    add-int/lit8 v7, p1, -0x1

    #@10
    invoke-direct {p0, v7}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    #@13
    move-result v6

    #@14
    .line 942
    .local v6, "solsticeBefore":I
    invoke-direct {p0, p1}, Landroid/icu/util/ChineseCalendar;->winterSolstice(I)I

    #@17
    move-result v5

    #@18
    .line 943
    .local v5, "solsticeAfter":I
    add-int/lit8 v7, v6, 0x1

    #@1a
    invoke-direct {p0, v7, v10}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@1d
    move-result v2

    #@1e
    .line 944
    .local v2, "newMoon1":I
    add-int/lit8 v7, v2, 0x19

    #@20
    invoke-direct {p0, v7, v10}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@23
    move-result v4

    #@24
    .line 945
    .local v4, "newMoon2":I
    add-int/lit8 v7, v5, 0x1

    #@26
    const/4 v8, 0x0

    #@27
    invoke-direct {p0, v7, v8}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@2a
    move-result v3

    #@2b
    .line 947
    .local v3, "newMoon11":I
    invoke-direct {p0, v2, v3}, Landroid/icu/util/ChineseCalendar;->synodicMonthsBetween(II)I

    #@2e
    move-result v7

    #@2f
    const/16 v8, 0xc

    #@31
    if-ne v7, v8, :cond_2

    #@33
    .line 948
    invoke-direct {p0, v2}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    #@36
    move-result v7

    #@37
    if-nez v7, :cond_0

    #@39
    invoke-direct {p0, v4}, Landroid/icu/util/ChineseCalendar;->hasNoMajorSolarTerm(I)Z

    #@3c
    move-result v7

    #@3d
    .line 947
    if-eqz v7, :cond_2

    #@3f
    .line 949
    :cond_0
    add-int/lit8 v7, v4, 0x19

    #@41
    invoke-direct {p0, v7, v10}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@44
    move-result v7

    #@45
    int-to-long v0, v7

    #@46
    .line 954
    :goto_0
    iget-object v7, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    #@48
    int-to-long v8, p1

    #@49
    invoke-virtual {v7, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    #@4c
    .line 956
    .end local v2    # "newMoon1":I
    .end local v3    # "newMoon11":I
    .end local v4    # "newMoon2":I
    .end local v5    # "solsticeAfter":I
    .end local v6    # "solsticeBefore":I
    :cond_1
    long-to-int v7, v0

    #@4d
    return v7

    #@4e
    .line 951
    .restart local v2    # "newMoon1":I
    .restart local v3    # "newMoon11":I
    .restart local v4    # "newMoon2":I
    .restart local v5    # "solsticeAfter":I
    .restart local v6    # "solsticeBefore":I
    :cond_2
    int-to-long v0, v4

    #@4f
    goto :goto_0
.end method

.method private offsetMonth(III)V
    .locals 7
    .param p1, "newMoon"    # I
    .param p2, "dom"    # I
    .param p3, "delta"    # I

    #@0
    .prologue
    const/16 v6, 0x14

    #@2
    .line 530
    int-to-double v2, p3

    #@3
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    #@5
    sub-double/2addr v2, v4

    #@6
    const-wide v4, 0x403d87d4abcb41d5L    # 29.530588853

    #@b
    mul-double/2addr v2, v4

    #@c
    double-to-int v1, v2

    #@d
    add-int/2addr p1, v1

    #@e
    .line 533
    const/4 v1, 0x1

    #@f
    invoke-direct {p0, p1, v1}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@12
    move-result p1

    #@13
    .line 536
    const v1, 0x253d8c    # 3.419992E-39f

    #@16
    add-int/2addr v1, p1

    #@17
    add-int/lit8 v1, v1, -0x1

    #@19
    add-int v0, v1, p2

    #@1b
    .line 540
    .local v0, "jd":I
    const/16 v1, 0x1d

    #@1d
    if-le p2, v1, :cond_1

    #@1f
    .line 541
    add-int/lit8 v1, v0, -0x1

    #@21
    invoke-virtual {p0, v6, v1}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@24
    .line 546
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->complete()V

    #@27
    .line 547
    const/4 v1, 0x5

    #@28
    invoke-virtual {p0, v1}, Landroid/icu/util/ChineseCalendar;->getActualMaximum(I)I

    #@2b
    move-result v1

    #@2c
    if-lt v1, p2, :cond_0

    #@2e
    .line 548
    invoke-virtual {p0, v6, v0}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@31
    .line 528
    :cond_0
    :goto_0
    return-void

    #@32
    .line 551
    :cond_1
    invoke-virtual {p0, v6, v0}, Landroid/icu/util/ChineseCalendar;->set(II)V

    #@35
    goto :goto_0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1037
    const/16 v0, -0xa4c

    #@2
    iput v0, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    #@4
    .line 1038
    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINA_ZONE:Landroid/icu/util/TimeZone;

    #@6
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->zoneAstro:Landroid/icu/util/TimeZone;

    #@8
    .line 1040
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@b
    .line 1043
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    #@d
    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    #@10
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@12
    .line 1044
    new-instance v0, Landroid/icu/impl/CalendarCache;

    #@14
    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    #@17
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    #@19
    .line 1045
    new-instance v0, Landroid/icu/impl/CalendarCache;

    #@1b
    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    #@1e
    iput-object v0, p0, Landroid/icu/util/ChineseCalendar;->newYearCache:Landroid/icu/impl/CalendarCache;

    #@20
    .line 1035
    return-void
.end method

.method private synodicMonthsBetween(II)I
    .locals 4
    .param p1, "day1"    # I
    .param p2, "day2"    # I

    #@0
    .prologue
    .line 744
    sub-int v0, p2, p1

    #@2
    int-to-double v0, v0

    #@3
    const-wide v2, 0x403d87d4abcb41d5L    # 29.530588853

    #@8
    div-double/2addr v0, v2

    #@9
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    #@c
    move-result-wide v0

    #@d
    long-to-int v0, v0

    #@e
    return v0
.end method

.method private winterSolstice(I)I
    .locals 10
    .param p1, "gyear"    # I

    #@0
    .prologue
    .line 699
    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    #@2
    int-to-long v8, p1

    #@3
    invoke-virtual {v6, v8, v9}, Landroid/icu/impl/CalendarCache;->get(J)J

    #@6
    move-result-wide v0

    #@7
    .line 701
    .local v0, "cacheValue":J
    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@9
    cmp-long v6, v0, v6

    #@b
    if-nez v6, :cond_0

    #@d
    .line 706
    const/16 v6, 0xb

    #@f
    invoke-virtual {p0, p1, v6}, Landroid/icu/util/ChineseCalendar;->computeGregorianMonthStart(II)I

    #@12
    move-result v6

    #@13
    add-int/lit8 v6, v6, 0x1

    #@15
    .line 707
    const v7, 0x253d8c    # 3.419992E-39f

    #@18
    .line 706
    sub-int/2addr v6, v7

    #@19
    invoke-direct {p0, v6}, Landroid/icu/util/ChineseCalendar;->daysToMillis(I)J

    #@1c
    move-result-wide v2

    #@1d
    .line 708
    .local v2, "ms":J
    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@1f
    invoke-virtual {v6, v2, v3}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@22
    .line 711
    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@24
    sget-object v7, Landroid/icu/impl/CalendarAstronomer;->WINTER_SOLSTICE:Landroid/icu/impl/CalendarAstronomer$SolarLongitude;

    #@26
    .line 712
    const/4 v8, 0x1

    #@27
    .line 711
    invoke-virtual {v6, v7, v8}, Landroid/icu/impl/CalendarAstronomer;->getSunTime(Landroid/icu/impl/CalendarAstronomer$SolarLongitude;Z)J

    #@2a
    move-result-wide v4

    #@2b
    .line 713
    .local v4, "solarLong":J
    invoke-direct {p0, v4, v5}, Landroid/icu/util/ChineseCalendar;->millisToDays(J)I

    #@2e
    move-result v6

    #@2f
    int-to-long v0, v6

    #@30
    .line 714
    iget-object v6, p0, Landroid/icu/util/ChineseCalendar;->winterSolsticeCache:Landroid/icu/impl/CalendarCache;

    #@32
    int-to-long v8, p1

    #@33
    invoke-virtual {v6, v8, v9, v0, v1}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    #@36
    .line 716
    .end local v2    # "ms":J
    .end local v4    # "solarLong":J
    :cond_0
    long-to-int v6, v0

    #@37
    return v6
.end method


# virtual methods
.method public add(II)V
    .locals 5
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    .line 560
    packed-switch p1, :pswitch_data_0

    #@3
    .line 570
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->add(II)V

    #@6
    .line 559
    :cond_0
    :goto_0
    return-void

    #@7
    .line 562
    :pswitch_0
    if-eqz p2, :cond_0

    #@9
    .line 563
    const/4 v3, 0x5

    #@a
    invoke-virtual {p0, v3}, Landroid/icu/util/ChineseCalendar;->get(I)I

    #@d
    move-result v1

    #@e
    .line 564
    .local v1, "dom":I
    const/16 v3, 0x14

    #@10
    invoke-virtual {p0, v3}, Landroid/icu/util/ChineseCalendar;->get(I)I

    #@13
    move-result v3

    #@14
    const v4, 0x253d8c    # 3.419992E-39f

    #@17
    sub-int v0, v3, v4

    #@19
    .line 565
    .local v0, "day":I
    sub-int v3, v0, v1

    #@1b
    add-int/lit8 v2, v3, 0x1

    #@1d
    .line 566
    .local v2, "moon":I
    invoke-direct {p0, v2, v1, p2}, Landroid/icu/util/ChineseCalendar;->offsetMonth(III)V

    #@20
    goto :goto_0

    #@21
    .line 560
    nop

    #@22
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected getFieldResolutionTable()[[[I
    .locals 1

    #@0
    .prologue
    .line 514
    sget-object v0, Landroid/icu/util/ChineseCalendar;->CHINESE_DATE_PRECEDENCE:[[[I

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1018
    const-string/jumbo v0, "chinese"

    #@3
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 4
    .param p1, "julianDay"    # I

    #@0
    .prologue
    .line 830
    const v0, 0x253d8c    # 3.419992E-39f

    #@3
    sub-int v0, p1, v0

    #@5
    .line 831
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->getGregorianYear()I

    #@8
    move-result v1

    #@9
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->getGregorianMonth()I

    #@c
    move-result v2

    #@d
    .line 832
    const/4 v3, 0x1

    #@e
    .line 830
    invoke-direct {p0, v0, v1, v2, v3}, Landroid/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    #@11
    .line 828
    return-void
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 11
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    .line 976
    if-ltz p2, :cond_0

    #@2
    const/16 v8, 0xb

    #@4
    if-le p2, v8, :cond_1

    #@6
    .line 977
    :cond_0
    const/4 v8, 0x1

    #@7
    new-array v5, v8, [I

    #@9
    .line 978
    .local v5, "rem":[I
    const/16 v8, 0xc

    #@b
    invoke-static {p2, v8, v5}, Landroid/icu/util/ChineseCalendar;->floorDivide(II[I)I

    #@e
    move-result v8

    #@f
    add-int/2addr p1, v8

    #@10
    .line 979
    const/4 v8, 0x0

    #@11
    aget p2, v5, v8

    #@13
    .line 982
    .end local v5    # "rem":[I
    :cond_1
    iget v8, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    #@15
    add-int/2addr v8, p1

    #@16
    add-int/lit8 v0, v8, -0x1

    #@18
    .line 983
    .local v0, "gyear":I
    invoke-direct {p0, v0}, Landroid/icu/util/ChineseCalendar;->newYear(I)I

    #@1b
    move-result v4

    #@1c
    .line 984
    .local v4, "newYear":I
    mul-int/lit8 v8, p2, 0x1d

    #@1e
    add-int/2addr v8, v4

    #@1f
    const/4 v9, 0x1

    #@20
    invoke-direct {p0, v8, v9}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@23
    move-result v3

    #@24
    .line 986
    .local v3, "newMoon":I
    const v8, 0x253d8c    # 3.419992E-39f

    #@27
    add-int v2, v3, v8

    #@29
    .line 989
    .local v2, "julianDay":I
    const/4 v8, 0x2

    #@2a
    invoke-virtual {p0, v8}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    #@2d
    move-result v7

    #@2e
    .line 990
    .local v7, "saveMonth":I
    const/16 v8, 0x16

    #@30
    invoke-virtual {p0, v8}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    #@33
    move-result v6

    #@34
    .line 993
    .local v6, "saveIsLeapMonth":I
    if-eqz p3, :cond_4

    #@36
    move v1, v6

    #@37
    .line 995
    .local v1, "isLeapMonth":I
    :goto_0
    invoke-virtual {p0, v2}, Landroid/icu/util/ChineseCalendar;->computeGregorianFields(I)V

    #@3a
    .line 998
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->getGregorianYear()I

    #@3d
    move-result v8

    #@3e
    .line 999
    invoke-virtual {p0}, Landroid/icu/util/ChineseCalendar;->getGregorianMonth()I

    #@41
    move-result v9

    #@42
    const/4 v10, 0x0

    #@43
    .line 998
    invoke-direct {p0, v3, v8, v9, v10}, Landroid/icu/util/ChineseCalendar;->computeChineseFields(IIIZ)V

    #@46
    .line 1001
    const/4 v8, 0x2

    #@47
    invoke-virtual {p0, v8}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    #@4a
    move-result v8

    #@4b
    if-ne p2, v8, :cond_2

    #@4d
    .line 1002
    const/16 v8, 0x16

    #@4f
    invoke-virtual {p0, v8}, Landroid/icu/util/ChineseCalendar;->internalGet(I)I

    #@52
    move-result v8

    #@53
    if-eq v1, v8, :cond_3

    #@55
    .line 1003
    :cond_2
    add-int/lit8 v8, v3, 0x19

    #@57
    const/4 v9, 0x1

    #@58
    invoke-direct {p0, v8, v9}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@5b
    move-result v3

    #@5c
    .line 1004
    const v8, 0x253d8c    # 3.419992E-39f

    #@5f
    add-int v2, v3, v8

    #@61
    .line 1007
    :cond_3
    const/4 v8, 0x2

    #@62
    invoke-virtual {p0, v8, v7}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@65
    .line 1008
    const/16 v8, 0x16

    #@67
    invoke-virtual {p0, v8, v6}, Landroid/icu/util/ChineseCalendar;->internalSet(II)V

    #@6a
    .line 1010
    add-int/lit8 v8, v2, -0x1

    #@6c
    return v8

    #@6d
    .line 993
    .end local v1    # "isLeapMonth":I
    :cond_4
    const/4 v1, 0x0

    #@6e
    .restart local v1    # "isLeapMonth":I
    goto :goto_0
.end method

.method protected handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "override"    # Ljava/lang/String;
    .param p3, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 481
    invoke-super {p0, p1, p2, p3}, Landroid/icu/util/Calendar;->handleGetDateFormat(Ljava/lang/String;Ljava/lang/String;Landroid/icu/util/ULocale;)Landroid/icu/text/DateFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected handleGetExtendedYear()I
    .locals 7

    #@0
    .prologue
    const/16 v6, 0x13

    #@2
    const/4 v5, 0x0

    #@3
    const/4 v4, 0x1

    #@4
    .line 444
    invoke-virtual {p0, v5, v4, v5}, Landroid/icu/util/ChineseCalendar;->newestStamp(III)I

    #@7
    move-result v2

    #@8
    invoke-virtual {p0, v6}, Landroid/icu/util/ChineseCalendar;->getStamp(I)I

    #@b
    move-result v3

    #@c
    if-gt v2, v3, :cond_0

    #@e
    .line 445
    invoke-virtual {p0, v6, v4}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    #@11
    move-result v1

    #@12
    .line 451
    .local v1, "year":I
    :goto_0
    return v1

    #@13
    .line 447
    .end local v1    # "year":I
    :cond_0
    invoke-virtual {p0, v5, v4}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    #@16
    move-result v2

    #@17
    add-int/lit8 v0, v2, -0x1

    #@19
    .line 449
    .local v0, "cycle":I
    mul-int/lit8 v2, v0, 0x3c

    #@1b
    invoke-virtual {p0, v4, v4}, Landroid/icu/util/ChineseCalendar;->internalGet(II)I

    #@1e
    move-result v3

    #@1f
    add-int/2addr v2, v3

    #@20
    iget v3, p0, Landroid/icu/util/ChineseCalendar;->epochYear:I

    #@22
    add-int/lit16 v3, v3, 0xa4c

    #@24
    sub-int v1, v2, v3

    #@26
    .restart local v1    # "year":I
    goto :goto_0
.end method

.method protected handleGetLimit(II)I
    .locals 1
    .param p1, "field"    # I
    .param p2, "limitType"    # I

    #@0
    .prologue
    .line 432
    sget-object v0, Landroid/icu/util/ChineseCalendar;->LIMITS:[[I

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
    const/4 v4, 0x1

    #@1
    .line 463
    invoke-virtual {p0, p1, p2, v4}, Landroid/icu/util/ChineseCalendar;->handleComputeMonthStart(IIZ)I

    #@4
    move-result v2

    #@5
    .line 464
    const v3, 0x253d8c    # 3.419992E-39f

    #@8
    .line 463
    sub-int/2addr v2, v3

    #@9
    add-int/lit8 v1, v2, 0x1

    #@b
    .line 465
    .local v1, "thisStart":I
    add-int/lit8 v2, v1, 0x19

    #@d
    invoke-direct {p0, v2, v4}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@10
    move-result v0

    #@11
    .line 466
    .local v0, "nextStart":I
    sub-int v2, v0, v1

    #@13
    return v2
.end method

.method public haveDefaultCentury()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #@0
    .prologue
    .line 1028
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public roll(II)V
    .locals 13
    .param p1, "field"    # I
    .param p2, "amount"    # I

    #@0
    .prologue
    const/4 v12, 0x1

    #@1
    .line 580
    packed-switch p1, :pswitch_data_0

    #@4
    .line 628
    invoke-super {p0, p1, p2}, Landroid/icu/util/Calendar;->roll(II)V

    #@7
    .line 579
    :cond_0
    :goto_0
    return-void

    #@8
    .line 582
    :pswitch_0
    if-eqz p2, :cond_0

    #@a
    .line 583
    const/4 v7, 0x5

    #@b
    invoke-virtual {p0, v7}, Landroid/icu/util/ChineseCalendar;->get(I)I

    #@e
    move-result v1

    #@f
    .line 584
    .local v1, "dom":I
    const/16 v7, 0x14

    #@11
    invoke-virtual {p0, v7}, Landroid/icu/util/ChineseCalendar;->get(I)I

    #@14
    move-result v7

    #@15
    const v8, 0x253d8c    # 3.419992E-39f

    #@18
    sub-int v0, v7, v8

    #@1a
    .line 585
    .local v0, "day":I
    sub-int v7, v0, v1

    #@1c
    add-int/lit8 v3, v7, 0x1

    #@1e
    .line 593
    .local v3, "moon":I
    const/4 v7, 0x2

    #@1f
    invoke-virtual {p0, v7}, Landroid/icu/util/ChineseCalendar;->get(I)I

    #@22
    move-result v2

    #@23
    .line 594
    .local v2, "m":I
    iget-boolean v7, p0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    #@25
    if-eqz v7, :cond_1

    #@27
    .line 595
    const/16 v7, 0x16

    #@29
    invoke-virtual {p0, v7}, Landroid/icu/util/ChineseCalendar;->get(I)I

    #@2c
    move-result v7

    #@2d
    if-ne v7, v12, :cond_3

    #@2f
    .line 596
    add-int/lit8 v2, v2, 0x1

    #@31
    .line 616
    :cond_1
    :goto_1
    iget-boolean v7, p0, Landroid/icu/util/ChineseCalendar;->isLeapYear:Z

    #@33
    if-eqz v7, :cond_4

    #@35
    const/16 v5, 0xd

    #@37
    .line 617
    .local v5, "n":I
    :goto_2
    add-int v7, v2, p2

    #@39
    rem-int v6, v7, v5

    #@3b
    .line 618
    .local v6, "newM":I
    if-gez v6, :cond_2

    #@3d
    .line 619
    add-int/2addr v6, v5

    #@3e
    .line 622
    :cond_2
    if-eq v6, v2, :cond_0

    #@40
    .line 623
    sub-int v7, v6, v2

    #@42
    invoke-direct {p0, v3, v1, v7}, Landroid/icu/util/ChineseCalendar;->offsetMonth(III)V

    #@45
    goto :goto_0

    #@46
    .line 606
    .end local v5    # "n":I
    .end local v6    # "newM":I
    :cond_3
    int-to-double v8, v2

    #@47
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    #@49
    sub-double/2addr v8, v10

    #@4a
    const-wide v10, 0x403d87d4abcb41d5L    # 29.530588853

    #@4f
    mul-double/2addr v8, v10

    #@50
    double-to-int v7, v8

    #@51
    .line 605
    sub-int v4, v3, v7

    #@53
    .line 607
    .local v4, "moon1":I
    invoke-direct {p0, v4, v12}, Landroid/icu/util/ChineseCalendar;->newMoonNear(IZ)I

    #@56
    move-result v4

    #@57
    .line 608
    invoke-direct {p0, v4, v3}, Landroid/icu/util/ChineseCalendar;->isLeapMonthBetween(II)Z

    #@5a
    move-result v7

    #@5b
    if-eqz v7, :cond_1

    #@5d
    .line 609
    add-int/lit8 v2, v2, 0x1

    #@5f
    goto :goto_1

    #@60
    .line 616
    .end local v4    # "moon1":I
    :cond_4
    const/16 v5, 0xc

    #@62
    .restart local v5    # "n":I
    goto :goto_2

    #@63
    .line 580
    nop

    #@64
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method
