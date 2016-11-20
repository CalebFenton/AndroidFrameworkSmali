.class Lsun/security/util/MemoryCache$HardCacheEntry;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HardCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lsun/security/util/MemoryCache$CacheEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private expirationTime:J

.field private key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 1
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J)V"
        }
    .end annotation

    #@0
    .prologue
    .line 486
    .local p0, "this":Lsun/security/util/MemoryCache$HardCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.HardCacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 487
    iput-object p1, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    #@5
    .line 488
    iput-object p2, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    #@7
    .line 489
    iput-wide p3, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    #@9
    .line 486
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    #@0
    .prologue
    .line 493
    .local p0, "this":Lsun/security/util/MemoryCache$HardCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.HardCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    #@0
    .prologue
    .line 497
    .local p0, "this":Lsun/security/util/MemoryCache$HardCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.HardCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache$HardCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.HardCacheEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 509
    iput-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->key:Ljava/lang/Object;

    #@3
    .line 510
    iput-object v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->value:Ljava/lang/Object;

    #@5
    .line 511
    const-wide/16 v0, -0x1

    #@7
    iput-wide v0, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    #@9
    .line 508
    return-void
.end method

.method public isValid(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .line 501
    .local p0, "this":Lsun/security/util/MemoryCache$HardCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.HardCacheEntry<TK;TV;>;"
    iget-wide v2, p0, Lsun/security/util/MemoryCache$HardCacheEntry;->expirationTime:J

    #@2
    cmp-long v1, p1, v2

    #@4
    if-gtz v1, :cond_1

    #@6
    const/4 v0, 0x1

    #@7
    .line 502
    .local v0, "valid":Z
    :goto_0
    if-nez v0, :cond_0

    #@9
    .line 503
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$HardCacheEntry;->invalidate()V

    #@c
    .line 505
    :cond_0
    return v0

    #@d
    .line 501
    .end local v0    # "valid":Z
    :cond_1
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method
