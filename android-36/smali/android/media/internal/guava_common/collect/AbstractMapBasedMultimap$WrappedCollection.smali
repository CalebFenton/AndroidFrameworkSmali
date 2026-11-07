.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final blacklist ancestor:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final blacklist ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field blacklist delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final blacklist key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .registers 5
    .param p3    # Ljava/util/Collection;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 337
    iput-object p2, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 338
    iput-object p3, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 339
    iput-object p4, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-nez p4, :cond_f

    const/4 p1, 0x0

    goto :goto_13

    .line 340
    :cond_f
    invoke-virtual {p4}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object p1

    :goto_13
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 483
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 484
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 485
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 487
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # operator++ for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$208(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)I

    if-eqz v0, :cond_1b

    .line 489
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    :cond_1b
    return p1
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 504
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 507
    :cond_8
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 508
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 510
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 511
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    # += operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v2, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$212(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    if-nez v0, :cond_25

    .line 513
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    :cond_25
    return p1
.end method

.method blacklist addToMap()V
    .registers 3

    .line 388
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_8

    .line 389
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    return-void

    .line 391
    :cond_8
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$000(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public whitelist test-api clear()V
    .registers 3

    .line 533
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 537
    :cond_7
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 538
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # -= operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v1, v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$220(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    .line 539
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 521
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 522
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 527
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 528
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 2
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_4

    const/4 p0, 0x1

    return p0

    .line 406
    :cond_4
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 407
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method blacklist getDelegate()Ljava/util/Collection;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 423
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 412
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 413
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->hashCode()I

    move-result p0

    return p0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 428
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 429
    new-instance v0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method blacklist refreshIfEmpty()V
    .registers 3

    .line 351
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_18

    .line 352
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 353
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-ne v0, p0, :cond_12

    goto :goto_32

    .line 354
    :cond_12
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0

    .line 356
    :cond_18
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 357
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$000(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_32

    .line 359
    iput-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    :cond_32
    :goto_32
    return-void
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 544
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 545
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 547
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # operator-- for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$210(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)I

    .line 548
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_13
    return p1
.end method

.method blacklist removeIfEmpty()V
    .registers 2

    .line 369
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_8

    .line 370
    invoke-virtual {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    return-void

    .line 371
    :cond_8
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 372
    iget-object v0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    # getter for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;
    invoke-static {v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$000(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1b
    return-void
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 570
    invoke-static {p1}, Landroid/media/internal/guava_common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 572
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 574
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 575
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    # += operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v2, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$212(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    .line 576
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_1e
    return p1
.end method

.method public whitelist test-api size()I
    .registers 1

    .line 397
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 398
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 1

    .line 418
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 419
    iget-object p0, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
