.class Ljava/util/ReverseOrderSortedSetView;
.super Ljava/lang/Object;
.source "ReverseOrderSortedSetView.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/ReverseOrderSortedSetView$Subset;
    }
.end annotation

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


# instance fields
.field final blacklist base:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field final blacklist comp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/SortedSet;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    .line 43
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->comp:Ljava/util/Comparator;

    .line 44
    return-void
.end method

.method static blacklist descendingIterator(Ljava/util/SortedSet;)Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 207
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$1;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedSetView$1;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method

.method public static blacklist of(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TT;>;)",
            "Ljava/util/SortedSet<",
            "TT;>;"
        }
    .end annotation

    .line 47
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    instance-of v0, p0, Ljava/util/ReverseOrderSortedSetView;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/util/ReverseOrderSortedSetView;

    .line 48
    .local v0, "rossv":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TT;>;"
    iget-object v1, v0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    return-object v1

    .line 50
    .end local v0    # "rossv":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TT;>;"
    :cond_a
    new-instance v0, Ljava/util/ReverseOrderSortedSetView;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderSortedSetView;-><init>(Ljava/util/SortedSet;)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 120
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 121
    const/4 v0, 0x1

    return v0
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

    .line 125
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 129
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 130
    return-void
.end method

.method public whitelist test-api comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->comp:Ljava/util/Comparator;

    return-object v0
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 133
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->contains(Ljava/lang/Object;)Z

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

    .line 137
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 58
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    if-ne p1, p0, :cond_4

    .line 59
    const/4 v0, 0x1

    return v0

    .line 61
    :cond_4
    instance-of v0, p1, Ljava/util/Set;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 62
    return v1

    .line 63
    :cond_a
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 64
    .local v0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView;->size()I

    move-result v3

    if-eq v2, v3, :cond_18

    .line 65
    return v1

    .line 67
    :cond_18
    :try_start_18
    invoke-virtual {p0, v0}, Ljava/util/ReverseOrderSortedSetView;->containsAll(Ljava/util/Collection;)Z

    move-result v1
    :try_end_1c
    .catch Ljava/lang/ClassCastException; {:try_start_18 .. :try_end_1c} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_18 .. :try_end_1c} :catch_1d

    return v1

    .line 68
    :catch_1d
    move-exception v2

    .line 69
    .local v2, "unused":Ljava/lang/RuntimeException;
    return v1
.end method

.method public whitelist test-api first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 188
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api forEach(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 105
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 106
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_4

    .line 107
    :cond_12
    return-void
.end method

.method public whitelist test-api hashCode()I
    .registers 5

    .line 75
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "h":I
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 77
    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 78
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "obj":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_16

    .line 80
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 81
    .end local v2    # "obj":Ljava/lang/Object;, "TE;"
    :cond_16
    goto :goto_5

    .line 82
    :cond_17
    return v0
.end method

.method public whitelist test-api headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 193
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "to":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Ljava/util/ReverseOrderSortedSetView$Subset;-><init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 141
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

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

    .line 110
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/ReverseOrderSortedSetView;->descendingIterator(Ljava/util/SortedSet;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 190
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api parallelStream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 149
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z

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

    .line 153
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->removeAll(Ljava/util/Collection;)Z

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

    .line 158
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 162
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

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

    .line 114
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/util/Spliterators;->spliterator(Ljava/util/Collection;I)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api stream()Ljava/util/stream/Stream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TE;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 197
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "from":Ljava/lang/Object;, "TE;"
    .local p2, "to":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset;

    invoke-direct {v0, p0, p1, p2}, Ljava/util/ReverseOrderSortedSetView$Subset;-><init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "from":Ljava/lang/Object;, "TE;"
    new-instance v0, Ljava/util/ReverseOrderSortedSetView$Subset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/util/ReverseOrderSortedSetView$Subset;-><init>(Ljava/util/ReverseOrderSortedSetView;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 170
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

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

    .line 179
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljdk/internal/util/ArraysSupport;->reverse([Ljava/lang/Object;)[Ljava/lang/Object;

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

    .line 175
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/ReverseOrderSortedSetView;->base:Ljava/util/SortedSet;

    invoke-static {v0, p1}, Ljdk/internal/util/ArraysSupport;->toArrayReversed(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 87
    .local p0, "this":Ljava/util/ReverseOrderSortedSetView;, "Ljava/util/ReverseOrderSortedSetView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderSortedSetView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 89
    const-string v1, "[]"

    return-object v1

    .line 91
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 94
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 95
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, p0, :cond_20

    const-string v3, "(this Collection)"

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 97
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 98
    :cond_35
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_17
.end method
