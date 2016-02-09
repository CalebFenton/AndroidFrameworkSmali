.class public Landroid/icu/impl/data/HolidayBundle_iw_IL;
.super Ljava/util/ListResourceBundle;
.source "HolidayBundle_iw_IL.java"


# static fields
.field private static final fContents:[[Ljava/lang/Object;

.field private static final fHolidays:[Landroid/icu/util/Holiday;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    #@0
    .prologue
    const/4 v5, 0x2

    #@1
    const/4 v4, 0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 16
    const/4 v0, 0x7

    #@4
    new-array v0, v0, [Landroid/icu/util/Holiday;

    #@6
    .line 17
    sget-object v1, Landroid/icu/util/HebrewHoliday;->ROSH_HASHANAH:Landroid/icu/util/HebrewHoliday;

    #@8
    aput-object v1, v0, v3

    #@a
    .line 18
    sget-object v1, Landroid/icu/util/HebrewHoliday;->YOM_KIPPUR:Landroid/icu/util/HebrewHoliday;

    #@c
    aput-object v1, v0, v4

    #@e
    .line 19
    sget-object v1, Landroid/icu/util/HebrewHoliday;->HANUKKAH:Landroid/icu/util/HebrewHoliday;

    #@10
    aput-object v1, v0, v5

    #@12
    .line 20
    sget-object v1, Landroid/icu/util/HebrewHoliday;->PURIM:Landroid/icu/util/HebrewHoliday;

    #@14
    const/4 v2, 0x3

    #@15
    aput-object v1, v0, v2

    #@17
    .line 21
    sget-object v1, Landroid/icu/util/HebrewHoliday;->PASSOVER:Landroid/icu/util/HebrewHoliday;

    #@19
    const/4 v2, 0x4

    #@1a
    aput-object v1, v0, v2

    #@1c
    .line 22
    sget-object v1, Landroid/icu/util/HebrewHoliday;->SHAVUOT:Landroid/icu/util/HebrewHoliday;

    #@1e
    const/4 v2, 0x5

    #@1f
    aput-object v1, v0, v2

    #@21
    .line 23
    sget-object v1, Landroid/icu/util/HebrewHoliday;->SELIHOT:Landroid/icu/util/HebrewHoliday;

    #@23
    const/4 v2, 0x6

    #@24
    aput-object v1, v0, v2

    #@26
    .line 16
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Landroid/icu/util/Holiday;

    #@28
    .line 26
    new-array v0, v4, [[Ljava/lang/Object;

    #@2a
    .line 27
    new-array v1, v5, [Ljava/lang/Object;

    #@2c
    const-string/jumbo v2, "holidays"

    #@2f
    aput-object v2, v1, v3

    #@31
    sget-object v2, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fHolidays:[Landroid/icu/util/Holiday;

    #@33
    aput-object v2, v1, v4

    #@35
    aput-object v1, v0, v3

    #@37
    .line 26
    sput-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;

    #@39
    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 15
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
    .line 29
    :try_start_0
    sget-object v0, Landroid/icu/impl/data/HolidayBundle_iw_IL;->fContents:[[Ljava/lang/Object;
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
