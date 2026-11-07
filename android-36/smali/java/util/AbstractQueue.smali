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
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 71
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 72
    return-void
.end method


# virtual methods
.method public whitelist test-api add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 95
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 96
    const/4 v0, 0x1

    return v0

    .line 98
    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Queue full"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 181
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    if-eqz p1, :cond_22

    .line 183
    if-eq p1, p0, :cond_1c

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 187
    .local v2, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Ljava/util/AbstractQueue;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 188
    const/4 v0, 0x1

    .line 187
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_1a
    goto :goto_9

    .line 189
    :cond_1b
    return v0

    .line 184
    .end local v0    # "modified":Z
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 182
    :cond_22
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public whitelist test-api clear()V
    .registers 2

    .line 147
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    nop

    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 148
    goto :goto_1

    .line 149
    :cond_8
    return-void
.end method

.method public whitelist test-api element()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 132
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 134
    return-object v0

    .line 136
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public whitelist test-api remove()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 113
    .local p0, "this":Ljava/util/AbstractQueue;, "Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 114
    .local v0, "x":Ljava/lang/Object;, "TE;"
    if-eqz v0, :cond_7

    .line 115
    return-object v0

    .line 117
    :cond_7
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method
