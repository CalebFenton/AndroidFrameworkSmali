.class public interface abstract Ljava/util/SequencedCollection;
.super Ljava/lang/Object;
.source "SequencedCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection<",
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

    .line 107
    .local p0, "this":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TE;>;"
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

    .line 125
    .local p0, "this":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 141
    .local p0, "this":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TE;>;"
    invoke-interface {p0}, Ljava/util/SequencedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

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

    .line 157
    .local p0, "this":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TE;>;"
    invoke-interface {p0}, Ljava/util/SequencedCollection;->reversed()Ljava/util/SequencedCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 176
    .local p0, "this":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TE;>;"
    invoke-interface {p0}, Ljava/util/SequencedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 178
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 179
    return-object v1
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 198
    .local p0, "this":Ljava/util/SequencedCollection;, "Ljava/util/SequencedCollection<TE;>;"
    invoke-interface {p0}, Ljava/util/SequencedCollection;->reversed()Ljava/util/SequencedCollection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SequencedCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 199
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 200
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 201
    return-object v1
.end method

.method public abstract whitelist test-api reversed()Ljava/util/SequencedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SequencedCollection<",
            "TE;>;"
        }
    .end annotation
.end method
