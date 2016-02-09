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
        "Landroid/icu/impl/ICUCache",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x10


# instance fields
.field private cacheRef:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/util/Map",
            "<TK;TV;>;>;"
        }
    .end annotation
.end field

.field private capacity:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 24
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 20
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    #@6
    .line 21
    const/4 v0, 0x0

    #@7
    iput v0, p0, Landroid/icu/impl/SimpleCache;->type:I

    #@9
    .line 22
    const/16 v0, 0x10

    #@b
    iput v0, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    #@d
    .line 24
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "cacheType"    # I

    #@0
    .prologue
    .line 28
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    const/16 v0, 0x10

    #@2
    invoke-direct {p0, p1, v0}, Landroid/icu/impl/SimpleCache;-><init>(II)V

    #@5
    .line 27
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .param p1, "cacheType"    # I
    .param p2, "initialCapacity"    # I

    #@0
    .prologue
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    const/4 v1, 0x0

    #@1
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 20
    const/4 v0, 0x0

    #@5
    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    #@7
    .line 21
    iput v1, p0, Landroid/icu/impl/SimpleCache;->type:I

    #@9
    .line 22
    const/16 v0, 0x10

    #@b
    iput v0, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    #@d
    .line 32
    const/4 v0, 0x1

    #@e
    if-ne p1, v0, :cond_0

    #@10
    .line 33
    iput p1, p0, Landroid/icu/impl/SimpleCache;->type:I

    #@12
    .line 35
    :cond_0
    if-lez p2, :cond_1

    #@14
    .line 36
    iput p2, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    #@16
    .line 31
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 70
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    iput-object v0, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    #@3
    .line 69
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
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
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    const/4 v2, 0x0

    #@1
    .line 41
    iget-object v1, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    #@3
    .line 42
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    if-eqz v1, :cond_0

    #@5
    .line 43
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Ljava/util/Map;

    #@b
    .line 44
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v0, :cond_0

    #@d
    .line 45
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@10
    move-result-object v2

    #@11
    return-object v2

    #@12
    .line 48
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_0
    return-object v2
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p0, "this":Landroid/icu/impl/SimpleCache;, "Landroid/icu/impl/SimpleCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    #@2
    .line 53
    .local v1, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    const/4 v0, 0x0

    #@3
    .line 54
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-eqz v1, :cond_0

    #@5
    .line 55
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    check-cast v0, Ljava/util/Map;

    #@b
    .line 57
    :cond_0
    if-nez v0, :cond_1

    #@d
    .line 58
    new-instance v2, Ljava/util/HashMap;

    #@f
    iget v3, p0, Landroid/icu/impl/SimpleCache;->capacity:I

    #@11
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    #@14
    invoke-static {v2}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    #@17
    move-result-object v0

    #@18
    .line 59
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    iget v2, p0, Landroid/icu/impl/SimpleCache;->type:I

    #@1a
    const/4 v3, 0x1

    #@1b
    if-ne v2, v3, :cond_2

    #@1d
    .line 60
    new-instance v1, Ljava/lang/ref/WeakReference;

    #@1f
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@22
    .line 64
    .restart local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    :goto_0
    iput-object v1, p0, Landroid/icu/impl/SimpleCache;->cacheRef:Ljava/lang/ref/Reference;

    #@24
    .line 66
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_1
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@27
    .line 51
    return-void

    #@28
    .line 62
    .restart local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    #@2a
    .end local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    #@2d
    .restart local v1    # "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<Ljava/util/Map<TK;TV;>;>;"
    goto :goto_0
.end method
