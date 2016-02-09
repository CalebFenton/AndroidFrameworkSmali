.class public final Landroid/database/sqlite/SQLiteGlobal;
.super Ljava/lang/Object;
.source "SQLiteGlobal.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteGlobal"

.field private static sDefaultPageSize:I

.field private static final sLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 40
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    #@7
    .line 37
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static getDefaultJournalMode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 74
    const-string/jumbo v0, "debug.sqlite.journalmode"

    #@3
    .line 75
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 76
    const v2, 0x1040031

    #@a
    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 74
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static getDefaultPageSize()I
    .locals 3

    #@0
    .prologue
    .line 62
    sget-object v1, Landroid/database/sqlite/SQLiteGlobal;->sLock:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 63
    :try_start_0
    sget v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    #@5
    if-nez v0, :cond_0

    #@7
    .line 64
    new-instance v0, Landroid/os/StatFs;

    #@9
    const-string/jumbo v2, "/data"

    #@c
    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    #@f
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    #@12
    move-result v0

    #@13
    sput v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    #@15
    .line 66
    :cond_0
    const-string/jumbo v0, "debug.sqlite.pagesize"

    #@18
    sget v2, Landroid/database/sqlite/SQLiteGlobal;->sDefaultPageSize:I

    #@1a
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    move-result v0

    #@1e
    monitor-exit v1

    #@1f
    return v0

    #@20
    .line 62
    :catchall_0
    move-exception v0

    #@21
    monitor-exit v1

    #@22
    throw v0
.end method

.method public static getDefaultSyncMode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 92
    const-string/jumbo v0, "debug.sqlite.syncmode"

    #@3
    .line 93
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 94
    const v2, 0x1040032

    #@a
    .line 93
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 92
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method public static getJournalSizeLimit()I
    .locals 3

    #@0
    .prologue
    .line 83
    const-string/jumbo v0, "debug.sqlite.journalsizelimit"

    #@3
    .line 84
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 85
    const v2, 0x10e0072

    #@a
    .line 84
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    #@d
    move-result v1

    #@e
    .line 83
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    return v0
.end method

.method public static getWALAutoCheckpoint()I
    .locals 4

    #@0
    .prologue
    .line 110
    const-string/jumbo v1, "debug.sqlite.wal.autocheckpoint"

    #@3
    .line 111
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v2

    #@7
    .line 112
    const v3, 0x10e0073

    #@a
    .line 111
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@d
    move-result v2

    #@e
    .line 110
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 113
    .local v0, "value":I
    const/4 v1, 0x1

    #@13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public static getWALConnectionPoolSize()I
    .locals 4

    #@0
    .prologue
    .line 120
    const-string/jumbo v1, "debug.sqlite.wal.poolsize"

    #@3
    .line 121
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v2

    #@7
    .line 122
    const v3, 0x10e0071

    #@a
    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    #@d
    move-result v2

    #@e
    .line 120
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@11
    move-result v0

    #@12
    .line 123
    .local v0, "value":I
    const/4 v1, 0x2

    #@13
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    #@16
    move-result v1

    #@17
    return v1
.end method

.method public static getWALSyncMode()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 101
    const-string/jumbo v0, "debug.sqlite.wal.syncmode"

    #@3
    .line 102
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v1

    #@7
    .line 103
    const v2, 0x1040033

    #@a
    .line 102
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    #@d
    move-result-object v1

    #@e
    .line 101
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    return-object v0
.end method

.method private static native nativeReleaseMemory()I
.end method

.method public static releaseMemory()I
    .locals 1

    #@0
    .prologue
    .line 55
    invoke-static {}, Landroid/database/sqlite/SQLiteGlobal;->nativeReleaseMemory()I

    #@3
    move-result v0

    #@4
    return v0
.end method
