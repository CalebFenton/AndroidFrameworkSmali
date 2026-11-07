.class public interface abstract Ljava/util/NavigableSet;
.super Ljava/lang/Object;
.source "NavigableSet.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# virtual methods
.method public abstract whitelist test-api ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api descendingIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api descendingSet()Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api floor(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
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

.method public abstract whitelist test-api higher(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api lower(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api pollFirst()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract whitelist test-api pollLast()Ljava/lang/Object;
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
    .local p0, "this":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 339
    invoke-interface {p0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 337
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 355
    .local p0, "this":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 358
    invoke-interface {p0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 356
    :cond_b
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public whitelist test-api reversed()Ljava/util/NavigableSet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 375
    .local p0, "this":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedCollection;
    .registers 2

    .line 90
    .local p0, "this":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->reversed()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SequencedSet;
    .registers 2

    .line 90
    .local p0, "this":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->reversed()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic whitelist test-api reversed()Ljava/util/SortedSet;
    .registers 2

    .line 90
    .local p0, "this":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->reversed()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract whitelist test-api subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
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

.method public abstract whitelist test-api tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
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
