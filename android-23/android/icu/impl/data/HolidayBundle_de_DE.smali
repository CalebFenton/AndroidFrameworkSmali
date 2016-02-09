.class public Landroid/icu/impl/data/HolidayBundle_de_DE;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_de_DE.java"


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
    const/4 v8, 0x3

    #@2
    const/4 v7, 0x2

    #@3
    const/4 v6, 0x1

    #@4
    const/4 v5, 0x0

    #@5
    .line 18
    const/16 v0, 0xe

    #@7
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@9
    .line 19
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@b
    aput-object v1, v0, v5

    #@d
    .line 20
    sget-object v1, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    #@f
    aput-object v1, v0, v6

    #@11
    .line 21
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@13
    const-string/jumbo v2, "Memorial Day"

    #@16
    const/4 v3, 0x5

    #@17
    const/16 v4, 0xf

    #@19
    invoke-direct {v1, v3, v4, v9, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@1c
    aput-object v1, v0, v7

    #@1e
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@20
    const-string/jumbo v2, "Unity Day"

    #@23
    const/16 v3, 0x9

    #@25
    invoke-direct {v1, v3, v8, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@28
    aput-object v1, v0, v8

    #@2a
    .line 23
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    #@2c
    aput-object v1, v0, v9

    #@2e
    .line 24
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@30
    const-string/jumbo v2, "Day of Prayer and Repentance"

    #@33
    const/16 v3, 0xa

    #@35
    const/16 v4, 0x12

    #@37
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@3a
    const/4 v2, 0x5

    #@3b
    aput-object v1, v0, v2

    #@3d
    .line 25
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@3f
    const/4 v2, 0x6

    #@40
    aput-object v1, v0, v2

    #@42
    .line 26
    sget-object v1, Landroid/icu/util/SimpleHoliday;->BOXING_DAY:Landroid/icu/util/SimpleHoliday;

    #@44
    const/4 v2, 0x7

    #@45
    aput-object v1, v0, v2

    #@47
    .line 29
    sget-object v1, Landroid/icu/util/EasterHoliday;->GOOD_FRIDAY:Landroid/icu/util/EasterHoliday;

    #@49
    const/16 v2, 0x8

    #@4b
    aput-object v1, v0, v2

    #@4d
    .line 30
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@4f
    const/16 v2, 0x9

    #@51
    aput-object v1, v0, v2

    #@53
    .line 31
    sget-object v1, Landroid/icu/util/EasterHoliday;->EASTER_MONDAY:Landroid/icu/util/EasterHoliday;

    #@55
    const/16 v2, 0xa

    #@57
    aput-object v1, v0, v2

    #@59
    .line 32
    sget-object v1, Landroid/icu/util/EasterHoliday;->ASCENSION:Landroid/icu/util/EasterHoliday;

    #@5b
    const/16 v2, 0xb

    #@5d
    aput-object v1, v0, v2

    #@5f
    .line 33
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_SUNDAY:Landroid/icu/util/EasterHoliday;

    #@61
    const/16 v2, 0xc

    #@63
    aput-object v1, v0, v2

    #@65
    .line 34
    sget-object v1, Landroid/icu/util/EasterHoliday;->WHIT_MONDAY:Landroid/icu/util/EasterHoliday;

    #@67
    const/16 v2, 0xd

    #@69
    aput-object v1, v0, v2

    #@6b
    .line 18
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_de_DE;->fHolidays:[Landroid/icu/util/Holiday;

    #@6d
    .line 37
    new-array v0, v6, [[Ljava/lang/Object;

    #@6f
    .line 38
    new-array v1, v7, [Ljava/lang/Object;

    #@71
    const-string/jumbo v2, "holidays"

    #@74
    aput-object v2, v1, v5

    #@76
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_de_DE;->fHolidays:[Landroid/icu/util/Holiday;

    #@78
    aput-object v2, v1, v6

    #@7a
    aput-object v1, v0, v5

    #@7c
    .line 37
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_de_DE;->fContents:[[Ljava/lang/Object;

    #@7e
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
    .line 40
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_de_DE;->fContents:[[Ljava/lang/Object;
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
