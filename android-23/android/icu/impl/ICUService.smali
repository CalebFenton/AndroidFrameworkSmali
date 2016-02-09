.class public Landroid/icu/impl/ICUService;
.super Landroid/icu/impl/ICUNotifier;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUService$Key;,
        Landroid/icu/impl/ICUService$Factory;,
        Landroid/icu/impl/ICUService$SimpleFactory;,
        Landroid/icu/impl/ICUService$CacheEntry;,
        Landroid/icu/impl/ICUService$LocaleRef;,
        Landroid/icu/impl/ICUService$ServiceListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private cacheref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$CacheEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private defaultSize:I

.field private dnref:Landroid/icu/impl/ICUService$LocaleRef;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final factoryLock:Landroid/icu/impl/ICURWLock;

.field private idref:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 105
    const-string/jumbo v0, "service"

    #@3
    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    #@6
    move-result v0

    #@7
    sput-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@9
    .line 92
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 101
    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    #@3
    .line 118
    new-instance v0, Landroid/icu/impl/ICURWLock;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@a
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@11
    .line 129
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    #@14
    .line 102
    const-string/jumbo v0, ""

    #@17
    iput-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@19
    .line 101
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    #@3
    .line 118
    new-instance v0, Landroid/icu/impl/ICURWLock;

    #@5
    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@a
    .line 123
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@11
    .line 129
    const/4 v0, 0x0

    #@12
    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    #@14
    .line 110
    iput-object p1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@16
    .line 109
    return-void
.end method

