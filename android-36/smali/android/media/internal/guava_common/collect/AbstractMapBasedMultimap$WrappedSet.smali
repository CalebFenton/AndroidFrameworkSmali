.class Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedSet;
.super Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap<",
        "TK;TV;>.WrappedCollection;",
        "Ljava/util/Set<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor blacklist <init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Set<",
            "TV;>;)V"
        }
    .end annotation

    .line 592
    iput-object p1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    const/4 v0, 0x0

    .line 593
    invoke-direct {p0, p1, p2, p3, v0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 598
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 601
    :cond_8
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 606
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    check-cast v1, Ljava/util/Set;

    invoke-static {v1, p1}, Landroid/media/internal/guava_common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 608
    iget-object v1, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    .line 609
    iget-object v2, p0, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedSet;->this$0:Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;

    sub-int/2addr v1, v0

    # += operator for: Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->totalSize:I
    invoke-static {v2, v1}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;->access$212(Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap;I)I

    .line 610
    invoke-virtual {p0}, Landroid/media/internal/guava_common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    :cond_25
    return p1
.end method
