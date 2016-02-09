.class Lcom/android/server/net/DnsServerRepository;
.super Ljava/lang/Object;
.source "NetlinkTracker.java"


# static fields
.field public static final NUM_CURRENT_SERVERS:I = 0x3

.field public static final NUM_SERVERS:I = 0xc

.field public static final TAG:Ljava/lang/String; = "DnsServerRepository"


# instance fields
.field private mAllServers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private mIndex:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/net/InetAddress;",
            "Lcom/android/server/net/DnsServerEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    #@0
    .prologue
    const/16 v1, 0xc

    #@2
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 277
    new-instance v0, Ljava/util/HashSet;

    #@7
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@a
    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    #@c
    .line 278
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@11
    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@13
    .line 279
    new-instance v0, Ljava/util/HashMap;

    #@15
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    #@18
    iput-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    #@1a
    .line 276
    return-void
.end method

.method private declared-synchronized updateCurrentServers()Z
    .locals 10

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 337
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 338
    .local v4, "now":J
    const/4 v0, 0x0

    #@6
    .line 341
    .local v0, "changed":Z
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@8
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    #@b
    move-result v7

    #@c
    add-int/lit8 v3, v7, -0x1

    #@e
    .end local v0    # "changed":Z
    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_1

    #@10
    .line 342
    const/16 v7, 0xc

    #@12
    if-ge v3, v7, :cond_0

    #@14
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@16
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v7

    #@1a
    check-cast v7, Lcom/android/server/net/DnsServerEntry;

    #@1c
    iget-wide v8, v7, Lcom/android/server/net/DnsServerEntry;->expiry:J

    #@1e
    cmp-long v7, v8, v4

    #@20
    if-gez v7, :cond_1

    #@22
    .line 343
    :cond_0
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@27
    move-result-object v6

    #@28
    check-cast v6, Lcom/android/server/net/DnsServerEntry;

    #@2a
    .line 344
    .local v6, "removed":Lcom/android/server/net/DnsServerEntry;
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    #@2c
    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    #@2e
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@31
    .line 345
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    #@33
    iget-object v8, v6, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    #@35
    invoke-interface {v7, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@38
    move-result v7

    #@39
    or-int/2addr v0, v7

    #@3a
    .line 341
    .local v0, "changed":Z
    add-int/lit8 v3, v3, -0x1

    #@3c
    goto :goto_0

    #@3d
    .line 354
    .end local v0    # "changed":Z
    .end local v6    # "removed":Lcom/android/server/net/DnsServerEntry;
    :cond_1
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@3f
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v2

    #@43
    .local v2, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v7

    #@47
    if-eqz v7, :cond_2

    #@49
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v1

    #@4d
    check-cast v1, Lcom/android/server/net/DnsServerEntry;

    #@4f
    .line 355
    .local v1, "entry":Lcom/android/server/net/DnsServerEntry;
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    #@51
    invoke-interface {v7}, Ljava/util/Set;->size()I

    #@54
    move-result v7

    #@55
    const/4 v8, 0x3

    #@56
    if-ge v7, v8, :cond_2

    #@58
    .line 356
    iget-object v7, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    #@5a
    iget-object v8, v1, Lcom/android/server/net/DnsServerEntry;->address:Ljava/net/InetAddress;

    #@5c
    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@5f
    move-result v7

    #@60
    or-int/2addr v0, v7

    #@61
    .restart local v0    # "changed":Z
    goto :goto_1

    #@62
    .end local v0    # "changed":Z
    .end local v1    # "entry":Lcom/android/server/net/DnsServerEntry;
    :cond_2
    monitor-exit p0

    #@63
    .line 361
    return v0

    #@64
    .end local v2    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .end local v4    # "now":J
    :catchall_0
    move-exception v7

    #@65
    monitor-exit p0

    #@66
    throw v7
.end method

.method private declared-synchronized updateExistingEntry(Ljava/net/InetAddress;J)Z
    .locals 2
    .param p1, "address"    # Ljava/net/InetAddress;
    .param p2, "expiry"    # J

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 328
    :try_start_0
    iget-object v1, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    #@3
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Lcom/android/server/net/DnsServerEntry;

    #@9
    .line 329
    .local v0, "existing":Lcom/android/server/net/DnsServerEntry;
    if-eqz v0, :cond_0

    #@b
    .line 330
    iput-wide p2, v0, Lcom/android/server/net/DnsServerEntry;->expiry:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@d
    .line 331
    const/4 v1, 0x1

    #@e
    monitor-exit p0

    #@f
    return v1

    #@10
    .line 333
    :cond_0
    const/4 v1, 0x0

    #@11
    monitor-exit p0

    #@12
    return v1

    #@13
    .end local v0    # "existing":Lcom/android/server/net/DnsServerEntry;
    :catchall_0
    move-exception v1

    #@14
    monitor-exit p0

    #@15
    throw v1
.end method


# virtual methods
.method public declared-synchronized addServers(J[Ljava/lang/String;)Z
    .locals 11
    .param p1, "lifetime"    # J
    .param p3, "addresses"    # [Ljava/lang/String;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 296
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v6

    #@5
    .line 297
    .local v6, "now":J
    const-wide/16 v8, 0x3e8

    #@7
    mul-long/2addr v8, p1

    #@8
    add-long v4, v6, v8

    #@a
    .line 301
    .local v4, "expiry":J
    const/4 v8, 0x0

    #@b
    array-length v9, p3

    #@c
    :goto_0
    if-ge v8, v9, :cond_1

    #@e
    aget-object v1, p3, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@10
    .line 304
    .local v1, "addressString":Ljava/lang/String;
    :try_start_1
    invoke-static {v1}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@13
    move-result-object v0

    #@14
    .line 309
    .local v0, "address":Ljava/net/InetAddress;
    :try_start_2
    invoke-direct {p0, v0, v4, v5}, Lcom/android/server/net/DnsServerRepository;->updateExistingEntry(Ljava/net/InetAddress;J)Z

    #@17
    move-result v10

    #@18
    if-nez v10, :cond_0

    #@1a
    .line 312
    cmp-long v10, v4, v6

    #@1c
    if-lez v10, :cond_0

    #@1e
    .line 313
    new-instance v2, Lcom/android/server/net/DnsServerEntry;

    #@20
    invoke-direct {v2, v0, v4, v5}, Lcom/android/server/net/DnsServerEntry;-><init>(Ljava/net/InetAddress;J)V

    #@23
    .line 314
    .local v2, "entry":Lcom/android/server/net/DnsServerEntry;
    iget-object v10, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@25
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@28
    .line 315
    iget-object v10, p0, Lcom/android/server/net/DnsServerRepository;->mIndex:Ljava/util/HashMap;

    #@2a
    invoke-virtual {v10, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2d
    .line 301
    .end local v0    # "address":Ljava/net/InetAddress;
    .end local v2    # "entry":Lcom/android/server/net/DnsServerEntry;
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 305
    :catch_0
    move-exception v3

    #@31
    .local v3, "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_1

    #@32
    .line 321
    .end local v1    # "addressString":Ljava/lang/String;
    .end local v3    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v8, p0, Lcom/android/server/net/DnsServerRepository;->mAllServers:Ljava/util/ArrayList;

    #@34
    invoke-static {v8}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    #@37
    .line 324
    invoke-direct {p0}, Lcom/android/server/net/DnsServerRepository;->updateCurrentServers()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3a
    move-result v8

    #@3b
    monitor-exit p0

    #@3c
    return v8

    #@3d
    .end local v4    # "expiry":J
    .end local v6    # "now":J
    :catchall_0
    move-exception v8

    #@3e
    monitor-exit p0

    #@3f
    throw v8
.end method

.method public declared-synchronized setDnsServersOn(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "lp"    # Landroid/net/LinkProperties;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/DnsServerRepository;->mCurrentServers:Ljava/util/Set;

    #@3
    invoke-virtual {p1, v0}, Landroid/net/LinkProperties;->setDnsServers(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit p0

    #@7
    .line 283
    return-void

    #@8
    :catchall_0
    move-exception v0

    #@9
    monitor-exit p0

    #@a
    throw v0
.end method
