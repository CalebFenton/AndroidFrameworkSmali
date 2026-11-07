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
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 102
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    return-void
.end method

.method static blacklist isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 682
    .local p0, "class1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "class2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-ne v0, v1, :cond_16

    .line 683
    invoke-virtual {p0}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    .line 682
    :goto_17
    return v0
.end method

.method public static whitelist test-api newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .registers 4
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 92
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v0

    .line 93
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-boolean v1, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    if-eqz v1, :cond_e

    .line 94
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;

    invoke-direct {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1

    .line 96
    :cond_e
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;

    invoke-direct {v1, p0, p1, v0}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v1
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J
    .registers 11
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 370
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 371
    .local v2, "prev":J
    invoke-interface {p4, v2, v3, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    .line 372
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 373
    return-wide v4

    .line 372
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public whitelist test-api addAndGet(Ljava/lang/Object;J)J
    .registers 10
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 274
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 275
    .local v2, "prev":J
    add-long v4, v2, p2

    .line 276
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 277
    return-wide v4

    .line 276
    :cond_10
    move-object p1, v1

    goto :goto_1
.end method

.method public abstract whitelist test-api compareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method

.method public whitelist test-api decrementAndGet(Ljava/lang/Object;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 257
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 258
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .line 259
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 260
    return-wide v4

    .line 259
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public abstract whitelist test-api get(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public final whitelist test-api getAndAccumulate(Ljava/lang/Object;JLjava/util/function/LongBinaryOperator;)J
    .registers 11
    .param p2, "x"    # J
    .param p4, "accumulatorFunction"    # Ljava/util/function/LongBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J",
            "Ljava/util/function/LongBinaryOperator;",
            ")J"
        }
    .end annotation

    .line 344
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 345
    .local v2, "prev":J
    invoke-interface {p4, v2, v3, p2, p3}, Ljava/util/function/LongBinaryOperator;->applyAsLong(JJ)J

    move-result-wide v4

    .line 346
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 347
    return-wide v2

    .line 346
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public whitelist test-api getAndAdd(Ljava/lang/Object;J)J
    .registers 10
    .param p2, "delta"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 225
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 226
    .local v2, "prev":J
    add-long v4, v2, p2

    .line 227
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 228
    return-wide v2

    .line 227
    :cond_10
    move-object p1, v1

    goto :goto_1
.end method

.method public whitelist test-api getAndDecrement(Ljava/lang/Object;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 208
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 209
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .line 210
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 211
    return-wide v2

    .line 210
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public whitelist test-api getAndIncrement(Ljava/lang/Object;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 192
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 193
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .line 194
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 195
    return-wide v2

    .line 194
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public whitelist test-api getAndSet(Ljava/lang/Object;J)J
    .registers 10
    .param p2, "newValue"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .line 177
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 178
    .local v2, "prev":J
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .end local p2    # "newValue":J
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    .local v4, "newValue":J
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 179
    return-wide v2

    .line 178
    :cond_f
    move-object p1, v1

    move-wide p2, v4

    goto :goto_1
.end method

.method public final whitelist test-api getAndUpdate(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J
    .registers 9
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/LongUnaryOperator;",
            ")J"
        }
    .end annotation

    .line 296
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 297
    .local v2, "prev":J
    invoke-interface {p2, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v4

    .line 298
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 299
    return-wide v2

    .line 298
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public whitelist test-api incrementAndGet(Ljava/lang/Object;)J
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .line 241
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 242
    .local v2, "prev":J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .line 243
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 244
    return-wide v4

    .line 243
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public abstract whitelist test-api lazySet(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api set(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public final whitelist test-api updateAndGet(Ljava/lang/Object;Ljava/util/function/LongUnaryOperator;)J
    .registers 9
    .param p2, "updateFunction"    # Ljava/util/function/LongUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/LongUnaryOperator;",
            ")J"
        }
    .end annotation

    .line 318
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :goto_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 319
    .local v2, "prev":J
    invoke-interface {p2, v2, v3}, Ljava/util/function/LongUnaryOperator;->applyAsLong(J)J

    move-result-wide v4

    .line 320
    .local v4, "next":J
    move-object v0, p0

    move-object v1, p1

    .end local p1    # "obj":Ljava/lang/Object;, "TT;"
    .local v1, "obj":Ljava/lang/Object;, "TT;"
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 321
    return-wide v4

    .line 320
    :cond_12
    move-object p1, v1

    goto :goto_1
.end method

.method public abstract whitelist test-api weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method
