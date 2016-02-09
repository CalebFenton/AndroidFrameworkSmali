.class public Landroid/icu/impl/data/HolidayBundle_ja_JP;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_ja_JP.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 17
    new-array v0, v5, [Landroid/icu/util/Holiday;

    #@4
    .line 18
    new-instance v1, Landroid/icu/util/SimpleHoliday;

    #@6
    const-string/jumbo v2, "National Foundation Day"

    #@9
    const/16 v3, 0xb

    #@b
    invoke-direct {v1, v5, v3, v4, v2}, Landroid/icu/util/SimpleHoliday;-><init>(IIILjava/lang/String;)V

    #@e
    aput-object v1, v0, v4

    #@10
    .line 17
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Landroid/icu/util/Holiday;

    #@12
    .line 20
    new-array v0, v5, [[Ljava/lang/Object;

    #@14
    .line 21
    const/4 v1, 0x2

    #@15
    new-array v1, v1, [Ljava/lang/Object;

    #@17
    const-string/jumbo v2, "holidays"

    #@1a
    aput-object v2, v1, v4

    #@1c
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fHolidays:[Landroid/icu/util/Holiday;

    #@1e
    aput-object v2, v1, v5

    #@20
    aput-object v1, v0, v4

    #@22
    .line 20
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;

    #@24
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
    .line 23
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_ja_JP;->fContents:[[Ljava/lang/Object;
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
