.class public abstract Landroid/icu/impl/SoftCache;
.super Landroid/icu/impl/CacheBase;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "D:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/icu/impl/CacheBase<",
        "TK;TV;TD;>;"
    }
.end annotation


# instance fields
.field private greylist-max-o map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 37
    .local p0, "this":Landroid/icu/impl/SoftCache;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>;"
    invoke-direct {p0}, Landroid/icu/impl/CacheBase;-><init>()V

    .line 38
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public final blacklist getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation

    .line 51
    .local p0, "this":Landroid/icu/impl/SoftCache;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "mapValue":Ljava/lang/Object;
    if-eqz v0, :cond_28

    .line 53
    instance-of v1, v0, Landroid/icu/impl/CacheValue;

    if-nez v1, :cond_d

    .line 55
    return-object v0

    .line 57
    :cond_d
    move-object v1, v0

    check-cast v1, Landroid/icu/impl/CacheValue;

    .line 58
    .local v1, "cv":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    invoke-virtual {v1}, Landroid/icu/impl/CacheValue;->isNull()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 59
    const/4 v2, 0x0

    return-object v2

    .line 61
    :cond_18
    invoke-virtual {v1}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    move-result-object v2

    .line 62
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_1f

    .line 63
    return-object v2

    .line 67
    :cond_1f
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 71
    .end local v1    # "cv":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_28
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 72
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_36

    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 73
    move-object v2, v1

    goto :goto_3a

    :cond_36
    invoke-static {v1}, Landroid/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;

    move-result-object v2

    .line 74
    .end local v0    # "mapValue":Ljava/lang/Object;
    .local v2, "mapValue":Ljava/lang/Object;
    :goto_3a
    iget-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 75
    .end local v2    # "mapValue":Ljava/lang/Object;
    .restart local v0    # "mapValue":Ljava/lang/Object;
    if-nez v0, :cond_43

    .line 77
    return-object v1

    .line 82
    :cond_43
    instance-of v2, v0, Landroid/icu/impl/CacheValue;

    if-nez v2, :cond_48

    .line 84
    return-object v0

    .line 86
    :cond_48
    move-object v2, v0

    check-cast v2, Landroid/icu/impl/CacheValue;

    .line 87
    .local v2, "cv":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    invoke-virtual {v2, v1}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method
