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
        "Landroid/icu/impl/CacheBase",
        "<TK;TV;TD;>;"
    }
.end annotation


# instance fields
.field private map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<TK;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 35
    .local p0, "this":Landroid/icu/impl/SoftCache;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>;"
    invoke-direct {p0}, Landroid/icu/impl/CacheBase;-><init>()V

    #@3
    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    .line 35
    return-void
.end method


# virtual methods
.method public final getInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TD;)TV;"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/SoftCache;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    const/4 v4, 0x0

    #@1
    .line 49
    iget-object v3, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    .line 50
    .local v1, "mapValue":Ljava/lang/Object;
    if-eqz v1, :cond_3

    #@9
    .line 51
    instance-of v3, v1, Landroid/icu/impl/CacheValue;

    #@b
    if-nez v3, :cond_0

    #@d
    .line 53
    return-object v1

    #@e
    :cond_0
    move-object v0, v1

    #@f
    .line 55
    check-cast v0, Landroid/icu/impl/CacheValue;

    #@11
    .line 56
    .local v0, "cv":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->isNull()Z

    #@14
    move-result v3

    #@15
    if-eqz v3, :cond_1

    #@17
    .line 57
    return-object v4

    #@18
    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/icu/impl/CacheValue;->get()Ljava/lang/Object;

    #@1b
    move-result-object v2

    #@1c
    .line 60
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_2

    #@1e
    .line 61
    return-object v2

    #@1f
    .line 65
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    .line 66
    invoke-virtual {v0, v2}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    #@26
    move-result-object v3

    #@27
    return-object v3

    #@28
    .line 69
    .end local v0    # "cv":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    .end local v2    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    .line 70
    .restart local v2    # "value":Ljava/lang/Object;, "TV;"
    if-eqz v2, :cond_4

    #@2e
    invoke-static {}, Landroid/icu/impl/CacheValue;->futureInstancesWillBeStrong()Z

    #@31
    move-result v3

    #@32
    if-eqz v3, :cond_4

    #@34
    .line 71
    move-object v1, v2

    #@35
    .line 72
    :goto_0
    iget-object v3, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@37
    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3a
    move-result-object v1

    #@3b
    .line 73
    if-nez v1, :cond_5

    #@3d
    .line 75
    return-object v2

    #@3e
    .line 71
    :cond_4
    invoke-static {v2}, Landroid/icu/impl/CacheValue;->getInstance(Ljava/lang/Object;)Landroid/icu/impl/CacheValue;

    #@41
    move-result-object v1

    #@42
    goto :goto_0

    #@43
    .line 80
    :cond_5
    instance-of v3, v1, Landroid/icu/impl/CacheValue;

    #@45
    if-nez v3, :cond_6

    #@47
    .line 82
    return-object v1

    #@48
    :cond_6
    move-object v0, v1

    #@49
    .line 84
    check-cast v0, Landroid/icu/impl/CacheValue;

    #@4b
    .line 85
    .restart local v0    # "cv":Landroid/icu/impl/CacheValue;, "Landroid/icu/impl/CacheValue<TV;>;"
    invoke-virtual {v0, v2}, Landroid/icu/impl/CacheValue;->resetIfCleared(Ljava/lang/Object;)Ljava/lang/Object;

    #@4e
    move-result-object v3

    #@4f
    return-object v3
.end method
