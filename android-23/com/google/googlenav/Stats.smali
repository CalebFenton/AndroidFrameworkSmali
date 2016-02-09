.class public Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
.super Ljava/lang/Object;
.source "Stats.java"


# static fields
.field private static currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;


# instance fields
.field private bytesDownloaded:I

.field private bytesUploaded:I

.field private flashCacheHits:I

.field private flashCacheHitsSinceLastLog:I

.field private flashCacheMisses:I

.field private flashCacheMissesSinceLastLog:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 66
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    #@6
    .line 67
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    #@8
    .line 68
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    #@a
    .line 69
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    #@c
    .line 70
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesDownloaded:I

    #@e
    .line 71
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesUploaded:I

    #@10
    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .locals 2

    #@0
    .prologue
    const-class v1, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@2
    monitor-enter v1

    #@3
    .line 88
    :try_start_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@5
    if-eqz v0, :cond_1

    #@7
    .line 97
    :cond_0
    :goto_0
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    .line 90
    :cond_1
    :try_start_1
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->read()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@e
    move-result-object v0

    #@f
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@11
    .line 91
    sget-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@13
    if-nez v0, :cond_0

    #@15
    .line 93
    new-instance v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@17
    invoke-direct {v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;-><init>()V

    #@1a
    sput-object v0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->currentInstance:Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@1c
    goto :goto_0

    #@1d
    :catchall_0
    move-exception v0

    #@1e
    monitor-exit v1

    #@1f
    throw v0
.end method

.method private log(Z)V
    .locals 7
    .param p1, "force"    # Z

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 208
    if-nez p1, :cond_0

    #@3
    const/16 v3, 0x32

    #@5
    .line 212
    .local v3, "threshold":I
    :cond_0
    monitor-enter p0

    #@6
    .line 213
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    #@8
    .line 214
    .local v0, "hits":I
    iget v1, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    #@a
    .line 216
    .local v1, "misses":I
    add-int v4, v0, v1

    #@c
    if-gt v4, v3, :cond_1

    #@e
    .line 220
    :goto_0
    monitor-exit p0

    #@f
    .line 222
    add-int v4, v0, v1

    #@11
    if-gt v4, v3, :cond_2

    #@13
    .line 243
    :goto_1
    return-void

    #@14
    :cond_1
    const/4 v4, 0x0

    #@15
    .line 217
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    #@17
    const/4 v4, 0x0

    #@18
    .line 218
    iput v4, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    #@1a
    goto :goto_0

    #@1b
    .line 220
    .end local v0    # "hits":I
    .end local v1    # "misses":I
    :catchall_0
    move-exception v4

    #@1c
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1d
    throw v4

    #@1e
    .line 223
    .restart local v0    # "hits":I
    .restart local v1    # "misses":I
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    #@20
    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    #@23
    .line 226
    .local v2, "result":Ljava/lang/StringBuffer;
    if-gtz v0, :cond_3

    #@25
    .line 232
    :goto_2
    if-gtz v1, :cond_4

    #@27
    :goto_3
    const-string/jumbo v4, "|"

    #@2a
    .line 238
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@2d
    const-string/jumbo v4, "c"

    #@30
    .line 240
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@33
    move-result-object v5

    #@34
    const/16 v6, 0x16

    #@36
    invoke-static {v6, v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/Log;->addEvent(SLjava/lang/String;Ljava/lang/String;)Z

    #@39
    goto :goto_1

    #@3a
    :cond_3
    const-string/jumbo v4, "|"

    #@3d
    .line 227
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@40
    const-string/jumbo v4, "f"

    #@43
    .line 228
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@46
    const-string/jumbo v4, "="

    #@49
    .line 229
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@4c
    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@4f
    goto :goto_2

    #@50
    :cond_4
    const-string/jumbo v4, "|"

    #@53
    .line 233
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@56
    const-string/jumbo v4, "m"

    #@59
    .line 234
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@5c
    const-string/jumbo v4, "="

    #@5f
    .line 235
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@62
    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@65
    goto :goto_3
.end method

.method private static read()Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .local v2, "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    const-string/jumbo v4, "Stats"

    #@4
    .line 155
    invoke-static {v4}, Landroid_maps_conflict_avoidance/com/google/common/StaticUtil;->readPreferenceAsDataInput(Ljava/lang/String;)Ljava/io/DataInput;

    #@7
    move-result-object v0

    #@8
    .line 157
    .local v0, "dis":Ljava/io/DataInput;
    if-nez v0, :cond_0

    #@a
    .line 172
    .end local v2    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :goto_0
    return-object v2

    #@b
    .line 159
    .restart local v2    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :cond_0
    :try_start_0
    new-instance v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;

    #@d
    invoke-direct {v3}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 161
    .end local v2    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .local v3, "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :try_start_1
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    #@13
    move-result v4

    #@14
    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    #@16
    .line 162
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    #@19
    move-result v4

    #@1a
    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    #@1c
    .line 163
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    #@1f
    move-result v4

    #@20
    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesDownloaded:I

    #@22
    .line 164
    invoke-interface {v0}, Ljava/io/DataInput;->readInt()I

    #@25
    move-result v4

    #@26
    iput v4, v3, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->bytesUploaded:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    #@28
    move-object v2, v3

    #@29
    .line 169
    .end local v3    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .local v2, "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    goto :goto_0

    #@2a
    .local v2, "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :catch_0
    move-exception v1

    #@2b
    .end local v2    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .local v1, "e":Ljava/io/IOException;
    :goto_1
    const-string/jumbo v4, "STATS"

    #@2e
    .line 166
    invoke-static {v4, v1}, Landroid_maps_conflict_avoidance/com/google/common/Log;->logThrowable(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@31
    const/4 v2, 0x0

    #@32
    .line 168
    .restart local v2    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    invoke-static {}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getInstance()Landroid_maps_conflict_avoidance/com/google/common/Config;

    #@35
    move-result-object v4

    #@36
    invoke-virtual {v4}, Landroid_maps_conflict_avoidance/com/google/common/Config;->getPersistentStore()Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;

    #@39
    move-result-object v4

    #@3a
    const-string/jumbo v5, "Stats"

    #@3d
    invoke-interface {v4, v5}, Landroid_maps_conflict_avoidance/com/google/common/io/PersistentStore;->deleteBlock(Ljava/lang/String;)Z

    #@40
    goto :goto_0

    #@41
    .line 169
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .restart local v3    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    :catch_1
    move-exception v1

    #@42
    move-object v2, v3

    #@43
    .end local v3    # "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    .local v2, "stats":Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;
    goto :goto_1
.end method


# virtual methods
.method public flashCacheHit()V
    .locals 1

    #@0
    .prologue
    .line 104
    monitor-enter p0

    #@1
    .line 105
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHits:I

    #@7
    .line 106
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheHitsSinceLastLog:I

    #@d
    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 108
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->log(Z)V

    #@12
    .line 109
    return-void

    #@13
    .line 107
    :catchall_0
    move-exception v0

    #@14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    throw v0
.end method

.method public flashCacheMiss()V
    .locals 1

    #@0
    .prologue
    .line 115
    monitor-enter p0

    #@1
    .line 116
    :try_start_0
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    #@3
    add-int/lit8 v0, v0, 0x1

    #@5
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMisses:I

    #@7
    .line 117
    iget v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    iput v0, p0, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->flashCacheMissesSinceLastLog:I

    #@d
    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@e
    .line 119
    const/4 v0, 0x0

    #@f
    invoke-direct {p0, v0}, Landroid_maps_conflict_avoidance/com/google/googlenav/Stats;->log(Z)V

    #@12
    .line 120
    return-void

    #@13
    .line 118
    :catchall_0
    move-exception v0

    #@14
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@15
    throw v0
.end method
