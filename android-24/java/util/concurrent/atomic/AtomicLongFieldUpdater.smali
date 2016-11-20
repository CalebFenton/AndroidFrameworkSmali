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
    .line 68
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .locals 2
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

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    #@3
    move-result-object v0

    #@4
    .line 59
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 60
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;

    #@a
    invoke-direct {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    #@d
    return-object v1

    #@e
    .line 62
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;

    #@10
    invoke-direct {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    #@13
    return-object v1
.end method


# virtual methods
.method public final accumulateAndGet(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J
    .locals 6
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 335
    .local v2, "prev":J
    invoke-interface {p4, v2, v3, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@7
    move-result-wide v4

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 336
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 337
    return-wide v4
.end method

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
    .line 244
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 245
    .local v2, "prev":J
    add-long v4, v2, p2

    #@6
    .local v4, "next":J
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    .line 246
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 247
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
    .line 227
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 228
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    #@6
    sub-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 229
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 230
    return-wide v4
.end method

.method public abstract get(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public final getAndAccumulate(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J
    .locals 6
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 309
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 310
    .local v2, "prev":J
    invoke-interface {p4, v2, v3, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    #@7
    move-result-wide v4

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 311
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 312
    return-wide v2
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
    .line 195
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 196
    .local v2, "prev":J
    add-long v4, v2, p2

    #@6
    .local v4, "next":J
    move-object v0, p0

    #@7
    move-object v1, p1

    #@8
    .line 197
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@b
    move-result v0

    #@c
    if-eqz v0, :cond_0

    #@e
    .line 198
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
    .line 178
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 179
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    #@6
    sub-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 180
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 181
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
    .line 162
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 163
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    #@6
    add-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 164
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 165
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
    .line 147
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .local v2, "prev":J
    move-object v0, p0

    #@5
    move-object v1, p1

    #@6
    move-wide v4, p2

    #@7
    .line 148
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 149
    return-wide v2
.end method

.method public final getAndUpdate(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J
    .locals 6
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/LongUnaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 264
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 265
    .local v2, "prev":J
    invoke-interface {p2, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@7
    move-result-wide v4

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 266
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 267
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
    .line 211
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 212
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    #@6
    add-long v4, v2, v0

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 213
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 214
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

.method public final updateAndGet(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J
    .locals 6
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/LongUnaryOperator;",
            ")J"
        }
    .end annotation

    #@0
    .prologue
    .line 284
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    #@3
    move-result-wide v2

    #@4
    .line 285
    .local v2, "prev":J
    invoke-interface {p2, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    #@7
    move-result-wide v4

    #@8
    .local v4, "next":J
    move-object v0, p0

    #@9
    move-object v1, p1

    #@a
    .line 286
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    #@d
    move-result v0

    #@e
    if-eqz v0, :cond_0

    #@10
    .line 287
    return-wide v4
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method
