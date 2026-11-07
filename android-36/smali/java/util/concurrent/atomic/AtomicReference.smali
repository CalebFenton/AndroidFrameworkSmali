.class public Ljava/util/concurrent/atomic/AtomicReference;
.super Ljava/lang/Object;
.source "AtomicReference.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist VALUE:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = -0x19a88e2baa87ab3aL


# instance fields
.field private volatile greylist-max-o value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 56
    :try_start_0
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->lookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v0

    .line 57
    .local v0, "l":Ljava/lang/invoke/MethodHandles$Lookup;
    const-class v1, Ljava/util/concurrent/atomic/AtomicReference;

    const-string v2, "value"

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v1

    sput-object v1, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;
    :try_end_10
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_10} :catch_12

    .line 60
    .end local v0    # "l":Ljava/lang/invoke/MethodHandles$Lookup;
    nop

    .line 61
    return-void

    .line 58
    :catch_12
    move-exception v0

    .line 59
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor whitelist test-api <init>()V
    .registers 1

    .line 78
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 261
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    .local p2, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 262
    .local v1, "next":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 263
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 264
    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 265
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->weakCompareAndSetVolatile(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 266
    return-object v1

    .line 267
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TV;"
    .local v4, "prev":Ljava/lang/Object;, "TV;"
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move-object v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api compareAndExchange(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)TV;"
        }
    .end annotation

    .line 361
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api compareAndExchangeAcquire(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)TV;"
        }
    .end annotation

    .line 377
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api compareAndExchangeRelease(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)TV;"
        }
    .end annotation

    .line 393
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .line 123
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 88
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public final whitelist test-api getAcquire()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 334
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAndAccumulate(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/util/function/BinaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 234
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "x":Ljava/lang/Object;, "TV;"
    .local p2, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 235
    .local v1, "next":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 236
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 237
    invoke-interface {p2, v0, p1}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 238
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->weakCompareAndSetVolatile(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 239
    return-object v0

    .line 240
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TV;"
    .local v4, "prev":Ljava/lang/Object;, "TV;"
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move-object v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api getAndSet(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 170
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 185
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 186
    .local v1, "next":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 187
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 188
    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->weakCompareAndSetVolatile(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 190
    return-object v0

    .line 191
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TV;"
    .local v4, "prev":Ljava/lang/Object;, "TV;"
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move-object v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api getOpaque()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 312
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPlain()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 289
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, (Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api lazySet(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 109
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 110
    return-void
.end method

.method public final whitelist test-api set(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    iput-object p1, p0, Ljava/util/concurrent/atomic/AtomicReference;->value:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public final whitelist test-api setOpaque(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 323
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 324
    return-void
.end method

.method public final whitelist test-api setPlain(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 301
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 302
    return-void
.end method

.method public final whitelist test-api setRelease(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 345
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;)V

    .line 346
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 276
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 207
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TV;>;"
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 208
    .local v1, "next":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x0

    .line 209
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 210
    invoke-interface {p1, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    :cond_c
    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->weakCompareAndSetVolatile(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 212
    return-object v1

    .line 213
    :cond_13
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TV;"
    .local v4, "prev":Ljava/lang/Object;, "TV;"
    if-ne v0, v3, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    move v2, v0

    move-object v0, v4

    goto :goto_6
.end method

.method public final whitelist test-api weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 144
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .line 423
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetPlain(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .line 158
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetRelease(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .line 438
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;)Z"
        }
    .end annotation

    .line 408
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p1, "expectedValue":Ljava/lang/Object;, "TV;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReference;->VALUE:Ljava/lang/invoke/VarHandle;

    invoke-polymorphic {v0, p0, p1, p2}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, (Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
