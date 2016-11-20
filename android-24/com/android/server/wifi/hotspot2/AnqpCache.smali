.class public Lcom/android/server/wifi/hotspot2/AnqpCache;
.super Ljava/lang/Object;
.source "AnqpCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    }
.end annotation


# static fields
.field private static final CACHE_RECHECK:J = 0xea60L

.field private static final DBG:Z = false

.field private static final STANDARD_ESS:Z = true


# instance fields
.field private final mANQPCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;",
            "Lcom/android/server/wifi/hotspot2/ANQPData;",
            ">;"
        }
    .end annotation
.end field

.field private mClock:Lcom/android/server/wifi/Clock;

.field private mLastSweep:J


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/Clock;)V
    .locals 2
    .param p1, "clock"    # Lcom/android/server/wifi/Clock;

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 26
    iput-object p1, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    #@5
    .line 27
    new-instance v0, Ljava/util/HashMap;

    #@7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@c
    .line 28
    iget-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    #@e
    invoke-virtual {v0}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@11
    move-result-wide v0

    #@12
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    #@14
    .line 25
    return-void
.end method


# virtual methods
.method public clear(ZZ)V
    .locals 14
    .param p1, "all"    # Z
    .param p2, "debug"    # Z

    #@0
    .prologue
    .line 175
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    #@2
    invoke-virtual {v7}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@5
    move-result-wide v4

    #@6
    .line 176
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@8
    monitor-enter v8

    #@9
    .line 177
    if-eqz p1, :cond_1

    #@b
    .line 178
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@d
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    #@10
    .line 179
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    :cond_0
    :goto_0
    monitor-exit v8

    #@13
    .line 173
    return-void

    #@14
    .line 181
    :cond_1
    :try_start_1
    iget-wide v10, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    #@16
    const-wide/32 v12, 0xea60

    #@19
    add-long/2addr v10, v12

    #@1a
    cmp-long v7, v4, v10

    #@1c
    if-lez v7, :cond_0

    #@1e
    .line 182
    new-instance v6, Ljava/util/ArrayList;

    #@20
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@23
    .line 183
    .local v6, "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@25
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@28
    move-result-object v7

    #@29
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2c
    move-result-object v1

    #@2d
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@30
    move-result v7

    #@31
    if-eqz v7, :cond_3

    #@33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Ljava/util/Map$Entry;

    #@39
    .line 184
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3c
    move-result-object v7

    #@3d
    check-cast v7, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@3f
    invoke-virtual {v7, v4, v5}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    #@42
    move-result v7

    #@43
    if-eqz v7, :cond_2

    #@45
    .line 185
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@48
    move-result-object v7

    #@49
    check-cast v7, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@4b
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4e
    goto :goto_1

    #@4f
    .line 176
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :catchall_0
    move-exception v7

    #@50
    monitor-exit v8

    #@51
    throw v7

    #@52
    .line 188
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@55
    move-result-object v3

    #@56
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@59
    move-result v7

    #@5a
    if-eqz v7, :cond_5

    #@5c
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5f
    move-result-object v2

    #@60
    check-cast v2, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@62
    .line 189
    .local v2, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@64
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@67
    .line 190
    if-eqz p2, :cond_4

    #@69
    .line 191
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    #@6c
    move-result-object v7

    #@6d
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@70
    move-result-object v7

    #@71
    new-instance v9, Ljava/lang/StringBuilder;

    #@73
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@76
    const-string/jumbo v10, "Retired "

    #@79
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7c
    move-result-object v9

    #@7d
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@80
    move-result-object v9

    #@81
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@84
    move-result-object v9

    #@85
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@88
    goto :goto_2

    #@89
    .line 194
    .end local v2    # "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    :cond_5
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@8b
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v3, "Last sweep "

    #@8
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v2

    #@c
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    #@e
    invoke-virtual {v3}, Lcom/android/server/wifi/Clock;->currentTimeMillis()J

    #@11
    move-result-wide v4

    #@12
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    #@14
    sub-long/2addr v4, v6

    #@15
    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@18
    move-result-object v3

    #@19
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v2

    #@1d
    const-string/jumbo v3, " ago."

    #@20
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v2

    #@24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@2b
    .line 201
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@2d
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@30
    move-result-object v2

    #@31
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@34
    move-result-object v1

    #@35
    .local v1, "anqpData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@38
    move-result v2

    #@39
    if-eqz v2, :cond_0

    #@3b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3e
    move-result-object v0

    #@3f
    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@41
    .line 202
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    const/4 v2, 0x0

    #@42
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@49
    goto :goto_0

    #@4a
    .line 199
    .end local v0    # "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    return-void
