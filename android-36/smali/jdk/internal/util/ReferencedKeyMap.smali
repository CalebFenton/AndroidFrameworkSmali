.class public final Ljdk/internal/util/ReferencedKeyMap;
.super Ljava/lang/Object;
.source "ReferencedKeyMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final blacklist isSoft:Z

.field private final blacklist map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;TV;>;"
        }
    .end annotation
.end field

.field private final blacklist stale:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$87dF8Y8_6_P_GeO53zYiJajSDz4(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/util/AbstractMap$SimpleEntry;
    .registers 2

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lambda$entrySet$0(Ljava/lang/Object;)Ljava/util/AbstractMap$SimpleEntry;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$RuvIHXNpYaJvQMjKylYkUyxgrtM(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lambda$toString$1(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(ZLjava/util/Map;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .param p1, "isSoft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;TV;>;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    .line 110
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TK;>;TV;>;"
    .local p3, "stale":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    iput-boolean p1, p0, Ljdk/internal/util/ReferencedKeyMap;->isSoft:Z

    .line 112
    iput-object p2, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    .line 113
    iput-object p3, p0, Ljdk/internal/util/ReferencedKeyMap;->stale:Ljava/lang/ref/ReferenceQueue;

    .line 114
    return-void
.end method

.method private static blacklist create(ZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;
    .registers 3
    .param p0, "isSoft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;TV;>;>;)",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 134
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TK;>;TV;>;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->create(ZZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;

    move-result-object v0

    return-object v0
.end method

.method static blacklist create(ZZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;
    .registers 6
    .param p0, "isSoft"    # Z
    .param p1, "useNativeQueue"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(ZZ",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;TV;>;>;)",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 156
    .local p2, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TK;>;TV;>;>;"
    if-eqz p1, :cond_13

    .line 159
    new-instance v0, Ljdk/internal/util/ReferencedKeyMap;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    invoke-direct {v0, p0, v1, v2}, Ljdk/internal/util/ReferencedKeyMap;-><init>(ZLjava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 157
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only native queue is supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static blacklist createWithNativeQueue(ZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;
    .registers 3
    .param p0, "isSoft"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Supplier<",
            "Ljava/util/Map<",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;TV;>;>;)",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 171
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/Map<Ljdk/internal/util/ReferenceKey<TK;>;TV;>;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0, p1}, Ljdk/internal/util/ReferencedKeyMap;->create(ZZLjava/util/function/Supplier;)Ljdk/internal/util/ReferencedKeyMap;

    move-result-object v0

    return-object v0
.end method

.method private blacklist entryKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    iget-boolean v0, p0, Ljdk/internal/util/ReferencedKeyMap;->isSoft:Z

    if-eqz v0, :cond_c

    .line 182
    new-instance v0, Ljdk/internal/util/SoftReferenceKey;

    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljdk/internal/util/SoftReferenceKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0

    .line 184
    :cond_c
    new-instance v0, Ljdk/internal/util/WeakReferenceKey;

    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p1, v1}, Ljdk/internal/util/WeakReferenceKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    return-object v0
.end method

.method private static blacklist existingKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;TT;)TT;"
        }
    .end annotation

    .line 425
    .local p0, "setMap":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TT;Ljdk/internal/util/ReferenceKey<TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 426
    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljdk/internal/util/ReferencedKeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdk/internal/util/ReferenceKey;

    .line 427
    .local v0, "entryKey":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->get()Ljava/lang/Object;

    move-result-object v1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return-object v1
.end method

.method private blacklist filterKeySet()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TK;>;"
        }
    .end annotation

    .line 276
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 277
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda1;-><init>()V

    .line 278
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda2;-><init>()V

    .line 279
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 276
    return-object v0
.end method

.method static blacklist intern(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;TT;)TT;"
        }
    .end annotation

    .line 377
    .local p0, "setMap":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TT;Ljdk/internal/util/ReferenceKey<TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->existingKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 378
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_7

    .line 379
    return-object v0

    .line 381
    :cond_7
    invoke-static {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->internKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static blacklist intern(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;TT;",
            "Ljava/util/function/UnaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 406
    .local p0, "setMap":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TT;Ljdk/internal/util/ReferenceKey<TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    .local p2, "interner":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TT;>;"
    invoke-static {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->existingKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 407
    .local v0, "value":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_7

    .line 408
    return-object v0

    .line 410
    :cond_7
    invoke-interface {p2, p1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 411
    invoke-static {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->internKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static blacklist internAddKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;TT;)Z"
        }
    .end annotation

    .line 473
    .local p0, "setMap":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TT;Ljdk/internal/util/ReferenceKey<TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->entryKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v0

    .line 474
    .local v0, "entryKey":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 475
    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdk/internal/util/ReferenceKey;

    .line 476
    .local v1, "existing":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    if-nez v1, :cond_13

    .line 477
    const/4 v2, 0x1

    return v2

    .line 482
    :cond_13
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->unused()V

    .line 483
    const/4 v2, 0x0

    return v2
.end method

.method private static blacklist internKey(Ljdk/internal/util/ReferencedKeyMap;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljdk/internal/util/ReferencedKeyMap<",
            "TT;",
            "Ljdk/internal/util/ReferenceKey<",
            "TT;>;>;TT;)TT;"
        }
    .end annotation

    .line 441
    .local p0, "setMap":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TT;Ljdk/internal/util/ReferenceKey<TT;>;>;"
    .local p1, "key":Ljava/lang/Object;, "TT;"
    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->entryKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v0

    .line 444
    .local v0, "entryKey":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    :cond_4
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 445
    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v1, v0, v0}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdk/internal/util/ReferenceKey;

    .line 446
    .local v1, "existing":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    if-nez v1, :cond_12

    .line 447
    return-object p1

    .line 452
    :cond_12
    invoke-interface {v1}, Ljdk/internal/util/ReferenceKey;->get()Ljava/lang/Object;

    move-result-object v2

    .line 453
    .local v2, "interned":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1b

    .line 454
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->unused()V

    .line 457
    .end local v1    # "existing":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TT;>;"
    :cond_1b
    if-eqz v2, :cond_4

    .line 458
    return-object v2
.end method

.method private synthetic blacklist lambda$entrySet$0(Ljava/lang/Object;)Ljava/util/AbstractMap$SimpleEntry;
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;

    .line 298
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    invoke-virtual {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private synthetic blacklist lambda$toString$1(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4
    .param p1, "k"    # Ljava/lang/Object;

    .line 342
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;
    .registers 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljdk/internal/util/ReferenceKey<",
            "TK;>;"
        }
    .end annotation

    .line 195
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    new-instance v0, Ljdk/internal/util/StrongReferenceKey;

    invoke-direct {v0, p1}, Ljdk/internal/util/StrongReferenceKey;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api clear()V
    .registers 2

    .line 265
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 267
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 268
    return-void
.end method

.method public whitelist test-api containsKey(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "key"    # Ljava/lang/Object;

    .line 212
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 213
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 214
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsValue(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/Object;

    .line 219
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    const-string v0, "value must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 220
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 221
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 296
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 297
    invoke-direct {p0}, Ljdk/internal/util/ReferencedKeyMap;->filterKeySet()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda0;-><init>(Ljdk/internal/util/ReferencedKeyMap;)V

    .line 298
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 299
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 297
    return-object v0
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

    .line 226
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 228
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 206
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 207
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 284
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 285
    invoke-direct {p0}, Ljdk/internal/util/ReferencedKeyMap;->filterKeySet()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public whitelist test-api put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    const-string v0, "key must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 234
    const-string v0, "value must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 235
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 236
    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->entryKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v0

    .line 240
    .local v0, "entryKey":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TK;>;"
    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1c

    .line 242
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->unused()V

    .line 244
    :cond_1c
    return-object v1
.end method

.method public whitelist test-api putAll(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 255
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 256
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 257
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 258
    .local v2, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 259
    .local v3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, v2, v3}, Ljdk/internal/util/ReferencedKeyMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    .end local v2    # "key":Ljava/lang/Object;, "TK;"
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_b

    .line 261
    :cond_23
    return-void
.end method

.method public whitelist test-api putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 304
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 305
    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->entryKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v0

    .line 309
    .local v0, "entryKey":Ljdk/internal/util/ReferenceKey;, "Ljdk/internal/util/ReferenceKey<TK;>;"
    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 310
    .local v1, "oldValue":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_12

    .line 311
    invoke-interface {v0}, Ljdk/internal/util/ReferenceKey;->unused()V

    .line 313
    :cond_12
    return-object v1
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

    .line 250
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 319
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public blacklist removeStaleReferences()V
    .registers 3

    .line 351
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->stale:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .line 352
    .local v0, "key":Ljava/lang/Object;
    if-nez v0, :cond_b

    .line 353
    nop

    .line 357
    .end local v0    # "key":Ljava/lang/Object;
    return-void

    .line 355
    .restart local v0    # "key":Ljava/lang/Object;
    :cond_b
    iget-object v1, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    .end local v0    # "key":Ljava/lang/Object;
    goto :goto_1
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 332
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 335
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 324
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 327
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-direct {p0, p1}, Ljdk/internal/util/ReferencedKeyMap;->lookupKey(Ljava/lang/Object;)Ljdk/internal/util/ReferenceKey;

    move-result-object v1

    invoke-interface {v0, v1, p2, p3}, Ljava/util/Map;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 200
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 201
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 340
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 341
    invoke-direct {p0}, Ljdk/internal/util/ReferencedKeyMap;->filterKeySet()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Ljdk/internal/util/ReferencedKeyMap$$ExternalSyntheticLambda3;-><init>(Ljdk/internal/util/ReferencedKeyMap;)V

    .line 342
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 343
    const-string v1, ", "

    const-string v2, "{"

    const-string v3, "}"

    invoke-static {v1, v2, v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    return-object v0
.end method

.method public whitelist test-api values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 290
    .local p0, "this":Ljdk/internal/util/ReferencedKeyMap;, "Ljdk/internal/util/ReferencedKeyMap<TK;TV;>;"
    invoke-virtual {p0}, Ljdk/internal/util/ReferencedKeyMap;->removeStaleReferences()V

    .line 291
    iget-object v0, p0, Ljdk/internal/util/ReferencedKeyMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
