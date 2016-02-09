.class public Landroid/icu/util/IslamicCalendar;
.super Landroid/icu/util/Calendar;
.source "IslamicCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/util/IslamicCalendar$CalculationType;
    }
.end annotation


# static fields
.field private static final ASTRONOMICAL_EPOC:J = 0x1dbb17L

.field private static final CIVIL_EPOC:J = 0x1dbb18L

.field public static final DHU_AL_HIJJAH:I = 0xb

.field public static final DHU_AL_QIDAH:I = 0xa

.field private static final HIJRA_MILLIS:J = -0x26ac5419b000L

.field public static final JUMADA_1:I = 0x4

.field public static final JUMADA_2:I = 0x5

.field private static final LIMITS:[[I

.field public static final MUHARRAM:I = 0x0

.field public static final RABI_1:I = 0x2

.field public static final RABI_2:I = 0x3

.field public static final RAJAB:I = 0x6

.field public static final RAMADAN:I = 0x8

.field public static final SAFAR:I = 0x1

.field public static final SHABAN:I = 0x7

.field public static final SHAWWAL:I = 0x9

.field private static final UMALQURA_MONTHLENGTH:[I

.field private static final UMALQURA_YEAR_END:I = 0x640

.field private static final UMALQURA_YEAR_START:I = 0x514

.field private static final UMALQURA_YEAR_START_ESTIMATE_FIX:[B

.field private static astro:Landroid/icu/impl/CalendarAstronomer; = null

.field private static cache:Landroid/icu/impl/CalendarCache; = null

.field private static final serialVersionUID:J = -0x56c86ac454dd7c0dL


# instance fields
.field private cType:Landroid/icu/util/IslamicCalendar$CalculationType;

.field private civil:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    #@0
    .prologue
    const/16 v7, 0xb

    #@2
    const/4 v6, 0x5

    #@3
    const v5, 0x4c4b40

    #@6
    const/4 v4, 0x1

    #@7
    const/4 v3, 0x0

    #@8
    .line 370
    const/16 v0, 0x16

    #@a
    new-array v0, v0, [[I

    #@c
    .line 373
    filled-new-array {v3, v3, v3, v3}, [I

    #@f
    move-result-object v1

    #@10
    aput-object v1, v0, v3

    #@12
    .line 374
    filled-new-array {v4, v4, v5, v5}, [I

    #@15
    move-result-object v1

    #@16
    aput-object v1, v0, v4

    #@18
    .line 375
    filled-new-array {v3, v3, v7, v7}, [I

    #@1b
    move-result-object v1

    #@1c
    const/4 v2, 0x2

    #@1d
    aput-object v1, v0, v2

    #@1f
    .line 376
    const/16 v1, 0x32

    #@21
    const/16 v2, 0x33

    #@23
    filled-new-array {v4, v4, v1, v2}, [I

    #@26
    move-result-object v1

    #@27
    const/4 v2, 0x3

    #@28
    aput-object v1, v0, v2

    #@2a
    .line 377
    new-array v1, v3, [I

    #@2c
    const/4 v2, 0x4

    #@2d
    aput-object v1, v0, v2

    #@2f
    .line 378
    const/16 v1, 0x1d

    #@31
    const/16 v2, 0x1e

    #@33
    filled-new-array {v4, v4, v1, v2}, [I

    #@36
    move-result-object v1

    #@37
    aput-object v1, v0, v6

    #@39
    .line 379
    const/16 v1, 0x162

    #@3b
    const/16 v2, 0x163

    #@3d
    filled-new-array {v4, v4, v1, v2}, [I

    #@40
    move-result-object v1

    #@41
    const/4 v2, 0x6

    #@42
    aput-object v1, v0, v2

    #@44
    .line 380
    new-array v1, v3, [I

    #@46
    const/4 v2, 0x7

    #@47
    aput-object v1, v0, v2

    #@49
    .line 381
    const/4 v1, -0x1

    #@4a
    const/4 v2, -0x1

    #@4b
    filled-new-array {v1, v2, v6, v6}, [I

    #@4e
    move-result-object v1

    #@4f
    const/16 v2, 0x8

    #@51
    aput-object v1, v0, v2

    #@53
    .line 382
    new-array v1, v3, [I

    #@55
    const/16 v2, 0x9

    #@57
    aput-object v1, v0, v2

    #@59
    .line 383
    new-array v1, v3, [I

    #@5b
    const/16 v2, 0xa

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 384
    new-array v1, v3, [I

    #@61
    aput-object v1, v0, v7

    #@63
    .line 385
    new-array v1, v3, [I

    #@65
    const/16 v2, 0xc

    #@67
    aput-object v1, v0, v2

    #@69
    .line 386
    new-array v1, v3, [I

    #@6b
    const/16 v2, 0xd

    #@6d
    aput-object v1, v0, v2

    #@6f
    .line 387
    new-array v1, v3, [I

    #@71
    const/16 v2, 0xe

    #@73
    aput-object v1, v0, v2

    #@75
    .line 388
    new-array v1, v3, [I

    #@77
    const/16 v2, 0xf

    #@79
    aput-object v1, v0, v2

    #@7b
    .line 389
    new-array v1, v3, [I

    #@7d
    const/16 v2, 0x10

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 390
    filled-new-array {v4, v4, v5, v5}, [I

    #@84
    move-result-object v1

    #@85
    const/16 v2, 0x11

    #@87
    aput-object v1, v0, v2

    #@89
    .line 391
    new-array v1, v3, [I

    #@8b
    const/16 v2, 0x12

    #@8d
    aput-object v1, v0, v2

    #@8f
    .line 392
    filled-new-array {v4, v4, v5, v5}, [I

    #@92
    move-result-object v1

    #@93
    const/16 v2, 0x13

    #@95
    aput-object v1, v0, v2

    #@97
    .line 393
    new-array v1, v3, [I

    #@99
    const/16 v2, 0x14

    #@9b
    aput-object v1, v0, v2

    #@9d
    .line 394
    new-array v1, v3, [I

    #@9f
    const/16 v2, 0x15

    #@a1
    aput-object v1, v0, v2

    #@a3
    .line 370
    sput-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    #@a5
    .line 400
    const/16 v0, 0x12d

    #@a7
    new-array v0, v0, [I

    #@a9
    fill-array-data v0, :array_0

    #@ac
    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    #@ae
    .line 519
    const/16 v0, 0x12d

    #@b0
    new-array v0, v0, [B

    #@b2
    fill-array-data v0, :array_1

    #@b5
    sput-object v0, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    #@b7
    .line 704
    new-instance v0, Landroid/icu/impl/CalendarAstronomer;

    #@b9
    invoke-direct {v0}, Landroid/icu/impl/CalendarAstronomer;-><init>()V

    #@bc
    sput-object v0, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@be
    .line 706
    new-instance v0, Landroid/icu/impl/CalendarCache;

    #@c0
    invoke-direct {v0}, Landroid/icu/impl/CalendarCache;-><init>()V

    #@c3
    sput-object v0, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    #@c5
    .line 88
    return-void

    #@c6
    .line 400
    :array_0
    .array-data 4
        0xaaa
        0xd54
        0xec9
        0x6d4
        0x6ea
        0x36c
        0xaad
        0x555
        0x6a9
        0x792
        0xba9
        0x5d4
        0xada
        0x55c
        0xd2d
        0x695
        0x74a
        0xb54
        0xb6a
        0x5ad
        0x4ae
        0xa4f
        0x517
        0x68b
        0x6a5
        0xad5
        0x2d6
        0x95b
        0x49d
        0xa4d
        0xd26
        0xd95
        0x5ac
        0x9b6
        0x2ba
        0xa5b
        0x52b
        0xa95
        0x6ca
        0xae9
        0x2f4
        0x976
        0x2b6
        0x956
        0xaca
        0xba4
        0xbd2
        0x5d9
        0x2dc
        0x96d
        0x54d
        0xaa5
        0xb52
        0xba5
        0x5b4
        0x9b6
        0x557
        0x297
        0x54b
        0x6a3
        0x752
        0xb65
        0x56a
        0xaab
        0x52b
        0xc95
        0xd4a
        0xda5
        0x5ca
        0xad6
        0x957
        0x4ab
        0x94b
        0xaa5
        0xb52
        0xb6a
        0x575
        0x276
        0x8b7
        0x45b
        0x555
        0x5a9
        0x5b4
        0x9da
        0x4dd
        0x26e
        0x936
        0xaaa
        0xd54
        0xdb2
        0x5d5
        0x2da
        0x95b
        0x4ab
        0xa55
        0xb49
        0xb64
        0xb71
        0x5b4
        0xab5
        0xa55
        0xd25
        0xe92
        0xec9
        0x6d4
        0xae9
        0x96b
        0x4ab
        0xa93
        0xd49
        0xda4
        0xdb2
        0xab9
        0x4ba
        0xa5b
        0x52b
        0xa95
        0xb2a
        0xb55
        0x55c
        0x4bd
        0x23d
        0x91d
        0xa95
        0xb4a
        0xb5a
        0x56d
        0x2b6
        0x93b
        0x49b
        0x655
        0x6a9
        0x754
        0xb6a
        0x56c
        0xaad
        0x555
        0xb29
        0xb92
        0xba9
        0x5d4
        0xada
        0x55a
        0xaab
        0x595
        0x749
        0x764
        0xbaa
        0x5b5
        0x2b6
        0xa56
        0xe4d
        0xb25
        0xb52
        0xb6a
        0x5ad
        0x2ae
        0x92f
        0x497
        0x64b
        0x6a5
        0x6ac
        0xad6
        0x55d
        0x49d
        0xa4d
        0xd16
        0xd95
        0x5aa
        0x5b5
        0x2da
        0x95b
        0x4ad
        0x595
        0x6ca
        0x6e4
        0xaea
        0x4f5
        0x2b6
        0x956
        0xaaa
        0xb54
        0xbd2
        0x5d9
        0x2ea
        0x96d
        0x4ad
        0xa95
        0xb4a
        0xba5
        0x5b2
        0x9b5
        0x4d6
        0xa97
        0x547
        0x693
        0x749
        0xb55
        0x56a
        0xa6b
        0x52b
        0xa8b
        0xd46
        0xda3
        0x5ca
        0xad6
        0x4db
        0x26b
        0x94b
        0xaa5
        0xb52
        0xb69
        0x575
        0x176
        0x8b7
        0x25b
        0x52b
        0x565
        0x5b4
        0x9da
        0x4ed
        0x16d
        0x8b6
        0xaa6
        0xd52
        0xda9
        0x5d4
        0xada
        0x95b
        0x4ab
        0x653
        0x729
        0x762
        0xba9
        0x5b2
        0xab5
        0x555
        0xb25
        0xd92
        0xec9
        0x6d2
        0xae9
        0x56b
        0x4ab
        0xa55
        0xd29
        0xd54
        0xdaa
        0x9b5
        0x4ba
        0xa3b
        0x49b
        0xa4d
        0xaaa
        0xad5
        0x2da
        0x95d
        0x45e
        0xa2e
        0xc9a
        0xd55
        0x6b2
        0x6b9
        0x4ba
        0xa5d
        0x52d
        0xa95
        0xb52
        0xba8
        0xbb4
        0x5b9
        0x2da
        0x95a
        0xb4a
        0xda4
        0xed1
        0x6e8
        0xb6a
        0x56d
        0x535
        0x695
        0xd4a
        0xda8
        0xdd4
        0x6da
        0x55b
        0x29d
        0x62b
        0xb15
        0xb4a
        0xb95
        0x5aa
        0xaae
        0x92e
        0xc8f
        0x527
        0x695
        0x6aa
        0xad6
        0x55d
        0x29d
    .end array-data

    #@324
    .line 519
    :array_1
    .array-data 1
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        -0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        -0x1t
        -0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        -0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 192
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
    invoke-direct {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@d
    .line 190
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
    .line 285
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
    .line 715
    iput-boolean v2, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@10
    .line 723
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@12
    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@14
    .line 286
    invoke-virtual {p0, v2, p1}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@17
    .line 287
    const/4 v0, 0x2

    #@18
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@1b
    .line 288
    const/4 v0, 0x5

    #@1c
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@1f
    .line 283
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
    .line 311
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
    .line 715
    iput-boolean v2, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@10
    .line 723
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@12
    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@14
    .line 312
    invoke-virtual {p0, v2, p1}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@17
    .line 313
    const/4 v0, 0x2

    #@18
    invoke-virtual {p0, v0, p2}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@1b
    .line 314
    const/4 v0, 0x5

    #@1c
    invoke-virtual {p0, v0, p3}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@1f
    .line 315
    const/16 v0, 0xb

    #@21
    invoke-virtual {p0, v0, p4}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@24
    .line 316
    const/16 v0, 0xc

    #@26
    invoke-virtual {p0, v0, p5}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@29
    .line 317
    const/16 v0, 0xd

    #@2b
    invoke-virtual {p0, v0, p6}, Landroid/icu/util/IslamicCalendar;->set(II)V

    #@2e
    .line 309
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;

    #@0
    .prologue
    .line 204
    sget-object v0, Landroid/icu/util/ULocale$Category;->FORMAT:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@9
    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Landroid/icu/util/Calendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@3
    .line 715
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@6
    .line 723
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@8
    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@a
    .line 255
    invoke-direct {p0, p2}, Landroid/icu/util/IslamicCalendar;->setCalcTypeForLocale(Landroid/icu/util/ULocale;)V

    #@d
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@10
    move-result-wide v0

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    #@14
    .line 252
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V
    .locals 1
    .param p1, "zone"    # Landroid/icu/util/TimeZone;
    .param p2, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 241
    invoke-static {p2}, Landroid/icu/util/ULocale;->forLocale(Ljava/util/Locale;)Landroid/icu/util/ULocale;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 239
    return-void
.end method

.method public constructor <init>(Landroid/icu/util/ULocale;)V
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 228
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Landroid/icu/util/ULocale;)V

    #@7
    .line 226
    return-void
.end method

.method public constructor <init>(Ljava/util/Date;)V
    .locals 2
    .param p1, "date"    # Ljava/util/Date;

    #@0
    .prologue
    .line 268
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
    .line 715
    const/4 v0, 0x1

    #@e
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@10
    .line 723
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@12
    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@14
    .line 269
    invoke-virtual {p0, p1}, Landroid/icu/util/IslamicCalendar;->setTime(Ljava/util/Date;)V

    #@17
    .line 267
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1
    .param p1, "aLocale"    # Ljava/util/Locale;

    #@0
    .prologue
    .line 216
    invoke-static {}, Landroid/icu/util/TimeZone;->getDefault()Landroid/icu/util/TimeZone;

    #@3
    move-result-object v0

    #@4
    invoke-direct {p0, v0, p1}, Landroid/icu/util/IslamicCalendar;-><init>(Landroid/icu/util/TimeZone;Ljava/util/Locale;)V

    #@7
    .line 214
    return-void
.end method

.method private static final civilLeapYear(I)Z
    .locals 2
    .param p0, "year"    # I

    #@0
    .prologue
    const/16 v1, 0xb

    #@2
    .line 576
    mul-int/lit8 v0, p0, 0xb

    #@4
    add-int/lit8 v0, v0, 0xe

    #@6
    rem-int/lit8 v0, v0, 0x1e

    #@8
    if-ge v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method private monthStart(II)J
    .locals 12
    .param p1, "year"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 611
    div-int/lit8 v5, p2, 0xc

    #@2
    add-int v4, p1, v5

    #@4
    .line 612
    .local v4, "realYear":I
    rem-int/lit8 v1, p2, 0xc

    #@6
    .line 613
    .local v1, "realMonth":I
    const-wide/16 v2, 0x0

    #@8
    .line 614
    .local v2, "ms":J
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@a
    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@c
    if-eq v5, v6, :cond_0

    #@e
    .line 615
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@10
    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@12
    if-ne v5, v6, :cond_2

    #@14
    .line 617
    :cond_0
    int-to-double v6, v1

    #@15
    const-wide v8, 0x403d800000000000L    # 29.5

    #@1a
    mul-double/2addr v6, v8

    #@1b
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    #@1e
    move-result-wide v6

    #@1f
    double-to-long v6, v6

    #@20
    .line 618
    add-int/lit8 v5, v4, -0x1

    #@22
    mul-int/lit16 v5, v5, 0x162

    #@24
    int-to-long v8, v5

    #@25
    .line 617
    add-long/2addr v6, v8

    #@26
    .line 618
    mul-int/lit8 v5, v4, 0xb

    #@28
    add-int/lit8 v5, v5, 0x3

    #@2a
    int-to-double v8, v5

    #@2b
    const-wide/high16 v10, 0x403e000000000000L    # 30.0

    #@2d
    div-double/2addr v8, v10

    #@2e
    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    #@31
    move-result-wide v8

    #@32
    double-to-long v8, v8

    #@33
    .line 617
    add-long v2, v6, v8

    #@35
    .line 628
    :cond_1
    :goto_0
    return-wide v2

    #@36
    .line 616
    :cond_2
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@38
    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@3a
    if-ne v5, v6, :cond_3

    #@3c
    const/16 v5, 0x514

    #@3e
    if-lt p1, v5, :cond_0

    #@40
    .line 619
    :cond_3
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@42
    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@44
    if-ne v5, v6, :cond_4

    #@46
    .line 620
    add-int/lit8 v5, v4, -0x1

    #@48
    mul-int/lit8 v5, v5, 0xc

    #@4a
    add-int/2addr v5, v1

    #@4b
    int-to-long v6, v5

    #@4c
    invoke-static {v6, v7}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@4f
    move-result-wide v2

    #@50
    goto :goto_0

    #@51
    .line 621
    :cond_4
    iget-object v5, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@53
    sget-object v6, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@55
    if-ne v5, v6, :cond_1

    #@57
    .line 622
    invoke-direct {p0, p1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    #@5a
    move-result-wide v2

    #@5b
    .line 623
    const/4 v0, 0x0

    #@5c
    .local v0, "i":I
    :goto_1
    if-ge v0, p2, :cond_1

    #@5e
    .line 624
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    #@61
    move-result v5

    #@62
    int-to-long v6, v5

    #@63
    add-long/2addr v2, v6

    #@64
    .line 623
    add-int/lit8 v0, v0, 0x1

    #@66
    goto :goto_1
.end method

.method static final moonAge(J)D
    .locals 8
    .param p0, "time"    # J

    #@0
    .prologue
    const-wide v6, 0x4066800000000000L    # 180.0

    #@5
    .line 684
    const-wide/16 v0, 0x0

    #@7
    .line 686
    .local v0, "age":D
    sget-object v3, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@9
    monitor-enter v3

    #@a
    .line 687
    :try_start_0
    sget-object v2, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@c
    invoke-virtual {v2, p0, p1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    #@f
    .line 688
    sget-object v2, Landroid/icu/util/IslamicCalendar;->astro:Landroid/icu/impl/CalendarAstronomer;

    #@11
    invoke-virtual {v2}, Landroid/icu/impl/CalendarAstronomer;->getMoonAge()D
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@14
    move-result-wide v0

    #@15
    monitor-exit v3

    #@16
    .line 691
    mul-double v2, v0, v6

    #@18
    const-wide v4, 0x400921fb54442d18L    # Math.PI

    #@1d
    div-double v0, v2, v4

    #@1f
    .line 692
    cmpl-double v2, v0, v6

    #@21
    if-lez v2, :cond_0

    #@23
    .line 693
    const-wide v2, 0x4076800000000000L    # 360.0

    #@28
    sub-double/2addr v0, v2

    #@29
    .line 696
    :cond_0
    return-wide v0

    #@2a
    .line 686
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    .line 1011
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@3
    .line 1013
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@5
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@7
    if-eq v0, v1, :cond_0

    #@9
    .line 1014
    return-void

    #@a
    .line 1019
    :cond_0
    iget-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@c
    if-nez v0, :cond_1

    #@e
    .line 1020
    sget-object v0, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@10
    iput-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@12
    .line 1009
    :cond_1
    return-void
.end method

.method private setCalcTypeForLocale(Landroid/icu/util/ULocale;)V
    .locals 2
    .param p1, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    .line 981
    invoke-static {p1}, Landroid/icu/impl/CalendarUtil;->getCalendarType(Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    .line 982
    .local v0, "localeCalType":Ljava/lang/String;
    const-string/jumbo v1, "islamic-civil"

    #@7
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@a
    move-result v1

    #@b
    if-eqz v1, :cond_0

    #@d
    .line 983
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@f
    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    #@12
    .line 980
    :goto_0
    return-void

    #@13
    .line 984
    :cond_0
    const-string/jumbo v1, "islamic-umalqura"

    #@16
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@19
    move-result v1

    #@1a
    if-eqz v1, :cond_1

    #@1c
    .line 985
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@1e
    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    #@21
    goto :goto_0

    #@22
    .line 986
    :cond_1
    const-string/jumbo v1, "islamic-tbla"

    #@25
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@28
    move-result v1

    #@29
    if-eqz v1, :cond_2

    #@2b
    .line 987
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2d
    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    #@30
    goto :goto_0

    #@31
    .line 988
    :cond_2
    const-string/jumbo v1, "islamic"

    #@34
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@37
    move-result v1

    #@38
    if-eqz v1, :cond_3

    #@3a
    .line 989
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@3c
    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    #@3f
    goto :goto_0

    #@40
    .line 991
    :cond_3
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@42
    invoke-virtual {p0, v1}, Landroid/icu/util/IslamicCalendar;->setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V

    #@45
    goto :goto_0
.end method

.method private static final trueMonthStart(J)J
    .locals 10
    .param p0, "month"    # J

    #@0
    .prologue
    .line 641
    sget-object v6, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    #@2
    invoke-virtual {v6, p0, p1}, Landroid/icu/impl/CalendarCache;->get(J)J

    #@5
    move-result-wide v4

    #@6
    .line 643
    .local v4, "start":J
    sget-wide v6, Landroid/icu/impl/CalendarCache;->EMPTY:J

    #@8
    cmp-long v6, v4, v6

    #@a
    if-nez v6, :cond_2

    #@c
    .line 647
    long-to-double v6, p0

    #@d
    const-wide v8, 0x403d87d4abcb41d5L    # 29.530588853

    #@12
    mul-double/2addr v6, v8

    #@13
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@16
    move-result-wide v6

    #@17
    double-to-long v6, v6

    #@18
    const-wide/32 v8, 0x5265c00

    #@1b
    mul-long/2addr v6, v8

    #@1c
    .line 646
    const-wide v8, -0x26ac5419b000L

    #@21
    add-long v2, v8, v6

    #@23
    .line 649
    .local v2, "origin":J
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    #@26
    move-result-wide v0

    #@27
    .line 651
    .local v0, "age":D
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    #@2a
    move-result-wide v6

    #@2b
    const-wide/16 v8, 0x0

    #@2d
    cmpl-double v6, v6, v8

    #@2f
    if-ltz v6, :cond_3

    #@31
    .line 654
    :cond_0
    const-wide/32 v6, 0x5265c00

    #@34
    sub-long/2addr v2, v6

    #@35
    .line 655
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    #@38
    move-result-wide v0

    #@39
    .line 656
    const-wide/16 v6, 0x0

    #@3b
    cmpl-double v6, v0, v6

    #@3d
    if-gez v6, :cond_0

    #@3f
    .line 666
    :cond_1
    const-wide v6, -0x26ac5419b000L

    #@44
    sub-long v6, v2, v6

    #@46
    const-wide/32 v8, 0x5265c00

    #@49
    div-long/2addr v6, v8

    #@4a
    const-wide/16 v8, 0x1

    #@4c
    add-long v4, v6, v8

    #@4e
    .line 668
    sget-object v6, Landroid/icu/util/IslamicCalendar;->cache:Landroid/icu/impl/CalendarCache;

    #@50
    invoke-virtual {v6, p0, p1, v4, v5}, Landroid/icu/impl/CalendarCache;->put(JJ)V

    #@53
    .line 670
    .end local v0    # "age":D
    .end local v2    # "origin":J
    :cond_2
    return-wide v4

    #@54
    .line 661
    .restart local v0    # "age":D
    .restart local v2    # "origin":J
    :cond_3
    :goto_0
    const-wide/32 v6, 0x5265c00

    #@57
    add-long/2addr v2, v6

    #@58
    .line 662
    invoke-static {v2, v3}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    #@5b
    move-result-wide v0

    #@5c
    .line 663
    const-wide/16 v6, 0x0

    #@5e
    cmpg-double v6, v0, v6

    #@60
    if-gez v6, :cond_1

    #@62
    goto :goto_0
.end method

.method private yearStart(I)J
    .locals 10
    .param p1, "year"    # I

    #@0
    .prologue
    .line 584
    const-wide/16 v2, 0x0

    #@2
    .line 585
    .local v2, "ys":J
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@4
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@6
    if-eq v1, v4, :cond_0

    #@8
    .line 586
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@a
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@c
    if-ne v1, v4, :cond_2

    #@e
    .line 588
    :cond_0
    add-int/lit8 v1, p1, -0x1

    #@10
    mul-int/lit16 v1, v1, 0x162

    #@12
    int-to-long v4, v1

    #@13
    mul-int/lit8 v1, p1, 0xb

    #@15
    add-int/lit8 v1, v1, 0x3

    #@17
    int-to-double v6, v1

    #@18
    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    #@1a
    div-double/2addr v6, v8

    #@1b
    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    #@1e
    move-result-wide v6

    #@1f
    double-to-long v6, v6

    #@20
    add-long v2, v4, v6

    #@22
    .line 598
    :cond_1
    :goto_0
    return-wide v2

    #@23
    .line 587
    :cond_2
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@25
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@27
    if-ne v1, v4, :cond_3

    #@29
    const/16 v1, 0x514

    #@2b
    if-lt p1, v1, :cond_0

    #@2d
    const/16 v1, 0x640

    #@2f
    if-gt p1, v1, :cond_0

    #@31
    .line 589
    :cond_3
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@33
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@35
    if-ne v1, v4, :cond_4

    #@37
    .line 590
    add-int/lit8 v1, p1, -0x1

    #@39
    mul-int/lit8 v1, v1, 0xc

    #@3b
    int-to-long v4, v1

    #@3c
    invoke-static {v4, v5}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@3f
    move-result-wide v2

    #@40
    goto :goto_0

    #@41
    .line 591
    :cond_4
    iget-object v1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@43
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@45
    if-ne v1, v4, :cond_1

    #@47
    .line 592
    add-int/lit16 p1, p1, -0x514

    #@49
    .line 594
    int-to-double v4, p1

    #@4a
    const-wide v6, 0x407625e00d1b7176L    # 354.3672

    #@4f
    mul-double/2addr v4, v6

    #@50
    const-wide v6, 0x411c188833333333L    # 460322.05

    #@55
    add-double/2addr v4, v6

    #@56
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@58
    add-double/2addr v4, v6

    #@59
    double-to-int v0, v4

    #@5a
    .line 596
    .local v0, "yrStartLinearEstimate":I
    sget-object v1, Landroid/icu/util/IslamicCalendar;->UMALQURA_YEAR_START_ESTIMATE_FIX:[B

    #@5c
    aget-byte v1, v1, p1

    #@5e
    add-int/2addr v1, v0

    #@5f
    int-to-long v2, v1

    #@60
    goto :goto_0
.end method


# virtual methods
.method public getCalculationType()Landroid/icu/util/IslamicCalendar$CalculationType;
    .locals 1

    #@0
    .prologue
    .line 974
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 1000
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 1004
    const-string/jumbo v0, "islamic"

    #@7
    return-object v0

    #@8
    .line 1006
    :cond_0
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@a
    invoke-virtual {v0}, Landroid/icu/util/IslamicCalendar$CalculationType;->bcpType()Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method protected handleComputeFields(I)V
    .locals 24
    .param p1, "julianDay"    # I

    #@0
    .prologue
    .line 832
    const/16 v19, 0x0

    #@2
    .local v19, "year":I
    const/4 v11, 0x0

    #@3
    .local v11, "month":I
    const/4 v6, 0x0

    #@4
    .local v6, "dayOfMonth":I
    const/4 v7, 0x0

    #@5
    .line 834
    .local v7, "dayOfYear":I
    move/from16 v0, p1

    #@7
    int-to-long v0, v0

    #@8
    move-wide/from16 v20, v0

    #@a
    const-wide/32 v22, 0x1dbb18

    #@d
    sub-long v8, v20, v22

    #@f
    .line 836
    .local v8, "days":J
    move-object/from16 v0, p0

    #@11
    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@13
    move-object/from16 v20, v0

    #@15
    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@17
    move-object/from16 v0, v20

    #@19
    move-object/from16 v1, v21

    #@1b
    if-eq v0, v1, :cond_0

    #@1d
    move-object/from16 v0, p0

    #@1f
    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@21
    move-object/from16 v20, v0

    #@23
    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@25
    move-object/from16 v0, v20

    #@27
    move-object/from16 v1, v21

    #@29
    if-ne v0, v1, :cond_3

    #@2b
    .line 837
    :cond_0
    move-object/from16 v0, p0

    #@2d
    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2f
    move-object/from16 v20, v0

    #@31
    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@33
    move-object/from16 v0, v20

    #@35
    move-object/from16 v1, v21

    #@37
    if-ne v0, v1, :cond_1

    #@39
    .line 838
    move/from16 v0, p1

    #@3b
    int-to-long v0, v0

    #@3c
    move-wide/from16 v20, v0

    #@3e
    const-wide/32 v22, 0x1dbb17

    #@41
    sub-long v8, v20, v22

    #@43
    .line 841
    :cond_1
    const-wide/16 v20, 0x1e

    #@45
    mul-long v20, v20, v8

    #@47
    const-wide/16 v22, 0x2996

    #@49
    add-long v20, v20, v22

    #@4b
    move-wide/from16 v0, v20

    #@4d
    long-to-double v0, v0

    #@4e
    move-wide/from16 v20, v0

    #@50
    const-wide v22, 0x40c4c38000000000L    # 10631.0

    #@55
    div-double v20, v20, v22

    #@57
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@5a
    move-result-wide v20

    #@5b
    move-wide/from16 v0, v20

    #@5d
    double-to-int v0, v0

    #@5e
    move/from16 v19, v0

    #@60
    .line 842
    const-wide/16 v20, 0x1d

    #@62
    sub-long v20, v8, v20

    #@64
    move-object/from16 v0, p0

    #@66
    move/from16 v1, v19

    #@68
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    #@6b
    move-result-wide v22

    #@6c
    sub-long v20, v20, v22

    #@6e
    move-wide/from16 v0, v20

    #@70
    long-to-double v0, v0

    #@71
    move-wide/from16 v20, v0

    #@73
    const-wide v22, 0x403d800000000000L    # 29.5

    #@78
    div-double v20, v20, v22

    #@7a
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    #@7d
    move-result-wide v20

    #@7e
    move-wide/from16 v0, v20

    #@80
    double-to-int v11, v0

    #@81
    .line 843
    const/16 v20, 0xb

    #@83
    move/from16 v0, v20

    #@85
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    #@88
    move-result v11

    #@89
    .line 897
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    #@8b
    move/from16 v1, v19

    #@8d
    invoke-direct {v0, v1, v11}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    #@90
    move-result-wide v20

    #@91
    sub-long v20, v8, v20

    #@93
    move-wide/from16 v0, v20

    #@95
    long-to-int v0, v0

    #@96
    move/from16 v20, v0

    #@98
    add-int/lit8 v6, v20, 0x1

    #@9a
    .line 900
    const/16 v20, 0x0

    #@9c
    move-object/from16 v0, p0

    #@9e
    move/from16 v1, v19

    #@a0
    move/from16 v2, v20

    #@a2
    invoke-direct {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    #@a5
    move-result-wide v20

    #@a6
    sub-long v20, v8, v20

    #@a8
    const-wide/16 v22, 0x1

    #@aa
    add-long v20, v20, v22

    #@ac
    move-wide/from16 v0, v20

    #@ae
    long-to-int v7, v0

    #@af
    .line 903
    const/16 v20, 0x0

    #@b1
    const/16 v21, 0x0

    #@b3
    move-object/from16 v0, p0

    #@b5
    move/from16 v1, v20

    #@b7
    move/from16 v2, v21

    #@b9
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    #@bc
    .line 904
    const/16 v20, 0x1

    #@be
    move-object/from16 v0, p0

    #@c0
    move/from16 v1, v20

    #@c2
    move/from16 v2, v19

    #@c4
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    #@c7
    .line 905
    const/16 v20, 0x13

    #@c9
    move-object/from16 v0, p0

    #@cb
    move/from16 v1, v20

    #@cd
    move/from16 v2, v19

    #@cf
    invoke-virtual {v0, v1, v2}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    #@d2
    .line 906
    const/16 v20, 0x2

    #@d4
    move-object/from16 v0, p0

    #@d6
    move/from16 v1, v20

    #@d8
    invoke-virtual {v0, v1, v11}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    #@db
    .line 907
    const/16 v20, 0x5

    #@dd
    move-object/from16 v0, p0

    #@df
    move/from16 v1, v20

    #@e1
    invoke-virtual {v0, v1, v6}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    #@e4
    .line 908
    const/16 v20, 0x6

    #@e6
    move-object/from16 v0, p0

    #@e8
    move/from16 v1, v20

    #@ea
    invoke-virtual {v0, v1, v7}, Landroid/icu/util/IslamicCalendar;->internalSet(II)V

    #@ed
    .line 831
    return-void

    #@ee
    .line 844
    :cond_3
    move-object/from16 v0, p0

    #@f0
    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@f2
    move-object/from16 v20, v0

    #@f4
    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@f6
    move-object/from16 v0, v20

    #@f8
    move-object/from16 v1, v21

    #@fa
    if-ne v0, v1, :cond_6

    #@fc
    .line 846
    long-to-double v0, v8

    #@fd
    move-wide/from16 v20, v0

    #@ff
    const-wide v22, 0x403d87d4abcb41d5L    # 29.530588853

    #@104
    div-double v20, v20, v22

    #@106
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@109
    move-result-wide v20

    #@10a
    move-wide/from16 v0, v20

    #@10c
    double-to-int v13, v0

    #@10d
    .line 848
    .local v13, "months":I
    int-to-double v0, v13

    #@10e
    move-wide/from16 v20, v0

    #@110
    const-wide v22, 0x403d87d4abcb41d5L    # 29.530588853

    #@115
    mul-double v20, v20, v22

    #@117
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    #@119
    sub-double v20, v20, v22

    #@11b
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@11e
    move-result-wide v20

    #@11f
    move-wide/from16 v0, v20

    #@121
    double-to-long v14, v0

    #@122
    .line 850
    .local v14, "monthStart":J
    sub-long v20, v8, v14

    #@124
    const-wide/16 v22, 0x19

    #@126
    cmp-long v20, v20, v22

    #@128
    if-ltz v20, :cond_4

    #@12a
    invoke-virtual/range {p0 .. p0}, Landroid/icu/util/IslamicCalendar;->internalGetTimeInMillis()J

    #@12d
    move-result-wide v20

    #@12e
    invoke-static/range {v20 .. v21}, Landroid/icu/util/IslamicCalendar;->moonAge(J)D

    #@131
    move-result-wide v20

    #@132
    const-wide/16 v22, 0x0

    #@134
    cmpl-double v20, v20, v22

    #@136
    if-lez v20, :cond_4

    #@138
    .line 852
    add-int/lit8 v13, v13, 0x1

    #@13a
    .line 857
    :cond_4
    :goto_1
    int-to-long v0, v13

    #@13b
    move-wide/from16 v20, v0

    #@13d
    invoke-static/range {v20 .. v21}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@140
    move-result-wide v14

    #@141
    cmp-long v20, v14, v8

    #@143
    if-lez v20, :cond_5

    #@145
    .line 859
    add-int/lit8 v13, v13, -0x1

    #@147
    goto :goto_1

    #@148
    .line 862
    :cond_5
    div-int/lit8 v20, v13, 0xc

    #@14a
    add-int/lit8 v19, v20, 0x1

    #@14c
    .line 863
    rem-int/lit8 v11, v13, 0xc

    #@14e
    goto/16 :goto_0

    #@150
    .line 864
    .end local v13    # "months":I
    .end local v14    # "monthStart":J
    :cond_6
    move-object/from16 v0, p0

    #@152
    iget-object v0, v0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@154
    move-object/from16 v20, v0

    #@156
    sget-object v21, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@158
    move-object/from16 v0, v20

    #@15a
    move-object/from16 v1, v21

    #@15c
    if-ne v0, v1, :cond_2

    #@15e
    .line 865
    const/16 v20, 0x514

    #@160
    move-object/from16 v0, p0

    #@162
    move/from16 v1, v20

    #@164
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    #@167
    move-result-wide v16

    #@168
    .line 866
    .local v16, "umalquraStartdays":J
    cmp-long v20, v8, v16

    #@16a
    if-gez v20, :cond_7

    #@16c
    .line 868
    const-wide/16 v20, 0x1e

    #@16e
    mul-long v20, v20, v8

    #@170
    const-wide/16 v22, 0x2996

    #@172
    add-long v20, v20, v22

    #@174
    move-wide/from16 v0, v20

    #@176
    long-to-double v0, v0

    #@177
    move-wide/from16 v20, v0

    #@179
    const-wide v22, 0x40c4c38000000000L    # 10631.0

    #@17e
    div-double v20, v20, v22

    #@180
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->floor(D)D

    #@183
    move-result-wide v20

    #@184
    move-wide/from16 v0, v20

    #@186
    double-to-int v0, v0

    #@187
    move/from16 v19, v0

    #@189
    .line 869
    const-wide/16 v20, 0x1d

    #@18b
    sub-long v20, v8, v20

    #@18d
    move-object/from16 v0, p0

    #@18f
    move/from16 v1, v19

    #@191
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    #@194
    move-result-wide v22

    #@195
    sub-long v20, v20, v22

    #@197
    move-wide/from16 v0, v20

    #@199
    long-to-double v0, v0

    #@19a
    move-wide/from16 v20, v0

    #@19c
    const-wide v22, 0x403d800000000000L    # 29.5

    #@1a1
    div-double v20, v20, v22

    #@1a3
    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->ceil(D)D

    #@1a6
    move-result-wide v20

    #@1a7
    move-wide/from16 v0, v20

    #@1a9
    double-to-int v11, v0

    #@1aa
    .line 870
    const/16 v20, 0xb

    #@1ac
    move/from16 v0, v20

    #@1ae
    invoke-static {v11, v0}, Ljava/lang/Math;->min(II)I

    #@1b1
    move-result v11

    #@1b2
    goto/16 :goto_0

    #@1b4
    .line 872
    :cond_7
    const/16 v18, 0x513

    #@1b6
    .local v18, "y":I
    const/4 v10, 0x0

    #@1b7
    .line 873
    .local v10, "m":I
    const-wide/16 v4, 0x1

    #@1b9
    .line 874
    .local v4, "d":J
    :cond_8
    const-wide/16 v20, 0x0

    #@1bb
    cmp-long v20, v4, v20

    #@1bd
    if-lez v20, :cond_9

    #@1bf
    .line 875
    add-int/lit8 v18, v18, 0x1

    #@1c1
    .line 876
    move-object/from16 v0, p0

    #@1c3
    move/from16 v1, v18

    #@1c5
    invoke-direct {v0, v1}, Landroid/icu/util/IslamicCalendar;->yearStart(I)J

    #@1c8
    move-result-wide v20

    #@1c9
    sub-long v20, v8, v20

    #@1cb
    const-wide/16 v22, 0x1

    #@1cd
    add-long v4, v20, v22

    #@1cf
    .line 877
    move-object/from16 v0, p0

    #@1d1
    move/from16 v1, v18

    #@1d3
    invoke-virtual {v0, v1}, Landroid/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    #@1d6
    move-result v20

    #@1d7
    move/from16 v0, v20

    #@1d9
    int-to-long v0, v0

    #@1da
    move-wide/from16 v20, v0

    #@1dc
    cmp-long v20, v4, v20

    #@1de
    if-nez v20, :cond_a

    #@1e0
    .line 878
    const/16 v10, 0xb

    #@1e2
    .line 891
    :cond_9
    move/from16 v19, v18

    #@1e4
    .line 892
    move v11, v10

    #@1e5
    goto/16 :goto_0

    #@1e7
    .line 880
    :cond_a
    move-object/from16 v0, p0

    #@1e9
    move/from16 v1, v18

    #@1eb
    invoke-virtual {v0, v1}, Landroid/icu/util/IslamicCalendar;->handleGetYearLength(I)I

    #@1ee
    move-result v20

    #@1ef
    move/from16 v0, v20

    #@1f1
    int-to-long v0, v0

    #@1f2
    move-wide/from16 v20, v0

    #@1f4
    cmp-long v20, v4, v20

    #@1f6
    if-gez v20, :cond_8

    #@1f8
    .line 881
    move-object/from16 v0, p0

    #@1fa
    move/from16 v1, v18

    #@1fc
    invoke-virtual {v0, v1, v10}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    #@1ff
    move-result v12

    #@200
    .line 882
    .local v12, "monthLen":I
    const/4 v10, 0x0

    #@201
    .line 883
    :goto_2
    int-to-long v0, v12

    #@202
    move-wide/from16 v20, v0

    #@204
    cmp-long v20, v4, v20

    #@206
    if-lez v20, :cond_9

    #@208
    .line 884
    int-to-long v0, v12

    #@209
    move-wide/from16 v20, v0

    #@20b
    sub-long v4, v4, v20

    #@20d
    .line 885
    add-int/lit8 v10, v10, 0x1

    #@20f
    .line 886
    move-object/from16 v0, p0

    #@211
    move/from16 v1, v18

    #@213
    invoke-virtual {v0, v1, v10}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    #@216
    move-result v12

    #@217
    goto :goto_2
.end method

.method protected handleComputeMonthStart(IIZ)I
    .locals 4
    .param p1, "eyear"    # I
    .param p2, "month"    # I
    .param p3, "useMonth"    # Z

    #@0
    .prologue
    .line 795
    invoke-direct {p0, p1, p2}, Landroid/icu/util/IslamicCalendar;->monthStart(II)J

    #@3
    move-result-wide v2

    #@4
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@6
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const-wide/32 v0, 0x1dbb17

    #@d
    :goto_0
    add-long/2addr v0, v2

    #@e
    const-wide/16 v2, 0x1

    #@10
    sub-long/2addr v0, v2

    #@11
    long-to-int v0, v0

    #@12
    return v0

    #@13
    :cond_0
    const-wide/32 v0, 0x1dbb18

    #@16
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
    .line 807
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IslamicCalendar;->newerField(II)I

    #@6
    move-result v1

    #@7
    if-ne v1, v3, :cond_0

    #@9
    .line 808
    invoke-virtual {p0, v3, v2}, Landroid/icu/util/IslamicCalendar;->internalGet(II)I

    #@c
    move-result v0

    #@d
    .line 812
    .local v0, "year":I
    :goto_0
    return v0

    #@e
    .line 810
    .end local v0    # "year":I
    :cond_0
    invoke-virtual {p0, v2, v2}, Landroid/icu/util/IslamicCalendar;->internalGet(II)I

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
    .line 511
    sget-object v0, Landroid/icu/util/IslamicCalendar;->LIMITS:[[I

    #@2
    aget-object v0, v0, p1

    #@4
    aget v0, v0, p2

    #@6
    return v0
.end method

.method protected handleGetMonthLength(II)I
    .locals 8
    .param p1, "extendedYear"    # I
    .param p2, "month"    # I

    #@0
    .prologue
    .line 738
    const/4 v1, 0x0

    #@1
    .line 740
    .local v1, "length":I
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@3
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@5
    if-eq v3, v4, :cond_0

    #@7
    .line 741
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@9
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@b
    if-ne v3, v4, :cond_2

    #@d
    .line 743
    :cond_0
    add-int/lit8 v3, p2, 0x1

    #@f
    rem-int/lit8 v3, v3, 0x2

    #@11
    add-int/lit8 v1, v3, 0x1d

    #@13
    .line 744
    const/16 v3, 0xb

    #@15
    if-ne p2, v3, :cond_1

    #@17
    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    #@1a
    move-result v3

    #@1b
    if-eqz v3, :cond_1

    #@1d
    .line 745
    add-int/lit8 v1, v1, 0x1

    #@1f
    .line 758
    :cond_1
    :goto_0
    return v1

    #@20
    .line 742
    :cond_2
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@22
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@24
    if-ne v3, v4, :cond_3

    #@26
    const/16 v3, 0x514

    #@28
    if-lt p1, v3, :cond_0

    #@2a
    const/16 v3, 0x640

    #@2c
    if-gt p1, v3, :cond_0

    #@2e
    .line 747
    :cond_3
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@30
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@32
    if-ne v3, v4, :cond_4

    #@34
    .line 748
    add-int/lit8 v3, p1, -0x1

    #@36
    mul-int/lit8 v3, v3, 0xc

    #@38
    add-int/2addr p2, v3

    #@39
    .line 749
    add-int/lit8 v3, p2, 0x1

    #@3b
    int-to-long v4, v3

    #@3c
    invoke-static {v4, v5}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@3f
    move-result-wide v4

    #@40
    int-to-long v6, p2

    #@41
    invoke-static {v6, v7}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@44
    move-result-wide v6

    #@45
    sub-long/2addr v4, v6

    #@46
    long-to-int v1, v4

    #@47
    goto :goto_0

    #@48
    .line 750
    :cond_4
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@4a
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@4c
    if-ne v3, v4, :cond_1

    #@4e
    .line 751
    add-int/lit16 v0, p1, -0x514

    #@50
    .line 752
    .local v0, "idx":I
    rsub-int/lit8 v3, p2, 0xb

    #@52
    const/4 v4, 0x1

    #@53
    shl-int v2, v4, v3

    #@55
    .line 753
    .local v2, "mask":I
    sget-object v3, Landroid/icu/util/IslamicCalendar;->UMALQURA_MONTHLENGTH:[I

    #@57
    aget v3, v3, v0

    #@59
    and-int/2addr v3, v2

    #@5a
    if-nez v3, :cond_5

    #@5c
    .line 754
    const/16 v1, 0x1d

    #@5e
    goto :goto_0

    #@5f
    .line 756
    :cond_5
    const/16 v1, 0x1e

    #@61
    goto :goto_0
.end method

.method protected handleGetYearLength(I)I
    .locals 8
    .param p1, "extendedYear"    # I

    #@0
    .prologue
    const/16 v5, 0xc

    #@2
    .line 766
    const/4 v1, 0x0

    #@3
    .line 767
    .local v1, "length":I
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@5
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@7
    if-eq v3, v4, :cond_0

    #@9
    .line 768
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@b
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_TBLA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@d
    if-ne v3, v4, :cond_2

    #@f
    .line 770
    :cond_0
    invoke-static {p1}, Landroid/icu/util/IslamicCalendar;->civilLeapYear(I)Z

    #@12
    move-result v3

    #@13
    if-eqz v3, :cond_4

    #@15
    const/4 v3, 0x1

    #@16
    :goto_0
    add-int/lit16 v1, v3, 0x162

    #@18
    .line 779
    :cond_1
    :goto_1
    return v1

    #@19
    .line 769
    :cond_2
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@1b
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@1d
    if-ne v3, v4, :cond_3

    #@1f
    const/16 v3, 0x514

    #@21
    if-lt p1, v3, :cond_0

    #@23
    const/16 v3, 0x640

    #@25
    if-gt p1, v3, :cond_0

    #@27
    .line 771
    :cond_3
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@29
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2b
    if-ne v3, v4, :cond_5

    #@2d
    .line 772
    add-int/lit8 v3, p1, -0x1

    #@2f
    mul-int/lit8 v2, v3, 0xc

    #@31
    .line 773
    .local v2, "month":I
    add-int/lit8 v3, v2, 0xc

    #@33
    int-to-long v4, v3

    #@34
    invoke-static {v4, v5}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@37
    move-result-wide v4

    #@38
    int-to-long v6, v2

    #@39
    invoke-static {v6, v7}, Landroid/icu/util/IslamicCalendar;->trueMonthStart(J)J

    #@3c
    move-result-wide v6

    #@3d
    sub-long/2addr v4, v6

    #@3e
    long-to-int v1, v4

    #@3f
    goto :goto_1

    #@40
    .line 770
    .end local v2    # "month":I
    :cond_4
    const/4 v3, 0x0

    #@41
    goto :goto_0

    #@42
    .line 774
    :cond_5
    iget-object v3, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@44
    sget-object v4, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_UMALQURA:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@46
    if-ne v3, v4, :cond_1

    #@48
    .line 775
    const/4 v0, 0x0

    #@49
    .local v0, "i":I
    :goto_2
    if-ge v0, v5, :cond_1

    #@4b
    .line 776
    invoke-virtual {p0, p1, v0}, Landroid/icu/util/IslamicCalendar;->handleGetMonthLength(II)I

    #@4e
    move-result v3

    #@4f
    add-int/2addr v1, v3

    #@50
    .line 775
    add-int/lit8 v0, v0, 0x1

    #@52
    goto :goto_2
.end method

.method public isCivil()Z
    .locals 2

    #@0
    .prologue
    .line 357
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@4
    if-ne v0, v1, :cond_0

    #@6
    .line 358
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 360
    :cond_0
    const/4 v0, 0x0

    #@9
    return v0
.end method

.method public setCalculationType(Landroid/icu/util/IslamicCalendar$CalculationType;)V
    .locals 2
    .param p1, "type"    # Landroid/icu/util/IslamicCalendar$CalculationType;

    #@0
    .prologue
    .line 958
    iput-object p1, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@2
    .line 961
    iget-object v0, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@4
    sget-object v1, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 962
    const/4 v0, 0x1

    #@9
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@b
    .line 957
    :goto_0
    return-void

    #@c
    .line 964
    :cond_0
    const/4 v0, 0x0

    #@d
    iput-boolean v0, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@f
    goto :goto_0
.end method

.method public setCivil(Z)V
    .locals 4
    .param p1, "beCivil"    # Z

    #@0
    .prologue
    .line 330
    iput-boolean p1, p0, Landroid/icu/util/IslamicCalendar;->civil:Z

    #@2
    .line 332
    if-eqz p1, :cond_1

    #@4
    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@6
    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@8
    if-eq v2, v3, :cond_1

    #@a
    .line 335
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->getTimeInMillis()J

    #@d
    move-result-wide v0

    #@e
    .line 336
    .local v0, "m":J
    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC_CIVIL:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@10
    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@12
    .line 337
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->clear()V

    #@15
    .line 338
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    #@18
    .line 328
    .end local v0    # "m":J
    :cond_0
    :goto_0
    return-void

    #@19
    .line 339
    :cond_1
    if-nez p1, :cond_0

    #@1b
    iget-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@1d
    sget-object v3, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@1f
    if-eq v2, v3, :cond_0

    #@21
    .line 342
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->getTimeInMillis()J

    #@24
    move-result-wide v0

    #@25
    .line 343
    .restart local v0    # "m":J
    sget-object v2, Landroid/icu/util/IslamicCalendar$CalculationType;->ISLAMIC:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@27
    iput-object v2, p0, Landroid/icu/util/IslamicCalendar;->cType:Landroid/icu/util/IslamicCalendar$CalculationType;

    #@29
    .line 344
    invoke-virtual {p0}, Landroid/icu/util/IslamicCalendar;->clear()V

    #@2c
    .line 345
    invoke-virtual {p0, v0, v1}, Landroid/icu/util/IslamicCalendar;->setTimeInMillis(J)V

    #@2f
    goto :goto_0
.end method
