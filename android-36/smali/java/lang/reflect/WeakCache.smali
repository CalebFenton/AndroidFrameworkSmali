.class final Ljava/lang/reflect/WeakCache;
.super Ljava/lang/Object;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/reflect/WeakCache$CacheKey;,
        Ljava/lang/reflect/WeakCache$Factory;,
        Ljava/lang/reflect/WeakCache$LookupValue;,
        Ljava/lang/reflect/WeakCache$CacheValue;,
        Ljava/lang/reflect/WeakCache$Value;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "P:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final greylist-max-o map:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/Object;",
            "Ljava/util/function/Supplier<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o refQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final greylist-max-o reverseMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/util/function/Supplier<",
            "TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o subKeyFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "TK;TP;*>;"
        }
    .end annotation
.end field

.field private final greylist-max-o valueFactory:Ljava/util/function/BiFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiFunction<",
            "TK;TP;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetreverseMap(Ljava/lang/reflect/WeakCache;)Ljava/util/concurrent/ConcurrentMap;
    .registers 1

    iget-object p0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetvalueFactory(Ljava/lang/reflect/WeakCache;)Ljava/util/function/BiFunction;
    .registers 1

    iget-object p0, p0, Ljava/lang/reflect/WeakCache;->valueFactory:Ljava/util/function/BiFunction;

    return-object p0
.end method

.method public constructor greylist-max-o <init>(Ljava/util/function/BiFunction;Ljava/util/function/BiFunction;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiFunction<",
            "TK;TP;*>;",
            "Ljava/util/function/BiFunction<",
            "TK;TP;TV;>;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p1, "subKeyFactory":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TK;TP;*>;"
    .local p2, "valueFactory":Ljava/util/function/BiFunction;, "Ljava/util/function/BiFunction<TK;TP;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    .line 62
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    .line 64
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    .line 81
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->subKeyFactory:Ljava/util/function/BiFunction;

    .line 82
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiFunction;

    iput-object v0, p0, Ljava/lang/reflect/WeakCache;->valueFactory:Ljava/util/function/BiFunction;

    .line 83
    return-void
.end method

.method private greylist-max-o expungeStaleEntries()V
    .registers 4

    .line 189
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/WeakCache$CacheKey;

    move-object v1, v0

    .local v1, "cacheKey":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    if-eqz v0, :cond_14

    .line 190
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    iget-object v2, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/WeakCache$CacheKey;->expungeFrom(Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V

    goto :goto_1

    .line 192
    :cond_14
    return-void
.end method


# virtual methods
.method public greylist-max-o containsValue(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 172
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    .line 175
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/lang/reflect/WeakCache$LookupValue;

    invoke-direct {v1, p1}, Ljava/lang/reflect/WeakCache$LookupValue;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public greylist-max-o get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TP;)TV;"
        }
    .end annotation

    .line 101
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "parameter":Ljava/lang/Object;, "TP;"
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    .line 105
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->refQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, v0}, Ljava/lang/reflect/WeakCache$CacheKey;->valueOf(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "cacheKey":Ljava/lang/Object;
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    .line 109
    .local v1, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    if-nez v1, :cond_2b

    .line 110
    iget-object v2, p0, Ljava/lang/reflect/WeakCache;->map:Ljava/util/concurrent/ConcurrentMap;

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v1, v3

    .line 111
    invoke-interface {v2, v0, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/ConcurrentMap;

    .line 113
    .local v2, "oldValuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    if-eqz v2, :cond_29

    .line 114
    move-object v1, v2

    move-object v8, v1

    goto :goto_2c

    .line 113
    :cond_29
    move-object v8, v1

    goto :goto_2c

    .line 109
    .end local v2    # "oldValuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    :cond_2b
    move-object v8, v1

    .line 120
    .end local v1    # "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    .local v8, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<Ljava/lang/Object;Ljava/util/function/Supplier<TV;>;>;"
    :goto_2c
    iget-object v1, p0, Ljava/lang/reflect/WeakCache;->subKeyFactory:Ljava/util/function/BiFunction;

    invoke-interface {v1, p1, p2}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 121
    .local v7, "subKey":Ljava/lang/Object;
    invoke-interface {v8, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    .line 122
    .local v1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TV;>;"
    const/4 v2, 0x0

    .line 125
    .local v2, "factory":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    :goto_3d
    if-eqz v1, :cond_46

    .line 127
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    .line 128
    .local v3, "value":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_46

    .line 129
    return-object v3

    .line 137
    .end local v3    # "value":Ljava/lang/Object;, "TV;"
    :cond_46
    if-nez v2, :cond_52

    .line 138
    new-instance v3, Ljava/lang/reflect/WeakCache$Factory;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "parameter":Ljava/lang/Object;, "TP;"
    .local v5, "key":Ljava/lang/Object;, "TK;"
    .local v6, "parameter":Ljava/lang/Object;, "TP;"
    invoke-direct/range {v3 .. v8}, Ljava/lang/reflect/WeakCache$Factory;-><init>(Ljava/lang/reflect/WeakCache;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentMap;)V

    move-object v2, v3

    .end local v2    # "factory":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    .local v3, "factory":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    goto :goto_54

    .line 137
    .end local v3    # "factory":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "parameter":Ljava/lang/Object;, "TP;"
    .restart local v2    # "factory":Ljava/lang/reflect/WeakCache$Factory;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>.Factory;"
    .restart local p1    # "key":Ljava/lang/Object;, "TK;"
    .restart local p2    # "parameter":Ljava/lang/Object;, "TP;"
    :cond_52
    move-object v5, p1

    move-object v6, p2

    .line 141
    .end local p1    # "key":Ljava/lang/Object;, "TK;"
    .end local p2    # "parameter":Ljava/lang/Object;, "TP;"
    .restart local v5    # "key":Ljava/lang/Object;, "TK;"
    .restart local v6    # "parameter":Ljava/lang/Object;, "TP;"
    :goto_54
    if-nez v1, :cond_66

    .line 142
    invoke-interface {v8, v7, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/function/Supplier;

    .line 143
    if-nez v1, :cond_63

    .line 145
    move-object v1, v2

    move-object p1, v5

    move-object p2, v6

    goto :goto_3d

    .line 143
    :cond_63
    move-object p1, v5

    move-object p2, v6

    goto :goto_3d

    .line 149
    :cond_66
    invoke-interface {v8, v7, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_70

    .line 153
    move-object v1, v2

    move-object p1, v5

    move-object p2, v6

    goto :goto_3d

    .line 156
    :cond_70
    invoke-interface {v8, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Ljava/util/function/Supplier;

    move-object p1, v5

    move-object p2, v6

    goto :goto_3d
.end method

.method public greylist-max-o size()I
    .registers 2

    .line 183
    .local p0, "this":Ljava/lang/reflect/WeakCache;, "Ljava/lang/reflect/WeakCache<TK;TP;TV;>;"
    invoke-direct {p0}, Ljava/lang/reflect/WeakCache;->expungeStaleEntries()V

    .line 184
    iget-object v0, p0, Ljava/lang/reflect/WeakCache;->reverseMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v0

    return v0
.end method
