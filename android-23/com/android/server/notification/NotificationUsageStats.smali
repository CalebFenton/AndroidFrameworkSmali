.class public Lcom/android/server/notification/NotificationUsageStats;
.super Ljava/lang/Object;
.source "NotificationUsageStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;,
        Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;,
        Lcom/android/server/notification/NotificationUsageStats$Aggregate;,
        Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;
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
    .line 61
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@3
    sput-object v0, Lcom/android/server/notification/NotificationUsageStats;->EMPTY_AGGREGATED_STATS:[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@5
    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 71
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@a
    .line 72
    new-instance v0, Ljava/util/ArrayDeque;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    #@f
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@11
    .line 79
    iput-object p1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@13
    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@16
    move-result-wide v0

    #@17
    iput-wide v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    #@19
    .line 81
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1b
    invoke-direct {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;-><init>(Landroid/content/Context;)V

    #@1e
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@20
    .line 82
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$1;

    #@22
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@24
    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/NotificationUsageStats$1;-><init>(Lcom/android/server/notification/NotificationUsageStats;Landroid/os/Looper;)V

    #@2b
    iput-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@2d
    .line 95
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@2f
    const/4 v1, 0x1

    #@30
    const-wide/32 v2, 0xdbba00

    #@33
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    #@36
    .line 78
    return-void
.end method

.method private getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 3
    .param p1, "record"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 202
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@2
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@8
    .line 203
    .local v0, "array":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    #@a
    .line 204
    const/4 v1, 0x1

    #@b
    new-array v0, v1, [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@d
    .line 206
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
    .line 207
    return-object v0
.end method

.method private getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 220
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@2
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@8
    .line 221
    .local v0, "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-nez v0, :cond_0

    #@a
    .line 222
    new-instance v0, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@c
    .end local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@e
    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    #@11
    .line 223
    .restart local v0    # "result":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStats:Ljava/util/Map;

    #@13
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    .line 225
    :cond_0
    return-object v0
.end method

.method private releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    .locals 2
    .param p1, "array"    # [Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@0
    .prologue
    .line 212
    const/4 v0, 0x0

    #@1
    .local v0, "i":I
    :goto_0
    array-length v1, p1

    #@2
    if-ge v0, v1, :cond_0

    #@4
    .line 213
    const/4 v1, 0x0

    #@5
    aput-object v1, p1, v0

    #@7
    .line 212
    add-int/lit8 v0, v0, 0x1

    #@9
    goto :goto_0

    #@a
    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mStatsArrays:Ljava/util/ArrayDeque;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    #@f
    .line 211
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
    .line 255
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
    .line 256
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
    .line 258
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
    .line 260
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
    .line 263
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@4b
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    monitor-exit p0

    #@4f
    .line 253
    return-void
.end method

.method public declared-synchronized dumpJson(Lcom/android/server/notification/NotificationManagerService$DumpFilter;)Lorg/json/JSONObject;
    .locals 7
    .param p1, "filter"    # Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 229
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    #@3
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    .line 232
    .local v3, "dump":Lorg/json/JSONObject;
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    #@8
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    #@b
    .line 233
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
    .line 234
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
    .line 236
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
    .line 239
    .end local v0    # "aggregatedStats":Lorg/json/JSONArray;
    .end local v1    # "as":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    .end local v2    # "as$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v4

    #@34
    .line 245
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
    .line 250
    return-object v3

    #@42
    .line 238
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
    .line 246
    .restart local v3    # "dump":Lorg/json/JSONObject;
    :catch_1
    move-exception v4

    #@4d
    .local v4, "e":Lorg/json/JSONException;
    goto :goto_2
.end method

.method public declared-synchronized emit()V
    .locals 6

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 269
    :try_start_0
    const-string/jumbo v1, "__global"

    #@4
    invoke-direct {p0, v1}, Lcom/android/server/notification/NotificationUsageStats;->getOrCreateAggregatedStatsLocked(Ljava/lang/String;)Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@7
    move-result-object v0

    #@8
    .line 270
    .local v0, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->emit()V

    #@b
    .line 271
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@e
    move-result-wide v2

    #@f
    iput-wide v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mLastEmitTime:J

    #@11
    .line 272
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@13
    const/4 v2, 0x1

    #@14
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    #@17
    .line 273
    iget-object v1, p0, Lcom/android/server/notification/NotificationUsageStats;->mHandler:Landroid/os/Handler;

    #@19
    const/4 v2, 0x1

    #@1a
    const-wide/32 v4, 0xdbba00

    #@1d
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@20
    monitor-exit p0

    #@21
    .line 267
    return-void

    #@22
    .end local v0    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v1

    #@23
    monitor-exit p0

    #@24
    throw v1
.end method

.method public declared-synchronized registerBlocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 188
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 189
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
    .line 190
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@d
    add-int/lit8 v4, v4, 0x1

    #@f
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numBlocked:I

    #@11
    .line 189
    add-int/lit8 v2, v2, 0x1

    #@13
    goto :goto_0

    #@14
    .line 192
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@17
    monitor-exit p0

    #@18
    .line 187
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
    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "note_click_longevity"

    #@6
    .line 161
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
    .line 160
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@17
    .line 162
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@19
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onClick()V

    #@1c
    .line 164
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1e
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logClicked(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 159
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
    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mContext:Landroid/content/Context;

    #@3
    const-string/jumbo v1, "note_dismiss_longevity"

    #@6
    .line 149
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
    .line 148
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    #@17
    .line 150
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@19
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onDismiss()V

    #@1c
    .line 152
    iget-object v0, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1e
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logDismissed(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 147
    return-void

    #@23
    :catchall_0
    move-exception v0

    #@24
    monitor-exit p0

    #@25
    throw v0
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
    .line 170
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@4
    move-result-object v0

    #@5
    .line 171
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
    .line 172
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    if-eqz p2, :cond_0

    #@d
    .line 173
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@f
    add-int/lit8 v4, v4, 0x1

    #@11
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithValidPeople:I

    #@13
    .line 175
    :cond_0
    if-eqz p3, :cond_1

    #@15
    .line 176
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@17
    add-int/lit8 v4, v4, 0x1

    #@19
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numWithStaredPeople:I

    #@1b
    .line 178
    :cond_1
    if-eqz p4, :cond_2

    #@1d
    .line 179
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@1f
    add-int/lit8 v4, v4, 0x1

    #@21
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPeopleCacheHit:I

    #@23
    .line 171
    :goto_1
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 181
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
    .line 184
    .restart local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_3
    :try_start_1
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    monitor-exit p0

    #@34
    .line 169
    return-void
.end method

.method public declared-synchronized registerPostedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 6
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 102
    :try_start_0
    new-instance v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@3
    invoke-direct {v2}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;-><init>()V

    #@6
    iput-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@8
    .line 103
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    #@d
    move-result-wide v4

    #@e
    iput-wide v4, v2, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->posttimeElapsedMs:J

    #@10
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@13
    move-result-object v0

    #@14
    .line 106
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@15
    array-length v3, v0

    #@16
    :goto_0
    if-ge v2, v3, :cond_0

    #@18
    aget-object v1, v0, v2

    #@1a
    .line 107
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@1c
    add-int/lit8 v4, v4, 0x1

    #@1e
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numPostedByApp:I

    #@20
    .line 108
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    #@23
    .line 106
    add-int/lit8 v2, v2, 0x1

    #@25
    goto :goto_0

    #@26
    .line 110
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    #@29
    .line 112
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@2b
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logPosted(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2e
    monitor-exit p0

    #@2f
    .line 101
    return-void

    #@30
    .end local v0    # "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :catchall_0
    move-exception v2

    #@31
    monitor-exit p0

    #@32
    throw v2
.end method

.method public declared-synchronized registerRemovedByApp(Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 133
    :try_start_0
    iget-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@3
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;->onRemoved()V

    #@6
    .line 134
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@9
    move-result-object v0

    #@a
    .line 135
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
    .line 136
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@12
    add-int/lit8 v4, v4, 0x1

    #@14
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numRemovedByApp:I

    #@16
    .line 135
    add-int/lit8 v2, v2, 0x1

    #@18
    goto :goto_0

    #@19
    .line 138
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    #@1c
    .line 140
    iget-object v2, p0, Lcom/android/server/notification/NotificationUsageStats;->mSQLiteLog:Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;

    #@1e
    invoke-virtual {v2, p1}, Lcom/android/server/notification/NotificationUsageStats$SQLiteLog;->logRemoved(Lcom/android/server/notification/NotificationRecord;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@21
    monitor-exit p0

    #@22
    .line 132
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

.method public registerUpdatedByApp(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V
    .locals 5
    .param p1, "notification"    # Lcom/android/server/notification/NotificationRecord;
    .param p2, "old"    # Lcom/android/server/notification/NotificationRecord;

    #@0
    .prologue
    .line 120
    iget-object v2, p2, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@2
    iput-object v2, p1, Lcom/android/server/notification/NotificationRecord;->stats:Lcom/android/server/notification/NotificationUsageStats$SingleNotificationStats;

    #@4
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/notification/NotificationUsageStats;->getAggregatedStatsLocked(Lcom/android/server/notification/NotificationRecord;)[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;

    #@7
    move-result-object v0

    #@8
    .line 122
    .local v0, "aggregatedStatsArray":[Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    const/4 v2, 0x0

    #@9
    array-length v3, v0

    #@a
    :goto_0
    if-ge v2, v3, :cond_0

    #@c
    aget-object v1, v0, v2

    #@e
    .line 123
    .local v1, "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    iget v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@10
    add-int/lit8 v4, v4, 0x1

    #@12
    iput v4, v1, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->numUpdatedByApp:I

    #@14
    .line 124
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;->countApiUse(Lcom/android/server/notification/NotificationRecord;)V

    #@17
    .line 122
    add-int/lit8 v2, v2, 0x1

    #@19
    goto :goto_0

    #@1a
    .line 126
    .end local v1    # "stats":Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/notification/NotificationUsageStats;->releaseAggregatedStatsLocked([Lcom/android/server/notification/NotificationUsageStats$AggregatedStats;)V

    #@1d
    .line 119
    return-void
.end method
