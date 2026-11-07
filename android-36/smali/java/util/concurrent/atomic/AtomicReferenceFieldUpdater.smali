.class public abstract Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicReferenceFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 121
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    return-void
.end method

.method public static whitelist test-api newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;
    .registers 5
    .param p2, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "W:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TU;>;",
            "Ljava/lang/Class<",
            "TW;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<",
            "TU;TW;>;"
        }
    .end annotation

    .annotation runtime Ljdk/internal/reflect/CallerSensitive;
    .end annotation

    .line 114
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    .local p1, "vclass":Ljava/lang/Class;, "Ljava/lang/Class<TW;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;

    .line 115
    invoke-static {}, Ljdk/internal/reflect/Reflection;->getCallerClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater$AtomicReferenceFieldUpdaterImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    .line 114
    return-object v0
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 291
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "x":Ljava/lang/Object;, "TV;"
    .local p3, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p3, v0, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 293
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 294
    return-object v1
.end method

.method public abstract whitelist test-api compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation
.end method

.method public abstract whitelist test-api get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public final whitelist test-api getAndAccumulate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 265
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "x":Ljava/lang/Object;, "TV;"
    .local p3, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 266
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p3, v0, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 267
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 268
    return-object v0
.end method

.method public whitelist test-api getAndSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)TV;"
        }
    .end annotation

    .line 196
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 197
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 198
    return-object v0
.end method

.method public final whitelist test-api getAndUpdate(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/UnaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TV;>;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 218
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 219
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    return-object v0
.end method

.method public abstract whitelist test-api lazySet(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method

.method public abstract whitelist test-api set(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation
.end method

.method public final whitelist test-api updateAndGet(Ljava/lang/Object;Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/UnaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 239
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater<TT;TV;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    .local p2, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TV;>;"
    nop

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 240
    .local v0, "prev":Ljava/lang/Object;, "TV;"
    invoke-interface {p2, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 241
    .local v1, "next":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 242
    return-object v1
.end method

.method public abstract whitelist test-api weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;TV;)Z"
        }
    .end annotation
.end method
