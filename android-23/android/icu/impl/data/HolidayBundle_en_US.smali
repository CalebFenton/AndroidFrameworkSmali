.class public Landroid/icu/impl/data/HolidayBundle_en_US;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_en_US.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    #@0
    .prologue
    const/16 v13, 0x8

    #@2
    const/4 v1, 0x0

    #@3
    const/4 v12, 0x4

    #@4
    const/4 v3, 0x2

    #@5
    const/4 v11, 0x1

    #@6
    .line 19
    const/16 v0, 0x12

    #@8
    new-array v10, v0, [Landroid/icu/util/Holiday;

    #@a
    .line 20
    sget-object v0, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@c
    aput-object v0, v10, v1

    #@e
    .line 21
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@10
    const-string/jumbo v4, "Martin Luther King Day"

    #@13
    const/16 v2, 0xf

    #@15
    const/16 v5, 0x7c2

    #@17
    invoke-direct/range {v0 .. v5}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@1a
    aput-object v0, v10, v11

    #@1c
    .line 23
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@1e
    const-string/jumbo v8, "Presidents\' Day"

    #@21
    const/16 v6, 0xf

    #@23
    const/16 v9, 0x7b8

    #@25
    move v5, v11

    #@26
    move v7, v3

    #@27
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@2a
    aput-object v4, v10, v3

    #@2c
    .line 24
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@2e
    const-string/jumbo v7, "Washington\'s Birthday"

    #@31
    const/16 v6, 0x16

    #@33
    const/16 v8, 0x6f0

    #@35
    const/16 v9, 0x7b7

    #@37
    move v5, v11

    #@38
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    #@3b
    const/4 v0, 0x3

    #@3c
    aput-object v4, v10, v0

    #@3e
    .line 26
    sget-object v0, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@40
    aput-object v0, v10, v12

    #@42
    .line 27
    sget-object v0, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@44
    const/4 v2, 0x5

    #@45
    aput-object v0, v10, v2

    #@47
    .line 29
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@49
    const-string/jumbo v8, "Mother\'s Day"

    #@4c
    const/16 v9, 0x77a

    #@4e
    move v5, v12

    #@4f
    move v6, v13

    #@50
    move v7, v11

    #@51
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@54
    const/4 v0, 0x6

    #@55
    aput-object v4, v10, v0

    #@57
    .line 31
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@59
    const-string/jumbo v8, "Memorial Day"

    #@5c
    const/16 v6, 0x1f

    #@5e
    const/4 v7, -0x2

    #@5f
    const/16 v9, 0x7b3

    #@61
    move v5, v12

    #@62
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@65
    const/4 v0, 0x7

    #@66
    aput-object v4, v10, v0

    #@68
    .line 32
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@6a
    const-string/jumbo v7, "Memorial Day"

    #@6d
    const/16 v6, 0x1e

    #@6f
    const/16 v8, 0x74c

    #@71
    const/16 v9, 0x7b2

    #@73
    move v5, v12

    #@74
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;II)V

    #@77
    aput-object v4, v10, v13

    #@79
    .line 34
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@7b
    const-string/jumbo v8, "Father\'s Day"

    #@7e
    const/4 v5, 0x5

    #@7f
    const/16 v6, 0xf

    #@81
    const/16 v9, 0x7a4

    #@83
    move v7, v11

    #@84
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@87
    const/16 v0, 0x9

    #@89
    aput-object v4, v10, v0

    #@8b
    .line 35
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@8d
    const-string/jumbo v2, "Independence Day"

    #@90
    const/4 v4, 0x6

    #@91
    const/16 v5, 0x6f0

    #@93
    invoke-direct {v0, v4, v12, v2, v5}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    #@96
    const/16 v2, 0xa

    #@98
    aput-object v0, v10, v2

    #@9a
    .line 36
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@9c
    const-string/jumbo v8, "Labor Day"

    #@9f
    const/16 v9, 0x766

    #@a1
    move v5, v13

    #@a2
    move v6, v11

    #@a3
    move v7, v3

    #@a4
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@a7
    const/16 v0, 0xb

    #@a9
    aput-object v4, v10, v0

    #@ab
    .line 37
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@ad
    const-string/jumbo v2, "Election Day"

    #@b0
    const/16 v4, 0xa

    #@b2
    const/4 v5, 0x3

    #@b3
    invoke-direct {v0, v4, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@b6
    const/16 v2, 0xc

    #@b8
    aput-object v0, v10, v2

    #@ba
    .line 38
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@bc
    const-string/jumbo v8, "Columbus Day"

    #@bf
    const/16 v5, 0x9

    #@c1
    const/16 v9, 0x7b3

    #@c3
    move v6, v13

    #@c4
    move v7, v3

    #@c5
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@c8
    const/16 v0, 0xd

    #@ca
    aput-object v4, v10, v0

    #@cc
    .line 39
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@ce
    const-string/jumbo v2, "Halloween"

    #@d1
    const/16 v4, 0x9

    #@d3
    const/16 v5, 0x1f

    #@d5
    invoke-direct {v0, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;)V

    #@d8
    const/16 v2, 0xe

    #@da
    aput-object v0, v10, v2

    #@dc
    .line 40
    new-instance v0, Landroid/icu/util/SimpleHoliday;

    #@de
    const-string/jumbo v2, "Veterans\' Day"

    #@e1
    const/16 v4, 0xa

    #@e3
    const/16 v5, 0xb

    #@e5
    const/16 v6, 0x77e

    #@e7
    invoke-direct {v0, v4, v5, v2, v6}, Landroid/icu/util/SimpleHoliday;-><init>(IILjava/lang/String;I)V

    #@ea
    const/16 v2, 0xf

    #@ec
    aput-object v0, v10, v2

    #@ee
    .line 41
    new-instance v4, Landroid/icu/util/SimpleHoliday;

    #@f0
    const-string/jumbo v8, "Thanksgiving"

    #@f3
    const/16 v5, 0xa

    #@f5
    const/16 v6, 0x16

    #@f7
    const/4 v7, 0x5

    #@f8
    const/16 v9, 0x747

    #@fa
    invoke-direct/range {v4 .. v9}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;I)V

    #@fd
    const/16 v0, 0x10

    #@ff
    aput-object v4, v10, v0

    #@101
    .line 43
    sget-object v0, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@103
    const/16 v2, 0x11

    #@105
    aput-object v0, v10, v2

    #@107
    .line 19
    sput-object v10, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    #@109
    .line 45
    new-array v0, v11, [[Ljava/lang/Object;

    #@10b
    .line 46
    new-array v2, v3, [Ljava/lang/Object;

    #@10d
    const-string/jumbo v3, "holidays"

    #@110
    aput-object v3, v2, v1

    #@112
    sget-object v3, Landroid/icu/impl/data/HolidayBundle_en_US;->fHolidays:[Landroid/icu/util/Holiday;

    #@114
    aput-object v3, v2, v11

    #@116
    aput-object v2, v0, v1

    #@118
    .line 45
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;

    #@11a
    .line 17
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 17
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public declared-synchronized getContents()[[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 48
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_en_US;->fContents:[[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    monitor-exit p0

    #@4
    return-object v0

    #@5
    :catchall_0
    move-exception v0

    #@6
    monitor-exit p0

    #@7
    throw v0
.end method
