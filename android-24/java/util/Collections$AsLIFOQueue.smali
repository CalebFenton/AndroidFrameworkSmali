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
        "Ljava/util/AbstractQueue",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x19020d92eca0694cL


# instance fields
.field private final q:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Deque;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4728
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "q":Ljava/util/Deque;, "Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    iput-object p1, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@5
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4729
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->addFirst(Ljava/lang/Object;)V

    #@5
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 4735
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    #@5
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4738
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->contains(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4744
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public element()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 4734
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<-TE;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 4751
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->forEach(Ljava/util/function/Consumer;)V

    #@5
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 4737
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4740
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4730
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public parallelStream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4762
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->parallelStream()Ljava/util/stream/Stream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 4733
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->peekFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 4731
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 4732
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 4739
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4745
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate",
            "<-TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4754
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->removeIf(Ljava/util/function/Predicate;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 4746
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 4736
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4758
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->spliterator()Ljava/util/Spliterator;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream",
            "<TE;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 4760
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->stream()Ljava/util/stream/Stream;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 4741
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->toArray()[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 4742
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 4743
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
