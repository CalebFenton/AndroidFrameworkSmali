.class public Landroid/icu/impl/SimpleCache;
.super Ljava/lang/Object;
.source "SimpleCache.java"

# interfaces
.implements Landroid/icu/impl/ICUCache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/icu/impl/ICUCache<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final greylist-max-o DEFAULT_CAPACITY:I = 0x10


# instance fields
.field private volatile greylist-max-o cacheRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private greylist-max-o capacity:I

.field private greylist-max-o type:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 30
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/SimpleCache;->type:I

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "cacheType"    # I

    .line 34
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/icu/impl/SimpleCache;-><init>(II)V

    .line 35
    return-void
.end method

.method public constructor blacklist <init>(II)V
    .registers 4
    .param p1, "cacheType"    # I
    .param p2, "initialCapacity"    # I

    .line 37
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Landroid/icu/impl/SimpleCache;->type:I

    .line 28
    const/16 v0, 0x10

    iput v0, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    .line 38
    const/4 v0, 0x1

    if-ne p1, v0, :cond_12

    .line 39
    iput p1, p0, Landroid/icu/impl/SimpleCache;->type:I

    .line 41
    :cond_12
    if-lez p2, :cond_16

    .line 42
    iput p2, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    .line 44
    :cond_16
    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 79
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    .line 80
    return-void
.end method

.method public blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    iget-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    .line 49
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    if-eqz v0, :cond_11

    .line 50
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 51
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v1, :cond_11

    .line 52
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 55
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_11
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    .line 61
    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    const/4 v1, 0x0

    .line 62
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_c

    .line 63
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Ljava/util/Map;

    .line 65
    :cond_c
    if-nez v1, :cond_2d

    .line 66
    new-instance v2, Ljava/util/HashMap;

    iget v3, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 67
    iget v2, p0, Landroid/icu/impl/SimpleCache;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_25

    .line 68
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .end local v0    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    .local v2, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    goto :goto_2b

    .line 70
    .end local v2    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    .restart local v0    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    :cond_25
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    move-object v0, v2

    .line 72
    :goto_2b
    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    .line 74
    :cond_2d
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method
