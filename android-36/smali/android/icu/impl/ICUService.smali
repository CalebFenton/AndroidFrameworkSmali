.class public Landroid/icu/impl/ICUService;
.super Landroid/icu/impl/ICUNotifier;
.source "ICUService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/ICUService$Key;,
        Landroid/icu/impl/ICUService$Factory;,
        Landroid/icu/impl/ICUService$CacheEntry;,
        Landroid/icu/impl/ICUService$LocaleRef;,
        Landroid/icu/impl/ICUService$SimpleFactory;,
        Landroid/icu/impl/ICUService$ServiceListener;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z


# instance fields
.field private blacklist cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$CacheEntry;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist defaultSize:I

.field private blacklist dnref:Landroid/icu/impl/ICUService$LocaleRef;

.field private final blacklist factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist factoryLock:Landroid/icu/impl/ICURWLock;

.field private blacklist idcache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation
.end field

.field protected final blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 109
    const-string v0, "service"

    invoke-static {v0}, Landroid/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 105
    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    .line 122
    new-instance v0, Landroid/icu/impl/ICURWLock;

    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    .line 106
    const-string v0, ""

    iput-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 113
    invoke-direct {p0}, Landroid/icu/impl/ICUNotifier;-><init>()V

    .line 122
    new-instance v0, Landroid/icu/impl/ICURWLock;

    invoke-direct {v0}, Landroid/icu/impl/ICURWLock;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    .line 114
    iput-object p1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method private blacklist getVisibleIDMap()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    .line 590
    monitor-enter p0

    .line 591
    :try_start_1
    iget-object v0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_45

    if-nez v0, :cond_41

    .line 593
    :try_start_5
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    .line 594
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 595
    .local v0, "mutableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    iget-object v2, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 596
    .local v1, "lIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/icu/impl/ICUService$Factory;>;"
    :goto_1b
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 597
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/icu/impl/ICUService$Factory;

    .line 598
    .local v2, "f":Landroid/icu/impl/ICUService$Factory;
    invoke-interface {v2, v0}, Landroid/icu/impl/ICUService$Factory;->updateVisibleIDs(Ljava/util/Map;)V

    .line 599
    .end local v2    # "f":Landroid/icu/impl/ICUService$Factory;
    goto :goto_1b

    .line 602
    :cond_2b
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 603
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    iput-object v2, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_39

    .line 604
    nop

    .line 606
    :try_start_32
    iget-object v3, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v3}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    monitor-exit p0

    .line 604
    return-object v2

    .line 606
    .end local v0    # "mutableMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    .end local v1    # "lIter":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Landroid/icu/impl/ICUService$Factory;>;"
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    :catchall_39
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    .line 607
    nop

    .end local p0    # "this":Landroid/icu/impl/ICUService;
    throw v0

    .line 609
    .restart local p0    # "this":Landroid/icu/impl/ICUService;
    :cond_41
    iget-object v0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;

    monitor-exit p0

    return-object v0

    .line 610
    :catchall_45
    move-exception v0

    monitor-exit p0
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_45

    throw v0
.end method


# virtual methods
.method protected blacklist acceptsListener(Ljava/util/EventListener;)Z
    .registers 3
    .param p1, "l"    # Ljava/util/EventListener;

    .line 942
    instance-of v0, p1, Landroid/icu/impl/ICUService$ServiceListener;

    return v0
.end method

.method protected blacklist clearCaches()V
    .registers 2

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 909
    iput-object v0, p0, Landroid/icu/impl/ICUService;->idcache:Ljava/util/Map;

    .line 910
    iput-object v0, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    .line 911
    return-void
.end method

.method protected blacklist clearServiceCache()V
    .registers 2

    .line 920
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 921
    return-void
.end method

.method public blacklist createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 894
    if-nez p1, :cond_4

    const/4 v0, 0x0

    goto :goto_9

    :cond_4
    new-instance v0, Landroid/icu/impl/ICUService$Key;

    invoke-direct {v0, p1}, Landroid/icu/impl/ICUService$Key;-><init>(Ljava/lang/String;)V

    :goto_9
    return-object v0
.end method

.method public final blacklist factories()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/icu/impl/ICUService$Factory;",
            ">;"
        }
    .end annotation

    .line 770
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    .line 771
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_12

    .line 774
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    .line 771
    return-object v0

    .line 774
    :catchall_12
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    .line 775
    throw v0
