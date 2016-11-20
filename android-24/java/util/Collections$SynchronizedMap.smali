.class Ljava/util/Collections$SynchronizedMap;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Map;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SynchronizedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field private transient entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field private final m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;

.field private transient values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2330
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    #@6
    .line 2331
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    #@8
    .line 2332
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    #@a
    .line 2292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@d
    move-result-object v0

    #@e
    check-cast v0, Ljava/util/Map;

    #@10
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@12
    .line 2293
    iput-object p0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@14
    .line 2291
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 2296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 2330
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    #@6
    .line 2331
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    #@8
    .line 2332
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    #@a
    .line 2297
    iput-object p1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@c
    .line 2298
    iput-object p2, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@e
    .line 2296
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 2421
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v0

    #@3
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@6
    monitor-exit v0

    #@7
    .line 2420
    return-void

    #@8
    .line 2421
    :catchall_0
    move-exception v1

    #@9
    monitor-exit v0

    #@a
    throw v1
.end method


# virtual methods
.method public clear()V
    .locals 2

    #@0
    .prologue
    .line 2327
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2326
    return-void

    #@a
    .line 2327
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2412
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function",
            "<-TK;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2402
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2407
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2308
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2311
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2343
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2344
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2345
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@9
    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@b
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@11
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    #@14
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    #@16
    .line 2346
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 2343
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2359
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    if-ne p0, p1, :cond_0

    #@2
    .line 2360
    const/4 v0, 0x1

    #@3
    return v0

    #@4
    .line 2361
    :cond_0
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@6
    monitor-enter v1

    #@7
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@9
    invoke-interface {v0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c
    move-result v0

    #@d
    monitor-exit v1

    #@e
    return v0

    #@f
    :catchall_0
    move-exception v0

    #@10
    monitor-exit v1

    #@11
    throw v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer",
            "<-TK;-TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2377
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2376
    return-void

    #@a
    .line 2377
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2314
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2373
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 2364
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public isEmpty()Z
    .locals 2

    #@0
    .prologue
    .line 2305
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2335
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2336
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2337
    new-instance v0, Ljava/util/Collections$SynchronizedSet;

    #@9
    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@11
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    #@14
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    #@16
    .line 2338
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 2335
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method

.method public merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction",
            "<-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2417
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2318
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2324
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2323
    return-void

    #@a
    .line 2324
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2385
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2321
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2389
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 2397
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 2393
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public replaceAll(Ljava/util/function/BiFunction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction",
            "<-TK;-TV;+TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 2381
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    monitor-exit v1

    #@9
    .line 2380
    return-void

    #@a
    .line 2381
    :catchall_0
    move-exception v0

    #@b
    monitor-exit v1

    #@c
    throw v0
.end method

.method public size()I
    .locals 2

    #@0
    .prologue
    .line 2302
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-interface {v0}, Ljava/util/Map;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result v0

    #@9
    monitor-exit v1

    #@a
    return v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 2367
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@5
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@8
    move-result-object v0

    #@9
    monitor-exit v1

    #@a
    return-object v0

    #@b
    :catchall_0
    move-exception v0

    #@c
    monitor-exit v1

    #@d
    throw v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 2351
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@2
    monitor-enter v1

    #@3
    .line 2352
    :try_start_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    #@5
    if-nez v0, :cond_0

    #@7
    .line 2353
    new-instance v0, Ljava/util/Collections$SynchronizedCollection;

    #@9
    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    #@b
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    #@e
    move-result-object v2

    #@f
    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    #@11
    invoke-direct {v0, v2, v3}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    #@14
    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    #@16
    .line 2354
    :cond_0
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@18
    monitor-exit v1

    #@19
    return-object v0

    #@1a
    .line 2351
    :catchall_0
    move-exception v0

    #@1b
    monitor-exit v1

    #@1c
    throw v0
.end method
