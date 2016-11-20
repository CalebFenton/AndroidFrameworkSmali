.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;,
        Lcom/android/server/notification/NotificationUsageStats$ImportanceHistogram;,
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEVICE_GLOBAL_STATS:Ljava/lang/String; = "__global"

.field private static final EMIT_PERIOD:J = 0xdbba00L

.field private static final EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

.field private static final ENABLE_AGGREGATED_IN_MEMORY_STATS:Z = true

.field private static final ENABLE_SQLITE_LOG:Z = true

.field public static final FOUR_HOURS:I = 0xdbba00

.field private static final MSG_EMIT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationUsageStats"

.field public static final TEN_SECONDS:I = 0x2710


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastEmitTime:J

.field private final mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

.field private mStatExpiredkeys:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatsArrays:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<[",
            "Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 66
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@3
    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@5
    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 76
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@a
    .line 77
    new-instance v0, Ljava/util/ArrayDeque;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@11
    .line 78
    new-instance v0, Landroid/util/ArraySet;

    #@13
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    #@16
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    #@18
    .line 85
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@1a
    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1d
    move-result-wide v0

    #@1e
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    #@20
    .line 87
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@22
    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    #@25
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@27
    .line 88
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    #@29
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@2b
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@2e
    move-result-object v1

    #@2f
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    #@32
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@34
    .line 101
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@36
    const/4 v1, 0x1

    #@37
    const-wide/32 v2, 0xdbba00

    #@3a
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@3d
    .line 84
    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 1
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 254
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    #@2
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method private getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 263
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@8
    .line 264
    .local v0, "array":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    #@a
    .line 265
    const/4 v1, 0x2

    #@b
    new-array v0, v1, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@d
    .line 267
    :cond_0
    const-string/jumbo v1, "__global"

    #@10
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@13
    move-result-object v1

    #@14
    const/4 v2, 0x0

    #@15
    aput-object v1, v0, v2

    #@17
    .line 268
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@1a
    move-result-object v1

    #@1b
    const/4 v2, 0x1

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 269
    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 282
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@8
    .line 283
    .local v0, "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    #@a
    .line 284
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@c
    .end local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@e
    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@11
    .line 285
    .restart local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@13
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 287
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@19
    move-result-wide v2

    #@1a
    iput-wide v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    #@1c
    .line 288
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .locals 2
    .param p1, "array"    # [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@0
    .prologue
    .line 274
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 275
    const/4 v1, 0x0

    #@5
    aput-object v1, p1, v0

    #@7
    .line 274
    add-int/lit8 v0, v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@f
    .line 273
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;
    .param p3, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 318
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@3
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@6
    move-result-object v2

    #@7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@a
    move-result-object v1

    #@b
    .local v1, "as$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@e
    move-result v2

    #@f
    if-eqz v2, :cond_2

    #@11
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@14
    move-result-object v0

    #@15
    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@17
    .line 319
    .local v0, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p3, :cond_1

    #@19
    iget-object v2, v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@1b
    invoke-virtual {p3, v2}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_0

    #@21
    .line 321
    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    goto :goto_0

    #@25
    .end local v0    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "as$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@26
    monitor-exit p0

    #@27
    throw v2

    #@28
    .line 323
    .restart local v1    # "as$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v2

    #@31
    const-string/jumbo v3, "mStatsArrays.size(): "

    #@34
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v2

    #@38
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@3a
    invoke-virtual {v3}, Ljava/util/ArrayDeque;->size()I

    #@3d
    move-result v3

    #@3e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    #@4b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@4e
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@51
    move-result-object v2

    #@52
    const-string/jumbo v3, "mStats.size(): "

    #@55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@58
    move-result-object v2

    #@59
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@5b
    invoke-interface {v3}, Ljava/util/Map;->size()I

    #@5e
    move-result v3

    #@5f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@62
    move-result-object v2

    #@63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@66
    move-result-object v2

    #@67
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6a
    .line 327
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@6c
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6f
    monitor-exit p0

    #@70
    .line 316
    return-void
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 292
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    #@3
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 295
    .local v3, "dump":Lorg/json/JSONObject;
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    #@8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@b
    .line 296
    .local v0, "aggregatedStats":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@d
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@10
    move-result-object v5

    #@11
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@14
    move-result-object v2

    #@15
    .local v2, "as$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@18
    move-result v5

    #@19
    if-eqz v5, :cond_2

    #@1b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e
    move-result-object v1

    #@1f
    check-cast v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@21
    .line 297
    .local v1, "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p1, :cond_1

    #@23
    iget-object v5, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->key:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v5}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Ljava/lang/String;)Z

    #@28
    move-result v5

    #@29
    if-eqz v5, :cond_0

    #@2b
    .line 299
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->dumpJson()Lorg/json/JSONObject;

    #@2e
    move-result-object v5

    #@2f
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@32
    goto :goto_0

    #@33
    .line 302
    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v1    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "as$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    #@34
    .line 308
    :goto_1
    :try_start_2
    const-string/jumbo v5, "historical"

    #@37
    iget-object v6, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@39
    invoke-virtual {v6, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;

    #@3c
    move-result-object v6

    #@3d
    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@40
    :goto_2
    monitor-exit p0

    #@41
    .line 313
    return-object v3

    #@42
    .line 301
    .restart local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .restart local v2    # "as$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_3
    const-string/jumbo v5, "current"

    #@45
    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@48
    goto :goto_1

    #@49
    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v2    # "as$iterator":Ljava/util/Iterator;
    .end local v3    # "dump":Lorg/json/JSONObject;
    :catchall_0
    move-exception v5

    #@4a
    monitor-exit p0

    #@4b
    throw v5

    #@4c
    .line 309
    .restart local v3    # "dump":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    #@4d
    .local v4, "e":Lorg/json/JSONException;
    goto :goto_2
.end method

.method public declared-synchronized emit()V
    .locals 8

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 332
    :try_start_0
    const-string/jumbo v3, "__global"

    #@4
    invoke-direct {p0, v3}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@7
    move-result-object v2

    #@8
    .line 333
    .local v2, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    #@b
    .line 334
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@d
    const/4 v4, 0x1

    #@e
    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    #@11
    .line 335
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@13
    const/4 v4, 0x1

    #@14
    const-wide/32 v6, 0xdbba00

    #@17
    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@1a
    .line 336
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@1c
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@23
    move-result-object v1

    #@24
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@27
    move-result v3

    #@28
    if-eqz v3, :cond_1

    #@2a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2d
    move-result-object v0

    #@2e
    check-cast v0, Ljava/lang/String;

    #@30
    .line 337
    .local v0, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@32
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@35
    move-result-object v3

    #@36
    check-cast v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@38
    iget-wide v4, v3, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->mLastAccessTime:J

    #@3a
    iget-wide v6, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    #@3c
    cmp-long v3, v4, v6

    #@3e
    if-gez v3, :cond_0

    #@40
    .line 338
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    #@42
    invoke-virtual {v3, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@45
    goto :goto_0

    #@46
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "key$iterator":Ljava/util/Iterator;
    .end local v2    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v3

    #@47
    monitor-exit p0

    #@48
    throw v3

    #@49
    .line 341
    .restart local v1    # "key$iterator":Ljava/util/Iterator;
    .restart local v2    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    #@4b
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@4e
    move-result-object v1

    #@4f
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@52
    move-result v3

    #@53
    if-eqz v3, :cond_2

    #@55
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@58
    move-result-object v0

    #@59
    check-cast v0, Ljava/lang/String;

    #@5b
    .line 342
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@5d
    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@60
    goto :goto_1

    #@61
    .line 344
    .end local v0    # "key":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatExpiredkeys:Landroid/util/ArraySet;

    #@63
    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    #@66
    .line 345
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@69
    move-result-wide v4

    #@6a
    iput-wide v4, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@6c
    monitor-exit p0

    #@6d
    .line 331
    return-void
.end method

.method public declared-synchronized getAppEnqueueRate(Ljava/lang/String;)F
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 108
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 109
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz v0, :cond_0

    #@7
    .line 110
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@a
    move-result-wide v2

    #@b
    invoke-virtual {v0, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->getEnqueueRate(J)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    move-result v1

    #@f
    monitor-exit p0

    #@10
    return v1

    #@11
    .line 112
    :cond_0
    const/4 v1, 0x0

    #@12
    monitor-exit p0

    #@13
    return v1

    #@14
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v1

    #@15
    monitor-exit p0

    #@16
    throw v1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 223
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 224
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@6
    array-length v3, v0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v1, v0, v2

    #@b
    .line 225
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@11
    .line 224
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 227
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 222
    return-void

    #@19
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit p0

    #@1b
    throw v2
.end method

.method public declared-synchronized registerClickedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "note_click_longevity"

    #@6
    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@d
    move-result-wide v4

    #@e
    sub-long/2addr v2, v4

    #@f
    long-to-int v2, v2

    #@10
    const v3, 0xea60

    #@13
    div-int/2addr v2, v3

    #@14
    .line 195
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@17
    .line 197
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@19
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    #@1c
    .line 199
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1e
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 194
    return-void

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method

.method public declared-synchronized registerDismissedByUser(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 183
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "note_dismiss_longevity"

    #@6
    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@9
    move-result-wide v2

    #@a
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getRankingTimeMs()J

    #@d
    move-result-wide v4

    #@e
    sub-long/2addr v2, v4

    #@f
    long-to-int v2, v2

    #@10
    const v3, 0xea60

    #@13
    div-int/2addr v2, v3

    #@14
    .line 183
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@17
    .line 185
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@19
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    #@1c
    .line 187
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1e
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 182
    return-void

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
.end method

.method public declared-synchronized registerEnqueuedByApp(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 120
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 121
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@6
    array-length v3, v0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v1, v0, v2

    #@b
    .line 122
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numEnqueuedByApp:I

    #@11
    .line 121
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 124
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 119
    return-void

    #@19
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit p0

    #@1b
    throw v2
.end method

.method public declared-synchronized registerOverCountQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 246
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 247
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@6
    array-length v3, v0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v1, v0, v2

    #@b
    .line 248
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numQuotaViolations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 247
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    monitor-exit p0

    #@15
    .line 245
    return-void

    #@16
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2
.end method

.method public declared-synchronized registerOverRateQuota(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 239
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Ljava/lang/String;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 240
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@6
    array-length v3, v0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v1, v0, v2

    #@b
    .line 241
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRateViolations:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .line 240
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    monitor-exit p0

    #@15
    .line 238
    return-void

    #@16
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@17
    monitor-exit p0

    #@18
    throw v2
.end method

.method public declared-synchronized registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "valid"    # Z
    .param p3, "starred"    # Z
    .param p4, "cached"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 205
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 206
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@6
    array-length v3, v0

    #@7
    :goto_0
    if-ge v2, v3, :cond_3

    #@9
    aget-object v1, v0, v2

    #@b
    .line 207
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p2, :cond_0

    #@d
    .line 208
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@f
    add-int/lit8 v4, v4, 0x1

    #@11
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@13
    .line 210
    :cond_0
    if-eqz p3, :cond_1

    #@15
    .line 211
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@17
    add-int/lit8 v4, v4, 0x1

    #@19
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@1b
    .line 213
    :cond_1
    if-eqz p4, :cond_2

    #@1d
    .line 214
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@1f
    add-int/lit8 v4, v4, 0x1

    #@21
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@23
    .line 206
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 216
    :cond_2
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I

    #@28
    add-int/lit8 v4, v4, 0x1

    #@2a
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheMiss:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    goto :goto_1

    #@2d
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@2e
    monitor-exit p0

    #@2f
    throw v2

    #@30
    .line 219
    .restart local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 204
    return-void
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 7
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 131
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@4
    move-result-wide v2

    #@5
    .line 132
    .local v2, "now":J
    iget-object v4, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@7
    iput-wide v2, v4, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@9
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@c
    move-result-object v0

    #@d
    .line 135
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v4, 0x0

    #@e
    array-length v5, v0

    #@f
    :goto_0
    if-ge v4, v5, :cond_0

    #@11
    aget-object v1, v0, v4

    #@13
    .line 136
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v6, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@15
    add-int/lit8 v6, v6, 0x1

    #@17
    iput v6, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@19
    .line 137
    invoke-virtual {v1, v2, v3}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    #@1c
    .line 138
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    #@1f
    .line 135
    add-int/lit8 v4, v4, 0x1

    #@21
    goto :goto_0

    #@22
    .line 140
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    #@25
    .line 142
    iget-object v4, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@27
    invoke-virtual {v4, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2a
    monitor-exit p0

    #@2b
    .line 130
    return-void

    #@2c
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "now":J
    :catchall_0
    move-exception v4

    #@2d
    monitor-exit p0

    #@2e
    throw v4
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 168
    :try_start_0
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@3
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    #@6
    .line 169
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@9
    move-result-object v0

    #@a
    .line 170
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@b
    array-length v3, v0

    #@c
    :goto_0
    if-ge v2, v3, :cond_0

    #@e
    aget-object v1, v0, v2

    #@10
    .line 171
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@12
    add-int/lit8 v4, v4, 0x1

    #@14
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@16
    .line 170
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 173
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    #@1c
    .line 175
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1e
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 167
    return-void

    #@23
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@24
    monitor-exit p0

    #@25
    throw v2
.end method

.method public declared-synchronized registerSuspendedByAdmin(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 231
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 232
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@6
    array-length v3, v0

    #@7
    :goto_0
    if-ge v2, v3, :cond_0

    #@9
    aget-object v1, v0, v2

    #@b
    .line 233
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numSuspendedByAdmin:I

    #@11
    .line 232
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 235
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 230
    return-void

    #@19
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@1a
    monitor-exit p0

    #@1b
    throw v2
.end method

.method public declared-synchronized registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 151
    :try_start_0
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@3
    iget-object v3, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@5
    invoke-virtual {v2, v3}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->updateFrom(Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;)V

    #@8
    .line 152
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@b
    move-result-object v0

    #@c
    .line 153
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@d
    array-length v3, v0

    #@e
    :goto_0
    if-ge v2, v3, :cond_0

    #@10
    aget-object v1, v0, v2

    #@12
    .line 154
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@14
    add-int/lit8 v4, v4, 0x1

    #@16
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@18
    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@1b
    move-result-wide v4

    #@1c
    invoke-virtual {v1, v4, v5}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->updateInterarrivalEstimate(J)V

    #@1f
    .line 156
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    #@22
    .line 153
    add-int/lit8 v2, v2, 0x1

    #@24
    goto :goto_0

    #@25
    .line 158
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    #@28
    .line 160
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@2a
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2d
    monitor-exit p0

    #@2e
    .line 150
    return-void

    #@2f
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@30
    monitor-exit p0

    #@31
    throw v2
.end method
