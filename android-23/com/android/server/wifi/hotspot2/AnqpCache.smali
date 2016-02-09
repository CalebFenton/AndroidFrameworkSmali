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

.field private mLastSweep:J


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 22
    new-instance v0, Ljava/util/HashMap;

    #@5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    #@8
    iput-object v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@a
    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@d
    move-result-wide v0

    #@e
    iput-wide v0, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    #@10
    .line 21
    return-void
.end method


# virtual methods
.method public clear(ZZ)V
    .locals 14
    .param p1, "all"    # Z
    .param p2, "debug"    # Z

    #@0
    .prologue
    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@3
    move-result-wide v4

    #@4
    .line 161
    .local v4, "now":J
    iget-object v8, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@6
    monitor-enter v8

    #@7
    .line 162
    if-eqz p1, :cond_1

    #@9
    .line 163
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@b
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    #@e
    .line 164
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    :cond_0
    :goto_0
    monitor-exit v8

    #@11
    .line 159
    return-void

    #@12
    .line 166
    :cond_1
    :try_start_1
    iget-wide v10, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    #@14
    const-wide/32 v12, 0xea60

    #@17
    add-long/2addr v10, v12

    #@18
    cmp-long v7, v4, v10

    #@1a
    if-lez v7, :cond_0

    #@1c
    .line 167
    new-instance v6, Ljava/util/ArrayList;

    #@1e
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    #@21
    .line 168
    .local v6, "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@23
    invoke-virtual {v7}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    #@26
    move-result-object v7

    #@27
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@2a
    move-result-object v1

    #@2b
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@2e
    move-result v7

    #@2f
    if-eqz v7, :cond_3

    #@31
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@34
    move-result-object v0

    #@35
    check-cast v0, Ljava/util/Map$Entry;

    #@37
    .line 169
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3a
    move-result-object v7

    #@3b
    check-cast v7, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@3d
    invoke-virtual {v7, v4, v5}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired(J)Z

    #@40
    move-result v7

    #@41
    if-eqz v7, :cond_2

    #@43
    .line 170
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@46
    move-result-object v7

    #@47
    check-cast v7, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@49
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4c
    goto :goto_1

    #@4d
    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;Lcom/android/server/wifi/hotspot2/ANQPData;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :catchall_0
    move-exception v7

    #@4e
    monitor-exit v8

    #@4f
    throw v7

    #@50
    .line 173
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v6    # "retirees":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;>;"
    :cond_3
    :try_start_2
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@53
    move-result-object v3

    #@54
    .local v3, "key$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@57
    move-result v7

    #@58
    if-eqz v7, :cond_5

    #@5a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@5d
    move-result-object v2

    #@5e
    check-cast v2, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@60
    .line 174
    .local v2, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v7, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@62
    invoke-virtual {v7, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@65
    .line 175
    if-eqz p2, :cond_4

    #@67
    .line 176
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    #@6a
    move-result-object v7

    #@6b
    invoke-static {v7}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@6e
    move-result-object v7

    #@6f
    new-instance v9, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v10, "Retired "

    #@77
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v9

    #@83
    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@86
    goto :goto_2

    #@87
    .line 179
    .end local v2    # "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    :cond_5
    iput-wide v4, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@89
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "out"    # Ljava/io/PrintWriter;

    #@0
    .prologue
    .line 185
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
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@f
    move-result-wide v4

    #@10
    iget-wide v6, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mLastSweep:J

    #@12
    sub-long/2addr v4, v6

    #@13
    invoke-static {v4, v5}, Lcom/android/server/wifi/hotspot2/Utils;->toHMS(J)Ljava/lang/String;

    #@16
    move-result-object v3

    #@17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v2

    #@1b
    const-string/jumbo v3, " ago."

    #@1e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@29
    .line 186
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@2b
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    #@2e
    move-result-object v2

    #@2f
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@32
    move-result-object v1

    #@33
    .local v1, "anqpData$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@36
    move-result v2

    #@37
    if-eqz v2, :cond_0

    #@39
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@3c
    move-result-object v0

    #@3d
    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@3f
    .line 187
    .local v0, "anqpData":Lcom/android/server/wifi/hotspot2/ANQPData;
    const/4 v2, 0x0

    #@40
    invoke-virtual {v0, v2}, Lcom/android/server/wifi/hotspot2/ANQPData;->toString(Z)Ljava/lang/String;

    #@43
    move-result-object v2

    #@44
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@47
    goto :goto_0

    #@48
    .line 184
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
    .line 151
    const/4 v3, 0x1

    #@2
    invoke-static {p1, v3}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@5
    move-result-object v1

    #@6
    .line 152
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@8
    monitor-enter v3

    #@9
    .line 153
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
    .line 156
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
    .line 152
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
    .line 156
    goto :goto_0
.end method

.method public initiate(Lcom/android/server/wifi/hotspot2/NetworkDetail;)Z
    .locals 9
    .param p1, "network"    # Lcom/android/server/wifi/hotspot2/NetworkDetail;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    const/4 v5, 0x1

    #@2
    .line 119
    invoke-static {p1, v5}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@5
    move-result-object v1

    #@6
    .line 121
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@8
    monitor-enter v3

    #@9
    .line 122
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@b
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@e
    move-result-object v0

    #@f
    check-cast v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@11
    .line 123
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    if-eqz v0, :cond_0

    #@13
    invoke-virtual {v0}, Lcom/android/server/wifi/hotspot2/ANQPData;->expired()Z

    #@16
    move-result v2

    #@17
    if-eqz v2, :cond_1

    #@19
    .line 124
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@1b
    new-instance v4, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@1d
    invoke-direct {v4, p1, v0}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Lcom/android/server/wifi/hotspot2/ANQPData;)V

    #@20
    invoke-virtual {v2, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@23
    monitor-exit v3

    #@24
    .line 125
    return v5

    #@25
    .line 128
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/hotspot2/AnqpCache;->getClass()Ljava/lang/Class;

    #@28
    move-result-object v2

    #@29
    invoke-static {v2}, Lcom/android/server/wifi/hotspot2/Utils;->hs2LogTag(Ljava/lang/Class;)Ljava/lang/String;

    #@2c
    move-result-object v2

    #@2d
    .line 129
    const-string/jumbo v4, "BSSID %012x already in cache: %s"

    #@30
    const/4 v5, 0x2

    #@31
    new-array v5, v5, [Ljava/lang/Object;

    #@33
    invoke-virtual {p1}, Lcom/android/server/wifi/hotspot2/NetworkDetail;->getBSSID()J

    #@36
    move-result-wide v6

    #@37
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@3a
    move-result-object v6

    #@3b
    const/4 v7, 0x0

    #@3c
    aput-object v6, v5, v7

    #@3e
    const/4 v6, 0x1

    #@3f
    aput-object v0, v5, v6

    #@41
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    #@44
    move-result-object v4

    #@45
    .line 128
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@48
    monitor-exit v3

    #@49
    .line 130
    return v8

    #@4a
    .line 121
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    #@4b
    monitor-exit v3

    #@4c
    throw v2
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
    .line 138
    .local p2, "anqpElements":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/wifi/anqp/Constants$ANQPElementType;Lcom/android/server/wifi/anqp/ANQPElement;>;"
    const/4 v2, 0x1

    #@1
    invoke-static {p1, v2}, Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;->-wrap0(Lcom/android/server/wifi/hotspot2/NetworkDetail;Z)Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;

    #@4
    move-result-object v1

    #@5
    .line 142
    .local v1, "key":Lcom/android/server/wifi/hotspot2/AnqpCache$CacheKey;
    iget-object v3, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@7
    monitor-enter v3

    #@8
    .line 143
    :try_start_0
    new-instance v0, Lcom/android/server/wifi/hotspot2/ANQPData;

    #@a
    invoke-direct {v0, p1, p2}, Lcom/android/server/wifi/hotspot2/ANQPData;-><init>(Lcom/android/server/wifi/hotspot2/NetworkDetail;Ljava/util/Map;)V

    #@d
    .line 144
    .local v0, "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    iget-object v2, p0, Lcom/android/server/wifi/hotspot2/AnqpCache;->mANQPCache:Ljava/util/HashMap;

    #@f
    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@12
    monitor-exit v3

    #@13
    .line 136
    return-void

    #@14
    .line 142
    .end local v0    # "data":Lcom/android/server/wifi/hotspot2/ANQPData;
    :catchall_0
    move-exception v2

    #@15
    monitor-exit v3

    #@16
    throw v2
.end method
