.class Ljava/net/AddressCache;
.super Ljava/lang/Object;
.source "AddressCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/net/AddressCache$AddressCacheKey;,
        Ljava/net/AddressCache$AddressCacheEntry;
    }
.end annotation


# static fields
.field private static final blacklist MAX_ENTRIES:I = 0x10

.field private static final blacklist TTL_NANOS:J = 0x77359400L


# instance fields
.field private final greylist cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache<",
            "Ljava/net/AddressCache$AddressCacheKey;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>()V
    .registers 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Llibcore/util/BasicLruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    return-void
.end method


# virtual methods
.method public blacklist clear()V
    .registers 2

    .line 100
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    .line 101
    return-void
.end method

.method public blacklist get(Ljava/lang/String;I)Ljava/lang/Object;
    .registers 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I

    .line 109
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    .line 111
    .local v0, "entry":Ljava/net/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_1c

    iget-wide v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1c

    .line 112
    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    return-object v1

    .line 116
    :cond_1c
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "addresses"    # [Ljava/net/InetAddress;

    .line 124
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v2, p3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public blacklist putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "detailMessage"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    new-instance v2, Ljava/net/AddressCache$AddressCacheEntry;

    invoke-direct {v2, p3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    return-void
.end method
