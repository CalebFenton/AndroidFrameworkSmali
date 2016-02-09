.class public abstract Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;,
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;
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
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
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
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    #@0
    .prologue
    .line 49
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    sget-boolean v0, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;

    #@6
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@9
    return-object v0

    #@a
    .line 52
    :cond_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;

    #@c
    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    #@f
    return-object v0
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .locals 6
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    #@0
    .prologue
    .line 233
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 234
    .local v2, "current":J
    add-long v4, v2, p2

    #@6
    .local v4, "next":J
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    .line 235
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 236
    return-wide v4
.end method

.method public abstract compareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 216
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 217
    .local v2, "current":J
    const-wide/16 v0, 0x1

    #@6
    sub-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 218
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 219
    return-wide v4
.end method

.method public abstract get(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .locals 6
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    #@0
    .prologue
    .line 184
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 185
    .local v2, "current":J
    add-long v4, v2, p2

    #@6
    .local v4, "next":J
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    .line 186
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 187
    return-wide v2
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 167
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 168
    .local v2, "current":J
    const-wide/16 v0, 0x1

    #@6
    sub-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 169
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 170
    return-wide v2
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 151
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 152
    .local v2, "current":J
    const-wide/16 v0, 0x1

    #@6
    add-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 153
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 154
    return-wide v2
.end method

.method public getAndSet(Ljava/lang/Object;J)J
    .locals 6
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    #@0
    .prologue
    .line 136
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .local v2, "current":J
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-wide v4, p2

    #@7
    .line 137
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 138
    return-wide v2
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    #@0
    .prologue
    .line 200
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 201
    .local v2, "current":J
    const-wide/16 v0, 0x1

    #@6
    add-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 202
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 203
    return-wide v4
.end method

.method public abstract lazySet(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract set(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method
