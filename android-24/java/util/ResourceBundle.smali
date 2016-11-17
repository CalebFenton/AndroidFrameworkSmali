.class public abstract Ljava/util/ResourceBundle;
.super Ljava/lang/Object;
.source "ResourceBundle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ResourceBundle$1;,
        Ljava/util/ResourceBundle$BundleReference;,
        Ljava/util/ResourceBundle$CacheKey;,
        Ljava/util/ResourceBundle$CacheKeyReference;,
        Ljava/util/ResourceBundle$Control;,
        Ljava/util/ResourceBundle$LoaderReference;,
        Ljava/util/ResourceBundle$NoFallbackControl;,
        Ljava/util/ResourceBundle$RBClassLoader;,
        Ljava/util/ResourceBundle$SingleFormatControl;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z

.field private static final INITIAL_CACHE_SIZE:I = 0x20

.field private static final NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

.field private static final cacheList:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/ResourceBundle$BundleReference;",
            ">;"
        }
    .end annotation
.end field

.field private static final referenceQueue:Ljava/lang/ref/ReferenceQueue;


# instance fields
.field private volatile cacheKey:Ljava/util/ResourceBundle$CacheKey;

.field private volatile expired:Z

.field private volatile keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private locale:Ljava/util/Locale;

.field private name:Ljava/lang/String;

.field protected parent:Ljava/util/ResourceBundle;


# direct methods
.method static synthetic -get0()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    #@0
    sget-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@2
    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    const-class v0, Ljava/util/ResourceBundle;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    #@b
    .line 277
    new-instance v0, Ljava/util/ResourceBundle$1;

    #@d
    invoke-direct {v0}, Ljava/util/ResourceBundle$1;-><init>()V

    #@10
    sput-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@12
    .line 297
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@14
    const/16 v1, 0x20

    #@16
    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    #@19
    .line 296
    sput-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@1b
    .line 302
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    #@1d
    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    #@20
    sput-object v0, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@22
    .line 271
    return-void

    #@23
    :cond_0
    const/4 v0, 0x1

    #@24
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 341
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 309
    iput-object v0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@6
    .line 314
    iput-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@8
    .line 341
    return-void
.end method

.method private static final checkList(Ljava/util/List;)Z
    .locals 4
    .param p0, "a"    # Ljava/util/List;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1337
    if-eqz p0, :cond_0

    #@3
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@6
    move-result v3

    #@7
    if-eqz v3, :cond_0

    #@9
    const/4 v2, 0x1

    #@a
    .line 1338
    .local v2, "valid":Z
    :cond_0
    if-eqz v2, :cond_2

    #@c
    .line 1339
    invoke-interface {p0}, Ljava/util/List;->size()I

    #@f
    move-result v1

    #@10
    .line 1340
    .local v1, "size":I
    const/4 v0, 0x0

    #@11
    .end local v2    # "valid":Z
    .local v0, "i":I
    :goto_0
    if-eqz v2, :cond_2

    #@13
    if-ge v0, v1, :cond_2

    #@15
    .line 1341
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@18
    move-result-object v3

    #@19
    if-eqz v3, :cond_1

    #@1b
    const/4 v2, 0x1

    #@1c
    .line 1340
    .local v2, "valid":Z
    :goto_1
    add-int/lit8 v0, v0, 0x1

    #@1e
    goto :goto_0

    #@1f
    .line 1341
    .end local v2    # "valid":Z
    :cond_1
    const/4 v2, 0x0

    #@20
    .restart local v2    # "valid":Z
    goto :goto_1

    #@21
    .line 1344
    .end local v0    # "i":I
    .end local v1    # "size":I
    .end local v2    # "valid":Z
    :cond_2
    return v2
.end method

.method public static final clearCache()V
    .locals 1
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 1683
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    invoke-static {v0}, Ljava/util/ResourceBundle;->clearCache(Ljava/lang/ClassLoader;)V

    #@b
    .line 1682
    return-void
.end method

