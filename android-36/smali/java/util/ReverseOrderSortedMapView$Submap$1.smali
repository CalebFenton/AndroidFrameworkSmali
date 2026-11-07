.class Ljava/util/ReverseOrderSortedMapView$Submap$1;
.super Ljava/lang/Object;
.source "ReverseOrderSortedMapView.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/ReverseOrderSortedMapView$Submap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
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
.field blacklist cache:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field blacklist dead:Z

.field blacklist it:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field blacklist prevKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$1:Ljava/util/ReverseOrderSortedMapView$Submap;


# direct methods
.method constructor blacklist <init>(Ljava/util/ReverseOrderSortedMapView$Submap;)V
    .registers 3
    .param p1, "this$1"    # Ljava/util/ReverseOrderSortedMapView$Submap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 336
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$1;, "Ljava/util/ReverseOrderSortedMapView$Submap$1;"
    iput-object p1, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->cache:Ljava/util/Map$Entry;

    .line 338
    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->prevKey:Ljava/lang/Object;

    .line 339
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->dead:Z

    .line 340
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedMapView;->descendingEntryIterator(Ljava/util/SortedMap;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->it:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 6

    .line 343
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$1;, "Ljava/util/ReverseOrderSortedMapView$Submap$1;"
    iget-boolean v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->dead:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 344
    return v1

    .line 346
    :cond_6
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->cache:Ljava/util/Map$Entry;

    const/4 v2, 0x1

    if-eqz v0, :cond_c

    .line 347
    return v2

    .line 349
    :cond_c
    :goto_c
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 350
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->it:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 352
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ReverseOrderSortedMapView$Submap;->aboveHead(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_29

    .line 353
    goto :goto_c

    .line 355
    :cond_29
    iget-object v3, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ReverseOrderSortedMapView$Submap;->belowTail(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    .line 356
    iput-boolean v2, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->dead:Z

    .line 357
    return v1

    .line 360
    :cond_38
    iput-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->cache:Ljava/util/Map$Entry;

    .line 361
    return v2

    .line 364
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3b
    return v1
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 336
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$1;, "Ljava/util/ReverseOrderSortedMapView$Submap$1;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$Submap$1;->next()Ljava/util/Map$Entry;

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

    .line 368
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$1;, "Ljava/util/ReverseOrderSortedMapView$Submap$1;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedMapView$Submap$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 369
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->cache:Ljava/util/Map$Entry;

    .line 370
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->cache:Ljava/util/Map$Entry;

    .line 371
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->prevKey:Ljava/lang/Object;

    .line 372
    return-object v0

    .line 374
    .end local v0    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 379
    .local p0, "this":Ljava/util/ReverseOrderSortedMapView$Submap$1;, "Ljava/util/ReverseOrderSortedMapView$Submap$1;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->prevKey:Ljava/lang/Object;

    if-eqz v0, :cond_10

    .line 382
    iget-object v0, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->this$1:Ljava/util/ReverseOrderSortedMapView$Submap;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView$Submap;->this$0:Ljava/util/ReverseOrderSortedMapView;

    iget-object v0, v0, Ljava/util/ReverseOrderSortedMapView;->base:Ljava/util/SortedMap;

    iget-object v1, p0, Ljava/util/ReverseOrderSortedMapView$Submap$1;->prevKey:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    return-void

    .line 380
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
