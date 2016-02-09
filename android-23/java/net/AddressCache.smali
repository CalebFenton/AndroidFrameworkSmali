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
.field private static final MAX_ENTRIES:I = 0x10

.field private static final TTL_NANOS:J = 0x77359400L


# instance fields
.field private final cache:Llibcore/util/BasicLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llibcore/util/BasicLruCache",
            "<",
            "Ljava/net/AddressCache$AddressCacheKey;",
            "Ljava/net/AddressCache$AddressCacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 41
    new-instance v0, Llibcore/util/BasicLruCache;

    #@5
    const/16 v1, 0x10

    #@7
    invoke-direct {v0, v1}, Llibcore/util/BasicLruCache;-><init>(I)V

    #@a
    .line 40
    iput-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    #@c
    .line 29
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    #@2
    invoke-virtual {v0}, Llibcore/util/BasicLruCache;->evictAll()V

    #@5
    .line 93
    return-void
.end method

.method public get(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 7
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 103
    iget-object v1, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    #@3
    new-instance v2, Ljava/net/AddressCache$AddressCacheKey;

    #@5
    invoke-direct {v2, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    #@8
    invoke-virtual {v1, v2}, Llibcore/util/BasicLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@b
    move-result-object v0

    #@c
    check-cast v0, Ljava/net/AddressCache$AddressCacheEntry;

    #@e
    .line 105
    .local v0, "entry":Ljava/net/AddressCache$AddressCacheEntry;
    if-eqz v0, :cond_0

    #@10
    iget-wide v2, v0, Ljava/net/AddressCache$AddressCacheEntry;->expiryNanos:J

    #@12
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    #@15
    move-result-wide v4

    #@16
    cmp-long v1, v2, v4

    #@18
    if-ltz v1, :cond_0

    #@1a
    .line 106
    iget-object v1, v0, Ljava/net/AddressCache$AddressCacheEntry;->value:Ljava/lang/Object;

    #@1c
    return-object v1

    #@1d
    .line 110
    :cond_0
    return-object v6
.end method

.method public put(Ljava/lang/String;I[Ljava/net/InetAddress;)V
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "addresses"    # [Ljava/net/InetAddress;

    #@0
    .prologue
    .line 118
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    #@2
    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    #@4
    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    #@7
    new-instance v2, Ljava/net/AddressCache$AddressCacheEntry;

    #@9
    invoke-direct {v2, p3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    #@c
    invoke-virtual {v0, v1, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 117
    return-void
.end method

.method public putUnknownHost(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "netId"    # I
    .param p3, "detailMessage"    # Ljava/lang/String;

    #@0
    .prologue
    .line 126
    iget-object v0, p0, Ljava/net/AddressCache;->cache:Llibcore/util/BasicLruCache;

    #@2
    new-instance v1, Ljava/net/AddressCache$AddressCacheKey;

    #@4
    invoke-direct {v1, p1, p2}, Ljava/net/AddressCache$AddressCacheKey;-><init>(Ljava/lang/String;I)V

    #@7
    new-instance v2, Ljava/net/AddressCache$AddressCacheEntry;

    #@9
    invoke-direct {v2, p3}, Ljava/net/AddressCache$AddressCacheEntry;-><init>(Ljava/lang/Object;)V

    #@c
    invoke-virtual {v0, v1, v2}, Llibcore/util/BasicLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@f
    .line 125
    return-void
.end method
