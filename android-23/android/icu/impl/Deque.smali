.class public Landroid/icu/impl/Deque;
.super Ljava/lang/Object;
.source "Deque.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/icu/impl/Deque$DescendingIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private ll:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Landroid/icu/impl/Deque;)Ljava/util/LinkedList;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 23
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 21
    new-instance v0, Ljava/util/LinkedList;

    #@5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    #@8
    iput-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@a
    .line 23
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
    .line 139
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 43
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public addFirst(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@5
    .line 58
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 63
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@5
    .line 62
    return-void
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 55
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    #@5
    .line 54
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 175
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

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
    .line 39
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->containsAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
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
    .line 187
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    new-instance v0, Landroid/icu/impl/Deque$DescendingIterator;

    #@2
    invoke-direct {v0, p0}, Landroid/icu/impl/Deque$DescendingIterator;-><init>(Landroid/icu/impl/Deque;)V

    #@5
    return-object v0
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
    .line 155
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->element()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 100
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public getLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 104
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    #@0
    .prologue
    .line 27
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

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
    .line 183
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

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
    .line 143
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public offerFirst(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 67
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@5
    .line 68
    const/4 v0, 0x1

    #@6
    return v0
.end method

.method public offerLast(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 72
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    #@5
    .line 73
    const/4 v0, 0x1

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
    .line 159
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public peekFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 108
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public peekLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 114
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v0

    #@6
    .line 119
    :goto_0
    return-object v0

    #@7
    .line 115
    :catch_0
    move-exception v1

    #@8
    .line 117
    .local v1, "ex":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    #@9
    .local v0, "e":Ljava/lang/Object;, "TE;"
    goto :goto_0
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
    .line 151
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 85
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 91
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    :try_start_0
    iget-object v2, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result-object v0

    #@6
    .line 96
    :goto_0
    return-object v0

    #@7
    .line 92
    :catch_0
    move-exception v1

    #@8
    .line 94
    .local v1, "ex":Ljava/util/NoSuchElementException;
    const/4 v0, 0x0

    #@9
    .local v0, "e":Ljava/lang/Object;, "TE;"
    goto :goto_0
.end method

.method public pop()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public push(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 163
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    #@5
    .line 162
    return-void
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
    .line 147
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

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
    .line 171
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

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
    .line 47
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->removeAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public removeFirstOccurrence(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 123
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public removeLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 81
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method

.method public removeLastOccurrence(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 127
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v2, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    iget-object v3, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@4
    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    #@7
    move-result v3

    #@8
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    #@b
    move-result-object v1

    #@c
    .line 128
    .local v1, "litr":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TE;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasPrevious()Z

    #@f
    move-result v2

    #@10
    if-eqz v2, :cond_2

    #@12
    .line 129
    invoke-interface {v1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    #@15
    move-result-object v0

    #@16
    .line 130
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez p1, :cond_1

    #@18
    if-nez v0, :cond_1

    #@1a
    .line 131
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    #@1d
    .line 132
    const/4 v2, 0x1

    #@1e
    return v2

    #@1f
    .line 130
    :cond_1
    if-eqz p1, :cond_0

    #@21
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    #@24
    move-result v2

    #@25
    if-eqz v2, :cond_0

    #@27
    goto :goto_0

    #@28
    .line 135
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    const/4 v2, 0x0

    #@29
    return v2
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
    .line 51
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->retainAll(Ljava/util/Collection;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public size()I
    .locals 1

    #@0
    .prologue
    .line 179
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 31
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0}, Ljava/util/LinkedList;->toArray()[Ljava/lang/Object;

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
    .line 35
    .local p0, "this":Landroid/icu/impl/Deque;, "Landroid/icu/impl/Deque<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    iget-object v0, p0, Landroid/icu/impl/Deque;->ll:Ljava/util/LinkedList;

    #@2
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@5
    move-result-object v0

    #@6
    return-object v0
.end method
