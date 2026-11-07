.class public final Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;
.super Ljava/lang/Object;
.source "SQLiteDebug.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/database/sqlite/SQLiteDebug;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoPreloadHolder"
.end annotation


# static fields
.field public static final blacklist DEBUG_LOG_DETAILED:Z

.field public static final blacklist DEBUG_LOG_SLOW_QUERIES:Z

.field public static final blacklist DEBUG_SQL_LOG:Z

.field public static final blacklist DEBUG_SQL_STATEMENTS:Z

.field public static final blacklist DEBUG_SQL_TIME:Z

.field public static final blacklist NO_DOUBLE_QUOTED_STRS:Z

.field private static final blacklist SLOW_QUERY_THRESHOLD_PROP:Ljava/lang/String; = "db.log.slow_query_threshold"

.field private static final blacklist SLOW_QUERY_THRESHOLD_UID_PROP:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetSLOW_QUERY_THRESHOLD_UID_PROP()Ljava/lang/String;
    .registers 1

    sget-object v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->SLOW_QUERY_THRESHOLD_UID_PROP:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 49
    nop

    .line 50
    const-string v0, "SQLiteLog"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_LOG:Z

    .line 57
    nop

    .line 58
    const-string v0, "SQLiteStatements"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_STATEMENTS:Z

    .line 66
    nop

    .line 67
    const-string v0, "SQLiteTime"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_SQL_TIME:Z

    .line 72
    nop

    .line 73
    const-string v0, "SQLiteSlowQueries"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_SLOW_QUERIES:Z

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "db.log.slow_query_threshold."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 78
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->SLOW_QUERY_THRESHOLD_UID_PROP:Ljava/lang/String;

    .line 83
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 84
    const-string v0, "db.log.detailed"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x1

    goto :goto_4e

    :cond_4d
    move v0, v1

    :goto_4e
    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->DEBUG_LOG_DETAILED:Z

    .line 92
    nop

    .line 93
    const-string v0, "debug.sqlite.no_double_quoted_strs"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Landroid/database/sqlite/SQLiteDebug$NoPreloadHolder;->NO_DOUBLE_QUOTED_STRS:Z

    .line 92
    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
