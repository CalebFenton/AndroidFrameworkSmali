.class public Landroid/net/http/RequestQueue;
.super Ljava/lang/Object;
.source "RequestQueue.java"

# interfaces
.implements Landroid/net/http/RequestFeeder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/http/RequestQueue$ActivePool;,
        Landroid/net/http/RequestQueue$SyncFeeder;,
        Landroid/net/http/RequestQueue$ConnectionManager;
    }
.end annotation


# static fields
.field private static final CONNECTION_COUNT:I = 0x4


# instance fields
.field private final mActivePool:Landroid/net/http/RequestQueue$ActivePool;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mPending:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mProxyHost:Lorg/apache/http/HttpHost;


# direct methods
.method static synthetic -get0(Landroid/net/http/RequestQueue;)Landroid/content/Context;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/net/http/RequestQueue;)Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/http/RequestQueue;Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 1
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Landroid/net/http/RequestQueue;)V
    .locals 0

    #@0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V

    #@3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 192
    const/4 v0, 0x4

    #@1
    invoke-direct {p0, p1, v0}, Landroid/net/http/RequestQueue;-><init>(Landroid/content/Context;I)V

    #@4
    .line 191
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectionCount"    # I

    #@0
    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 54
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@6
    .line 206
    iput-object p1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@8
    .line 208
    new-instance v0, Ljava/util/LinkedHashMap;

    #@a
    const/16 v1, 0x20

    #@c
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    #@f
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@11
    .line 210
    new-instance v0, Landroid/net/http/RequestQueue$ActivePool;

    #@13
    invoke-direct {v0, p0, p2}, Landroid/net/http/RequestQueue$ActivePool;-><init>(Landroid/net/http/RequestQueue;I)V

    #@16
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@18
    .line 211
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@1a
    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startup()V

    #@1d
    .line 214
    const-string/jumbo v0, "connectivity"

    #@20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    .line 213
    check-cast v0, Landroid/net/ConnectivityManager;

    #@26
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@28
    .line 205
    return-void
.end method

.method private determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;
    .locals 2
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@2
    if-eqz v0, :cond_0

    #@4
    const-string/jumbo v0, "https"

    #@7
    invoke-virtual {p1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    #@a
    move-result-object v1

    #@b
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v0

    #@f
    if-eqz v0, :cond_1

    #@11
    .end local p1    # "host":Lorg/apache/http/HttpHost;
    :cond_0
    :goto_0
    return-object p1

    #@12
    .line 398
    .restart local p1    # "host":Lorg/apache/http/HttpHost;
    :cond_1
    iget-object p1, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@14
    goto :goto_0
.end method

.method private removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Lorg/apache/http/HttpHost;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/net/http/Request;",
            ">;>;)",
            "Landroid/net/http/Request;"
        }
    .end annotation

    #@0
    .prologue
    .line 518
    .local p1, "requestQueue":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    const/4 v3, 0x0

    #@1
    .line 519
    .local v3, "ret":Landroid/net/http/Request;
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@4
    move-result-object v4

    #@5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .line 520
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v4

    #@d
    if-eqz v4, :cond_0

    #@f
    .line 521
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/Map$Entry;

    #@15
    .line 522
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@18
    move-result-object v2

    #@19
    check-cast v2, Ljava/util/LinkedList;

    #@1b
    .line 523
    .local v2, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@1e
    move-result-object v3

    #@1f
    .end local v3    # "ret":Landroid/net/http/Request;
    check-cast v3, Landroid/net/http/Request;

    #@21
    .line 524
    .local v3, "ret":Landroid/net/http/Request;
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    #@24
    move-result v4

    #@25
    if-eqz v4, :cond_0

    #@27
    .line 525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2a
    move-result-object v4

    #@2b
    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    .line 528
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v2    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v3    # "ret":Landroid/net/http/Request;
    :cond_0
    return-object v3
.end method

