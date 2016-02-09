.class public abstract Ljava/util/AbstractQueue;
.super Ljava/util/AbstractCollection;
.source "AbstractQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 42
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 66
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    #@3
    move-result v0

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 67
    const/4 v0, 0x1

    #@7
    return v0

    #@8
    .line 69
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Queue full"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 152
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_0

    #@2
    .line 153
    new-instance v3, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v4, "c == null"

    #@7
    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v3

    #@b
    .line 154
    :cond_0
    if-ne p1, p0, :cond_1

    #@d
    .line 155
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@f
    const-string/jumbo v4, "c == this"

    #@12
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v3

    #@16
    .line 156
    :cond_1
    const/4 v2, 0x0

    #@17
    .line 157
    .local v2, "modified":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@1a
    move-result-object v1

    #@1b
    .local v1, "e$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1e
    move-result v3

    #@1f
    if-eqz v3, :cond_3

    #@21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@24
    move-result-object v0

    #@25
    .line 158
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    #@28
    move-result v3

    #@29
    if-eqz v3, :cond_2

    #@2b
    .line 159
    const/4 v2, 0x1

    #@2c
    goto :goto_0

    #@2d
    .line 160
    .end local v0    # "e":Ljava/lang/Object;, "TE;"
    :cond_3
    return v2
.end method

.method public clear()V
    .locals 1

    #@0
    .prologue
    .line 118
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    if-nez v0, :cond_0

    #@6
    .line 117
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 103
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->peek()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 104
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@6
    .line 105
    return-object v0

    #@7
    .line 107
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v1
.end method

.method public remove()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 84
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    .line 85
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_0

    #@6
    .line 86
    return-object v0

    #@7
    .line 88
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    #@9
    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    #@c
    throw v1
.end method
