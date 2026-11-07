.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;",
        "Ljava/util/Collection<",
        "TV;>;>;>;"
    }
.end annotation


# instance fields
.field blacklist collection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final blacklist delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1423
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1424
    iget-object p1, p1, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->submap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 1

    .line 1429
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 1

    .line 1423
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->next()Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public blacklist next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1434
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1435
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    iput-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    .line 1436
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    invoke-virtual {p0, v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->wrapEntry(Ljava/util/Map$Entry;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove()V
    .registers 3

    .line 1441
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    const-string v1, "no calls to next() since the last call to remove()"

    invoke-static {v0, v1}, Landroid/media/internal/guava_common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 1442
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 1443
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    # -= operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v0, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$220(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    .line 1444
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x0

    .line 1445
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$AsMap$AsMapIterator;->collection:Ljava/util/Collection;

    return-void
.end method
