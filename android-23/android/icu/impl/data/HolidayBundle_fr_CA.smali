.class public Landroid/icu/impl/data/HolidayBundle_fr_CA;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_fr_CA.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/4 v9, 0x4

    #@1
    const/16 v8, 0x8

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 18
    const/16 v0, 0xe

    #@8
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@a
    .line 19
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@c
    const-string/jumbo v2, "New Year\'s Day"

    #@f
    invoke-direct {v1, v5, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@12
    aput-object v1, v0, v5

    #@14
    .line 20
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@16
    const-string/jumbo v2, "Victoria Day"

    #@19
    const/16 v3, 0x13

    #@1b
    invoke-direct {v1, v9, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@1e
    aput-object v1, v0, v6

    #@20
    .line 21
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@22
    const-string/jumbo v2, "National Day"

    #@25
    const/4 v3, 0x5

    #@26
    const/16 v4, 0x18

    #@28
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@2b
    aput-object v1, v0, v7

    #@2d
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@2f
    const-string/jumbo v2, "Canada Day"

    #@32
    const/4 v3, 0x6

    #@33
    invoke-direct {v1, v3, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@36
    const/4 v2, 0x3

    #@37
    aput-object v1, v0, v2

    #@39
    .line 23
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@3b
    const-string/jumbo v2, "Civic Holiday"

    #@3e
    const/4 v3, 0x7

    #@3f
    invoke-direct {v1, v3, v6, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@42
    aput-object v1, v0, v9

    #@44
    .line 24
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@46
    const-string/jumbo v2, "Labour Day"

    #@49
    invoke-direct {v1, v8, v6, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@4c
    const/4 v2, 0x5

    #@4d
    aput-object v1, v0, v2

    #@4f
    .line 25
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@51
    const-string/jumbo v2, "Thanksgiving"

    #@54
    const/16 v3, 0x9

    #@56
    invoke-direct {v1, v3, v8, v7, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@59
    const/4 v2, 0x6

    #@5a
    aput-object v1, v0, v2

    #@5c
    .line 26
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@5e
    const-string/jumbo v2, "Remembrance Day"

    #@61
    const/16 v3, 0xa

    #@63
    const/16 v4, 0xb

    #@65
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@68
    const/4 v2, 0x7

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 27
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@6d
    aput-object v1, v0, v8

    #@6f
    .line 28
    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    #@71
    const/16 v2, 0x9

    #@73
    aput-object v1, v0, v2

    #@75
    .line 29
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_EVE:Landroid/icu/util/SimpleHoliday;

    #@77
    const/16 v2, 0xa

    #@79
    aput-object v1, v0, v2

    #@7b
    .line 32
    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@7d
    const/16 v2, 0xb

    #@7f
    aput-object v1, v0, v2

    #@81
    .line 33
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@83
    const/16 v2, 0xc

    #@85
    aput-object v1, v0, v2

    #@87
    .line 34
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@89
    const/16 v2, 0xd

    #@8b
    aput-object v1, v0, v2

    #@8d
    .line 18
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fHolidays:[Landroid/icu/util/Holiday;

    #@8f
    .line 36
    new-array v0, v6, [[Ljava/lang/Object;

    #@91
    .line 37
    new-array v1, v7, [Ljava/lang/Object;

    #@93
    const-string/jumbo v2, "holidays"

    #@96
    aput-object v2, v1, v5

    #@98
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fHolidays:[Landroid/icu/util/Holiday;

    #@9a
    aput-object v2, v1, v6

    #@9c
    aput-object v1, v0, v5

    #@9e
    .line 36
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fContents:[[Ljava/lang/Object;

    #@a0
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
    .line 39
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_fr_CA;->fContents:[[Ljava/lang/Object;
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
