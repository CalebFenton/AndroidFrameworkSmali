.class abstract Landroid/app/SystemServiceRegistry$CachedServiceFetcher;
.super Ljava/lang/Object;
.source "SystemServiceRegistry.java"

# interfaces
.implements Landroid/app/SystemServiceRegistry$ServiceFetcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/SystemServiceRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "CachedServiceFetcher"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/app/SystemServiceRegistry$ServiceFetcher<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mCacheIndex:I


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 2288
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2292
    invoke-static {}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfgetsServiceCacheSize()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Landroid/app/SystemServiceRegistry;->-$$Nest$sfputsServiceCacheSize(I)V

    iput v0, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    .line 2293
    return-void
.end method


# virtual methods
.method public abstract blacklist createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ServiceManager$ServiceNotFoundException;
        }
    .end annotation
.end method

.method public final blacklist getService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .registers 11
    .param p1, "ctx"    # Landroid/app/ContextImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ContextImpl;",
            ")TT;"
        }
    .end annotation

    .line 2298
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    iget-object v0, p1, Landroid/app/ContextImpl;->mServiceCache:[Ljava/lang/Object;

    .line 2299
    .local v0, "cache":[Ljava/lang/Object;
    iget-object v1, p1, Landroid/app/ContextImpl;->mServiceInitializationStateArray:[I

    .line 2300
    .local v1, "gates":[I
    const/4 v2, 0x0

    .line 2302
    .local v2, "interrupted":Z
    const/4 v3, 0x0

    .line 2305
    .local v3, "ret":Ljava/lang/Object;, "TT;"
    :goto_6
    const/4 v4, 0x0

    .line 2306
    .local v4, "doInitialize":Z
    monitor-enter v0

    .line 2308
    :try_start_8
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget-object v5, v0, v5

    .line 2309
    .local v5, "service":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_11

    .line 2310
    move-object v3, v5

    .line 2311
    monitor-exit v0

    goto :goto_63

    .line 2320
    :cond_11
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v6, v1, v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1f

    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v6, v1, v6

    const/4 v8, 0x3

    if-ne v6, v8, :cond_24

    .line 2322
    :cond_1f
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    const/4 v8, 0x0

    aput v8, v1, v6

    .line 2329
    :cond_24
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v6, v1, v6

    if-nez v6, :cond_30

    .line 2330
    const/4 v4, 0x1

    .line 2331
    iget v6, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    const/4 v8, 0x1

    aput v8, v1, v6

    .line 2333
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    :cond_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_a1

    .line 2335
    if-eqz v4, :cond_81

    .line 2338
    const/4 v5, 0x0

    .line 2339
    .restart local v5    # "service":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x3

    .line 2343
    .local v6, "newState":I
    :try_start_35
    invoke-virtual {p0, p1}, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->createService(Landroid/app/ContextImpl;)Ljava/lang/Object;

    move-result-object v7
    :try_end_39
    .catch Landroid/os/ServiceManager$ServiceNotFoundException; {:try_start_35 .. :try_end_39} :catch_4f
    .catchall {:try_start_35 .. :try_end_39} :catchall_4d

    .line 2344
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .local v7, "service":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x2

    .line 2350
    .end local v6    # "newState":I
    .local v8, "newState":I
    monitor-enter v0

    .line 2351
    :try_start_3b
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v7, v0, v5

    .line 2352
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v8, v1, v5

    .line 2353
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2354
    monitor-exit v0

    .line 2355
    move-object v5, v7

    move v6, v8

    goto :goto_61

    .line 2354
    :catchall_4a
    move-exception v5

    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3b .. :try_end_4c} :catchall_4a

    throw v5

    .line 2350
    .end local v7    # "service":Ljava/lang/Object;, "TT;"
    .end local v8    # "newState":I
    .restart local v5    # "service":Ljava/lang/Object;, "TT;"
    .restart local v6    # "newState":I
    :catchall_4d
    move-exception v7

    goto :goto_70

    .line 2346
    :catch_4f
    move-exception v7

    .line 2347
    .local v7, "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    :try_start_50
    invoke-static {v7}, Landroid/app/SystemServiceRegistry;->onServiceNotFound(Landroid/os/ServiceManager$ServiceNotFoundException;)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_4d

    .line 2350
    .end local v7    # "e":Landroid/os/ServiceManager$ServiceNotFoundException;
    monitor-enter v0

    .line 2351
    :try_start_54
    iget v7, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v7

    .line 2352
    iget v7, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v7

    .line 2353
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2354
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_54 .. :try_end_60} :catchall_6d

    .line 2355
    nop

    .line 2356
    :goto_61
    move-object v3, v5

    .line 2357
    nop

    .line 2379
    .end local v4    # "doInitialize":Z
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .end local v6    # "newState":I
    :goto_63
    if-eqz v2, :cond_6c

    .line 2380
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->interrupt()V

    .line 2382
    :cond_6c
    return-object v3

    .line 2354
    .restart local v4    # "doInitialize":Z
    .restart local v5    # "service":Ljava/lang/Object;, "TT;"
    .restart local v6    # "newState":I
    :catchall_6d
    move-exception v7

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v7

    .line 2350
    :goto_70
    monitor-enter v0

    .line 2351
    :try_start_71
    iget v8, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput-object v5, v0, v8

    .line 2352
    iget v8, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aput v6, v1, v8

    .line 2353
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2354
    monitor-exit v0
    :try_end_7d
    .catchall {:try_start_71 .. :try_end_7d} :catchall_7e

    .line 2355
    throw v7

    .line 2354
    :catchall_7e
    move-exception v7

    :try_start_7f
    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7f .. :try_end_80} :catchall_7e

    throw v7

    .line 2361
    .end local v5    # "service":Ljava/lang/Object;, "TT;"
    .end local v6    # "newState":I
    :cond_81
    monitor-enter v0

    .line 2365
    :goto_82
    :try_start_82
    iget v5, p0, Landroid/app/SystemServiceRegistry$CachedServiceFetcher;->mCacheIndex:I

    aget v5, v1, v5
    :try_end_86
    .catchall {:try_start_82 .. :try_end_86} :catchall_9e

    if-ge v5, v7, :cond_9b

    .line 2368
    :try_start_88
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v5

    or-int/2addr v2, v5

    .line 2369
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_90
    .catch Ljava/lang/InterruptedException; {:try_start_88 .. :try_end_90} :catch_91
    .catchall {:try_start_88 .. :try_end_90} :catchall_9e

    .line 2375
    :goto_90
    goto :goto_82

    .line 2370
    :catch_91
    move-exception v5

    .line 2373
    .local v5, "e":Ljava/lang/InterruptedException;
    :try_start_92
    const-string v6, "SystemServiceRegistry"

    const-string v8, "getService() interrupted"

    invoke-static {v6, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    const/4 v2, 0x1

    .end local v5    # "e":Ljava/lang/InterruptedException;
    goto :goto_90

    .line 2377
    :cond_9b
    monitor-exit v0

    .line 2378
    .end local v4    # "doInitialize":Z
    goto/16 :goto_6

    .line 2377
    .restart local v4    # "doInitialize":Z
    :catchall_9e
    move-exception v5

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_9e

    throw v5

    .line 2333
    :catchall_a1
    move-exception v5

    :try_start_a2
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw v5
.end method

.method public final blacklist supportsFetchWithoutContext()Z
    .registers 2

    .line 2389
    .local p0, "this":Landroid/app/SystemServiceRegistry$CachedServiceFetcher;, "Landroid/app/SystemServiceRegistry$CachedServiceFetcher<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
