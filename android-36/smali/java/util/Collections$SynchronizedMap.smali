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
        "Ljava/util/Map<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x1b73f9094b4b397bL


# instance fields
.field private transient greylist-max-o entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient greylist-max-o keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final greylist m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final greylist-max-o mutex:Ljava/lang/Object;

.field private transient greylist-max-o values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 2933
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2934
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    .line 2935
    iput-object p0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    .line 2936
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/util/Map;Ljava/lang/Object;)V
    .registers 3
    .param p2, "mutex"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 2938
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2939
    iput-object p1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    .line 2940
    iput-object p2, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    .line 2941
    return-void
.end method

.method private whitelist writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "s"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3064
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    .line 3065
    return-void

    .line 3064
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 3

    .line 2969
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0

    .line 2970
    return-void

    .line 2969
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 3054
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->compute(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation

    .line 3044
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "mappingFunction":Ljava/util/function/Function;, "Ljava/util/function/Function<-TK;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 3049
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->computeIfPresent(Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 2950
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "value"    # Ljava/lang/Object;

    .line 2953
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2985
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2986
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    if-nez v1, :cond_16

    .line 2987
    new-instance v1, Ljava/util/Collections$SynchronizedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    .line 2988
    :cond_16
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->entrySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 2989
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 3001
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    if-ne p0, p1, :cond_4

    .line 3002
    const/4 v0, 0x1

    return v0

    .line 3003
    :cond_4
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_7
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public whitelist test-api forEach(Ljava/util/function/BiConsumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 3019
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    monitor-exit v0

    .line 3020
    return-void

    .line 3019
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2956
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "k"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .line 3015
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3006
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api isEmpty()Z
    .registers 3

    .line 2947
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 2977
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2978
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    if-nez v1, :cond_16

    .line 2979
    new-instance v1, Ljava/util/Collections$SynchronizedSet;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSet;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    .line 2980
    :cond_16
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->keySet:Ljava/util/Set;

    monitor-exit v0

    return-object v1

    .line 2981
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public whitelist test-api merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/function/BiFunction<",
            "-TV;-TV;+TV;>;)TV;"
        }
    .end annotation

    .line 3059
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p3, "remappingFunction":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TV;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/Map;->merge(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BiFunction;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 2960
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 2966
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    monitor-exit v0

    .line 2967
    return-void

    .line 2966
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3027
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 2963
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 3031
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 3039
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 3035
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api replaceAll(Ljava/util/function/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "-TK;-TV;+TV;>;)V"
        }
    .end annotation

    .line 3023
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    .local p1, "function":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<-TK;-TV;+TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->replaceAll(Ljava/util/function/BiFunction;)V

    monitor-exit v0

    .line 3024
    return-void

    .line 3023
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public whitelist test-api size()I
    .registers 3

    .line 2944
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3009
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 2993
    .local p0, "this":Ljava/util/Collections$SynchronizedMap;, "Ljava/util/Collections$SynchronizedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 2994
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    if-nez v1, :cond_16

    .line 2995
    new-instance v1, Ljava/util/Collections$SynchronizedCollection;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedMap;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    iput-object v1, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    .line 2996
    :cond_16
    iget-object v1, p0, Ljava/util/Collections$SynchronizedMap;->values:Ljava/util/Collection;

    monitor-exit v0

    return-object v1

    .line 2997
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw v1
.end method
