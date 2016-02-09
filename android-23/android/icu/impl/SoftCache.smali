.class public abstract Landroid/icu/impl/SoftCache;
.super Landroid/icu/impl/CacheBase;
.source "SoftCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/SoftCache$SettableSoftReference;
    }
.end annotation

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
            "Landroid/icu/impl/SoftCache$SettableSoftReference",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    .local p0, "this":Landroid/icu/impl/SoftCache;, "Landroid/icu/impl/SoftCache<TK;TV;TD;>;"
    invoke-direct {p0}, Landroid/icu/impl/CacheBase;-><init>()V

    #@3
    .line 104
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    #@5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    #@8
    .line 103
    iput-object v0, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@a
    .line 29
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
    .line 39
    iget-object v2, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@3
    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/icu/impl/SoftCache$SettableSoftReference;

    #@9
    .line 41
    .local v1, "valueRef":Landroid/icu/impl/SoftCache$SettableSoftReference;, "Lcom/ibm/icu/impl/SoftCache$SettableSoftReference<TV;>;"
    if-eqz v1, :cond_2

    #@b
    .line 42
    monitor-enter v1

    #@c
    .line 43
    :try_start_0
    invoke-static {v1}, Landroid/icu/impl/SoftCache$SettableSoftReference;->-get0(Landroid/icu/impl/SoftCache$SettableSoftReference;)Ljava/lang/ref/SoftReference;

    #@f
    move-result-object v2

    #@10
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@13
    move-result-object v0

    #@14
    .line 44
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    #@16
    monitor-exit v1

    #@17
    .line 45
    return-object v0

    #@18
    .line 49
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@1b
    move-result-object v0

    #@1c
    .line 50
    if-eqz v0, :cond_1

    #@1e
    .line 51
    new-instance v2, Ljava/lang/ref/SoftReference;

    #@20
    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@23
    invoke-static {v1, v2}, Landroid/icu/impl/SoftCache$SettableSoftReference;->-set0(Landroid/icu/impl/SoftCache$SettableSoftReference;Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@26
    :cond_1
    monitor-exit v1

    #@27
    .line 53
    return-object v0

    #@28
    .line 42
    .end local v0    # "value":Ljava/lang/Object;, "TV;"
    :catchall_0
    move-exception v2

    #@29
    monitor-exit v1

    #@2a
    throw v2

    #@2b
    .line 58
    :cond_2
    invoke-virtual {p0, p1, p2}, Landroid/icu/impl/SoftCache;->createInstance(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@2e
    move-result-object v0

    #@2f
    .line 59
    .restart local v0    # "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_3

    #@31
    .line 60
    return-object v4

    #@32
    .line 62
    :cond_3
    iget-object v2, p0, Landroid/icu/impl/SoftCache;->map:Ljava/util/concurrent/ConcurrentHashMap;

    #@34
    new-instance v3, Landroid/icu/impl/SoftCache$SettableSoftReference;

    #@36
    invoke-direct {v3, v0, v4}, Landroid/icu/impl/SoftCache$SettableSoftReference;-><init>(Ljava/lang/Object;Landroid/icu/impl/SoftCache$SettableSoftReference;)V

    #@39
    invoke-virtual {v2, p1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@3c
    move-result-object v1

    #@3d
    .end local v1    # "valueRef":Landroid/icu/impl/SoftCache$SettableSoftReference;, "Lcom/ibm/icu/impl/SoftCache$SettableSoftReference<TV;>;"
    check-cast v1, Landroid/icu/impl/SoftCache$SettableSoftReference;

    #@3f
    .line 63
    .restart local v1    # "valueRef":Landroid/icu/impl/SoftCache$SettableSoftReference;, "Lcom/ibm/icu/impl/SoftCache$SettableSoftReference<TV;>;"
    if-nez v1, :cond_4

    #@41
    .line 65
    return-object v0

    #@42
    .line 70
    :cond_4
    invoke-static {v1, v0}, Landroid/icu/impl/SoftCache$SettableSoftReference;->-wrap0(Landroid/icu/impl/SoftCache$SettableSoftReference;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    move-result-object v2

    #@46
    return-object v2
.end method
