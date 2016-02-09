.class public final Landroid/database/sqlite/SQLiteDebug;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteDebug$PagerStats;,
        Landroid/database/sqlite/SQLiteDebug$DbStats;
    }
.end annotation


# static fields
.field public static final DEBUG_LOG_SLOW_QUERIES:Z

.field public static final DEBUG_SQL_LOG:Z

.field public static final DEBUG_SQL_STATEMENTS:Z

.field public static final DEBUG_SQL_TIME:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 40
    const-string/jumbo v0, "SQLiteLog"

    #@4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@7
    move-result v0

    #@8
    .line 39
    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_LOG:Z

    #@a
    .line 48
    const-string/jumbo v0, "SQLiteStatements"

    #@d
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@10
    move-result v0

    #@11
    .line 47
    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_STATEMENTS:Z

    #@13
    .line 57
    const-string/jumbo v0, "SQLiteTime"

    #@16
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    #@19
    move-result v0

    #@1a
    .line 56
    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_SQL_TIME:Z

    #@1c
    .line 63
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    #@1e
    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug;->DEBUG_LOG_SLOW_QUERIES:Z

    #@20
    .line 31
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static dump(Landroid/util/Printer;[Ljava/lang/String;)V
    .locals 5
    .param p0, "printer"    # Landroid/util/Printer;
    .param p1, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 163
    const/4 v1, 0x0

    #@1
    .line 164
    .local v1, "verbose":Z
    const/4 v2, 0x0

    #@2
    array-length v3, p1

    #@3
    :goto_0
    if-ge v2, v3, :cond_1

    #@5
    aget-object v0, p1, v2

    #@7
    .line 165
    .local v0, "arg":Ljava/lang/String;
    const-string/jumbo v4, "-v"

    #@a
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 166
    const/4 v1, 0x1

    #@11
    .line 164
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 170
    .end local v0    # "arg":Ljava/lang/String;
    :cond_1
    invoke-static {p0, v1}, Landroid/database/sqlite/SQLiteDatabase;->dumpAll(Landroid/util/Printer;Z)V

    #@17
    .line 162
    return-void
.end method

.method public static getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .locals 2

    #@0
    .prologue
    .line 151
    new-instance v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;

    #@2
    invoke-direct {v0}, Landroid/database/sqlite/SQLiteDebug$PagerStats;-><init>()V

    #@5
    .line 152
    .local v0, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {v0}, Landroid/database/sqlite/SQLiteDebug;->nativeGetPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V

    #@8
    .line 153
    invoke-static {}, Landroid/database/sqlite/SQLiteDatabase;->getDbStats()Ljava/util/ArrayList;

    #@b
    move-result-object v1

    #@c
    iput-object v1, v0, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    #@e
    .line 154
    return-object v0
.end method

.method private static native nativeGetPagerStats(Landroid/database/sqlite/SQLiteDebug$PagerStats;)V
.end method

.method public static final shouldLogSlowQuery(J)Z
    .locals 4
    .param p0, "elapsedTimeMillis"    # J

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 82
    const-string/jumbo v2, "db.log.slow_query_threshold"

    #@4
    const/4 v3, -0x1

    #@5
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    #@8
    move-result v0

    #@9
    .line 83
    .local v0, "slowQueryMillis":I
    if-ltz v0, :cond_0

    #@b
    int-to-long v2, v0

    #@c
    cmp-long v2, p0, v2

    #@e
    if-ltz v2, :cond_0

    #@10
    const/4 v1, 0x1

    #@11
    :cond_0
    return v1
.end method
