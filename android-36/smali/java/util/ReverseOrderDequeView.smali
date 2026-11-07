.class Ljava/util/ReverseOrderDequeView;
.super Ljava/lang/Object;
.source "ReverseOrderDequeView.java"

# interfaces
.implements Ljava/util/Deque;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Deque<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final blacklist base:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>(Ljava/util/Deque;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TE;>;)V"
        }
    .end annotation

    .line 40
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    .line 42
    return-void
.end method

.method public static blacklist of(Ljava/util/Deque;)Ljava/util/Deque;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Deque<",
            "TT;>;)",
            "Ljava/util/Deque<",
            "TT;>;"
        }
    .end annotation

    .line 45
    .local p0, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    instance-of v0, p0, Ljava/util/ReverseOrderDequeView;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljava/util/ReverseOrderDequeView;

    .line 46
    .local v0, "rodv":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TT;>;"
    iget-object v1, v0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    return-object v1

    .line 48
    .end local v0    # "rodv":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TT;>;"
    :cond_a
    new-instance v0, Ljava/util/ReverseOrderDequeView;

    invoke-direct {v0, p0}, Ljava/util/ReverseOrderDequeView;-><init>(Ljava/util/Deque;)V

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

    .line 70
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api addAll(Ljava/util/Collection;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 75
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    const/4 v0, 0x0

    .line 76
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 77
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v3, v2}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 78
    const/4 v0, 0x1

    .line 79
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_5

    .line 80
    :cond_16
    return v0
.end method

.method public whitelist test-api addFirst(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 193
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public whitelist test-api addLast(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 197
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    .line 198
    return-void
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 84
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 85
    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

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

    .line 92
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api descendingIterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 201
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 205
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

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

    .line 55
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 56
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_4

    .line 57
    :cond_12
    return-void
.end method

.method public whitelist test-api getFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 209
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

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

    .line 213
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 96
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

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

    .line 60
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api offer(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerFirst(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 221
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerLast(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api offerLast(Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 225
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 100
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peek()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 229
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api peekLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 237
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 241
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 245
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pollLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 249
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api pop()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 253
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api push(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 257
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    .line 258
    return-void
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 261
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 105
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 106
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    const/4 v1, 0x1

    if-nez p1, :cond_17

    .line 107
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_7

    .line 109
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 110
    return v1

    .line 114
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 116
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 117
    return v1

    .line 121
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist test-api removeAll(Ljava/util/Collection;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 126
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const/4 v0, 0x0

    .line 128
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 129
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 130
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 131
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 132
    const/4 v0, 0x1

    goto :goto_8

    .line 135
    :cond_1d
    return v0
.end method

.method public whitelist test-api removeFirst()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 265
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeFirstOccurrence(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 273
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeLastOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api removeLast()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 269
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api removeLastOccurrence(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 277
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeFirstOccurrence(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 140
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "modified":Z
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 143
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_8
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 144
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 145
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 146
    const/4 v0, 0x1

    goto :goto_8

    .line 149
    :cond_1d
    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 153
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

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

    .line 64
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
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

    .line 157
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 161
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

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

    .line 170
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "generator":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

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

    .line 166
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/ReverseOrderDequeView;->base:Ljava/util/Deque;

    invoke-static {v0, p1}, Ljdk/internal/util/ArraysSupport;->toArrayReversed(Ljava/util/Collection;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 175
    .local p0, "this":Ljava/util/ReverseOrderDequeView;, "Ljava/util/ReverseOrderDequeView<TE;>;"
    invoke-virtual {p0}, Ljava/util/ReverseOrderDequeView;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 176
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    .line 177
    const-string v1, "[]"

    return-object v1

    .line 179
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 182
    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 183
    .local v2, "e":Ljava/lang/Object;, "TE;"
    if-ne v2, p0, :cond_20

    const-string v3, "(this Collection)"

    goto :goto_21

    :cond_20
    move-object v3, v2

    :goto_21
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_35

    .line 185
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 186
    :cond_35
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 187
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_17
.end method
