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
        "Ljava/lang/ref/SoftReference<",
        "TV;>;",
        "Lsun/security/util/MemoryCache$CacheEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private blacklist expirationTime:J

.field private blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist <init>(Ljava/lang/Object;Ljava/lang/Object;JLjava/lang/ref/ReferenceQueue;)V
    .registers 6
    .param p3, "expirationTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;J",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 563
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    .local p5, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    invoke-direct {p0, p2, p5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 564
    iput-object p1, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 565
    iput-wide p3, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 566
    return-void
.end method


# virtual methods
.method public blacklist getExpirationTime()J
    .registers 3

    .line 577
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-wide v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    return-wide v0
.end method

.method public blacklist getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public blacklist invalidate()V
    .registers 3

    .line 589
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->clear()V

    .line 590
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->key:Ljava/lang/Object;

    .line 591
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    .line 592
    return-void
.end method

.method public blacklist isValid(J)Z
    .registers 5
    .param p1, "currentTime"    # J

    .line 581
    .local p0, "this":Lsun/security/util/MemoryCache$SoftCacheEntry;, "Lsun/security/util/MemoryCache$SoftCacheEntry<TK;TV;>;"
    iget-wide v0, p0, Lsun/security/util/MemoryCache$SoftCacheEntry;->expirationTime:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 582
    .local v0, "valid":Z
    :goto_f
    if-nez v0, :cond_14

    .line 583
    invoke-virtual {p0}, Lsun/security/util/MemoryCache$SoftCacheEntry;->invalidate()V

    .line 585
    :cond_14
    return v0
.end method