.method private declared-synchronized setProxyConfig()V
    .locals 5

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 256
    :try_start_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mConnectivityManager:Landroid/net/ConnectivityManager;

    #@3
    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    #@6
    move-result-object v1

    #@7
    .line 257
    .local v1, "info":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    #@9
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    #@c
    move-result v2

    #@d
    const/4 v3, 0x1

    #@e
    if-ne v2, v3, :cond_0

    #@10
    .line 258
    const/4 v2, 0x0

    #@11
    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    :goto_0
    monitor-exit p0

    #@14
    .line 255
    return-void

    #@15
    .line 260
    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@17
    invoke-static {v2}, Landroid/net/Proxy;->getHost(Landroid/content/Context;)Ljava/lang/String;

    #@1a
    move-result-object v0

    #@1b
    .line 262
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_1

    #@1d
    .line 263
    const/4 v2, 0x0

    #@1e
    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@20
    goto :goto_0

    #@21
    .end local v0    # "host":Ljava/lang/String;
    .end local v1    # "info":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v2

    #@22
    monitor-exit p0

    #@23
    throw v2

    #@24
    .line 265
    .restart local v0    # "host":Ljava/lang/String;
    .restart local v1    # "info":Landroid/net/NetworkInfo;
    :cond_1
    :try_start_2
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@26
    invoke-virtual {v2}, Landroid/net/http/RequestQueue$ActivePool;->disablePersistence()V

    #@29
    .line 266
    new-instance v2, Lorg/apache/http/HttpHost;

    #@2b
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@2d
    invoke-static {v3}, Landroid/net/Proxy;->getPort(Landroid/content/Context;)I

    #@30
    move-result v3

    #@31
    const-string/jumbo v4, "http"

    #@34
    invoke-direct {v2, v0, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@37
    iput-object v2, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@39
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disablePlatformNotifications()V
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 245
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 246
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@7
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    #@9
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    #@c
    .line 247
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    :cond_0
    monitor-exit p0

    #@10
    .line 242
    return-void

    #@11
    :catchall_0
    move-exception v0

    #@12
    monitor-exit p0

    #@13
    throw v0
.end method

.method declared-synchronized dump()V
    .locals 12

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 413
    :try_start_0
    const-string/jumbo v10, "dump()"

    #@4
    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    #@7
    .line 414
    new-instance v2, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    .line 415
    .local v2, "dump":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    #@d
    .line 420
    .local v0, "count":I
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@f
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@12
    move-result v10

    #@13
    if-nez v10, :cond_2

    #@15
    .line 421
    iget-object v10, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@17
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    #@1a
    move-result-object v10

    #@1b
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@1e
    move-result-object v5

    #@1f
    .local v5, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    move v1, v0

    #@20
    .line 422
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@23
    move-result v10

    #@24
    if-eqz v10, :cond_1

    #@26
    .line 423
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@29
    move-result-object v3

    #@2a
    check-cast v3, Ljava/util/Map$Entry;

    #@2c
    .line 424
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@2f
    move-result-object v10

    #@30
    check-cast v10, Lorg/apache/http/HttpHost;

    #@32
    invoke-virtual {v10}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    #@35
    move-result-object v4

    #@36
    .line 425
    .local v4, "hostName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    #@38
    new-instance v10, Ljava/lang/StringBuilder;

    #@3a
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3d
    const-string/jumbo v11, "p"

    #@40
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@43
    move-result-object v10

    #@44
    add-int/lit8 v0, v1, 0x1

    #@46
    .end local v1    # "count":I
    .restart local v0    # "count":I
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@49
    move-result-object v10

    #@4a
    const-string/jumbo v11, " "

    #@4d
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@50
    move-result-object v10

    #@51
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@54
    move-result-object v10

    #@55
    const-string/jumbo v11, " "

    #@58
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v10

    #@5c
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v10

    #@60
    invoke-direct {v6, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    #@63
    .line 427
    .local v6, "line":Ljava/lang/StringBuilder;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@66
    move-result-object v8

    #@67
    check-cast v8, Ljava/util/LinkedList;

    #@69
    .line 428
    .local v8, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    const/4 v10, 0x0

    #@6a
    invoke-virtual {v8, v10}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@6d
    move-result-object v7

    #@6e
    .line 429
    .local v7, "reqIter":Ljava/util/ListIterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@71
    move-result v10

    #@72
    if-eqz v10, :cond_0

    #@74
    .line 430
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@77
    move-result-object v9

    #@78
    check-cast v9, Landroid/net/http/Request;

    #@7a
    .line 431
    .local v9, "request":Landroid/net/http/Request;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@7d
    move-result-object v10

    #@7e
    const-string/jumbo v11, " "

    #@81
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@84
    goto :goto_1

    #@85
    .end local v0    # "count":I
    .end local v2    # "dump":Ljava/lang/StringBuilder;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4    # "hostName":Ljava/lang/String;
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .end local v6    # "line":Ljava/lang/StringBuilder;
    .end local v7    # "reqIter":Ljava/util/ListIterator;
    .end local v8    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v9    # "request":Landroid/net/http/Request;
    :catchall_0
    move-exception v10

    #@86
    monitor-exit p0

    #@87
    throw v10

    #@88
    .line 433
    .restart local v0    # "count":I
    .restart local v2    # "dump":Ljava/lang/StringBuilder;
    .restart local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .restart local v4    # "hostName":Ljava/lang/String;
    .restart local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v6    # "line":Ljava/lang/StringBuilder;
    .restart local v7    # "reqIter":Ljava/util/ListIterator;
    .restart local v8    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    #@8b
    .line 434
    const-string/jumbo v10, "\n"

    #@8e
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@91
    move v1, v0

    #@92
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    #@93
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;"
    .end local v4    # "hostName":Ljava/lang/String;
    .end local v6    # "line":Ljava/lang/StringBuilder;
    .end local v7    # "reqIter":Ljava/util/ListIterator;
    .end local v8    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_1
    move v0, v1

    #@94
    .line 437
    .end local v1    # "count":I
    .end local v5    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Lorg/apache/http/HttpHost;Ljava/util/LinkedList<Landroid/net/http/Request;>;>;>;"
    .restart local v0    # "count":I
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@97
    move-result-object v10

    #@98
    invoke-static {v10}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9b
    monitor-exit p0

    #@9c
    .line 412
    return-void
.end method

.method public declared-synchronized enablePlatformNotifications()V
    .locals 4

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 223
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    #@3
    if-nez v0, :cond_0

    #@5
    .line 225
    new-instance v0, Landroid/net/http/RequestQueue$1;

    #@7
    invoke-direct {v0, p0}, Landroid/net/http/RequestQueue$1;-><init>(Landroid/net/http/RequestQueue;)V

    #@a
    .line 224
    iput-object v0, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    #@c
    .line 231
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@e
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mProxyChangeReceiver:Landroid/content/BroadcastReceiver;

    #@10
    .line 232
    new-instance v2, Landroid/content/IntentFilter;

    #@12
    const-string/jumbo v3, "android.intent.action.PROXY_CHANGE"

    #@15
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    #@18
    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    #@1b
    .line 235
    :cond_0
    invoke-direct {p0}, Landroid/net/http/RequestQueue;->setProxyConfig()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    monitor-exit p0

    #@1f
    .line 220
    return-void

    #@20
    :catchall_0
    move-exception v0

    #@21
    monitor-exit p0

    #@22
    throw v0
.end method

.method public getProxyHost()Lorg/apache/http/HttpHost;
    .locals 1

    #@0
    .prologue
    .line 276
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@2
    return-object v0
.end method

.method public declared-synchronized getRequest()Landroid/net/http/Request;
    .locals 2

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 444
    const/4 v0, 0x0

    #@2
    .line 446
    .local v0, "ret":Landroid/net/http/Request;
    :try_start_0
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@4
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    #@7
    move-result v1

    #@8
    if-nez v1, :cond_0

    #@a
    .line 447
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@c
    invoke-direct {p0, v1}, Landroid/net/http/RequestQueue;->removeFirst(Ljava/util/LinkedHashMap;)Landroid/net/http/Request;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@f
    move-result-object v0

    #@10
    .end local v0    # "ret":Landroid/net/http/Request;
    :cond_0
    monitor-exit p0

    #@11
    .line 450
    return-object v0

    #@12
    .restart local v0    # "ret":Landroid/net/http/Request;
    :catchall_0
    move-exception v1

    #@13
    monitor-exit p0

    #@14
    throw v1
.end method

.method public declared-synchronized getRequest(Lorg/apache/http/HttpHost;)Landroid/net/http/Request;
    .locals 4
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 457
    const/4 v2, 0x0

    #@2
    .line 459
    .local v2, "ret":Landroid/net/http/Request;
    :try_start_0
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@4
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@7
    move-result v3

    #@8
    if-eqz v3, :cond_0

    #@a
    .line 460
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@c
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    move-result-object v1

    #@10
    check-cast v1, Ljava/util/LinkedList;

    #@12
    .line 461
    .local v1, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@15
    move-result-object v3

    #@16
    move-object v0, v3

    #@17
    check-cast v0, Landroid/net/http/Request;

    #@19
    move-object v2, v0

    #@1a
    .line 462
    .local v2, "ret":Landroid/net/http/Request;
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    #@1d
    move-result v3

    #@1e
    if-eqz v3, :cond_0

    #@20
    .line 463
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@22
    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    .end local v2    # "ret":Landroid/net/http/Request;
    :cond_0
    monitor-exit p0

    #@26
    .line 467
    return-object v2

    #@27
    :catchall_0
    move-exception v3

    #@28
    monitor-exit p0

    #@29
    throw v3
.end method

.method public declared-synchronized haveRequest(Lorg/apache/http/HttpHost;)Z
    .locals 1
    .param p1, "host"    # Lorg/apache/http/HttpHost;

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 474
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@3
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    monitor-exit p0

    #@8
    return v0

    #@9
    :catchall_0
    move-exception v0

    #@a
    monitor-exit p0

    #@b
    throw v0
.end method

.method public queueRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 12
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    #@0
    .prologue
    .line 317
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p5, :cond_0

    #@2
    .line 318
    new-instance p5, Landroid/net/http/LoggingEventHandler;

    #@4
    .end local p5    # "eventHandler":Landroid/net/http/EventHandler;
    invoke-direct/range {p5 .. p5}, Landroid/net/http/LoggingEventHandler;-><init>()V

    #@7
    .line 323
    .restart local p5    # "eventHandler":Landroid/net/http/EventHandler;
    :cond_0
    new-instance v2, Lorg/apache/http/HttpHost;

    #@9
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getHost()Ljava/lang/String;

    #@c
    move-result-object v1

    #@d
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getPort()I

    #@10
    move-result v3

    #@11
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getScheme()Ljava/lang/String;

    #@14
    move-result-object v4

    #@15
    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@18
    .line 326
    .local v2, "httpHost":Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    #@1a
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@1c
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getPath()Ljava/lang/String;

    #@1f
    move-result-object v4

    #@20
    move-object v1, p3

    #@21
    move-object/from16 v5, p6

    #@23
    move/from16 v6, p7

    #@25
    move-object/from16 v7, p5

    #@27
    move-object/from16 v8, p4

    #@29
    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    #@2c
    .line 329
    .local v0, "req":Landroid/net/http/Request;
    const/4 v1, 0x0

    #@2d
    invoke-virtual {p0, v0, v1}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    #@30
    .line 331
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@32
    invoke-static {v1}, Landroid/net/http/RequestQueue$ActivePool;->-get0(Landroid/net/http/RequestQueue$ActivePool;)I

    #@35
    move-result v3

    #@36
    add-int/lit8 v3, v3, 0x1

    #@38
    invoke-static {v1, v3}, Landroid/net/http/RequestQueue$ActivePool;->-set0(Landroid/net/http/RequestQueue$ActivePool;I)I

    #@3b
    .line 334
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@3d
    invoke-virtual {v1}, Landroid/net/http/RequestQueue$ActivePool;->startConnectionThread()V

    #@40
    .line 336
    new-instance v3, Landroid/net/http/RequestHandle;

    #@42
    move-object v4, p0

    #@43
    move-object v5, p1

    #@44
    move-object v6, p2

    #@45
    move-object v7, p3

    #@46
    move-object/from16 v8, p4

    #@48
    move-object/from16 v9, p6

    #@4a
    move/from16 v10, p7

    #@4c
    move-object v11, v0

    #@4d
    invoke-direct/range {v3 .. v11}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;)V

    #@50
    return-object v3
.end method

.method public queueRequest(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/String;
    .param p4, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p5, "bodyProvider"    # Ljava/io/InputStream;
    .param p6, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    #@0
    .prologue
    .line 293
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Landroid/net/compatibility/WebAddress;

    #@2
    invoke-direct {v2, p1}, Landroid/net/compatibility/WebAddress;-><init>(Ljava/lang/String;)V

    #@5
    .local v2, "uri":Landroid/net/compatibility/WebAddress;
    move-object v0, p0

    #@6
    move-object v1, p1

    #@7
    move-object v3, p2

    #@8
    move-object v4, p3

    #@9
    move-object v5, p4

    #@a
    move-object v6, p5

    #@b
    move v7, p6

    #@c
    .line 294
    invoke-virtual/range {v0 .. v7}, Landroid/net/http/RequestQueue;->queueRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method protected declared-synchronized queueRequest(Landroid/net/http/Request;Z)V
    .locals 3
    .param p1, "request"    # Landroid/net/http/Request;
    .param p2, "head"    # Z

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 492
    :try_start_0
    iget-object v2, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    #@3
    if-nez v2, :cond_0

    #@5
    iget-object v0, p1, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    #@7
    .line 494
    .local v0, "host":Lorg/apache/http/HttpHost;
    :goto_0
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@9
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    .line 495
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@11
    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@14
    move-result-object v1

    #@15
    check-cast v1, Ljava/util/LinkedList;

    #@17
    .line 500
    .local v1, "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :goto_1
    if-eqz p2, :cond_2

    #@19
    .line 501
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    :goto_2
    monitor-exit p0

    #@1d
    .line 491
    return-void

    #@1e
    .line 492
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    #@20
    .restart local v0    # "host":Lorg/apache/http/HttpHost;
    goto :goto_0

    #@21
    .line 497
    :cond_1
    new-instance v1, Ljava/util/LinkedList;

    #@23
    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    #@26
    .line 498
    .restart local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    iget-object v2, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@28
    invoke-virtual {v2, v0, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2b
    goto :goto_1

    #@2c
    .end local v0    # "host":Lorg/apache/http/HttpHost;
    .end local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :catchall_0
    move-exception v2

    #@2d
    monitor-exit p0

    #@2e
    throw v2

    #@2f
    .line 503
    .restart local v0    # "host":Lorg/apache/http/HttpHost;
    .restart local v1    # "reqList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/net/http/Request;>;"
    :cond_2
    :try_start_2
    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@32
    goto :goto_2
.end method

.method public queueSynchronousRequest(Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Landroid/net/http/EventHandler;Ljava/io/InputStream;I)Landroid/net/http/RequestHandle;
    .locals 13
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/compatibility/WebAddress;
    .param p3, "method"    # Ljava/lang/String;
    .param p5, "eventHandler"    # Landroid/net/http/EventHandler;
    .param p6, "bodyProvider"    # Ljava/io/InputStream;
    .param p7, "bodyLength"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/compatibility/WebAddress;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/http/EventHandler;",
            "Ljava/io/InputStream;",
            "I)",
            "Landroid/net/http/RequestHandle;"
        }
    .end annotation

    #@0
    .prologue
    .line 371
    .local p4, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Lorg/apache/http/HttpHost;

    #@2
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getHost()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getPort()I

    #@9
    move-result v3

    #@a
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getScheme()Ljava/lang/String;

    #@d
    move-result-object v4

    #@e
    invoke-direct {v2, v1, v3, v4}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@11
    .line 373
    .local v2, "host":Lorg/apache/http/HttpHost;
    new-instance v0, Landroid/net/http/Request;

    #@13
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@15
    invoke-virtual {p2}, Landroid/net/compatibility/WebAddress;->getPath()Ljava/lang/String;

    #@18
    move-result-object v4

    #@19
    move-object/from16 v1, p3

    #@1b
    move-object/from16 v5, p6

    #@1d
    move/from16 v6, p7

    #@1f
    move-object/from16 v7, p5

    #@21
    move-object/from16 v8, p4

    #@23
    invoke-direct/range {v0 .. v8}, Landroid/net/http/Request;-><init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V

    #@26
    .line 378
    .local v0, "req":Landroid/net/http/Request;
    invoke-direct {p0, v2}, Landroid/net/http/RequestQueue;->determineHost(Lorg/apache/http/HttpHost;)Lorg/apache/http/HttpHost;

    #@29
    move-result-object v2

    #@2a
    .line 379
    iget-object v1, p0, Landroid/net/http/RequestQueue;->mContext:Landroid/content/Context;

    #@2c
    iget-object v3, p0, Landroid/net/http/RequestQueue;->mProxyHost:Lorg/apache/http/HttpHost;

    #@2e
    .line 380
    new-instance v4, Landroid/net/http/RequestQueue$SyncFeeder;

    #@30
    invoke-direct {v4}, Landroid/net/http/RequestQueue$SyncFeeder;-><init>()V

    #@33
    .line 379
    invoke-static {v1, v2, v3, v4}, Landroid/net/http/Connection;->getConnection(Landroid/content/Context;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Landroid/net/http/RequestFeeder;)Landroid/net/http/Connection;

    #@36
    move-result-object v12

    #@37
    .line 384
    .local v12, "conn":Landroid/net/http/Connection;
    new-instance v3, Landroid/net/http/RequestHandle;

    #@39
    move-object v4, p0

    #@3a
    move-object v5, p1

    #@3b
    move-object v6, p2

    #@3c
    move-object/from16 v7, p3

    #@3e
    move-object/from16 v8, p4

    #@40
    move-object/from16 v9, p6

    #@42
    move/from16 v10, p7

    #@44
    move-object v11, v0

    #@45
    invoke-direct/range {v3 .. v12}, Landroid/net/http/RequestHandle;-><init>(Landroid/net/http/RequestQueue;Ljava/lang/String;Landroid/net/compatibility/WebAddress;Ljava/lang/String;Ljava/util/Map;Ljava/io/InputStream;ILandroid/net/http/Request;Landroid/net/http/Connection;)V

    #@48
    return-object v3
.end method

.method declared-synchronized requestsPending()Z
    .locals 1

    #@0
    .prologue
    monitor-enter p0

    #@1
    .line 405
    :try_start_0
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mPending:Ljava/util/LinkedHashMap;

    #@3
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    move-result v0

    #@7
    if-eqz v0, :cond_0

    #@9
    const/4 v0, 0x0

    #@a
    :goto_0
    monitor-exit p0

    #@b
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0

    #@e
    :catchall_0
    move-exception v0

    #@f
    monitor-exit p0

    #@10
    throw v0
.end method

.method public requeueRequest(Landroid/net/http/Request;)V
    .locals 1
    .param p1, "request"    # Landroid/net/http/Request;

    #@0
    .prologue
    .line 481
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/net/http/RequestQueue;->queueRequest(Landroid/net/http/Request;Z)V

    #@4
    .line 480
    return-void
.end method

.method public shutdown()V
    .locals 1

    #@0
    .prologue
    .line 488
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@2
    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->shutdown()V

    #@5
    .line 487
    return-void
.end method

.method public startTiming()V
    .locals 1

    #@0
    .prologue
    .line 509
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@2
    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->startTiming()V

    #@5
    .line 508
    return-void
.end method

.method public stopTiming()V
    .locals 1

    #@0
    .prologue
    .line 513
    iget-object v0, p0, Landroid/net/http/RequestQueue;->mActivePool:Landroid/net/http/RequestQueue$ActivePool;

    #@2
    invoke-virtual {v0}, Landroid/net/http/RequestQueue$ActivePool;->stopTiming()V

    #@5
    .line 512
    return-void
.end method