.end method

.method public blacklist get(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "descriptor"    # Ljava/lang/String;

    .line 355
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist get(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .param p1, "descriptor"    # Ljava/lang/String;
    .param p2, "actualReturn"    # [Ljava/lang/String;

    .line 363
    if-eqz p1, :cond_b

    .line 366
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 364
    :cond_b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "descriptor must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist getDisplayName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "id"    # Ljava/lang/String;

    .line 619
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;
    .registers 7
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "locale"    # Landroid/icu/util/ULocale;

    .line 628
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v0

    .line 629
    .local v0, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    .line 630
    .local v1, "f":Landroid/icu/impl/ICUService$Factory;
    if-eqz v1, :cond_11

    .line 631
    invoke-interface {v1, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 634
    :cond_11
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v2

    .line 635
    .local v2, "key":Landroid/icu/impl/ICUService$Key;
    :cond_15
    invoke-virtual {v2}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    move-result v3

    if-eqz v3, :cond_2d

    .line 636
    invoke-virtual {v2}, Landroid/icu/impl/ICUService$Key;->currentID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Landroid/icu/impl/ICUService$Factory;

    .line 637
    if-eqz v1, :cond_15

    .line 638
    invoke-interface {v1, p1, p2}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 642
    :cond_2d
    const/4 v3, 0x0

    return-object v3
.end method

.method public blacklist getDisplayNames()Ljava/util/SortedMap;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 651
    sget-object v0, Landroid/icu/util/ULocale$Category;->DISPLAY:Landroid/icu/util/ULocale$Category;

    invoke-static {v0}, Landroid/icu/util/ULocale;->getDefault(Landroid/icu/util/ULocale$Category;)Landroid/icu/util/ULocale;

    move-result-object v0

    .line 652
    .local v0, "locale":Landroid/icu/util/ULocale;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v1}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getDisplayNames(Landroid/icu/util/ULocale;)Ljava/util/SortedMap;
    .registers 3
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 660
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayNames(Landroid/icu/util/ULocale;Ljava/lang/String;)Ljava/util/SortedMap;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p2, "matchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 676
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;
    .registers 4
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 668
    .local p2, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getDisplayNames(Landroid/icu/util/ULocale;Ljava/util/Comparator;Ljava/lang/String;)Ljava/util/SortedMap;
    .registers 12
    .param p1, "locale"    # Landroid/icu/util/ULocale;
    .param p3, "matchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/icu/util/ULocale;",
            "Ljava/util/Comparator<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/SortedMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 690
    .local p2, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    const/4 v0, 0x0

    .line 691
    .local v0, "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    .line 693
    .local v1, "ref":Landroid/icu/impl/ICUService$LocaleRef;
    if-eqz v1, :cond_9

    .line 694
    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v0

    .line 697
    :cond_9
    :goto_9
    if-nez v0, :cond_63

    .line 698
    monitor-enter p0

    .line 699
    :try_start_c
    iget-object v2, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-eq v1, v2, :cond_1e

    iget-object v2, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    if-nez v2, :cond_15

    goto :goto_1e

    .line 714
    :cond_15
    iget-object v2, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    move-object v1, v2

    .line 715
    invoke-virtual {v1, p1, p2}, Landroid/icu/impl/ICUService$LocaleRef;->get(Landroid/icu/util/ULocale;Ljava/util/Comparator;)Ljava/util/SortedMap;

    move-result-object v2

    .end local v0    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v2, "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v2

    goto :goto_5e

    .line 700
    .end local v2    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v0    # "dncache":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1e
    :goto_1e
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2, p2}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    move-object v0, v2

    .line 702
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v2

    .line 703
    .local v2, "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 704
    .local v3, "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;>;"
    :goto_30
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_51

    .line 705
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 706
    .local v4, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 707
    .local v5, "id":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/icu/impl/ICUService$Factory;

    .line 708
    .local v6, "f":Landroid/icu/impl/ICUService$Factory;
    invoke-interface {v6, v5, p1}, Landroid/icu/impl/ICUService$Factory;->getDisplayName(Ljava/lang/String;Landroid/icu/util/ULocale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v5}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    nop

    .end local v4    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    .end local v5    # "id":Ljava/lang/String;
    .end local v6    # "f":Landroid/icu/impl/ICUService$Factory;
    goto :goto_30

    .line 711
    :cond_51
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedMap(Ljava/util/SortedMap;)Ljava/util/SortedMap;

    move-result-object v4

    move-object v0, v4

    .line 712
    new-instance v4, Landroid/icu/impl/ICUService$LocaleRef;

    invoke-direct {v4, v0, p1, p2}, Landroid/icu/impl/ICUService$LocaleRef;-><init>(Ljava/util/SortedMap;Landroid/icu/util/ULocale;Ljava/util/Comparator;)V

    iput-object v4, p0, Landroid/icu/impl/ICUService;->dnref:Landroid/icu/impl/ICUService$LocaleRef;

    .line 713
    .end local v2    # "m":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;"
    .end local v3    # "ei":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;>;>;"
    nop

    .line 717
    :goto_5e
    monitor-exit p0

    goto :goto_9

    :catchall_60
    move-exception v2

    monitor-exit p0
    :try_end_62
    .catchall {:try_start_c .. :try_end_62} :catchall_60

    throw v2

    .line 720
    :cond_63
    invoke-virtual {p0, p3}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v2

    .line 721
    .local v2, "matchKey":Landroid/icu/impl/ICUService$Key;
    if-nez v2, :cond_6a

    .line 722
    return-object v0

    .line 725
    :cond_6a
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    .line 726
    .local v3, "result":Ljava/util/SortedMap;, "Ljava/util/SortedMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 727
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_77
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_93

    .line 728
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 729
    .local v5, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_92

    .line 730
    invoke-interface {v4}, Ljava/util/Iterator;->remove()V

    .line 732
    .end local v5    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_92
    goto :goto_77

    .line 733
    :cond_93
    return-object v3
.end method

.method public blacklist getKey(Landroid/icu/impl/ICUService$Key;)Ljava/lang/Object;
    .registers 3
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;

    .line 373
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualReturn"    # [Ljava/lang/String;

    .line 392
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getKey(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;Landroid/icu/impl/ICUService$Factory;)Ljava/lang/Object;
    .registers 20
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualReturn"    # [Ljava/lang/String;
    .param p3, "factory"    # Landroid/icu/impl/ICUService$Factory;

    .line 399
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    iget-object v0, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_13

    .line 400
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 403
    :cond_13
    sget-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v0, :cond_3f

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 405
    :cond_3f
    const/4 v4, 0x0

    .line 406
    .local v4, "result":Landroid/icu/impl/ICUService$CacheEntry;
    if-eqz v2, :cond_2af

    .line 411
    :try_start_42
    iget-object v0, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireRead()V

    .line 413
    iget-object v0, v1, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 414
    .local v0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$CacheEntry;>;"
    if-nez v0, :cond_75

    .line 415
    sget-boolean v5, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v5, :cond_6f

    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cache was empty"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 418
    :cond_6f
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v5

    .line 421
    :cond_75
    const/4 v5, 0x0

    .line 422
    .local v5, "currentDescriptor":Ljava/lang/String;
    const/4 v6, 0x0

    .line 423
    .local v6, "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 425
    .local v7, "putInCache":Z
    const/4 v8, 0x0

    .line 427
    .local v8, "NDebug":I
    const/4 v9, 0x0

    .line 428
    .local v9, "startIndex":I
    iget-object v10, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    .line 429
    .local v10, "limit":I
    const/4 v11, 0x1

    .line 430
    .local v11, "cacheResult":Z
    if-eqz v3, :cond_bb

    .line 431
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_84
    if-ge v12, v10, :cond_94

    .line 432
    iget-object v13, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    if-ne v3, v13, :cond_91

    .line 433
    add-int/lit8 v9, v12, 0x1

    .line 434
    goto :goto_94

    .line 431
    :cond_91
    add-int/lit8 v12, v12, 0x1

    goto :goto_84

    .line 437
    .end local v12    # "i":I
    :cond_94
    :goto_94
    if-eqz v9, :cond_98

    .line 440
    const/4 v11, 0x0

    goto :goto_bb

    .line 438
    :cond_98
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Factory "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "not registered with service: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v4    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .end local p0    # "this":Landroid/icu/impl/ICUService;
    .end local p1    # "key":Landroid/icu/impl/ICUService$Key;
    .end local p2    # "actualReturn":[Ljava/lang/String;
    .end local p3    # "factory":Landroid/icu/impl/ICUService$Factory;
    throw v12

    .line 445
    .restart local v4    # "result":Landroid/icu/impl/ICUService$CacheEntry;
    .restart local p0    # "this":Landroid/icu/impl/ICUService;
    .restart local p1    # "key":Landroid/icu/impl/ICUService$Key;
    .restart local p2    # "actualReturn":[Ljava/lang/String;
    .restart local p3    # "factory":Landroid/icu/impl/ICUService$Factory;
    :cond_bb
    :goto_bb
    invoke-virtual {v2}, Landroid/icu/impl/ICUService$Key;->currentDescriptor()Ljava/lang/String;

    move-result-object v12

    move-object v5, v12

    .line 446
    sget-boolean v12, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v12, :cond_ef

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    add-int/lit8 v14, v8, 0x1

    .end local v8    # "NDebug":I
    .local v14, "NDebug":I
    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v13, "] looking for: "

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move v8, v14

    .line 447
    .end local v14    # "NDebug":I
    .restart local v8    # "NDebug":I
    :cond_ef
    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/ICUService$CacheEntry;

    move-object v4, v12

    .line 448
    if-eqz v4, :cond_11c

    .line 449
    sget-boolean v12, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v12, :cond_1e3

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " found with descriptor: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1e3

    .line 452
    :cond_11c
    sget-boolean v12, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v12, :cond_13e

    sget-object v12, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "did not find: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in cache"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 458
    :cond_13e
    move v7, v11

    .line 461
    move v12, v9

    .line 462
    .local v12, "index":I
    :goto_140
    if-ge v12, v10, :cond_1d0

    .line 463
    iget-object v13, v1, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    add-int/lit8 v14, v12, 0x1

    .end local v12    # "index":I
    .local v14, "index":I
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/icu/impl/ICUService$Factory;

    .line 464
    .local v12, "f":Landroid/icu/impl/ICUService$Factory;
    sget-boolean v13, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v13, :cond_178

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trying factory["

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v15, v14, -0x1

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, "] "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v12}, Landroid/icu/impl/ICUService$Factory;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 465
    :cond_178
    invoke-interface {v12, v2, v1}, Landroid/icu/impl/ICUService$Factory;->create(Landroid/icu/impl/ICUService$Key;Landroid/icu/impl/ICUService;)Ljava/lang/Object;

    move-result-object v3

    .line 466
    .local v3, "service":Ljava/lang/Object;
    if-eqz v3, :cond_1ad

    .line 467
    new-instance v13, Landroid/icu/impl/ICUService$CacheEntry;

    invoke-direct {v13, v5, v3}, Landroid/icu/impl/ICUService$CacheEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v13

    .line 468
    sget-boolean v13, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v13, :cond_1e3

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " factory supported: "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ", caching"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1e3

    .line 471
    :cond_1ad
    sget-boolean v2, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_1c9

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "factory did not support: "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 473
    .end local v3    # "service":Ljava/lang/Object;
    .end local v12    # "f":Landroid/icu/impl/ICUService$Factory;
    :cond_1c9
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move v12, v14

    goto/16 :goto_140

    .line 480
    .end local v14    # "index":I
    .local v12, "index":I
    :cond_1d0
    if-nez v6, :cond_1d9

    .line 481
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object v6, v2

    .line 483
    :cond_1d9
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    nop

    .end local v12    # "index":I
    invoke-virtual/range {p1 .. p1}, Landroid/icu/impl/ICUService$Key;->fallback()Z

    move-result v2

    if-nez v2, :cond_2a2

    .line 487
    :cond_1e3
    :goto_1e3
    if-eqz v4, :cond_29c

    .line 488
    if-eqz v7, :cond_25b

    .line 489
    sget-boolean v2, Landroid/icu/impl/ICUService;->DEBUG:Z
    :try_end_1e9
    .catchall {:try_start_42 .. :try_end_1e9} :catchall_2a8

    const-string v3, "\'"

    if-eqz v2, :cond_20b

    :try_start_1ed
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "caching \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v4, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 490
    :cond_20b
    iget-object v2, v4, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    if-eqz v6, :cond_259

    .line 492
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_216
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_259

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 493
    .local v12, "desc":Ljava/lang/String;
    sget-boolean v13, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v13, :cond_254

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " adding descriptor: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "\' for actual: \'"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v4, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 495
    :cond_254
    invoke-interface {v0, v12, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    nop

    .end local v12    # "desc":Ljava/lang/String;
    goto :goto_216

    .line 502
    :cond_259
    iput-object v0, v1, Landroid/icu/impl/ICUService;->cache:Ljava/util/Map;

    .line 505
    :cond_25b
    if-eqz p2, :cond_276

    .line 507
    iget-object v2, v4, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_272

    .line 508
    iget-object v2, v4, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p2, v3

    goto :goto_276

    .line 510
    :cond_272
    iget-object v2, v4, Landroid/icu/impl/ICUService$CacheEntry;->actualDescriptor:Ljava/lang/String;

    aput-object v2, p2, v3

    .line 514
    :cond_276
    :goto_276
    sget-boolean v2, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v2, :cond_294

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "found in service: "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v12, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 516
    :cond_294
    iget-object v2, v4, Landroid/icu/impl/ICUService$CacheEntry;->service:Ljava/lang/Object;
    :try_end_296
    .catchall {:try_start_1ed .. :try_end_296} :catchall_2a8

    .line 520
    iget-object v3, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v3}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    .line 516
    return-object v2

    .line 520
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$CacheEntry;>;"
    .end local v5    # "currentDescriptor":Ljava/lang/String;
    .end local v6    # "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "putInCache":Z
    .end local v8    # "NDebug":I
    .end local v9    # "startIndex":I
    .end local v10    # "limit":I
    .end local v11    # "cacheResult":Z
    :cond_29c
    iget-object v0, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    .line 521
    goto :goto_2af

    .line 485
    .restart local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$CacheEntry;>;"
    .restart local v5    # "currentDescriptor":Ljava/lang/String;
    .restart local v6    # "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v7    # "putInCache":Z
    .restart local v8    # "NDebug":I
    .restart local v9    # "startIndex":I
    .restart local v10    # "limit":I
    .restart local v11    # "cacheResult":Z
    :cond_2a2
    move-object/from16 v2, p1

    move-object/from16 v3, p3

    goto/16 :goto_bb

    .line 520
    .end local v0    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/icu/impl/ICUService$CacheEntry;>;"
    .end local v5    # "currentDescriptor":Ljava/lang/String;
    .end local v6    # "cacheDescriptorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v7    # "putInCache":Z
    .end local v8    # "NDebug":I
    .end local v9    # "startIndex":I
    .end local v10    # "limit":I
    .end local v11    # "cacheResult":Z
    :catchall_2a8
    move-exception v0

    iget-object v2, v1, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v2}, Landroid/icu/impl/ICURWLock;->releaseRead()V

    .line 521
    throw v0

    .line 524
    :cond_2af
    :goto_2af
    sget-boolean v0, Landroid/icu/impl/ICUService;->DEBUG:Z

    if-eqz v0, :cond_2cd

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not found in service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 526
    :cond_2cd
    invoke-virtual/range {p0 .. p2}, Landroid/icu/impl/ICUService;->handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 972
    iget-object v0, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getVisibleIDs()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 555
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/icu/impl/ICUService;->getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getVisibleIDs(Ljava/lang/String;)Ljava/util/Set;
    .registers 8
    .param p1, "matchID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    invoke-direct {p0}, Landroid/icu/impl/ICUService;->getVisibleIDMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 572
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v1

    .line 574
    .local v1, "fallbackKey":Landroid/icu/impl/ICUService$Key;
    if-eqz v1, :cond_32

    .line 575
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 576
    .local v2, "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 577
    .local v4, "id":Ljava/lang/String;
    invoke-virtual {v1, v4}, Landroid/icu/impl/ICUService$Key;->isFallbackOf(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 578
    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 580
    .end local v4    # "id":Ljava/lang/String;
    :cond_30
    goto :goto_1b

    .line 581
    :cond_31
    move-object v0, v2

    .line 583
    .end local v2    # "temp":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_32
    return-object v0
.end method

.method protected blacklist handleDefault(Landroid/icu/impl/ICUService$Key;[Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Landroid/icu/impl/ICUService$Key;
    .param p2, "actualIDReturn"    # [Ljava/lang/String;

    .line 547
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist isDefault()Z
    .registers 3

    .line 877
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method protected blacklist markDefault()V
    .registers 2

    .line 885
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Landroid/icu/impl/ICUService;->defaultSize:I

    .line 886
    return-void
.end method

.method protected blacklist notifyListener(Ljava/util/EventListener;)V
    .registers 3
    .param p1, "l"    # Ljava/util/EventListener;

    .line 951
    move-object v0, p1

    check-cast v0, Landroid/icu/impl/ICUService$ServiceListener;

    invoke-interface {v0, p0}, Landroid/icu/impl/ICUService$ServiceListener;->serviceChanged(Landroid/icu/impl/ICUService;)V

    .line 952
    return-void
.end method

.method protected blacklist reInitializeFactories()V
    .registers 2

    .line 869
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 870
    return-void
.end method

.method public final blacklist registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;
    .registers 4
    .param p1, "factory"    # Landroid/icu/impl/ICUService$Factory;

    .line 802
    if-eqz p1, :cond_21

    .line 806
    :try_start_2
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    .line 807
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 808
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_1a

    .line 811
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 812
    nop

    .line 813
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    .line 814
    return-object p1

    .line 811
    :catchall_1a
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 812
    throw v0

    .line 803
    :cond_21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public blacklist registerObject(Ljava/lang/Object;Ljava/lang/String;)Landroid/icu/impl/ICUService$Factory;
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;

    .line 783
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/icu/impl/ICUService;->registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;

    move-result-object v0

    return-object v0
.end method

.method public blacklist registerObject(Ljava/lang/Object;Ljava/lang/String;Z)Landroid/icu/impl/ICUService$Factory;
    .registers 6
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "visible"    # Z

    .line 792
    invoke-virtual {p0, p2}, Landroid/icu/impl/ICUService;->createKey(Ljava/lang/String;)Landroid/icu/impl/ICUService$Key;

    move-result-object v0

    invoke-virtual {v0}, Landroid/icu/impl/ICUService$Key;->canonicalID()Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "canonicalID":Ljava/lang/String;
    new-instance v1, Landroid/icu/impl/ICUService$SimpleFactory;

    invoke-direct {v1, p1, v0, p3}, Landroid/icu/impl/ICUService$SimpleFactory;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    invoke-virtual {p0, v1}, Landroid/icu/impl/ICUService;->registerFactory(Landroid/icu/impl/ICUService$Factory;)Landroid/icu/impl/ICUService$Factory;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist reset()V
    .registers 3

    .line 851
    :try_start_0
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    .line 852
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->reInitializeFactories()V

    .line 853
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_15

    .line 856
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 857
    nop

    .line 858
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    .line 859
    return-void

    .line 856
    :catchall_15
    move-exception v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 857
    throw v0
.end method

.method public blacklist stats()Ljava/lang/String;
    .registers 3

    .line 961
    iget-object v0, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock;->resetStats()Landroid/icu/impl/ICURWLock$Stats;

    move-result-object v0

    .line 962
    .local v0, "stats":Landroid/icu/impl/ICURWLock$Stats;
    if-eqz v0, :cond_d

    .line 963
    invoke-virtual {v0}, Landroid/icu/impl/ICURWLock$Stats;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 965
    :cond_d
    const-string v1, "no stats"

    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/icu/impl/ICUService;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final blacklist unregisterFactory(Landroid/icu/impl/ICUService$Factory;)Z
    .registers 5
    .param p1, "factory"    # Landroid/icu/impl/ICUService$Factory;

    .line 823
    if-eqz p1, :cond_27

    .line 827
    const/4 v0, 0x0

    .line 829
    .local v0, "result":Z
    :try_start_3
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->acquireWrite()V

    .line 830
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factories:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 831
    const/4 v0, 0x1

    .line 832
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->clearCaches()V
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_20

    .line 836
    :cond_14
    iget-object v1, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v1}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 837
    nop

    .line 839
    if-eqz v0, :cond_1f

    .line 840
    invoke-virtual {p0}, Landroid/icu/impl/ICUService;->notifyChanged()V

    .line 842
    :cond_1f
    return v0

    .line 836
    :catchall_20
    move-exception v1

    iget-object v2, p0, Landroid/icu/impl/ICUService;->factoryLock:Landroid/icu/impl/ICURWLock;

    invoke-virtual {v2}, Landroid/icu/impl/ICURWLock;->releaseWrite()V

    .line 837
    throw v1

    .line 824
    .end local v0    # "result":Z
    :cond_27
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
