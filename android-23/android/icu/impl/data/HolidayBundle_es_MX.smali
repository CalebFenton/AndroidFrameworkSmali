.class public Landroid/icu/impl/data/HolidayBundle_es_MX;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_es_MX.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    #@0
    .prologue
    const/16 v8, 0xa

    #@2
    const/4 v4, 0x5

    #@3
    const/4 v7, 0x2

    #@4
    const/4 v6, 0x1

    #@5
    const/4 v5, 0x0

    #@6
    .line 17
    const/16 v0, 0xd

    #@8
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@a
    .line 18
    sget-object v1, Landroid/icu/util/SimpleHoliday;->NEW_YEARS_DAY:Landroid/icu/util/SimpleHoliday;

    #@c
    aput-object v1, v0, v5

    #@e
    .line 19
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@10
    const-string/jumbo v2, "Constitution Day"

    #@13
    invoke-direct {v1, v6, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@16
    aput-object v1, v0, v6

    #@18
    .line 20
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@1a
    const-string/jumbo v2, "Benito Ju\u00e1rez Day"

    #@1d
    const/16 v3, 0x15

    #@1f
    invoke-direct {v1, v7, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@22
    aput-object v1, v0, v7

    #@24
    .line 21
    sget-object v1, Landroid/icu/util/SimpleHoliday;->MAY_DAY:Landroid/icu/util/SimpleHoliday;

    #@26
    const/4 v2, 0x3

    #@27
    aput-object v1, v0, v2

    #@29
    .line 22
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@2b
    const-string/jumbo v2, "Cinco de Mayo"

    #@2e
    const/4 v3, 0x4

    #@2f
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@32
    const/4 v2, 0x4

    #@33
    aput-object v1, v0, v2

    #@35
    .line 23
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@37
    const-string/jumbo v2, "Navy Day"

    #@3a
    invoke-direct {v1, v4, v6, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@3d
    aput-object v1, v0, v4

    #@3f
    .line 24
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@41
    const-string/jumbo v2, "Independence Day"

    #@44
    const/16 v3, 0x8

    #@46
    const/16 v4, 0x10

    #@48
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@4b
    const/4 v2, 0x6

    #@4c
    aput-object v1, v0, v2

    #@4e
    .line 25
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@50
    const-string/jumbo v2, "D\u00eda de la Raza"

    #@53
    const/16 v3, 0x9

    #@55
    const/16 v4, 0xc

    #@57
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@5a
    const/4 v2, 0x7

    #@5b
    aput-object v1, v0, v2

    #@5d
    .line 26
    sget-object v1, Landroid/icu/util/SimpleHoliday;->ALL_SAINTS_DAY:Landroid/icu/util/SimpleHoliday;

    #@5f
    const/16 v2, 0x8

    #@61
    aput-object v1, v0, v2

    #@63
    .line 27
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@65
    const-string/jumbo v2, "Day of the Dead"

    #@68
    invoke-direct {v1, v8, v7, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@6b
    const/16 v2, 0x9

    #@6d
    aput-object v1, v0, v2

    #@6f
    .line 28
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@71
    const-string/jumbo v2, "Revolution Day"

    #@74
    const/16 v3, 0x14

    #@76
    invoke-direct {v1, v8, v3, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@79
    aput-object v1, v0, v8

    #@7b
    .line 29
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@7d
    const-string/jumbo v2, "Flag Day"

    #@80
    const/16 v3, 0xb

    #@82
    const/16 v4, 0xc

    #@84
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@87
    const/16 v2, 0xb

    #@89
    aput-object v1, v0, v2

    #@8b
    .line 30
    sget-object v1, Landroid/icu/util/SimpleHoliday;->CHRISTMAS:Landroid/icu/util/SimpleHoliday;

    #@8d
    const/16 v2, 0xc

    #@8f
    aput-object v1, v0, v2

    #@91
    .line 17
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_es_MX;->fHolidays:[Landroid/icu/util/Holiday;

    #@93
    .line 32
    new-array v0, v6, [[Ljava/lang/Object;

    #@95
    .line 33
    new-array v1, v7, [Ljava/lang/Object;

    #@97
    const-string/jumbo v2, "holidays"

    #@9a
    aput-object v2, v1, v5

    #@9c
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_es_MX;->fHolidays:[Landroid/icu/util/Holiday;

    #@9e
    aput-object v2, v1, v6

    #@a0
    aput-object v1, v0, v5

    #@a2
    .line 32
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_es_MX;->fContents:[[Ljava/lang/Object;

    #@a4
    .line 16
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 16
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
    .line 35
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_es_MX;->fContents:[[Ljava/lang/Object;
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
