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
    .line 65
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
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
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    .annotation runtime Lsun/reflect/CallerSensitive;
    .end annotation

    #@0
    .prologue
    .line 58
    .local p0, "tclass":Ljava/lang/Class;, "Ljava/lang/Class<TU;>;"
    new-instance v0, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;

    #@2
    .line 59
    invoke-static {}, Ldalvik/system/VMStack;->getStackClass1()Ljava/lang/Class;

    #@5
    move-result-object v1

    #@6
    .line 58
    invoke-direct {v0, p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater$AtomicIntegerFieldUpdaterImpl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    #@9
    return-object v0
.end method


# virtual methods
.method public final accumulateAndGet(Ljava/lang/Object;ILjava/util/function/IntBinaryOperator;)I
    .locals 3
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 331
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 332
    .local v1, "prev":I
    invoke-interface {p3, v1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@7
    move-result v0

    #@8
    .line 333
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 334
    return v0
.end method

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
    .line 241
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 242
    .local v1, "prev":I
    add-int v0, v1, p2

    #@6
    .line 243
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 244
    return v0
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
    .line 224
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 225
    .local v1, "prev":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .line 226
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 227
    return v0
.end method

.method public abstract get(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation
.end method

.method public final getAndAccumulate(Ljava/lang/Object;ILjava/util/function/IntBinaryOperator;)I
    .locals 3
    .param p2, "x"    # I
    .param p3, "accumulatorFunction"    # Ljava/util/function/IntBinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I",
            "Ljava/util/function/IntBinaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 306
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 307
    .local v1, "prev":I
    invoke-interface {p3, v1, p2}, Ljava/util/function/IntBinaryOperator;->applyAsInt(II)I

    #@7
    move-result v0

    #@8
    .line 308
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 309
    return v1
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
    .line 192
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 193
    .local v1, "prev":I
    add-int v0, v1, p2

    #@6
    .line 194
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 195
    return v1
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
    .line 175
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 176
    .local v1, "prev":I
    add-int/lit8 v0, v1, -0x1

    #@6
    .line 177
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 178
    return v1
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
    .line 159
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 160
    .local v1, "prev":I
    add-int/lit8 v0, v1, 0x1

    #@6
    .line 161
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 162
    return v1
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
    .line 144
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v0

    #@4
    .line 145
    .local v0, "prev":I
    invoke-virtual {p0, p1, v0, p2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 146
    return v0
.end method

.method public final getAndUpdate(Ljava/lang/Object;Ljava/util/function/IntUnaryOperator;)I
    .locals 3
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/IntUnaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 261
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 262
    .local v1, "prev":I
    invoke-interface {p2, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v0

    #@8
    .line 263
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 264
    return v1
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
    .line 208
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 209
    .local v1, "prev":I
    add-int/lit8 v0, v1, 0x1

    #@6
    .line 210
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@9
    move-result v2

    #@a
    if-eqz v2, :cond_0

    #@c
    .line 211
    return v0
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

.method public final updateAndGet(Ljava/lang/Object;Ljava/util/function/IntUnaryOperator;)I
    .locals 3
    .param p2, "updateFunction"    # Ljava/util/function/IntUnaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/util/function/IntUnaryOperator;",
            ")I"
        }
    .end annotation

    #@0
    .prologue
    .line 281
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;, "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<TT;>;"
    .local p1, "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    #@3
    move-result v1

    #@4
    .line 282
    .local v1, "prev":I
    invoke-interface {p2, v1}, Ljava/util/function/IntUnaryOperator;->applyAsInt(I)I

    #@7
    move-result v0

    #@8
    .line 283
    .local v0, "next":I
    invoke-virtual {p0, p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_0

    #@e
    .line 284
    return v0
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;II)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)Z"
        }
    .end annotation
.end method
