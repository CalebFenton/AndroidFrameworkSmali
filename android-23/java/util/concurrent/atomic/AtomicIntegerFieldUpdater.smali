.class public abstract Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicIntegerFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 58
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .locals 1
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 52
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;

    #@2
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;I)I
    .locals 3
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 233
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 234
    .local v0, "current":I
    add-int v1, v0, p2

    #@6
    .line 235
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 236
    return v1
.end method

.method public abstract compareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method

.method public decrementAndGet(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 217
    .local v0, "current":I
    add-int/lit8 v1, v0, -0x1

    #@6
    .line 218
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 219
    return v1
.end method

.method public abstract get(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public getAndAdd(Ljava/lang/Object;I)I
    .locals 3
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 185
    .local v0, "current":I
    add-int v1, v0, p2

    #@6
    .line 186
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 187
    return v0
.end method

.method public getAndDecrement(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 168
    .local v0, "current":I
    add-int/lit8 v1, v0, -0x1

    #@6
    .line 169
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 170
    return v0
.end method

.method public getAndIncrement(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 152
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    #@6
    .line 153
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 154
    return v0
.end method

.method public getAndSet(Ljava/lang/Object;I)I
    .locals 2
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 137
    .local v0, "current":I
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 138
    return v0
.end method

.method public incrementAndGet(Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 201
    .local v0, "current":I
    add-int/lit8 v1, v0, 0x1

    #@6
    .line 202
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 203
    return v1
.end method

.method public abstract lazySet(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method
