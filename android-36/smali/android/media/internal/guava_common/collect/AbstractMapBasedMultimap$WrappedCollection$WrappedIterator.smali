.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
.super Ljava/lang/Object;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final blacklist delegateIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation
.end field

.field final blacklist originalDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 437
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 435
    iget-object p1, p1, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    .line 438
    # invokes: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    invoke-static {p1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$100(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 1

    .line 457
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 458
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public whitelist test-api next()Ljava/lang/Object;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->validateIterator()V

    .line 465
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public whitelist test-api remove()V
    .registers 2

    .line 470
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->delegateIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 471
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # operator-- for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$210(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)I

    .line 472
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method blacklist validateIterator()V
    .registers 2

    .line 449
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 450
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->this$1:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    iget-object v0, v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;->originalDelegate:Ljava/util/Collection;

    if-ne v0, p0, :cond_e

    return-void

    .line 451
    :cond_e
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
