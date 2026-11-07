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
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 99
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method public static whitelist test-api newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
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
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "TU;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 92
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;

    .line 93
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 92
    return-object v0
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(Ljava/lang/Object;ILjava/util/function/IntBinaryOperator;)I
    .registers 7
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 367
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 368
    .local v0, "prev":I
    invoke-interface {p3, v0, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 369
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 370
    return v1
.end method

.method public whitelist test-api addAndGet(Ljava/lang/Object;I)I
    .registers 6
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 271
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 272
    .local v0, "prev":I
    add-int v1, v0, p2

    .line 273
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 274
    return v1
.end method

.method public abstract whitelist test-api compareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method

.method public whitelist test-api decrementAndGet(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 254
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 255
    .local v0, "prev":I
    add-int/lit8 v1, v0, -0x1

    .line 256
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 257
    return v1
.end method

.method public abstract whitelist test-api get(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final whitelist test-api getAndAccumulate(Ljava/lang/Object;ILjava/util/function/IntBinaryOperator;)I
    .registers 7
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    .line 341
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 342
    .local v0, "prev":I
    invoke-interface {p3, v0, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    move-result v1

    .line 343
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    return v0
.end method

.method public whitelist test-api getAndAdd(Ljava/lang/Object;I)I
    .registers 6
    .param p2, "delta"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 222
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 223
    .local v0, "prev":I
    add-int v1, v0, p2

    .line 224
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 225
    return v0
.end method

.method public whitelist test-api getAndDecrement(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 205
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 206
    .local v0, "prev":I
    add-int/lit8 v1, v0, -0x1

    .line 207
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    return v0
.end method

.method public whitelist test-api getAndIncrement(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 189
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 190
    .local v0, "prev":I
    add-int/lit8 v1, v0, 0x1

    .line 191
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    return v0
.end method

.method public whitelist test-api getAndSet(Ljava/lang/Object;I)I
    .registers 5
    .param p2, "newValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 174
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 175
    .local v0, "prev":I
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 176
    return v0
.end method

.method public final whitelist test-api getAndUpdate(Ljava/lang/Object;Ljava/util/function/IntUnaryOperator;)I
    .registers 6
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/IntUnaryOperator;",
            ")I"
        }
    .end annotation

    .line 293
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 294
    .local v0, "prev":I
    invoke-interface {p2, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 295
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    return v0
.end method

.method public whitelist test-api incrementAndGet(Ljava/lang/Object;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 238
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 239
    .local v0, "prev":I
    add-int/lit8 v1, v0, 0x1

    .line 240
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 241
    return v1
.end method

.method public abstract whitelist test-api lazySet(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api set(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public final whitelist test-api updateAndGet(Ljava/lang/Object;Ljava/util/function/IntUnaryOperator;)I
    .registers 6
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/IntUnaryOperator;",
            ")I"
        }
    .end annotation

    .line 315
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .line 316
    .local v0, "prev":I
    invoke-interface {p2, v0}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    move-result v1

    .line 317
    .local v1, "next":I
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 318
    return v1
.end method

.method public abstract whitelist test-api weakCompareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method
