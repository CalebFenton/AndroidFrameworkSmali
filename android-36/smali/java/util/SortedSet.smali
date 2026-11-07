.class public interface abstract Ljava/util/SortedSet;
.super Ljava/lang/Object;
.source "SortedSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/util/SequencedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TE;>;",
        "Ljava/util/SequencedSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 279
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 294
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist test-api comparator()Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api first()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 307
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api getLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 320
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api last()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 336
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    .line 337
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 338
    return-object v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 354
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    .line 355
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v0}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

    .line 356
    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 108
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->reversed()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 2

    .line 108
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/SortedSet;->reversed()Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api reversed()Ljava/util/SortedSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 376
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {p0}, Ljava/util/ReverseOrderSortedSetView;->of(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 256
    .local p0, "this":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    new-instance v0, Ljava/util/SortedSet$1;

    const/16 v1, 0x15

    invoke-direct {v0, p0, p0, v1}, Ljava/util/SortedSet$1;-><init>(Ljava/util/SortedSet;Ljava/util/Collection;I)V

    return-object v0
.end method

.method public abstract whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end method
