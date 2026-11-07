.class final Landroid/os/BinderProxy$ProxyMap;
.super Ljava/lang/Object;
.source "BinderProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BinderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProxyMap"
.end annotation


# static fields
.field private static final blacklist CRASH_AT_SIZE:I = 0x61a8

.field private static final blacklist LOG_MAIN_INDEX_SIZE:I = 0x8

.field private static final blacklist MAIN_INDEX_MASK:I = 0xff

.field private static final blacklist MAIN_INDEX_SIZE:I = 0x100

.field static final blacklist MAX_NUM_INTERFACES_TO_DUMP:I = 0xa

.field private static final blacklist WARN_INCREMENT:I = 0xa


# instance fields
.field private final blacklist mMainIndexKeys:[[Ljava/lang/Long;

.field private final blacklist mMainIndexValues:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/os/BinderProxy;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mRandom:I

.field private blacklist mWarnBucketSize:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mdumpPerUidProxyCounts(Landroid/os/BinderProxy$ProxyMap;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdumpProxyInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;)V
    .registers 1

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetSortedInterfaceCounts(Landroid/os/BinderProxy$ProxyMap;I)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/BinderProxy$ProxyMap;->getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msize(Landroid/os/BinderProxy$ProxyMap;)I
    .registers 1

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result p0

    return p0
.end method

.method private constructor blacklist <init>()V
    .registers 3

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/16 v0, 0x14

    iput v0, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    .line 378
    const/16 v0, 0x100

    new-array v1, v0, [[Ljava/lang/Long;

    iput-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    .line 379
    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/BinderProxy-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;-><init>()V

    return-void
.end method

.method private blacklist dumpPerUidProxyCounts()V
    .registers 8

    .line 359
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->nGetBinderProxyPerUidCounts()Landroid/util/SparseIntArray;

    move-result-object v0

    .line 360
    .local v0, "counts":Landroid/util/SparseIntArray;
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 361
    :cond_b
    const-string v1, "Per Uid Binder Proxy Counts:"

    const-string v2, "Binder"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_44

    .line 363
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 364
    .local v3, "uid":I
    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 365
    .local v4, "binderCount":I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UID : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    .end local v3    # "uid":I
    .end local v4    # "binderCount":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 367
    .end local v1    # "i":I
    :cond_44
    return-void
.end method

.method private blacklist dumpProxyInterfaceCounts()V
    .registers 6

    .line 346
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/os/BinderProxy$ProxyMap;->getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;

    move-result-object v1

    .line 348
    .local v1, "sorted":[Landroid/os/BinderProxy$InterfaceCount;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BinderProxy descriptor histogram (top "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 348
    const-string v2, "Binder"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_29
    array-length v3, v1

    if-ge v0, v3, :cond_53

    .line 351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 353
    .end local v0    # "i":I
    :cond_53
    return-void
.end method

.method private blacklist getSortedInterfaceCounts(I)[Landroid/os/BinderProxy$InterfaceCount;
    .registers 12
    .param p1, "maxToReturn"    # I

    .line 257
    if-ltz p1, :cond_aa

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 262
    .local v0, "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 264
    .local v1, "proxiesToQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    invoke-static {}, Landroid/os/BinderProxy;->-$$Nest$sfgetsProxyMap()Landroid/os/BinderProxy$ProxyMap;

    move-result-object v2

    monitor-enter v2

    .line 265
    :try_start_11
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_16
    if-ge v6, v4, :cond_22

    aget-object v7, v3, v6

    .line 266
    .local v7, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    if-eqz v7, :cond_1f

    .line 267
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 265
    .end local v7    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    .line 270
    :cond_22
    monitor-exit v2
    :try_end_23
    .catchall {:try_start_11 .. :try_end_23} :catchall_a7

    .line 276
    :try_start_23
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->enableAppFreezer(Z)Z
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_2a} :catch_2b

    .line 279
    goto :goto_33

    .line 277
    :catch_2b
    move-exception v2

    .line 278
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Binder"

    const-string v4, "RemoteException while disabling app freezer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_33
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    .line 286
    .local v2, "executorService":Ljava/util/concurrent/ExecutorService;
    new-instance v3, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, v0}, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda0;-><init>(Ljava/util/ArrayList;Ljava/util/Map;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 312
    :try_start_3f
    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 313
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-interface {v2, v4, v5, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result v3

    .line 314
    .local v3, "dumpDone":Z
    if-nez v3, :cond_53

    .line 315
    const-string v4, "Binder"

    const-string v5, "Failed to complete binder proxy dump, dumping what we have so far."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_53
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_53} :catch_54

    .line 320
    .end local v3    # "dumpDone":Z
    :cond_53
    goto :goto_55

    .line 318
    :catch_54
    move-exception v3

    .line 322
    :goto_55
    :try_start_55
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Landroid/app/IActivityManager;->enableAppFreezer(Z)Z
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_5d} :catch_5e

    .line 325
    goto :goto_66

    .line 323
    :catch_5e
    move-exception v3

    .line 324
    .local v3, "e":Landroid/os/RemoteException;
    const-string v4, "Binder"

    const-string v5, "RemoteException while re-enabling app freezer"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_66
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    .line 327
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    new-array v4, v4, [Ljava/util/Map$Entry;

    .line 326
    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/Map$Entry;

    .line 329
    .local v3, "sorted":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v4, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/os/BinderProxy$ProxyMap$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v3, v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 332
    array-length v4, v3

    invoke-static {p1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 333
    .local v4, "returnCount":I
    new-array v5, v4, [Landroid/os/BinderProxy$InterfaceCount;

    .line 334
    .local v5, "ifaceCounts":[Landroid/os/BinderProxy$InterfaceCount;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_86
    if-ge v6, v4, :cond_a6

    .line 335
    new-instance v7, Landroid/os/BinderProxy$InterfaceCount;

    aget-object v8, v3, v6

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aget-object v9, v3, v6

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/os/BinderProxy$InterfaceCount;-><init>(Ljava/lang/String;I)V

    aput-object v7, v5, v6

    .line 334
    add-int/lit8 v6, v6, 0x1

    goto :goto_86

    .line 337
    .end local v6    # "i":I
    :cond_a6
    return-object v5

    .line 270
    .end local v2    # "executorService":Ljava/util/concurrent/ExecutorService;
    .end local v3    # "sorted":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v4    # "returnCount":I
    .end local v5    # "ifaceCounts":[Landroid/os/BinderProxy$InterfaceCount;
    :catchall_a7
    move-exception v3

    :try_start_a8
    monitor-exit v2
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v3

    .line 258
    .end local v0    # "counts":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v1    # "proxiesToQuery":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_aa
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "negative interface count"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist hash(J)I
    .registers 6
    .param p0, "arg"    # J

    .line 106
    const/4 v0, 0x2

    shr-long v0, p0, v0

    const/16 v2, 0xa

    shr-long v2, p0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method static synthetic blacklist lambda$getSortedInterfaceCounts$0(Ljava/util/ArrayList;Ljava/util/Map;)V
    .registers 9
    .param p0, "proxiesToQuery"    # Ljava/util/ArrayList;
    .param p1, "counts"    # Ljava/util/Map;

    .line 287
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 288
    .local v1, "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/BinderProxy;

    .line 290
    .local v2, "bp":Landroid/os/BinderProxy;
    if-nez v2, :cond_1b

    .line 291
    const-string v3, "<cleared weak-ref>"

    .local v3, "key":Ljava/lang/String;
    goto :goto_35

    .line 294
    .end local v3    # "key":Ljava/lang/String;
    :cond_1b
    :try_start_1b
    invoke-virtual {v2}, Landroid/os/BinderProxy;->getInterfaceDescriptor()Ljava/lang/String;

    move-result-object v3

    .line 295
    .restart local v3    # "key":Ljava/lang/String;
    if-eqz v3, :cond_27

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_30

    :cond_27
    invoke-virtual {v2}, Landroid/os/BinderProxy;->isBinderAlive()Z

    move-result v4

    if-nez v4, :cond_30

    .line 296
    const-string v4, "<proxy to dead node>"
    :try_end_2f
    .catchall {:try_start_1b .. :try_end_2f} :catchall_31

    move-object v3, v4

    .line 300
    :cond_30
    goto :goto_35

    .line 298
    .end local v3    # "key":Ljava/lang/String;
    :catchall_31
    move-exception v3

    .line 299
    .local v3, "t":Ljava/lang/Throwable;
    const-string v4, "<exception during getDescriptor>"

    move-object v3, v4

    .line 302
    .local v3, "key":Ljava/lang/String;
    :goto_35
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 303
    .local v4, "i":Ljava/lang/Integer;
    const/4 v5, 0x1

    if-nez v4, :cond_46

    .line 304
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_52

    .line 306
    :cond_46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    .end local v1    # "weakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    .end local v2    # "bp":Landroid/os/BinderProxy;
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "i":Ljava/lang/Integer;
    :goto_52
    goto :goto_4

    .line 309
    :cond_53
    return-void
.end method

.method static synthetic blacklist lambda$getSortedInterfaceCounts$1(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .registers 4
    .param p0, "a"    # Ljava/util/Map$Entry;
    .param p1, "b"    # Ljava/util/Map$Entry;

    .line 330
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method private blacklist remove(II)V
    .registers 7
    .param p1, "hash"    # I
    .param p2, "index"    # I

    .line 144
    iget-object v0, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v0, v0, p1

    .line 145
    .local v0, "keyArray":[Ljava/lang/Long;
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v1, v1, p1

    .line 146
    .local v1, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    .local v2, "size":I
    add-int/lit8 v3, v2, -0x1

    if-eq p2, v3, :cond_21

    .line 149
    add-int/lit8 v3, v2, -0x1

    aget-object v3, v0, v3

    aput-object v3, v0, p2

    .line 150
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, p2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    :cond_21
    add-int/lit8 v3, v2, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method private blacklist size()I
    .registers 7

    .line 113
    const/4 v0, 0x0

    .line 114
    .local v0, "size":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_13

    aget-object v4, v1, v3

    .line 115
    .local v4, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    if-eqz v4, :cond_10

    .line 116
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v0, v5

    .line 114
    .end local v4    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 119
    :cond_13
    return v0
.end method

.method private blacklist unclearedSize()I
    .registers 9

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "size":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_28

    aget-object v4, v1, v3

    .line 129
    .local v4, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    if-eqz v4, :cond_25

    .line 130
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_25

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    .line 131
    .local v6, "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 132
    add-int/lit8 v0, v0, 0x1

    .line 134
    .end local v6    # "ref":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    :cond_24
    goto :goto_f

    .line 128
    .end local v4    # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 137
    :cond_28
    return v0
.end method


# virtual methods
.method blacklist get(J)Landroid/os/BinderProxy;
    .registers 13
    .param p1, "key"    # J

    .line 160
    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    .line 161
    .local v0, "myHash":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v1, v1, v0

    .line 162
    .local v1, "keyArray":[Ljava/lang/Long;
    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 163
    return-object v2

    .line 165
    :cond_c
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v3, v3, v0

    .line 166
    .local v3, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 167
    .local v4, "bucketSize":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_15
    if-ge v5, v4, :cond_37

    .line 168
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 169
    .local v6, "foundKey":J
    cmp-long v8, p1, v6

    if-nez v8, :cond_34

    .line 170
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    .line 171
    .local v8, "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BinderProxy;

    .line 172
    .local v9, "bp":Landroid/os/BinderProxy;
    if-eqz v9, :cond_30

    .line 173
    return-object v9

    .line 175
    :cond_30
    invoke-direct {p0, v0, v5}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    .line 176
    return-object v2

    .line 167
    .end local v6    # "foundKey":J
    .end local v8    # "wr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    .end local v9    # "bp":Landroid/os/BinderProxy;
    :cond_34
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 180
    .end local v5    # "i":I
    :cond_37
    return-object v2
.end method

.method blacklist set(JLandroid/os/BinderProxy;)V
    .registers 14
    .param p1, "key"    # J
    .param p3, "value"    # Landroid/os/BinderProxy;

    .line 190
    invoke-static {p1, p2}, Landroid/os/BinderProxy$ProxyMap;->hash(J)I

    move-result v0

    .line 191
    .local v0, "myHash":I
    iget-object v1, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    aget-object v1, v1, v0

    .line 192
    .local v1, "valueArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;>;"
    const/4 v2, 0x1

    if-nez v1, :cond_1b

    .line 193
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexValues:[Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    aput-object v4, v3, v0

    move-object v1, v4

    .line 194
    iget-object v3, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    new-array v4, v2, [Ljava/lang/Long;

    aput-object v4, v3, v0

    .line 196
    :cond_1b
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 197
    .local v3, "size":I
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 201
    .local v4, "newWr":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/os/BinderProxy;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_25
    if-ge v5, v3, :cond_6b

    .line 202
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/ref/WeakReference;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_68

    .line 203
    invoke-virtual {v1, v5, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    iget-object v6, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v6, v6, v0

    .line 205
    .local v6, "keyArray":[Ljava/lang/Long;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    .line 206
    add-int/lit8 v8, v3, -0x1

    if-ge v5, v8, :cond_67

    .line 209
    iget v8, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/2addr v8, v2

    iput v8, p0, Landroid/os/BinderProxy$ProxyMap;->mRandom:I

    add-int/lit8 v2, v5, 0x1

    sub-int v2, v3, v2

    invoke-static {v8, v2}, Ljava/lang/Math;->floorMod(II)I

    move-result v2

    .line 210
    .local v2, "rnd":I
    add-int/lit8 v8, v5, 0x1

    add-int/2addr v8, v2

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/ref/WeakReference;

    invoke-virtual {v8, v7}, Ljava/lang/ref/WeakReference;->refersTo(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 211
    add-int/lit8 v7, v5, 0x1

    add-int/2addr v7, v2

    invoke-direct {p0, v0, v7}, Landroid/os/BinderProxy$ProxyMap;->remove(II)V

    .line 214
    .end local v2    # "rnd":I
    :cond_67
    return-void

    .line 201
    .end local v6    # "keyArray":[Ljava/lang/Long;
    :cond_68
    add-int/lit8 v5, v5, 0x1

    goto :goto_25

    .line 217
    .end local v5    # "i":I
    :cond_6b
    invoke-virtual {v1, v3, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 218
    iget-object v2, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aget-object v2, v2, v0

    .line 219
    .local v2, "keyArray":[Ljava/lang/Long;
    array-length v5, v2

    if-ne v5, v3, :cond_8b

    .line 221
    div-int/lit8 v5, v3, 0x2

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x2

    new-array v5, v5, [Ljava/lang/Long;

    .line 222
    .local v5, "newArray":[Ljava/lang/Long;
    const/4 v6, 0x0

    invoke-static {v2, v6, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 223
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v5, v3

    .line 224
    iget-object v6, p0, Landroid/os/BinderProxy$ProxyMap;->mMainIndexKeys:[[Ljava/lang/Long;

    aput-object v5, v6, v0

    .line 225
    .end local v5    # "newArray":[Ljava/lang/Long;
    goto :goto_91

    .line 226
    :cond_8b
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v3

    .line 228
    :goto_91
    iget v5, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    if-lt v3, v5, :cond_13e

    .line 229
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->size()I

    move-result v5

    .line 230
    .local v5, "totalSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BinderProxy map growth! bucket size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " total = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Binder"

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v6, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    add-int/lit8 v6, v6, 0xa

    iput v6, p0, Landroid/os/BinderProxy$ProxyMap;->mWarnBucketSize:I

    .line 233
    const/16 v6, 0x61a8

    if-lt v5, v6, :cond_13e

    .line 238
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v8

    .line 239
    .local v8, "totalUnclearedSize":I
    if-ge v8, v6, :cond_fa

    .line 247
    mul-int/lit8 v6, v8, 0x3

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_13e

    .line 248
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BinderProxy map has many cleared entries: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-int v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " of "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " are cleared"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13e

    .line 240
    :cond_fa
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpProxyInterfaceCounts()V

    .line 241
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->dumpPerUidProxyCounts()V

    .line 242
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Runtime;->gc()V

    .line 243
    new-instance v6, Landroid/os/BinderProxy$BinderProxyMapSizeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Binder ProxyMap has too many entries: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (total), "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (uncleared), "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 246
    invoke-direct {p0}, Landroid/os/BinderProxy$ProxyMap;->unclearedSize()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " (uncleared after GC). BinderProxy leak?"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/BinderProxy$BinderProxyMapSizeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 254
    .end local v5    # "totalSize":I
    .end local v8    # "totalUnclearedSize":I
    :cond_13e
    :goto_13e
    return-void
.end method
