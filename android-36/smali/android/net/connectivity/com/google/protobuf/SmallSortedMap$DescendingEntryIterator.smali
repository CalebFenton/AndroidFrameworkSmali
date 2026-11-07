.class Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;
.super Ljava/lang/Object;
.source "SmallSortedMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescendingEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private blacklist lazyOverflowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private blacklist pos:I

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

    .line 587
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iget-object p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    # getter for: Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->access$600(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;
    .param p2, "x1"    # Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$1;

    .line 587
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;-><init>(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)V

    return-void
.end method

.method private blacklist getOverflowIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 616
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    if-nez v0, :cond_14

    .line 617
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    # getter for: Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->overflowEntriesDescending:Ljava/util/Map;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->access$900(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    .line 619
    :cond_14
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->lazyOverflowIterator:Ljava/util/Iterator;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 3

    .line 594
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    if-lez v0, :cond_12

    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    # getter for: Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {v1}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->access$600(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_1c

    :cond_12
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 587
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    invoke-virtual {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 600
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->getOverflowIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 602
    :cond_15
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->this$0:Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;

    # getter for: Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->entryList:Ljava/util/List;
    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;->access$600(Landroid/net/connectivity/com/google/protobuf/SmallSortedMap;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;->pos:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 607
    .local p0, "this":Landroid/net/connectivity/com/google/protobuf/SmallSortedMap$DescendingEntryIterator;, "Landroid/net/connectivity/com/google/protobuf/SmallSortedMap<TK;TV;>.DescendingEntryIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
