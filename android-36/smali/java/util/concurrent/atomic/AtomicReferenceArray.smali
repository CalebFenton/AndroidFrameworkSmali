.class public Ljava/util/concurrent/atomic/AtomicReferenceArray;
.super Ljava/lang/Object;
.source "AtomicReferenceArray.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final blacklist AA:Ljava/lang/invoke/VarHandle;

.field private static final whitelist serialVersionUID:J = -0x562d215e419a9ff4L


# instance fields
.field private final greylist-max-o array:[Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 56
    const-class v0, [Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/lang/invoke/MethodHandles;->arrayElementVarHandle(Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;

    move-result-object v0

    sput-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    .line 56
    return-void
.end method

.method public constructor whitelist test-api <init>(I)V
    .registers 3
    .param p1, "length"    # I

    .line 67
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    .line 69
    return-void
.end method

.method public constructor whitelist test-api <init>([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    array-length v0, p1

    const-class v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    .line 81
    return-void
.end method

.method static synthetic blacklist lambda$readObject$0()Ljava/lang/reflect/Field;
    .registers 2

    .line 337
    :try_start_0
    const-class v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;

    const-string v1, "array"

    .line 338
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 339
    .local v0, "f":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_c
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_c} :catch_d

    .line 340
    return-object v0

    .line 341
    .end local v0    # "f":Ljava/lang/reflect/Field;
    :catch_d
    move-exception v0

    .line 342
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private whitelist readObject(Ljava/io/ObjectInputStream;)V
    .registers 6
    .param p1, "s"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 328
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFields()Ljava/io/ObjectInputStream$GetField;

    move-result-object v0

    const-string v1, "array"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/ObjectInputStream$GetField;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 329
    .local v0, "a":Ljava/lang/Object;
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 331
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, [Ljava/lang/Object;

    if-eq v1, v2, :cond_2c

    .line 332
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v2

    const-class v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    .line 334
    :cond_2c
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReferenceArray$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 345
    .local v1, "arrayField":Ljava/lang/reflect/Field;
    :try_start_37
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3a
    .catch Ljava/lang/IllegalAccessException; {:try_start_37 .. :try_end_3a} :catch_3c

    .line 348
    nop

    .line 349
    return-void

    .line 346
    :catch_3c
    move-exception v2

    .line 347
    .local v2, "e":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v2}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 330
    .end local v1    # "arrayField":Ljava/lang/reflect/Field;
    .end local v2    # "e":Ljava/lang/IllegalAccessException;
    :cond_43
    new-instance v1, Ljava/io/InvalidObjectException;

    const-string v2, "Not array type"

    invoke-direct {v1, v2}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final whitelist test-api accumulateAndGet(ILjava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Ljava/util/function/BinaryOperator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 289
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    .local p3, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 290
    .local v1, "next":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 291
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 292
    invoke-interface {p3, v0, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 293
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->weakCompareAndSetVolatile(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 294
    return-object v1

    .line 295
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TE;"
    .local v4, "prev":Ljava/lang/Object;, "TE;"
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

.method public final whitelist test-api compareAndExchange(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)TE;"
        }
    .end annotation

    .line 442
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndExchange([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api compareAndExchangeAcquire(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)TE;"
        }
    .end annotation

    .line 460
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndExchangeAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api compareAndExchangeRelease(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)TE;"
        }
    .end annotation

    .line 478
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndExchangeRelease([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api compareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 153
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->compareAndSet([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api get(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 101
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getVolatile([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAcquire(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 412
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getAcquire([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAndAccumulate(ILjava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .registers 9
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;",
            "Ljava/util/function/BinaryOperator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 260
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "x":Ljava/lang/Object;, "TE;"
    .local p3, "accumulatorFunction":Ljava/util/function/BinaryOperator;, "Ljava/util/function/BinaryOperator<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 261
    .local v1, "next":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 262
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 263
    invoke-interface {p3, v0, p2}, Ljava/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 264
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->weakCompareAndSetVolatile(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 265
    return-object v0

    .line 266
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TE;"
    .local v4, "prev":Ljava/lang/Object;, "TE;"
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

.method public final whitelist test-api getAndSet(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 138
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->getAndSet([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getAndUpdate(ILjava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 207
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 208
    .local v1, "next":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 209
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 210
    invoke-interface {p2, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 211
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->weakCompareAndSetVolatile(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 212
    return-object v0

    .line 213
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TE;"
    .local v4, "prev":Ljava/lang/Object;, "TE;"
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

.method public final whitelist test-api getOpaque(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 388
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->getOpaque([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api getPlain(I)Ljava/lang/Object;
    .registers 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 363
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1}, Ljava/lang/invoke/VarHandle;->get([Ljava/lang/Object;)Ljava/lang/Object;, ([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final whitelist test-api lazySet(ILjava/lang/Object;)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method public final whitelist test-api length()I
    .registers 2

    .line 89
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final whitelist test-api set(ILjava/lang/Object;)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 112
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setVolatile([Ljava/lang/Object;)V, ([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 113
    return-void
.end method

.method public final whitelist test-api setOpaque(ILjava/lang/Object;)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 400
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setOpaque([Ljava/lang/Object;)V, ([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 401
    return-void
.end method

.method public final whitelist test-api setPlain(ILjava/lang/Object;)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->set([Ljava/lang/Object;)V, ([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 377
    return-void
.end method

.method public final whitelist test-api setRelease(ILjava/lang/Object;)V
    .registers 5
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 424
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2}, Ljava/lang/invoke/VarHandle;->setRelease([Ljava/lang/Object;)V, ([Ljava/lang/Object;ILjava/lang/Object;)V

    .line 425
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 304
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 305
    .local v0, "iMax":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    .line 306
    const-string v1, "[]"

    return-object v1

    .line 308
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v1, "b":Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    const/4 v2, 0x0

    .line 311
    .local v2, "i":I
    :goto_16
    invoke-virtual {p0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 312
    if-ne v2, v0, :cond_2a

    .line 313
    const/16 v3, 0x5d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 314
    :cond_2a
    const/16 v3, 0x2c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_16
.end method

.method public final whitelist test-api updateAndGet(ILjava/util/function/UnaryOperator;)Ljava/lang/Object;
    .registers 8
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/function/UnaryOperator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 231
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "updateFunction":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .local v0, "prev":Ljava/lang/Object;, "TE;"
    const/4 v1, 0x0

    .line 232
    .local v1, "next":Ljava/lang/Object;, "TE;"
    const/4 v2, 0x0

    .line 233
    .local v2, "haveNext":Z
    :goto_6
    if-nez v2, :cond_c

    .line 234
    invoke-interface {p2, v0}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 235
    :cond_c
    invoke-virtual {p0, p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->weakCompareAndSetVolatile(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 236
    return-object v1

    .line 237
    :cond_13
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    .end local v0    # "prev":Ljava/lang/Object;, "TE;"
    .local v4, "prev":Ljava/lang/Object;, "TE;"
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

.method public final whitelist test-api weakCompareAndSet(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
        since = "9"
    .end annotation

    .line 175
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetAcquire(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 510
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetAcquire([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetPlain(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 190
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetPlain([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetRelease(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 526
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSetRelease([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final whitelist test-api weakCompareAndSetVolatile(ILjava/lang/Object;Ljava/lang/Object;)Z
    .registers 6
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;TE;)Z"
        }
    .end annotation

    .line 494
    .local p0, "this":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<TE;>;"
    .local p2, "expectedValue":Ljava/lang/Object;, "TE;"
    .local p3, "newValue":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->AA:Ljava/lang/invoke/VarHandle;

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicReferenceArray;->array:[Ljava/lang/Object;

    invoke-polymorphic {v0, v1, p1, p2, p3}, Ljava/lang/invoke/VarHandle;->weakCompareAndSet([Ljava/lang/Object;)Z, ([Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
