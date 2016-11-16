.class Lsun/security/util/MemoryCache$SoftCacheEntry;
.super Ljava/lang/ref/SoftReference;
.source "Cache.java"

# interfaces
.implements Lsun/security/util/MemoryCache$CacheEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/security/util/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftCacheEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/SoftReference",
        "<TV;>;",
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


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .locals 1
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue",
            "<TV;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 524
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.SoftCacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    #@3
    .line 525
    iput-object p1, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    #@5
    .line 526
    iput-wide p3, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    #@7
    .line 523
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
    .line 530
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.SoftCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

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
    .line 534
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public invalidate()V
    .locals 2

    #@0
    .prologue
    .line 546
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->clear()V

    #@3
    .line 547
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    #@6
    .line 548
    const-wide/16 v0, -0x1

    #@8
    iput-wide v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    #@a
    .line 545
    return-void
.end method

.method public isValid(J)Z
    .locals 5
    .param p1, "currentTime"    # J

    #@0
    .prologue
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache<TK;TV;>.SoftCacheEntry<TK;TV;>;"
    const/4 v0, 0x0

    #@1
    .line 538
    iget-wide v2, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    #@3
    cmp-long v1, p1, v2

    #@5
    if-gtz v1, :cond_0

    #@7
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    #@a
    move-result-object v1

    #@b
    if-eqz v1, :cond_0

    #@d
    const/4 v0, 0x1

    #@e
    .line 539
    .local v0, "valid":Z
    :cond_0
    if-nez v0, :cond_1

    #@10
    .line 540
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->invalidate()V

    #@13
    .line 542
    :cond_1
    return v0
.end method
