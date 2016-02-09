.class Ljava/util/Collections$AsLIFOQueue;
.super Ljava/util/AbstractQueue;
.source "Collections.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AsLIFOQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue",
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
    .line 2762
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "deque":Ljava/util/Deque;, "Ljava/util/Deque<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    #@3
    .line 2763
    iput-object p1, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@5
    .line 2762
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
    .line 2787
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    #@5
    .line 2788
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 2792
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    #@5
    .line 2791
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2804
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
    .line 2808
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
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
    .line 2796
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 2812
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
    .line 2767
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
    .line 2775
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "o":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->offerFirst(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
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
    .line 2779
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
    .line 2783
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
    .line 2800
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->pop()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 2816
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
    .line 2820
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0, p1}, Ljava/util/Deque;->removeAll(Ljava/util/Collection;)Z

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
    .line 2824
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
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
    .line 2771
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-interface {v0}, Ljava/util/Deque;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 2828
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
    .line 2832
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    .local p1, "contents":[Ljava/lang/Object;, "[TT;"
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
    .line 2836
    .local p0, "this":Ljava/util/Collections$AsLIFOQueue;, "Ljava/util/Collections$AsLIFOQueue<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$AsLIFOQueue;->q:Ljava/util/Deque;

    #@2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
