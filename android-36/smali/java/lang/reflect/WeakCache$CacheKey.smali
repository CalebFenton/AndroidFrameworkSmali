.class final Ljava/lang/reflect/WeakCache$CacheKey;
.super Ljava/lang/ref/WeakReference;
.source "WeakCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/reflect/WeakCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CacheKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o NULL_KEY:Ljava/lang/Object;


# instance fields
.field private final greylist-max-o hash:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 330
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljava/lang/reflect/WeakCache$CacheKey;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)V"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 345
    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Ljava/lang/reflect/WeakCache$CacheKey;->hash:I

    .line 346
    return-void
.end method

.method static greylist-max-o valueOf(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 333
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "refQueue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    if-nez p0, :cond_5

    .line 336
    sget-object v0, Ljava/lang/reflect/WeakCache$CacheKey;->NULL_KEY:Ljava/lang/Object;

    goto :goto_a

    .line 338
    :cond_5
    new-instance v0, Ljava/lang/reflect/WeakCache$CacheKey;

    invoke-direct {v0, p0, p1}, Ljava/lang/reflect/WeakCache$CacheKey;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 333
    :goto_a
    return-object v0
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 356
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    if-eq p1, p0, :cond_21

    if-eqz p1, :cond_1f

    .line 358
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1f

    .line 360
    invoke-virtual {p0}, Ljava/lang/reflect/WeakCache$CacheKey;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .local v1, "key":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_1f

    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/WeakCache$CacheKey;

    .line 362
    invoke-virtual {v0}, Ljava/lang/reflect/WeakCache$CacheKey;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_1f

    goto :goto_21

    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    .line 356
    :goto_22
    return v0
.end method

.method greylist-max-o expungeFrom(Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentMap<",
            "*+",
            "Ljava/util/concurrent/ConcurrentMap<",
            "**>;>;",
            "Ljava/util/concurrent/ConcurrentMap<",
            "*",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 370
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    .local p1, "map":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<*+Ljava/util/concurrent/ConcurrentMap<**>;>;"
    .local p2, "reverseMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<*Ljava/lang/Boolean;>;"
    invoke-interface {p1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentMap;

    .line 372
    .local v0, "valuesMap":Ljava/util/concurrent/ConcurrentMap;, "Ljava/util/concurrent/ConcurrentMap<**>;"
    if-eqz v0, :cond_1e

    .line 373
    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 374
    .local v2, "cacheValue":Ljava/lang/Object;
    invoke-interface {p2, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    .end local v2    # "cacheValue":Ljava/lang/Object;
    goto :goto_10

    .line 377
    :cond_1e
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 350
    .local p0, "this":Ljava/lang/reflect/WeakCache$CacheKey;, "Ljava/lang/reflect/WeakCache$CacheKey<TK;>;"
    iget v0, p0, Ljava/lang/reflect/WeakCache$CacheKey;->hash:I

    return v0
.end method