.end method

.method public getEntry(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Lcom/android/server/wifi/hotspot2/ANQPData;
    .locals 5
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 165
    const/4 v3, 0x1

    #@2
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@5
    move-result-object v1

    #@6
    .line 166
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@8
    monitor-enter v3

    #@9
    .line 167
    :try_start_0
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@b
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    monitor-exit v3

    #@12
    .line 170
    if-eqz v0, :cond_0

    #@14
    invoke-virtual {v0, p1}, Lcom/android/server/wifi/hotspot2/ANQPData;->isValid(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z

    #@17
    move-result v3

    #@18
    if-eqz v3, :cond_0

    #@1a
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :goto_0
    return-object v0

    #@1b
    .line 166
    :catchall_0
    move-exception v2

    #@1c
    monitor-exit v3

    #@1d
    throw v2

    #@1e
    .restart local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :cond_0
    move-object v0, v2

    #@1f
    .line 170
    goto :goto_0
.end method

.method public initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .local p2, "querySet":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    const/4 v3, 0x1

    #@1
    .line 125
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@4
    move-result-object v1

    #@5
    .line 127
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@7
    monitor-enter v4

    #@8
    .line 128
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@a
    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@10
    .line 129
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 130
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@1a
    new-instance v5, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@1c
    iget-object v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    #@1e
    invoke-direct {v5, v6, p1, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V

    #@21
    invoke-virtual {v3, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@24
    monitor-exit v4

    #@25
    .line 131
    return-object p2

    #@26
    .line 134
    :cond_1
    :try_start_1
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;->disjoint(Ljava/util/List;)Ljava/util/List;

    #@29
    move-result-object v2

    #@2a
    .line 135
    .local v2, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    #@2d
    move-result-object v3

    #@2e
    invoke-static {v3}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@31
    move-result-object v3

    #@32
    .line 136
    const-string/jumbo v5, "New ANQP elements for BSSID %012x: %s"

    #@35
    const/4 v6, 0x2

    #@36
    new-array v6, v6, [Ljava/lang/Object;

    #@38
    .line 137
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@3b
    move-result-wide v8

    #@3c
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3f
    move-result-object v7

    #@40
    const/4 v8, 0x0

    #@41
    aput-object v7, v6, v8

    #@43
    const/4 v7, 0x1

    #@44
    aput-object v2, v6, v7

    #@46
    .line 136
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@49
    move-result-object v5

    #@4a
    .line 135
    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4d
    monitor-exit v4

    #@4e
    .line 138
    return-object v2

    #@4f
    .line 127
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    .end local v2    # "newList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;>;"
    :catchall_0
    move-exception v3

    #@50
    monitor-exit v4

    #@51
    throw v3
.end method

.method public update(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V
    .locals 4
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wifi/hotspot2/NetworkDetail;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/wifi/anqp/Constants$ANQPElementType;",
            "Lcom/android/server/wifi/anqp/ANQPElement;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 146
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x1

    #@1
    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@4
    move-result-object v1

    #@5
    .line 150
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@7
    monitor-enter v3

    #@8
    .line 151
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@a
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@10
    .line 152
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    #@12
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->hasData()Z

    #@15
    move-result v2

    #@16
    if-eqz v2, :cond_0

    #@18
    .line 153
    invoke-virtual {v0, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;->merge(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    :goto_0
    monitor-exit v3

    #@1c
    .line 144
    return-void

    #@1d
    .line 156
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@1f
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mClock:Lcom/android/server/wifi/Clock;

    #@21
    invoke-direct {v0, v2, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/Clock;Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    #@24
    .line 157
    .restart local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@26
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@29
    goto :goto_0

    #@2a
    .line 150
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    #@2b
    monitor-exit v3

    #@2c
    throw v2
.end method
