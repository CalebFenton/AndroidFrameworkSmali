.class Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;
.super Ljava/util/AbstractSet;
.source "SmallSortedMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;


# direct methods
.method private constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 464
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
    .param p2, "x1"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;

    .line 464
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic whitelist test-api add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 464
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->add(Ljava/util/Map$Entry;)Z

    move-result p1

    return p1
.end method

.method public blacklist add(Ljava/util/Map$Entry;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 492
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    .local p1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 493
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Comparable;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->put(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const/4 v0, 0x1

    return v0

    .line 496
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 517
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->clear()V

    .line 518
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 484
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 485
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 486
    .local v1, "existing":Ljava/lang/Object;, "TV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 487
    .local v2, "value":Ljava/lang/Object;, "TV;"
    if-eq v1, v2, :cond_1e

    if-eqz v1, :cond_1c

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    goto :goto_1e

    :cond_1c
    const/4 v3, 0x0

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v3, 0x1

    :goto_1f
    return v3
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntryIterator;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntryIterator;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 507
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 508
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-virtual {p0, v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 509
    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    const/4 v1, 0x1

    return v1

    .line 512
    :cond_14
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 473
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.EntrySet;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$EntrySet;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->size()I

    move-result v0

    return v0
.end method