.method public static final clearCache(Ljava/lang/ClassLoader;)V
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1696
    if-nez p0, :cond_0

    #@2
    .line 1697
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v3

    #@8
    .line 1699
    :cond_0
    sget-object v3, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@a
    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    #@d
    move-result-object v2

    #@e
    .line 1700
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/ResourceBundle$CacheKey;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@11
    move-result-object v1

    #@12
    .local v1, "key$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_2

    #@18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    check-cast v0, Ljava/util/ResourceBundle$CacheKey;

    #@1e
    .line 1701
    .local v0, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-virtual {v0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    #@21
    move-result-object v3

    #@22
    if-ne v3, p0, :cond_1

    #@24
    .line 1702
    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    #@27
    goto :goto_0

    #@28
    .line 1695
    .end local v0    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_2
    return-void
.end method

.method private static final findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;
    .locals 15
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p3, "index"    # I
    .param p4, "control"    # Ljava/util/ResourceBundle$Control;
    .param p5, "baseBundle"    # Ljava/util/ResourceBundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/util/Locale;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/util/ResourceBundle$Control;",
            "Ljava/util/ResourceBundle;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 1353
    .local p1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .local p2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p1

    #@2
    move/from16 v1, p3

    #@4
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7
    move-result-object v14

    #@8
    check-cast v14, Ljava/util/Locale;

    #@a
    .line 1354
    .local v14, "targetLocale":Ljava/util/Locale;
    const/4 v12, 0x0

    #@b
    .line 1355
    .local v12, "parent":Ljava/util/ResourceBundle;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    #@e
    move-result v2

    #@f
    add-int/lit8 v2, v2, -0x1

    #@11
    move/from16 v0, p3

    #@13
    if-eq v0, v2, :cond_1

    #@15
    .line 1356
    add-int/lit8 v5, p3, 0x1

    #@17
    move-object v2, p0

    #@18
    move-object/from16 v3, p1

    #@1a
    move-object/from16 v4, p2

    #@1c
    move-object/from16 v6, p4

    #@1e
    move-object/from16 v7, p5

    #@20
    invoke-static/range {v2 .. v7}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    #@23
    move-result-object v12

    #@24
    .line 1367
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_0
    :goto_0
    sget-object v2, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@26
    invoke-virtual {v2}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    #@29
    move-result-object v13

    #@2a
    .local v13, "ref":Ljava/lang/Object;
    if-eqz v13, :cond_2

    #@2c
    .line 1368
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@2e
    check-cast v13, Ljava/util/ResourceBundle$CacheKeyReference;

    #@30
    .end local v13    # "ref":Ljava/lang/Object;
    invoke-interface {v13}, Ljava/util/ResourceBundle$CacheKeyReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    #@33
    move-result-object v3

    #@34
    invoke-interface {v2, v3}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@37
    goto :goto_0

    #@38
    .line 1358
    .restart local v12    # "parent":Ljava/util/ResourceBundle;
    :cond_1
    if-eqz p5, :cond_0

    #@3a
    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@3c
    invoke-virtual {v2, v14}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@3f
    move-result v2

    #@40
    if-eqz v2, :cond_0

    #@42
    .line 1359
    return-object p5

    #@43
    .line 1372
    .end local v12    # "parent":Ljava/util/ResourceBundle;
    .restart local v13    # "ref":Ljava/lang/Object;
    :cond_2
    const/4 v11, 0x0

    #@44
    .line 1376
    .local v11, "expiredBundle":Z
    invoke-virtual {p0, v14}, Ljava/util/ResourceBundle$CacheKey;->setLocale(Ljava/util/Locale;)Ljava/util/ResourceBundle$CacheKey;

    #@47
    .line 1377
    move-object/from16 v0, p4

    #@49
    invoke-static {p0, v0}, Ljava/util/ResourceBundle;->findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@4c
    move-result-object v8

    #@4d
    .line 1378
    .local v8, "bundle":Ljava/util/ResourceBundle;
    invoke-static {v8}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    #@50
    move-result v2

    #@51
    if-eqz v2, :cond_4

    #@53
    .line 1379
    iget-boolean v11, v8, Ljava/util/ResourceBundle;->expired:Z

    #@55
    .line 1380
    .local v11, "expiredBundle":Z
    if-nez v11, :cond_4

    #@57
    .line 1386
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@59
    if-ne v2, v12, :cond_3

    #@5b
    .line 1387
    return-object v8

    #@5c
    .line 1391
    :cond_3
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@5e
    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@61
    move-result-object v9

    #@62
    check-cast v9, Ljava/util/ResourceBundle$BundleReference;

    #@64
    .line 1392
    .local v9, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v9, :cond_4

    #@66
    invoke-virtual {v9}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    #@69
    move-result-object v2

    #@6a
    if-ne v2, v8, :cond_4

    #@6c
    .line 1393
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@6e
    invoke-interface {v2, p0, v9}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@71
    .line 1398
    .end local v9    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v11    # "expiredBundle":Z
    :cond_4
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@73
    if-eq v8, v2, :cond_8

    #@75
    .line 1399
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    #@78
    move-result-object v10

    #@79
    check-cast v10, Ljava/util/ResourceBundle$CacheKey;

    #@7b
    .line 1402
    .local v10, "constKey":Ljava/util/ResourceBundle$CacheKey;
    :try_start_0
    move-object/from16 v0, p2

    #@7d
    move-object/from16 v1, p4

    #@7f
    invoke-static {p0, v0, v1, v11}, Ljava/util/ResourceBundle;->loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;

    #@82
    move-result-object v8

    #@83
    .line 1403
    if-eqz v8, :cond_7

    #@85
    .line 1404
    iget-object v2, v8, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@87
    if-nez v2, :cond_5

    #@89
    .line 1405
    invoke-virtual {v8, v12}, Ljava/util/ResourceBundle;->setParent(Ljava/util/ResourceBundle;)V

    #@8c
    .line 1407
    :cond_5
    iput-object v14, v8, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@8e
    .line 1408
    move-object/from16 v0, p4

    #@90
    invoke-static {p0, v8, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@93
    move-result-object v8

    #@94
    .line 1416
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    #@97
    move-result-object v2

    #@98
    instance-of v2, v2, Ljava/lang/InterruptedException;

    #@9a
    if-eqz v2, :cond_6

    #@9c
    .line 1417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@9f
    move-result-object v2

    #@a0
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@a3
    .line 1409
    :cond_6
    return-object v8

    #@a4
    .line 1414
    :cond_7
    :try_start_1
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@a6
    move-object/from16 v0, p4

    #@a8
    invoke-static {p0, v2, v0}, Ljava/util/ResourceBundle;->putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ab
    .line 1416
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    #@ae
    move-result-object v2

    #@af
    instance-of v2, v2, Ljava/lang/InterruptedException;

    #@b1
    if-eqz v2, :cond_8

    #@b3
    .line 1417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@b6
    move-result-object v2

    #@b7
    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    #@ba
    .line 1421
    .end local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :cond_8
    return-object v12

    #@bb
    .line 1415
    .restart local v10    # "constKey":Ljava/util/ResourceBundle$CacheKey;
    :catchall_0
    move-exception v2

    #@bc
    .line 1416
    invoke-static {v10}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    #@bf
    move-result-object v3

    #@c0
    instance-of v3, v3, Ljava/lang/InterruptedException;

    #@c2
    if-eqz v3, :cond_9

    #@c4
    .line 1417
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    #@c7
    move-result-object v3

    #@c8
    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    #@cb
    .line 1415
    :cond_9
    throw v2
.end method

.method private static final findBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 14
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    const-wide/16 v6, 0x0

    #@2
    const/4 v0, 0x0

    #@3
    const/4 v1, 0x1

    #@4
    const/4 v3, 0x0

    #@5
    .line 1520
    sget-object v2, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@7
    invoke-interface {v2, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@a
    move-result-object v8

    #@b
    check-cast v8, Ljava/util/ResourceBundle$BundleReference;

    #@d
    .line 1521
    .local v8, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-nez v8, :cond_0

    #@f
    .line 1522
    return-object v3

    #@10
    .line 1524
    :cond_0
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    #@13
    move-result-object v5

    #@14
    check-cast v5, Ljava/util/ResourceBundle;

    #@16
    .line 1525
    .local v5, "bundle":Ljava/util/ResourceBundle;
    if-nez v5, :cond_1

    #@18
    .line 1526
    return-object v3

    #@19
    .line 1528
    :cond_1
    iget-object v13, v5, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@1b
    .line 1529
    .local v13, "p":Ljava/util/ResourceBundle;
    sget-boolean v2, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    #@1d
    if-nez v2, :cond_3

    #@1f
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@21
    if-eq v13, v2, :cond_2

    #@23
    move v2, v1

    #@24
    :goto_0
    if-nez v2, :cond_3

    #@26
    new-instance v0, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v0

    #@2c
    :cond_2
    move v2, v0

    #@2d
    goto :goto_0

    #@2e
    .line 1563
    :cond_3
    if-eqz v13, :cond_7

    #@30
    iget-boolean v2, v13, Ljava/util/ResourceBundle;->expired:Z

    #@32
    if-eqz v2, :cond_7

    #@34
    .line 1564
    sget-boolean v2, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    #@36
    if-nez v2, :cond_5

    #@38
    sget-object v2, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@3a
    if-eq v5, v2, :cond_4

    #@3c
    move v0, v1

    #@3d
    :cond_4
    if-nez v0, :cond_5

    #@3f
    new-instance v0, Ljava/lang/AssertionError;

    #@41
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@44
    throw v0

    #@45
    .line 1565
    :cond_5
    iput-boolean v1, v5, Ljava/util/ResourceBundle;->expired:Z

    #@47
    .line 1566
    iput-object v3, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@49
    .line 1567
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@4b
    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@4e
    .line 1568
    const/4 v5, 0x0

    #@4f
    .line 1613
    .end local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_6
    :goto_1
    return-object v5

    #@50
    .line 1570
    .restart local v5    # "bundle":Ljava/util/ResourceBundle;
    :cond_7
    invoke-virtual {v8}, Ljava/util/ResourceBundle$BundleReference;->getCacheKey()Ljava/util/ResourceBundle$CacheKey;

    #@53
    move-result-object v12

    #@54
    .line 1571
    .local v12, "key":Ljava/util/ResourceBundle$CacheKey;
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    #@57
    move-result-wide v10

    #@58
    .line 1572
    .local v10, "expirationTime":J
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    #@5a
    if-nez v0, :cond_6

    #@5c
    cmp-long v0, v10, v6

    #@5e
    if-ltz v0, :cond_6

    #@60
    .line 1573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@63
    move-result-wide v0

    #@64
    cmp-long v0, v10, v0

    #@66
    if-gtz v0, :cond_6

    #@68
    .line 1575
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@6a
    if-eq v5, v0, :cond_a

    #@6c
    .line 1578
    monitor-enter v5

    #@6d
    .line 1579
    :try_start_0
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    #@70
    move-result-wide v10

    #@71
    .line 1580
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    #@73
    if-nez v0, :cond_8

    #@75
    cmp-long v0, v10, v6

    #@77
    if-ltz v0, :cond_8

    #@79
    .line 1581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@7c
    move-result-wide v0

    #@7d
    cmp-long v0, v10, v0

    #@7f
    if-gtz v0, :cond_8

    #@81
    .line 1583
    :try_start_1
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    #@84
    move-result-object v1

    #@85
    .line 1584
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    #@88
    move-result-object v2

    #@89
    .line 1585
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getFormat()Ljava/lang/String;

    #@8c
    move-result-object v3

    #@8d
    .line 1586
    invoke-virtual {v12}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    #@90
    move-result-object v4

    #@91
    .line 1588
    invoke-static {v12}, Ljava/util/ResourceBundle$CacheKey;->-get1(Ljava/util/ResourceBundle$CacheKey;)J

    #@94
    move-result-wide v6

    #@95
    move-object v0, p1

    #@96
    .line 1583
    invoke-virtual/range {v0 .. v7}, Ljava/util/ResourceBundle$Control;->needsReload(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle;J)Z

    #@99
    move-result v0

    #@9a
    iput-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@9c
    .line 1592
    :goto_2
    :try_start_2
    iget-boolean v0, v5, Ljava/util/ResourceBundle;->expired:Z

    #@9e
    if-eqz v0, :cond_9

    #@a0
    .line 1597
    const/4 v0, 0x0

    #@a1
    iput-object v0, v5, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@a3
    .line 1598
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@a5
    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@a8
    :cond_8
    :goto_3
    monitor-exit v5

    #@a9
    goto :goto_1

    #@aa
    .line 1589
    :catch_0
    move-exception v9

    #@ab
    .line 1590
    .local v9, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {p0, v9}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@ae
    goto :goto_2

    #@af
    .line 1578
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    #@b0
    monitor-exit v5

    #@b1
    throw v0

    #@b2
    .line 1602
    :cond_9
    :try_start_4
    invoke-static {v12, p1}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@b5
    goto :goto_3

    #@b6
    .line 1608
    :cond_a
    sget-object v0, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@b8
    invoke-interface {v0, p0, v8}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    #@bb
    .line 1609
    const/4 v5, 0x0

    #@bc
    .local v5, "bundle":Ljava/util/ResourceBundle;
    goto :goto_1
.end method

.method public static final getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 3
    .param p0, "baseName"    # Ljava/lang/String;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 723
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    .line 725
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@b
    move-result-object v1

    #@c
    .line 726
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    #@f
    move-result-object v2

    #@10
    .line 723
    invoke-static {p0, v0, v1, v2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@13
    move-result-object v0

    #@14
    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 799
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 800
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    #@b
    move-result-object v1

    #@c
    .line 797
    invoke-static {p0, p1, v0, v1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 1027
    if-nez p2, :cond_0

    #@2
    .line 1028
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 1030
    :cond_0
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    #@b
    move-result-object v0

    #@c
    invoke-static {p0, p1, p2, v0}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method public static getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    .line 1245
    if-eqz p2, :cond_0

    #@2
    if-nez p3, :cond_1

    #@4
    .line 1246
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    #@6
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@9
    throw v0

    #@a
    .line 1248
    :cond_1
    invoke-static {p0, p1, p2, p3}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@d
    move-result-object v0

    #@e
    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 1
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "targetLocale"    # Ljava/util/Locale;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 845
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@7
    move-result-object v0

    #@8
    .line 843
    invoke-static {p0, p1, v0, p2}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@b
    move-result-object v0

    #@c
    return-object v0
.end method

.method public static final getBundle(Ljava/lang/String;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 2
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;
    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 766
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@3
    move-result-object v0

    #@4
    .line 768
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@7
    move-result-object v1

    #@8
    invoke-static {v1}, Ljava/util/ResourceBundle;->getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;

    #@b
    move-result-object v1

    #@c
    .line 766
    invoke-static {p0, v0, v1, p1}, Ljava/util/ResourceBundle;->getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;

    #@f
    move-result-object v0

    #@10
    return-object v0
.end method

.method private static getBundleImpl(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 12
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1253
    if-eqz p1, :cond_0

    #@3
    if-nez p3, :cond_1

    #@5
    .line 1254
    :cond_0
    new-instance v3, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v3

    #@b
    .line 1261
    :cond_1
    new-instance v0, Ljava/util/ResourceBundle$CacheKey;

    #@d
    invoke-direct {v0, p0, p1, p2}, Ljava/util/ResourceBundle$CacheKey;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)V

    #@10
    .line 1262
    .local v0, "cacheKey":Ljava/util/ResourceBundle$CacheKey;
    const/4 v6, 0x0

    #@11
    .line 1265
    .local v6, "bundle":Ljava/util/ResourceBundle;
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@13
    invoke-interface {v4, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v7

    #@17
    check-cast v7, Ljava/util/ResourceBundle$BundleReference;

    #@19
    .line 1266
    .local v7, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v7, :cond_2

    #@1b
    .line 1267
    invoke-virtual {v7}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    #@1e
    move-result-object v6

    #@1f
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    check-cast v6, Ljava/util/ResourceBundle;

    #@21
    .line 1268
    .local v6, "bundle":Ljava/util/ResourceBundle;
    const/4 v7, 0x0

    #@22
    .line 1275
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v7    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    :cond_2
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    #@25
    move-result v4

    #@26
    if-eqz v4, :cond_3

    #@28
    invoke-static {v6}, Ljava/util/ResourceBundle;->hasValidParentChain(Ljava/util/ResourceBundle;)Z

    #@2b
    move-result v4

    #@2c
    if-eqz v4, :cond_3

    #@2e
    .line 1276
    return-object v6

    #@2f
    .line 1282
    :cond_3
    invoke-static {}, Ljava/util/ResourceBundle$Control;->-get0()Ljava/util/ResourceBundle$Control;

    #@32
    move-result-object v4

    #@33
    if-eq p3, v4, :cond_9

    #@35
    .line 1283
    instance-of v9, p3, Ljava/util/ResourceBundle$SingleFormatControl;

    #@37
    .line 1284
    :goto_0
    invoke-virtual {p3, p0}, Ljava/util/ResourceBundle$Control;->getFormats(Ljava/lang/String;)Ljava/util/List;

    #@3a
    move-result-object v2

    #@3b
    .line 1285
    .local v2, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_4

    #@3d
    invoke-static {v2}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    #@40
    move-result v4

    #@41
    if-eqz v4, :cond_a

    #@43
    .line 1289
    :cond_4
    const/4 v5, 0x0

    #@44
    .line 1290
    .local v5, "baseBundle":Ljava/util/ResourceBundle;
    move-object v10, p1

    #@45
    .end local v5    # "baseBundle":Ljava/util/ResourceBundle;
    .local v10, "targetLocale":Ljava/util/Locale;
    :goto_1
    if-eqz v10, :cond_6

    #@47
    .line 1293
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getCandidateLocales(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/List;

    #@4a
    move-result-object v1

    #@4b
    .line 1294
    .local v1, "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    if-nez v9, :cond_5

    #@4d
    invoke-static {v1}, Ljava/util/ResourceBundle;->checkList(Ljava/util/List;)Z

    #@50
    move-result v4

    #@51
    if-eqz v4, :cond_b

    #@53
    :cond_5
    move-object v4, p3

    #@54
    .line 1298
    invoke-static/range {v0 .. v5}, Ljava/util/ResourceBundle;->findBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/List;ILjava/util/ResourceBundle$Control;Ljava/util/ResourceBundle;)Ljava/util/ResourceBundle;

    #@57
    move-result-object v6

    #@58
    .line 1305
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    invoke-static {v6}, Ljava/util/ResourceBundle;->isValidBundle(Ljava/util/ResourceBundle;)Z

    #@5b
    move-result v4

    #@5c
    if-eqz v4, :cond_d

    #@5e
    .line 1306
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    #@60
    iget-object v11, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@62
    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@65
    move-result v8

    #@66
    .line 1307
    .local v8, "isBaseBundle":Z
    if-eqz v8, :cond_6

    #@68
    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@6a
    invoke-virtual {v4, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@6d
    move-result v4

    #@6e
    if-nez v4, :cond_6

    #@70
    .line 1308
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@73
    move-result v4

    #@74
    const/4 v11, 0x1

    #@75
    if-ne v4, v11, :cond_c

    #@77
    .line 1309
    iget-object v4, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@79
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@7c
    move-result-object v11

    #@7d
    invoke-virtual {v4, v11}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    #@80
    move-result v4

    #@81
    .line 1307
    if-eqz v4, :cond_c

    #@83
    .line 1322
    .end local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .end local v8    # "isBaseBundle":Z
    :cond_6
    if-nez v6, :cond_8

    #@85
    .line 1323
    if-nez v5, :cond_7

    #@87
    .line 1324
    invoke-static {v0}, Ljava/util/ResourceBundle$CacheKey;->-wrap0(Ljava/util/ResourceBundle$CacheKey;)Ljava/lang/Throwable;

    #@8a
    move-result-object v3

    #@8b
    invoke-static {p0, p1, v3}, Ljava/util/ResourceBundle;->throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V

    #@8e
    .line 1326
    :cond_7
    move-object v6, v5

    #@8f
    .line 1329
    :cond_8
    return-object v6

    #@90
    .line 1282
    .end local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "targetLocale":Ljava/util/Locale;
    :cond_9
    const/4 v9, 0x1

    #@91
    .local v9, "isKnownControl":Z
    goto :goto_0

    #@92
    .line 1286
    .end local v9    # "isKnownControl":Z
    .restart local v2    # "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@94
    const-string/jumbo v4, "Invalid Control: getFormats"

    #@97
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@9a
    throw v3

    #@9b
    .line 1295
    .restart local v1    # "candidateLocales":Ljava/util/List;, "Ljava/util/List<Ljava/util/Locale;>;"
    .restart local v10    # "targetLocale":Ljava/util/Locale;
    :cond_b
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@9d
    const-string/jumbo v4, "Invalid Control: getCandidateLocales"

    #@a0
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a3
    throw v3

    #@a4
    .line 1316
    .restart local v6    # "bundle":Ljava/util/ResourceBundle;
    .restart local v8    # "isBaseBundle":Z
    :cond_c
    if-eqz v8, :cond_d

    #@a6
    if-nez v5, :cond_d

    #@a8
    .line 1317
    move-object v5, v6

    #@a9
    .line 1292
    .end local v8    # "isBaseBundle":Z
    :cond_d
    invoke-virtual {p3, p0, v10}, Ljava/util/ResourceBundle$Control;->getFallbackLocale(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/Locale;

    #@ac
    move-result-object v10

    #@ad
    goto :goto_1
.end method

.method private static getLoader(Ljava/lang/ClassLoader;)Ljava/lang/ClassLoader;
    .locals 0
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    #@0
    .prologue
    .line 423
    if-nez p0, :cond_0

    #@2
    .line 431
    invoke-static {}, Ljava/util/ResourceBundle$RBClassLoader;->-get0()Ljava/util/ResourceBundle$RBClassLoader;

    #@5
    move-result-object p0

    #@6
    .line 433
    :cond_0
    return-object p0
.end method

.method private static final hasValidParentChain(Ljava/util/ResourceBundle;)Z
    .locals 9
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1473
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@4
    move-result-wide v4

    #@5
    .line 1474
    .local v4, "now":J
    :goto_0
    if-eqz p0, :cond_2

    #@7
    .line 1475
    iget-boolean v3, p0, Ljava/util/ResourceBundle;->expired:Z

    #@9
    if-eqz v3, :cond_0

    #@b
    .line 1476
    return v8

    #@c
    .line 1478
    :cond_0
    iget-object v2, p0, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@e
    .line 1479
    .local v2, "key":Ljava/util/ResourceBundle$CacheKey;
    if-eqz v2, :cond_1

    #@10
    .line 1480
    invoke-static {v2}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    #@13
    move-result-wide v0

    #@14
    .line 1481
    .local v0, "expirationTime":J
    const-wide/16 v6, 0x0

    #@16
    cmp-long v3, v0, v6

    #@18
    if-ltz v3, :cond_1

    #@1a
    cmp-long v3, v0, v4

    #@1c
    if-gtz v3, :cond_1

    #@1e
    .line 1482
    return v8

    #@1f
    .line 1485
    .end local v0    # "expirationTime":J
    :cond_1
    iget-object p0, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@21
    goto :goto_0

    #@22
    .line 1487
    .end local v2    # "key":Ljava/util/ResourceBundle$CacheKey;
    :cond_2
    const/4 v3, 0x1

    #@23
    return v3
.end method

.method private static final isValidBundle(Ljava/util/ResourceBundle;)Z
    .locals 2
    .param p0, "bundle"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1465
    if-eqz p0, :cond_0

    #@3
    sget-object v1, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@5
    if-eq p0, v1, :cond_0

    #@7
    const/4 v0, 0x1

    #@8
    :cond_0
    return v0
.end method

.method private static final loadBundle(Ljava/util/ResourceBundle$CacheKey;Ljava/util/List;Ljava/util/ResourceBundle$Control;Z)Ljava/util/ResourceBundle;
    .locals 11
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;
    .param p3, "reload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ResourceBundle$CacheKey;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ResourceBundle$Control;",
            "Z)",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    #@0
    .prologue
    .line 1431
    .local p1, "formats":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    #@3
    move-result-object v2

    #@4
    .line 1433
    .local v2, "targetLocale":Ljava/util/Locale;
    const/4 v6, 0x0

    #@5
    .line 1434
    .local v6, "bundle":Ljava/util/ResourceBundle;
    invoke-interface {p1}, Ljava/util/List;->size()I

    #@8
    move-result v10

    #@9
    .line 1435
    .local v10, "size":I
    const/4 v9, 0x0

    #@a
    .end local v6    # "bundle":Ljava/util/ResourceBundle;
    .local v9, "i":I
    :goto_0
    if-ge v9, v10, :cond_0

    #@c
    .line 1436
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v3

    #@10
    check-cast v3, Ljava/lang/String;

    #@12
    .line 1438
    .local v3, "format":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    #@15
    move-result-object v1

    #@16
    .line 1439
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLoader()Ljava/lang/ClassLoader;

    #@19
    move-result-object v4

    #@1a
    move-object v0, p2

    #@1b
    move v5, p3

    #@1c
    .line 1438
    invoke-virtual/range {v0 .. v5}, Ljava/util/ResourceBundle$Control;->newBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@1f
    move-result-object v6

    #@20
    .line 1448
    :goto_1
    if-eqz v6, :cond_1

    #@22
    .line 1451
    invoke-virtual {p0, v3}, Ljava/util/ResourceBundle$CacheKey;->setFormat(Ljava/lang/String;)V

    #@25
    .line 1452
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    iput-object v0, v6, Ljava/util/ResourceBundle;->name:Ljava/lang/String;

    #@2b
    .line 1453
    iput-object v2, v6, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@2d
    .line 1456
    const/4 v0, 0x0

    #@2e
    iput-boolean v0, v6, Ljava/util/ResourceBundle;->expired:Z

    #@30
    .line 1461
    .end local v3    # "format":Ljava/lang/String;
    :cond_0
    return-object v6

    #@31
    .line 1445
    .restart local v3    # "format":Ljava/lang/String;
    :catch_0
    move-exception v7

    #@32
    .line 1446
    .local v7, "cause":Ljava/lang/Exception;
    invoke-static {p0, v7}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    #@35
    goto :goto_1

    #@36
    .line 1440
    .end local v7    # "cause":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    #@37
    .line 1444
    .local v8, "error":Ljava/lang/LinkageError;
    invoke-static {p0, v8}, Ljava/util/ResourceBundle$CacheKey;->-wrap1(Ljava/util/ResourceBundle$CacheKey;Ljava/lang/Throwable;)V

    #@3a
    goto :goto_1

    #@3b
    .line 1435
    .end local v8    # "error":Ljava/lang/LinkageError;
    :cond_1
    add-int/lit8 v9, v9, 0x1

    #@3d
    goto :goto_0
.end method

.method private static final putBundleInCache(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle;Ljava/util/ResourceBundle$Control;)Ljava/util/ResourceBundle;
    .locals 9
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "bundle"    # Ljava/util/ResourceBundle;
    .param p2, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1628
    invoke-static {p0, p2}, Ljava/util/ResourceBundle;->setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V

    #@4
    .line 1629
    invoke-static {p0}, Ljava/util/ResourceBundle$CacheKey;->-get0(Ljava/util/ResourceBundle$CacheKey;)J

    #@7
    move-result-wide v4

    #@8
    const-wide/16 v6, -0x1

    #@a
    cmp-long v4, v4, v6

    #@c
    if-eqz v4, :cond_1

    #@e
    .line 1630
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->clone()Ljava/lang/Object;

    #@11
    move-result-object v1

    #@12
    check-cast v1, Ljava/util/ResourceBundle$CacheKey;

    #@14
    .line 1631
    .local v1, "key":Ljava/util/ResourceBundle$CacheKey;
    new-instance v0, Ljava/util/ResourceBundle$BundleReference;

    #@16
    sget-object v4, Ljava/util/ResourceBundle;->referenceQueue:Ljava/lang/ref/ReferenceQueue;

    #@18
    invoke-direct {v0, p1, v4, v1}, Ljava/util/ResourceBundle$BundleReference;-><init>(Ljava/util/ResourceBundle;Ljava/lang/ref/ReferenceQueue;Ljava/util/ResourceBundle$CacheKey;)V

    #@1b
    .line 1632
    .local v0, "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    iput-object v1, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@1d
    .line 1635
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@1f
    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v3

    #@23
    check-cast v3, Ljava/util/ResourceBundle$BundleReference;

    #@25
    .line 1639
    .local v3, "result":Ljava/util/ResourceBundle$BundleReference;
    if-eqz v3, :cond_1

    #@27
    .line 1640
    invoke-virtual {v3}, Ljava/util/ResourceBundle$BundleReference;->get()Ljava/lang/Object;

    #@2a
    move-result-object v2

    #@2b
    check-cast v2, Ljava/util/ResourceBundle;

    #@2d
    .line 1641
    .local v2, "rb":Ljava/util/ResourceBundle;
    if-eqz v2, :cond_0

    #@2f
    iget-boolean v4, v2, Ljava/util/ResourceBundle;->expired:Z

    #@31
    if-eqz v4, :cond_2

    #@33
    .line 1651
    :cond_0
    sget-object v4, Ljava/util/ResourceBundle;->cacheList:Ljava/util/concurrent/ConcurrentMap;

    #@35
    invoke-interface {v4, v1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@38
    .line 1655
    .end local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .end local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .end local v2    # "rb":Ljava/util/ResourceBundle;
    .end local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_1
    :goto_0
    return-object p1

    #@39
    .line 1643
    .restart local v0    # "bundleRef":Ljava/util/ResourceBundle$BundleReference;
    .restart local v1    # "key":Ljava/util/ResourceBundle$CacheKey;
    .restart local v2    # "rb":Ljava/util/ResourceBundle;
    .restart local v3    # "result":Ljava/util/ResourceBundle$BundleReference;
    :cond_2
    iput-object v8, p1, Ljava/util/ResourceBundle;->cacheKey:Ljava/util/ResourceBundle$CacheKey;

    #@3b
    .line 1644
    move-object p1, v2

    #@3c
    .line 1647
    invoke-virtual {v0}, Ljava/util/ResourceBundle$BundleReference;->clear()V

    #@3f
    goto :goto_0
.end method

.method private static final setExpirationTime(Ljava/util/ResourceBundle$CacheKey;Ljava/util/ResourceBundle$Control;)V
    .locals 7
    .param p0, "cacheKey"    # Ljava/util/ResourceBundle$CacheKey;
    .param p1, "control"    # Ljava/util/ResourceBundle$Control;

    #@0
    .prologue
    .line 1659
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getName()Ljava/lang/String;

    #@3
    move-result-object v4

    #@4
    .line 1660
    invoke-virtual {p0}, Ljava/util/ResourceBundle$CacheKey;->getLocale()Ljava/util/Locale;

    #@7
    move-result-object v5

    #@8
    .line 1659
    invoke-virtual {p1, v4, v5}, Ljava/util/ResourceBundle$Control;->getTimeToLive(Ljava/lang/String;Ljava/util/Locale;)J

    #@b
    move-result-wide v2

    #@c
    .line 1661
    .local v2, "ttl":J
    const-wide/16 v4, 0x0

    #@e
    cmp-long v4, v2, v4

    #@10
    if-ltz v4, :cond_0

    #@12
    .line 1664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@15
    move-result-wide v0

    #@16
    .line 1665
    .local v0, "now":J
    invoke-static {p0, v0, v1}, Ljava/util/ResourceBundle$CacheKey;->-set1(Ljava/util/ResourceBundle$CacheKey;J)J

    #@19
    .line 1666
    add-long v4, v0, v2

    #@1b
    invoke-static {p0, v4, v5}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    #@1e
    .line 1658
    .end local v0    # "now":J
    :goto_0
    return-void

    #@1f
    .line 1667
    :cond_0
    const-wide/16 v4, -0x2

    #@21
    cmp-long v4, v2, v4

    #@23
    if-ltz v4, :cond_1

    #@25
    .line 1668
    invoke-static {p0, v2, v3}, Ljava/util/ResourceBundle$CacheKey;->-set0(Ljava/util/ResourceBundle$CacheKey;J)J

    #@28
    goto :goto_0

    #@29
    .line 1670
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    #@2b
    new-instance v5, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    const-string/jumbo v6, "Invalid Control: TTL="

    #@33
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@42
    throw v4
.end method

.method private static final throwMissingResourceException(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "baseName"    # Ljava/lang/String;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "cause"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1498
    instance-of v0, p2, Ljava/util/MissingResourceException;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 1499
    const/4 p2, 0x0

    #@5
    .line 1501
    .end local p2    # "cause":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljava/util/MissingResourceException;

    #@7
    new-instance v1, Ljava/lang/StringBuilder;

    #@9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@c
    const-string/jumbo v2, "Can\'t find bundle for base name "

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@12
    move-result-object v1

    #@13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v1

    #@17
    .line 1502
    const-string/jumbo v2, ", locale "

    #@1a
    .line 1501
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 1503
    new-instance v2, Ljava/lang/StringBuilder;

    #@28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2b
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v2

    #@2f
    const-string/jumbo v3, "_"

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v2

    #@36
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3d
    move-result-object v2

    #@3e
    .line 1504
    const-string/jumbo v3, ""

    #@41
    .line 1501
    invoke-direct {v0, v1, v2, v3, p2}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    #@44
    throw v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1740
    if-nez p1, :cond_0

    #@2
    .line 1741
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 1743
    :cond_0
    move-object v0, p0

    #@9
    .local v0, "rb":Ljava/util/ResourceBundle;
    :goto_0
    if-eqz v0, :cond_2

    #@b
    .line 1744
    invoke-virtual {v0}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    #@e
    move-result-object v1

    #@f
    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    #@12
    move-result v1

    #@13
    if-eqz v1, :cond_1

    #@15
    .line 1745
    const/4 v1, 0x1

    #@16
    return v1

    #@17
    .line 1743
    :cond_1
    iget-object v0, v0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@19
    goto :goto_0

    #@1a
    .line 1748
    :cond_2
    const/4 v1, 0x0

    #@1b
    return v1
.end method

.method public abstract getKeys()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    #@0
    .prologue
    .line 415
    iget-object v0, p0, Ljava/util/ResourceBundle;->locale:Ljava/util/Locale;

    #@2
    return-object v0
.end method

.method public final getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 392
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 393
    .local v0, "obj":Ljava/lang/Object;
    if-nez v0, :cond_1

    #@6
    .line 394
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 395
    iget-object v1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@c
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    .line 397
    :cond_0
    if-nez v0, :cond_1

    #@12
    .line 398
    new-instance v1, Ljava/util/MissingResourceException;

    #@14
    new-instance v2, Ljava/lang/StringBuilder;

    #@16
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@19
    const-string/jumbo v3, "Can\'t find resource for bundle "

    #@1c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v2

    #@20
    .line 399
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    #@23
    move-result-object v3

    #@24
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@27
    move-result-object v3

    #@28
    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    .line 400
    const-string/jumbo v3, ", key "

    #@2f
    .line 398
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v2

    #@3b
    .line 401
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getClass()Ljava/lang/Class;

    #@3e
    move-result-object v3

    #@3f
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@42
    move-result-object v3

    #@43
    .line 398
    invoke-direct {v1, v2, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    #@46
    throw v1

    #@47
    .line 404
    :cond_1
    return-object v0
.end method

.method public final getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 358
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Ljava/lang/String;

    #@6
    return-object v0
.end method

.method public final getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    #@0
    .prologue
    .line 375
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, [Ljava/lang/String;

    #@6
    return-object v0
.end method

.method protected abstract handleGetObject(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method protected handleKeySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1785
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    #@2
    if-nez v3, :cond_3

    #@4
    .line 1786
    monitor-enter p0

    #@5
    .line 1787
    :try_start_0
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    #@7
    if-nez v3, :cond_2

    #@9
    .line 1788
    new-instance v2, Ljava/util/HashSet;

    #@b
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    #@e
    .line 1789
    .local v2, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    #@11
    move-result-object v0

    #@12
    .line 1790
    .local v0, "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    #@15
    move-result v3

    #@16
    if-eqz v3, :cond_1

    #@18
    .line 1791
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    #@1b
    move-result-object v1

    #@1c
    check-cast v1, Ljava/lang/String;

    #@1e
    .line 1792
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/util/ResourceBundle;->handleGetObject(Ljava/lang/String;)Ljava/lang/Object;

    #@21
    move-result-object v3

    #@22
    if-eqz v3, :cond_0

    #@24
    .line 1793
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    goto :goto_0

    #@28
    .line 1786
    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_0
    move-exception v3

    #@29
    monitor-exit p0

    #@2a
    throw v3

    #@2b
    .line 1796
    .restart local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    iput-object v2, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    .end local v0    # "enumKeys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v2    # "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    monitor-exit p0

    #@2e
    .line 1800
    :cond_3
    iget-object v3, p0, Ljava/util/ResourceBundle;->keySet:Ljava/util/Set;

    #@30
    return-object v3
.end method

.method public keySet()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 1760
    new-instance v0, Ljava/util/HashSet;

    #@2
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    #@5
    .line 1761
    .local v0, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object v1, p0

    #@6
    .local v1, "rb":Ljava/util/ResourceBundle;
    :goto_0
    if-eqz v1, :cond_0

    #@8
    .line 1762
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->handleKeySet()Ljava/util/Set;

    #@b
    move-result-object v2

    #@c
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    #@f
    .line 1761
    iget-object v1, v1, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@11
    goto :goto_0

    #@12
    .line 1764
    :cond_0
    return-object v0
.end method

.method protected setParent(Ljava/util/ResourceBundle;)V
    .locals 1
    .param p1, "parent"    # Ljava/util/ResourceBundle;

    #@0
    .prologue
    .line 478
    sget-boolean v0, Ljava/util/ResourceBundle;->-assertionsDisabled:Z

    #@2
    if-nez v0, :cond_1

    #@4
    sget-object v0, Ljava/util/ResourceBundle;->NONEXISTENT_BUNDLE:Ljava/util/ResourceBundle;

    #@6
    if-eq p1, v0, :cond_0

    #@8
    const/4 v0, 0x1

    #@9
    :goto_0
    if-nez v0, :cond_1

    #@b
    new-instance v0, Ljava/lang/AssertionError;

    #@d
    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    #@10
    throw v0

    #@11
    :cond_0
    const/4 v0, 0x0

    #@12
    goto :goto_0

    #@13
    .line 479
    :cond_1
    iput-object p1, p0, Ljava/util/ResourceBundle;->parent:Ljava/util/ResourceBundle;

    #@15
    .line 477
    return-void
.end method
