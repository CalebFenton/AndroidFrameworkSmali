.class abstract Ljava/util/AbstractMap$ViewCollection;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ViewCollection"
.end annotation

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


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 902
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 906
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "t":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 907
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 908
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 909
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 910
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 911
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "c":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 912
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public whitelist test-api iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 913
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 914
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->parallelStream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 915
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 916
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeIf(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 917
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 918
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 919
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public whitelist test-api spliterator()Ljava/util/Spliterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 920
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 921
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 922
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "[TT;>;)[TT;"
        }
    .end annotation

    .line 923
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 924
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 925
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap$ViewCollection;->view()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method blacklist uoe()Ljava/lang/UnsupportedOperationException;
    .registers 2

    .line 903
    .local p0, "this":Ljava/util/AbstractMap$ViewCollection;, "Ljava/util/AbstractMap$ViewCollection<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    return-object v0
.end method

.method abstract blacklist view()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation
.end method