.method private getVisibleIDMap()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 586
    const/4 v1, 0x0

    #@1
    .line 587
    .local v1, "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    iget-object v4, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    #@3
    .line 588
    .local v4, "ref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;>;"
    if-eqz v4, :cond_2

    #@5
    .line 589
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@8
    move-result-object v1

    #@9
    .end local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    check-cast v1, Ljava/util/Map;

    #@b
    .local v1, "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    move-object v2, v1

    #@c
    .line 591
    .end local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .local v2, "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :goto_0
    if-nez v2, :cond_4

    #@e
    .line 592
    monitor-enter p0

    #@f
    .line 593
    :try_start_0
    iget-object v5, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    #@11
    if-eq v4, v5, :cond_0

    #@13
    iget-object v5, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    #@15
    if-nez v5, :cond_3

    #@17
    .line 597
    :cond_0
    :try_start_1
    iget-object v5, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@19
    invoke-virtual {v5}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    #@1c
    .line 598
    new-instance v1, Ljava/util/HashMap;

    #@1e
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    #@21
    .line 599
    .end local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .restart local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :try_start_2
    iget-object v5, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@23
    iget-object v6, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@25
    invoke-interface {v6}, Ljava/util/List;->size()I

    #@28
    move-result v6

    #@29
    invoke-interface {v5, v6}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    #@2c
    move-result-object v3

    #@2d
    .line 600
    .local v3, "lIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    #@30
    move-result v5

    #@31
    if-eqz v5, :cond_1

    #@33
    .line 601
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@36
    move-result-object v0

    #@37
    check-cast v0, Landroid/icu/impl/ICUService$Factory;

    #@39
    .line 602
    .local v0, "f":Landroid/icu/impl/ICUService$Factory;
    invoke-interface {v0, v1}, Landroid/icu/impl/ICUService$Factory;->updateVisibleIDs(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3c
    goto :goto_1

    #@3d
    .line 607
    .end local v0    # "f":Landroid/icu/impl/ICUService$Factory;
    .end local v3    # "lIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :catchall_0
    move-exception v5

    #@3e
    .line 608
    :goto_2
    :try_start_3
    iget-object v6, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@40
    invoke-virtual {v6}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    #@43
    .line 607
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@44
    .line 592
    :catchall_1
    move-exception v5

    #@45
    :goto_3
    monitor-exit p0

    #@46
    throw v5

    #@47
    .line 604
    .restart local v3    # "lIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :cond_1
    :try_start_4
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    #@4a
    move-result-object v1

    #@4b
    .line 605
    new-instance v5, Ljava/lang/ref/SoftReference;

    #@4d
    invoke-direct {v5, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@50
    iput-object v5, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@52
    .line 608
    :try_start_5
    iget-object v5, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@54
    invoke-virtual {v5}, Landroid/icu/impl/ICURWLock;->releaseRead()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    #@57
    .end local v3    # "lIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :goto_4
    monitor-exit p0

    #@58
    .end local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :cond_2
    move-object v2, v1

    #@59
    .restart local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    goto :goto_0

    #@5a
    .line 614
    :cond_3
    :try_start_6
    iget-object v4, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    #@5c
    .line 615
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@5f
    move-result-object v1

    #@60
    check-cast v1, Ljava/util/Map;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    #@62
    .end local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .restart local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    goto :goto_4

    #@63
    .line 620
    .end local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .restart local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :cond_4
    return-object v2

    #@64
    .line 592
    :catchall_2
    move-exception v5

    #@65
    move-object v1, v2

    #@66
    .end local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .restart local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    goto :goto_3

    #@67
    .line 607
    .end local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .restart local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :catchall_3
    move-exception v5

    #@68
    move-object v1, v2

    #@69
    .end local v2    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .restart local v1    # "idcache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    goto :goto_2
.end method


# virtual methods
.method protected acceptsListener(Ljava/util/EventListener;)Z
    .locals 1
    .param p1, "l"    # Ljava/util/EventListener;

    #@0
    .prologue
    .line 950
    instance-of v0, p1, Landroid/icu/impl/ICUService$ServiceListener;

    #@2
    return v0
.end method

.method protected clearCaches()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 918
    iput-object v0, p0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    #@3
    .line 919
    iput-object v0, p0, Landroid/icu/impl/ICUService;->idref:Ljava/lang/ref/SoftReference;

    #@5
    .line 920
    iput-object v0, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    #@7
    .line 914
    return-void
.end method

.method protected clearServiceCache()V
    .locals 1

    #@0
    .prologue
    .line 930
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    #@3
    .line 929
    return-void
.end method

.method public createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 904
    if-nez p1, :cond_0

    #@3
    :goto_0
    return-object v0

    #@4
    :cond_0
    new-instance v0, Landroid/icu/impl/ICUService$Key;

    #@6
    invoke-direct {v0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    #@9
    goto :goto_0
.end method

.method public final factories()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 780
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    #@5
    .line 781
    new-instance v0, Ljava/util/ArrayList;

    #@7
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@9
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    .line 784
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@e
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    #@11
    .line 781
    return-object v0

    #@12
    .line 783
    :catchall_0
    move-exception v0

    #@13
    .line 784
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@15
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    #@18
    .line 783
    throw v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;

    #@0
    .prologue
    .line 344
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    #@3
    move-result-object v0

    #@4
    const/4 v1, 0x0

    #@5
    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    return-object v0
.end method

.method public get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "actualReturn"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 352
    if-nez p1, :cond_0

    #@2
    .line 353
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v1, "descriptor must not be null"

    #@7
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v0

    #@b
    .line 355
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    #@e
    move-result-object v0

    #@f
    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 629
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@2
    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@5
    move-result-object v0

    #@6
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    return-object v0
.end method

.method public getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .locals 5
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    #@0
    .prologue
    const/4 v4, 0x0

    #@1
    .line 638
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    #@4
    move-result-object v2

    #@5
    .line 639
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/icu/impl/ICUService$Factory;

    #@b
    .line 640
    .local v0, "f":Landroid/icu/impl/ICUService$Factory;
    if-eqz v0, :cond_0

    #@d
    .line 641
    invoke-interface {v0, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@10
    move-result-object v3

    #@11
    return-object v3

    #@12
    .line 644
    :cond_0
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    #@15
    move-result-object v1

    #@16
    .line 645
    .local v1, "key":Landroid/icu/impl/ICUService$Key;
    :cond_1
    invoke-virtual {v1}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    #@19
    move-result v3

    #@1a
    if-eqz v3, :cond_2

    #@1c
    .line 646
    invoke-virtual {v1}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    #@1f
    move-result-object v3

    #@20
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@23
    move-result-object v0

    #@24
    .end local v0    # "f":Landroid/icu/impl/ICUService$Factory;
    check-cast v0, Landroid/icu/impl/ICUService$Factory;

    #@26
    .line 647
    .restart local v0    # "f":Landroid/icu/impl/ICUService$Factory;
    if-eqz v0, :cond_1

    #@28
    .line 648
    invoke-interface {v0, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@2b
    move-result-object v3

    #@2c
    return-object v3

    #@2d
    .line 652
    :cond_2
    return-object v4
.end method

.method public getDisplayNames()Ljava/util/SortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 661
    sget-object v1, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    #@3
    invoke-static {v1}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    #@6
    move-result-object v0

    #@7
    .line 662
    .local v0, "locale":Landroid/icu/util/ULocale;
    invoke-virtual {p0, v0, v2, v2}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    #@a
    move-result-object v1

    #@b
    return-object v1
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 670
    invoke-virtual {p0, p1, v0, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "matchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 686
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 678
    .local p2, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;
    .locals 14
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "matchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 700
    .local p2, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    const/4 v1, 0x0

    #@1
    .line 701
    .local v1, "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v11, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    #@3
    .line 703
    .local v11, "ref":Landroid/icu/impl/ICUService$LocaleRef;
    if-eqz v11, :cond_2

    #@5
    .line 704
    move-object/from16 v0, p2

    #@7
    invoke-virtual {v11, p1, v0}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    #@a
    move-result-object v1

    #@b
    .local v1, "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v2, v1

    #@c
    .line 707
    .end local v1    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    if-nez v2, :cond_4

    #@e
    .line 708
    monitor-enter p0

    #@f
    .line 709
    :try_start_0
    iget-object v13, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    #@11
    if-eq v11, v13, :cond_0

    #@13
    iget-object v13, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    #@15
    if-nez v13, :cond_3

    #@17
    .line 710
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    #@19
    move-object/from16 v0, p2

    #@1b
    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    #@1e
    .line 712
    .end local v2    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    #@21
    move-result-object v9

    #@22
    .line 713
    .local v9, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@25
    move-result-object v13

    #@26
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@29
    move-result-object v5

    #@2a
    .line 714
    .local v5, "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    #@2d
    move-result v13

    #@2e
    if-eqz v13, :cond_1

    #@30
    .line 715
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@33
    move-result-object v3

    #@34
    check-cast v3, Ljava/util/Map$Entry;

    #@36
    .line 716
    .local v3, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@39
    move-result-object v7

    #@3a
    check-cast v7, Ljava/lang/String;

    #@3c
    .line 717
    .local v7, "id":Ljava/lang/String;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@3f
    move-result-object v6

    #@40
    check-cast v6, Landroid/icu/impl/ICUService$Factory;

    #@42
    .line 718
    .local v6, "f":Landroid/icu/impl/ICUService$Factory;
    invoke-interface {v6, v7, p1}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    #@45
    move-result-object v13

    #@46
    invoke-interface {v1, v13, v7}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@49
    goto :goto_1

    #@4a
    .line 708
    .end local v3    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    .end local v5    # "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;>;"
    .end local v6    # "f":Landroid/icu/impl/ICUService$Factory;
    .end local v7    # "id":Ljava/lang/String;
    .end local v9    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :catchall_0
    move-exception v13

    #@4b
    :goto_2
    monitor-exit p0

    #@4c
    throw v13

    #@4d
    .line 721
    .restart local v5    # "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;>;"
    .restart local v9    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :cond_1
    :try_start_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    #@50
    move-result-object v1

    #@51
    .line 722
    new-instance v13, Landroid/icu/impl/ICUService$LocaleRef;

    #@53
    move-object/from16 v0, p2

    #@55
    invoke-direct {v13, v1, p1, v0}, Landroid/icu/impl/ICUService$LocaleRef;-><init>(Ljava/util/SortedMap;Landroid/icu/util/ULocale;Ljava/util/Comparator;)V

    #@58
    iput-object v13, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5a
    .end local v5    # "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;>;"
    .end local v9    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$Factory;>;"
    :goto_3
    monitor-exit p0

    #@5b
    .end local v1    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    move-object v2, v1

    #@5c
    .restart local v2    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    #@5d
    .line 724
    :cond_3
    :try_start_3
    iget-object v11, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    #@5f
    .line 725
    move-object/from16 v0, p2

    #@61
    invoke-virtual {v11, p1, v0}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    #@64
    move-result-object v1

    #@65
    .end local v2    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_3

    #@66
    .line 730
    .end local v1    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v2    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    move-object/from16 v0, p3

    #@68
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    #@6b
    move-result-object v10

    #@6c
    .line 731
    .local v10, "matchKey":Landroid/icu/impl/ICUService$Key;
    if-nez v10, :cond_5

    #@6e
    .line 732
    return-object v2

    #@6f
    .line 735
    :cond_5
    new-instance v12, Ljava/util/TreeMap;

    #@71
    invoke-direct {v12, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    #@74
    .line 736
    .local v12, "result":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    #@77
    move-result-object v13

    #@78
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    #@7b
    move-result-object v8

    #@7c
    .line 737
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_6
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    #@7f
    move-result v13

    #@80
    if-eqz v13, :cond_7

    #@82
    .line 738
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@85
    move-result-object v4

    #@86
    check-cast v4, Ljava/util/Map$Entry;

    #@88
    .line 739
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@8b
    move-result-object v13

    #@8c
    check-cast v13, Ljava/lang/String;

    #@8e
    invoke-virtual {v10, v13}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    #@91
    move-result v13

    #@92
    if-nez v13, :cond_6

    #@94
    .line 740
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    #@97
    goto :goto_4

    #@98
    .line 743
    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    return-object v12

    #@99
    .line 708
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "matchKey":Landroid/icu/impl/ICUService$Key;
    .end local v12    # "result":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v13

    #@9a
    move-object v1, v2

    #@9b
    .end local v2    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_2
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;

    #@0
    .prologue
    .line 362
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualReturn"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 381
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .locals 24
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualReturn"    # [Ljava/lang/String;
    .param p3, "factory"    # Landroid/icu/impl/ICUService$Factory;

    #@0
    .prologue
    .line 388
    move-object/from16 v0, p0

    #@2
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@4
    move-object/from16 v21, v0

    #@6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@9
    move-result v21

    #@a
    if-nez v21, :cond_0

    #@c
    .line 389
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    #@f
    move-result-object v21

    #@10
    return-object v21

    #@11
    .line 392
    :cond_0
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@13
    if-eqz v21, :cond_1

    #@15
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@17
    new-instance v22, Ljava/lang/StringBuilder;

    #@19
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v23, "Service: "

    #@1f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v22

    #@23
    move-object/from16 v0, p0

    #@25
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@27
    move-object/from16 v23, v0

    #@29
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v22

    #@2d
    const-string/jumbo v23, " key: "

    #@30
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v22

    #@34
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    #@37
    move-result-object v23

    #@38
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v22

    #@3c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v22

    #@40
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@43
    .line 394
    :cond_1
    const/16 v17, 0x0

    #@45
    .line 395
    .local v17, "result":Landroid/icu/impl/ICUService$CacheEntry;
    if-eqz p1, :cond_1b

    #@47
    .line 400
    :try_start_0
    move-object/from16 v0, p0

    #@49
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@4b
    move-object/from16 v21, v0

    #@4d
    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    #@50
    .line 402
    const/4 v4, 0x0

    #@51
    .line 403
    .local v4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;"
    move-object/from16 v0, p0

    #@53
    iget-object v7, v0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    #@55
    .line 404
    .local v7, "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    if-eqz v7, :cond_3

    #@57
    .line 405
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@59
    if-eqz v21, :cond_2

    #@5b
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@5d
    new-instance v22, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v23, "Service "

    #@65
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v22

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@6d
    move-object/from16 v23, v0

    #@6f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@72
    move-result-object v22

    #@73
    const-string/jumbo v23, " ref exists"

    #@76
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@79
    move-result-object v22

    #@7a
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7d
    move-result-object v22

    #@7e
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@81
    .line 406
    :cond_2
    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    #@84
    move-result-object v4

    #@85
    .end local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;"
    check-cast v4, Ljava/util/Map;

    #@87
    .line 408
    :cond_3
    if-nez v4, :cond_5

    #@89
    .line 409
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@8b
    if-eqz v21, :cond_4

    #@8d
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@8f
    new-instance v22, Ljava/lang/StringBuilder;

    #@91
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@94
    const-string/jumbo v23, "Service "

    #@97
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9a
    move-result-object v22

    #@9b
    move-object/from16 v0, p0

    #@9d
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@9f
    move-object/from16 v23, v0

    #@a1
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a4
    move-result-object v22

    #@a5
    const-string/jumbo v23, " cache was empty"

    #@a8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ab
    move-result-object v22

    #@ac
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@af
    move-result-object v22

    #@b0
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@b3
    .line 412
    :cond_4
    new-instance v21, Ljava/util/HashMap;

    #@b5
    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    #@b8
    invoke-static/range {v21 .. v21}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@bb
    move-result-object v4

    #@bc
    .line 414
    .local v4, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;"
    new-instance v7, Ljava/lang/ref/SoftReference;

    #@be
    .end local v7    # "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@c1
    .line 417
    .end local v4    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;"
    .restart local v7    # "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    :cond_5
    const/4 v8, 0x0

    #@c2
    .line 418
    .local v8, "currentDescriptor":Ljava/lang/String;
    const/4 v5, 0x0

    #@c3
    .line 419
    .local v5, "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    #@c5
    .line 421
    .local v16, "putInCache":Z
    const/4 v2, 0x0

    #@c6
    .line 423
    .local v2, "NDebug":I
    const/16 v20, 0x0

    #@c8
    .line 424
    .local v20, "startIndex":I
    move-object/from16 v0, p0

    #@ca
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@cc
    move-object/from16 v21, v0

    #@ce
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    #@d1
    move-result v15

    #@d2
    .line 425
    .local v15, "limit":I
    const/4 v6, 0x1

    #@d3
    .line 426
    .local v6, "cacheResult":Z
    if-eqz p3, :cond_14

    #@d5
    .line 427
    const/4 v12, 0x0

    #@d6
    .local v12, "i":I
    :goto_0
    if-ge v12, v15, :cond_6

    #@d8
    .line 428
    move-object/from16 v0, p0

    #@da
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@dc
    move-object/from16 v21, v0

    #@de
    move-object/from16 v0, v21

    #@e0
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@e3
    move-result-object v21

    #@e4
    move-object/from16 v0, p3

    #@e6
    move-object/from16 v1, v21

    #@e8
    if-ne v0, v1, :cond_7

    #@ea
    .line 429
    add-int/lit8 v20, v12, 0x1

    #@ec
    .line 433
    :cond_6
    if-nez v20, :cond_8

    #@ee
    .line 434
    new-instance v21, Ljava/lang/IllegalStateException;

    #@f0
    new-instance v22, Ljava/lang/StringBuilder;

    #@f2
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@f5
    const-string/jumbo v23, "Factory "

    #@f8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@fb
    move-result-object v22

    #@fc
    move-object/from16 v0, v22

    #@fe
    move-object/from16 v1, p3

    #@100
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@103
    move-result-object v22

    #@104
    const-string/jumbo v23, "not registered with service: "

    #@107
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10a
    move-result-object v22

    #@10b
    move-object/from16 v0, v22

    #@10d
    move-object/from16 v1, p0

    #@10f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@112
    move-result-object v22

    #@113
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@116
    move-result-object v22

    #@117
    invoke-direct/range {v21 .. v22}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@11a
    throw v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11b
    .line 515
    .end local v2    # "NDebug":I
    .end local v5    # "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "cacheResult":Z
    .end local v7    # "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    .end local v8    # "currentDescriptor":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v15    # "limit":I
    .end local v16    # "putInCache":Z
    .end local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .end local v20    # "startIndex":I
    :catchall_0
    move-exception v21

    #@11c
    .line 516
    :goto_1
    move-object/from16 v0, p0

    #@11e
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@120
    move-object/from16 v22, v0

    #@122
    invoke-virtual/range {v22 .. v22}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    #@125
    .line 515
    throw v21

    #@126
    .line 427
    .restart local v2    # "NDebug":I
    .restart local v5    # "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "cacheResult":Z
    .restart local v7    # "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    .restart local v8    # "currentDescriptor":Ljava/lang/String;
    .restart local v12    # "i":I
    .restart local v15    # "limit":I
    .restart local v16    # "putInCache":Z
    .restart local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .restart local v20    # "startIndex":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    #@128
    goto :goto_0

    #@129
    .line 436
    :cond_8
    const/4 v6, 0x0

    #@12a
    move v3, v2

    #@12b
    .line 441
    .end local v2    # "NDebug":I
    .end local v5    # "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "currentDescriptor":Ljava/lang/String;
    .end local v12    # "i":I
    .end local v16    # "putInCache":Z
    .end local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .local v3, "NDebug":I
    :goto_2
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    #@12e
    move-result-object v8

    #@12f
    .line 442
    .local v8, "currentDescriptor":Ljava/lang/String;
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@131
    if-eqz v21, :cond_1d

    #@133
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@135
    new-instance v22, Ljava/lang/StringBuilder;

    #@137
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@13a
    move-object/from16 v0, p0

    #@13c
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@13e
    move-object/from16 v23, v0

    #@140
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@143
    move-result-object v22

    #@144
    const-string/jumbo v23, "["

    #@147
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14a
    move-result-object v22

    #@14b
    add-int/lit8 v2, v3, 0x1

    #@14d
    .end local v3    # "NDebug":I
    .restart local v2    # "NDebug":I
    move-object/from16 v0, v22

    #@14f
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@152
    move-result-object v22

    #@153
    const-string/jumbo v23, "] looking for: "

    #@156
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@159
    move-result-object v22

    #@15a
    move-object/from16 v0, v22

    #@15c
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15f
    move-result-object v22

    #@160
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@163
    move-result-object v22

    #@164
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@167
    .line 443
    :goto_3
    invoke-interface {v4, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16a
    move-result-object v21

    #@16b
    move-object/from16 v0, v21

    #@16d
    check-cast v0, Landroid/icu/impl/ICUService$CacheEntry;

    #@16f
    move-object/from16 v17, v0

    #@171
    .line 444
    .local v17, "result":Landroid/icu/impl/ICUService$CacheEntry;
    if-eqz v17, :cond_c

    #@173
    .line 445
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@175
    if-eqz v21, :cond_9

    #@177
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@179
    new-instance v22, Ljava/lang/StringBuilder;

    #@17b
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@17e
    move-object/from16 v0, p0

    #@180
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@182
    move-object/from16 v23, v0

    #@184
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@187
    move-result-object v22

    #@188
    const-string/jumbo v23, " found with descriptor: "

    #@18b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18e
    move-result-object v22

    #@18f
    move-object/from16 v0, v22

    #@191
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@194
    move-result-object v22

    #@195
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@198
    move-result-object v22

    #@199
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@19c
    .line 483
    :cond_9
    :goto_4
    if-eqz v17, :cond_1a

    #@19e
    .line 484
    if-eqz v16, :cond_16

    #@1a0
    .line 485
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@1a2
    if-eqz v21, :cond_a

    #@1a4
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1a6
    new-instance v22, Ljava/lang/StringBuilder;

    #@1a8
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1ab
    const-string/jumbo v23, "caching \'"

    #@1ae
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b1
    move-result-object v22

    #@1b2
    move-object/from16 v0, v17

    #@1b4
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    #@1b6
    move-object/from16 v23, v0

    #@1b8
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1bb
    move-result-object v22

    #@1bc
    const-string/jumbo v23, "\'"

    #@1bf
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c2
    move-result-object v22

    #@1c3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c6
    move-result-object v22

    #@1c7
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@1ca
    .line 486
    :cond_a
    move-object/from16 v0, v17

    #@1cc
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    #@1ce
    move-object/from16 v21, v0

    #@1d0
    move-object/from16 v0, v21

    #@1d2
    move-object/from16 v1, v17

    #@1d4
    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1d7
    .line 487
    if-eqz v5, :cond_15

    #@1d9
    .line 488
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1dc
    move-result-object v10

    #@1dd
    .local v10, "desc$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    #@1e0
    move-result v21

    #@1e1
    if-eqz v21, :cond_15

    #@1e3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@1e6
    move-result-object v9

    #@1e7
    check-cast v9, Ljava/lang/String;

    #@1e9
    .line 489
    .local v9, "desc":Ljava/lang/String;
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@1eb
    if-eqz v21, :cond_b

    #@1ed
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@1ef
    new-instance v22, Ljava/lang/StringBuilder;

    #@1f1
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@1f4
    move-object/from16 v0, p0

    #@1f6
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@1f8
    move-object/from16 v23, v0

    #@1fa
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1fd
    move-result-object v22

    #@1fe
    const-string/jumbo v23, " adding descriptor: \'"

    #@201
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@204
    move-result-object v22

    #@205
    move-object/from16 v0, v22

    #@207
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20a
    move-result-object v22

    #@20b
    const-string/jumbo v23, "\' for actual: \'"

    #@20e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@211
    move-result-object v22

    #@212
    move-object/from16 v0, v17

    #@214
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    #@216
    move-object/from16 v23, v0

    #@218
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21b
    move-result-object v22

    #@21c
    const-string/jumbo v23, "\'"

    #@21f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@222
    move-result-object v22

    #@223
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@226
    move-result-object v22

    #@227
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@22a
    .line 491
    :cond_b
    move-object/from16 v0, v17

    #@22c
    invoke-interface {v4, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22f
    goto :goto_5

    #@230
    .line 448
    .end local v9    # "desc":Ljava/lang/String;
    .end local v10    # "desc$iterator":Ljava/util/Iterator;
    :cond_c
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@232
    if-eqz v21, :cond_d

    #@234
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@236
    new-instance v22, Ljava/lang/StringBuilder;

    #@238
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@23b
    const-string/jumbo v23, "did not find: "

    #@23e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@241
    move-result-object v22

    #@242
    move-object/from16 v0, v22

    #@244
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@247
    move-result-object v22

    #@248
    const-string/jumbo v23, " in cache"

    #@24b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24e
    move-result-object v22

    #@24f
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@252
    move-result-object v22

    #@253
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@256
    .line 454
    :cond_d
    move/from16 v16, v6

    #@258
    .line 457
    .local v16, "putInCache":Z
    move/from16 v13, v20

    #@25a
    .local v13, "index":I
    move v14, v13

    #@25b
    .line 458
    .end local v13    # "index":I
    .local v14, "index":I
    :goto_6
    if-ge v14, v15, :cond_12

    #@25d
    .line 459
    move-object/from16 v0, p0

    #@25f
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@261
    move-object/from16 v21, v0

    #@263
    add-int/lit8 v13, v14, 0x1

    #@265
    .end local v14    # "index":I
    .restart local v13    # "index":I
    move-object/from16 v0, v21

    #@267
    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@26a
    move-result-object v11

    #@26b
    check-cast v11, Landroid/icu/impl/ICUService$Factory;

    #@26d
    .line 460
    .local v11, "f":Landroid/icu/impl/ICUService$Factory;
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@26f
    if-eqz v21, :cond_e

    #@271
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@273
    new-instance v22, Ljava/lang/StringBuilder;

    #@275
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@278
    const-string/jumbo v23, "trying factory["

    #@27b
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27e
    move-result-object v22

    #@27f
    add-int/lit8 v23, v13, -0x1

    #@281
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@284
    move-result-object v22

    #@285
    const-string/jumbo v23, "] "

    #@288
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@28b
    move-result-object v22

    #@28c
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@28f
    move-result-object v23

    #@290
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@293
    move-result-object v22

    #@294
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@297
    move-result-object v22

    #@298
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@29b
    .line 461
    :cond_e
    move-object/from16 v0, p1

    #@29d
    move-object/from16 v1, p0

    #@29f
    invoke-interface {v11, v0, v1}, Landroid/icu/impl/ICUService$Factory;->create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;

    #@2a2
    move-result-object v19

    #@2a3
    .line 462
    .local v19, "service":Ljava/lang/Object;
    if-eqz v19, :cond_10

    #@2a5
    .line 463
    new-instance v18, Landroid/icu/impl/ICUService$CacheEntry;

    #@2a7
    move-object/from16 v0, v18

    #@2a9
    move-object/from16 v1, v19

    #@2ab
    invoke-direct {v0, v8, v1}, Landroid/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2ae
    .line 464
    .end local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .local v18, "result":Landroid/icu/impl/ICUService$CacheEntry;
    :try_start_2
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@2b0
    if-eqz v21, :cond_f

    #@2b2
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2b4
    new-instance v22, Ljava/lang/StringBuilder;

    #@2b6
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2b9
    move-object/from16 v0, p0

    #@2bb
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@2bd
    move-object/from16 v23, v0

    #@2bf
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c2
    move-result-object v22

    #@2c3
    const-string/jumbo v23, " factory supported: "

    #@2c6
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2c9
    move-result-object v22

    #@2ca
    move-object/from16 v0, v22

    #@2cc
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2cf
    move-result-object v22

    #@2d0
    const-string/jumbo v23, ", caching"

    #@2d3
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d6
    move-result-object v22

    #@2d7
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2da
    move-result-object v22

    #@2db
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    #@2de
    :cond_f
    move-object/from16 v17, v18

    #@2e0
    .line 465
    .end local v18    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .restart local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    goto/16 :goto_4

    #@2e2
    .line 467
    :cond_10
    :try_start_3
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@2e4
    if-eqz v21, :cond_11

    #@2e6
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@2e8
    new-instance v22, Ljava/lang/StringBuilder;

    #@2ea
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@2ed
    const-string/jumbo v23, "factory did not support: "

    #@2f0
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f3
    move-result-object v22

    #@2f4
    move-object/from16 v0, v22

    #@2f6
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f9
    move-result-object v22

    #@2fa
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2fd
    move-result-object v22

    #@2fe
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@301
    :cond_11
    move v14, v13

    #@302
    .end local v13    # "index":I
    .restart local v14    # "index":I
    goto/16 :goto_6

    #@304
    .line 476
    .end local v11    # "f":Landroid/icu/impl/ICUService$Factory;
    .end local v19    # "service":Ljava/lang/Object;
    :cond_12
    if-nez v5, :cond_13

    #@306
    .line 477
    new-instance v5, Ljava/util/ArrayList;

    #@308
    const/16 v21, 0x5

    #@30a
    move/from16 v0, v21

    #@30c
    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    #@30f
    .line 479
    :cond_13
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    #@312
    .line 481
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    #@315
    move-result v21

    #@316
    if-eqz v21, :cond_9

    #@318
    .end local v8    # "currentDescriptor":Ljava/lang/String;
    .end local v14    # "index":I
    .end local v16    # "putInCache":Z
    .end local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    :cond_14
    move v3, v2

    #@319
    .end local v2    # "NDebug":I
    .restart local v3    # "NDebug":I
    goto/16 :goto_2

    #@31b
    .line 498
    .end local v3    # "NDebug":I
    .restart local v2    # "NDebug":I
    .restart local v8    # "currentDescriptor":Ljava/lang/String;
    .restart local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    :cond_15
    move-object/from16 v0, p0

    #@31d
    iput-object v7, v0, Landroid/icu/impl/ICUService;->cacheref:Ljava/lang/ref/SoftReference;

    #@31f
    .line 501
    :cond_16
    if-eqz p2, :cond_17

    #@321
    .line 503
    move-object/from16 v0, v17

    #@323
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    #@325
    move-object/from16 v21, v0

    #@327
    const-string/jumbo v22, "/"

    #@32a
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    #@32d
    move-result v21

    #@32e
    if-nez v21, :cond_19

    #@330
    .line 504
    move-object/from16 v0, v17

    #@332
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    #@334
    move-object/from16 v21, v0

    #@336
    const/16 v22, 0x1

    #@338
    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@33b
    move-result-object v21

    #@33c
    const/16 v22, 0x0

    #@33e
    aput-object v21, p2, v22

    #@340
    .line 510
    :cond_17
    :goto_7
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@342
    if-eqz v21, :cond_18

    #@344
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@346
    new-instance v22, Ljava/lang/StringBuilder;

    #@348
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@34b
    const-string/jumbo v23, "found in service: "

    #@34e
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@351
    move-result-object v22

    #@352
    move-object/from16 v0, p0

    #@354
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@356
    move-object/from16 v23, v0

    #@358
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35b
    move-result-object v22

    #@35c
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@35f
    move-result-object v22

    #@360
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@363
    .line 512
    :cond_18
    move-object/from16 v0, v17

    #@365
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;

    #@367
    move-object/from16 v21, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@369
    .line 516
    move-object/from16 v0, p0

    #@36b
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@36d
    move-object/from16 v22, v0

    #@36f
    invoke-virtual/range {v22 .. v22}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    #@372
    .line 512
    return-object v21

    #@373
    .line 506
    :cond_19
    :try_start_4
    move-object/from16 v0, v17

    #@375
    iget-object v0, v0, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    #@377
    move-object/from16 v21, v0

    #@379
    const/16 v22, 0x0

    #@37b
    aput-object v21, p2, v22
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    #@37d
    goto :goto_7

    #@37e
    .line 516
    :cond_1a
    move-object/from16 v0, p0

    #@380
    iget-object v0, v0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@382
    move-object/from16 v21, v0

    #@384
    invoke-virtual/range {v21 .. v21}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    #@387
    .line 520
    .end local v2    # "NDebug":I
    .end local v6    # "cacheResult":Z
    .end local v7    # "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    .end local v8    # "currentDescriptor":Ljava/lang/String;
    .end local v15    # "limit":I
    .end local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .end local v20    # "startIndex":I
    :cond_1b
    sget-boolean v21, Landroid/icu/impl/ICUService;->DEBUG:Z

    #@389
    if-eqz v21, :cond_1c

    #@38b
    sget-object v21, Ljava/lang/System;->out:Ljava/io/PrintStream;

    #@38d
    new-instance v22, Ljava/lang/StringBuilder;

    #@38f
    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    #@392
    const-string/jumbo v23, "not found in service: "

    #@395
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@398
    move-result-object v22

    #@399
    move-object/from16 v0, p0

    #@39b
    iget-object v0, v0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@39d
    move-object/from16 v23, v0

    #@39f
    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a2
    move-result-object v22

    #@3a3
    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a6
    move-result-object v22

    #@3a7
    invoke-virtual/range {v21 .. v22}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    #@3aa
    .line 522
    :cond_1c
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    #@3ad
    move-result-object v21

    #@3ae
    return-object v21

    #@3af
    .line 515
    .restart local v2    # "NDebug":I
    .restart local v6    # "cacheResult":Z
    .restart local v7    # "cref":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Ljava/util/Map<Ljava/lang/String;Lcom/ibm/icu/impl/ICUService$CacheEntry;>;>;"
    .restart local v8    # "currentDescriptor":Ljava/lang/String;
    .restart local v11    # "f":Landroid/icu/impl/ICUService$Factory;
    .restart local v13    # "index":I
    .restart local v15    # "limit":I
    .restart local v16    # "putInCache":Z
    .restart local v18    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .restart local v19    # "service":Ljava/lang/Object;
    .restart local v20    # "startIndex":I
    :catchall_1
    move-exception v21

    #@3b0
    move-object/from16 v17, v18

    #@3b2
    .end local v18    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .restart local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    goto/16 :goto_1

    #@3b4
    .end local v2    # "NDebug":I
    .end local v11    # "f":Landroid/icu/impl/ICUService$Factory;
    .end local v13    # "index":I
    .end local v16    # "putInCache":Z
    .end local v17    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .end local v19    # "service":Ljava/lang/Object;
    .restart local v3    # "NDebug":I
    :cond_1d
    move v2, v3

    #@3b5
    .end local v3    # "NDebug":I
    .restart local v2    # "NDebug":I
    goto/16 :goto_3
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 979
    iget-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getVisibleIDs()Ljava/util/Set;
    .locals 1
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
    .line 551
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;
    .locals 6
    .param p1, "matchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 566
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    #@3
    move-result-object v5

    #@4
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@7
    move-result-object v3

    #@8
    .line 568
    .local v3, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    #@b
    move-result-object v0

    #@c
    .line 570
    .local v0, "fallbackKey":Landroid/icu/impl/ICUService$Key;
    if-eqz v0, :cond_2

    #@e
    .line 571
    new-instance v4, Ljava/util/HashSet;

    #@10
    invoke-interface {v3}, Ljava/util/Set;->size()I

    #@13
    move-result v5

    #@14
    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    #@17
    .line 572
    .local v4, "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v2

    #@1b
    .local v2, "id$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v5

    #@1f
    if-eqz v5, :cond_1

    #@21
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v1

    #@25
    check-cast v1, Ljava/lang/String;

    #@27
    .line 573
    .local v1, "id":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    #@2a
    move-result v5

    #@2b
    if-eqz v5, :cond_0

    #@2d
    .line 574
    invoke-interface {v4, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    #@30
    goto :goto_0

    #@31
    .line 577
    .end local v1    # "id":Ljava/lang/String;
    :cond_1
    move-object v3, v4

    #@32
    .line 579
    .end local v2    # "id$iterator":Ljava/util/Iterator;
    .end local v4    # "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_2
    return-object v3
.end method

.method protected handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualIDReturn"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 543
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public isDefault()Z
    .locals 2

    #@0
    .prologue
    .line 887
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    iget v1, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    #@8
    if-ne v0, v1, :cond_0

    #@a
    const/4 v0, 0x1

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x0

    #@d
    goto :goto_0
.end method

.method protected markDefault()V
    .locals 1

    #@0
    .prologue
    .line 895
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@5
    move-result v0

    #@6
    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    #@8
    .line 894
    return-void
.end method

.method protected notifyListener(Ljava/util/EventListener;)V
    .locals 0
    .param p1, "l"    # Ljava/util/EventListener;

    #@0
    .prologue
    .line 958
    check-cast p1, Landroid/icu/impl/ICUService$ServiceListener;

    #@2
    .end local p1    # "l":Ljava/util/EventListener;
    invoke-interface {p1, p0}, Landroid/icu/impl/ICUService$ServiceListener;->serviceChanged(Landroid/icu/impl/ICUService;)V

    #@5
    .line 957
    return-void
.end method

.method protected reInitializeFactories()V
    .locals 1

    #@0
    .prologue
    .line 879
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@2
    invoke-interface {v0}, Ljava/util/List;->clear()V

    #@5
    .line 878
    return-void
.end method

.method public final registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;
    .locals 2
    .param p1, "factory"    # Landroid/icu/impl/ICUService$Factory;

    #@0
    .prologue
    .line 812
    if-nez p1, :cond_0

    #@2
    .line 813
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 816
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@a
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    #@d
    .line 817
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@f
    const/4 v1, 0x0

    #@10
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    #@13
    .line 818
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 821
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@18
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    #@1b
    .line 823
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    #@1e
    .line 824
    return-object p1

    #@1f
    .line 820
    :catchall_0
    move-exception v0

    #@20
    .line 821
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@22
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    #@25
    .line 820
    throw v0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;)Landroid/icu/impl/ICUService$Factory;
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;

    #@0
    .prologue
    .line 793
    const/4 v0, 0x1

    #@1
    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;

    #@4
    move-result-object v0

    #@5
    return-object v0
.end method

.method public registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    #@0
    .prologue
    .line 802
    invoke-virtual {p0, p2}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 803
    .local v0, "canonicalID":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ICUService$SimpleFactory;

    #@a
    invoke-direct {v1, p1, v0, p3}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    #@d
    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    #@10
    move-result-object v1

    #@11
    return-object v1
.end method

.method public final reset()V
    .locals 2

    #@0
    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@2
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    #@5
    .line 862
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->reInitializeFactories()V

    #@8
    .line 863
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@b
    .line 866
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@d
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    #@10
    .line 868
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    #@13
    .line 859
    return-void

    #@14
    .line 865
    :catchall_0
    move-exception v0

    #@15
    .line 866
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@17
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    #@1a
    .line 865
    throw v0
.end method

.method public stats()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 968
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@2
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->resetStats()Landroid/icu/impl/ICURWLock$Stats;

    #@5
    move-result-object v0

    #@6
    .line 969
    .local v0, "stats":Landroid/icu/impl/ICURWLock$Stats;
    if-eqz v0, :cond_0

    #@8
    .line 970
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock$Stats;->toString()Ljava/lang/String;

    #@b
    move-result-object v1

    #@c
    return-object v1

    #@d
    .line 972
    :cond_0
    const-string/jumbo v1, "no stats"

    #@10
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-super {p0}, Landroid/icu/impl/ICUNotifier;->toString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    const-string/jumbo v1, "{"

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    #@16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v0

    #@1a
    const-string/jumbo v1, "}"

    #@1d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v0

    #@21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@24
    move-result-object v0

    #@25
    return-object v0
.end method

.method public final unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z
    .locals 3
    .param p1, "factory"    # Landroid/icu/impl/ICUService$Factory;

    #@0
    .prologue
    .line 833
    if-nez p1, :cond_0

    #@2
    .line 834
    new-instance v1, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v1

    #@8
    .line 837
    :cond_0
    const/4 v0, 0x0

    #@9
    .line 839
    .local v0, "result":Z
    :try_start_0
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@b
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    #@e
    .line 840
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    #@10
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 841
    const/4 v0, 0x1

    #@17
    .line 842
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 846
    :cond_1
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@1c
    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    #@1f
    .line 849
    if-eqz v0, :cond_2

    #@21
    .line 850
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    #@24
    .line 852
    :cond_2
    return v0

    #@25
    .line 845
    :catchall_0
    move-exception v1

    #@26
    .line 846
    iget-object v2, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    #@28
    invoke-virtual {v2}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    #@2b
    .line 845
    throw v1
.end method
