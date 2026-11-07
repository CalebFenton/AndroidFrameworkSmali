.class Ljava/util/Collections$AsLIFOQueue;
.super Ljava/util/AbstractQueue;
.source "Collections.java"

# interfaces
.implements Ljava/util/Queue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AsLIFOQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x19020d92eca0694cL


# instance fields
.field private final greylist-max-o q:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/Deque;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque<",
            "TE;>;)V"
        }
    .end annotation

    .line 6175
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "q":Ljava/util/Deque;, "Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    iput-object p1, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

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

    .line 6176
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 6182
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    return-void
.end method

.method public whitelist test-api contains(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 6185
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

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

    .line 6192
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 6181
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
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

    .line 6199
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public whitelist test-api isEmpty()Z
    .registers 2

    .line 6184
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

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

    .line 6187
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

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

    .line 6177
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 6209
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->parallelStream()Ljava/util/stream/Stream;

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

    .line 6180
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

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

    .line 6178
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 6179
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api remove(Ljava/lang/Object;)Z
    .registers 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 6186
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

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

    .line 6193
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

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

    .line 6202
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->removeIf(Ljava/util/function/Predicate;)Z

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

    .line 6194
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api size()I
    .registers 2

    .line 6183
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

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

    .line 6205
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->spliterator()Ljava/util/Spliterator;

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

    .line 6207
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toArray()[Ljava/lang/Object;
    .registers 2

    .line 6188
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

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

    .line 6190
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "f":Ljava/util/function/IntFunction;, "Ljava/util/function/IntFunction<[TT;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

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

    .line 6189
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 6191
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
