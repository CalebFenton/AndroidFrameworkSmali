.class final Ljava/util/concurrent/ConcurrentHashMap$MapEntry;
.super Ljava/lang/Object;
.source "ConcurrentHashMap.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "MapEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final greylist-max-o key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final greylist-max-o map:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field greylist-max-o val:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 3522
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "val":Ljava/lang/Object;, "TV;"
    .local p3, "map":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3523
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    .line 3524
    iput-object p2, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3525
    iput-object p3, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->map:Ljava/util/concurrent/ConcurrentHashMap;

    .line 3526
    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 3536
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_30

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 3537
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    .local v2, "k":Ljava/lang/Object;
    if-eqz v0, :cond_30

    .line 3538
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    .local v3, "v":Ljava/lang/Object;
    if-eqz v0, :cond_30

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    if-eq v2, v0, :cond_22

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    .line 3539
    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_22
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    if-eq v3, v0, :cond_2e

    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3540
    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    :cond_2e
    const/4 v0, 0x1

    goto :goto_31

    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "k":Ljava/lang/Object;
    .end local v3    # "v":Ljava/lang/Object;
    :cond_30
    const/4 v0, 0x0

    .line 3536
    :goto_31
    return v0
.end method

.method public whitelist test-api getKey()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 3527
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api getValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 3528
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist test-api hashCode()I
    .registers 3

    .line 3529
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public whitelist test-api setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 3552
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    if-eqz p1, :cond_e

    .line 3553
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3554
    .local v0, "v":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    .line 3555
    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->map:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    invoke-virtual {v1, v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3556
    return-object v0

    .line 3552
    .end local v0    # "v":Ljava/lang/Object;, "TV;"
    :cond_e
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 3531
    .local p0, "this":Ljava/util/concurrent/ConcurrentHashMap$MapEntry;, "Ljava/util/concurrent/ConcurrentHashMap$MapEntry<TK;TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->key:Ljava/lang/Object;

    iget-object v1, p0, Ljava/util/concurrent/ConcurrentHashMap$MapEntry;->val:Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/util/concurrent/Helpers;->mapEntryToString(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
